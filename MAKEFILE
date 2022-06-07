PHONY: all

all: clean main doc

main: main.c
	gcc main.c -o main -std=c11 -W -Wall -pedantic

tabela.tex: main
	./main $(BASE)

doc: tabela.tex
	tectonic main.tex 

PHONY: clear

clean:
	rm -f tabela.tex main