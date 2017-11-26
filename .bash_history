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
cd hw3
ls
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
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 3.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 3.out 
gcc ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 3.out 
gcc pthread.c -o pthread
gcc pthread.c -o pthread -std=c99
ls
gcc -std=c99 pthread.c -o pthread
gcc ASAP_seq.c -o ASAP_seq
clear
gcc ASAP_seq.c -o ASAP_seq
clear
gcc ASAP_seq.c -o ASAP_seq
gcc -std=c99 ASAP_seq.c -o ASAP_seq
clear
gcc -std=c99 ASAP_seq.c -o ASAP_seq
gcc -std=c99 ASAP_seq.c -o ASAP_seq -pthread
./ASAP_seq 
gcc -std=c99 ASAP_seq.c -o ASAP_seq -pthread
./ASAP_seq 
gcc -std=c99 ASAP_seq.c -o ASAP_seq -pthread
./ASAP_seq 
gcc -std=c99 ASAP_seq.c -o ASAP_seq -pthread
clear
gcc -std=c99 ASAP_seq.c -o ASAP_seq -pthread
./ASAP_seq 
cd ..
git add .
git status
git add .
git add --ignore-removal
git add --ignore-removal .
git commit -m "segmentation fault lol"
git push
cd hw3
gcc -std=c99 ASAP_seq.c -o ASAP_seq -pthread
./ASAP_seq 
gcc -std=c99 ASAP_seq.c -o ASAP_seq -pthread
./ASAP_seq 
gcc -std=c99 ASAP_seq.c -o ASAP_seq
./ASAP_seq 
gcc -std=c99 ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 3.out 
gcc -std=c99 ASAP_seq.c -o ASAP_seq
./ASAP_seq 
diff out.out 3.out 
cd ..
git add .
git --ignore-removal .
git add --ignore-removal .
git commit -m "start adding things"
git push
cd hw3
ls
gcc -std=c99 ASAP_seq.c -o ASAP_seq
./ASAP_seq 
./ASAP_seq 429342
gcc -std=c99 ASAP_seq.c -o ASAP_seq
./ASAP_seq 429342
gcc -std=c99 ASAP_seq.c -o ASAP_seq
./ASAP_seq 429342
gcc -std=c99 ASAP_seq.c -o ASAP_seq
./ASAP_seq 429342 
./ASAP_seq 4
gcc -std=c99 ASAP_seq.c -o ASAP_seq
./ASAP_seq 4
who
cd hw3
./ASAP_seq 4
./ASAP_seq 10
diff out.out 3.out 
cd hw3
ls
gcc APSP_Pthread.c -o APSP_Pthread 
./APSP_Pthread 3.in out.out 4
diff out.out 3.out 
./APSP_Pthread 3.in 3out.out 4
diff 3out.out 3.out 
cd hw3
gcc APSP_Pthread.c -o APSP_Pthread 
cd ..
git add .
git add . --ignore-removal
git commit -m "create basic IO argc argv & finish sequencial version"
git push
cd hw3
gcc APSP_Pthread.c -o APSP_Pthread 
gcc APSP_Pthread.c -o APSP_Pthread -lphread
clear
gcc APSP_Pthread.c -o APSP_Pthread -lphread
gcc APSP_Pthread.c -o APSP_Pthread -lphread -std=c99
gcc APSP_Pthread.c -o APSP_Pthread -phread -std=c99
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 3.in out.out 2
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 2.in out.out 2
cat 2.in
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -pthread -std=c99
./APSP_Pthread 2.in out.out 2
./APSP_Pthread 2.in out.out 1
./APSP_Pthread 1.in out.out 1
./APSP_Pthread 1.in out.out 2
cd hw3
history
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 3.in out.out 4
diff out.out 3.out 
./APSP_Pthread 4.in out.out 4
diff out.out 4.out 
./APSP_Pthread 3.in out.out 4
diff out.out 3.out 
./APSP_Pthread 2.in out.out 4
./APSP_Pthread 2.in out.out 5
./APSP_Pthread 2.in out.out 2
./APSP_Pthread 2.in out.out 1
diff out.out 2.out 
./APSP_Pthread 3.in out.out 4
diff out.out 3.out 
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 3.in out.out 4
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 3.in out.out 4
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 3.in out.out 4
diff out.out 3.out 
./APSP_Pthread 2.in out.out 4
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 4
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 4
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 4
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 4
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
./APSP_Pthread 2.in out.out 3
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 3
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 3
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 3
diff out.out 2.out 
./APSP_Pthread 2.in out.out 4
diff out.out 2.out 
cat out.out 
cat 3.out 
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 4
./APSP_Pthread 2.in out.out 2
diff out.out 2.out 
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
diff out.out 2.out 
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
cat 2.out 
cat out.out 
rm out.out 
./APSP_Pthread 2.in out.out 2
diff out.out 2.out 
ls
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
ls
./APSP_Pthread 2.in out.out 2
ls
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 2.in out.out 2
ls
diff out.out 2.out 
./APSP_Pthread 3.in out.out 4
diff out.out 4.out 
diff out.out 3.out 
./APSP_Pthread 4.in out.out 4
diff out.out 4.out 
cd ..
git add . 
git add . --ignore-removal
git commit -m "part I finished"
push
git push
cd hw3
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 4.in out.out 5
diff out.out 4.out 
./APSP_Pthread 4.in out.out 10
diff out.out 4.out 
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 1.in out.out 10
diff out.out 1.out 
gcc APSP_Pthread.c -o APSP_Pthread -std=c99 -pthread
./APSP_Pthread 1.in out.out 10
diff out.out 1.out 
cd hw2
ls
cd ta/
ls
cd ..
cd homework/hw2
cd homework/HW2
ls
cat Makefile 
cd hw3
ls
cd 5.in
cat 5.in 
cat 2.in
cat 1.in
cd hw3
ls
cat 3.in
cat 1.in
cat 1.out 
cd hw3
cat 1.in 
cd lab1b/
ls
cat pi.c 
vim pi.c 
cd ../hw3
history | grep mpicc 
history | grep mpic
history | grep mpi
cd ../homework/HW2
cat Makefile 
cd ../../hw3
mpicc -std=c99 send_recv_test.c -o send_recv_test
./send_recv_test 
mpicc -std=c99 send_recv_test.c -o send_recv_test
./send_recv_test 
mpicc -std=c99 send_recv_test.c -o send_recv_test
./send_recv_test 
history grep srun
history | grep srun
time srun -p batch -N3 -n1 ./send_recv_test
time srun -p batch -N1 -n3 ./send_recv_test
mpicc -std=c99 send_recv_test.c -o send_recv_test
time srun -p batch -N1 -n3 ./send_recv_test
mpicc -std=c99 send_recv_test.c -o send_recv_test
time srun -p batch -N1 -n3 ./send_recv_test
mpicc -std=c99 send_recv_test.c -o send_recv_test
time srun -p batch -N1 -n3 ./send_recv_test
cd hw3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
time srun -p batch -N1 -n9 ./APSP_MPI_sync 1.in out.out 9
clear
time srun -p batch -N1 -n9 ./APSP_MPI_sync 1.in out.out 9
cd hw3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
cat 1.in
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
clear
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
clear
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
cd hw3
history 
ls
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
cat 1.in 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
cat i.in
cat 1.in
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
cat 1.in
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
cd hw3
history 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
cd hw3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
clear
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
clear
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
cat 2.in 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n10 ./APSP_MPI_sync 2.in out.out 10
cat 2.out 
squeue
cd hw3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
squeue
time srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
time srun -p debug -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
cat out.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p debug -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
cat out.out 
ls
rm out.out 
time srun -p debug -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
cat out.out 
time srun -p batch -N1 -n10 ./APSP_MPI_sync 2.in out.out 10
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p debug -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
cat out.out 
diff out.out 1.out 
time srun -p debug -N1 -n10 ./APSP_MPI_sync 1.in out.out 10
time srun -p debug -N2 -n10 ./APSP_MPI_sync 1.in out.out 10
time srun -p debug -N3 -n10 ./APSP_MPI_sync 1.in out.out 10
time srun -p batch -N1 -n10 ./APSP_MPI_sync 1.in out.out 10
time srun -p batch -N3 -n10 ./APSP_MPI_sync 1.in out.out 10
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 1.in out.out 10
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
cat out.out 
cat 2.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
cat out.out 
diff out.out 2.out 
cat 2.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
cat out.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
cat 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
cat 3.in 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
rm out.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
rm out.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n3 ./APSP_MPI_sync 1.in out.out 3
diff out.out 1.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
rm out.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
rm out.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
cat 2.in 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
cat 2.out 
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
time srun -p batch -N3 -n10 ./APSP_MPI_sync 2.in out.out 10
cd hw3
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n3 ./APSP_MPI_sync 1.in out.out 3
srun -p batch -N1 -n10 ./APSP_MPI_sync 2.in out.out 10
mpicc -std=c99 APSP_MPI_sync.c -o APSP_MPI_sync
srun -p batch -N1 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
srun -p batch -N1 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
srun -p batch -N1 -n10 ./APSP_MPI_sync 2.in out.out 10
diff out.out 2.out 
srun -p batch -N1 -n10 ./APSP_MPI_sync 2.in out.out 10
