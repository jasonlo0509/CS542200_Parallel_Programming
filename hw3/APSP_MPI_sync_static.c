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

    int vertex;
    int *map;

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

    for(int v=0; v < vertex; v++){
    	/* Root Vertex */ 
    	if(myrank == v){
    		/* Initilization */
    		MPI_Request req1;
    		MPI_Status status;
    		int *weight = (int*)malloc(vertex * sizeof(int));
    		int *dist = (int*)malloc(vertex * sizeof(int));
    		int flag;
    		int done_recv=0, done, new_dist;

    		for(int i =0; i<vertex; i++){
    			weight[i] = map[v * vertex + i];
    			dist[i] = map[v * vertex + i];
    		}
    		/* first send */
	    	for (int i = 0; i < vertex; i++){
				if (weight[i] != INF && i != v){ 
					MPI_Isend(&weight[i], 1, MPI_INT, i, v, MPI_COMM_WORLD, &req1);
				}
			}
			MPI_Barrier(MPI_COMM_WORLD);
			/* Read several times & send */
	    	while(done_recv != vertex){
	    		
	    		done = 1;
	    		/* Read State */
	    		for(int i =0; i<vertex; i++){
	    			MPI_Iprobe(i, v, MPI_COMM_WORLD, &flag, &status);
	    			if(flag == 1){
		    			int proc_num = status.MPI_SOURCE;
		    			MPI_Recv(&new_dist, 1, MPI_INT, proc_num, v, MPI_COMM_WORLD, &status);
		    			if(dist[proc_num] > new_dist){
		    				dist[proc_num] = new_dist;
		    				done = 0;
		    			}
	    			}
	    		}
	    		MPI_Allreduce(&done, &done_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
	    		MPI_Barrier(MPI_COMM_WORLD);
	    	}
	    	for(int i =0; i<vertex; i++){
	    		if(i != myrank){
    				MPI_Recv(&map[v * vertex + i], 1, MPI_INT, i, vertex+v , MPI_COMM_WORLD, &status);
	    		}
    		}

    		MPI_Barrier(MPI_COMM_WORLD);
    	}
    	else{ // other vertex
    		int dist, new_dist, dist_source, d;
    		int *weight = (int*)malloc(vertex * sizeof(int));
    		int done_recv=0, done;
    		int flag ;
       		MPI_Status status;
    		MPI_Request req1;
    		dist = INF;

    		for(int i =0; i<vertex; i++){
    			weight[i] = map[myrank * vertex + i];
       		}
       		
    		/* Read several times & send */
    		MPI_Barrier(MPI_COMM_WORLD);
	    	while(done_recv != vertex){
	    		done = 1;
	    		dist_source = vertex;
	    		/* Read State */
	    		for(int i=0; i<vertex; i++){
	    			MPI_Iprobe(i, v, MPI_COMM_WORLD, &flag, &status);
	    			if(flag==1){
		    			int proc_num = status.MPI_SOURCE;
		    			MPI_Recv(&new_dist, 1, MPI_INT, proc_num, v, MPI_COMM_WORLD, &status);
		    			if(dist > new_dist){
		    				dist_source = proc_num;
		    				dist = new_dist;
		    				done = 0;
		    			}
	    			}
	    		}
	    		MPI_Allreduce(&done, &done_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
	    		/* Send if receive new distance */
	    		for( int j=0; j<vertex; j++){
	    			if( j != myrank && weight[j] != INF && j != dist_source){
	    				d = weight[j] + dist;
	    				MPI_Isend(&d, 1, MPI_INT, j, v, MPI_COMM_WORLD, &req1);
	    			}
	    		}
	    		MPI_Barrier(MPI_COMM_WORLD);
	    	}
	    	MPI_Send(&dist, 1, MPI_INT, v, vertex+v, MPI_COMM_WORLD);
	    	MPI_Barrier(MPI_COMM_WORLD);
    	}
    }

    if(myrank ==0){
    	MPI_Status status;
    	for(int i=1; i<vertex; i++){
    		MPI_Recv(&map[i*vertex], vertex, MPI_INT, i, 2 * vertex, MPI_COMM_WORLD, &status);
    	}
    	
    	saveSolution(map, vertex ,outfile);
    	MPI_Barrier(MPI_COMM_WORLD);
    }
    else{
    	MPI_Send(&map[myrank * vertex], vertex, MPI_INT, 0, 2 * vertex, MPI_COMM_WORLD);
    	MPI_Barrier(MPI_COMM_WORLD);
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