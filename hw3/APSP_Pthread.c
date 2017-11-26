/*
 * Time: 2017/11/23
 * Author: Yun Chen Lo
 * Purpose: Part I
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <pthread.h>

#define INF 999

typedef struct {
    int *addr;
    int l_start, l_end;
    int vertice;
    int k;
    int id;
}data;

void floydWarshall (int *map, int vertice, int *dist, const char* outfile, int num_threads);

void printSolution(int *map, int vertice, const char* outfile);

void *Compare(void *data_tmp);

int main(int argc, char** argv){
    /* argument parsing */
	assert(argc == 4);
    const char* infile = argv[1];
    const char* outfile = argv[2];
	int num_threads = strtol(argv[3], 0, 10);
	FILE * pFile;
	int in, counter=0, vertice;
	int i, j;
	int *map;
	int *dist;

    /*error handling*/
    if(num_threads<vertice*vertice)
        num_threads = vertice;

	pFile = fopen ( infile , "r" );

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
    floydWarshall(map, vertice, dist, outfile, num_threads);

  	fclose (pFile);

	return 0;
}

void floydWarshall (int *map, int vertice, int *dist, const char* outfile, int num_threads){
	int tid, i, j, k;
	for (i = 0; i < vertice; i++)
        for (j = 0; j < vertice; j++)
            dist[i*vertice + j] = map[i*vertice + j];

    
    data data_tmp[num_threads];
    for (k = 0; k < vertice; k++)
    {
        pthread_t threads[num_threads];
        for(tid=0; tid<num_threads; tid++){
            data_tmp[tid].addr = dist;
            data_tmp[tid].l_start = (vertice*vertice/num_threads)*tid;
            data_tmp[tid].vertice = vertice;
            data_tmp[tid].k = k;
            data_tmp[tid].id = tid;
            if(tid == num_threads-1){
                data_tmp[tid].l_end = vertice*vertice;
            }
            else{
                data_tmp[tid].l_end = (vertice*vertice/num_threads)*(tid+1);
            }
            
            pthread_create(&threads[tid], NULL, Compare, (void *)&data_tmp[tid]);
        }
        for(int tid=0; tid<num_threads; tid++){
            pthread_join(threads[tid], NULL);
        }   

    }

    printSolution(dist, vertice, outfile);
    pthread_exit(NULL);
    
}

void *Compare(void *data_tmp){
    
	data *data_thread = (data *)data_tmp;
    int *dist;
    dist = data_thread->addr;

    int l, i, j, k, vertice;
    k = data_thread->k;
    vertice = data_thread->vertice;
    for(l=data_thread->l_start; l<data_thread->l_end; l++){
        i=l/vertice;
        j=l%vertice;
        if (dist[i*vertice + k] + dist[k*vertice + j] < dist[i*vertice + j])
            dist[i*vertice + j] = dist[i*vertice + k] + dist[k*vertice + j];
    }
    pthread_exit(NULL); 
}

void printSolution(int *dist, int vertice, const char* outfile){
	int i, j;
	FILE *out;
	out=fopen(outfile, "w");
	for (i = 0; i <  vertice; i++){
      for (j = 0; j < vertice; j++){
         fprintf(out, "%d ", dist[vertice*i + j]);
      }
      fprintf(out, "\n");
    }
    fclose(out);

}