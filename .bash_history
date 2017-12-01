git push
cd hw3
squeue
cleaar
clear
cleaar
squeue
cleaar
squeue
cd hw3
ls
srun -p batch -N1 -n50 --overcommit  ./APSP_MPI_sync 3.in out.out 50
srun -p batch -N1 -n50 --overcommit  ./APSP_MPI_sync 3.in out.out 50 &
time srun -p batch -N1 -n50 --overcommit  ./APSP_MPI_sync 3.in out.out 50 &
cd hw3
diff out.out 2.out 
diff out.out 3.out 
time srun -p batch -N2 -n10 ./APSP_MPI_sync 2.in out.out 10
time srun -p batch -N2 -n10 ./APSP_MPI_sync 2.in out.out 10 &
squeue
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10 &
time srun -p batch -N4 -n10 ./APSP_MPI_sync 2.in out.out 10 &
squeue
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 &
diff 5.out out.out 
time srun -p batch -N2 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 &
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 &
time srun -p batch -N8 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 &
time srun -p batch -N6 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 &
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 &
diff 5.out out.out 
cd hw3
history | grep pthread
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
history | grep Pthread
./APSP_Pthread 1.in out.out 10
time ./APSP_Pthread 1.in out.out 10
cat out.out 
time ./APSP_Pthread 2.in out.out 10
diff out.out 2.out 
time ./APSP_Pthread 3.in out.out 10
diff out.out 3.out 
time ./APSP_Pthread 4.in out.out 10
time ./APSP_Pthread 4.in out.out 1
diff out.out 3.out 
diff out.out 4.out 
time ./APSP_Pthread 4.in out.out 4
time ./APSP_Pthread 4.in out.out 1
./graph_ge 
ls
cp /home/pp17/ta/hw3/seq_FW .
ls
./seq_FW 6.in 6.out
cat 6.out 
vim 6.in 
time ./APSP_Pthread 6.in out.out 3
time ./APSP_Pthread 6.in out.out 2
diff out.out 6.out 
time ./APSP_Pthread 6.in out.out 4
time ./APSP_Pthread 6.in out.out 8
diff out.out 6.out 
./graph_ge 
ls
./seq_FW 7.in 7.out
./seq_FW 1.in 1.out
./seq_FW 0.in 0.out
cat 0.in
cat 1.in 
ls
history | grep Pthread
histroy | grep srun
histroy | grep MPI
history | grep srun
time srun -p batch -N1 -n1 -c4  ./APSP_Pthread 2.in out.out 4
cat out.out 
time srun -p batch -N1 -n1 -c8  ./APSP_Pthread 2.in out.out 8
time srun -p batch -N1 -n1 -c8  ./APSP_Pthread 4.in out.out 8
time srun -p batch -N1 -n1 -c4  ./APSP_Pthread 4.in out.out 4
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
time srun -p batch -N1 -n1 -c4  ./APSP_Pthread 4.in out.out 4
time srun -p batch -N1 -n1 -c8  ./APSP_Pthread 4.in out.out 8
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
time srun -p batch -N1 -n1 -c4  ./APSP_Pthread 3.in out.out 4
diff out.out 3.out 
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread -O3 
time srun -p batch -N1 -n1 -c1  ./APSP_Pthread 3.in out.out 1
time srun -p batch -N1 -n1 -c2  ./APSP_Pthread 3.in out.out 2
time srun -p batch -N1 -n1 -c4  ./APSP_Pthread 3.in out.out 4
time srun -p batch -N1 -n1 -c8  ./APSP_Pthread 3.in out.out 8
time srun -p batch -N1 -n1 -c8  ./APSP_Pthread 7.in out.out 8
diff 7.out out.out 
time srun -p batch -N1 -n1 -c4  ./APSP_Pthread 7.in out.out 4
time srun -p batch -N1 -n1 -c2  ./APSP_Pthread 7.in out.out 2
time srun -p batch -N1 -n1 -c1  ./APSP_Pthread 7.in out.out 1
cd hw3
history | grep gcc
gcc Pthread_time.c -o Pthread_time -std=c99 -pthread
history | grep Pthread
history | grep srun
time srun -p batch --overcommit -N1 -n1 -c1  ./Pthread_time 7.in out.out 1
gcc Pthread_time.c -o Pthread_time -std=c99 -pthread
time srun -p batch --overcommit -N1 -n1 -c1  ./Pthread_time 2.in out.out 1
time srun -p batch -N1 -n1 -c1  ./Pthread_time 2.in out.out 1
cat out.out 
gcc Pthread_time.c -o Pthread_time -std=c99 -pthread
time srun -p batch -N1 -n1 -c1  ./Pthread_time 2.in out.out 1
srun -p batch -N1 -n1 -c1  ./Pthread_time 2.in out.out 1
gcc Pthread_time.c -o Pthread_time -std=c99 -pthread -lm
srun -p batch -N1 -n1 -c1  ./Pthread_time 2.in out.out 1
gcc Pthread_time.c -o Pthread_time -std=c99 -pthread
srun -p batch -N1 -n1 -c1  ./Pthread_time 2.in out.out 
srun -p batch -N1 -n1 -c1  ./Pthread_time 2.in out.out 1
gcc Pthread_time.c -o Pthread_time -std=c99 -pthread
srun -p batch -N1 -n1 -c1  ./Pthread_time 2.in out.out 1
gcc Pthread_time.c -o Pthread_time -std=c99 -pthread
srun -p batch -N1 -n1 -c1  ./Pthread_time 2.in out.out 1
srun -p batch -N1 -n1 -c1  ./Pthread_time 7.in out.out 1
diff 7.out out.out 
srun -p batch -N1 -n1 -c2  ./Pthread_time 7.in out.out 2 &
srun -p batch -N1 -n1 -c4  ./Pthread_time 7.in out.out 4 &
srun -p batch -N1 -n1 -c8  ./Pthread_time 7.in out.out 8 &
time srun -p batch -N1 -n1 -c1  ./Pthread_time 7.in out.out 1 &
time srun -p batch -N1 -n1 -c2  ./Pthread_time 7.in out.out 2 &
time srun -p batch -N1 -n1 -c4  ./Pthread_time 7.in out.out 4 &
time srun -p batch -N1 -n1 -c8  ./Pthread_time 7.in out.out 8 &
time srun -p batch -N1 -n1 -c4  ./Pthread_time 7.in out.out 4 &
gcc Pthread_time.c -o Pthread_time -std=c99 -pthread -O3
time srun -p batch -N1 -n1 -c4  ./Pthread_time 7.in out.out 4 &
time srun -p batch -N1 -n1 -c8  ./Pthread_time 7.in out.out 8 &
time srun -p batch -N1 -n1 -c2  ./Pthread_time 7.in out.out 2 &
squeue
cd hw3
cd hw3
gcc Pthread_time.c -o Pthread_time -std=c99 -pthread -O3
time srun -p batch -N1 -n1 -c2  ./Pthread_time 7.in out.out 2 &
cd hw3
time srun -p batch -N1 -n1 -c2 perf record ./Pthread_time 7.in out.out 2 &
perf record time srun -p batch -N1 -n1 -c2 perf record ./Pthread_time 7.in out.out 2 &
apt-get install linux-tools
sudo apt-get install linux-tools
perf
wget http://sam.zoy.org/writings/programming/gprof-helper.c .
ls
gcc -shared -fPIC gprof-helper.c -o gprof-helper.so -lpthread -ldl
LD_PRELOAD=./gprof-helper.so APSP_Pthread
ls
LD_PRELOAD=./gprof-helper.so ./APSP_Pthread
LD_PRELOAD=./gprof-helper.so ./APSP_Pthread 3.in out.out 4.
LD_PRELOAD=./gprof-helper.so ./APSP_Pthread 3.in out.out 4
./APSP_Pthread 3.in out.out 4
ls
LD_PRELOAD=./gprof-helper.so Pthread_time.c 
LD_PRELOAD=./gprof-helper.so gcc Pthread_time.c 
LD_PRELOAD=./gprof-helper.so gcc -std=gnu99 Pthread_time.c 
LD_PRELOAD=./gprof-helper.so gcc -std=gnu99 Pthread_time.c -lpthread
cat Pthread_time.c 
time srun -p batch -N1 -n1 -c2  ./Pthread_time 7.in out.out 2 &
LD_PRELOAD=./gprof-helper.so gcc -std=gnu99 Pthread_time.c -lpthread -O3
time srun -p batch -N1 -n1 -c2  ./Pthread_time 7.in out.out 2 &
gcc -std=gnu99 Pthread_time.c -lpthread -O3
time srun -p batch -N1 -n1 -c2  ./Pthread_time 7.in out.out 2 &
time srun -p batch -N1 -n1 -c4  ./Pthread_time 7.in out.out 4 &
time srun -p batch -N1 -n1 -c8  ./Pthread_time 7.in out.out 8 &
cd homework/
mkdir HW3
cp ../hw3/AP* HW3
cd HW#
cd HW3
ls
cp ../HW1/Makefile .
vim Makefile 
make
make all
make clean
make
vim Makefile 
make
make clean
make
cp ../hw3/7.* .
cp ../hw3/7* .
cp ../../hw3/7* .
ls
make
time srun -p batch -N1 -n1 -c8  ./APSP_Pthread 7.in out.out 8 &
diff 7.out out.out 
ls
time srun -p batch --overcommit -N1 -n2000  ./APSP_MPI_sync 7.in out.out 2000 
time srun -p batch --overcommit -N4 -n2000  ./APSP_MPI_sync 7.in out.out 2000 
time srun -p batch --overcommit -N4 -n2000  ./APSP_MPI_async 7.in out.out 2000 
squeue
cp ../../hw3/4* .
time srun -p batch --overcommit -N4 -n100  ./APSP_MPI_async 4.in out.out 100
diff out.out 4.out 
time srun -p batch --overcommit -N4 -n100  ./APSP_MPI_sync 4.in out.out 100
diff out.out 4.out 
cd ..
cd hw3
history | grep mpicc
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async
history | grep async
time srun -p batch --overcommit -N4 -n100  ./APSP_MPI_async 4.in out.out 100
diff out.out 4.out 
mpicc -std=c99 APSP_MPI_async_dynamic.c -o APSP_MPI_async_dynamic
time srun -p batch --overcommit -N4 -n100  ./APSP_MPI_async_dynamic 4.in out.out 100
difff out.out 4.out 
diff out.out 4.out 
mpicc -std=c99 APSP_MPI_sync_static.c -o APSP_MPI_sync_static
time srun -p batch --overcommit -N4 -n100  ./APSP_MPI_sync_static 4.in out.out 100
time srun -p batch --overcommit -N4 -n100  ./APSP_MPI_sync 4.in out.out 100
time srun -p batch --overcommit -N4 -n150  ./APSP_MPI_sync 5.in out.out 150
time srun -p batch --overcommit -N4 -n150  ./APSP_MPI_sync_static 5.in out.out 150
time srun -p batch --overcommit -N4 -n150  ./APSP_MPI_async 5.in out.out 150
time srun -p batch --overcommit -N4 -n150  ./APSP_MPI_async_dynamic 5.in out.out 150
diff 5.out out.out 
vim 6.in 
time srun -p batch --overcommit -N4 -n1000  ./APSP_MPI_async_dynamic 6.in out.out 1000
time srun -p batch --overcommit -N4 -n150  ./APSP_MPI_async_dynamic 5.in out.out 150
cp hw3/APSP_MPI_async_dynamic.c homework/HW3/
cd homework/HW3/
mv APSP_MPI_async_dynamic.c APSP_MPI_async.c 
make
ls
cd ~/hw3
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 
time srun -p batch -N2 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150 
time srun -p batch -N1 -n100 --overcommit ./APSP_MPI_async 4.in out.out 100 
time srun -p batch -N1 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50 
time srun -p batch -N2 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50 
time srun -p batch -N4 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50 
ls
mkdir HW3_103061108
mv APSP_Pthread.c HW3_103061108
cp APSP_MPI_sync.c HW3_103061108
cp ../homework/HW3/Makefile .
cp APSP_MPI_async_dynamic.c HW3_103061108
mv HW3_103061108_report.pdf HW3_103061108
cd HW3_103061108/
ls
cp ../Makefile .
mv APSP_MPI_async_dynamic.c APSP_MPI_async.c 
cd ..
zip -r HW3_103061108.zip HW3_103061108/
cd hw3
ls
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
git add .
git add . --ignore-removal
git commit -m "need to modify IO"
git push
cd hw3
history | grep mpicc
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
history | grep sync
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
cd hw3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
cd ..
git add .
git add . --ignore-removal
git commit -m "need to modify the probe and receive part"
git push
cd hw3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N2 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_async_dynamic 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_async_dynamic 5.in out.out 150 &
squeue
clear
squeue
diff out.out 5.out 
time srun -p batch -N2 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
time srun -p batch -N5 -n150 --overcommit ./APSP_MPI_async_dynamic 5.in out.out 150 &
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_async_dynamic 5.in out.out 150 &
diff out.out 5.out 
history | grep mpicc
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150 &
diff out.out 5.out 
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150 &
squeue
clear
squeue
time srun -p batch -N1 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50 &
squeue
diff out.out 3.out 
time srun -p batch -N1 -n100 --overcommit ./APSP_MPI_async 4.in out.out 100 &
ls
squeue
diff out.out 4.out 
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n100 --overcommit ./APSP_MPI_async 4.in out.out 100 &
diff out.out 4.out 
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150 &
diff out.out 5.out 
squeue
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 &
diff out.out 5.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 &
diff out.out 5.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150 &
diff out.out 5.out 
time srun -p batch -N2 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150 &
diff out.out 5.out 
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150 &
squeue
clearf
clear
diff out.out 5.out 
time srun -p batch -Nˋ -n150 --overcommit ./APSP_MPI_async 5.in out.out 150 &
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150 &
diff out.out 5.out 
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150 &
cd hw3
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N2 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
cat 3.in
time srun -p batch -N2 -n50 --overcommit ./APSP_MPI_sync 3.in out.out 50
diff out.out 3.out 
time srun -p batch -N1 -n50 --overcommit ./APSP_MPI_sync 3.in out.out 50
diff out.out 3.out 
cat 2.in 
time srun -p batch -N1 -n10 --overcommit ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N2 -n10 --overcommit ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N4 -n10 --overcommit ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N4 -n50 --overcommit ./APSP_MPI_sync 3.in out.out 50
diff out.out 2.out 
diff out.out 3.out 
time srun -p batch -N4 -n50 --overcommit ./APSP_MPI_sync 3.in out.out 50
time srun -p batch -N1 -n50 --overcommit ./APSP_MPI_sync 3.in out.out 50
diff out.out 3.out 
time srun -p batch -N1 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
diff out.out 4.out 
time srun -p batch -N2 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N2 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N2 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N2 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N2 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N2 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N2 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
cd hw3
./graph_ge 
cd hw3
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
cd HW3_103061108/
ls
cd ..
ls
zip HW3_103061108.zip HW3_103061108
zip -r HW3_103061108.zip HW3_103061108
ls
cp APSP_MPI_async.c HW3_103061108
cp APSP_MPI_sync.c HW3_103061108
zip -r HW3_103061108.zip HW3_103061108
cd HW3_103061108/
make
cd ..
ls
time srun -p batch -N1 -n50 --overcommit ./APSP_MPI_sync 3.in out.out 50
time srun -p batch -N1 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
ls
./graph_ge 
./seq_FW 6.in 6.out
time srun -p batch -N1 -n500 --overcommit ./APSP_MPI_sync 6.in out.out 500
./graph_ge 
./seq_FW 6.in 6.out
time srun -p batch -N1 -n200 --overcommit ./APSP_MPI_sync 6.in out.out 200
cat 6.in 
vim 6.in
time srun -p batch -N1 -n200 --overcommit ./APSP_MPI_sync 6.in out.out 200
./graph_ge 
./seq_FW 6.in 6.out
time srun -p batch -N1 -n200 --overcommit ./APSP_MPI_sync 6.in out.out 200
cat 6.in 
./graph_ge 
./seq_FW 9.in 9.out
time srun -p batch -N1 -n200 --overcommit ./APSP_MPI_sync 9.in out.out 200
time srun -p batch -N1 -n200 --overcommit ./APSP_MPI_async 9.in out.out 200
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150
time srun -p batch -N1 -n100 --overcommit ./APSP_MPI_async 4.in out.out 100
time srun -p batch -N1 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50
history | grep Pthread
time srun -p batch -N1 -n1 -c2  ./Pthread_time 7.in out.out 2 &
time srun -p batch -N1 -n1 -c2  ./Pthread_time 5.in out.out 2 &
./graph_ge 
time srun -p batch -N1 -n1 -c1  ./Pthread_time 8.in out.out 1 &
time srun -p batch -N1 -n1 -c2  ./Pthread_time 8.in out.out 2 &
time srun -p batch -N1 -n1 -c4  ./Pthread_time 8.in out.out 4 &
time srun -p batch -N1 -n1 -c8  ./Pthread_time 8.in out.out 8 &
time srun -p batch -N1 -n1 -c8  ./Pthread_time 10.in out.out 8 &
time srun -p batch -N1 -n1 -c4  ./Pthread_time 10.in out.out 4 &
time srun -p batch -N1 -n1 -c2  ./Pthread_time 10.in out.out 2 &
time srun -p batch -N1 -n1 -c1  ./Pthread_time 10.in out.out 1 &
time srun -p batch -N1 -n1 -c1  ./Pthread_time 6.in out.out 1 &
time srun -p batch -N1 -n1 -c2  ./Pthread_time 6.in out.out 2 &
time srun -p batch -N1 -n1 -c4  ./Pthread_time 6.in out.out 4 &
time srun -p batch -N1 -n1 -c8  ./Pthread_time 6.in out.out 8 &
cd ../homework/HW3/
ls
make
cp ../../hw3/3.in .
cp ../../hw3/4.in .
cp ../../hw3/5.in .
cp ../../hw3/6.in .
time srun -p batch -N1 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50
time srun -p batch -N2 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50
time srun -p batch -N4 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50
cat 3.in 
cp ../../hw3/2.in .
cat 2.in 
time srun -p batch -N4 -n100 --overcommit ./APSP_MPI_async 4.in out.out 100
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150
ls
cp ../../hw3/11.in .
time srun -p batch -N4 -n75 --overcommit ./APSP_MPI_async 11.in out.out 75
time srun -p batch -N2 -n75 --overcommit ./APSP_MPI_async 11.in out.out 75
time srun -p batch -N1 -n75 --overcommit ./APSP_MPI_async 11.in out.out 75
time srun -p batch -N1 -n50 --overcommit ./APSP_MPI_sync 3.in out.out 50
time srun -p batch -N2 -n50 --overcommit ./APSP_MPI_sync 3.in out.out 50
time srun -p batch -N4 -n50 --overcommit ./APSP_MPI_sync 3.in out.out 50
time srun -p batch -N4 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
time srun -p batch -N2 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
time srun -p batch -N1 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
time srun -p batch -N4 -n75 --overcommit ./APSP_MPI_sync 11.in out.out 75
time srun -p batch -N2 -n75 --overcommit ./APSP_MPI_sync 11.in out.out 75
time srun -p batch -N1 -n75 --overcommit ./APSP_MPI_sync 11.in out.out 75
cd ../../
git add .
git add . --ignore-removal
git commit -m "finish report"
git push
cd hw3
ls
cp APSP_MPI_async.c ../homework/HW3/
cd ../homework/HW3/
make
time srun -p batch -N1 -n100 --overcommit ./APSP_MPI_async 4.in out.out 100
cd ../../hw3
ls
history | grep mpicc
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N1 -n75 --overcommit ./APSP_MPI_sync 11.in out.out 75
cp APSP_MPI_sync.c ../homework/HW3
cp APSP_MPI_sync.c HW3_103061108
cp APSP_MPI_async.c HW3_103061108
zip HW3_103061108.zip HW3_103061108
zip -r  HW3_103061108.zip HW3_103061108
who
cd hw3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N2 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
diff out.out 4.out 
time srun -p batch -N4 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
diff out.out 4.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
diff out.out 4.out 
time srun -p batch -N1 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 4.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 4.out 
time srun -p batch -N4 -n100 --overcommit ./APSP_MPI_sync 4.in out.out 100
diff out.out 4.out 
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
cd hw3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
cp APSP_MPI_sync.c ../homework/HW3/
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N4 -n100 --overcommit ./APSP_MPI_async 4.in out.out 100
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N4 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50
cp APSP_MPI_async.c ../homework/HW3/
cd hw3
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
time srun -p batch -N4 -n10 --overcommit ./APSP_MPI_sync 2.in out.out 10
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n10 --overcommit ./APSP_MPI_sync 2.in out.out 10
cd hw3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n10 --overcommit ./APSP_MPI_sync 2.in out.out 10
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
diff out.out 5.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync -O3
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_sync 5.in out.out 150
cd ..
git add ,
git add .
git add . --ignore-removal
git commit -m "next:change to blocking send & recv"
git push
hw3-judge-all 
squeue
hw3-judge-all 
squeue
squeue
cd ..
ls
cd ta
;s
ls
cd hw3
ls
vim 2000.in
vim 500.in 
cd ~/hw3
ls
squeue
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N4 -n10 --overcommit ./sync_send 2.in out.out 10
cat out.out 
diff out.out 2.out 
time srun -p batch -N4 -n50 --overcommit ./sync_send 3.in out.out 50
diff out.out 3.out 
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
cp ../../ta/hw3/500* .
time srun -p batch -N1 -n500 --overcommit ./sync_send 500.in out.out 500
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N3 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N2 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N1 -n500 --overcommit ./sync_send 500.in out.out 500
diff out.out 500.out 
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n500 --overcommit ./sync_send 500.in out.out 500
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n500 --overcommit ./sync_send 500.in out.out 500
squeue
cd hw3
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
cd hw3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send -o sync_send -O3
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
cat hw3-judge-all 
vim hw3-judge-all 
cd ../../
ls
cd judge/
cd ta/
ls
cd hw3
ls
cd ..
cd ~
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
cd hw3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
cd ..
cd hw3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
cp sync_send.c ..//homework/HW3/
cp sync_send.c ../homework/HW3/
cd ../homework/HW3/
make
hw3-judge-all 
ls
cp ../../hw3/sync_send.c .
mv sync_send.c APSP_MPI_sync.c 
make
hw3-judge-all 
cd hw3
time srun -p batch -N1 -n500 --overcommit ./sync_send 500.in out.out 500
squeue
cd hw3
cd ..
git add .
git add . --ignore-removal
git commit -m "still bound by the while loopQQQQQ"
git push
cd hw3
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
squeue
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N4 -n100 --overcommit ./APSP_MPI_async 4.in out.out 100
diff out.out 4.out 
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
cd ..
git add . --ignore-removal
git commit "for TA"
git push
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
cd hw3
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
cd ..
git add . --ignore-removal
git commit "for TA"
git commit "for"
git push
git add . --ignore-removal
git commit "for TA"
cd hw3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
squeue
cd hw3
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
diff out.out 5.out 
cd hw3
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
cd hw3
who
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N1 -n50 --overcommit ./sync_send 3.in out.out 50
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n50 --overcommit ./sync_send 3.in out.out 50
cd hw3
time srun -p batch -N1 -n4 --overcommit ./sync_send 1.in out.out 3
time srun -p batch -N1 -n3 --overcommit ./sync_send 1.in out.out 3
cat out.out 
time srun -p batch -N1 -n3 --overcommit ./sync_send 1.in out.out 3
cat out.out 
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n3 --overcommit ./sync_send 1.in out.out 3
time srun -p batch -N1 -n10 --overcommit ./sync_send 2.in out.out 10
cat out.out 
diff out.out 2.out 
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n10 --overcommit ./sync_send 2.in out.out 10
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_send.c -o sync_send -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n150 --overcommit ./sync_send 5.in out.out 150
time srun -p batch -N1 -n150 --overcommit ./sync_debug 5.in out.out 150
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n150 --overcommit ./sync_debug 5.in out.out 150
time srun -p batch -N1 -n10 --overcommit ./sync_debug 2.in out.out 10
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n10 --overcommit ./sync_debug 2.in out.out 10
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n10 --overcommit ./sync_debug 2.in out.out 10
cat out.out 
diff out.out 2.out 
cat out.out 
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n10 --overcommit ./sync_debug 2.in out.out 10
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
cat out.out 
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
cat out.out 
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
cat out.out 
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
cat out.out 
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n150 --overcommit ./sync_debug 5.in out.out 150
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
time srun -p batch -N1 -n10 --overcommit ./sync_debug 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N1 -n150 --overcommit ./sync_debug 5.in out.out 150
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
time srun -p batch -N1 -n10 --overcommit ./sync_debug 2.in out.out 10
diff out.out 2.out 
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n10 --overcommit ./sync_debug 2.in out.out 10
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n10 --overcommit ./sync_debug 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
diff out.out 5.out 
cat 5.out 
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
time srun -p batch -N1 -n3 --overcommit ./sync_debug 1.in out.out 3
cat out.out 
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
diff out.out 5.out 
cd hww3
cd hw3
time srun -p batch -N1 -n50 --overcommit ./sync_send 3.in out.out 50
time srun -p batch -N1 -n50 --overcommit ./sync_debug 3.in out.out 50
diff out.out 3.out 
time srun -p batch -N1 -n100 --overcommit ./sync_debug 4.in out.out 100
diff out.out 4.out 
time srun -p batch -N1 -n150 --overcommit ./sync_debug 5.in out.out 150
diff out.out 5.out 
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n150 --overcommit ./sync_debug 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n150 --overcommit ./sync_debug 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n500 --overcommit ./sync_debug 500.in out.out 500
diff out.out 500.out 
cp sync_debug.c ../homework/HW3/
cd ../homework/HW3/
ls
mv sync_debug.c APSP_MPI_sync.c 
hw3-judge-all 
hw3-judge-all --help
hw3-judge-all -h
hw3-judge-all --timeout 20
squeue
cd hw3
mpicc -std=c99 sync_debug.c -o sync_debug -O3
time srun -p batch -N1 -n150 --overcommit ./sync_debug 5.in out.out 150
time srun -p batch -N4 -n150 --overcommit ./sync_debug 5.in out.out 150
squeue
ls
time srun -p batch -N4 -n150 --overcommit ./APSP_MPI_async 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50
diff out.out 3.out 
cp APSP_MPI_async.c ../homework/HW3/
squeue
ls
squeue
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N4 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50
mpicc -std=c99 APSP_MPI_async.c -o APSP_MPI_async -O3
time srun -p batch -N4 -n50 --overcommit ./APSP_MPI_async 3.in out.out 50
diff out.out 3.out 
cd hw3
mpicc -std=c99 async_debug.c -o async_debug -O3
time srun -p batch -N1 -n3 --overcommit ./async_debug 1.in out.out 3
mpicc -std=c99 async_debug.c -o async_debug -O3
time srun -p batch -N1 -n3 --overcommit ./async_debug 1.in out.out 3
mpicc -std=c99 async_debug.c -o async_debug -O3
time srun -p batch -N1 -n3 --overcommit ./async_debug 1.in out.out 3
mpicc -std=c99 async_debug.c -o async_debug -O3
time srun -p batch -N1 -n3 --overcommit ./async_debug 1.in out.out 3
mpicc -std=c99 async_debug.c -o async_debug -O3
time srun -p batch -N1 -n3 --overcommit ./async_debug 1.in out.out 3
cat out.out 
mpicc -std=c99 async_debug.c -o async_debug -O3
cat out.out 
mpicc -std=c99 async_debug.c -o async_debug -O3
time srun -p batch -N1 -n3 --overcommit ./async_debug 1.in out.out 3
cat out.out 
mpicc -std=c99 async_debug.c -o async_debug -O3
time srun -p batch -N1 -n3 --overcommit ./async_debug 1.in out.out 3
cat out.out 
mpicc -std=c99 async_debug.c -o async_debug -O3
time srun -p batch -N1 -n3 --overcommit ./async_debug 1.in out.out 3
mpicc -std=c99 async_debug.c -o async_debug -O3
time srun -p batch -N1 -n3 --overcommit ./async_debug 1.in out.out 3
cat out.out 
time srun -p batch -N1 -n10 --overcommit ./async_debug 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N1 -n150 --overcommit ./async_debug 5.in out.out 150
mpicc -std=c99 async_debug.c -o async_debug -O3
time srun -p batch -N1 -n150 --overcommit ./async_debug 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n150 --overcommit ./async_debug 5.in out.out 150
mpicc -O3 -std=c99 async_debug.c -o async_debug
time srun -p batch -N4 -n150 --overcommit ./async_debug 5.in out.out 150
mpicc -O3 -std=c99 async_debug.c -o async_debug
time srun -p batch -N4 -n150 --overcommit ./async_debug 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N4 -n150 --overcommit ./async_debug 5.in out.out 150
mpicc -O3 -std=c99 async_debug.c -o async_debug
time srun -p batch -N4 -n150 --overcommit ./async_debug 5.in out.out 150
diff out.out 5.out 
mpicc -O3 -std=c99 async_debug.c -o async_debug
time srun -p batch -N4 -n150 --overcommit ./async_debug 5.in out.out 150
diff out.out 5.out 
mpicc -O3 -std=c99 async_debug.c -o async_debug
time srun -p batch -N4 -n150 --overcommit ./async_debug 5.in out.out 150
time srun -p batch -N1 -n150 --overcommit ./async_debug 5.in out.out 150
mpicc -O3 -std=c99 async_debug.c -o async_debug
time srun -p batch -N1 -n150 --overcommit ./async_debug 5.in out.out 150
mpicc -O3 -std=c99 async_debug.c -o async_debug
time srun -p batch -N1 -n150 --overcommit ./async_debug 5.in out.out 150
diff out.out 5.out 
cd hw3
mpicc -O3 -std=c99 async_debug.c -o async_debug
time srun -p batch -N1 -n150 --overcommit ./async_debug 5.in out.out 150
diff out.out 5.out 
time srun -p batch -N1 -n150 --overcommit ./async_debug 5.in out.out 150
mpicc -O3 -std=c99 async_debug.c -o async_debug
time srun -p batch -N1 -n150 --overcommit ./async_debug 5.in out.out 150
diff out.out 5.out 
