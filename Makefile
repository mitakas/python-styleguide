STYLEGUIDE = styleguide

PDFLATEX = pdflatex
BIBER = biber
RM = rm -rf

all: styleguide

styleguide:
	#$(PDFLATEX) -shell-escape $(STYLEGUIDE)
	#$(BIBER) $(STYLEGUIDE)
	$(PDFLATEX) -shell-escape $(STYLEGUIDE)
	$(PDFLATEX) -shell-escape $(STYLEGUIDE)

clean:
	$(RM) *.aux *.bbl *.bcf *.blg *.log *.nav *.out *.pyg *.run.xml *.snm *.synctex.gz *.toc *.vrb _minted-slides
