.PHONY: all tectonic clean

all:
	latexmk -xelatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build vkr.tex

tectonic:
	mkdir -p build
	tectonic --untrusted --keep-logs --outdir build vkr.tex

clean:
	latexmk -c -outdir=build vkr.tex
