/*
 * Time: 2017/11/23
 * Author: Yun Chen Lo
 * Purpose: Part II
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "mpi.h"

#define INF 999

void saveSolution(int *map, int vertex, const char* outfile);

int main(int argc, char** argv) {

	assert(argc == 4);
    const char* infile = argv[1];
    const char* outfile = argv[2];
	int num_proc = strtol(argv[3], 0, 10);

	/* MPI Declare */
    int nprocs;
    int myrank;

	/* Initialize MPI */
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
    MPI_Comm_rank(MPI_COMM_WORLD, &myrank);

    double total_IO_time = 0.0;
    double total_comm_time = 0.0;
    double total_isend_time = 0.0;
    double start, end;
    double send_time = 0.0, recv_time = 0.0, reduce_time = 0.0;
    double neibor_time = 0.0;
    double total_time = 0.0;
    int vertex;
    int *map;
    int num_iter=0;
    
    total_IO_time -= MPI_Wtime();
    total_time -= MPI_Wtime();
    if(myrank == 0){
    	start = MPI_Wtime();
	    /* Read in Adjacent Array*/
	    FILE * pFile;
		int in, counter=0;
		int i, j;
		int *dist;

		pFile = fopen ( infile , "r" );

		fscanf (pFile, "%d", &in);
		vertex = in;
	  	map = (int *)malloc((vertex*vertex)*sizeof(int));
	  	for(i=0; i<vertex; i++){
	  		for(j=0; j<vertex; j++){
	  			if(i!=j)
	  				map[vertex*i + j] = INF;
	  			else
	  				map[vertex*i + j] = 0;
	  		}
	  	}

	  	while (!feof (pFile))
	    {  
			fscanf (pFile, "%d", &in); 
			counter ++;
			if(counter > 1){
				if((counter-2) % 3 == 0){
					i=in;
				}
				else if ((counter-2) % 3 == 1 ){
					j=in;
				}
				else if((counter-2) % 3 == 2){
					map[vertex*i + j] = in;
					map[vertex*j + i] = in;
				}
	      	}
	    }
	    MPI_Bcast(&vertex, 1, MPI_INT, 0, MPI_COMM_WORLD);
	    MPI_Bcast(&map[0], vertex*vertex, MPI_INT, 0, MPI_COMM_WORLD);
	}
	else{
		MPI_Bcast(&vertex, 1, MPI_INT, 0, MPI_COMM_WORLD);
		map = (int *)malloc((vertex*vertex)*sizeof(int));
		MPI_Bcast(&map[0], vertex*vertex, MPI_INT, 0, MPI_COMM_WORLD);
	}
	int num_neighbor=0;
	int *weight = (int*)malloc(vertex * sizeof(int));
	for(int i =0; i<vertex; i++){
		weight[i] = map[myrank * vertex + i];
		if(weight[i]!=INF && i != myrank)
			num_neighbor++;
	}
	//printf("%d done\n", myrank);
	/*
	if(myrank == 1){
		for(int i =0; i<vertex; i++){
			for(int j =0; j<vertex ; j++){
				printf("%d ", map[vertex*i + j]);
			}
			printf("\n");
		}
	}
	*/
	MPI_Barrier(MPI_COMM_WORLD);
	for(int v=0; v < vertex; v++){
		if(myrank == v){
			MPI_Status status;
    		int dist;
    		int done_recv=0, done, new_dist;
    		
    		//printf("check\n");
    		while(done_recv != vertex){
	    		done = 1;
	    		for (int i = 0; i < vertex; i++){
					if (weight[i] < INF && i != v){ 
						MPI_Send(&weight[i], 1, MPI_INT, i, v, MPI_COMM_WORLD);
					}
				}
	    		MPI_Barrier(MPI_COMM_WORLD);
	    		for(int i =0; i<num_neighbor; i++){
		    		MPI_Recv(&new_dist, 1, MPI_INT, MPI_ANY_SOURCE, v, MPI_COMM_WORLD, &status);
	    		}
	    		MPI_Allreduce(&done, &done_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
	    		num_iter++;
	    	}
	    	for(int i =0; i<vertex; i++){
	    		if(i != myrank){
    				MPI_Recv(&map[myrank * vertex + i], 1, MPI_INT, i, vertex+v , MPI_COMM_WORLD, &status);
	    		}
    		}
		}
		else{
			MPI_Status status;
    		int dist = INF;
    		int done_recv=0, done, new_dist, d;
    		
    		//printf("before while\n");
    		while(done_recv != vertex){
	    		done = 1;
	    		for( int j=0; j<vertex; j++){
	    			if( j != myrank && weight[j] != INF){
	    				d = weight[j] + dist;
	    				MPI_Send(&d, 1, MPI_INT, j, v, MPI_COMM_WORLD);
	    			}
	    		}
	    		MPI_Barrier(MPI_COMM_WORLD);
	    		/* Read State */
	    		for(int i=0; i<num_neighbor; i++){
	    			MPI_Recv(&new_dist, 1, MPI_INT, MPI_ANY_SOURCE, v, MPI_COMM_WORLD, &status);
	    			if(dist > new_dist){
	    				dist = new_dist;
	    				done = 0;
	    			}
	    		}
	    		MPI_Allreduce(&done, &done_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
	    	}
	    	MPI_Send(&dist, 1, MPI_INT, v, vertex+v, MPI_COMM_WORLD);
		}
	}
	//printf("num_iter = %d\n",num_iter);
	if(myrank == 0){
		MPI_Status status;
		for(int i=1; i<vertex; i++){
    		MPI_Recv(&map[i*vertex], vertex, MPI_INT, i, 2 * vertex, MPI_COMM_WORLD, &status);
    	}
    	saveSolution(map, vertex ,outfile);
    	end = MPI_Wtime();
    	printf("%lf\n", end-start);
	}
	else{
		MPI_Send(&map[myrank * vertex], vertex, MPI_INT, 0, 2 * vertex, MPI_COMM_WORLD);
	}
	/* cleanup */    
    MPI_Finalize();
}

void saveSolution(int *map, int vertex, const char* outfile){
	int i, j;
	FILE *out;
	out=fopen(outfile, "w");
	for (i = 0; i <  vertex; i++){
		for (j = 0; j < vertex; j++){
			fprintf(out, "%d ", map[vertex*i + j]);
		}
		fprintf(out, "\n");
    }
    fclose(out);

}