/*
 * Time: 2017/11/30
 * Author: Yun Chen Lo
 * Purpose: Part III
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "mpi.h"

#define INF 999
#define WHITE 1
#define BLACK 0

#define TRUE 1
#define FALSE 0


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
    int num_iter=0;
    double probe_time=0.0;
    double total_time=0.0;
    total_time -= MPI_Wtime();
    if(myrank == 0){
        /* Read in Adjacent Array*/
        FILE * pFile;
        int in, counter=0;
        int i, j;
        

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
    int rank_pre, rank_post;
    rank_post = (myrank+1)%vertex;
    if((myrank-1)%vertex<0){
        rank_pre = (myrank-1)%vertex + vertex;
    }
    else{
        rank_pre = (myrank-1)%vertex;
    }

    for(int v=0; v < vertex; v++){
        if(myrank == v){ // root
            MPI_Status status;
            MPI_Request req;
            int token = WHITE;
            int terminate = FALSE;
            int new_dist;
            int dist;
            int garbage;
            int breaker = TRUE;
            /* Send first dist and token */
            for (int i = 0; i < vertex; i++){
                if (weight[i] != INF && i != v){ 
                    MPI_Send(&weight[i], 1, MPI_INT, i, v, MPI_COMM_WORLD);
                }
            }
            MPI_Send(&token, 1, MPI_INT, rank_post, vertex+v, MPI_COMM_WORLD);
            MPI_Send(&breaker, 1, MPI_INT, rank_pre, 5*vertex+v, MPI_COMM_WORLD);
            MPI_Send(&breaker, 1, MPI_INT, (rank_pre + vertex/2)%vertex, 6*vertex+v, MPI_COMM_WORLD);
            while(1){
                /* probe */
                MPI_Probe(MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                int source = status.MPI_SOURCE;
                int tag = status.MPI_TAG;
                /* dist */ 
                if(tag == v){
                    MPI_Recv(&new_dist, 1, MPI_INT, source, tag, MPI_COMM_WORLD, &status);
                }
                else if(tag == vertex + v){ /* token */
                    MPI_Recv(&token, 1, MPI_INT, source, tag, MPI_COMM_WORLD, &status);
                    if(token == BLACK){
                        token = WHITE;
                        MPI_Send(&token, 1, MPI_INT, rank_post, vertex+v, MPI_COMM_WORLD);
                    }
                    else{
                        terminate = TRUE;
                        MPI_Send(&terminate, 1, MPI_INT, rank_post, 2*vertex+v, MPI_COMM_WORLD);
                        break;
                    }
                }
                else if(tag == 5*vertex + v || tag == 6*vertex + v){ /* breaker */
                    MPI_Recv(&breaker, 1, MPI_INT, source, tag, MPI_COMM_WORLD, &status);
                    MPI_Send(&breaker, 1, MPI_INT, rank_pre, tag, MPI_COMM_WORLD);
                }
                else{
                    MPI_Recv(&garbage, 1, MPI_INT, source, tag, MPI_COMM_WORLD, &status);
                }
            }
            MPI_Barrier(MPI_COMM_WORLD);
            for(int i =0; i<vertex; i++){
                if(i != myrank){
                    MPI_Recv(&map[myrank * vertex + i], 1, MPI_INT, i, 3*vertex+v , MPI_COMM_WORLD, &status);
                }
            }
        }
        else{ // others
            int activate = FALSE;
            int token;
            int new_dist;
            int dist = INF;
            int terminate;
            int garbage;
            MPI_Status status;
            int d;
            int breaker;
            int source_id = vertex;
            while(1){
                /* probe */
                MPI_Probe(MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                int source = status.MPI_SOURCE;
                int tag = status.MPI_TAG;
                if(tag == v){
                    MPI_Recv(&new_dist, 1, MPI_INT, source, tag, MPI_COMM_WORLD, &status);
                    if(dist > new_dist){
                        dist = new_dist;
                        activate = TRUE;
                        source_id = source;
                    }
                }
                else if(tag == vertex + v){  /* token */
                    MPI_Recv(&token, 1, MPI_INT, source, tag, MPI_COMM_WORLD, &status);
                    if(activate == TRUE){
                        for( int j=0; j<vertex; j++){
                            if( j != myrank && weight[j] != INF && source_id != j){
                                d = weight[j] + dist;
                                MPI_Send(&d, 1, MPI_INT, j, v, MPI_COMM_WORLD);
                            }
                        }
                    }
                    if(activate == TRUE){
                        token = BLACK;
                        activate = FALSE;
                    }
                    MPI_Send(&token, 1, MPI_INT, rank_post, vertex + v, MPI_COMM_WORLD);
                }
                else if(tag == 2*vertex+v){
                    MPI_Recv(&terminate, 1, MPI_INT, source, tag, MPI_COMM_WORLD, &status);
                    MPI_Send(&terminate, 1, MPI_INT, rank_post, 2*vertex + v, MPI_COMM_WORLD);
                    break;
                }
                else if(tag == 5*vertex+v || tag == 6*vertex+v){
                    MPI_Recv(&breaker, 1, MPI_INT, source, tag, MPI_COMM_WORLD, &status);
                    if(activate==TRUE){
                        for( int j=0; j<vertex; j++){
                            if( j != myrank && weight[j] != INF && source_id != j){
                                d = weight[j] + dist;
                                MPI_Send(&d, 1, MPI_INT, j, v, MPI_COMM_WORLD);
                            }
                        }
                    }
                    MPI_Send(&breaker, 1, MPI_INT, rank_pre, tag, MPI_COMM_WORLD);
                }
                else{
                    MPI_Recv(&garbage, 1, MPI_INT, source, tag, MPI_COMM_WORLD, &status);
                }
            }
            MPI_Barrier(MPI_COMM_WORLD);
            MPI_Send(&dist, 1, MPI_INT, v, 3*vertex+v, MPI_COMM_WORLD);
        }
    }
    /* Save Data */
    if(myrank == 0){
        MPI_Status status;
        for(int i=1; i<vertex; i++){
            MPI_Recv(&map[i*vertex], vertex, MPI_INT, i, 4 * vertex, MPI_COMM_WORLD, &status);
        }
        saveSolution(map, vertex ,outfile);
    }
    else{
        MPI_Send(&map[myrank * vertex], vertex, MPI_INT, 0, 4 * vertex, MPI_COMM_WORLD);
    }
    total_time += MPI_Wtime();
    //printf("total_time:%lf\n", total_time);
    //printf("idle time: %lf \n", probe_time);
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
