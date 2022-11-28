FC = gfortran
FLAGS = -O -std=f2018
BIN = bin


%.o:    %.f
	$(FC) -fdollar-ok -c $< -o $@

%.o:	%.f90
	$(FC) $(FLAGS) -c $< -o $@

