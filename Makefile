.PHONY:  all clean expose thesis

all: expose thesis

clean:
	rm -rf .temp
	rm render/*

expose: render/expose.pdf

thesis: render/thesis.pdf

render/expose.pdf: expose/expose.tex bibliography.bib
	cd expose; latexmk -pdf -outdir=../.temp expose.tex
	cp .temp/expose.pdf render/expose.pdf

render/thesis.pdf: thesis/thesis.tex bibliography.bib
	cd thesis; latexmk -pdf -outdir=../.temp thesis.tex
	cp .temp/thesis.pdf render/thesis.pdf

