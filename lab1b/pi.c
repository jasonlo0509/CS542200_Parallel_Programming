#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "mpi.h"

int main(int argc, char** argv) {
	assert(argc == 2);
	double N = (double)atoi(argv[1]), x, y, area_tmp;
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
		for (double i = 0; i< 1.0/(double)numtasks; i += 1.0/N){
			x = i;
			y = sqrt(1 - x * x);
			area += y /N;
		}
		for (int j=1; j < numtasks; j++) {
			MPI_Recv(&tmp, 1, MPI_DOUBLE, j, 0, MPI_COMM_WORLD, &status);
			area += tmp;
		}
		printf("%.16lf\n", area * 4);
	}
	else{
		double area_tmp =0;
		for (double i = rank/(double)numtasks; i < (rank+1)/(double)numtasks; i += 1.0/N) {
			x = i;
			y = sqrt(1 - x * x);
			area_tmp += y /N;
			//MPI_Send(&area_tmp, 1, MPI_DOUBLE, 0, 0, MPI_COMM_WORLD);
		}
		MPI_Request req;
		MPI_Isend(&area_tmp, 1, MPI_DOUBLE, 0, 0, MPI_COMM_WORLD, &req);
		
	}
	MPI_Finalize();
	return 0;
}
