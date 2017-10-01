#include <assert.h>
#include <limits.h>
#include <stdio.h>
#include <unistd.h>

#include <mpi.h>

int main(int argc, char** argv) {
	MPI_Init(&argc, &argv);
	int rank, size;
	char hostname[HOST_NAME_MAX];

	assert(!gethostname(hostname, HOST_NAME_MAX));
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Comm_size(MPI_COMM_WORLD, &size);

	printf("Hello %s: rank %2d of %2d\n", hostname, rank, size);

	MPI_Finalize();
}
