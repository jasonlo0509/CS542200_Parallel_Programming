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
#include <time.h>

void swap(float *a ,float *b){
    float tmp;
    tmp = *a;
    *a = *b;
    *b = tmp;
}

int cmpfunc(const void * a, const void * b){
    float fa = *(const float*) a;
    float fb = *(const float*) b;
    return(fa>fb)-(fa<fb);
}

void ErrorMessage(int error, int rank, char* string)
{
    fprintf(stderr, "Process %d: Error %d in %s\n", rank, error, string);
    MPI_Finalize();
    exit(-1);
}
int main(int argc, char** argv){

    int start, end, start_save, end_save, i, phase, counter=0;
    int length;
    int error;
    float* local_buf;
    float* temp_buf;
    int nprocs;
    int myrank;
    MPI_Status    status;
    MPI_File      fh, out;
    MPI_Offset    filesize;

    if (argc != 4)
    {
          fprintf(stderr, "Usage: %s FileToRead FileToWrite\n", argv[0]);
          exit(-1);
    }

    /* Initialize MPI */
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
    MPI_Comm_rank(MPI_COMM_WORLD, &myrank);

    /* Open file to read */
    error = MPI_File_open(MPI_COMM_WORLD, argv[2],
                  MPI_MODE_RDONLY, MPI_INFO_NULL, &fh);
    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_open");

    /* Get the size of file */
    error = MPI_File_get_size(fh, &filesize);
    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_get_size");
    int start_left, end_left, start_right, end_right, truenum;
    if(nprocs>filesize/4){
        truenum = nprocs;
        nprocs=filesize/4;
    }
    /* calculate the range for each process to read */
    length = (int)(floor(filesize*1.0 / nprocs/4.0));
    start = length * myrank * 4;
    start_save = length * myrank * 4;
    end_save = start + length * 4;
    if (myrank == nprocs-1){
        end_save = filesize;
        end_left = filesize;
        start_left = start-length*4;
    }
    else if(myrank == nprocs-2 && myrank!=0){
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
    else if(myrank-1<nprocs){//unsolved
        start_left = start-length*4;
        end_left = end_save;
        start_right = start;
        end_right = end_save+length*4;
    }
    else{
        start_save=0;
        start=0;
        end=0;
        end_save=0;
    }
    fprintf(stdout, "Proc %d: range = [%d, %d)\n", myrank, start_save, end_save);
    
    /* Allocate space */
    clock_t begin_IO = clock();
    clock_t IO_time = 0;
    clock_t start_logic = clock();
    local_buf = (float *)malloc((end_save - start_save) * sizeof(float));
    if (local_buf == NULL) ErrorMessage(-1, myrank, "malloc");
    temp_buf = (float *)malloc((end_save - start_save) * sizeof(float));

    /* Each process read in data from the file */
    MPI_File_seek(fh, start_save, MPI_SEEK_SET);
    error = MPI_File_read(fh, local_buf, end_save-start_save, MPI_BYTE, &status);
    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_read");
    /*for (int i=0; i<(end_save-start_save)/4; i++){
    	printf("%f ", local_buf[i]);
    }printf("\n");*/
    /* close the file */
    MPI_File_close(&fh);

    clock_t com_time=0;
    /* Open file to write */
    error = MPI_File_open(MPI_COMM_WORLD, argv[3],
                  MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &out);
    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_open");
    clock_t end_IO = clock();
    IO_time += (end_IO - begin_IO);
    float* other;
    // sort the local data
    if(length>1){
        qsort(local_buf, (end_save-start_save)/4, sizeof(float), cmpfunc);
    }
    //printf("into sortinf func\n");

    if(nprocs==1){
        begin_IO = clock();
        error = MPI_File_write_at(out, start_save, &local_buf[0], end_save-start_save, MPI_BYTE, &status);
        if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
        end_IO = clock();
        IO_time += (end_IO - begin_IO);
    }
    else if (myrank == nprocs-1){
        float* merge_buf;
        int i_other, i_self, self_end, other_end, stop, stop_recv=0;
        other = (float *)malloc(length * sizeof(float));
        merge_buf = (float *)malloc((end_left-start_left) * sizeof(float));
        for (phase=0; phase<filesize/4/length*2 && counter!=2; phase++){
            //printf("phase = %d\n", phase);
            //MPI_Barrier(MPI_COMM_WORLD);
            i_other=length-1;
            i_self=(end_save-start_save)/4-1;
            self_end=0;
            other_end=0;
            stop = 1;
            stop_recv =0;
            if(myrank%2==0){
                if(phase%2!=0){
                    clock_t start_comm = clock();
                    MPI_Send(local_buf, (end_save-start_save)/4, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD);
                    MPI_Recv(other, length, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    
                    clock_t end_comm = clock();
                    com_time += (end_comm - start_comm);
                    //printf("local_buf = %f, %f\n", local_buf[i_self], local_buf[i_self-1]);
                    //printf("other = %f\n", other[i_other]);
                    /*printf("last local_buf:\n");
                    for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");*/
                    for (i=0; i<(end_save-start_save)/4; i++){
                        merge_buf[i]=local_buf[i];
                        temp_buf[i]=local_buf[i];
                    }
                    for(i=0; i<length; i++){
                        merge_buf[(end_save-start_save)/4+i]=other[i];
                    }
                    qsort(merge_buf, (end_left-start_left)/4, sizeof(float), cmpfunc);
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf[length+i];
                        if(local_buf[i]!=temp_buf[i]){
                            stop=0;
                        }
                    }
                    /*for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");*/
                }
            }
            else{
                if(phase%2==0){
                    clock_t start_comm = clock();
                    MPI_Send(local_buf, (end_save-start_save)/4, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD);
                    MPI_Recv(other, length, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    clock_t end_comm = clock();
                    com_time += (end_comm - start_comm);
                    /*printf("last local_buf:\n");
                    for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");
                    //printf("local_buf = %f, %f\n", local_buf[i_self], local_buf[i_self-1]);
                    printf("other = %f\n", other[i_other]);*/
                    // merge two array
                    
                    for (i=0; i<(end_save-start_save)/4; i++){
                        merge_buf[i]=local_buf[i];
                        temp_buf[i]=local_buf[i];
                    }
                    for(i=0; i<length; i++){
                        merge_buf[(end_save-start_save)/4+i]=other[i];
                    }
                    qsort(merge_buf, (end_left-start_left)/4, sizeof(float), cmpfunc);
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf[length+i];
                    }
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf[length+i];
                        if(local_buf[i]!=temp_buf[i]){
                            stop=0;
                        }
                    }
                    /*for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");*/
                }
            }
            //printf("end logic\n");
            clock_t start_comm_out = clock();
            MPI_Barrier(MPI_COMM_WORLD);
            //printf("barrier pass\n");
            //printf("stop = %d\n", stop);
            stop_recv=0;
            MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            //printf("allreduce pass\n");
            
            if(stop_recv==truenum){
                counter++;
            }
            else{
                counter=0;
            }
            //printf("counter = %d\n",counter);
            //printf("stop_recv = %d\n", stop_recv);
            clock_t end_comm_out = clock();
            com_time += (end_comm_out - start_comm_out);           
        }
        begin_IO = clock();
        //MPI_Barrier(MPI_COMM_WORLD);
        error = MPI_File_write_at(out, start_save, &local_buf[0], end_save-start_save, MPI_BYTE, &status);
    	if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
        end_IO = clock();
        IO_time += (end_IO - begin_IO);
    }
    else if(myrank == 0){
        int i_other, i_self, self_end, other_end, stop, stop_recv;
        float* merge_buf;
        other = (float *)malloc((end_right-end_save) * sizeof(float));
        merge_buf = (float *)malloc((end_right - start_right) * sizeof(float));
        for (phase=0; phase<filesize/4/length*2 &&  counter!=2; phase++){
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
                    clock_t start_comm_in = clock();
                    MPI_Recv(other, (end_right-end_save)/4, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    MPI_Send(local_buf, length, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD);
                    clock_t end_comm_in = clock();
                    com_time += (end_comm_in - start_comm_in);
                    //printf("Received\n");
                    /*printf("first local_buf:\n");
                    for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");
                    printf("first other\n");
                    for (int i=0; i<(end_right-end_save)/4; i++){
                        printf("%f ", other[i]);
                    }printf("\n");*/
                    
                    for (i=0; i<(end_save-start_save)/4; i++){
                        merge_buf[i]=local_buf[i];
                        temp_buf[i]=local_buf[i];
                    }
                    for(i=0; i<(end_right-end_save)/4; i++){
                        merge_buf[(end_save-start_save)/4+i]=other[i];
                    }
                    qsort(merge_buf, (end_right- start_right)/4, sizeof(float), cmpfunc);
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf[length+i];
                    }
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf[i];
                        if(local_buf[i]!=temp_buf[i]){
                            stop=0;
                        }
                    }
                }
            }
            clock_t start_comm = clock();
            MPI_Barrier(MPI_COMM_WORLD);
            stop_recv=0;
            MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD); 
            if(stop_recv==truenum){
                counter++;
            }
            else{
                counter=0;
            }
            clock_t end_comm = clock();
            com_time += (end_comm - start_comm);
        }
        begin_IO = clock();
        //MPI_Barrier(MPI_COMM_WORLD);
        error = MPI_File_write_at(out, start_save, &local_buf[0], end_save-start_save, MPI_BYTE, &status);
        if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
        end_IO = clock();
        IO_time += (end_IO - begin_IO);
    }
    else if(myrank<nprocs){
        int i_other_left, i_self_left, i_other_right, i_self_right, self_end, other_end, stop, stop_recv;
        float *merge_buf_left, *merge_buf_right, *other_left, *other_right;
        other_right = (float *)malloc((end_right-end_save) * sizeof(float));
        other_left = (float *)malloc((start_save- start_left) * sizeof(float));
        merge_buf_right = (float *)malloc((end_right - start_right ) * sizeof(float));
        merge_buf_left = (float *)malloc((end_left - start_left ) * sizeof(float));
        for (phase=0; phase<filesize/4/length*2 &&  counter!=2; phase++){
            //MPI_Barrier(MPI_COMM_WORLD);
            //printf("phase=%d\n", phase);
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
                    clock_t start_comm = clock();
                    MPI_Recv(other_right, (end_right-end_save)/4, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    MPI_Send(local_buf, length, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD);
                    clock_t end_comm = clock();
                    com_time += (end_comm - start_comm);
                    /*printf("middle(2) local_buf:\n");
                    for (int i=0; i<(end_save-start_save)/4; i++){
                        printf("%f ", local_buf[i]);
                    }printf("\n");
                    printf("middle(2) Received(right):\n");
                    for (int i=0; i<(end_right-end_save)/4; i++){
                        printf("%f ", other_right[i]);
                    }printf("\n");*/
                    for (i=0; i<(end_save-start_save)/4; i++){
                        merge_buf_right[i]=local_buf[i];
                        temp_buf[i]=local_buf[i];
                    }
                    for(i=0; i<(end_right-end_save)/4; i++){
                        merge_buf_right[(end_save-start_save)/4+i]=other_right[i];
                    }
                    qsort(merge_buf_right, (end_right- start_right )/4, sizeof(float), cmpfunc);
                   
                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf_right[i];
                        if(local_buf[i]!=temp_buf[i]){
                            stop=0;
                        }
                    }
                }
                else{
                    clock_t start_comm = clock();
                    MPI_Send(local_buf, length, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD);
                    MPI_Recv(other_left, (start_save-start_left)/4, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    clock_t end_comm = clock();
                    com_time += (end_comm - start_comm);
                    for (i=0; i<(end_save-start_save)/4; i++){
                        merge_buf_left[i]=local_buf[i];
                        temp_buf[i]=local_buf[i];
                    }
                    for(i=0; i<(start_save- start_left)/4; i++){
                        merge_buf_left[(end_save-start_save)/4+i]=other_left[i];
                    }
                    qsort(merge_buf_left, (end_left- start_left )/4, sizeof(float), cmpfunc);

                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf_left[length+i];
                        if(local_buf[i]!=temp_buf[i]){
                            stop=0;
                        }
                    }
                    /*printf("middle(2) Received(left):\n");
                    for (int i=0; i<(start_save-start_left)/4; i++){
                        printf("%f ", other_left[i]);
                    }printf("\n");*/
                }
            }
            else{
                if(phase%2==0){
                    clock_t start_comm = clock();
                    MPI_Send(local_buf, (end_save-start_save)/4, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD);
                    MPI_Recv(other_left, length, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    clock_t end_comm = clock();
                    com_time += (end_comm - start_comm);
                    
                    for (i=0; i<(end_save-start_save)/4; i++){
                        merge_buf_left[i]=local_buf[i];
                        temp_buf[i]=local_buf[i];
                    }
                    for(i=0; i<(start_save- start_left)/4; i++){
                        merge_buf_left[(end_save-start_save)/4+i]=other_left[i];
                    }
                    qsort(merge_buf_left, (end_left- start_left )/4, sizeof(float), cmpfunc);

                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf_left[length+i];
                        if(local_buf[i]!=temp_buf[i]){
                            stop=0;
                        }
                    }
                }
                else{
                    clock_t start_comm = clock();
                    MPI_Recv(other_right, (end_right-end_save)/4, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
                    MPI_Send(local_buf, (end_save-start_save)/4, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD);
                    clock_t end_comm = clock();
                    com_time += (end_comm - start_comm);
                    
                    for (i=0; i<(end_save-start_save)/4; i++){
                        merge_buf_right[i]=local_buf[i];
                        temp_buf[i]=local_buf[i];
                    }
                    for(i=0; i<(end_right-end_save)/4; i++){
                        merge_buf_right[(end_save-start_save)/4+i]=other_right[i];
                    }
                    qsort(merge_buf_right, (end_right- start_right )/4, sizeof(float), cmpfunc);

                    for(i=0;i<(end_save-start_save)/4; i++){
                        local_buf[i]=merge_buf_right[i];
                        if(local_buf[i]!=temp_buf[i]){
                            stop=0;
                        }
                    }
                }
            }
            clock_t start_comm_out = clock();
            MPI_Barrier(MPI_COMM_WORLD);
            stop_recv=0;
            MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            if(stop_recv==truenum){
                counter++;
            }
            else{
                counter=0;
            }
            clock_t end_comm_out = clock();
            com_time += (end_comm_out - start_comm_out);

        }
        begin_IO = clock();
        //MPI_Barrier(MPI_COMM_WORLD);
    	error = MPI_File_write_at(out, start_save, &local_buf[0], end_save-start_save, MPI_BYTE, &status);
    	if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
        end_IO = clock();
        IO_time += (end_IO - begin_IO);
    }
    else{
        int stop=1, stop_recv=0, counter=0;
        for (phase=0; phase<filesize/4/length*2 &&  counter!=2; phase++){
            MPI_Barrier(MPI_COMM_WORLD);
            stop_recv=0;
            MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            if(stop_recv==truenum){
                counter++;
            }
            else{
                counter=0;
            }
        }
    }
    clock_t end_logic = clock();
    clock_t logic_time = end_logic- start_logic;
    printf("process(%d) IO time = %lf\n", myrank, (double)(IO_time) / CLOCKS_PER_SEC);
    printf("process(%d) logic time = %lf\n", myrank, (double)(logic_time) / CLOCKS_PER_SEC);
    printf("process(%d) comm time = %lf\n", myrank, (double)(com_time) / CLOCKS_PER_SEC);

    MPI_Barrier(MPI_COMM_WORLD);
    /* close the file */
    MPI_File_close(&out);
    free(local_buf);
    /* Finalize MPI */
    MPI_Finalize();
  
	return 0;
}