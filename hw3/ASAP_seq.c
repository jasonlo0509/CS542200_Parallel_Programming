/*
 * Time: 2017/11/22
 * Author: Yun Chen Lo
 * Purpose: Test ASAP loop logic and IO.
 */

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#define INF 999

typedef struct {
    int id;
    int k;
    int *map_addr;
    int vertice;
}pthread_asap;

void floydWarshall (int *map, int vertice, int *dist, int num_threads);

void printSolution(int *map, int vertice);

void *Compare(void *dist);

int main(int argc, char** argv){
	FILE * pFile;
	int num_threads = strtol(argv[1], 0, 10);
	int in, counter=0, vertice;
	int i, j;
	int *map;
	int *dist;


	pFile = fopen ( "3.in" , "r" );

	fscanf (pFile, "%d", &in);
	vertice = in;
  	map = (int *)malloc((vertice*vertice)*sizeof(int));
  	dist = (int *)malloc((vertice*vertice)*sizeof(int));
  	for(i=0; i<vertice; i++){
  		for(j=0; j<vertice; j++){
  			if(i!=j)
  				map[vertice*i + j] = INF;
  		}
  	}
  	while (!feof (pFile))
    {  
		fscanf (pFile, "%d", &in); 
		counter ++;
		if(counter > 2){
			if((counter-2) % 3 == 0){
				i=in;
			}
			else if ((counter-2) % 3 == 1 ){
				j=in;
			}
			else if((counter-2) % 3 == 2){
				map[vertice*i + j] = in;
				map[vertice*j + i] = in;
			}
      }

    }
    printf("hello");
    floydWarshall(map, vertice, dist, num_threads);

  	fclose (pFile);

	return 0;
}

void floydWarshall (int *map, int vertice, int *dist, int num_threads){
	
	int i, j, k;
	pthread_t ts[num_threads];
	pthread_asap pass_data[num_threads];
	for (i = 0; i < vertice; i++)
        for (j = 0; j < vertice; j++)
            dist[i*vertice + j] = map[i*vertice + j];

    for (k = 0; k < vertice; k++)
    {
    	for(i = 0; i< num_threads; i++){
    		pass_data[i].map_addr = dist;
    		pass_data[i].id = i;
    		pass_data[i].k = k;
    		pass_data[i].vertice = vertice;
    		pthread_create(&ts[i], NULL, Compare, (void *)&pass_data[i]);
    	}

    }
    pthread_exit(NULL);
    printSolution(dist, vertice);
}

void *Compare(void *dist){
	pthread_asap *dist_thread = (pthread_asap *)dist;
	int k, id, *dist_local, vertice;
	k = dist_thread->k;
	id = dist_thread->id;
	dist_local = dist_thread->map_addr;
	vertice = dist_thread->vertice;
	printf("hello");
	for (int i = 0; i < vertice; i++)
    {
        for (int j = 0; j < vertice; j++)
        {
            if (dist_local[i*vertice + k] + dist_local[k*vertice + j] < dist_local[i*vertice + j])
                dist_local[i*vertice + j] = dist_local[i*vertice + k] + dist_local[k*vertice + j];
        }
    }
    pthread_exit(NULL);
}

void printSolution(int *dist, int vertice){
	int i, j;
	FILE *out;
	out=fopen("out.out", "w");
	for (i = 0; i <  vertice; i++){
      for (j = 0; j < vertice; j++){
         fprintf(out, "%d ", dist[vertice*i + j]);
      }
      fprintf(out, "\n");
    }
    fclose(out);

}