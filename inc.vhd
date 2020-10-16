library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity inc is
    generic
    (
        data_width : natural := 10
    );
    port
    (
        A: in STD_LOGIC_VECTOR((data_width-1) downto 0);
        outp:  out STD_LOGIC_VECTOR((data_width-1) downto 0)
    );
end entity;

architecture rtl of inc is
    begin
        outp <= STD_LOGIC_VECTOR(unsigned(A) + "0000000001");
end architecture;