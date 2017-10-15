#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char *argv[])
{
	FILE *my_file = fopen("million.bin", "wb");
	float x=0.0;
	int i;
    for (i=0;i<1000000;i++){
        x = (float)(1.0*rand()/RAND_MAX-1.0);
        //printf("%f\n", ((float)rand()));
    	fwrite(&x, sizeof x, 1, my_file);
    }
    fclose(my_file);
    return 0;
}
