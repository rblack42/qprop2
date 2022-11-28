# Qprop2 build
FDIR =  src

FSRCS = \
		$(FDIR)/qprop2.f90 \
		$(FDIR)/m_Loader.f90 \
		$(FDIR)/m_Motor.f90

FOBJS = $(FSRCS:.f90=.o)


# compile qprop --------------------------------------
.PHONY: qprop2
qprop2:	$(BIN)/qprop2	## compile qprop2

$(BIN)/qprop2:	$(FOBJS)
	$(FC) -o $@ $^

