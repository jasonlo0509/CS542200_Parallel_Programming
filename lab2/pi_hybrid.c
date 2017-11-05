#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "mpi.h"
#include <omp.h>
int main(int argc, char** argv) {
	assert(argc == 2);
	int N = atoi(argv[1]);
	int x, y, area_tmp;
	int rc, rank, numtasks, num;
	double area = 0, tmp=0;
	MPI_Status status;
	rc = MPI_Init(&argc, &argv);
	if(rc != MPI_SUCCESS){
		printf("Error starting MPI program. Terminating. \n");
		MPI_Abort(MPI_COMM_WORLD, rc);
	}
	MPI_Comm_size(MPI_COMM_WORLD, &numtasks);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	num = N/numtasks;
	printf("Number of tasks = %d My rank = %d\n", numtasks, rank);
	if (rank == 0){
		double x=0;
		int niter = N/numtasks;
		for (int i = 0; i< niter; i++){
			//x = i;
			y = sqrt(1 - x * x);
			area += y /N;
			x+=1/N;
		}
		for (int j=1; j < numtasks; j++) {
			MPI_Recv(&tmp, 1, MPI_DOUBLE, j, 0, MPI_COMM_WORLD, &status);
			printf("%.16lf\n", tmp);
			area += tmp;
		}
		printf("%.16lf\n", area * 4);
	}
	else{
		int j, niter;
		niter = N/numtasks;
		//omp_lock_t *lock;
		//omp_init_lock(lock);
		double x = rank/(double)numtasks;
		double i, area_tmp =0, k=rank/(double)numtasks;
#pragma omp parallel for private(x) reduction(+:area_tmp)
		for(j=0; j<niter; j++){
			//printf("%d\n", j);
		//for (i = rank/(double)numtasks; i < (rank+1)/(double)numtasks; i += 1.0/N) {
			//if(i<){
			//k = k+1/N;
		//	if(k<(rank+1)/(double)numtasks){
				//k = k+1/N;
				//i=j/N;
				//x = i;
				//printf("%.16lf\n", 1-x*x);
				
				y = sqrt(1 - (x+(j/N)) * (x+j/N));
				area_tmp += y /N;
				//x += 1/N;
		//	}
		}
		printf("%.16lf\n", area_tmp);
		MPI_Request req;
		MPI_Isend(&area_tmp, 1, MPI_DOUBLE, 0, 0, MPI_COMM_WORLD, &req);
	}
	MPI_Finalize();
	return 0;
}
