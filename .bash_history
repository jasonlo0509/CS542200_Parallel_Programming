cd hw1/
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
cd hw1/
history
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6477.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase03"
cat slurm-6478.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase04"
cat slurm-6480.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase05"
cat slurm-6481.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase06"
cat slurm-6482.out 
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6483.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6484.out 
ls
squeue
scancel 6482
scancel 6483
squeue
scancel 6484
squeue
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
squeue
scancel 6490
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
squeue
scancel 6492
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
squeue
cat slurm-6495
cat slurm-6495.out 
cd hw1/
ls
vim HW1_103061108_basic.c 
rm HW1_103061108_basic.c 
ls -al
cd hw1/
ls
ls -al
rm sl*
ls
history
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase01"
cat slurm-6501.out 
cd ..
git add .
git commit 
git push origin master
cd hw1/
vim HW1_103061108_basic.c 
history
ls
ls -al
cd ..
ls
ls -al
cd hw1/
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6506.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6509.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6511.out 
squeue
scancel 6509
scancel 6506
scancel 6511
squeue
vim HW1_103061108_basic.c 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6513.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6514.out 
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase03"
cat slurm-6515.out 
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase04"
cat slurm-6517.out 
cd ..
git add .
git commit
git push origin master
cd hw1/
vim HW1_103061108_basic.c 
