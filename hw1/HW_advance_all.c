/*
 * HW1 Odd Even Sort(Advanced Version)
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

int cmpfunc(const void * a, const void * b){
    return(*(float*)a- *(float*)b);
}

void ErrorMessage(int error, int rank, char* string)
{
    fprintf(stderr, "Process %d: Error %d in %s\n", rank, error, string);
    MPI_Finalize();
    exit(-1);
}
int main(int argc, char** argv){

    int start, end, start_save, end_save, i, phase;
    int length;
    int error;
    float* local_buf;
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
    int start_left, end_left, start_right, end_right;
    /* calculate the range for each process to read */
    length = (int)(floor(filesize*1.0 / nprocs/4.0));
    start = length * myrank * 4;
    start_save = length * myrank * 4;
    end_save = start + length*4;
    if (myrank == nprocs-1){
        end_save = filesize;
        end_left = filesize;
        start_left = start-length*4;
    }
    else if(myrank == nprocs-2 && myrank!=0){//unsolved
        start_left = start-length*4;
        end_left = end_save;
        start_right = start;
        end_right = filesize;
    }
    else if(myrank == 0){
        if(nprocs==2){
            start_right = start;
            end_right = filesize;
        }
        else{
            start_right = start;
            end_right = start_right + (length)*4*2;
        }  
    }
    else{//unsolved
        start_left = start-length*4;
        end_left = end_save;
        start_right = start;
        end_right = end_save+length*4;
    }
    fprintf(stdout, "Proc %d: range = [%d, %d)\n", myrank, start_save, end_save);

    /* Allocate space */
    local_buf = (float *)malloc((end_save - start_save) * sizeof(float));
    if (local_buf == NULL) ErrorMessage(-1, myrank, "malloc");

    /* Each process read in data from the file */
    MPI_File_seek(fh, start_save, MPI_SEEK_SET);
    error = MPI_File_read(fh, local_buf, end_save-start_save, MPI_BYTE, &status);
    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_read");
    /*for (int i=0; i<(end_save-start_save)/4; i++){
    	printf("%f ", local_buf[i]);
    }printf("\n");*/
    /* close the file */
    MPI_File_close(&fh);

    /* Open file to write */
    error = MPI_File_open(MPI_COMM_WORLD, argv[2],
                  MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &out);
    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_open");

    float* other;
    // sort the local data
    qsort(local_buf, (end_save-start_save)/4, sizeof(float), cmpfunc);

    if (myrank == nprocs-1){
        float* merge_buf;
        int i_other, i_self, self_end, other_end, stop, stop_recv;
        other = (float *)malloc(length * sizeof(float));
        merge_buf = (float *)malloc((end_left-start_left) * sizeof(float));
        for (phase==0; phase<filesize/4/length && stop_recv !=nprocs; phase++){
            //MPI_Barrier(MPI_COMM_WORLD);
            i_other=length-1;
            i_self=(end_save-start_save)/4-1;
            self_end=0;
            other_end=0;
            stop = 1;
            stop_recv =0;
            if(myrank%2==0){
                if(phase%2!=0){
                    MPI_Send(local_buf, (end_save-start_save)/4, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD);
                    MPI_Recv(other, length, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    //printf("local_buf = %f, %f\n", local_buf[i_self], local_buf[i_self-1]);
                    //printf("other = %f\n", other[i_other]);
                    /*printf("last local_buf:\n");
                    for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");*/
                    // merge two array
                    for(i=(end_left-start_left)/4-1;i>=length; i--){
                        if(local_buf[i_self]>other[i_other] ){
                            if(i_self>=0 && self_end==0){
                                merge_buf[i]= local_buf[i_self];
                                if(i_self>0){
                                    i_self --;
                                }
                                else{
                                    self_end=1;
                                }
                            }else{
                                stop=0;
                                merge_buf[i]=other[i_other];
                                i_other --;
                            }
                        }
                        else{
                            if(i_other>=0 && other_end==0){
                                stop=0;
                                merge_buf[i]=other[i_other];
                                if(i_other>0){
                                    i_other --;
                                }
                                else{
                                    other_end=1;
                                }
                            }
                            else{
                                merge_buf[i]= local_buf[i_self];
                                i_self --;
                            }
                        }
                    }
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf[length+i];
                    }
                    for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");
                }
            }
            else{
                if(phase%2==0){
                    MPI_Send(local_buf, (end_save-start_save)/4, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD);
                    MPI_Recv(other, length, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    /*printf("last local_buf:\n");
                    for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");*/
                    //printf("local_buf = %f, %f\n", local_buf[i_self], local_buf[i_self-1]);
                    //printf("other = %f, %f\n", other[i_other], other[i_other-1]);
                    // merge two array
                    for(i=(end_left-start_left)/4-1;i>=length; i--){
                        if(local_buf[i_self]>other[i_other] ){
                            if(i_self>=0 && self_end==0){
                                merge_buf[i]= local_buf[i_self];
                                if(i_self>0){
                                    i_self --;
                                }
                                else{
                                    self_end=1;
                                }
                            }else{
                                stop=0;
                                merge_buf[i]=other[i_other];
                                i_other --;
                            }
                        }
                        else{
                            if(i_other>=0 && other_end==0){
                                stop=0;
                                merge_buf[i]=other[i_other];
                                if(i_other>0){
                                    i_other --;
                                }
                                else{
                                    other_end=1;
                                }
                            }
                            else{
                                merge_buf[i]= local_buf[i_self];
                                i_self --;
                            }
                        }
                    }
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf[length+i];
                    }
                    for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");
                }
            }
            MPI_Barrier(MPI_COMM_WORLD);
            MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);           
        }
        error = MPI_File_write_at(out, start_save, &local_buf[0], end_save-start_save, MPI_BYTE, &status);
    	if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
    }
    else if(myrank == 0){
        int i_other, i_self, self_end, other_end, stop, stop_recv;
        float* merge_buf;
        other = (float *)malloc((end_right-end_save) * sizeof(float));
        merge_buf = (float *)malloc((end_right - start_right) * sizeof(float));
        for (phase==0; phase<filesize/4/length && stop_recv != nprocs; phase++){
            /*printf("local local_buf:\n");
            for (int i=0; i<(end_save-start_save)/4; i++){
                printf("%f ", local_buf[i]);
            }printf("\n");*/
            //MPI_Barrier(MPI_COMM_WORLD);
            i_other=0;
            i_self=0;
            self_end=0;
            other_end=0;
            stop = 1;
            stop_recv =0;
            // right side is bounded by filesize
            if(myrank%2==0){
                if(phase%2==0){
                    MPI_Recv(other, (end_right-end_save)/4, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    MPI_Send(local_buf, length, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD);
                    //printf("Received\n");
                    /*printf("first local_buf:\n");
                    for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");
                    printf("first other\n");
                    for (int i=0; i<(end_right-end_save)/4; i++){
                        printf("%f ", other[i]);
                    }printf("\n");*/
                    // merge two array
                    for(i=0;i<length; i++){
                        if(local_buf[i_self]<other[i_other]){
                            if(i_self<length && self_end==0){
                                merge_buf[i]=local_buf[i_self];
                                if(i_self<length-1){
                                    i_self++;
                                }
                                else{
                                    self_end=1;
                                }
                            }
                            else{
                                stop=0;
                                merge_buf[i]=other[i_other];
                                i_other++;
                            }
                        }
                        else{
                            if(i_other<(end_right-end_save)/4 && other_end==0){
                                stop=0;
                                merge_buf[i]=other[i_other];
                                if(i_other<(end_right-end_save)/4-1){
                                    i_other++;
                                }
                                else{
                                    other_end=1;
                                }
                            }
                            else{
                                merge_buf[i]=local_buf[i_self];
                                i_self++;
                            }
                        }
                    }
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf[i];
                    }
                }
            }
            MPI_Barrier(MPI_COMM_WORLD);
            MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD); 
        }
        error = MPI_File_write_at(out, start_save, &local_buf[0], end_save-start_save, MPI_BYTE, &status);
        if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
    }
    else{
        int i_other_left, i_self_left, i_other_right, i_self_right, self_end, other_end, stop, stop_recv;
        float *merge_buf_left, *merge_buf_right, *other_left, *other_right;
        other_right = (float *)malloc((end_right-end_save) * sizeof(float));
        other_left = (float *)malloc((start_save- start_left) * sizeof(float));
        merge_buf_right = (float *)malloc((end_right - start_right ) * sizeof(float));
        merge_buf_left = (float *)malloc((end_left - start_left ) * sizeof(float));
        for (phase==0; phase<filesize/4/length && stop_recv !=nprocs; phase++){
            //MPI_Barrier(MPI_COMM_WORLD);
            printf("phase=%d\n", phase);
            i_other_left = length-1;
            i_self_left = (end_save-start_save)/4-1;
            i_other_right = 0;
            i_self_right = 0;
            self_end=0;
            other_end=0;
            stop = 1;
            stop_recv =0;
            /*if(phase%2!=0){
                
            }*/
            if(myrank%2==0){
                if(phase%2==0){
                    MPI_Recv(other_right, (end_right-end_save)/4, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    MPI_Send(local_buf, length, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD);
                    printf("middle(2) local_buf:\n");
                    for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");
                    printf("middle(2) Received(right):\n");
                    for (int i=0; i<(end_right-end_save)/4; i++){
                        printf("%f ", other_right[i]);
                    }printf("\n");
                    // merge two array
                    for(i=0;i<length; i++){
                        if(local_buf[i_self_right]<other_right[i_other_right]){
                            if(i_self_right<length && self_end==0){
                                merge_buf_right[i]=local_buf[i_self_right];
                                if(i_self_right<length-1){
                                    i_self_right++;
                                }
                                else{
                                    self_end=1;
                                }
                            }
                            else{
                                stop=0;
                                merge_buf_right[i]=other_right[i_other_right];
                                i_other_right++;
                            }
                        }
                        else{
                            if(i_other_right<(end_right-end_save)/4 && other_end==0){
                                stop=0;
                                merge_buf_right[i]=other_right[i_other_right];
                                if(i_other_right<(end_right-end_save)/4-1){
                                    i_other_right++;
                                }
                                else{
                                    other_end=1;
                                }
                            }
                            else{
                                merge_buf_right[i]=local_buf[i_self_right];
                                i_self_right++;
                            }
                        }
                    }                    
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf_right[i];
                    }
                }
                else{
                    MPI_Send(local_buf, length, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD);
                    MPI_Recv(other_left, (start_save-start_left)/4, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    // merge two array
                    printf("middle(2) local_buf:\n");
                    for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");
                    
                    // merge two array
                    for(i=(end_left-start_left)/4-1;i>=length; i--){
                        if(local_buf[i_self_left]>other_left[i_other_left] ){
                            if(i_self_left>=0 && self_end==0){
                                merge_buf_left[i]= local_buf[i_self_left];
                                if(i_self_left>0){
                                    i_self_left --;
                                }
                                else{
                                    self_end=1;
                                }
                            }else{
                                stop=0;
                                merge_buf_left[i]=other_left[i_other_left];
                                i_other_left --;
                            }
                        }
                        else{
                            if(i_other_left>=0 && other_end==0){
                                stop=0;
                                merge_buf_left[i]=other_left[i_other_left];
                                if(i_other_left>0){
                                    i_other_left --;
                                }
                                else{
                                    other_end=1;
                                }
                            }
                            else{
                                merge_buf_left[i]= local_buf[i_self_left];
                                i_self_left --;
                            }
                        }
                    }
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf_left[length+i];
                    }
                    printf("middle(2) Received(left):\n");
                    for (int i=0; i<(start_save-start_left)/4; i++){
                        printf("%f ", other_left[i]);
                    }printf("\n");
                }
            }
            else{
                if(phase%2==0){
                    MPI_Send(local_buf, (end_save-start_save)/4, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD);
                    MPI_Recv(other_left, length, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    
                    for(i=(end_left-start_left)/4-1;i>=length; i--){
                        if(local_buf[i_self_left]>other_left[i_other_left] ){
                            if(i_self_left>=0 && self_end==0){
                                merge_buf_left[i]= local_buf[i_self_left];
                                if(i_self_left>0){
                                    i_self_left --;
                                }
                                else{
                                    self_end=1;
                                }
                            }
                            else{
                                stop=0;
                                merge_buf_left[i]=other_left[i_other_left];
                                i_other_left --;
                            }
                        }
                        else{
                            if(i_other_left>=0 && other_end==0){
                                stop=0;
                                merge_buf_left[i]=other_left[i_other_left];
                                if(i_other_left>0){
                                    i_other_left --;
                                }
                                else{
                                    other_end=1;
                                }
                            }
                            else{
                                merge_buf_left[i]= local_buf[i_self_left];
                                i_self_left --;
                            }
                        }
                    }
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf_left[length+i];
                    }
                }
                else{
                    MPI_Recv(other_right, (end_right-end_save)/4, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    MPI_Send(local_buf, (end_save-start_save)/4, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD);
                    // merge two array
                    for(i=0;i<length; i++){
                        if(local_buf[i_self_right]<other_right[i_other_right]){
                            if(i_self_right<length && self_end==0){
                                merge_buf_right[i]=local_buf[i_self_right];
                                if(i_self_right<length-1){
                                    i_self_right++;
                                }
                                else{
                                    self_end=1;
                                }
                            }
                            else{
                                stop=0;
                                merge_buf_right[i]=other_right[i_other_right];
                                i_other_right++;
                            }
                        }
                        else{
                            if(i_other_right<(end_right-end_save)/4 && other_end==0){
                                stop=0;
                                merge_buf_right[i]=other_right[i_other_right];
                                if(i_other_right<(end_right-end_save)/4-1){
                                    i_other_right++;
                                }
                                else{
                                    other_end=1;
                                }
                            }
                            else{
                                merge_buf_right[i]=local_buf[i_self_right];
                                i_self_right++;
                            }
                        }
                    }                     
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf_right[i];
                    }
                }
            }
            MPI_Barrier(MPI_COMM_WORLD);
            MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
        }    
    	error = MPI_File_write_at(out, start_save, &local_buf[0], end_save-start_save, MPI_BYTE, &status);
    	if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
    }
    


    /* close the file */
    MPI_File_close(&out);
    free(local_buf);
    /* Finalize MPI */
    MPI_Finalize();
  
	return 0;
}