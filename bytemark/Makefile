test: test-huffman
clean:
	rm -f *.s *.min-caml *.ocamlopt *.gcc *.gcc64 *.gcc-mflat *.cmi *.cmx *.o *.out

test-huffman: huffman.min-caml huffman.ocamlopt huffman.gcc huffman.gcc64 huffman.gcc-mflat
	time ./huffman.min-caml > huffman.min-caml.out < huffman.int
	time ./huffman.ocamlopt > huffman.ocamlopt.out < huffman.int
	time ./huffman.gcc > huffman.gcc.out < huffman.int
	time ./huffman.gcc64 > huffman.gcc64.out < huffman.int
	time ./huffman.gcc-mflat > huffman.gcc-mflat.out < huffman.int
	diff huffman.min-caml.out huffman.ocamlopt.out
	diff huffman.min-caml.out huffman.gcc.out
	diff huffman.min-caml.out huffman.gcc64.out
	diff huffman.min-caml.out huffman.gcc-mflat.out

huffman.ocamlopt: huffman.ml
	ocamlopt -pp ../min-rt/preprocess.sh -unsafe -inline 100 huffman.ml -o huffman.ocamlopt

huffman.min-caml: huffman.ml
	../min-caml.opt -inline 100 huffman
	gcc -m32 -g -O2 -Wall huffman.s ../libmincaml.s ../stub.c -lm -o huffman.min-caml

huffman.gcc: huffman.c
	gcc -m32 -O3 -Wall huffman.c -o huffman.gcc

huffman.gcc64: huffman.c
	gcc -m64 -O3 -Wall huffman.c -o huffman.gcc64

huffman.gcc-mflat: huffman.c
	sparc-sun-solaris2.9-gcc-3.4.3 -m32 -mflat -O3 -Wall huffman.c -o huffman.gcc-mflat
