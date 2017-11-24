/*
 * Time: 2017/11/23
 * Author: Yun Chen Lo
 * Purpose: Part I
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#define INF 999

void floydWarshall (int *map, int vertice, int *dist, const char* outfile);

void printSolution(int *map, int vertice, const char* outfile);

void *Compare(void *dist);

int main(int argc, char** argv){
    /* argument parsing */
	assert(argc == 4);
    const char* infile = argv[1];
    const char* outfile = argv[2];
	int num_threads = strtol(argv[3], 0, 10);
	printf("num_threads = %d \n", num_threads);
	FILE * pFile;
	int in, counter=0, vertice;
	int i, j;
	int *map;
	int *dist;


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

    floydWarshall(map, vertice, dist, outfile);

  	fclose (pFile);

	return 0;
}

void floydWarshall (int *map, int vertice, int *dist, const char* outfile){
	
	int i, j, k;
	for (i = 0; i < vertice; i++)
        for (j = 0; j < vertice; j++)
            dist[i*vertice + j] = map[i*vertice + j];

    for (k = 0; k < vertice; k++)
    {
        for (i = 0; i < vertice; i++)
        {
            for (j = 0; j < vertice; j++)
            {
                if (dist[i*vertice + k] + dist[k*vertice + j] < dist[i*vertice + j])
                    dist[i*vertice + j] = dist[i*vertice + k] + dist[k*vertice + j];
            }
        }
    }
    printSolution(dist, vertice, outfile);
}

void *Compare(void *dist){
	int *dist_thread = (int *)dist;

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