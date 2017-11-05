cd hw1/
ls
history | grep advance
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance.o  1 million.bin output"
cat slurm-26049.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o  1 million.bin output"
cat slurm-26052.out 
cat slurm-26049.out 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_advance.o  1 million.bin output"
cat slurm-26059.out 
sbatch -N 4 -n 48 -p batch --wrap="time srun ./HW_advance.o  1 million.bin output"
cat slurm-26073.out 
who
cd homework/HW1/
make
ls
hw1-judge HW1_103061108_basic
hw1-judge HW1_103061108_advanced
squeue
exit
cd lab2/
ls
cat hello_pthread.c 
gcc pi_pthread.c -o pi_pthread -lm
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 500000
gcc pi_pthread.c -o pi_pthread -lm -pthread
clear
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 500000
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 500000
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 500000
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 500000
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 500000
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 500000
top
ls
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 500000
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 500000
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 500000
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 500000
srun -c 4 ./pi_pthread 4 5000000000
srun -c 4 ./pi_pthread 4 50000000
gcc pi_pthread.c -o pi_pthread -lm -pthread
srun -c 4 ./pi_pthread 4 50000000
ls
gcc pthread_cond.c -o pi_pthread -lm -pthread
gcc pthread_cond.c -o pthread_cond -lm -pthread
./pthread_cond 

./pthread_cond 
ls
cat hello_omp.c 
gcc hello_omp.c -o hello_omp -fopenmp
srun -c 4 ./hello_omp
srun -c 10 ./hello_omp
srun -c 4 ./hello_omp
srun -c 2 ./hello_omp
srun -c 7 ./hello_omp
ls
vim prime.c 
clear
vim hello_hybrid.c 
ls
srun -c 4 ./pthread_cond 
srun ./pthread_cond 
./pthread_cond 
ls
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 500000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 500000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 500000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 500000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 500000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 500000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 500000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 500000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 500000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 500000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 500000
srun -c 3 -N 2 ./pi_hybrid 50
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun  -N 2 ./pi_hybrid 50000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun  -N 2 ./pi_hybrid 50000
srun -c 3 -N 2 ./pi_hybrid 50000
srun -c 3 -N 4 -p batch ./pi_hybrid 50000
srun -c 3 -N 4 -p batch ./pi_hybrid 50000000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 4 -p batch ./pi_hybrid 50000000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 4 -p batch ./pi_hybrid 50000000
srun -c 3 -N 1 -p batch ./pi_hybrid 50000000
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 1 -p batch ./pi_hybrid 50000000
vim pi_hybrid.c 
srun -c 3 -N 1 -p batch ./pi_hybrid 50000000
vim pi_hybrid.c 
vim ~/.viminfo 
rm ~/.viminfo 
vim pi_hybrid.c 
mpicc pi_hybrid.c -o pi_hybrid -lm -fopenmp -std=c99
srun -c 3 -N 1 -p batch ./pi_hybrid 50000000
vim pi_hybrid.c 
pwd
ls
man manMAN
LS
ls
l
ls
cd lab1b/
ls
cat pi.c 
cd ..
cd lab2/
cat prime.c 
clear
cat prime.c 
clear
cat hello_omp
clear
cat hello_omp.c 
ls
mpicc hello_hybrid.c -o hello_hybrid -fopenmp
srun -c 3 -N 2 ./hello_hybrid
ls
cd ..
cd lab1b/
ls
cp pi.c ~/lab2/
cd ..
cd lab2/
ls
mv pi.c pi_pthread.c
vim pi_pthread.c 
ls
cp pi_pthread ~
srun -c 4 ./pi_pthread 4 500000
srun -c 4 ./pi_pthread 4 5000000
.ls
ls
srun -c 4 ./pi_pthread 4 50000000
mv pi_pthread.c pi_hybrid.c
mpicc pi_hybrid.c -o hello_hybrid -fopenmp
mpicc pi_hybrid.c -o hello_hybrid -fopenmp -std=c99 -lm
srun -c 3 -N 2 ./hello_hybrid
srun -c 3 -N 2 ./hello_hybrid 5000000
srun -c 3 -N 2 ./hello_hybrid 50000000
time srun -c 3 -N 2 ./hello_hybrid 50000000
time srun -c 3 -N 1 ./hello_hybrid 50000000
vim pi_hybrid.c 
ls
cat prime.c 
gcc prime.c -o prime -pthread -fopenmp
gcc prime.c -o prime -pthread -fopenmp -lm
srun -c 4 ./prime 100
srun -c 4 ./prime 1000
srun -c 1 ./prime 1000
vim pi_hybrid.c 
vim prime.c
gcc prime.c -o prime -pthread -fopenmp -lm
srun -c 1 ./prime 1000
srun -c 4 ./prime 1000
vim prime.c
clear
gcc prime.c -o prime -pthread -fopenmp -lm
vim prime.c
gcc prime.c -o prime -pthread -fopenmp -lm
srun -c 4 ./prime 1000
vim prime.c
gcc prime.c -o prime -pthread -fopenmp -lm
vim prime.c
gcc prime.c -o prime -pthread -fopenmp -lm
srun -c 4 ./prime 1000
srun -c 1 ./prime 1000
vim prime.c 
cd ..
cd lab1b/
cat pi.c 
ls
cd ..
ls
cd ta
ls
cd ..
cp -r ta/ ~/
cd ..
cd ~
ls
rm -r ta/
ls
cd ta/
ls
cd lab2/
ls
l
ls
cd ..
cp -r /home/pp17/ta/lab2 ~
cd ~
ls
cd lab2/
ls
gcc hello_pthread.c -o hello_pthread -pthread
srun -c 4 ./hello_pthread 4
ls
vim pi_pthread.c
ls
vim pthread_cond.c 
vim pi_pthread.c
cd homework/HW1/
ls
cat slurm-22232.out 
hw1-judge-all HW1_103061108_basic
history
history | grep hw1-b
hw1-b2float /home/pp17/ta/hw1/samples/testcase15
cd /home/pp17/ta/hw1/samples/
ls
cd ..
ls
cd ..
ls
cd hw1/
ls
cd ..
cd ~
cd homework/HW1/
ls
cd ~
ls
cd homework/HW1/
ls
hw1-judge-all 
squeue
make
hw1-judge-all 
make
hw1-judge-all 
clear
hw1-judge-all 
cd ..
ls
cd ..
ls
cd homework/HW1/
make
hw1-judge-all 
make
hw1-judge-all 
make
hw1-judge-all 
cd homework/HW1/
hw1-judge-all 
make
hw1-judge-all 
make
hw1-judge-all 
make
hw1-judge-all 
make
hw1-judge-all 
ls
cd homework/HW1/
hw1-judge-all 
who
ls
cd /home/pp17/ta/hw2
ls
cd ..
cd ~
cp -rf /home/pp17/ta/hw2 .
ls
cd hw2/
ls
make
cat Makefile 
ls
 srun -n 2 ./ms_seq 4 -2 2 -2 2 400 400 out.png
ls
date
ls
cd hw2/
ls
who
ls
make
 srun -n 2 ./ms_seq 4 -2 2 -2 2 400 400 out.png
 srun -n 2 ./ms_seq 4 -2 2 -2 2 1000 1000 out.png
mpiexec --version
mpicc -v
clear
mpicc -v
mpichversion
mpiexec --version
mpicc -h
mpi -h

man mpicc
man mpilib
man mpi.h
sjob
jobs
who
cd hw2/
ls
vim Makefile 
make
ls
 srun -n 2 ./ms_mpi_static 4 -2 2 -2 2 400 400 out.png
ls
ls -al
make
 srun -n 3 ./ms_mpi_static 4 -2 2 -2 2 400 400 out.png
make
 srun -n 3 ./ms_mpi_static 4 -2 2 -2 2 400 400 out.png
make
 srun -n 3 ./ms_mpi_static 4 -2 2 -2 2 400 400 out.png
make
 srun -n 3 ./ms_mpi_static 4 -2 2 -2 2 400 400 out.png
make
 srun -n 3 ./ms_mpi_static 4 -2 2 -2 2 400 400 out.png
ls
make
 srun -n 3 ./ms_mpi_static 4 -2 2 -2 2 400 400 out.png
 srun -n 3 ./ms_seq 4 -2 2 -2 2 400 400 ref.png
hw2-diff ref.png out.png 
 srun -n 3 ./ms_seq 4 -10 2 -2 2 1000 1000 ref.png
 srun -n 3 ./ms_seq 4 -10 2 -2 2 1000 1000 out.png
 srun -n 3 ./ms_seq 4 -10 2 -2 2 1000 1000 ref.png
 srun -n 3 ./ms_mpi_static 4 -10 2 -2 2 400 400 out.png
 srun -n 3 ./ms_mpi_static 4 -10 2 -2 2 1000 1000 out.png
hw2-diff ref.png out.png 
 srun -n 10 ./ms_mpi_static 4 -10 2 -2 2 8 1000 out.png
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
