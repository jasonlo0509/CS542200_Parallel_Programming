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
    int i;
    MPI_Status status;

    /* allocate memory for image */
    int* image = (int*)malloc(width * height * sizeof(int));
    assert(image);

    /* Initialize MPI */
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
    MPI_Comm_rank(MPI_COMM_WORLD, &myrank);

    // Each process's limit
    if(myrank==nprocs-1){
        height_start=(myrank*(height/nprocs));
        height_end=height;
        int* temp = (int*)malloc(width * height * sizeof(int));
    }
    else { 
        height_start=(myrank*(height/nprocs));
        height_end=((myrank+1)*(height/nprocs));
    }
    printf("Number of tasks= %d My rank= %d\n", nprocs, myrank);
    printf("rows boundary= [%d, %d]\n ", height_start, height_end);

    /* mandelbrot set for each proces*/
    for (int j = height_start; j < height_end; ++j) {
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
    clock_t comm_time = 0;
    /*MPI Communication*/
    if(myrank==nprocs-1){
        for (i = 0; i < nprocs-1; ++i){
            //printf("i=%d\n", i);
            clock_t begin_comm = clock();
            MPI_Recv(&image[i*(height/nprocs)*width], (height/nprocs)*width, MPI_INT, i, MPI_ANY_TAG, MPI_COMM_WORLD, &status);
            clock_t end_comm = clock();
            comm_time +=(end_comm-begin_comm);
            //printf("received!\n");
        }
        // draw
        write_png(filename, width, height, image);
    }
    else {
        //printf("sending....%d \n", myrank);
        clock_t begin_comm = clock();
        MPI_Send(&image[height_start*width], (height_end-height_start)*width, MPI_INT, nprocs-1, 0, MPI_COMM_WORLD);
        clock_t end_comm = clock();
        comm_time +=(end_comm-begin_comm);
    }
    

    /* cleanup */
    
    free(image);
    clock_t end_total = clock();
    clock_t total_time = end_total- begin_total;
    clock_t comp_time = total_time- comm_time;
    printf("process(%d) total time = %lf\n", myrank, (double)(total_time) / CLOCKS_PER_SEC);
    printf("process(%d) comm time = %lf\n", myrank, (double)(comm_time) / CLOCKS_PER_SEC);
    printf("process(%d) comp time = %lf\n", myrank, (double)(comp_time) / CLOCKS_PER_SEC);
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

