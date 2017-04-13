#
# Makefile fortran 90
#

# Name of the compiler
FC=gfortran

SOURCES=latino.f90 levint.f90 final.f90
#OUTFILES=out.out

# List of object files
OBJS=latino.o levint.o final.o

prog.x: $(OBJS)
	$(FC) $(OBJS) -o $@

%.o: %.f90
	$(FC) -c -O $<

run:	
	./prog.x #< dat > out.out

clean:
	rm -f *.o *.mod 

cleanall:
	rm -f *.out *.err core* *.o *.mod prog.x #*~
	clear

prints:	$(SOURCES)
	lpr $(SOURCES)

printo:	$(OUTFILES)
	lpr $(OUTFILES)
