# From https://github.com/kjhealy/pandoc-templates/blob/master/examples/Makefile
# thanks to Kieran Healy

## Markdown extension (e.g. md, markdown, mdown).
MEXT = md

## 	All markdown files in the working directory
SRC = $(wildcard *.$(MEXT))

## Location of Pandoc support files.
PREFIX = pandoc_settings

## Location of your working bibliography file
BIB = refs.bib

## CSL stylesheet (located in the csl folder of the PREFIX directory).
CSL = apsa


PDFS=$(SRC:.md=.pdf)
HTML=$(SRC:.md=.html)
REVEAL=$(SRC:.md=.slides.html)
TEX=$(SRC:.md=.tex)

all:	$(PDFS) $(HTML) $(REVEAL)

pdf:	clean $(PDFS)
html:	clean $(HTML)
html:	clean $(REVEAL)
# tex:	clean $(TEX)

%.html:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w html -S --template=$(PREFIX)/templates/html.template --filter pandoc-citeproc --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

%.slides.html:	%.md
	pandoc -t revealjs -s --toc-depth=1 --toc --template=$(PREFIX)/templates/revealjs.template --filter pandoc-citeproc --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -V theme=league -o $@ $<

# %.tex:	%.md
# 	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w latex -s -S --latex-engine=pdflatex --template=$(PREFIX)/templates/latex.template --filter pandoc-citeproc --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

# %.pdf:	%.md
# 	pandoc -t beamer -V theme:Warsaw -r markdown+simple_tables+table_captions+yaml_metadata_block -s -S --toc-depth=1 --toc --latex-engine=pdflatex --template=$(PREFIX)/templates/latex.template --filter pandoc-citeproc --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

%.pdf:	%.md
	pandoc -t beamer -V theme:Warsaw -s --toc-depth=1 --toc --latex-engine=pdflatex --template=$(PREFIX)/templates/beamer.template --filter pandoc-citeproc --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<


clean:
	rm -f *.html *.pdf *.tex *.slides.html

again:
	make clean
	make
