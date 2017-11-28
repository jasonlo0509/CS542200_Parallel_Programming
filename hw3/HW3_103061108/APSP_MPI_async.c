/*
 * Time: 2017/11/26
 * Author: Yun Chen Lo
 * Purpose: Part III
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "mpi.h"

#define INF 999
#define WHITE 0
#define BLACK 1
#define CONT 1
#define DONE 0

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
    		int flag, flag_token;
    		int done, new_dist;
    		int token = WHITE;
    		int rank_pre, rank_post;
    		for(int i =0; i<vertex; i++){
    			weight[i] = map[v * vertex + i];
    			dist[i] = map[v * vertex + i];
    		}
    		if((myrank-1)%vertex<0){
    			rank_pre = (myrank-1)%vertex + vertex;
    		}
    		else{
    			rank_pre = (myrank-1)%vertex;
    		}
    		/* first send */
	    	for (int i = 0; i < vertex; i++){
				if (weight[i] != INF && i != v){ 
					MPI_Isend(&weight[i], 1, MPI_INT, i, v, MPI_COMM_WORLD, &req1);
				}
			}
			done = CONT;
			MPI_Send(&token, 1, MPI_INT, (myrank+1)%vertex, 2*vertex+v, MPI_COMM_WORLD);
			MPI_Barrier(MPI_COMM_WORLD);
			/* Read several times & send */
	    	while(done){
	    		/* Read State */
	    		
	    		flag = 1;
	    		while(flag == 1){
	    			MPI_Iprobe(MPI_ANY_SOURCE, v, MPI_COMM_WORLD, &flag, &status);
	    			if(flag == 1){
			    		int proc_num = status.MPI_SOURCE;
			    		MPI_Recv(&new_dist, 1, MPI_INT, proc_num, v, MPI_COMM_WORLD, &status);
			    		if(dist[proc_num] > new_dist){
			    			dist[proc_num] = new_dist;
			    		}
		    		}
	    		}
	    		/*
	    		for(int i =0; i<vertex; i++){
	    			MPI_Iprobe(i, v, MPI_COMM_WORLD, &flag, &status);
	    			if(flag == 1){
		    			int proc_num = status.MPI_SOURCE;
		    			MPI_Recv(&new_dist, 1, MPI_INT, proc_num, v, MPI_COMM_WORLD, &status);
		    			if(dist[proc_num] > new_dist){
		    				dist[proc_num] = new_dist;
		    			}
	    			}
	    		}
	    		*/
	    		MPI_Iprobe(rank_pre, 2*vertex +v, MPI_COMM_WORLD, &flag_token, &status);
	    			if(flag_token == 1){
    					MPI_Recv(&token, 1, MPI_INT, rank_pre, 2*vertex +v, MPI_COMM_WORLD, &status);
	    				if(token==WHITE)
	    					done = DONE;
	    				else{
	    					done = CONT;
	    					token = WHITE;
	    					MPI_Send(&token, 1, MPI_INT, (myrank+1)%vertex, 2*vertex+v, MPI_COMM_WORLD);
	    				}
		    		}
	    		
	    		MPI_Barrier(MPI_COMM_WORLD);
	    		MPI_Send(&done, 1, MPI_INT, (myrank+1)%vertex, 4*vertex+v, MPI_COMM_WORLD);
	    	}
	    	
	    	for(int i =0; i<vertex; i++){
	    		if(i != myrank)
    				MPI_Recv(&map[v * vertex + i], 1, MPI_INT, i, vertex+v , MPI_COMM_WORLD, &status);
    		}
    		
    		MPI_Barrier(MPI_COMM_WORLD);
    	}
    	else{ // other vertex
    		int dist, new_dist, dist_source, d;
    		int *weight = (int*)malloc(vertex * sizeof(int));
    		int done_recv = CONT, done;
    		int flag, flag_token;
    		int token=WHITE;
    		int activate;
    		int rank_pre;
       		MPI_Status status;
    		MPI_Request req1;
    		dist = INF;
    		for(int i =0; i<vertex; i++){
    			weight[i] = map[myrank * vertex + i];
       		}
       		
       		if((myrank-1)%vertex<0){
    			rank_pre = (myrank-1)%vertex + vertex;
    		}
    		else{
    			rank_pre = (myrank-1)%vertex;
    		}

    		/* Recv 1st token */
    		if(myrank == (v+1)%vertex){
    			MPI_Recv(&token, 1, MPI_INT, rank_pre, 2*vertex+v , MPI_COMM_WORLD, &status);
    			MPI_Send(&token, 1, MPI_INT, (myrank+1)%vertex, 2*vertex+v, MPI_COMM_WORLD);
    		}
    		/* Read several times & send */
    		MPI_Barrier(MPI_COMM_WORLD);
	    	while(done_recv){
	    		dist_source = vertex;
	    		activate = 0;
	    		/* Read State */
	    		
	    		flag = 1;
	    		while(flag == 1){
	    			MPI_Iprobe(MPI_ANY_SOURCE, v, MPI_COMM_WORLD, &flag, &status);
	    			if(flag ==1){
	    				int proc_num = status.MPI_SOURCE;
		    			MPI_Recv(&new_dist, 1, MPI_INT, proc_num, v, MPI_COMM_WORLD, &status);
		    			if(dist > new_dist){
		    				dist_source = proc_num;
		    				dist = new_dist;
		    				done = 0;
		    				activate = 1;
		    			}
	    			}
	    		}
	    		/*
	    		for(int i=0; i<vertex; i++){
	    			MPI_Iprobe(i, v, MPI_COMM_WORLD, &flag, &status);
	    			if(flag==1){
		    			int proc_num = status.MPI_SOURCE;
		    			MPI_Recv(&new_dist, 1, MPI_INT, proc_num, v, MPI_COMM_WORLD, &status);
		    			if(dist > new_dist){
		    				dist_source = proc_num;
		    				dist = new_dist;
		    				activate = 1;
		    			}
	    			}
	    		}
	    		*/
	    		MPI_Iprobe(rank_pre,  2*vertex +v, MPI_COMM_WORLD, &flag_token, &status);
	    		if(flag_token==1){
	    			MPI_Recv(&token, 1, MPI_INT, rank_pre, 2*vertex +v, MPI_COMM_WORLD, &status);
	    		}
	    		/* Send if receive new distance */
	    		if(activate ==1){
		    		for( int j=0; j<vertex; j++){
		    			if( j != myrank && weight[j] != INF && j != dist_source){
		    				d = weight[j] + dist;
		    				MPI_Isend(&d, 1, MPI_INT, j, v, MPI_COMM_WORLD, &req1);
		    				int j_modified, rank_modified;
		    				if((j-v)%vertex < 0)
		    					j_modified = (j-v)%vertex +vertex;
		    				else
		    					j_modified = (j-v)%vertex;
		    				if((myrank-v)%vertex < 0)
		    					rank_modified = (myrank-v)%vertex +vertex;
		    				else 
		    					rank_modified = (myrank-v)%vertex;

		    				if(j_modified<rank_modified){
		    					token = BLACK;
		    				}
		    			}
		    		}
		    	}
	    		if(flag_token==1){
	    			MPI_Send(&token, 1, MPI_INT, (myrank+1)%vertex, 2*vertex+v, MPI_COMM_WORLD);
	    		}
	    		MPI_Barrier(MPI_COMM_WORLD);
	    		MPI_Recv(&done_recv, 1, MPI_INT, rank_pre, 4*vertex +v, MPI_COMM_WORLD, &status);
	    		if(myrank != (v-1)%vertex){
	    			MPI_Send(&done_recv, 1, MPI_INT, (myrank+1)%vertex, 4*vertex +v, MPI_COMM_WORLD);
	    		}
	    	}
	    	MPI_Send(&dist, 1, MPI_INT, v, vertex+v, MPI_COMM_WORLD);
	    	MPI_Barrier(MPI_COMM_WORLD);
    	}
    }

    if(myrank ==0){
    	MPI_Status status;
    	for(int i=1; i<vertex; i++){
    		MPI_Recv(&map[i*vertex], vertex, MPI_INT, i, 3 * vertex, MPI_COMM_WORLD, &status);
    	}
   		/* Save the result */
    	saveSolution(map, vertex ,outfile);
    	MPI_Barrier(MPI_COMM_WORLD);
    }
    else{
    	MPI_Send(&map[myrank * vertex], vertex, MPI_INT, 0, 3 * vertex, MPI_COMM_WORLD);
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