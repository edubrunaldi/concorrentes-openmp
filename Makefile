all:	 JRMP.o concorrentes_openmp.o 
	@g++  -O3 JRMP.o  concorrentes_openmp.o -o concorrentes_openmp -fopenmp -g

JRMP.o:
	@g++  -O3 -c JRMP.c -fopenmp -g

concorrentes_openmp.o:
	@g++   -O3 -c concorrentes_openmp.c -g

clean:
	@rm *.o concorrentes_openmp
	@rm -rf out/*/*/*
run:
	@./concorrentes_openmp
