all:
	./assembler/assembler.py assembly.txt
	quartus_sh --flow compile relogio
	quartus_pgm -m jtag -c 1 -o "p;output_files/relogio.sof"

