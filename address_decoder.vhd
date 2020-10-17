library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity address_decoder is
	generic
	(
		opcode_width  : natural := 5;
		address_width : natural := 8
	);
	port
	(
		opcode :                                         in std_logic_vector(4 downto 0);
		address :                                        in std_logic_vector(7 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 :             out std_logic := '0';
		LED0, LED1, RAM :                                out std_logic := '0';
		BUT, BaseTempo, SW0, SW1 :                       out std_logic := '0'
	);
end entity;
	-- 01010 = ld
	-- 01011 = st
architecture rtl of address_decoder is
	begin
			-- check if the opcode is one where we need to enable an IO and if it is
			-- enable the requested IO
			RAM <= '1' when (opcode="01010" or opcode="01011") and (unsigned(address) >= 0 and unsigned(address) <= 220) else '0';
			BaseTempo <= '1' when (opcode="01010") and (unsigned(address) = 221) else '0';
			LED0 <= '1' when (opcode="01011") and (unsigned(address) = 222) else '0';
			LED1 <= '1' when (opcode="01011") and (unsigned(address) = 223) else '0';
			SW0 <= '1' when (opcode="01010") and (unsigned(address) = 224) else '0';
			SW1 <= '1' when (opcode="01010") and (unsigned(address) = 225) else '0';
			HEX0 <= '1' when (opcode="01011") and (unsigned(address) = 226) else '0';
			HEX1 <= '1' when (opcode="01011") and (unsigned(address) = 226) else '0';
			HEX2 <= '1' when (opcode="01011") and (unsigned(address) = 227) else '0';
			HEX3 <= '1' when (opcode="01011") and (unsigned(address) = 227) else '0';
			HEX4 <= '1' when (opcode="01011") and (unsigned(address) = 228) else '0';
			HEX5 <= '1' when (opcode="01011") and (unsigned(address) = 228) else '0';
			BUT <= '1' when (opcode="01010") and (unsigned(address) = 229) else '0';
end architecture;