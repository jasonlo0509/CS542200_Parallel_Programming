#define PNG_NO_SETJMP

#include <assert.h>
#include <png.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mpi.h"
#include <omp.h>

void write_png(const char* filename, const int width, const int height, const int* buffer);

int main(int argc, char** argv) {
    /* argument parsing */
    assert(argc == 9);
    int num_threads = strtol(argv[1], 0, 10);
    double left = strtod(argv[2], 0);
    double right = strtod(argv[3], 0);
    double lower = strtod(argv[4], 0);
    double upper = strtod(argv[5], 0);
    int width = strtol(argv[6], 0, 10);
    int height = strtol(argv[7], 0, 10);
    const char* filename = argv[8];

    /*MPI Declare*/
    int nprocs;
    int myrank;
    int height_start, height_end;
    int i;
    int tid;
    int chunk = 1;

    /* allocate memory for image */
    int* image = (int*)malloc(width * height * sizeof(int));
    assert(image);

    /* Initialize MPI */
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
    MPI_Comm_rank(MPI_COMM_WORLD, &myrank);
    
    if(myrank!=0){ //worker

        if(width>nprocs-1){
            int block_num;
            MPI_Status status;
            while(1){
                MPI_Recv(&block_num, 1, MPI_INT, 0, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                if(block_num==-1)break;
                //printf("worker[%d] received tasks!%d\n", myrank, block_num);
                /* mandelbrot set */

                double y0 = (block_num/nprocs) * ((upper - lower) / height) + lower;
                if(width - (width/nprocs*(block_num%nprocs+1)) < width/nprocs){
#pragma omp parallel private(tid, i) num_threads(num_threads)
{
                    #pragma omp for schedule(dynamic, chunk)
                    for (int i = width/nprocs*(block_num%nprocs) ; i < width; ++i) {
                        double x0 = i * ((right - left) / width) + left;

                        int repeats = 0;
                        double x = 0;
                        double y = 0;
                        double length_squared = 0;
                        while (repeats < 100000 && length_squared < 4) {
                            double temp = x * x - y * y + x0;
                            y = 2 * x * y + y0;
                            x = temp;
                            length_squared = x * x + y * y;
                            ++repeats;
                        }
                        image[block_num/nprocs* width + i] = repeats;
                    }
}
                    MPI_Send(&image[(block_num/nprocs*width) + (width/nprocs*(block_num%nprocs))], (width - width/nprocs*(block_num%nprocs)) ,MPI_INT,0,0,MPI_COMM_WORLD);
                }
                else{
#pragma omp parallel private(tid, i) num_threads(num_threads)
{
                    #pragma omp for schedule(dynamic, chunk)
                    for (int i = width/nprocs*(block_num%nprocs) ; i < width/nprocs*(block_num%nprocs+1); ++i) {
                        double x0 = i * ((right - left) / width) + left;

                        int repeats = 0;
                        double x = 0;
                        double y = 0;
                        double length_squared = 0;
                        while (repeats < 100000 && length_squared < 4) {
                            double temp = x * x - y * y + x0;
                            y = 2 * x * y + y0;
                            x = temp;
                            length_squared = x * x + y * y;
                            ++repeats;
                        }
                        image[block_num/nprocs* width + i] = repeats;
                    }
}
                    MPI_Send(&image[(block_num/nprocs*width) + (width/nprocs*(block_num%nprocs))],width/nprocs,MPI_INT,0,0,MPI_COMM_WORLD);
                }
            }
        }
        else{
            int row_num;
            MPI_Status status;
            while(1){
                MPI_Recv(&row_num, 1, MPI_INT, 0, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                if(row_num==-1)break;
                //printf("worker[%d] received tasks!%d\n", myrank, row_num);
                /* mandelbrot set */
                double y0 = row_num * ((upper - lower) / height) + lower;
#pragma omp parallel private(tid, i) num_threads(num_threads)
{
                #pragma omp for schedule(dynamic, chunk)
                for (int i = 0; i < width; ++i) {
                    double x0 = i * ((right - left) / width) + left;

                    int repeats = 0;
                    double x = 0;
                    double y = 0;
                    double length_squared = 0;
                    while (repeats < 100000 && length_squared < 4) {
                        double temp = x * x - y * y + x0;
                        y = 2 * x * y + y0;
                        x = temp;
                        length_squared = x * x + y * y;
                        ++repeats;
                    }
                    image[row_num * width + i] = repeats;
                }
}
                MPI_Send(&image[row_num*width],width,MPI_INT,0,0,MPI_COMM_WORLD);
            }
        }
        MPI_Barrier(MPI_COMM_WORLD);

    }

    else{ // manager
        int block_num;
        int n_worker = nprocs-1;
        int proc_num;
        int* assign_table = (int*)malloc(nprocs * sizeof(int));
        if(width>n_worker){
            //distribute first job to processes
            for(block_num=0; block_num<n_worker ; block_num++){
                proc_num = block_num+1;
                assign_table[proc_num]=block_num;
                //printf("send row %d to prc %d \n", block_num, proc_num);
                MPI_Send(&block_num, 1, MPI_INT, proc_num, 0, MPI_COMM_WORLD);
                //MPI_Send(&, 1, MPI_INT, proc_num, 0, MPI_COMM_WORLD);
            }
            // collect result from process proc_num and assign new job to it!
            int done = 0;
            int nextrow = n_worker;
            int number_amount;
            do{
                int flag;
                MPI_Status status;
                MPI_Iprobe(MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &flag, &status);
                if(flag == 1){
                    proc_num = status.MPI_SOURCE;
                    MPI_Get_count(&status, MPI_INT, &number_amount);
                    //printf("Received row ans from proc %d \n", proc_num);
                    block_num=assign_table[proc_num];
                    MPI_Recv(&image[(block_num/nprocs*width)+ (width/nprocs*(block_num%nprocs))], number_amount, MPI_INT, proc_num, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                    done=done+1;
                    if(nextrow<height*nprocs){
                        assign_table[proc_num]=nextrow;
                        //printf("assign_table[%d] = %d\n", proc_num, assign_table[proc_num]);
                        MPI_Send(&nextrow, 1, MPI_INT, proc_num, 0, MPI_COMM_WORLD);
                        nextrow=nextrow+1;
                    }else{ // send -1 to stop terminate
                        //printf("Sending -1 to proc%d\n", proc_num);
                        flag=-1;
                        MPI_Send(&flag,1,MPI_INT,proc_num,0,MPI_COMM_WORLD);
                    }
                }
            }while(done<height*nprocs);
        }
        else{
            int row_num;
            //distribute first job to processes
            for(row_num=0; row_num<n_worker ; row_num++){
                proc_num = row_num+1;
                if(row_num<height){
                    assign_table[proc_num]=row_num;
                    //printf("send row %d to prc %d \n", row_num, proc_num);
                    MPI_Send(&row_num, 1, MPI_INT, proc_num, 0, MPI_COMM_WORLD);
                }
                else{
                    int stop = -1;
                    MPI_Send(&stop, 1, MPI_INT, proc_num, 0, MPI_COMM_WORLD);
                }
                //MPI_Send(&, 1, MPI_INT, proc_num, 0, MPI_COMM_WORLD);
            }
            // collect result from process proc_num and assign new job to it!
            int done = 0;
            int nextrow = n_worker;
            do{
                int flag;
                MPI_Status status;
                MPI_Iprobe(MPI_ANY_SOURCE, MPI_ANY_TAG, MPI_COMM_WORLD, &flag, &status);
                if(flag == 1){
                    proc_num = status.MPI_SOURCE;
                    //printf("Received row ans from proc %d \n", proc_num);
                    row_num=assign_table[proc_num];
                    MPI_Recv(&image[row_num*width], width, MPI_INT, proc_num, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                    done=done+1;
                    if(nextrow<height){
                        assign_table[proc_num]=nextrow;
                        //printf("assign_table[%d] = %d\n", proc_num, assign_table[proc_num]);
                        MPI_Send(&nextrow, 1, MPI_INT, proc_num, 0, MPI_COMM_WORLD);
                        nextrow=nextrow+1;
                    }else{ // send -1 to stop terminate
                        //printf("Sending -1 to proc%d\n", proc_num);
                        flag=-1;
                        MPI_Send(&flag,1,MPI_INT,proc_num,0,MPI_COMM_WORLD);
                    }
                }
            }while(done<height);
        }
        /* draw and cleanup */
        write_png(filename, width, height, image);
        free(image);
        MPI_Barrier(MPI_COMM_WORLD);
    }

    

    MPI_Finalize();
    return 0;
}

void write_png(const char* filename, const int width, const int height, const int* buffer) {
    FILE* fp = fopen(filename, "wb");
    assert(fp);
    png_structp png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
    assert(png_ptr);
    png_infop info_ptr = png_create_info_struct(png_ptr);
    assert(info_ptr);
    png_init_io(png_ptr, fp);
    png_set_IHDR(png_ptr, info_ptr, width, height, 8, PNG_COLOR_TYPE_RGB, PNG_INTERLACE_NONE,
                 PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);
    png_write_info(png_ptr, info_ptr);
    size_t row_size = 3 * width * sizeof(png_byte);
    png_bytep row = (png_bytep)malloc(row_size);
    for (int y = 0; y < height; ++y) {
        memset(row, 0, row_size);
        for (int x = 0; x < width; ++x) {
            int p = buffer[(height - 1 - y) * width + x];
            row[x * 3] = ((p & 0xf) << 4);
        }
        png_write_row(png_ptr, row);
    }
    free(row);
    png_write_end(png_ptr, NULL);
    png_destroy_write_struct(&png_ptr, &info_ptr);
    fclose(fp);
}