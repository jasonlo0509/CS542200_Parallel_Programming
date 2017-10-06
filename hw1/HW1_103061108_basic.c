/*
 * HW1 Odd Even Sort(Basic Version)
 * Edited by Yun-Chen Lo
 * ID:103061108
 */
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <sys/stat.h>
#include <sys/types.h>
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
        int phase, i, rc, rank, numtasks, num;
        //MPI_Status status;
        if(argc != 2)
        return 1;

        struct stat fileStat;
        int file = open(argv[1],O_RDONLY);
        fstat(file,&fileStat);

        FILE *input= fopen(argv[1],"rb");
        int  k, N=fileStat.st_size/4;
        float *array, *result;
        array = (float*)malloc(N*sizeof(float));
        fread(array, sizeof(float), N, input);
        //float array[N], result[N], temp;
        //fread((void*)(&array), sizeof(array), fileStat.st_size, input);
        printf("Information for %s\n",argv[1]);
        printf("---------------------------\n");
        printf("File Size: \t\t%d bytes\n",fileStat.st_size);

        printf("the initial data \n");
        for(i=0; i<N; i++)
                printf("%f ", array[i]);
        rc = MPI_Init(&argc, &argv);
        if(rc != MPI_SUCCESS){
                printf("Error starting MPI program. Terminating. \n");
                MPI_Abort(MPI_COMM_WORLD, rc);
        }
        MPI_Comm_size(MPI_COMM_WORLD, &numtasks);
        MPI_Comm_rank(MPI_COMM_WORLD, &rank);
        // num: # of elements processors handle(except final processor)
        num = (int)ceil(N*1.0/numtasks);
        printf("%d", num);
        printf("Number of tasks = %d My rank = %d\n", numtasks, rank);
        // The first process
        if (rank == 0){
                MPI_Status status;
                MPI_Request req0;
                int stop, stop_recv;
                float *temp, *recv;
                temp = (float*)malloc((num+2)*sizeof(float));
                recv = (float*)malloc(2*sizeof(float));
                //float temp[num+2], recv[2];
                for (i=0; i<num+2; i++){
                        temp[i] = array[i];
                        //printf("%f ",temp[i]);
                }
                // Need to do N times odd even sort
                for (phase = 0; phase < (int)N/2 && stop_recv != numtasks; phase++){
                        stop = 1;
                        stop_recv=0;
                        if (phase != 0){
                                MPI_Recv(&recv[0], 2, MPI_FLOAT, 1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                                temp[num]=recv[0];
                                temp[num+1]=recv[1];
                                printf("\n");
                                printf("received data for process one : %f %f\n", recv[0], recv[1]);
                        }
                        // even swap(first process)
                        for(i = 2; i<num+2; i += 2){
                                if(temp[i-1]>temp[i]){
                                        swap(&temp[i-1], &temp[i]);
                                        stop = 0;
                                }
                        }
                        // odd swap(first process)
                        for(i = 0; i<num+1; i += 2){
                                if(temp[i]>temp[i+1]){
                                        swap(&temp[i], &temp[i+1]);
                                        stop = 0;
                                }
                        }
                        MPI_Send(&temp[num-2], 2, MPI_FLOAT,1, 0, MPI_COMM_WORLD);
                        MPI_Barrier(MPI_COMM_WORLD);
                        MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
                        if(stop_recv==numtasks || phase == (int)N/2-1){
                                MPI_Send(&temp[0], num, MPI_FLOAT, numtasks-1, 1, MPI_COMM_WORLD);
                        }
                        /*MPI_Send(&stop, 1, MPI_INT, numtasks-1, 0, MPI_COMM_WORLD);
                        MPI_Recv(&stop_recv, 1, MPI_INT, numtasks-1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                        */
                        printf("\nphase = %d:\n", phase);
                        for (i=0; i<num+2; i++)
                                printf("%f ", temp[i]);
                        printf("\n");
                }
                /*printf("First Process' result: ");
                for (i=0; i<num; i++){
                        result[i] = temp[i];
                        printf("%f ", result[i]);
                }
                printf("\n");*/
                //MPI_Send(&result[0], num, MPI_FLOAT, numtasks-1, 0, MPI_COMM_WORLD);
        }
        else if(rank == numtasks-1){
                MPI_Status status;
                MPI_Request req1;
                int stop_recv, stop, all[numtasks];
                float *temp1, *recv, *final, *tmp;
                temp1 = (float*)malloc(N*sizeof(float));
                recv = (float*)malloc(2*sizeof(float));
                final = (float*)malloc(N*sizeof(float));
                //float temp1[N], recv[2], final[N], tmp[num];
                for (i=(numtasks-1)*num-2; i<N;i++){
                        temp1[i] = array[i];
                }
                for (phase = 0; phase < (int)N/2 && stop_recv !=numtasks; phase++){
                        stop = 1;
                        stop_recv = 0;
                        if (phase != 0){
                                MPI_Recv(&recv[0], 2, MPI_FLOAT, numtasks-2, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                                //MPI_Barrier(MPI_COMM_WORLD);
                                temp1[(numtasks-1)*num-2]=recv[0];
                                temp1[(numtasks-1)*num-1]=recv[1];
                                printf("Received data for process last:\n");
                                printf("%f %f  \n", recv[0],recv[1]);
                        }
                        if ( (numtasks-1)*num %2 ==0  ){
                                // even swap
                                for (i = (numtasks-1)*num;i<N; i+=2 ){
                                        if(temp1[i-1]>temp1[i]){
                                                swap(&temp1[i-1], &temp1[i]);
                                                stop = 0;
                                        }
                                }
                                // odd swap
                                for (i = (numtasks-1)*num-2; i<N-1; i+=2){
                                        if(temp1[i]>temp1[i+1]){
                                                swap(&temp1[i], &temp1[i+1]);
                                                stop = 0;
                                        }
                                }
                        }
                        else{
                                // even swap
                                for (i=(numtasks-1)*num-1; i<N; i += 2){
                                        if(temp1[i-1]>temp1[i]){
                                                swap(&temp1[i-1], &temp1[i]);
                                                stop = 0;
                                        }
                                }
                                // odd swap
                                for (i = (numtasks-1)*num-1; i<N-1; i+=2){
                                        if(temp1[i]>temp1[i+1]){
                                                swap(&temp1[i], &temp1[i+1]);
                                                stop = 0;
                                        }
                                }
                        }
                        MPI_Send(&temp1[(numtasks-1)*num], 2, MPI_FLOAT,numtasks-2, 0, MPI_COMM_WORLD);
                        MPI_Barrier(MPI_COMM_WORLD);
                        MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
                        if(stop_recv==numtasks || phase == (int)N/2-1){
                                for(i = 0;i < numtasks-1; i++){
                                        MPI_Recv(&temp1[i*num], num, MPI_FLOAT, i, 1, MPI_COMM_WORLD, &status);
                                }
                                printf("Final Answer:");
                                for(i = 0; i<N; i++){
                                        printf("%f ", temp1[i]);
                                }
                                printf("\n");
                        }
                        printf("Second process data in phase = %d\n", phase);
                        for (i=(numtasks-1)*num-2; i<N; i++)
                                printf("%f ", temp1[i]);
                        printf("\n");
                }
                /*printf("Last Processor's Result :");
                for(i=(numtasks-1)*num; i<N; i++){
                        result[i]=temp1[i];
                        final[i]=temp1[i];
                        printf("%f ", result[i]);
                }
                printf("\n");
                for(i = 0;i < numtasks-1; i++){
                        MPI_Recv(&tmp[0], num, MPI_FLOAT, i, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                        for (int k =0; k<num; k++){
                                final[num*i+k] = tmp[k];
                                printf("tmp[%d] = %f \n", k, tmp[k]);
                        }
                }
                printf("Final answer: \n");
                for(i = 0; i<N; i++){
                        printf("%f ", final[i]);
                }
                printf("\n");*/
        }
        // Middle processors' job
        else{
                MPI_Status status;
                int stop, stop_recv;
                //float *temp, *recv_left, *recv_right;
                //temp = (float*)malloc((num+2)*sizeof(float));
                //recv = (float*)malloc(2*sizeof(float));
                float temp[N], recv_left[2], recv_right[2];
                for (i=rank*num-2; i<(rank+1)*num+2;i++){
                        temp[i] = array[i];
                }
                for (phase = 0; phase < (int)N/2 && stop_recv != numtasks; phase++){
                        stop = 1;
                        stop_recv =0;
                        if (phase != 0){
                                MPI_Recv(&recv_left[0], 2, MPI_FLOAT, rank-1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                                MPI_Recv(&recv_right[0], 2, MPI_FLOAT, rank+1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                                temp[rank*num-2] = recv_left[0];
                                temp[rank*num-1] = recv_left[1];
                                temp[(rank+1)*num] = recv_right[0];
                                temp[(rank+1)*num+1] = recv_right[1];
                        }
                        if (rank*num % 2 == 0 ){
                                // even swap(middle process)
                                for (i = rank*num;i<(rank+1)*num+2; i+=2 ){
                                    if(temp[i-1]>temp[i]){
                                                swap(&temp[i-1], &temp[i]);
                                                stop = 0;
                                        }
                                }
                                // odd swap(middle process)
                                for (i = rank*num-2; i<(rank+1)*num+1; i+=2){
                                        if(temp[i]>temp[i+1]){
                                                swap(&temp[i], &temp[i+1]);
                                                stop = 0;
                                        }
                                }
                        }
                        else{
                                // even swap(middle process)
                                for (i = rank*num-1; i<(rank+1)*num+2; i += 2){
                                        if(temp[i-1]>temp[i]){
                                                swap(&temp[i-1], &temp[i]);
                                                stop = 0;
                                        }
                                }
                                // odd swap(middle process)
                                for (i = rank*num-1; i<(rank+1)*num+1; i+=2){
                                        if(temp[i]>temp[i+1]){
                                                swap(&temp[i], &temp[i+1]);
                                                stop = 0;
                                        }
                                }
                        }
                        // share array data
                        MPI_Send(&temp[rank*num], 2, MPI_FLOAT, rank-1, 0, MPI_COMM_WORLD);
                        MPI_Send(&temp[(rank+1)*num-2], 2, MPI_FLOAT, rank+1, 0, MPI_COMM_WORLD);
                        MPI_Barrier(MPI_COMM_WORLD);
                        MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
                        if(stop_recv==numtasks || phase == (int)N/2-1){
                                MPI_Send(&temp[rank*num], num, MPI_FLOAT, numtasks-1, 1, MPI_COMM_WORLD);
                        }
                        // share continue or not
                        /*MPI_Send(&stop, 1, MPI_INT, numtasks-1, 0, MPI_COMM_WORLD);
                        MPI_Recv(&stop_recv, 1, MPI_INT, numtasks-1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                        */
                        printf("Middle Process in phase %d : ", phase);
                        for(i = rank*num-2; i<(rank+1)*num+2; i++){
                                printf("%f ", temp[i]);
                        }
                        printf("\n");
                }
                printf("Middle Process' Results: ");
                for (i=rank*num; i<(rank+1)*num; i++)
                        printf("%f ", temp[i]);
                printf("\n");
        }
        //free(array);
        MPI_Finalize();
        return 0;
}
