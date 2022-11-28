# Drela's original Qprop code manager
#
QPROPURL = https://web.mit.edu/drela/Public/web/qprop
QPROPTAR = qprop1.22.tar.gz

MBUILD = qprop_f
MDIR = $(MBUILD)/Qprop/src
MSRCS = $(MDIR)/qprop.f \
		$(MDIR)/gvcalc.f \
		$(MDIR)/cdfun.f \
		$(MDIR)/tqcalc.f \
		$(MDIR)/motor.f \
		$(MDIR)/spline.f \
		$(MDIR)/io.f \
		$(MDIR)/qcget.f

MOBJS = $(MSRCS:.f=.o)

.PHONY: qprop
qprop:	$(BIN)/qprop  ## compile master Qprop

# fetch copy of master QProp codes from MIT ==========
.PHONY: fetch
fetch: $(MBUILD)/$(QPROPTAR)	## download master qprop from MIT

$(MBUILD)/$(QPROPTAR):
	@mkdir -p $(MBUILD)
	curl $(QPROPURL)/$(QPROPTAR) -o $@

.PHONY:	unpack
unpack:	 $(MBUILD)/$(QPROPTAR)		## unpack qprop tar file
	cd $(MBUILD) && \
		tar zxvf $(QPROPTAR)

# compile qprop --------------------------------------

$(BIN)/qprop:	$(MOBJS)
	$(FC) -o $@ $^


