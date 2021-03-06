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
#include <time.h>
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

    int start, end, start_save, end_save,stop_recv, stop, phase, i;
    int length;
    int error;
    float* buffer;
    int nprocs;
    int myrank;
    MPI_Status    status;
    MPI_File      fh, out;
    MPI_Offset    filesize;

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
    length = (int)(ceil(filesize*1.0 / nprocs/4.0));
    printf("length = %d\n", length);
    start = length * myrank * 4;
    start_save = length * myrank * 4;
    end_save = start_save + length*4;
    int space= 1;
    if (myrank == nprocs-1){
        end = filesize;
        end_save = filesize;
      	start -= space*4;
    }
    else if(myrank == 0){
    	end = start + (length+space)*4;
    }
    else{
    	start -= space*4;
        end = start + (length+2*space)*4;//-2;
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
    
    
    /* Main Logic + save file*/
    if (myrank == nprocs-1){
        float* recv;
        recv = (float*)malloc(space*sizeof(float));
        for (phase = 0; phase < (int)(filesize/4) && stop_recv != nprocs; phase++){
            stop = 1;
            stop_recv = 0;
            if (phase != 0){
                MPI_Recv(&recv[0], space, MPI_FLOAT, nprocs-2, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                //for(i = 0; i<space; i++)
                buffer[0]=recv[0];
                printf("Last : %f \n", recv[0]);
                //buffer[1]=recv[1];
                //printf("Last : %f %f\n", recv[0], recv[1]);
            }
            for (int i=0; i<(end-start)/4; i++)
                printf("%f ", buffer[i]);
            if ( myrank *length %2 ==0  ){
                if(phase%2==0){
                    // even swap
                    for (i = 1; i<(end-start)/4-2; i+=2){
                        if(buffer[i]>buffer[i+1]){
                            swap(&buffer[i], &buffer[i+1]);
                            stop = 0;
                        }
                    }
                }
                else{
                    // odd swap
                    for (i = 1;i<(end-start)/4-2; i+=2 ){
                        if(buffer[i-1]>buffer[i]){
                            swap(&buffer[i-1], &buffer[i]);
                            stop = 0;
                        }
                    }
                }
            }
            else{
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
            }
            
            MPI_Send(&buffer[space], space, MPI_FLOAT,nprocs-2, 0, MPI_COMM_WORLD);
            MPI_Barrier(MPI_COMM_WORLD);
            MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            
            if(stop_recv==nprocs || phase == (int)(filesize/4)){
                error = MPI_File_write_at(out, start_save, &buffer[1], end_save-start_save, MPI_BYTE, &status);
                if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
            }    
        }
    }
    else if(myrank == 0){
    	float* recv;
        recv = (float*)malloc(space*sizeof(float));
        for (phase = 0; phase < (int)(filesize/4) && stop_recv != nprocs; phase++){
            stop = 1;
            stop_recv = 0;
            if (phase != 0){
                MPI_Recv(&recv[0], space, MPI_FLOAT, 1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                //for(i = 0; i<space; i++)
                buffer[(end-start)/4-1]=recv[i];
                printf("First : %f \n", recv[0]);
            }
            if(phase%2==0){
                // even swap
                for (i = 0; i<(end-start)/4-3; i+=2){
                    if(buffer[i]>buffer[i+1]){
                        swap(&buffer[i], &buffer[i+1]);
                        stop = 0;
                    }
                }
            }
            else{
                // odd swap
                for (i = 2;i<(end-start)/4-1; i+=2 ){
                    if(buffer[i-1]>buffer[i]){
                        swap(&buffer[i-1], &buffer[i]);
                        stop = 0;
                    }
                }
            }

            MPI_Send(&buffer[(end-start)/4-2], space, MPI_FLOAT, 1, 0, MPI_COMM_WORLD);
            MPI_Barrier(MPI_COMM_WORLD);
            MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            
            if(stop_recv==nprocs || phase == (int)(filesize/4)){
                error = MPI_File_write_at(out, start_save, &buffer[0], end_save-start_save, MPI_BYTE, &status);
                if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
            }    
        }
    }
    else{
    	float *recv_left, *recv_right;
        recv_left = (float*)malloc(space*sizeof(float));
        recv_right = (float*)malloc(space*sizeof(float));
        for (phase = 0; phase < (int)(filesize/4) && stop_recv != nprocs; phase++){
            stop = 1;
            stop_recv = 0;
            if (phase != 0){
                MPI_Recv(&recv_left[0], space, MPI_FLOAT, myrank-1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                for(i = 0; i<space; i++)
                    buffer[i]=recv_left[i];
                //printf("%d Middle(l) : %f %f\n", myrank, recv_left[0], recv_left[1]);
                MPI_Recv(&recv_right[0], space, MPI_FLOAT, myrank+1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                for(i = 0; i<space; i++)
                    buffer[(end-start)/4-space+i]=recv_right[i];
                //printf("%d Middle(r) : %f %f\n", myrank, recv_right[0], recv_right[1]);
                //printf("rank = %d : ", myrank);
                /*for (int i=0; i<(end-start)/4; i++)
                    printf("%f ", buffer[i]);
                printf("\n");*/
            }
            if ( myrank *length %2 ==0  ){
                if(phase%2==0){
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
                    for (i = 0;i<(end-start)/4; i+=2 ){
                        if(buffer[i]>buffer[i+1]){
                            swap(&buffer[i], &buffer[i+1]);
                            stop = 0;
                        }
                    }
                }

            }
            else{
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
                    for (i=2; i<(end-start)/4; i += 2){
                        if(buffer[i-1]>buffer[i]){
                            swap(&buffer[i-1], &buffer[i]);
                            stop = 0;
                        }
                    }
                }
            }
            MPI_Send(&buffer[space], space, MPI_FLOAT,myrank-1, 0, MPI_COMM_WORLD);
            MPI_Send(&buffer[(end-start)/4-(space-1)*4], space, MPI_FLOAT,myrank+1, 0, MPI_COMM_WORLD);
            MPI_Barrier(MPI_COMM_WORLD);
            MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            if(stop_recv==nprocs || phase == (int)(filesize/4/2)-1){
                error = MPI_File_write_at(out, start_save, &buffer[space], end_save-start_save, MPI_BYTE, &status);
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