// inv.cpp — Инвертирование плотной матрицы большого размера (ARM/M-серия)
// Варианты: VAR_BASELINE_O0, VAR_FLAGS_ONLY, VAR_LU_SEMI_AUTO, VAR_LU_NEON
// Примеры сборки (brew GCC 15):
//   /opt/homebrew/bin/g++-15 -std=c++20 -O0 -DVAR_BASELINE_O0 inv.cpp -o inv_base
//   /opt/homebrew/bin/g++-15 -std=c++20 -O3 -march=native -ffast-math -fopenmp -DVAR_LU_SEMI_AUTO inv.cpp -o inv_semi
//   /opt/homebrew/bin/g++-15 -std=c++20 -O3 -march=native -ffast-math -fopenmp -DVAR_LU_NEON     inv.cpp -o inv_neon
//
// Запуск (однопоточно):   OMP_NUM_THREADS=1 ./inv_neon 512
// Проверка корректности: выводит rel_error_F(full) ~ 1e-3…1e-5 для float (зависит от N/флагов)

// === Выберите РОВНО один вариант (или задайте из Makefile через -DVAR_...) ===
//#define VAR_BASELINE_O0
//#define VAR_FLAGS_ONLY
//#define VAR_LU_SEMI_AUTO
//#define VAR_LU_NEON

#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <numeric>
#include <random>
#include <vector>

#if defined(VAR_LU_NEON)
  #include <arm_neon.h>   // для ARM NEON ручной векторизации
#endif

using namespace std;

#ifndef N_DEFAULT
#define N_DEFAULT 1024
#endif

// ---------- Утилиты ----------
static inline double now_s(){
  using clk = chrono::high_resolution_clock;
  return chrono::duration<double>(clk::now().time_since_epoch()).count();
}
static float* xmalloc(size_t n, size_t align=64){
  void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
}
static void fill_rand(float* A, int n){
  mt19937 rng(123); uniform_real_distribution<float> d(-1.f,1.f);
  for (long long i=0;i<1LL*n*n;++i) A[i]=d(rng);
}
static void eye(float* I, int n){
  memset(I,0,1LL*n*n*sizeof(float));
  for(int i=0;i<n;++i) I[1LL*i*n + i]=1.f;
}
static double fro_norm(const float* A, int n){
  long long N=1LL*n*n; long double s=0;
  for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
  return sqrt((double)s);
}
static void matmul(const float* A,const float* B,float* C,int n){
  for(int i=0;i<n;++i) for(int j=0;j<n;++j){
    float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
    C[1LL*i*n+j]=s;
  }
}

// ---------- 1) БАЗА: Gauss–Jordan с частичным выбором ----------
#if defined(VAR_BASELINE_O0) || defined(VAR_FLAGS_ONLY)
static bool invert_gauss_jordan(float* A, float* Inv, int n){
  for(int i=0;i<n;++i){
    // pivot в столбце i
    int p=i; float mv=fabsf(A[1LL*i*n+i]);
    for(int r=i+1;r<n;++r){ float v=fabsf(A[1LL*r*n+i]); if(v>mv){mv=v;p=r;} }
    if (mv==0) return false;
    if (p!=i){
      for(int j=0;j<n;++j){ swap(A[1LL*i*n+j],A[1LL*p*n+j]); swap(Inv[1LL*i*n+j],Inv[1LL*p*n+j]); }
    }
    float invd = 1.0f / A[1LL*i*n+i];
    for(int j=0;j<n;++j){ A[1LL*i*n+j]*=invd; Inv[1LL*i*n+j]*=invd; }
    for(int r=0;r<n;++r) if(r!=i){
      float f=A[1LL*r*n+i]; if(!f) continue;
      for(int j=0;j<n;++j){
        A[1LL*r*n+j] -= f*A[1LL*i*n+j];
        Inv[1LL*r*n+j]-= f*Inv[1LL*i*n+j];
      }
    }
  }
  return true;
}
#endif

// ---------- 2) LU+P (блоковый, right-looking) ----------

// Решение L*Y = P*B (L — unit lower), B меняется на месте (Y)
static void forward_unit_lower(const float* L, const int* P, float* B, int n){
  // B := P * B (перестановка строк правых частей)
  vector<float> tmp(n);
  for(int j=0;j<n;++j){
    for(int i=0;i<n;++i) tmp[i]=B[1LL*P[i]*n + j];
    for(int i=0;i<n;++i) B[1LL*i*n + j]=tmp[i];
  }
  // Прямой ход
  for(int i=0;i<n;++i){
    const float* Li = L + 1LL*i*n;
    for(int j=0;j<n;++j){
      float s=B[1LL*i*n + j];
#pragma omp simd
      for(int k=0;k<i;++k) s -= Li[k]*B[1LL*k*n + j];
      B[1LL*i*n + j]=s; // diag(L)=1
    }
  }
}

// Решение U*X = Y (U — верхняя треугольная), B меняется на месте (X)
static void back_upper(const float* U, float* B, int n){
  for(int i=n-1;i>=0;--i){
    const float* Ui = U + 1LL*i*n;
    float invd = 1.0f/Ui[i];
    for(int j=0;j<n;++j){
      float s=B[1LL*i*n + j];
#pragma omp simd
      for(int k=i+1;k<n;++k) s -= Ui[k]*B[1LL*k*n + j];
      B[1LL*i*n + j]=s*invd;
    }
  }
}

// Панельная факторизация с частичным выбором (по всей строке!)
static int lu_panel(float* A, int n, int k0, int kb, int* piv){
  int kend = min(k0+kb, n);
  for(int k=k0;k<kend;++k){
    // pivot по столбцу k
    int p=k; float mv=fabsf(A[1LL*k*n+k]);
    for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
    if (mv==0) return -1;
    if(p!=k){
      for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
      swap(piv[k], piv[p]);
    }
    float invd = 1.0f / A[1LL*k*n + k];
    for(int i=k+1;i<n;++i) A[1LL*i*n + k] *= invd;
    for(int i=k+1;i<n;++i){
      float lik = A[1LL*i*n + k];
#pragma omp simd
      for(int j=k+1;j<kend;++j)
        A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
    }
  }
  return 0;
}

// Достраивание U12 после панели: U[i,j] = A[i,j] - sum_{t=k0}^{i-1} L[i,t]*U[t,j]
static void update_U12(float* A, int n, int k0, int kb){
  int kend = min(k0+kb, n);
  int j0 = kend;
  if (j0 >= n) return;
  for (int i = k0; i < kend; ++i){
    for (int j = j0; j < n; ++j){
      float s = A[1LL*i*n + j];
#pragma omp simd
      for (int t = k0; t < i; ++t){
        s -= A[1LL*i*n + t] * A[1LL*t*n + j];
      }
      A[1LL*i*n + j] = s; 
    }
  }
}

// Обновление хвоста (semi-auto): A22 -= L21 * U12
static void trailing_update_semi(float* A, int n, int k0, int kb){
  int i0 = k0+kb, j0 = k0+kb;
  if(i0>=n || j0>=n) return;
  for(int i=i0;i<n;++i){
    for(int j=j0;j<n;++j){
      float s = A[1LL*i*n + j];
#pragma omp simd
      for(int k=0;k<kb;++k)
        s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
      A[1LL*i*n + j]=s;
    }
  }
}

#if defined(VAR_LU_NEON)
// Ручная векторизация хвостового обновления на ARM NEON (4 float ширина)
static void trailing_update_neon(float* A, int n, int k0, int kb){
  int i0 = k0+kb, j0 = k0+kb;
  if(i0>=n || j0>=n) return;

  alignas(16) float tmp[4];

  for(int i=i0;i<n;++i){
    for(int j=j0;j<n;++j){
      float s = A[1LL*i*n + j];
      int k=0;
      float32x4_t acc = vdupq_n_f32(0.0f);
      for(; k+4<=kb; k+=4){
        float32x4_t l = vld1q_f32(&A[1LL*i*n + (k0 + k)]);
        tmp[0] = A[1LL*(k0 + k + 0)*n + j];
        tmp[1] = A[1LL*(k0 + k + 1)*n + j];
        tmp[2] = A[1LL*(k0 + k + 2)*n + j];
        tmp[3] = A[1LL*(k0 + k + 3)*n + j];
#if defined(__aarch64__)
        acc = vfmaq_f32(acc, l, vld1q_f32(tmp));   
#else
        acc = vmlaq_f32(acc, l, vld1q_f32(tmp));   
#endif
      }
      float32x2_t lo = vget_low_f32(acc);
      float32x2_t hi = vget_high_f32(acc);
      float32x2_t s2 = vadd_f32(lo, hi);
      float sum = vget_lane_f32(s2,0) + vget_lane_f32(s2,1);
      s -= sum;
      for(; k<kb; ++k)
        s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
      A[1LL*i*n + j] = s;
    }
  }
}
#endif

// Полная блоковая LUP: панель -> U12 -> A22 update
static bool invert_via_lu(float* Ain, float* Inv, int n){
  vector<int> P(n); iota(P.begin(),P.end(),0);
  float* A = Ain;
  const int KB = 128; 

  for(int k0=0; k0<n; k0+=KB){
    int kb = min(KB, n-k0);
    if (lu_panel(A, n, k0, kb, P.data())<0) return false;
    update_U12(A, n, k0, kb);
#if defined(VAR_LU_NEON)
    trailing_update_neon(A, n, k0, kb);
#elif defined(VAR_LU_SEMI_AUTO)
    trailing_update_semi(A, n, k0, kb);
#else
    trailing_update_semi(A, n, k0, kb);
#endif
  }

  // A содержит L (unit diag подразумевается) и U; найдём A^{-1}
  eye(Inv, n);
  forward_unit_lower(A, P.data(), Inv, n);
  back_upper(A, Inv, n);
  return true;
}

// ---------- main ----------
int main(int argc, char** argv){
  ios::sync_with_stdio(false);
  int n = (argc>1)? atoi(argv[1]) : N_DEFAULT;
  cerr<<"N="<<n<<"\n";

  auto A = xmalloc(1LL*n*n);
  auto I = xmalloc(1LL*n*n);
  auto Inv = xmalloc(1LL*n*n);
  fill_rand(A,n); eye(I,n);

  double t0,t1;

#ifdef VAR_BASELINE_O0
  {
    memcpy(Inv, I, 1LL*n*n*sizeof(float));
    auto A1 = (float*)malloc(1LL*n*n*sizeof(float));
    memcpy(A1,A,1LL*n*n*sizeof(float));
    t0=now_s(); bool ok = invert_gauss_jordan(A1, Inv, n); t1=now_s();
    cerr<<"baseline(s)="<<(t1-t0)<<" ok="<<ok<<"\n";
    free(A1);
  }
#endif

#ifdef VAR_FLAGS_ONLY
  {
    memcpy(Inv, I, 1LL*n*n*sizeof(float));
    auto A1 = (float*)malloc(1LL*n*n*sizeof(float));
    memcpy(A1,A,1LL*n*n*sizeof(float));
    t0=now_s(); bool ok = invert_gauss_jordan(A1, Inv, n); t1=now_s();
    cerr<<"flags_only(s)="<<(t1-t0)<<" ok="<<ok<<"\n";
    free(A1);
  }
#endif

#ifdef VAR_LU_SEMI_AUTO
  {
    auto A1 = (float*)malloc(1LL*n*n*sizeof(float));
    memcpy(A1,A,1LL*n*n*sizeof(float));
    t0=now_s(); bool ok = invert_via_lu(A1, Inv, n); t1=now_s();
    cerr<<"lu_semi_auto(s)="<<(t1-t0)<<" ok="<<ok<<"\n";
    free(A1);
  }
#endif

#ifdef VAR_LU_NEON
  {
    auto A1 = (float*)malloc(1LL*n*n*sizeof(float));
    memcpy(A1,A,1LL*n*n*sizeof(float));
    t0=now_s(); bool ok = invert_via_lu(A1, Inv, n); t1=now_s();
    cerr<<"lu_neon(s)="<<(t1-t0)<<" ok="<<ok<<"\n";
    free(A1);
  }
#endif

  // Полная проверка: ||A * Inv - I||_F / ||I||_F  (||I||_F = sqrt(n))
  {
    auto Prod = xmalloc(1LL*n*n);
    matmul(A, Inv, Prod, n);
    for (int i=0;i<n;++i) Prod[1LL*i*n + i] -= 1.f;
    double rel = fro_norm(Prod, n) / sqrt((double)n);
    cerr<<"rel_error_F(full) = "<<rel<<"\n";
    free(Prod);
  }

  free(A); free(I); free(Inv);
  return 0;
}
