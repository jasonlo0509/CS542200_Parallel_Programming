CC = mpicc
CXX = mpicxx
CFLAGS = -O3 -std=gnu99 -lpthread
CXXFLAGS = -O3 -std=gnu++11

STUDENTID = $(USER:p%=%)
TARGETS = APSP_Pthread APSP_MPI_sync APSP_MPI_async

.PHONY: all
all: $(TARGETS)

.PHONY: clean
clean: 
	rm -f $(TARGETS)
