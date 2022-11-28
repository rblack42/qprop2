FC = gfortran
FLAGS = -O -std=f2018 -J _build
BIN = bin

all:	$(PROJNAME)

%.o:    %.f
	$(FC) -fdollar-ok -c $< -o $@

%.o:	%.f90
	$(FC) $(FLAGS) -c $< -o $@

