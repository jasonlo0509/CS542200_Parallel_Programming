pwd
cd ..
ls
cd p103061108
la
ls
cp -r /home/pp17/ta/lab1b .
ls
cd lab1b/
ls
mpicc hello_world.c -o hello_world
srun -n process_num ./hello_world
srun -n 4 ./hello_world
quota -s
man srun
vim job.sh
l
ls
sbatch job.sh 
ls
vim slurm-639.out 
squeue 
cat slurm-639.out 
sbatch job.sh 
vim slurm-639.out 
vim job.sh
sbatch job.sh 
vim job.sh
sbatch job.sh 
vim job.sh
sbatch job.sh 
vim job.sh
sbatch job.sh 
vim slurm-645.out 
cat slurm-645.out 
vim job.sh
sbatch job.sh 
vim job.sh
sbatch job.sh 
vim job.sh
sbatch job.sh 
sbatch -p batch job.sh 
cat slurm-671.out 
ls
vim pi.c 
mpicc pi.c -o pi
gcc pi.c -o -std=gun99 -lm pi
gcc pi.c -o -std=gnu99 -lm pi
gcc pi.c -o -std=gnu99 
vim pi.c 
gcc pi.c -o -std=gnu99 -lm pi
gcc pi.c -o -std=gnu99 -Im pi
gcc pi.c -o -std=gnu99 -lm pi
gcc pi.c -o -std=gnu99 
mpicc pi.c -o pi
vim pi.c 
mpicc pi.c -o pi
vim pi.c 
mpicc pi.c -o -std=c99 -lm pi
mpicc pi.c -o -std=gnu99 -lm pi
mpicc pi.c -o pi.o -std=gnu99 -lm
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
sbatch -N 2 -n 4 --wrap="srun ./pi"
cat slurm-891.out 
sbatch -N 2 -n 4 --wrap="srun ./pi.o"
cat slurm-897.out 
sbatch -N 2 -n 4 --wrap="srun ./pi.o 5000"
cat slurm-900.out 
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
clear
mpicc pi.c -o pi.o -std=gnu99 -lm
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
sbatch -N 1 -n 4 --wrap="time srun ./pi.o 5000"
cat slurm-1249.out 
vim pi.c 
sbatch -N 1 -n 4 --wrap="time srun ./pi.o 5000"
cat slurm-1260.out 
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
sbatch -N 1 -n 4 --wrap="time srun ./pi.o 5000"
cat slurm-1287.out 
vim pi.c 
cat slurm-1287.out 
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
sbatch -N 1 -n 4 --wrap="time srun ./pi.o 5000"

sbatch -N 1 -n 4 --wrap="time srun ./pi.o 5000"
cat slurm-1287.out 
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
sbatch -N 1 -n 4 --wrap="time srun ./pi.o 5000"
scancel 1349 
scancel 1300
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
sbatch -N 1 -n 4 --wrap="time srun ./pi.o 5000"
cat slurm-1368.out 
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
sbatch -N 1 -n 4 --wrap="time srun ./pi.o 5000"
cat slurm-1422.out 
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
sbatch -N 1 -n 4 --wrap="time srun ./pi.o 5000"
cat slurm-1436.out 
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
sbatch -N 1 -n 4 --wrap="time srun ./pi.o 5000"
cat slurm-1471.out 
sbatch -N 2 -n 4 --wrap="time srun ./pi.o 5000"
cat slurm-1478.out 
vim pi.c 
sbatch -N 2 -n 8 --wrap="time srun ./pi.o 5000"
cat slurm-1512.out 
exit
pwd
cd lab1b/
ls
rm slurm*
ls
vim pi.c 
mpicc pi.c -o pi.o -std=gnu99 -lm
sbatch -N 1 -n 4 --wrap="time srun ./pi.o 500000"
l
ls
cat slurm-1682.out 
sbatch -N 2 -n 4 --wrap="time srun ./pi.o 500000"
cat slurm-1685.out 
sbatch -N 1 -n 8 --wrap="time srun ./pi.o 500000"
sbatch -N 2 -n 4 -p batch --wrap="time srun ./pi.o 500000"
cat slurm-1690.out 
sbatch -N 1 -n 4 --wrap="time srun ./pi.o 500000"
cat slurm-1691.out 
sbatch -N 1 -n 8 -p batch --wrap="time srun ./pi.o 500000"
cat slurm-1695.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./pi.o 500000"
cat slurm-1696.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./pi.o 5000000000"
cat slurm-1699.out 
sbatch -N 1 -n 8 -p batch --wrap="time srun ./pi.o 5000000000"
cat slurm-1701.out 
sbatch -N 1 -n 16 -p batch --wrap="time srun ./pi.o 5000000000"
sbatch -N 1 -n 2 -p batch --wrap="time srun ./pi.o 5000000000"
cat slurm-1705.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./pi.o 5000000000"
cat slurm-1706.out 
exit
who
top
clear
cd  /home/pp17/ta/hw1/samples
ls
vim sorted01
cat sorted02
ls -al
cd ..
ls
cat Makefile 
cd ..
ls
cd hw1
ls
cd samples/
hw1-b2float sorted01
hw1-b2float sorted02
hw1-b2float sorted03
cd ~
ls
mkdir hw1
cd hw1/
ls
vim test.c
mpicc test.c -o test -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time ./test"
cat slurm-2032.out 
ls
rm s*
rm t*
ls
cd ..
cd lab1b/
ls
rm s*
l
ls
pwd
cd ..
cd hw1/
vim test.c
mpicc test.c -o test.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time ./test.o"
cat slurm-2039.out 
rm t*
rm s*
ls
vim HW1_103061108_basic.c
mpicc HW1_103061108_basic.c -o test.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time ./test.o"
cat slurm-2041.out 
history|grep sbatch
history|grep mp
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-2042.out 
vim HW1_103061108_basic.c
exit
cd hw1/
ls
vim HW1_103061108_basic.c 
ls
cd lab1b/
ls
cd .
cd ..
cd hw1/
ls
vim HW1_103061108_basic.c 
ls -al
rm .HW1_103061108_basic.c.swp 
ls
ls -al
vim HW1_103061108_basic.c 
pwd
ls
cd hw1/
vim HW1_103061108_basic.c 
pwd
cd hw1/
vim HW1_103061108_basic.c 
exit
who
exit
pwd
cd hw1/
ls
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
history
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-3960.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-3961.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-3962.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-3963.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-3964.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-3965.out 
vim HW1_103061108_basic.c 
who
exit
cd lab1b/
cd ..
cd hw1/
cat slurm-3965.out 
exit
cd hw1/
ls
cat slurm-3965.out 
history
cat slurm-3965.out 
cat slurm-3981.out 
cat slurm-3982.out 
cat slurm-3983.out 
clear
cat slurm-3983.out 
cat slurm-3984.out 
cat slurm-3985.out 
cat slurm-3986.out 
squeue
cat slurm-3987.out 
ls
l
ls
cat slurm-3988.out 
cat slurm-3989.out 
cat slurm-3990.out 
cat slurm-3991.out 
cat slurm-3992.out 
cat slurm-3993.out 
cat slurm-3994.out 
cat slurm-3995.out 
cat slurm-3996.out 
cat slurm-3997.out 
cat slurm-3998.out 
cat slurm-4019.out 
cat slurm-4020.out 
who
cd hw1/
cat slurm-3965.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-3977.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-3978.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-3979.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-3980.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-3981.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"/
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"/
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"/
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"/
ls
history
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"/
vim HW1_103061108_basic.c 
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
who
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
who
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p debug --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
cd hw1/
l
ls
rm s*
ls
vim HW1_103061108_basic.c 
ls -al
rm .HW1_103061108_basic.c.swp 
ls -al
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
who
kill pts/4
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o"
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o"
who
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW1_103061108_basic.o"
sbatch -N 1 -n 11 -p batch --wrap="time srun ./HW1_103061108_basic.o"
sbatch -N 1 -n 8 -p batch --wrap="time srun ./HW1_103061108_basic.o"
sbatch -N 1 -n 6 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cd hw1/
cat slurm-4028.out 
cat slurm-4029.out 
cat slurm-4030.out 
cat slurm-4031.out 
cat slurm-4032.out 
cat slurm-4033.out 
cat slurm-4034.out 
cat slurm-4035.out 
cat slurm-4036.out 
cat slurm-4037.out 
cat slurm-4038.out 
cat slurm-4039.out 
cat slurm-4040.out 
cat slurm-4041.out 
cat slurm-4043.out 
cat slurm-4044.out 
cat slurm-4045.out 
cat slurm-4046.out 
cat slurm-4047.out 
cat slurm-4048.out 
cat slurm-4049.out 
who
cd ..
ls
cd p103061116
cd ..
cd ~
l
ls
cd hw1/
l
ls
cat slurm-4049.out 
l
ls
rm s*
ls
vim IO.c
gcc IO.c -o IO
cd /home/pp17/ta/hw1/samples
ls
cd ~/hw1/
./IO /home/pp17/ta/hw1/samples/sorted01
./IO /home/pp17/ta/hw1/samples/sorted02
vim IO.c
gcc IO.c -o IO
vim IO.c
gcc IO.c -o IO
vim IO.c
gcc IO.c -o IO
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted01
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted01
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted01
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted01
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted01
cp /home/pp17/ta/hw1/samples/sorted01 .
ls
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted01
who
cd hw1/
ls
vim H
vim HW1_103061108_basic.c 
cd ..
echo "# CS542200_Parallel_Programming" >> README.md
ls
git init
git add README.md
ls
git commit -m "first commit_before modified input outpur & odd-swao logic"
git config --global user.email "you@example.com"
git config --global user.email "tarzen0509@gmail.com"
git config --global user.name "Yun-Chen Lo"
git commit -m "first commit_before modified input outpur & odd-swao logic"
git remote add origin git@github.com:jasonlo0509/CS542200_Parallel_Programming.git
git push -u origin master
cd ..
cd ~
ls -al
vim .ssh/
cd .ssh/
l
sls
ls
ls -al
vim authorized_keys 
cd ~
git push -u origin master
git add *
git commit -m "first commit_before modified input outpur & odd-swao logic"
git push -u origin master
cd hw1/
ls
git add *
git commit -m "second commit- communicate after one odd+even cycle"
git push -u origin master
exit
who
cd hw1/
ls
./IO /home/pp17/ta/hw1/samples/sorted01
./IO /home/pp17/ta/hw1/samples/sorted05
./IO /home/pp17/ta/hw1/samples/sorted10
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted05
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted05
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted05
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted05
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted05
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted05
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted05
hw1-b2float /home/pp17/ta/hw1/samples/sorted01
vim IO.c
gcc IO.c -o IO
vim IO.c
gcc IO.c -o IO
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted05
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted05
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted05
./IO /home/pp17/ta/hw1/samples/sorted01
hw1-b2float /home/pp17/ta/hw1/samples/sorted01
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted01
ls
hw1-b2float testout01.bin 
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted01
hw1-b2float testout01.bin 
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted01
hw1-b2float testout01.bin 
ls
rm testout01.bin 
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted01
hw1-b2float testout01.bin 
vim IO.c
gcc IO.c -o IO
./IO /home/pp17/ta/hw1/samples/sorted01
hw1-b2float testout01.bin 
vim IO.c
vim HW1_103061108_basic.c 
history | grep mpicc
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
history 
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4763.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4764.out 
vim HW1_103061108_basic.c 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4765.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4766.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4767.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4768.out 
cd ..
cd hw1/
who
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4778.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4780.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4782.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4784.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4788.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4790.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4792.out 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
who
exit
who
cd hw1/
ls
rm sl*
ls
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4848.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4849.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4856.out 
squeue
cat slurm-4856.out 
squeue
scancel 4856
squeue
scancel 4856
squeue
cat slurm-4856.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4857.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4858.out 
scancel 4858
cat slurm-4858.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4859.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o"
cat slurm-4860.out 
who
exit
cd hw1/
l
ls
vim HW1_103061108_basic.c 
exit
