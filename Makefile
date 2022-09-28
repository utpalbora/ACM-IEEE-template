all: main.pdf
.PHONY: clean distclean

main.pdf:
	latexmk main.tex -M -MP -MF main.d

-include *.d

clean:
	rm -f *.out *.aux *.bbl *.blg *.fdb_latexmk \
		*.fls *.log *.toc *.brf main.d \
		*.idx *.ilg *.ind *.lof *.lot *.loa *.los *.lol \
		*.nlo *.nls */*.aux */*/*.aux

distclean: clean
	rm -f main.pdf
