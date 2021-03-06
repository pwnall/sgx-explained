all:	pdf/sgx-explained.pdf

tmp/:
	mkdir -p tmp/

pdf/:
	mkdir -p pdf/

pdf/sgx-explained.pdf: $(wildcard src/*) $(wildcard src/contents/*) \
		$(wildcard src/contents/sgx_architecture/*) \
		$(wildcard src/contents/sgx_related/*) \
		$(wildcard src/contents/sgx_security/*) \
		$(wildcard src/contents/sgx_model/*) \
		$(wildcard src/contents/sgx_extra/*) \
		tmp/ pdf/
	#BIBINPUTS=../tmp rubber --verbose --force --into=tmp/ --pdf src/main.tex
	latexmk -bibtex -cd -f -pdf -aux-directory=../tmp -output-directory=../tmp src/main.tex
	mv tmp/main.pdf pdf/sgx-explained.pdf

clean:
	rm -rf tmp pdf/*
