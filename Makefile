TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error

.PHONY: all view

all : pdf view

view : Main.tex
	evince main.pdf&

pdf : main.tex
	$(TEX) main.tex
	bibtex main
	$(TEX) main.tex

.PHONY: clean
clean:
	rm -f *.log *.aux *~ *.pdf *bbl
