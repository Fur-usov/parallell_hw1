# parallell_hw1

# Векторизация: нахождение обратной матрицы (Вариант 5)

Этот проект реализует и оптимизирует вычисление **обратной матрицы плотной матрицы большой размерности** с помощью различных уровней оптимизации и векторизации под **Apple Silicon (ARM NEON)**.

## Сборка

Используется **GCC 15** (из Homebrew) на macOS ARM64.

Сборка `make -j`

## Запуск

Однопоточные тесты (по 512×512):
```bash
OMP_NUM_THREADS=1 ./inv_base 512
OMP_NUM_THREADS=1 ./inv_flags 512
OMP_NUM_THREADS=1 ./inv_semi 512
OMP_NUM_THREADS=1 ./inv_neon 512
```
Многопоточный запуск (по числу физических ядер, размер 1024):
```bash
OMP_NUM_THREADS=$(sysctl -n hw.perflevel0.physicalcpu) ./inv_neon 1024
```

Ассемблерный листинг
`make asm_neon`