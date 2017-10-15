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
<<<<<<< HEAD

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
    int truenum=nprocs;
    /* calculate the range for each process to read */
    if(nprocs>filesize/4){
        truenum = nprocs;
        nprocs=filesize/4;

    }
    //if(myrank<nprocs){
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
    else if(myrank<nprocs){
    	start -= 4;
        end = start + (length+2)*4;//-2;
    }
    else{
        start=0;
        end=0;
        start_save=0;
        end_save=0;
    }
    fprintf(stdout, "Proc %d: range = [%d, %d)\n", myrank, start, end);
    clock_t begin_IO = clock();
    clock_t IO_time = 0;
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
    printf("Start!!!!!!!!!\n");
    /* close the file */
    MPI_File_close(&fh);
    
    /* Open file to write */
    error = MPI_File_open(MPI_COMM_WORLD, argv[3],
                  MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &out);
    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_open");
    
    clock_t end_IO = clock();
    IO_time += (end_IO - begin_IO);
    clock_t start_logic = clock();
    clock_t com_time=0;

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
=======
        int error, phase, i, rc, rank, numtasks, num;
        MPI_Offset    N;
	MPI_File      fh, result;
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
	error = MPI_File_open(MPI_COMM_WORLD, argv[1],
                  MPI_MODE_RDONLY, MPI_INFO_NULL, &fh);
	error = MPI_File_get_size(fh, &N);
	N = N/4;
	/*
        int file = open(argv[1],O_RDONLY);
        FILE *input= fopen(argv[1],"rb");
        int  k;
        float *array, *result;
        fseek( input, 0, SEEK_END);
	int N = ftell( input )/4;
	fseek( input, 0, SEEK_SET);
	*/
	float *array;
	array = (float*)malloc(N*sizeof(float));
        //fread(array, sizeof(float), N, input);
        //float array[N], result[N], temp;
        //fread((void*)(&array), sizeof(array), fileStat.st_size, input);
       	 
	error = MPI_File_read(fh, array, N, MPI_FLOAT, &status);
	printf("Information for %s\n",argv[1]);
        printf("---------------------------\n");
        printf("File Size: \t\t%d bytes\n",N*4);
	
        printf("the initial data \n");
        //for(i=0; i<N; i++)
                //printf("%f ", array[i]);
        /*rc = MPI_Init(&argc, &argv);
        if(rc != MPI_SUCCESS){
                printf("Error starting MPI program. Terminating. \n");
                MPI_Abort(MPI_COMM_WORLD, rc);
        }
        MPI_Comm_size(MPI_COMM_WORLD, &numtasks);
        MPI_Comm_rank(MPI_COMM_WORLD, &rank);*/
        // num: # of elements processors handle(except final processor)
        num = (int)ceil(N*1.0/numtasks);
        printf("%d", num);
        printf("Number of tasks = %d My rank = %d\n", numtasks, rank);
	int start, end;
	start = num * rank;
	if (rank == numtasks-1)
        	end = N;
    	else
        	end = start + num;
        // The first process
        if (rank == 0){
                MPI_Status status;
                MPI_Request req0;
                int stop, stop_recv;
                float *temp, *recv;
                temp = (float*)malloc((end+2)*sizeof(float));
                recv = (float*)malloc(2*sizeof(float));
                //float temp[num+2], recv[2];
                for (i=0; i<num+2; i++){
                        temp[i] = array[i];
                        //printf("%f ",temp[i]);
                }
		//MPI_File_seek(fh, start, MPI_SEEK_SET);
		//MPI_File_read(fh, temp, end+2, MPI_FLOAT, &status);
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
>>>>>>> 10cb84a1d7b48105deeec05f4d3f89fe9f5d170b
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
            /*printf("Last process data after\n");
            for (int i=0; i<(end-start)/4; i++)
                printf("%f ", buffer[i]);
            */
            begin_IO = clock();
            error = MPI_File_write_at(out, start_save, &buffer[0], end_save-start_save, MPI_BYTE, &status);
            if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
            end_IO = clock();
            IO_time += (end_IO - begin_IO);
        }
<<<<<<< HEAD
        free(buffer);
        //MPI_Barrier(MPI_COMM_WORLD);
        MPI_File_close(&out);
        MPI_Finalize();
    }
    else if (myrank == nprocs-1){
        float recv;
        stop_recv = 0;
        //recv = (float*)malloc(1*sizeof(float));
        for (phase = 0; phase < (int)(filesize/4) && stop_recv != truenum; phase++){
            printf("(last)phase = %d\n", phase);
            stop = 1;
            stop_recv = 0;
            clock_t start_comm = clock();
            if (phase != 0){
                MPI_Recv(&recv, 1, MPI_FLOAT, nprocs-2, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                buffer[0]=recv;
                printf("First : %f \n", recv);
            }
            clock_t end_comm = clock();
            com_time += (end_comm - start_comm);
            
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
=======
        else if(rank == numtasks-1){
                //MPI_Status status;
                MPI_Request req1;
                int stop_recv, stop, all[numtasks];
                float *temp1, *recv, *final;
		temp1 = (float*)malloc((num+2)*sizeof(float));
                recv = (float*)malloc(2*sizeof(float));
                final = (float*)malloc(N*sizeof(float));
                //MPI_File_seek(fh, start-1, MPI_SEEK_SET);
                //MPI_File_read(fh, temp1, end-start+1, MPI_FLOAT, &status);
		//float temp1[N], recv[2], final[N], tmp[num];
                for (i=(numtasks-1)*num-2; i<N;i++){
                        temp1[i] = array[i];
                }
		//MPI_File_read_at(fh, 0, temp1, N-(numtasks-2)*num+3, MPI_FLOAT, &status);
                for (phase = 0; phase < (int)N/2 && stop_recv !=numtasks; phase++){
                        stop = 1;
                        stop_recv = 0;
                        if (phase != 0){
                                MPI_Recv(&recv[0], 2, MPI_FLOAT, numtasks-2, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
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
				//MPI_File result;
                                MPI_File_close(&fh);
				MPI_File_open(MPI_COMM_WORLD, argv[2], MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &result);
				MPI_File_write_at(result, 0, temp1, N, MPI_FLOAT, &status);
				MPI_File_close(&result);
				/*MPI_File_open(MPI_COMM_WORLD, argv[2],
                  					MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &result);
				//MPI_File_set_view(result, N * sizeof(float),MPI_FLOAT, MPI_FLOAT, "native", MPI_INFO_NULL);
				MPI_File_write(result, temp1, N, MPI_FLOAT,MPI_STATUS_IGNORE);
				MPI_File_close(&result);*/
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
		//free(temp1);
                /*printf("Last Processor's Result :");
                for(i=(numtasks-1)*num; i<N; i++){
                        result[i]=temp1[i];
                        final[i]=temp1[i];
                        printf("%f ", result[i]);
>>>>>>> 10cb84a1d7b48105deeec05f4d3f89fe9f5d170b
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
            start_comm = clock();
            if(phase==0)
                MPI_Isend(&buffer[1], 1, MPI_FLOAT, nprocs-2, 0, MPI_COMM_WORLD, &req);
            else{
                MPI_Send(&buffer[1], 1, MPI_FLOAT,nprocs-2, 0, MPI_COMM_WORLD);
                printf("Barrier\n");
                MPI_Barrier(MPI_COMM_WORLD);
                printf("Stuck\n");
                MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            }
            end_comm = clock();
            com_time += (end_comm - start_comm);
            begin_IO = clock();
            if(stop_recv==truenum || phase == (int)(filesize/4)){
                error = MPI_File_write_at(out, start_save, &buffer[1], end_save-start_save, MPI_BYTE, &status);
                if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
            }
            end_IO = clock();
            IO_time += (end_IO - begin_IO);
        }
<<<<<<< HEAD
        free(buffer);
        printf("Final last!");
        MPI_Barrier(MPI_COMM_WORLD);
        MPI_File_close(&out);
        MPI_Finalize();
    }   
    else if(myrank == 0){
        float recv;
        stop_recv = 0;
        //recv = (float*)malloc(1*sizeof(float));
        for (phase = 0; phase < (int)(filesize/4) && stop_recv != truenum; phase++){
            stop = 1;
            stop_recv = 0;
            printf("(first)phase = %d\n", phase);
            clock_t start_comm = clock();
            if (phase != 0){
                MPI_Recv(&recv, 1, MPI_FLOAT, 1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                buffer[(end-start)/4-1]=recv;
                //printf("First : %f \n", recv);
            }
            clock_t end_comm = clock();
            com_time += (end_comm - start_comm);
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
            start_comm = clock();
            if(phase==0)
                MPI_Isend(&buffer[(end-start)/4-2], 1, MPI_FLOAT, 1, 0, MPI_COMM_WORLD, &req);
            else{
                MPI_Send(&buffer[(end-start)/4-2], 1, MPI_FLOAT,1, 0, MPI_COMM_WORLD);
                printf("Barrier\n");
                MPI_Barrier(MPI_COMM_WORLD);
                printf("Stuck\n");
                MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            }
            end_comm = clock();
            com_time += (end_comm - start_comm);
            begin_IO = clock();
            if(stop_recv==truenum || phase == (int)(filesize/4)){
                printf("fuck!\n");
                error = MPI_File_write_at(out, start_save, &buffer[0], end_save-start_save, MPI_BYTE, &status);
                if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
            }
            end_IO = clock();
            IO_time += (end_IO - begin_IO);    
        }
        printf("Final 0!");
        MPI_Barrier(MPI_COMM_WORLD);
        MPI_File_close(&out);
        free(buffer);
        MPI_Finalize();
    }
    else if(myrank<nprocs){
    	float recv_l, recv_r;
        stop_recv = 0;
        //recv = (float*)malloc(1*sizeof(float));
        for (phase = 0; phase < (int)(filesize/4) && stop_recv != truenum; phase++){
            stop = 1;
            stop_recv = 0;
            //printf("(middle)phase = %d\n", phase);
            clock_t start_comm = clock();
            if (phase != 0){
                MPI_Recv(&recv_l, 1, MPI_FLOAT, myrank-1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                buffer[0]=recv_l;
                MPI_Recv(&recv_r, 1, MPI_FLOAT, myrank+1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                buffer[(end-start)/4-1]=recv_r;
                printf("Phase = %d, Last : %f \n", phase, recv_r);
            }
            clock_t end_comm = clock();
            com_time += (end_comm - start_comm);
            if (phase%2==0){
                if ( myrank *length %2 ==0  ){
                    // even swap
                    for (i = 1; i<(end-start)/4-1; i+=2){
                        if(buffer[i]>buffer[i+1]){
                            swap(&buffer[i], &buffer[i+1]);
                            stop = 0;
=======
        // Middle processors' job
        else{
                MPI_Status status;
                int stop, stop_recv;
                float *temp2, *recv_left, *recv_right;
                temp2 = (float*)malloc((end-start+4)*sizeof(float));
                recv_left = (float*)malloc(2*sizeof(float));
                recv_right = (float*)malloc(2*sizeof(float));
		//float temp[N], recv_left[2], recv_right[2];
                for (i=rank*num-2; i<(rank+1)*num+2;i++){
                        temp2[i] = array[i];
                }
		//MPI_File_seek(fh, start-2, MPI_SEEK_SET);
                //MPI_File_read(fh, temp2, end-start+4, MPI_FLOAT, &status);
		//MPI_File_read_at(fh, rank*num-2, temp2, num+4, MPI_FLOAT, &status);
                for (phase = 0; phase < (int)N/2 && stop_recv != numtasks; phase++){
                        stop = 1;
                        stop_recv =0;
                        if (phase != 0){
                                MPI_Recv(&recv_left[0], 2, MPI_FLOAT, rank-1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                                MPI_Recv(&recv_right[0], 2, MPI_FLOAT, rank+1, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                                temp2[rank*num-2] = recv_left[0];
                                temp2[rank*num-1] = recv_left[1];
                                temp2[(rank+1)*num] = recv_right[0];
                                temp2[(rank+1)*num+1] = recv_right[1];
                        }
                        if (rank*num % 2 == 0 ){
                                // even swap(middle process)
                                for (i = rank*num;i<(rank+1)*num+2; i+=2 ){
                                    if(temp2[i-1]>temp2[i]){
                                                swap(&temp2[i-1], &temp2[i]);
                                                stop = 0;
                                        }
                                }
                                // odd swap(middle process)
                                for (i = rank*num-2; i<(rank+1)*num+1; i+=2){
                                        if(temp2[i]>temp2[i+1]){
                                                swap(&temp2[i], &temp2[i+1]);
                                                stop = 0;
                                        }
                                }
>>>>>>> 10cb84a1d7b48105deeec05f4d3f89fe9f5d170b
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
<<<<<<< HEAD
            }
            /*printf("middle process data after\n");
            for (int i=0; i<(end-start)/4; i++)
                printf("%f ", buffer[i]);*/
            start_comm = clock();
            if(phase==0){
                MPI_Isend(&buffer[1], 1, MPI_FLOAT, myrank-1, 0, MPI_COMM_WORLD, &req);
                MPI_Isend(&buffer[(end-start)/4-2], 1, MPI_FLOAT, myrank+1, 0, MPI_COMM_WORLD, &req);
            }
            else{
                MPI_Send(&buffer[1], 1, MPI_FLOAT,myrank-1, 0, MPI_COMM_WORLD);
                MPI_Send(&buffer[(end-start)/4-2], 1, MPI_FLOAT,myrank+1, 0, MPI_COMM_WORLD);
                printf("Barrier\n");
                MPI_Barrier(MPI_COMM_WORLD);
                printf("Stuck\n");
                MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            }
            end_comm = clock();
            com_time += (end_comm - start_comm);
            begin_IO = clock();
            if(stop_recv==truenum || phase == (int)(filesize/4)){
                    error = MPI_File_write_at(out, start_save, &buffer[1], end_save-start_save, MPI_BYTE, &status);
                    if(error != MPI_SUCCESS) ErrorMessage(error, myrank, "MPI_File_write");
            }
            end_IO = clock();
            IO_time += (end_IO - begin_IO);
=======
                printf("Middle Process' Results: ");
                for (i=rank*num; i<(rank+1)*num; i++)
                        printf("%f ", temp2[i]);
                printf("\n");
		//free(temp2);
>>>>>>> 10cb84a1d7b48105deeec05f4d3f89fe9f5d170b
        }
        free(buffer);
        printf("Final middle!");
        MPI_Barrier(MPI_COMM_WORLD);
        MPI_File_close(&out);
        printf("clocse????");
        
        MPI_Finalize();
        //MPI_Finalize();
    }
    else{
        int stop=1, stop_recv=0;
        for (phase = 0; phase < (int)(filesize/4) && stop_recv != truenum; phase++){
            if(phase!=0){
                MPI_Barrier(MPI_COMM_WORLD);
                MPI_Allreduce(&stop, &stop_recv, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            }
        }
        MPI_Barrier(MPI_COMM_WORLD);
        MPI_File_close(&out);
        MPI_Finalize();
        //return 0;
    }
    clock_t end_logic = clock();
    clock_t logic_time = end_logic- start_logic;
    printf("process(%d) IO time = %lf\n", myrank, (double)(IO_time) / CLOCKS_PER_SEC);
    printf("process(%d) logic time = %lf\n", myrank, (double)(logic_time) / CLOCKS_PER_SEC);
    printf("process(%d) comm time = %lf\n", myrank, (double)(com_time) / CLOCKS_PER_SEC);


    /* close the file */
    
    
    /* Finalize MPI */
    
    //}
	return 0;
}
