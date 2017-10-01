/*
 * HW1 Odd Even Sort(Basic Version)
 * Edited by Yun-Chen Lo
 * ID:103061108
 */

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "mpi.h"

void swap(float *a ,float *b){
    	float tmp;
    	tmp = *a;
    	*a = *b;
    	*b = tmp;       
}

int main(int argc, char** argv){
	// 		0	1	2     3     4     5      6     7        8
	float array[] = {11.78, 0.33, 13.78, 1.78, 0.78, 7.78, 3.78, 20.78, 0.35,  2731.78, 293.78};
	
	int N = 11;
	float result[N];
	int phase, i, rc, rank, numtasks, num;
	//MPI_Status status;
	rc = MPI_Init(&argc, &argv);
	if(rc != MPI_SUCCESS){
		printf("Error starting MPI program. Terminating. \n");
		MPI_Abort(MPI_COMM_WORLD, rc);
	}
	MPI_Comm_size(MPI_COMM_WORLD, &numtasks);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	num = (int)ceil(N*1.0/numtasks);
	printf("%d", num);
	printf("Number of tasks = %d My rank = %d\n", numtasks, rank);
	if (rank == 0){
		MPI_Status status;
		MPI_Request req0;
		float temp[num+2], recv[2];
		for (i=0; i<num+2; i++){
                        temp[i] = array[i];
			//printf("%f ",temp[i]);
                }
		// Need to do N times odd even sort
		for (phase = 0; phase < N; phase++){
			if (phase != 0){
				MPI_Recv(&recv[0], 2, MPI_FLOAT, 1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
				temp[num]=recv[0];
				temp[num+1]=recv[1];
				printf("\n");
				printf("received data for process one : %f %f\n", recv[0], recv[1]);
			}
			// even case
			if (phase % 2 ==0){
				for(i = 0; i<num+2; i += 2){
					if(temp[i-1]>temp[i]){
						swap(&temp[i-1], &temp[i]);
					}
				}	
			}
			// odd case
			else{
				for(i = 0; i<num+1; i += 2){
					if(temp[i]>temp[i+1]){
						swap(&temp[i], &temp[i+1]);
					}
				}
			}
			MPI_Send(&temp[num-2], 2, MPI_FLOAT,1, 0, MPI_COMM_WORLD);
			//printf("\nphase = %d:\n", phase);
			//for (i=0; i<num+2; i++)
			//	printf("%f ", temp[i]);
			//printf("\n");
		}
		printf("First Process' result: ");
		for (i=0; i<num; i++){
			result[i] = temp[i];
			printf("%f ", result[i]);
		}
		printf("\n");
	}
	else if(rank == numtasks-1){
		MPI_Status status;
		MPI_Request req1;
		float temp1[N], recv[2];
		for (i=(numtasks-1)*num-2; i<N;i++){
			temp1[i] = array[i];
		}
		for (phase = 0; phase < N; phase++){
			if (phase != 0){
				MPI_Recv(&recv[0], 2, MPI_FLOAT, numtasks-2, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
				temp1[(numtasks-1)*num-2]=recv[0];
				temp1[(numtasks-1)*num-1]=recv[1];
				printf("Received data for process last:\n");
				printf("%f %f  \n", recv[0],recv[1]);
			}
			if (phase % 2 ==0){
				if ( (numtasks-1)*num %2 ==0  ){
					for (i = (numtasks-1)*num-2;i<N; i+=2 ){
						if(temp1[i-1]>temp1[i]){
							swap(&temp1[i-1], &temp1[i]);
						}
					}
				}
				else{
					for (i=(numtasks-1)*num-1; i<N; i += 2){
						if(temp1[i-1]>temp1[i]){
							swap(&temp1[i-1], &temp1[i]);
						}
					}
				}	
			}
			else{
				if((numtasks-1)*num % 2 !=0){
					for (i = (numtasks-1)*num-1; i<N-1; i+=2){
						if(temp1[i]>temp1[i+1]){
							swap(&temp1[i], &temp1[i+1]);
						}
					}
				}
				else{
					for (i = (numtasks-1)*num-2; i<N-1; i+=2){
						if(temp1[i]>temp1[i+1]){
							swap(&temp1[i], &temp1[i+1]);
						}
					}
				}
			}
			MPI_Send(&temp1[(numtasks-1)*num], 2, MPI_FLOAT,numtasks-2, 0, MPI_COMM_WORLD);
			printf("Second process data in phase = %d\n", phase);
			for (i=(numtasks-1)*num-2; i<N; i++)
				printf("%f ", temp1[i]);
			printf("\n");
		}
		printf("Last Processor's Result :");
		for(i=(numtasks-1)*num; i<N; i++){
			result[i]=temp1[i];
			printf("%f ", result[i]);
		}
		printf("\n");
	}
	// other processors' job
	else{
		MPI_Status status;
                float temp[N], recv_left[2], recv_right[2];
                for (i=rank*num-2; i<(rank+1)*num+2;i++){
                        temp[i] = array[i];
                }
		for (phase = 0; phase < N; phase++){
                        if (phase != 0){
                                MPI_Recv(&recv_left[0], 2, MPI_FLOAT, rank-1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
				MPI_Recv(&recv_right[0], 2, MPI_FLOAT, rank+1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
				temp[rank*num-2] = recv_left[0];
				temp[rank*num-1] = recv_left[1];
				temp[(rank+1)*num] = recv_right[0];
				temp[(rank+1)*num+1] = recv_right[1];
			}
			if(phase%2==0){
				if (rank*num % 2 == 0 ){
                                        for (i = rank*num-2;i<(rank+1)*num+2; i+=2 ){
                                                if(temp[i-1]>temp[i]){
                                                        swap(&temp[i-1], &temp[i]);
                                                }
                                        }
                                }
                                else{
                                        for (i = rank*num-1; i<(rank+1)*num+2; i += 2){
                                                if(temp[i-1]>temp[i]){
                                                        swap(&temp[i-1], &temp[i]);
                                                }
                                        }
                                }
			}
			else{
				if (rank*num % 2 !=0){
                                        for (i = rank*num-1; i<(rank+1)*num+1; i+=2){
                                                if(temp[i]>temp[i+1]){
                                                        swap(&temp[i], &temp[i+1]);
                                                }
                                        }
                                }
                                else{
                                        for (i = rank*num-2; i<(rank+1)*num+1; i+=2){
                                                if(temp[i]>temp[i+1]){
                                                        swap(&temp[i], &temp[i+1]);
                                                }
                                        }
                                }
			}
			MPI_Send(&temp[rank*num], 2, MPI_FLOAT, rank-1, 0, MPI_COMM_WORLD);
			MPI_Send(&temp[(rank+1)*num-2], 2, MPI_FLOAT, rank+1, 0, MPI_COMM_WORLD);
			//printf("Middle Process in phase %d : ", phase);
			//for(i = rank*num-2; i<(rank+1)*num+2; i++){
			//	printf("%f ", temp[i]);
			//}
			//printf("\n");
		}
		printf("Middle Process' Results: ");
		for (i=rank*num; i<(rank+1)*num; i++)
			printf("%f ", temp[i]);
		printf("\n");
	}
	MPI_Finalize();
	return 0;
}
