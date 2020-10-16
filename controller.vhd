library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity controller is
    port
    (
        opcode :                                in std_logic_vector(4 downto 0);
        romRX, romRY, romRZ :                   in std_logic_vector(2 downto 0);
        flag_zero, flag_neg :                   in std_logic;
        comandULA, RX, RY, RZ :                 out std_logic_vector(2 downto 0);
        mux_jmp, mux_mem_ime, mux_ULA_mem_ime, enableRX, RAM_read, RAM_write : out std_logic
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
    
    begin
        RX <= romRX;    
        RY <= romRX when opcode = "01011" else romRY;
        RZ <= romRZ;
		  mux_jmp <= '1' when opcode = "01101"
							   or (opcode = "01110" and flag_zero = '1' and flag_neg = '1')
								or (opcode = "01111" and flag_zero = '1' and flag_neg = '0')
								or (opcode = "10000" and flag_zero = '0' and flag_neg = '0')
								or (opcode = "10001" and flag_zero = '1' and flag_neg = '0')
								or (opcode = "10010" and flag_zero = '1' and flag_neg = '0')
								or (opcode = "10011" and flag_zero = '0') else '0';
		  mux_ULA_mem_ime <= '1' when unsigned(opcode) <= 7 else '0';
		  enableRX <= '1' when unsigned(opcode) <= 7 or opcode = "01100" else '0';
		  comandULA <= opcode(2 downto 0) when unsigned(opcode) <= 7 else "001" when opcode = "01000" else "000";
		  mux_mem_ime <= '1' when opcode = "01100" else '0';
		  RAM_read <= '1' when opcode="01010" else '0';
		  RAM_write <= '1' when opcode = "01011" else '0';
end architecture;