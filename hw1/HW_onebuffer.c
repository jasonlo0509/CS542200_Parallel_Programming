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

void ErrorMessage(int error, int rank, char* string)
  {
          fprintf(stderr, "Process %d: Error %d in %s\n", rank, error, string);
          MPI_Finalize();
          exit(-1);
  }
int main(int argc, char** argv){

    int start, end, start_save, end_save, phase, stop_recv, stop, i;
    int length;
    int error;
    float* buffer;
    int nprocs;
    int myrank;
    MPI_Status    status;
    MPI_File      fh, out;
    MPI_Offset    filesize;
    MPI_Request   req;

    if (argc != 3)
    {
          fprintf(stderr, "Usage: %s FileToRead FileToWrite\n", argv[0]);
          exit(-1);
    }

    /* Initialize MPI */
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
    MPI_Comm_rank(MPI_COMM_WORLD, &myrank);

    /* Open file to read */
    error = MPI_File_open(MPI_COMM_WORLD, argv[1],
                  MPI_MODE_RDONLY, MPI_INFO_NULL, &fh);
    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_open");

    /* Get the size of file */
    error = MPI_File_get_size(fh, &filesize);
    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_get_size");

    /* calculate the range for each process to read */
    length = (int)(floor(filesize*1.0 / nprocs/4.0));
    start = length * myrank * 4;
    start_save = length * myrank * 4;
    end_save = start + length*4;
    if(nprocs==1){
        end_save = filesize;
        end = end_save;
        start = start_save;
    }
    else if (myrank == nprocs-1 && nprocs>1){
        end_save = filesize;
        end = filesize;
      	start -= 4;
    }
    else if(myrank == 0 && nprocs>1){
    	end = start + (length+1)*4;
    }
    else{
    	start -= 4;
        end = start + (length+2)*4;//-2;
    }
    fprintf(stdout, "Proc %d: range = [%d, %d)\n", myrank, start, end);

    /* Allocate space */
    buffer = (float *)malloc((end - start) * sizeof(float));
    if (buffer == NULL) ErrorMessage(-1, myrank, "malloc");

    /* Each process read in data from the file */
    MPI_File_seek(fh, start, MPI_SEEK_SET);
    error = MPI_File_read(fh, buffer, end-start, MPI_BYTE, &status);
    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_read");
    for (int i=0; i<(end-start)/4; i++){
    	printf("%f ", buffer[i]);
    }printf("\n");
    /* close the file */
    MPI_File_close(&fh);

    /* Open file to write */
    error = MPI_File_open(MPI_COMM_WORLD, argv[2],
                  MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &out);
    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_open");

    if(nprocs==1){
        end = end_save;
        start = start_save;
        for (phase = 0; phase < (int)(filesize/4) && stop != 1; phase++){
            stop = 1;
            printf("(last)phase = %d\n", phase);
            if(phase%2==0){
                // even swap
                for (i = 0; i<(end-start)/4-1; i+=2){
                    if(buffer[i]>buffer[i+1]){
                        swap(&buffer[i], &buffer[i+1]);
                        stop = 0;
                    }
                }
            }
            else{
                // odd swap
                for (i = 1;i<(end-start)/4-1; i+=2 ){
                    if(buffer[i]>buffer[i+1]){
                        swap(&buffer[i], &buffer[i+1]);
                        stop = 0;
                    }
                }
            }
            printf("Last process data after\n");
            for (int i=0; i<(end-start)/4; i++)
                printf("%f ", buffer[i]);
            
            error = MPI_File_write_at(out, start_save, &buffer[0], end_save-start_save, MPI_BYTE, &status);
            if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
        }
    }
    else if (myrank == nprocs-1){
        float recv;
        //recv = (float*)malloc(1*sizeof(float));
        for (phase = 0; phase < (int)(filesize/4) && stop_recv != nprocs; phase++){
            stop = 1;
            stop_recv = 0;
            printf("(last)phase = %d\n", phase);
            if (phase%2==0){
                if ( myrank *length %2 ==0  ){
                    // even swap
                    for (i = 1; i<(end-start)/4-1; i+=2){
                        if(buffer[i]>buffer[i+1]){
                            swap(&buffer[i], &buffer[i+1]);
                            stop = 0;
                        }
                    }
                }
                else{
                    // odd swap
                    for (i = 0;i<(end-start)/4-1; i+=2 ){
                        if(buffer[i]>buffer[i+1]){
                            swap(&buffer[i], &buffer[i+1]);
                            stop = 0;
                        }
                    }
                }
            }
            else{
                if ( myrank *length %2 ==0  ){
                    // even swap
                    for (i = 0; i<(end-start)/4-1; i+=2){
                        if(buffer[i]>buffer[i+1]){
                            swap(&buffer[i], &buffer[i+1]);
                            stop = 0;
                        }
                    }
                }
                else{
                    // odd swap
                    for (i = 1;i<(end-start)/4-1; i+=2 ){
                        if(buffer[i]>buffer[i+1]){
                            swap(&buffer[i], &buffer[i+1]);
                            stop = 0;
                        }
                    }
                }
            }
            printf("Last process data after\n");
            for (int i=0; i<(end-start)/4; i++)
                printf("%f ", buffer[i]);
            if(phase==0)
                MPI_Isend(&buffer[1], 1, MPI_FLOAT, nprocs-2, 0, MPI_COMM_WORLD, &req);
            else{
                MPI_Send(&buffer[1], 1, MPI_FLOAT,nprocs-2, 0, MPI_COMM_WORLD);
                MPI_Barrier(MPI_COMM_WORLD);
                MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            }
            
        
            if(stop_recv==nprocs || phase == (int)(filesize/4)){
                    error = MPI_File_write_at(out, start_save, &buffer[1], end_save-start_save, MPI_BYTE, &status);
                    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
            }
        }
    }   
    else if(myrank == 0){
        float recv;
        //recv = (float*)malloc(1*sizeof(float));
        for (phase = 0; phase < (int)(filesize/4) && stop_recv != nprocs; phase++){
            stop = 1;
            stop_recv = 0;
            printf("(first)phase = %d\n", phase);
            if (phase != 0){
                MPI_Recv(&recv, 1, MPI_FLOAT, 1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                buffer[(end-start)/4-1]=recv;
                printf("First : %f \n", recv);
            }
            if(phase%2==0){
                // even swap
                for (i = 0; i<(end-start)/4-1; i+=2){
                    if(buffer[i]>buffer[i+1]){
                        swap(&buffer[i], &buffer[i+1]);
                        stop = 0;
                    }
                }
            }
            else{
                // odd swap
                for (i = 1;i<(end-start)/4-1; i+=2 ){
                    if(buffer[i]>buffer[i+1]){
                        swap(&buffer[i], &buffer[i+1]);
                        stop = 0;
                    }
                }
            }
            printf("First process data after\n");
            for (int i=0; i<(end-start)/4; i++)
                printf("%f ", buffer[i]);
            if(phase==0)
                MPI_Isend(&buffer[(end-start)/4-2], 1, MPI_FLOAT, 1, 0, MPI_COMM_WORLD, &req);
            else{
                MPI_Send(&buffer[(end-start)/4-2], 1, MPI_FLOAT,1, 0, MPI_COMM_WORLD);
                MPI_Barrier(MPI_COMM_WORLD);
                MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            }
            
            if(stop_recv==nprocs || phase == (int)(filesize/4)){
                error = MPI_File_write_at(out, start_save, &buffer[0], end_save-start_save, MPI_BYTE, &status);
                if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
            }    
        }
    }
    else{
    	float recv_l, recv_r;
        //recv = (float*)malloc(1*sizeof(float));
        for (phase = 0; phase < (int)(filesize/4) && stop_recv != nprocs; phase++){
            stop = 1;
            stop_recv = 0;
            printf("(middle)phase = %d\n", phase);
            if (phase != 0){
                MPI_Recv(&recv_l, 1, MPI_FLOAT, myrank-1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                buffer[0]=recv_l;
                MPI_Recv(&recv_r, 1, MPI_FLOAT, myrank+1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                buffer[(end-start)/4-1]=recv_r;
                //printf("Last : %f %f\n", recv[0], recv[1]);
            }
            if (phase%2==0){
                if ( myrank *length %2 ==0  ){
                    // even swap
                    for (i = 1; i<(end-start)/4-1; i+=2){
                        if(buffer[i]>buffer[i+1]){
                            swap(&buffer[i], &buffer[i+1]);
                            stop = 0;
                        }
                    }
                }
                else{
                    // odd swap
                    for (i = 0;i<(end-start)/4-1; i+=2 ){
                        if(buffer[i]>buffer[i+1]){
                            swap(&buffer[i], &buffer[i+1]);
                            stop = 0;
                        }
                    }
                }
            }
            else{
                if ( myrank *length %2 ==0  ){
                    // even swap
                    for (i = 0; i<(end-start)/4-1; i+=2){
                        if(buffer[i]>buffer[i+1]){
                            swap(&buffer[i], &buffer[i+1]);
                            stop = 0;
                        }
                    }
                }
                else{
                    // odd swap
                    for (i = 1;i<(end-start)/4-1; i+=2 ){
                        if(buffer[i]>buffer[i+1]){
                            swap(&buffer[i], &buffer[i+1]);
                            stop = 0;
                        }
                    }
                }
            }
            printf("middle process data after\n");
            for (int i=0; i<(end-start)/4; i++)
                printf("%f ", buffer[i]);
            if(phase==0){
                MPI_Isend(&buffer[1], 1, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD, &req);
                MPI_Isend(&buffer[(end-start)/4-2], 1, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD, &req);
            }
            else{
                MPI_Send(&buffer[1], 1, MPI_FLOAT,myrank-1, 0, MPI_COMM_WORLD);
                MPI_Send(&buffer[(end-start)/4-2], 1, MPI_FLOAT,myrank+1, 0, MPI_COMM_WORLD);
                MPI_Barrier(MPI_COMM_WORLD);
                MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            }
            
        
            if(stop_recv==nprocs || phase == (int)(filesize/4)){
                    error = MPI_File_write_at(out, start_save, &buffer[1], end_save-start_save, MPI_BYTE, &status);
                    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
            }
        }
    }
    


    /* close the file */
    MPI_File_close(&out);
    free(buffer);
    /* Finalize MPI */
    MPI_Finalize();
  
	return 0;
}