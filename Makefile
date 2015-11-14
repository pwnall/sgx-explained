all:	pdf/sgx-explained.pdf

tmp/:
	mkdir -p tmp/

pdf/:
	mkdir -p pdf/

pdf/sgx-explained.pdf: $(wildcard src/*) $(wildcard src/contents/*) \
		$(wildcard src/contents/architecture/*) \
		$(wildcard src/contents/related/*) \
		$(wildcard src/contents/security/*) \
		tmp/ pdf/
	#BIBINPUTS=../tmp rubber --verbose --force --into=tmp/ --pdf src/main.tex
	latexmk -bibtex -cd -f -pdf -aux-directory=../tmp -output-directory=../tmp src/main.tex
	mv tmp/main.pdf pdf/sgx-explained.pdf

clean:
	rm -rf tmp pdf/*
