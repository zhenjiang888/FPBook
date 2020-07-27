TEX=platex
BIB=bibtex
DVIPS=`if which dvipsk > /dev/null; then echo dvipsk; else echo dvips; fi` -Ppdf -t letter

PDFLATEX=pdflatex

DVIPDF=dvipdfmx
PS_PDF=ps2pdf14
RM=rm -f
MAIN=main

BIB_FILE=reference.bib

FILES=$(MAIN).tex fp_basicConcept.tex

TEX_FILE=$(MAIN).tex
PDF_FILE=$(MAIN).pdf
AUX_FILE=$(MAIN).aux
BBL_FILE=$(MAIN).bbl

.phony : full clean clean_all pdf

default : pdf

full : $(PDF_FILE)
	$(BIB) $(MAIN)
	$(PDFLATEX) $(TEX_FILE)
	$(PDFLATEX) $(TEX_FILE)

clean :
	$(RM) *.aux *.blg *.bbl *.dvi *.log *.toc *.out *.pbm *~ $(MAIN).p*

all_clean : clean
	$(RM) $(PS_FILE) $(PDF_FILE)

pdf : $(PDF_FILE)

$(AUX_FILE) : $(FILES)
	$(TEX) $(TEX_FILE)
	$(RM) $(DVI_FILE)

$(BBL_FILE) : $(AUX_FILE) $(BIB_FILE)
	$(BIB) $(MAIN)

$(PDF_FILE) : $(FILES)
	$(PDFLATEX) $(TEX_FILE)

$(MAIN).tex: lhs2TeX-polycode.sty lhs2TeX-macros.lhs fp_basicConcept.tex

lhs2TeX-polycode.sty: lhs2TeX-polycode.lhs
	lhs2TeX --output=$@ $<

%.tex: %.lhs lhs2TeX-macros.lhs
	lhs2TeX --output=$@ $<
