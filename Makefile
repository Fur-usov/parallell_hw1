CXX := /opt/homebrew/bin/g++-15

BASE := -std=c++20 -Wall -Wextra
FAST := -O3 -march=native -ffast-math -fopenmp

SRC := inv.cpp

ARCH := $(shell uname -m)

.PHONY: all info base flags semi neon asm_neon clean

all: info base flags semi neon

info:
	@echo "Using CXX = $(CXX)"
	@$(CXX) --version

# 1) Базовый вариант: Gauss–Jordan, без оптимизаций
base:
	$(CXX) $(BASE) -O0 -DVAR_BASELINE_O0 $(SRC) -o inv_base

# 2) Только флаги компилятора (всё тот же Gauss–Jordan, но -O3)
flags:
	$(CXX) $(BASE) $(FAST) -DVAR_FLAGS_ONLY $(SRC) -o inv_flags

# 3) Полуавтоматическая векторизация: блоковый LU+P с omp simd
semi:
	$(CXX) $(BASE) $(FAST) -DVAR_LU_SEMI_AUTO $(SRC) -o inv_semi

# 4) Ручная векторизация хвостового обновления на ARM NEON
neon:
	$(CXX) $(BASE) $(FAST) -DVAR_LU_NEON $(SRC) -o inv_neon

# Ассемблерный листинг NEON-варианта (ищи функцию trailing_update_neon)
asm_neon:
	$(CXX) $(BASE) $(FAST) -DVAR_LU_NEON -S -fverbose-asm $(SRC) -o neon.s

run_base: base
	OMP_NUM_THREADS=1 ./inv_base 512

run_flags: flags
	OMP_NUM_THREADS=1 ./inv_flags 512

run_semi: semi
	OMP_NUM_THREADS=1 ./inv_semi 512

run_neon: neon
	OMP_NUM_THREADS=1 ./inv_neon 512

run_neon_mt: neon
	OMP_NUM_THREADS=$(shell sysctl -n hw.perflevel0.physicalcpu) ./inv_neon 1024

clean:
	rm -f inv_base inv_flags inv_semi inv_neon neon.s