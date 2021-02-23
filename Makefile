# Makefile for latex slide (beamer)
all: slide.pdf
	open slide.pdf

slide.dvi: slide.tex
	platex $<

slide.pdf: slide.dvi
	dvipdfmx -o slide.pdf $<

look: slide.pdf
	open $<

clean:
	rm -rf *~ *.aux *.dvi *.log *.nav *.out *.snm *.toc
