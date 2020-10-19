all: assemble compile program

assemble:
	./assembler/assembler.py assembly.txt

compile:
	quartus_sh --flow compile relogio

program:
	quartus_pgm -m jtag -c 1 -o "p;output_files/relogio.sof"

jtag:
	sudo killall -9 jtagd & sudo jtagconfig & quartus_pgm -m jtag -c 1 -o "p;output_files/relogio.sof"

