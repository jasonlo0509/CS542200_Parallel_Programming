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
cd hw1/
ls
vim HW1_103061108_basic.c 
vim IO.c 
gcc IO.c -o IO
vim IO.c 
gcc IO.c -o IO
./IO  /home/pp17/ta/hw1/samples/sorted01
./IO  /home/pp17/ta/hw1/samples/sorted02
./IO  /home/pp17/ta/hw1/samples/sorted03
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase03"
cat slurm-6543.out 
cd ..
git add .
git commit
git push origin master
cd hw1/
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase03"
cat slurm-6544.out 
cd hw1/
l
ls
vim IO.c 
cd hw1/
vim IO.c 
ls -al
rm .IO.c.swp 
ls 0ak
ls -al
vim IO.c 
vim HW1_103061108_basic.c 
cd hw1/
ls -al
vim HW1_103061108_basic.c 
rm .HW1_103061108_basic.c.swp 
vim HW1_103061108_basic.c 
cd hw1/
ls
ls -al
vim HW1_103061108_basic.c 
rm .HW1_103061108_basic.c.swp 
vim HW1_103061108_basic.c 
cd hw1/
ls
ls -al
rm sl*
ls -al
vim HW1_103061108_basic.c 
cd hw1/
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase01"
cat slurm-6601.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase01"
cat slurm-6602.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase01"
cat slurm-6603.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6604.out 
vim HW1_103061108_basic.c 
cd ..
git add .
git status
git rm hw1/sl*
git rm -f hw1/sl*
git add .
git rm -f hw1/.IO.c.*
git add .
git rm -f hw1/sl*
git add .
git commit
git push origin master
cd hw1/
l
ls
vim HW1_103061108_basic.c 
cat slurm-6603.out 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase01"
cat slurm-6605.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6606.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase01"
cat slurm-6607.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6608.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6609.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
squeue
scancel 6610
scancel 6608
scancel 6609
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
squeue
scancel 6611
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase01"
scancel 6611
cat slurm-6612.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase01"
cat slurm-6613.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6614.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6615.out 
squeue
scancel 6614
scancel 6615
cd hw1/
vim HW1_103061108_basic.c 
squeue
ls
cat slurm-6615.out 
cat slurm-6614.out 
cat slurm-6613.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6620.out 
squeue
scancel 6620
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6621.out 
vim HW1_103061108_basic.c 
scancel 662q
scancel 6621
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6622.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
scancel 6623
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6624.out 
scancel 6624
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6625.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6627.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6629.out 
cat slurm-6627.out 
vim HW1_103061108_basic.c 
squeue
scancel 6629
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase03"
cat slurm-6633.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase04"
cat slurm-6634.out 
vim HW1_103061108_basic.c 
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6638.out 
scancel 6638
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6645.out 
vim HW1_103061108_basic.c 
scancel 6645
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6646.out 
vim HW1_103061108_basic.c 
scancel 6646
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6647.out 
cd hw1/
sl
ls
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6663.out 
scancel 6663
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6664.out 
scancel 6664
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6665.out 
scancel 6665
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6666.out 
hw1-b2float /home/pp17/ta/hw1/samples/testcase02
scancel 6666
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6667.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
squeue
scancel 6667
cat slurm-6668.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
squeue
scancel 6669
cat slurm-6669.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6670.out 
scancel 6670
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6671.out 
squeue
scancel 6671
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02"
cat slurm-6672.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02 ouput"
cat slurm-6676.out 
ls
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02 ouput"
cat slurm-6679.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02 ouput"
cat slurm-6680.out 
squeue
scancel 6680
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02 ouput"
cat slurm-6681.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02 ouput"
cat slurm-6682.out 
squeue
scancel 6682
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02 ouput"
cat slurm-6683.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02 ouput"
scnacle 6683
scancel 6683
scancel 6684
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02 ouput"
ls
squeue
scancel 6685
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02 ouput"
ls
cat slurm-6692.out 
scancel 6692
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02 ouput"
cat slurm-6701.out 
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
vim HW1_103061108_basic.c 
mpicc HW1_103061108_basic.c -o HW1_103061108_basic.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW1_103061108_basic.o  /home/pp17/ta/hw1/samples/testcase02 ouput"
cat slurm-6710.out 
scancel 6710
vim HW1_103061108_basic.c 
cd hw1/
ls -al
rm sl*
ls
vim HW1_103061108_basic.c 
rm .HW1_103061108_basic.c.swp 
cd hw1/
ls
mpicc MPIIO.c -o MPIIO.o -std=gnu99 -lm
clear
mpicc MPIIO.c -o MPIIO.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./MPIIO.o  /home/pp17/ta/hw1/samples/testcase02 output"
cat slurm-6755.out 
ls
hw1-b2float output
sbatch -N 1 -n 3 -p batch --wrap="time srun ./MPIIO.o  /home/pp17/ta/hw1/samples/testcase02 output"
hw1-b2float output
cat slurm-6756
squeue
ls
cat slurm-6756
cat slurm-6756.out 
hw1-b2float output
