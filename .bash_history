srun -n 4 -N 16 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
srun -p batch -n 4 -N 16 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
srun -p batch -N 4 -n 48 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
srun -p batch -N 4 -n 16 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
srun -p batch -N 4 -n 48 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
history
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 48 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 48 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 48 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 48 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 48 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 48 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 48 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
srun -p batch -N 4 -n 15 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 400 1000 out.png
hw2-diff out.png ref.png 
srun -p batch -N 4 -n 17 ./ms_mpi_static_mod 4 -2 2 -2 2 1000 400 out.png
ls
srun -p batch -N 1 -n 1 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
make
history | grep dynamic
srun -N 1 -n 4 -p batch ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
make
srun -N 1 -n 4 -p batch ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
srun -N 4 -n 16 -p batch ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
cd hw2
ls
make
history | grep hybrid.c
vim Makefile 
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
history | grep hybrid
time srun -p batch -c 1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
squeue
who
cd hw2
time srun -p batch -c1 -N4 -n16 ./ms_mpi_mod_time 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N1 -n4 ./ms_mpi_mod_time 1 -2 2 -2 2 4000 4000 out.png
mpicc -O3 -std=gnu99 ms_mpi_static_time.c -o ms_mpi_static_time -fopenmp -lm -lpng
time srun -p batch -c1 -N1 -n4 ./ms_mpi_static_time 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N1 -n1 ./ms_mpi_static_time 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n48 ./ms_mpi_static_time 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n48 ./ms_mpi_row_nproc 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N1 -n1 ./ms_mpi_row_nproc 1 -2 2 -2 2 4000 4000 out.png
who
squeue
clear
squeue
time srun -p batch -c1 -N4 -n48 ./ms_mpi_static_time 1 -2 2 -2 2 4000 4000 out.png
cd hw2/
time srun -p batch -c1 -N4 -n48 ./ms_mpi_static_time 1 -2 2 -2 2 4000 4000 out.png
squeue
cd hw2
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c4 -N4 -n48 ./ms_hybrid 4 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c2 -N4 -n48 ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c2 -N4 -n16 ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c2 -N4 -n24 ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c4 -N4 -n12 ./ms_hybrid 4 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c6 -N4 -n8 ./ms_hybrid 6 -2 2 -2 2 4000 4000 out.png
history | grep mpi_static
mpicc -O3 -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c2 -N4 -n48 ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_mpi_mod_time.c -o ms_mpi_static_mod -lm -lpng
mpicc -std=gnu99 ms_mpi_mod_time.c -o ms_mpi_mod_time -lm -lpng
time srun -p batch -N4 -n48 ./ms_mpi_mod_time 1 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_mpi_mod_time.c -o ms_mpi_mod_time -lm -lpng -O3
time srun -p batch -N4 -n48 ./ms_mpi_mod_time 1 -2 2 -2 2 4000 4000 out.png
make
cat Makefile 
time srun -p batch -N1 -n1 ./ms_mpi_mod_time 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -N1 -n1 ./ms_mpi_mod_time 1 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
time srun -p batch -N1 -n1 ./ms_mpi_mod_time 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static_time 1 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_mpi_row_nproc.c -o ms_mpi_row_nproc -lm -lpng -O3
time srun -p batch -c1 -N4 -n16 ./ms_mpi_row_nproc 1 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_mpi_row_nproc.c -o ms_mpi_row_nproc -lm -lpng -O3
time srun -p batch -c1 -N4 -n16 ./ms_mpi_row_nproc 1 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_mpi_row_nproc.c -o ms_mpi_row_nproc -lm -lpng -O3
time srun -p batch -c1 -N4 -n16 ./ms_mpi_row_nproc 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n48 ./ms_mpi_row_nproc 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N1 -n4 ./ms_mpi_row_nproc 1 -2 2 -2 2 4000 4000 out.png
cd hw2
ls
squeue
sqeuue
squeue
clear
squeue
cd hw2
ls
history | grep omp
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c4 ./ms_omp_time 4 -2 2 -2 2 4000 4000 out.png
ls
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 400 400 out.png
time srun -p batch -c12 ./ms_omp 12 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c12 ./ms_omp 12 -2 2 -2 2 400 400 out.png
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 400 400 out.png
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c8 ./ms_omp 8 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c8 ./ms_omp 8 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c8 ./ms_omp 8 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c8 ./ms_omp 8 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c8 ./ms_omp 8 -2 2 -2 2 4000 4000 out.png
cd hw2
time srun -p batch -c1 -N1 -n1 ./ms_mpi_row_nproc 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N1 -n1 ./ms_mpi_row_nproc 1 -2 2 -2 2 400 400 out.png
time srun -p batch -c1 -N1 -n2 ./ms_mpi_row_nproc 1 -2 2 -2 2 400 400 out.png
time srun -p batch -c8 ./ms_omp 8 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
cd hw2
ls
squeue
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
cd hw2
who
ls
history | grep srun
time srun -p batch -c1 -N4 -n48 ./ms_mpi_row_nproc 1 -2 2 -2 2 40000 4000 out.png
history
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c8 ./ms_omp 8 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c8 ./ms_omp 8 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c12 ./ms_omp 12 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c12 ./ms_omp 12 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c2 -N4 -n24 ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
who
squeue
cd hw2
time srun -p batch -c1 -N4 -n4 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n4 ./ms_hybrid 1 -2 2 -2 2 6000 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N2 -n16 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N2 -n16 ./ms_hybrid 1 -2 2 -2 2 10000 10000 out.png
ls
ls -al
vim Makefile 
make
make cleanA
make
history | grep omp
vim Makefile 
make
time srun -p batch -c1 -N2 -n16 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N2 -n16 ./ms_hybrid 1 -2 2 -2 2 400 400 out.png
make clean
make
ls
cd hw2
time srun -p batch -c4 ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
gcc -std=gnu99 -O3 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch -c12 ./ms_omp 12 -2 2 -2 2 4000 4000 out.png
history|grep hybrid
time srun -p batch -c2 -N4 -n48 ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c2 -N4 -n24 ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c2 -N4 -n24 ./ms_hybrid 2 -2 2 -2 2 10000 4000 out.png
time srun -p batch -c1 -N4 -n4 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N1 -n4 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c4 -N4 -n12 ./ms_hybrid 4 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c8 -N4 -n6 ./ms_hybrid 8 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c12 -N4 -n4 ./ms_hybrid 12 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c12 -N1 -n4 ./ms_hybrid 12 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c12 -N2 -n4 ./ms_hybrid 12 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c12 -N4 -n16 ./ms_hybrid 12 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N1 -n4 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N1 -n4 ./ms_hybrid 1 -2 2 -2 2 6000 4000 out.png
time srun -p batch -c1 -N2 -n16 ./ms_hybrid 1 -2 2 -2 2 6000 4000 out.png
time srun -p batch -c1 -N8 -n16 ./ms_hybrid 1 -2 2 -2 2 6000 4000 out.png
time srun -p batch -c1 -N3 -n16 ./ms_hybrid 1 -2 2 -2 2 6000 4000 out.png
time srun -p batch -c1 -N3 -n16 ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 2 10000 10000 out.png
clear
mv ms_mpi_static_mod.c ms_mpi_static.c 
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 400 400 out.png
srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 400 400 out.png
hw2-diff out.png ref.png 
srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 400 400 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 400 400 out.png
hw2-diff out.png ref.png 
ls
cd ..
git add .
git status
git rm hw1/sl*
git add .
git push origin master
git commit
git push origin master
cd hw2
srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 400 1 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 400 1 out.png
hw2-diff out.png ref.png 
srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 1 400 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 1 400out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 1 400 out.png
hw2-diff out.png ref.png 
make clean
ls
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 1 400 out.png
srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 1 400 ref.png
hw2-diff out.png ref.png 
srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 400 400 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 400  out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 400 2 out.png
srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 400 2 ref.png
hw2-diff out.png ref.png 
srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 400 1 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 400 1 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 1 1 out.png
srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 1 1 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 1 1 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 10 1 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 400 1 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 1 400  out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 15 1 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 16 1 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 1 16 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 14 4 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 1 14 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 1 16 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 13 6 out.png
mv ms_mpi_static_mod.c ms_mpi_static.c 
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 13 6 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 400 6 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 400 400 out.png
mv ms_mpi_static_mod.c ms_mpi_static.c 
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 400 400 out.png
mv ms_mpi_static_mod.c ms_mpi_static.c 
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 400 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 400 400 ref.png
hw2-diff ref.png out.png 
mv ms_mpi_static_mod.c ms_mpi_static.c 
make
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 400 400 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 400 400 out.png
hw2-diff ref.png out.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 13 14 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 13 14 ref.png
hw2-diff ref.png out.png 
mv ms_mpi_static_mod.c ms_mpi_static.c 
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 400 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 400 400 ref.png
hw2-diff ref.png out.png 
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 1 1 ref.png
hw2-diff ref.png out.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_static 1 -2 2 -2 4 1 1 out.png
hw2-diff ref.png out.png 
ls
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 400 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 401 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 400 402 out.png
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 401 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 401 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 401 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 401 400 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 400 401 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 400 401 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 401 400 out.png
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 401 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 401 400 ref.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 401 400 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 401 400 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 401 400 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 401 400 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 402 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 402 400 ref.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 402 400 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 402 400 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 420 400 out.png
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 420 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 420 400 ref.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 420 400 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 420 400 out.png
hw2-diff ref.png out.png 
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 420 400 out.png
hw2-diff ref.png out.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 1 1 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 1 1 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 16 1 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 16 1 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 1 16 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 1 16 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 2 16 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 4 2 16 out.png
hw2-diff out.png ref.png 
cd hw2
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 2 16 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 400 16 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 400 600 out.png
time srun -p batch -c2 -N4 -n16 ./ms_hybrid 2 -2 2 -2 4 400 600 out.png
make
make
cd hw2/
make
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 20 16 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 20 16 ref.png
hw2-diff ref.png out.png 
make
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 20 16 out.png
hw2-diff ref.png out.png 
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 200 16 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 200 16 ref.png
hw2-diff ref.png out.png 
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 400 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 400 400 ref.png
hw2-diff ref.png out.png 
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 420 400 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 420 400 out.png
hw2-diff ref.png out.png 
make
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 420 400 out.png
make
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 420 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 400 400 out.png
make
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 400 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 420 400 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 16 400 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 14 400 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 14 400 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 14 400 out.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 14 400 out.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 14 400 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 14 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 4 14 4000 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c2 -N4 -n16 ./ms_seq 2 -2 2 -2 4 14 4000 ref.png
time srun -p batch -c2 -N4 -n16 ./ms_seq 2 -2 2 -2 4 1400 4000 ref.png
time srun -p batch -c2 -N4 -n16 ./ms_seq 2 -2 2 -2 4 140 400 ref.png
make
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 14 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 140 4000 out.png
time srun -p batch -c2 -N4 -n16 ./ms_hybrid 2 -2 2 -2 4 140 4000 out.png
time srun -p batch -c4 -N4 -n16 ./ms_hybrid 4 -2 2 -2 4 140 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 1400 4000 out.png
time srun -p batch -c3 -N4 -n16 ./ms_hybrid 3 -2 2 -2 4 1400 4000 out.png
make
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 1400 4000 out.png
time srun -p batch -c3 -N4 -n16 ./ms_hybrid 3 -2 2 -2 4 1400 4000 out.png
make
time srun -p batch -c3 -N4 -n16 ./ms_hybrid 3 -2 2 -2 4 14 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 14 4000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 14 40000 out.png
time srun -p batch -c3 -N4 -n16 ./ms_hybrid 3 -2 2 -2 4 14 40000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 1 1 out.png
time srun -p batch -c3 -N4 -n16 ./ms_seq 3 -2 2 -2 4 1 1 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c3 -N4 -n16 ./ms_seq 3 -2 2 -2 4 180 1 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_hybrid 1 -2 2 -2 4 180 1 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 2560 1600 out.png
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 25600 16000 out.png
cd hw2
make
time srun -p batch -c1 -N2 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 16 400 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 16 400 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 15 400 ref.png
time srun -p batch -c1 -N2 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 15 400 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 15 16 out.png
make
time srun -p batch -c1 -N2 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 15 16 out.png
time srun -p batch -c1 -N2 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 14 16 out.png
time srun -p batch -c1 -N2 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 15 16 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 15 16 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 16 16 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 16 16 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 16 15 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 16 15 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n48 ./ms_mpi_dynamic 1 -2 2 -2 2 16 15 out.png
time srun -p batch -c1 -N4 -n48 ./ms_mpi_dynamic 1 -2 2 -2 2 48 15 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 48 15 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 48 14 ref.png
time srun -p batch -c1 -N4 -n48 ./ms_mpi_dynamic 1 -2 2 -2 2 48 14 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n48 ./ms_mpi_dynamic 1 -2 2 -2 2 48 1 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 48 1 ref.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N4 -n48 ./ms_mpi_dynamic 1 -2 2 -2 2 47 1 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 47 1 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 15 1 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 10 1 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 15 1 out.png
time srun -p batch -c1 -N2 -n16 ./ms_ 1 -2 2 -2 2 15 1 ref.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 15 1 ref.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 15 1 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 15 1 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 16 1 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 16 1 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 16 3 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 16 3 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 16 3 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 16 3 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 15 3 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 15 3 ref.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 15 3 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 15 3 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 1 1 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 1 ref.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 1 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 1 1 out.png
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 1 1 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 1 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 19 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 1 19 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 1 16 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 16 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 100 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 1 100 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 3 100 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 3 100 out.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 3 100 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 3 100 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 420 100 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 420 100 ref.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 420 100 ref.png
time srun -p batch -c4 -N4 -n16 ./ms_omp 4 -2 2 -2 2 420 100 out.png
time srun -p batch -c4 -N1 -n1 ./ms_omp 4 -2 2 -2 2 420 100 out.png
make
time srun -p batch -c4 -N4 -n16 ./ms_omp 4 -2 2 -2 2 420 100 out.png
time srun -p batch -c4 -N1 -n1 ./ms_omp 4 -2 2 -2 2 420 100 out.png
hw2-diff out.png ref.png 
time srun -p batch -c4 -N1 -n1 ./ms_omp 4 -2 2 -2 2 11 100 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 11 100 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 100 ref.png
time srun -p batch -c4 -N1 -n1 ./ms_omp 4 -2 2 -2 2 1 100 out.png
hw2-diff out.png ref.png 
time srun -p batch -c4 -N1 -n1 ./ms_omp 4 -2 2 -2 2 1 1 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 1 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 14 1 ref.png
time srun -p batch -c4 -N1 -n1 ./ms_omp 4 -2 2 -2 2 14 1 out.png
hw2-diff out.png ref.png 
make
time srun -p batch -c4 -N1 -n1 ./ms_omp 4 -2 2 -2 2 14 1 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 14 1 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c12 -N1 -n1 ./ms_omp 12 -2 2 -2 2 14 1 out.png
hw2-diff out.png ref.png 
make clean
make
ls
time srun -p batch -c12 -N1 -n1 ./ms_hybrid 12 -2 2 -2 2 14 1 out.png
time srun -p batch -c12 -N1 -n4 ./ms_omp 12 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c12 -N1 -n4 ./ms_hybrid 12 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c12 -N4 -n4 ./ms_hybrid 12 -2 2 -2 2 4000 4000 out.png
make
time srun -p batch -c4 -N1 -n4 ./ms_hybrid 4 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 400 1000 out.png
make
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 400 1000 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 1 1000 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 4 1000 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 3 1000 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 3 1000 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 2 1000 out.png
make
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 2 1000 out.png
make
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 2 1000 out.png
make
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 2 1000 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 2 10 out.png
make
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 2 10 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 3 10 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 1 10 out.png
time srun -p batch -c3 -N1 -n2 ./ms_hybrid 3 -2 2 -2 2 1 10 out.png
make
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 1 10 out.png
make
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 1 10 out.png
make
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 1 10 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 10 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 10000000 ref.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 100000 ref.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 1 100000 out.png
hw2-diff out.png ref.png 
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 1 1 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1 1 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1493 1 ref.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 1493 1 out.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1400 1 ref.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1473 1 ref.png
time srun -p batch -c1 -N2 -n16 ./ms_seq 1 -2 2 -2 2 1492 1 ref.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 143 1 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 100 1 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 20 1 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 3 1 out.png
make
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 3 1 out.png
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 100 1 out.png
git add .
git commit 
git push
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 25600 25600 out.png
cd hw2
time srun -p batch -c3 -N1 -n4 ./ms_hybrid 3 -2 2 -2 2 25600 25600 out.png
time srun -p batch -c1 -N4 -n48 ./ms_hybrid 1 -2 2 -2 2 25600 25600 out.png
squeue
who
squeue
cd homework/
ls
mkdir HW2
cd ..
cd hw2
ls
cp * ../homework/HW2/
cd ..
hw2-judge-all 
cd hw2
make
cd ..
cd homework/HW2/
ls
make
history | grep srun
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 420 100 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 420 100 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 420 100 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 420 100 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 4200 1 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 4200 1 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 420000000 1 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 42000000 1 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 4200000 1 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 420000 1 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 420000 1 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 1 1 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 1 1 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 1 1000000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 1 1000000 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 10 1000000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 10 1000000 ref.png
cd ~/hw2/
cd ..
ls
cd homework/HW2/
ls
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 2 1000000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 2 1000000 ref.png
hw2-diff out.png ref.png 
cd ~/hw2/
ls
stat ms_mpi_dynamic.c 
cd ~/homework/HW2/
ls
make
hw2-judge-all -only=ms_mpi_dynamic
hw2-judge-all --only=ms_mpi_dynamic
239 137 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 2 239 137 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 239 137 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 2 239 137 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 2 1000000 out.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 239 137 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 1 10000  out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 1 10000 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 239 137 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 239 137 ref.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 1393 137 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 1393 137 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 239 137 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 239 13 ref.png
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 1393 13 out.png
hw2-diff out.png ref.png 
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 239 13 out.png
hw2-diff out.png ref.png 
make
time srun -p batch -c1 -N4 -n16 ./ms_mpi_dynamic 1 -2 2 -2 2 239 13 out.png
time srun -p batch -c1 -N4 -n16 ./ms_seq 1 -2 2 -2 2 239 13 ref.png
hw2-diff out.png ref.png 
history | grep hw2-judge
hw2-judge-all -only=ms_mpi_dynamic
hw2-judge-all --only=ms_mpi_dynamic
ls
cd ..
ls
cd homework/
ls
stat HW2
cd ..
stat hw2
cd hw2/
ls
stat ms_mpi_static.c 
stat out.png 
mv out.png ../homework/HW2/
cd ../homework/HW2/
stat out.png 
ls
cd ..
cd HW2
stat ref.png 
stat out.png 
cd ..
cd hw2
ls
cd ..
cd homework/HW2/
ls
cd ..
cd hw2
stat ref.png 
cd ..
cd homework/
mv HW2 HW2_mod
ls
cd ..
mv /hw2 ~/homework/HW2
ld
ls
mv ~/hw2 ~/homework/HW2
ls
cd homework/
stat HW2
cd HW2
stat ref.png 
cd ..
cp HW2_mod/ms_mpi_dynamic.c HW2/
cd HW2
ls
hw2-judge-all 
cd homework/HW2
ls
stat ms_mpi_static.c
clear
stat ms_*c
hw2-judge-all 
git add .
git commit 
git push -u origin master
who
cd homework/HW2
ls
who
cd  /home/pp17/ta/hw3 
ls
cat seq_FW 
cat seq_FW ls
ls
cat 1.out 
cat 1.in 
cat 2.out 
cat 1.out 
cat 2.IN 
cat 2.in
ls
cd ~
ls
mkdir hw3
l
cd hw3
sl
ls
cp  /home/pp17/ta/hw3/* .
ls
ls
cd hw3
ls
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
cat 1.in 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
cd ..
cd homework/HW1/
gcc ASAP_seq.c -o ASAP_seq
cd ~/hw3
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
cat 1.in
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
cd hw3
ls
cat 1.in 
who
cd hw3
ls
cat 1.in
cat 1.out 
cat 1.in
cat 2.in
ls
gcc ASAP_seq.c ASAP_seq
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
cat 3.in 
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
cat 1.out 
cat 2.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
cat 2.in 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
cat 2.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
cat 3.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 1.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 2.out 
diff out.out 1.out 
diff out.out 2.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 3.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 4.out 
diff out.out 3.out 
diff out.out 4.out 
cd hw3
ls
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
ls
diff out.out 3.oi
diff out.out 3.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 3.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 3.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 3.out 
diff out.out 4.out 
diff out.out 3.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 3.out 
who
clear
diff out.out 3.out 
