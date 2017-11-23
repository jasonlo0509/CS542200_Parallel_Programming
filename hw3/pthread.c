

#include <pthread.h>
#include <stdio.h> 
#include <sys/types.h>
#include <sys/syscall.h>

#define NUM_THREADS 10

void *PrintHello(void *threadId) {
	long* data = (long*) threadId; 
	//printf("Hello World! It's me, thread #%ld!\n", *data);
	pid_t x = syscall(__NR_gettid);
	printf("%d\n", x);
	pthread_exit(NULL); 
}
int main (int argc, char *argv[]) {
	pthread_t threads[NUM_THREADS];
	for(long tid=0; tid<NUM_THREADS; tid++){
		 pthread_create(&threads[tid], NULL, PrintHello, (void *)&tid);
	}
	/* Last thing that main() should do */
	pthread_exit(NULL); 
}