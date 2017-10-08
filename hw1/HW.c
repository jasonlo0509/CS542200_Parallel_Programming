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
        int error, phase, i, rc, rank, numtasks, num;
        MPI_Offset    N;
	    MPI_File      fh, out;
	    MPI_Status status;
        rc = MPI_Init(&argc, &argv);
        if(rc != MPI_SUCCESS){
            printf("Error starting MPI program. Terminating. \n");
            MPI_Abort(MPI_COMM_WORLD, rc);
        }
        MPI_Comm_size(MPI_COMM_WORLD, &numtasks);
        MPI_Comm_rank(MPI_COMM_WORLD, &rank);
        if(argc != 3)
            return 1;
        MPI_File_open(MPI_COMM_WORLD, argv[1], MPI_MODE_RDONLY, MPI_INFO_NULL, &fh);
        MPI_File_get_size(fh, &N);
        
        num = (int)ceil(N*1.0/numtasks); // # of bytes
        
        int start, end;
        start = num * rank;
        if (rank == numtasks-1)
            end = N;
    	else
        	end = start + num;
        fprintf(stdout, "Proc %d: range = [%d, %d)\n", rank, start, end);
        // The first process
        if (rank == 0){
                MPI_Status status;
                MPI_Request req0;
                int stop, stop_recv;
                float *temp, *recv;
                temp = (float*)malloc((end - start+8)*sizeof(float));
                recv = (float*)malloc(2*sizeof(float));
                MPI_File_seek(fh, start, MPI_SEEK_SET);
                MPI_File_read(fh, temp, end-start+8, MPI_BYTE, &status);
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
                                MPI_File_open(MPI_COMM_WORLD, argv[2],
                                    MPI_MODE_WRONLY|MPI_MODE_CREATE, MPI_INFO_NULL, &out);
                                MPI_File_write_at(out, start, temp, end-start, MPI_BYTE, &status);
                                MPI_Barrier(MPI_COMM_WORLD);
                        }

                        printf("\nphase = %d:\n", phase);
                        for (i=0; i<num+2; i++)
                                printf("%f ", temp[i]);
                        printf("\n");
                }
                free(temp);
        }
        else if(rank == numtasks-1){
                //MPI_Status status;
                MPI_Request req1;
                int stop_recv, stop, all[numtasks];
                float *temp, *recv;
                temp = (float*)malloc((end-start+8)*sizeof(float));
                recv = (float*)malloc(2*sizeof(float));
                MPI_File_seek(fh, start-8, MPI_SEEK_SET);
                MPI_File_read(fh, temp, end-start+8, MPI_BYTE, &status);
                for (phase = 0; phase < (int)N/2 && stop_recv !=numtasks; phase++){
                        stop = 1;
                        stop_recv = 0;
                        if (phase != 0){
                                MPI_Recv(&recv[0], 2, MPI_FLOAT, numtasks-2, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                                temp[(numtasks-1)*num-2]=recv[0];
                                temp[(numtasks-1)*num-1]=recv[1];
                                printf("Received data for process last:\n");
                                printf("%f %f  \n", recv[0],recv[1]);
                        }
                        if ( (numtasks-1)*num %2 ==0  ){
                                // even swap
                                for (i = (numtasks-1)*num;i<N; i+=2 ){
                                        if(temp[i-1]>temp[i]){
                                                swap(&temp[i-1], &temp[i]);
                                                stop = 0;
                                        }
                                }
                                // odd swap
                                for (i = (numtasks-1)*num-2; i<N-1; i+=2){
                                        if(temp[i]>temp[i+1]){
                                                swap(&temp[i], &temp[i+1]);
                                                stop = 0;
                                        }
                                }
                        }
                        else{
                                // even swap
                                for (i=(numtasks-1)*num-1; i<N; i += 2){
                                        if(temp[i-1]>temp[i]){
                                                swap(&temp[i-1], &temp[i]);
                                                stop = 0;
                                        }
                                }
                                // odd swap
                                for (i = (numtasks-1)*num-1; i<N-1; i+=2){
                                        if(temp[i]>temp[i+1]){
                                                swap(&temp[i], &temp[i+1]);
                                                stop = 0;
                                        }
                                }
                        }
                        MPI_Send(&temp[(numtasks-1)*num], 2, MPI_FLOAT,numtasks-2, 0, MPI_COMM_WORLD);
                        MPI_Barrier(MPI_COMM_WORLD);
                        MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
                        if(stop_recv==numtasks || phase == (int)N/2-1){
                                MPI_File_open(MPI_COMM_WORLD, argv[2],
                                    MPI_MODE_WRONLY|MPI_MODE_CREATE, MPI_INFO_NULL, &out);
                                MPI_File_write_at(out, start-8, temp, end-start+8, MPI_BYTE, &status);
                                MPI_Barrier(MPI_COMM_WORLD);
                        }
                        printf("Second process data in phase = %d\n", phase);
                        for (i=(numtasks-1)*num-2; i<N; i++)
                                printf("%f ", temp[i]);
                        printf("\n");
                }
                free(temp);
        }
        // Middle processors' job
        else{
                MPI_Status status;
                int stop, stop_recv;
                float *temp, *recv_left, *recv_right;
                temp = (float*)malloc((end-start+16)*sizeof(float));
                recv_left = (float*)malloc(2*sizeof(float));
                recv_right = (float*)malloc(2*sizeof(float));
                MPI_File_seek(fh, start-8, MPI_SEEK_SET);
                MPI_File_read(fh, temp, end-start+16, MPI_BYTE, &status);
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
                                MPI_File_open(MPI_COMM_WORLD, argv[2],
                                    MPI_MODE_WRONLY|MPI_MODE_CREATE, MPI_INFO_NULL, &out);
                                MPI_File_write_at(out, start-8, temp, end-start+16, MPI_BYTE, &status);
                                MPI_Barrier(MPI_COMM_WORLD);
                        }
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
                free(temp);
        }
        MPI_File_close(&fh);
        MPI_File_close(&out);
        MPI_Finalize();
        return 0;
}