#define PNG_NO_SETJMP

#include <assert.h>
#include <png.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "mpi.h"
#include <time.h>

void write_png(const char* filename, const int width, const int height, const int* buffer);

int main(int argc, char** argv) {
    clock_t begin_total = clock();

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
    int i, j, k;
    MPI_Status status;

    /* allocate memory for image */
    int* image = (int*)malloc(width * height * sizeof(int));
    assert(image);

    /* Initialize MPI */
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
    MPI_Comm_rank(MPI_COMM_WORLD, &myrank);

    printf("Number of tasks= %d My rank= %d\n", nprocs, myrank);
    printf("rows boundary= [%d, %d]\n ", height_start, height_end);
    clock_t comm_time = 0;
    /* mandelbrot set for each proces*/
    if(height>width){
        for(int n=0; n<height/nprocs+1 ; n++){
            if(n*nprocs + myrank < height)j=n*nprocs + myrank;
            else j=(n-1)*nprocs+myrank;
            //printf("j=%d\n", j);
            double y0 = j * ((upper - lower) / height) + lower;
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
                image[j * width + i] = repeats;
            }
        }

        
        /*MPI Communication*/
        if(myrank==nprocs-1){
            int* temp = (int*)malloc(width * height * sizeof(int));
            for (i = 0; i < nprocs-1; i++){
                //printf("i=%d\n", i);
                clock_t begin_comm = clock();
                MPI_Recv(&temp[0], height*width, MPI_INT, i, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                clock_t end_comm = clock();
                comm_time += (end_comm- begin_comm);
                //printf("received!\n");
                for(int n=0; n<height/nprocs+1; n++){
                    if(n*nprocs+i<height)j=n*nprocs+i;
                    else j=(n-1)*nprocs+i;
                    //printf("j=%d\n", j);
                    for(int k =0; k < width; ++k){
                        image[j * width + k] = temp[j * width + k];
                    }
                }
            }
            // draw
            write_png(filename, width, height, image);
            free(image);
        }
        else {
            //printf("sending....%d \n", myrank);
            clock_t begin_comm = clock();
            MPI_Send(&image[0], height*width, MPI_INT, nprocs-1, 0, MPI_COMM_WORLD);
            clock_t end_comm = clock();
            comm_time += (end_comm- begin_comm);
            free(image);
        }
    }
    else{
        for(int n=0; n<width/nprocs+1 ; n++){
            if(n*nprocs + myrank < width)i=n*nprocs + myrank;
            else i=(n-1)*nprocs+myrank;
            for (int j = 0; j < height; ++j) {
                double y0 = j * ((upper - lower) / height) + lower;
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
                image[j * width + i] = repeats;
            }
        }
        printf("shit%d\n", myrank);
        
        /*MPI Communication*/
        if(myrank==nprocs-1){
            int* temp = (int*)malloc(width * height * sizeof(int));
            for (i = 0; i < nprocs-1; i++){
                clock_t begin_comm = clock();
                MPI_Recv(&temp[0], height*width, MPI_INT, i, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
                clock_t end_comm = clock();
                comm_time += (end_comm- begin_comm);
                //printf("received!\n");
                for(int n=0; n<width/nprocs+1; n++){
                    if(n*nprocs+i<width)k=n*nprocs+i;
                    else k=(n-1)*nprocs+i;
                    //printf("j=%d\n", j);
                    for(int j =0; j < height; ++j){
                        image[j * width + k] = temp[j * width + k];
                    }
                }
            }
            // draw
            write_png(filename, width, height, image);
            free(image);
        }
        else {
            //printf("sending....%d \n", myrank);
            clock_t begin_comm = clock();
            MPI_Send(&image[0], height*width, MPI_INT, nprocs-1, 0, MPI_COMM_WORLD);
            clock_t end_comm = clock();
            comm_time += (end_comm- begin_comm);
            free(image);
        }
    }

    clock_t end_total = clock();
    clock_t total_time = end_total- begin_total;
    printf("process(%d) total time = %lf\n", myrank, (double)(total_time) / CLOCKS_PER_SEC);
    printf("process(%d) comm time = %lf\n", myrank, (double)(comm_time) / CLOCKS_PER_SEC);

    /* cleanup */
    
    
    MPI_Finalize();
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

