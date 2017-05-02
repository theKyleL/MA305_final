#
# Makefile fortran 90
#

# Name of the compiler
FC=gfortran

SOURCES=latinoi_pt2.f90 levine_pt2.f90 final_pt2.f90
#OUTFILES=out.out

# List of object files
OBJS=latino_pt2.o levine_pt2.o final_pt2.o

prog.x: $(OBJS)
	$(FC) $(OBJS) -o $@

%.o: %.f90
	$(FC) -c -O $<

run:	
	./prog.x 
#< dat > out.out

clean:
	rm -f *.o *.mod 

cleanall:
	rm -f *.out *.err core* *.o *.mod prog.x #*~
	clear

prints:	$(SOURCES)
	lpr $(SOURCES)

printo:	$(OUTFILES)
	lpr $(OUTFILES)
