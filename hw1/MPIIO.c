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
void ErrorMessage(int error, int rank, char* string)
  {
          fprintf(stderr, "Process %d: Error %d in %s\n", rank, error, string);
          MPI_Finalize();
          exit(-1);
  }
int main(int argc, char** argv){

    int start, end, start_save, end_save;
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
    start = length * myrank * 4;
    start_save = length * myrank * 4;
    end_save = start + length*4;
    if (myrank == nprocs-1){
        end = filesize;
      	start -= 2*4;
    }
    else if(myrank == 0){
    	end = start + (length+2)*4;
    }
    else{
    	start -= 2*4;
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


    if (myrank == nprocs-1){
        error = MPI_File_write_at(out, start_save, &buffer[2], end_save-start_save-4, MPI_BYTE, &status);
    	if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
    }
    else if(myrank == 0){
    	error = MPI_File_write_at(out, start_save, &buffer[0], end_save-start_save, MPI_BYTE, &status);
    	if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
    }
    else{
    	error = MPI_File_write_at(out, start_save, &buffer[2], end_save-start_save, MPI_BYTE, &status);
    	if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
    }
    


    /* close the file */
    MPI_File_close(&out);
    free(buffer);
    /* Finalize MPI */
    MPI_Finalize();
  
	return 0;
}