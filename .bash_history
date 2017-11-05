 srun -n 7 ./ms_mpi_static 4 -10 2 -2 2 2 1000 out.png
make
 srun -n 7 ./ms_mpi_static 4 -10 2 -2 2 2 1000 out.png
make
 srun -n 7 ./ms_mpi_static 4 -10 2 -2 2 2 1000 out.png
make
 srun -n 7 ./ms_mpi_static 4 -10 2 -2 2 2 1000 out.png
clear
 srun -n 7 ./ms_mpi_static 4 -10 2 -2 2 2 1000 out.png
make
 srun -n 7 ./ms_mpi_static 4 -10 2 -2 100 2 1000 out.png
 srun -n 7 ./ms_seq 4 -10 2 -2 2 2 1000 ref.png
hw2-diff ref.png out.png 
 srun -n 7 ./ms_seq 4 -10 2 -2 2 200 2 ref.png
 srun -n 7 ./ms_mpi_static 4 -10 2 -2 2 200 2 out.png
hw2-diff ref.png out.png 
 srun -n 7 ./ms_mpi_static 4 -10 2 -2 2 2 2 out.png
 srun -n 7 ./ms_seq 4 -10 2 -2 2 2 2 ref.png
hw2-diff ref.png out.png 
who
cd hw2/
sl
ls
make
top
cd hw2/
ls
history | gre psrun
top
cd hw2/
ls
history | gre psrun
history | grep srun
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
make
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
make
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
make
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
squeue
make
squeue
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
make
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
exit
cd hw2
ls
make
ls
 srun -n 3 ./ms_mpi_static 4 -2 2 -2 2 100 100 out.png
 srun -n 3 ./ms_mpi_dynamic 4 -2 2 -2 2 100 100 out.png
make
 srun -n 3 ./ms_mpi_dynamic 4 -2 2 -2 2 100 100 out.png
 srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 100 100 out.png
make
 srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 100 100 out.png
 srun -n 3 ./ms_mpi_static 4 -2 2 -2 2 1000 1000 out.png
cd hw2/
squeue
cd hw2/
make
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
make
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
make
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
srun ./ms_seq 4 -2 2 -2 2 400 400 out.png
srun ./ms_seq 4 -2 2 -2 2 400 400 ref.png 
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
make
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 4000 4000 out.png
srun -n 8 ./ms_mpi_dynamic 4 -2 2 -2 2 4000 4000 out.png
cd hw2/
ls
srun -n 4 ./ms_mpi_dynamic 4 -2 2 -2 2 400 400 out.png
ls
diff out.png ref.png 
hw2-diff out.png ref.png 
cd hw1
ls
rm sl*
s
ls
vim HW1_103061108_advanced.c 
cd ..
cd hw2
ls
make
mpicc -O3 -std=gnu99  -lpng  ms_mpi_static_time.c   -o ms_mpi_static_time
srun -n 4 ./ms_mpi_static_time 4 -2 2 -2 2 400 400 out.png
srun -n 4 ./ms_mpi_static_time 4 -2 2 -2 2 1000 1000 out.png
srun -n 1 ./ms_mpi_static_time 4 -2 2 -2 2 1000 1000 out.png
srun -n 16 ./ms_mpi_static_time 4 -2 2 -2 2 1000 1000 out.png
srun -N 4 -n 16 -p batch ./ms_mpi_static_time 4 -2 2 -2 2 1000 1000 out.png
srun -N 4 -n 48 -p batch ./ms_mpi_static_time 4 -2 2 -2 2 1000 1000 out.png
srun -N 1 -n 1 -p batch ./ms_mpi_static_time 4 -2 2 -2 2 4000 4000 out.png
srun -N 1 -n 4 -p batch ./ms_mpi_static_time 4 -2 2 -2 2 4000 4000 out.png
cd hw2
ls
srun -N 4 -n 16 -p batch ./ms_mpi_dynamic 4 -2 2 -2 2 1000 1000 out.png
srun -N 4 -n 16 -p batch ./ms_seq 4 -2 2 -2 2 1000 1000 out.png
cd hw2
ls
srun -N 1 -n 1 -p batch ./ms_mpi_dynamic_time 4 -2 2 -2 2 10000 10000 out.png
srun -N 4 -n 16 -p batch ./ms_mpi_dynamic_time 4 -2 2 -2 2 4000 4000 out.png
srun -N 4 -n 16 -p batch ./ms_mpi_static_time 4 -2 2 -2 2 4000 4000 out.png
srun -N 4 -n 48 -p batch ./ms_mpi_static_time 4 -2 2 -2 2 4000 4000 out.png
ls
make
srun -p batch ./ms_omp 1 -2 2 -2 2 400 400 out.png
time srun -p batch ./ms_omp 4 -2 2 -2 2 400 400 out.png
time srun -p batch ./ms_omp 1 -2 2 -2 2 400 400 out.png
gcc ms_omp.c -o ms_omp -fopenmp
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm
make
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
srun -c3 -n1 ./ms_omp
srun -N 4 -n 16 -p batch ./ms_omp 4 -2 2 -2 2 4000 4000 out.png
srun -N 4 -n 16 -p batch ./ms_omp 4 -2 2 -2 2 400 400 out.png
time srun -N 4 -n 16 -p batch ./ms_omp 4 -2 2 -2 2 400 400 out.png
time srun -N 4 -n 16 -p batch ./ms_omp 1 -2 2 -2 2 400 400 out.png
time srun -c3 -n2 16 -p batch ./ms_omp 1 -2 2 -2 2 400 400 out.png
time srun -c3 -n2 -p batch ./ms_omp 1 -2 2 -2 2 400 400 out.png
time srun -c1 -n1 -p batch ./ms_omp 4 -2 2 -2 2 400 400 out.png
time srun -c1 -n1 -p batch ./ms_omp 1 -2 2 -2 2 400 400 out.png
time srun -p batch ./ms_omp 1 -2 2 -2 2 400 400 out.png
time srun -p batch ./ms_omp 9 -2 2 -2 2 400 400 out.png
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
ls -al
time srun -p batch ./ms_omp 9 -2 2 -2 2 400 400 out.png
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch ./ms_omp 9 -2 2 -2 2 400 400 out.png
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch ./ms_omp 9 -2 2 -2 2 400 400 out.png
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch ./ms_omp 9 -2 2 -2 2 400 400 out.png
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch ./ms_omp 9 -2 2 -2 2 400 400 out.png
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch ./ms_omp 9 -2 2 -2 2 400 400 out.png
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch ./ms_omp 2 -2 2 -2 2 400 400 out.png
time srun -p batch ./ms_seq 2 -2 2 -2 2 400 400 out.png
time srun -p batch ./ms_seq 2 -2 2 -2 2 400 400 ref.png
time srun -p batch ./ms_seq 2 -2 2 -2 2 400 400 out.png
time srun -p batch ./ms_seq 2 -2 2 -2 2 400 400 ref.png
time srun -p batch ./ms_omp 2 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
time srun -p batch ./ms_omp 9 -2 2 -2 2 400 400 out.png
hw2-diff out.png ref.png 
time srun -p batch ./ms_omp 9 -2 2 -2 2 1000 1000 out.png
time srun -p batch ./ms_omp 4 -2 2 -2 2 1000 1000 out.png
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch ./ms_omp 4 -2 2 -2 2 1000 1000 out.png
squeue
srun -N 4 -n 1 -p batch ./ms_mpi_static_time 4 -2 2 -2 2 4000 4000 out.png
srun -N 1 -n 4 -p batch ./ms_mpi_static_time 4 -2 2 -2 2 4000 4000 out.png
cd hw2
srun -N 1 -n 4 -p batch ./ms_mpi_static_time 4 -2 2 -2 2 4000 4000 out.png
mpicc -O3 -std=gnu99  -lpng  ms_mpi_dynamic_time.c -o ms_mpi_dynamic_time
srun -N 1 -n 4 -p batch ./ms_mpi_dynamic_time 4 -2 2 -2 2 4000 4000 out.png
mpicc -O3 -std=gnu99  -lpng  ms_mpi_dynamic_time.c -o ms_mpi_dynamic_time
srun -N 1 -n 4 -p batch ./ms_mpi_dynamic_time 4 -2 2 -2 2 4000 4000 out.png
srun -N 4 -n 16 -p batch ./ms_mpi_dynamic_time 4 -2 2 -2 2 4000 4000 out.png
srun -N 4 -n 48 -p batch ./ms_mpi_dynamic_time 4 -2 2 -2 2 4000 4000 out.png
srun -N 1 -n 4 -p batch ./ms_mpi_dynamic_time 4 -2 2 -2 2 10000 10000 out.png
who
squeue
who
cd hw2
ls
cd hw2/
ls
history 
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch ./ms_omp 4 -2 2 -2 2 2000 2000 out.png
squeue
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch ./ms_omp 4 -2 2 -2 2 1000 1000 out.png
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch ./ms_omp 4 -2 2 -2 2 1000 1000 out.png
gcc -std=gnu99 ms_omp.c -o ms_omp -fopenmp -lm -lpng
time srun -p batch ./ms_omp 4 -2 2 -2 2 1000 1000 out.png
gcc -std=gnu99 ms_omp_time.c -o ms_omp_time -fopenmp -lm -lpng
time srun -p batch ./ms_omp 4 -2 2 -2 2 1000 1000 out.png
time srun -p batch ./ms_omp_time 4 -2 2 -2 2 1000 1000 out.png
time srun -p batch ./ms_omp_time 10 -2 2 -2 2 1000 1000 out.png
gcc -std=gnu99 ms_omp_time.c -o ms_omp_time -fopenmp -lm -lpng
time srun -p batch ./ms_omp_time 10 -2 2 -2 2 1000 1000 out.png
time srun -p batch ./ms_omp_time 1 -2 2 -2 2 1000 1000 out.png
gcc -std=gnu99 ms_omp_time.c -o ms_omp_time -fopenmp -lm -lpng
time srun -p batch ./ms_omp_time 1 -2 2 -2 2 1000 400 out.png
time srun -p batch ./ms_omp_time 10 -2 2 -2 2 1000 400 out.png
gcc -std=gnu99 ms_omp_time.c -o ms_omp_time -fopenmp -lm -lpng
time srun -p batch ./ms_omp_time 10 -2 2 -2 2 1000 400 out.png
time srun -p batch ./ms_omp_time 4 -2 2 -2 2 1000 400 out.png
time srun -p batch -c4 ./ms_omp_time 4 -2 2 -2 2 1000 400 out.png
time srun -p batch -c10 ./ms_omp_time 10 -2 2 -2 2 1000 400 out.png
time srun -p batch -c10 ./ms_seq 10 -2 2 -2 2 1000 400 out.png
time srun -p batch -c10 ./ms_seq 10 -2 2 -2 2 1000 400 ref.png
time srun -p batch -c20 ./ms_seq 20 -2 2 -2 2 1000 400 ref.png
time srun -p batch -c12 ./ms_seq 12 -2 2 -2 2 1000 400 ref.png
time srun -p batch -c12 ./ms_omp_time 12 -2 2 -2 2 1000 400 out.png
hw2-diff out.png ref.png 
who
jo s
jobs
job
cd hw2
ls
time srun -p batch -c12 ./ms_omp_time 12 -2 2 -2 2 1000 1000 out.png
cd hw2
time srun -p batch -c12 ./ms_omp_time 12 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c2 ./ms_omp_time 2 -2 2 -2 2 1000 1000 out.png
gcc -std=gnu99 ms_omp_time.c -o ms_omp_time -fopenmp -lm -lpng
time srun -p batch -c12 ./ms_omp_time 12 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c2 ./ms_omp_time 2 -2 2 -2 2 1000 1000 out.png
ls
cd hw2/
make
gcc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
clear
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c12 ./ms_hybrid 12 -2 2 -2 2 1000 1000 out.png
cd hw2
ls
time srun -p batch -c 2-n2 -N2 ./ms_hybrid 2 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c 2 -n2 -N2 ./ms_hybrid 2 -2 2 -2 2 1000 1000 out.png
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c 2 -n2 -N2 ./ms_hybrid 2 -2 2 -2 2 1000 1000 out.png
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c 4 -n2 -N2 ./ms_hybrid 4 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c 12 -n2 -N2 ./ms_hybrid 12 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c 12 -n3 -N2 ./ms_hybrid 12 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c 12 -n2 -N4 ./ms_hybrid 12 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c 12 -n4 -N4 ./ms_hybrid 12 -2 2 -2 2 1000 1000 out.png
cd ..
ls
cd lab2/
ls
cat hello_hybrid.c 
cd hw2
cd ../hw2
ls
history
make
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -n 4 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
srun -n 2 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -n 2 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -n 2 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
srun -n 2 ./ms_seq 4 -2 2 -2 2 400 400 ref.png
hw2-diff ref.png out.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -n 2 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff ref.png out.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -n 2 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff ref.png out.png 
srun -n 1 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff ref.png out.png 
history | time
cd hw2
time srun -p batch -c12 ./ms_seq 12 -2 2 -2 2 1000 1000 ref.png
hw2-diff ref.png out.png 
squeue
scancel 105038
squeue
cd hw2
ls
time srun -p batch -c 2-n2 -N2 ./ms_hybrid 2 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c 2 -n2 -N2 ./ms_hybrid 2 -2 2 -2 2 1000 1000 out.png
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c 2 -n2 -N2 ./ms_hybrid 2 -2 2 -2 2 1000 1000 out.png
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c 4 -n2 -N2 ./ms_hybrid 4 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c 12 -n2 -N2 ./ms_hybrid 12 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c 12 -n3 -N2 ./ms_hybrid 12 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c 12 -n2 -N4 ./ms_hybrid 12 -2 2 -2 2 1000 1000 out.png
time srun -p batch -c 12 -n4 -N4 ./ms_hybrid 12 -2 2 -2 2 1000 1000 out.png
cd ..
ls
cd lab2/
ls
cat hello_hybrid.c 
cd hw2
cd ../hw2
ls
history
make
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -n 4 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
srun -n 2 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -n 2 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -n 2 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
srun -n 2 ./ms_seq 4 -2 2 -2 2 400 400 ref.png
hw2-diff ref.png out.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -n 2 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff ref.png out.png 
mpicc -std=gnu99 ms_mpi_static_mod.c -o ms_mpi_static_mod -lm -lpng
srun -n 2 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff ref.png out.png 
srun -n 1 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
hw2-diff ref.png out.png 
history | time
history | grep time
time srun -p batch -c 1 -n4 -N48 ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c 1 -n48 -N4 ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c 4 -N4 -n12  ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
history | grep hybrid
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c1 -N4 -n48  ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c2 -N4 -n24  ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c4 -N4 -n12  ./ms_hybrid 4 -2 2 -2 2 4000 4000 out.png
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c1 -N4 -n48  ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
ls
mpicc -std=gnu99 ms_hybrid.c -o ms_hybrid -fopenmp -lm -lpng
time srun -p batch -c1 -N4 -n48  ./ms_hybrid 1 -2 2 -2 2 4000 4000 out.png
time srun -p batch -c1 -N2 -n24  ./ms_hybrid 2 -2 2 -2 2 4000 4000 out.png
history 
srun -n 4 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
srun -N 4 -n 16 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
srun -N 2 -n 16 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
srun -n 2 -N 16 ./ms_mpi_static_mod 4 -2 2 -2 2 400 400 out.png
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
