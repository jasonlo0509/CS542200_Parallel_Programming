#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <stdlib.h>
#include <stdint.h>

/*float readfloat(FILE *f, int len) {
	float v[len];
	fread((void*)(&v), sizeof(v), len, f);
	return v;
}*/
 
int main(int argc, char **argv)
{
    if(argc != 2)    
        return 1;
 
    int file=0;
        if((file=open(argv[1],O_RDONLY)) < -1)
            return 1;
    //fseek( input, 0, SEEK_END);    
 
    struct stat fileStat;
    if(fstat(file,&fileStat) < 0)    
        return 1;
 
    printf("Information for %s\n",argv[1]);
    printf("---------------------------\n");
    printf("File Size: \t\t%d bytes\n",fileStat.st_size);
    printf("Number of Links: \t%d\n",fileStat.st_nlink);
    printf("File inode: \t\t%d\n",fileStat.st_ino);
 
    printf("File Permissions: \t");
    printf( (S_ISDIR(fileStat.st_mode)) ? "d" : "-");
    printf( (fileStat.st_mode & S_IRUSR) ? "r" : "-");
    printf( (fileStat.st_mode & S_IWUSR) ? "w" : "-");
    printf( (fileStat.st_mode & S_IXUSR) ? "x" : "-");
    printf( (fileStat.st_mode & S_IRGRP) ? "r" : "-");
    printf( (fileStat.st_mode & S_IWGRP) ? "w" : "-");
    printf( (fileStat.st_mode & S_IXGRP) ? "x" : "-");
    printf( (fileStat.st_mode & S_IROTH) ? "r" : "-");
    printf( (fileStat.st_mode & S_IWOTH) ? "w" : "-");
    printf( (fileStat.st_mode & S_IXOTH) ? "x" : "-");
    printf("\n\n");
 
    printf("The file %s a symbolic link\n\n", (S_ISLNK(fileStat.st_mode)) ? "is" : "is not");
	//=== allocate array to put data in======//
	FILE *input= fopen(argv[1],"rb");
	int k, i=fileStat.st_size;
	fseek( input, 0, SEEK_END);
	int filelen = ftell( input );
	printf("file length = %d \n", filelen);
	float *get;
	get = (float*) malloc((i/4)*sizeof(float));
	fseek( input, 0, SEEK_SET);
	//get[0] = 0.786;	
	//get = calloc(i/4, sizeof(*get));
	//fopen("/home/pp17/ta/hw1/samples/sorted01","rb"); 
	if ( input==NULL )
	{
		printf("open input file fail!\n");
		exit(0);
	}
	
	fread(get, sizeof(float), i/4, input);
	/*FILE * pFile;
	pFile = fopen ("testout01.bin", "wb");
	fwrite ((void*)(&get) , sizeof(get), i/16, pFile);	
	*/
	//get = readfloat(input, fileStat.st_size);
	//printf("first num is %f \n", temp);	
	//fread((float*)&get, sizeof(float), sizeof(get), file);
	for (k=0; k < i/4; k++ )
	{
		printf("%f ",*(get+k));
	}
	free(get);
	printf("\n");
	fclose(input);
	//fclose (pFile);
 
    return 0;
}
