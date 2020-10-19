library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity controller is
	port
	(
		opcode :                                in std_logic_vector(4 downto 0);
		romRX, romRY, romRZ :                   in std_logic_vector(2 downto 0);
		flag_zero, flag_neg :                   in std_logic;
		commandULA, RX, RY, RZ :                out std_logic_vector(2 downto 0);
		mux_jmp, mux_mem_ime, mux_ULA_mem_ime, enableRX, RAM_read, RAM_write, reset_timer, enable_ff_cmp : out std_logic
	);
	end entity;

	architecture rtl of controller is
	-- 00000 = add
	-- 00001 = sub
	-- 00010 = and
	-- 00011 = or
	-- 00100 = not
	-- 00101 = inc
	-- 00110 = dec
	-- 00111 = mov
	-- 01000 = cmp
	-- 01001 = nop
	-- 01010 = ld
	-- 01011 = st
	-- 01100 = lea
	-- 01101 = jmp
	-- 01110 = jle
	-- 01111 = jl
	-- 10000 = jg
	-- 10001 = jge
	-- 10010 = je
	-- 10011 = jne
	-- 10100 = rst
	signal aa, bb : std_logic;
	begin
		RX <= romRX;
		RY <= romRX when opcode = "01011" else romRY; -- RX when we want to store a word in RAM/IOs else RY
		RZ <= romRZ;
		mux_jmp <= '1' when opcode = "01101" -- jmp
						or (opcode = "01110" and flag_zero = '1' and flag_neg = '1') -- jle
						or (opcode = "01111" and flag_zero = '0' and flag_neg = '1') -- jl
						or (opcode = "10000" and flag_zero = '0' and flag_neg = '0') -- jg
						or (opcode = "10001" and flag_zero = '1' and flag_neg = '0') -- jge
						or (opcode = "10010" and flag_zero = '1' and flag_neg = '0') -- je
						or (opcode = "10011" and flag_zero = '0') -- jne
						else '0'; -- default
		aa <= '1' when unsigned(opcode) <= 7 else '0' when (opcode = "01010" or opcode = "01100") else 'Z';
		mux_ULA_mem_ime <= '1' when aa = '1' else '0'; -- the first 7 opcodes use the ULA
		enableRX <= '1' when unsigned(opcode) <= 7 or opcode = "01100" or opcode = "01010" else '0'; -- the first 7 opcodes and 01100 (lea)
																				 -- will save a value on RX
		commandULA <= "001" when opcode = "01000" or opcode = "00001" else
						  "010" when opcode = "00010" else "000";
		-- the first 7 opcodes use the ULA and the commands for it are in the same order
--		bb <= '1' when opcode <= "01100" else '0' when (opcode = "01010" or opcode = "01100") else 'Z';
		mux_mem_ime <= '1' when opcode = "01100" else '0'; -- select imediato when ia a lea instruction
		RAM_read <= '1' when opcode = "01010" else '0'; -- enable read from RAM when is a load instruction 
		RAM_write <= '1' when opcode = "01011" else '0'; -- enable write to RAM when is a store instruction
		reset_timer <= '1' when opcode = "10100" else '0'; -- clear timer flag
		enable_ff_cmp <= '1' when opcode = "01000" else '0'; -- enable flip flop neg and zero
end architecture;