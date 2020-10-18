all:
	./assembler/assembler.py assembly.txt
	quartus_sh --flow compile relogio
