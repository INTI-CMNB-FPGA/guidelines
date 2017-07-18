#by RAM

%.dvi : %.tex
	latex $<
	latex $<

%.ps : %.dvi
	dvips $<

%.pdf : %.ps
	ps2pdf $<

all: quick_reference.pdf

clean:
	rm -fr *.dvi *.aux *.log *.ps *.pdf *.bkp *.out
