.PHONY: report
report: report.bbl
	pdflatex report.tex

report.bbl: report.bib
	pdflatex report.tex
	bibtex report
	pdflatex report.tex

.PHONY: clean
clean:
	rm *.aux *.bbl *.blg *.log *.out *.pdf *.toc
