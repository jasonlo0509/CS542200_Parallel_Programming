#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "mpi.h"

#define INF 999

int main(int argc, char** argv) {
	/* MPI Declare */
    int nprocs;
    int myrank;

	/* Initialize MPI */
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
    MPI_Comm_rank(MPI_COMM_WORLD, &myrank);

    if(myrank ==0){
    	int dist[3] = {INF, INF, INF};
    	int w[3] = {0, 95, 35};
    	int flag;
    	int dist_recv[3] = {0, 0, 0};
        MPI_Status status;
        while(1){
        	/* Read State */
    		MPI_Iprobe(MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &flag, &status);
    		if(flag==1){
    			int proc_num = status.MPI_SOURCE;
    			printf("recv from %d \n", proc_num);
        		MPI_Recv(&dist_recv[proc_num], 1, MPI_INT, proc_num, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
        		printf("%d \n", dist_recv[0]);
        		printf("%d \n", dist_recv[1]);
        		printf("%d \n", dist_recv[2]);
        	}
        	else{
        		printf("%d \n", dist_recv[0]);
        		printf("%d \n", dist_recv[1]);
        		printf("%d \n", dist_recv[2]);
        		break;
        	}
        }	
        MPI_Barrier(MPI_COMM_WORLD);
    }
    else if(myrank == 1){
    	/* Send State */
    	for(int i =0; i<2; i++){
    		int x = i;
    		MPI_Request req1;
    		MPI_Isend(&x, 1, MPI_INT, 0, 0, MPI_COMM_WORLD, &req1);
    	}	
    	MPI_Barrier(MPI_COMM_WORLD);
    }
    else if(myrank == 2){
    	/* Send State */
    	for(int i =0; i<2; i++){
    		int x = 3*i;
    		MPI_Request req1;
    		MPI_Isend(&x, 1, MPI_INT, 0, 0, MPI_COMM_WORLD, &req1);
    	}
    	MPI_Barrier(MPI_COMM_WORLD);
    }

    /* cleanup */    
    MPI_Finalize();
}