library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity tristate is
	generic
	(
		data_width : natural := 8
	);
	port
	(
		inp :    in std_logic_vector((data_width-1) downto 0);
		enable : in std_logic;
		outp :   out std_logic_vector((data_width-1) downto 0)
	);
end entity;

architecture rtl of tristate is
	begin
		outp <= inp when enable = '1' else "00000000"; -- return inp when enable is 1 else return 0
end architecture;