sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase08 output"
cat slurm-12912.out 
hw1-b2float /home/pp17/ta/hw1/samples/testcase09
hw1-b2float /home/pp17/ta/hw1/samples/testcase10
hw1-b2float /home/pp17/ta/hw1/samples/testcase11
hw1-b2float /home/pp17/ta/hw1/samples/testcase10
hw1-b2float /home/pp17/ta/hw1/samples/testcase16
hw1-b2float /home/pp17/ta/hw1/samples/testcase06
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase08 output"
cat slurm-12921.out 
mpicc HW_advance_all.c -o HW_advance_all.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase08 output"
cat slurm-12923.out 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase08 output"
cat slurm-12924.out 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_temp.o  /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-12925.out 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase08 output"
cat slurm-12926.out 
hw1-b2float output
cd hw1/
squeue
who
history | grep onebuffer
mpicc HW_onebuffer.c -o HW_one.o -std=gnu99 -lm
history | grep one
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_one.o  /home/pp17/ta/hw1/samples/testcase06 output"
squeue
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_one.o  /home/pp17/ta/hw1/samples/testcase06 output"
squeue
car slurm-13497.out 
cat slurm-13497.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_one.o  /home/pp17/ta/hw1/samples/testcase06 output"
squeue
clear
squeue
cat slurm-13501.out 
mpicc HW_advance_all.c -o HW_advance_all.o -std=gnu99 -lm
mpicc HW_onebuffer.c -o HW_one.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_one.o  /home/pp17/ta/hw1/samples/testcase06 output"
squeue
cat slurm-13503.out 
mpicc HW_onebuffer.c -o HW_one.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_one.o  /home/pp17/ta/hw1/samples/testcase06 output"
squeue
mpicc HW_onebuffer.c -o HW_one.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_one.o  /home/pp17/ta/hw1/samples/testcase06 output"
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_one.o  /home/pp17/ta/hw1/samples/testcase06 output"
squeue
cat slurm-13507.out 
cat slurm-13508.out 
cat slurm-13509.out 
sbatch -N 4 -n 64 -p batch --wrap="time srun ./HW_one.o  /home/pp17/ta/hw1/samples/testcase06 output"
sbatch -N 4 -n 48 -p batch --wrap="time srun ./HW_one.o  /home/pp17/ta/hw1/samples/testcase06 output"
squeue
cat slurm-13516.out 
history | grep temp
mpicc HW_temp.c -o HW_temp.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_temp.o  /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-13517.out 
squeue
sbatch -N 1 -n 16 -p batch --wrap="time srun ./HW_temp.o  /home/pp17/ta/hw1/samples/testcase06 output"
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_temp.o  /home/pp17/ta/hw1/samples/testcase06 output"
sbatch -N 4 -n 48 -p batch --wrap="time srun ./HW_temp.o  /home/pp17/ta/hw1/samples/testcase06 output"
squeue
cat slurm-13517.out 
cat slurm-13519.out 
cat slurm-13520.out 
cd hw1/
s
ls
rm slurm-1*
l
s
ls
history | grep advance
mpicc HW_advance_all.c -o HW_advance_all.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-13532.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase08 output"
cat slurm-13534.out 
mpicc HW_advance_all.c -o HW_advance_all.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase08 output"
cat slurm-13536.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase08 output"
cat slurm-13537.out 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase08 output"
cat slurm-13539.out 
history | grep output
hw1-b2float output
cd hw1/
cd /home/pp17/ta/hw1/samples
ls
pwd
cd hw1/
rm output 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-13720.out 
diff output /home/pp17/ta/hw1/samples/sorted06
cd hw1/
ls
rm slurm-13*
ls
cd hw1/
ls
hw1-b2float testbench.bin 
ls
gcc generate.c -o generate
./generate
ls
hw1-b2float million.bin 
gcc generate.c -o generate
hw1-b2float million.bin 
gcc generate.c -o generate
hw1-b2float million.bin 
./generate 
hw1-b2float million.bin 
gcc generate.c -o generate
./generate 
hw1-b2float million.bin 
gcc generate.c -o generate
./generate 
hw1-b2float million.bin 
gcc generate.c -o generate
./generate 
top
ls
hw1-b2float million.bin 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-15992.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-15994.out 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-15995.out 
sbatch -N 4 -n 48 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-15997.out 
sbatch -N 1 -n 1 -p batch --wrap="./HW_one.o  million.bin output"
cat slurm-16009.out 
ls
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_one.o  million.bin output"
squeue
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_one.o  million.bin output"
squeue
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_one.o  million.bin output"
squeue
sbatch -N 4 -n 48 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
ls
squeue
 PD       0:00      4 (QOSMaxJobsPerUserLimit)
             16075     batch     wrap p1030611 PD       0:00      4 (QOSMaxJobsPerUserLimit)
ls
squeue
cd hw1/
ls
cat slurm-16023.out 
cat slurm-16024.out 
cat slurm-16019.out 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-16251
cat slurm-16251.out 
sbatch -N 4 -n 48 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-16253.out 
ls
gcc generate.c -o generate
./generate 
sbatch -N 4 -n 48 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-16258.out 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-16259.out 
sbatch -N 4 -n 4 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-16262.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-16263.out 
gcc generate.c -o generate
./generate 
sbatch -N 4 -n 48 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-16282.out 
gcc generate.c -o generate
./generate 
sbatch -N 4 -n 48 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-16284.out 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-16285.out 
sbatch -N 4 -n 4 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-16286.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
cat slurm-16287.out 
history 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase06 output"
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_one.o  /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-16290.out 
squeue
cat slurm-16290.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_one.o  /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-16295.out 
squeue
cat slurm-16295.out 
history | grep mpicc
mpicc HW_advance_all.c -o HW_advance_all.o -std=gnu99 -lm
mpicc HW_temp.c -o HW_temp.o -std=gnu99 -lm
mpicc HW_onebuffer.c -o HW_one.o -std=gnu99 -lm
hw1-judge 
cd ..
ls
mkdir homework
cd homework/
mkdir HW1
ls
cd ..
cd hw1/
ls
cp HW_103061108_advanced.c ~/homework/HW1/
cp HW_103061108_basic.c ~/homework/HW1/
cd ~/homework/HW1/
ls
hw1-check 
ls
cd ..
hw1-check 
cd ~/homework/HW1/
ls
mv HW_103061108_advanced.c HW1_103061108_advanced.c
ls
mv HW_103061108_basic.c HW1_103061108_basic.c
cd ~
hw1-check 
cd homework/
cd HW1/
l
sls
ls
history
ls
cd ~/hw1/
ls
make all
cp makefile ~/homework/HW1/
cd ~/homework/HW1/
make all
ls
make
mv makefile Makefile
hw1-check 
ls
rm makefile 
hw1-check 
rm HW1_103061108_basic.o 
rm HW1_103061108_advanced.o 
hw1-check 
hw1-ㄨ

ls
make 
hw1-check 
cd ~/hw1/
ls
hw1-judge million1
hw1-judge million.bin
hw1-judge /home/pp17/ta/hw1/samples/testcase10
hw1-judge 
hw1-check 
cd ~/homework/HW1/
hw1-check 
make
ls
rm HW1_103061108_basic.cc 
make
ls
make
ls
hw1-check 
cd  /home/pp17/ta/hw1/Makefile
cd /home/pp17/ta/hw1/Makefile
cd /home/pp17/ta/hw1/
ls
vim Makefile 
cp Makefile ~/homework/HW1/
cd ~/homework/HW1/
hw1-check 
ls
vim Makefile 
make all
rm HW1_103061108_basic.o 
rm HW1_103061108_advanced.o 
make all
vim Makefile 
make all
ls
hw1-check 
hw1-judge
hw1-judge /home/pp17/ta/hw1/samples/testcase01
ls
hw1-judge HW1_103061108_advanced
hw1-judge HW1_103061108_basic
squeue
cd ~/j1.
cd ~
ls
cd j1.7ol7glb_/
ls
cd ..
cd j1.7rj18s4t/
ls
cd ..
cat README.md 
cd homework/HW1/
hw1-check 
hw1-judge HW1_103061108_basic
hw1-judge HW1_103061108_advanced
cd ~/hw1/
history
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase01 output"
rm output u
rm output 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float ou
ls
cd ~/homework/HW1/
ls
hw1-check 
hw1-judge  HW1_103061108_basic
hw1-check 
hw1-judge  HW1_103061108_basic
ls -al
cd ~/hw1/
history
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
ls
rm slu*
ls
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
cat slurm-18290.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
cat slurm-18290.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
cat slurm-18292
squeue
scancel 18292
scancel 18289
scancel 18290
scancel 18291
squeue
scancel 18291
squeue
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
squeue
scancel 18293
cat slurm-18293.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
cat slurm-18305.out 
squeue
scancel 18305
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
cat slurm-18307.out 
squeue
scancel 18307
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
cat slurm-18328.out 
squeue
scancel 18328
cat slurm-18328.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
cat slurm-18349.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
cat slurm-18365.out 
squeue
scancel 18349
scancel 18365
cat slurm-18365.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
cat slurm-18378.out 
scancel 18378
cat slurm-18378.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
scancel 18399
cat slurm-18399.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
scancel 18417
cat slurm-18417.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
cat slurm-18520.out 
squeue
scancel 18520
cat slurm-18520.out 
cd h
cd hw1/
ls
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
cat slurm-19179.out 
scancel 19179
cat slurm-19179.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
scancel 19180
cat slurm-19180.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
scancel 19183
cat slurm-19183.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
scancel 19203
cat slurm-19203.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
scancel 19220
cat slurm-19220.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
ls
scancel 19246
cat slurm-19246.out 
ls
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
scancel 19256
cat slurm-19256.out 
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
squeue
scancel 19259
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
scancel 19267
cat slurm-19267.out 
ls
hw1-b2float output 
sbatch -N 4 -n 4 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float output 
rm output 
sbatch -N 4 -n 4 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
squeue
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19282.out 
scancel 19282
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19286.out 
scancel 19286
cat slurm-19286.out 
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
scancel 19288
cat slurm-19288.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
scancel 19296
cat slurm-19296.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
scancel 19312
cat slurm-19312.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19322.out 
hw1-b2float output 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19329.out 
squeue
scancel 19322
scancel 19329
squeue
cat slurm-19329.out 
ls
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19336.out 
scancel 19336
cat slurm-19336.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19354.out 
scancel 19354
cat slurm-19354.out 
rm output 
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
scancel 19355
cat slurm-19355.out 
rm output 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
scancel 19357
cat slurm-19357.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19362.out 
scancel 19362
cat slurm-19362.out 
hw1-b2float output 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
scancel 19365
cat slurm-19365.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
scancel 19367
cat slurm-19367.out 
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
squeue
scancel 19368
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
scancel 19375
cat slurm-19375.out 
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
scancel 19381
cat slurm-19381.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 6 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
squeue
cat slurm-19388.out 
hw1-judge HW_basic.o
sbatch -N 4 -n 28 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase03 output"
squeue
hw1-b2float output 
cd ~/homework/HW1/
hw1-check 
hw1-judge HW1_103061108_basic
cd ~/hw1/
sbatch -N 3 -n 15 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase02 output"
squeue
cat slurm-19408.out 
rm output 
sbatch -N 3 -n 15 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase02 output"
hw1-b2float 
hw1-b2float output 
sqeueu
squeue
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float 
hw1-b2float output 
cat slurm-19412.out 
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19419.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19431.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19436.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float output 
rm output 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float output 
cat slurm-19438.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19439.out 
hw1-b2float output 
cd ~/homework/HW1/
hw1-check 
hw1-judge HW1_103061108_basic
squeue
hw1-judge HW1_103061108_basic
cd ~/hw1/
sbatch -N 3 -n 15 -p batch --wrap="time srun ./HW_basic.o 21 /home/pp17/ta/hw1/samples/testcase02 output"
cat slurm-19454.out 
hw1-b2float 
hw1-b2float output 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19466.out 
hw1-ou
hw1-b2float output 
rm output 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float output 
ls
rm sl*
ls
sbatch -N 1 -n 3 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float output 
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float output 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 2 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19478.out 
hw1-b2float output 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
rm output 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float output 
squeue
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19482.out 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19489.out 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19493.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase05 output"
hw1-b2float output 
cat slurm-19505.out 
squeue
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase05 output"
squeue

squeue
cat slurm-19511.out 
hw1-b2float output 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
rm output 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float output 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19540.out 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19547.out 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19550.out 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19556.out 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19558.out 
hw1-b2float /home/pp17/ta/hw1/samples/testcase01
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19572.out 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19578.out 
scancel 19578
cat slurm-19578.out 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19591.out 
scancel 19591
cat slurm-19591.out 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
car slurm-19596.out 
cat slurm-19596.out 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-19617.out 
hw1-b2float output 
sbatch -N 1 -n 15 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase02 output"
sbatch -N 4 -n 15 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase02 output"
hw1-b2float output 
hw1-judge HW_advance.o 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
hw1-judge HW_advance.o 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
hw1-judge HW_advance.o 
hw1-judge HW_basic.o 
cd homework/HW1/
ls
hw1-judge HW1_103061108_advanced
who
cd hw1/
hw1-judge HW_advance.o
sbatch -N 4 -n 17 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase05 output"
cat slurm-19823.out 
hw1-b2float output 
diff output /home/pp17/ta/hw1/samples/sorted05
diff output /home/pp17/ta/hw1/samples/sorted06
diff output /home/pp17/ta/hw1/samples/sorted05
sbatch -N 4 -n 13 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase05 output"
diff output /home/pp17/ta/hw1/samples/sorted05
sbatch -N 4 -n 7 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase05 output"
diff output /home/pp17/ta/hw1/samples/sorted05
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
hw1-judge HW_advance.o
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
hw1-judge HW_advance.o
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
hw1-judge HW_advance.o
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
hw1-judge HW_advance.o
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
hw1-judge HW_advance.o
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
hw1-judge HW_advance.o
sbatch -N 2 -n 10 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase06 output"
hw1-b2float output 
ls
diff -qs output /home/pp17/ta/hw1/samples/testcase06
cmp -b output /home/pp17/ta/hw1/samples/testcase06
cmp ---print-bytes output /home/pp17/ta/hw1/samples/testcase06
cmp --print-bytes output /home/pp17/ta/hw1/samples/testcase06
sbatch -N 2 -n 10 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase07 output"
cmp --print-bytes output /home/pp17/ta/hw1/samples/testcase07
sbatch -N 2 -n 10 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase09 output"
cmp --print-bytes output /home/pp17/ta/hw1/samples/testcase09
rm output 
sbatch -N 2 -n 10 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
sbatch -N 2 -n 10 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase09 output"
cmp --print-bytes output /home/pp17/ta/hw1/samples/sorted09
diff -c output /home/pp17/ta/hw1/samples/sorted09
diff -h output /home/pp17/ta/hw1/samples/sorted09

hw1-b2float output 
hw1-b2float /home/pp17/ta/hw1/samples/sorted09
hw1-b2float output 
hw1-b2float /home/pp17/ta/hw1/samples/sorted09
hw1-judge HW_advance.o
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
hw1-judge HW_advance.o
sbatch -N 2 -n 10 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase09 output"
cat slurm-20370.out 
sbatch -N 2 -n 24 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase09 output"
cat slurm-20371.out 
scancel 20371
cat slurm-20371.out 
sbatch -N 2 -n 3 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase7 output"
cat slurm-20373.out 
sbatch -N 2 -n 3 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase7 output"
cat slurm-20374.out 
sbatch -N 2 -n 3 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase1 output"
cat slurm-20375.out 
mpicc HW1_103061108_advanced.c -o HW_advance.o -std=gnu99 -lm
sbatch -N 2 -n 3 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase1 output"
ls
cat slurm-20377.out 
hw1-judge HW_advance.o
sbatch -N 2 -n 3 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase1 output"
cat slurm-20392.out 
sqeuue
squeue
cat slurm-20392.out 
sbatch -N 2 -n 3 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase07 output"
cat slurm-20394.out 
sbatch -N 2 -n 3 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase07 output"
cat slurm-20397.out 
cd h
cd hw1/
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 2 -n 3 -p batch --wrap="time srun ./HW_advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-21521.out 
sbatch -N 2 -n 3 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-21530.out 
rm output 
sbatch -N 2 -n 3 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float output 
sbatch -N 2 -n 3 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase02 output"
hw1-b2float output 

rm output 
sbatch -N 2 -n 15 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase02 output"
cat slurm-21560.out 
sbatch -N 2 -n 4 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
hw1-b2float output 
cat slurm-21584.out 
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 2 -n 4 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-21608.out 
hw1-b2float output 
hw1-judge HW_advance.o
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
hw1-judge HW_advance.o
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
hw1-judge HW_advance.o
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 2 -n 4 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase07 output"
cat slurm-21689.out 
squeue
scancel 21689
cat slurm-21689.out 
sbatch -N 2 -n 4 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-21694.out 
scancel 21694
cat slurm-21694.out 
sbatch -N 2 -n 24 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase09 output"
cat slurm-21739
cat slurm-21730.out 
scancel 21730
cat slurm-21730.out 
sbatch -N 2 -n 15 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase04 output"
cat slurm-21732.out 
scancel 21732
cat slurm-21732.out 
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 2 -n 15 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase04 output"
scancel 21738
cat slurm-21738.out 
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 2 -n 15 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase04 output"
scancel 21792
cat slurm-21792.out 
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 2 -n 15 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase04 output"
cat slurm-21797.out 
hw1-judge HW_advance.o
hw1-judge advance.o
sbatch -N 2 -n 4 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-21815.out 
scancel 21815
cat slurm-21815.out 
cd ~/homework/HW1/
make
make all
make
hw1-judge HW1_103061108_advanced
cd ~/hw1/
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 2 -n 4 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-21880.out 
scancel 21880
cat slurm-21880.out 
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 2 -n 4 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
squeue
scancel 21935
cat slurm-21935.out 
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 2 -n 4 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
scancel 21964
cat slurm-21964
cat slurm-21964.out 
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 2 -n 4 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-21982.out 
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 2 -n 4 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase01 output"
cat slurm-21987.out 
hw1-judge advance.o 
hw1-b2float output 
hw1-judge advance.o 
sbatch -N 2 -n 4 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase07 output"
cat slurm-22077.out 
diff output /home/pp17/ta/hw1/samples/sorted07
sbatch -N 1 -n 1 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase07 output"
cat slurm-22096.out 
diff output /home/pp17/ta/hw1/samples/sorted07
rm output 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./advance.o 21 /home/pp17/ta/hw1/samples/testcase07 output"
diff output /home/pp17/ta/hw1/samples/sorted07
cd ~/homework/HW1/
ls
hw1-judge  HW1_103061108_advanced
sbatch -N 1 -n 1 -p batch --wrap="time srun ./basic.o 21 /home/pp17/ta/hw1/samples/testcase07 output"
cat slurm-22232.out 
ls
cd ~/hw1/
ls
rm slurm-*
ls
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW1_103061108_basic.o 21 million.bin output"
cat slurm-22245.out 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW1_103061108_basic.o million.bin output"
cat slurm-22248.out 
ls
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_basic.o million.bin output"
cat slurm-22251.out 
cd hw1/
ls
hw1-b2float million.bin 
who
ls
vim generate.c 
gcc generate.c -o generate
rm million.bin 
./generate 
ls
history | grep million
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  million.bin output"
history | grep HW_advance_all.o
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time srun ./advance.o  million.bin output
sbatch -N 1 -n 1 -p batch --wrap="time srun ./advance.o  million.bin output"
cat slurm-24868.out 
ls
cat slurm-24862
cat slurm-24861.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_advance_all.o  /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-24873.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./advance.o  1 million.bin output
sbatch -N 1 -n 1 -p batch --wrap="time srun ./advance.o  1 million.bin output"
cat slurm-24875.out 
vim generate
vim generate.c 
gcc generate.c -o generate
./generate 
ls
sbatch -N 1 -n 1 -p batch --wrap="time srun ./advance.o  1 million.bin output"
cat slurm-24878.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./advance.o  1 million.bin output"
cat slurm-24879.out 
squeue
scancel 24879
cat slurm-24879.out 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./advance.o  1 million.bin output"
cat slurm-24881.out 
sbatch -N 4 -n 48 -p batch --wrap="time srun ./advance.o  1 million.bin output"
cat slurm-24883.out 
sbatch -N 4 -n 48 -p batch --wrap="time srun ./advance.o  1 million.bin output"
squeue
cat slurm-24883.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./advance.o  1 /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-24903.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./advance.o  1 /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-24904.out 
rm output 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./advance.o  1 /home/pp17/ta/hw1/samples/testcase06 output"
hw1-b2float output 
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 1 -n 4 -p batch --wrap="time srun ./advance.o  1 /home/pp17/ta/hw1/samples/testcase06 output"
hw1-b2float output 
sbatch -N 4 -n 48 -p batch --wrap="time srun ./advance.o  1 million.bin output"
cat slurm-24925.out 
squeue
cat slurm-24925.out 
hw1-judge advance.o 
cd ~/homework/HW1/
make
hw1-judge HW1_103061108_advanced
make
hw1-judge HW1_103061108_advanced
cd ~/hw1/
ls
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
hw1-judge advance.o 
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
hw1-judge advance.o 
mpicc advance_modify.c -o advance.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time srun ./advance.o  1 /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-25015.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./advance.o  1 /home/pp17/ta/hw1/samples/testcase08 output"
cat slurm-25016.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./advance.o  1 /home/pp17/ta/hw1/samples/t output"
cat slurm-25017.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./advance.o  1 million.bin output"
sbatch -N 1 -n 4 -p batch --wrap="time srun ./advance.o  1 million.bin output"
sbatch -N 4 -n 16 -p batch --wrap="time srun ./advance.o  1 million.bin output"
sbatch -N 4 -n 48 -p batch --wrap="time srun ./advance.o  1 million.bin output"
cat slurm-25019.out 
squeue
cat slurm-25019.out 
cat slurm-25020.out 
cat slurm-25021.out 
cat slurm-25022.out 
sbatch -N 1 -n 4 -p batch --wrap="time srun ./advance.o  1 /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-25024.out 
sbatch -N 4 -n 16 -p batch --wrap="time srun ./advance.o  1 /home/pp17/ta/hw1/samples/testcase06 output"
cat slurm-25026.out 
history | grep basic
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW1_basic.o 21 million.bin output"
cat slurm-25112.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./basic.o 21 /home/pp17/ta/hw1/samples/testcase07 output"
cat slurm-25113.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./basic.o /home/pp17/ta/hw1/samples/testcase07 output"
cat slurm-25114.out 
ls
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_basic.o /home/pp17/ta/hw1/samples/testcase07 output"
cat slurm-25115.out 
mpicc HW1_103061108_basic.c -o HW_basic.o -std=gnu99 -lm
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_basic.o 15 /home/pp17/ta/hw1/samples/testcase07 output"
cat slurm-25121.out 
squeue
cat slurm-25121.out 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_basic.o 15 million.bin output"
cat slurm-25124.out 
squeue
scancel 25124
vim generate
vim generate.c 
gcc generate.c -o generate
./generate 
sbatch -N 1 -n 1 -p batch --wrap="time srun ./HW_basic.o 15 million.bin output"
sbatch -N 1 -n 4 -p batch --wrap="time srun ./HW_basic.o 15 million.bin output"
sbatch -N 4 -n 16 -p batch --wrap="time srun ./HW_basic.o 15 million.bin output"
sbatch -N 4 -n 48 -p batch --wrap="time srun ./HW_basic.o 15 million.bin output"
squeue
cd ~/homework/HW1/
make
hw1-judge HW1_103061108_advanced
cd ..
cd hw1/
ls
rm sl*
squeue
cd ~/
git add .
cd hw1/
ls
exit
cd homework/HW1/
make
squeue
exit
