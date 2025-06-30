.PHONY:  all clean expose thesis

all: expose thesis

clean:
	rm -rf .temp
	rm render/*

expose: render/expose.pdf

thesis: render/thesis.pdf

render/expose.pdf: expose/expose.tex bibliography.bib
	latexmk -pdf -outdir=.temp expose/expose.tex
	cp .temp/expose.pdf render/expose.pdf

render/thesis.pdf: thesis/thesis.tex bibliography.bib
	latexmk -pdf -outdir=.temp thesis/thesis.tex
	cp .temp/thesis.pdf render/thesis.pdf

