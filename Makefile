SHELL := /bin/bash

MAIN := main
TEX := $(MAIN).tex
PDF := $(MAIN).pdf
MD := $(MAIN).md
HTML := $(MAIN).html

BIBFILES := $(wildcard *.bib)

LATEXMK := latexmk
PANDOC := pandoc

LATEXMK_FLAGS := -pdf -interaction=nonstopmode -halt-on-error -file-line-error -use-make
PANDOC_FLAGS := --standalone --toc --number-sections --from=latex

PANDOC_BIB_ARGS := $(foreach bib,$(BIBFILES),--bibliography=$(bib))

.PHONY: all pdf html md clean

all: pdf html md

pdf: $(PDF)

$(PDF): $(TEX) $(BIBFILES)
	$(LATEXMK) $(LATEXMK_FLAGS) $(TEX)

html: $(HTML)

$(HTML): $(TEX) $(BIBFILES) pdf
	$(PANDOC) $(PANDOC_FLAGS) --to=html5 --citeproc $(PANDOC_BIB_ARGS) --output=$(HTML) $(TEX)

md: $(MD)

$(MD): $(TEX) $(BIBFILES) pdf
	$(PANDOC) $(PANDOC_FLAGS) --to=gfm --citeproc $(PANDOC_BIB_ARGS) --output=$(MD) $(TEX)

clean:
	$(LATEXMK) -C $(TEX)
	rm -f \
		$(MAIN).aux \
		$(MAIN).bbl \
		$(MAIN).bcf \
		$(MAIN).blg \
		$(MAIN).fdb_latexmk \
		$(MAIN).fls \
		$(MAIN).glg \
		$(MAIN).glo \
		$(MAIN).gls \
		$(MAIN).glsdefs \
		$(MAIN).ist \
		$(MAIN).lof \
		$(MAIN).log \
		$(MAIN).lot \
		$(MAIN).out \
		$(MAIN).run.xml \
		$(MAIN).toc \
		$(MAIN).xdy \
		$(MAIN).acn \
		$(MAIN).acr \
		$(MAIN).alg
	find . -type f \( \
		-name "*.aux" -o \
		-name "*.bbl" -o \
		-name "*.bcf" -o \
		-name "*.blg" -o \
		-name "*.fdb_latexmk" -o \
		-name "*.fls" -o \
		-name "*.glg" -o \
		-name "*.glo" -o \
		-name "*.gls" -o \
		-name "*.glsdefs" -o \
		-name "*.ist" -o \
		-name "*.lof" -o \
		-name "*.log" -o \
		-name "*.lot" -o \
		-name "*.out" -o \
		-name "*.run.xml" -o \
		-name "*.toc" -o \
		-name "*.xdy" -o \
		-name "*.acn" -o \
		-name "*.acr" -o \
		-name "*.alg" \
	\) -delete