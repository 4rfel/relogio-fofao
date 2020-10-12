library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is
   generic (
         data_width: natural := 8;
         addr_width: natural := 8
    );
    port
    (
        addr     : in std_logic_vector(addr_width-1 downto 0);
        we, re   : in std_logic;
        enable   : in std_logic;
        clk      : in std_logic;
        inp      : in std_logic_vector(data_width-1 downto 0);
        outp     : out std_logic_vector(data_width-1 downto 0)
    );
end entity;

architecture rtl of RAM is
    -- Build a 2-D array type for the RAM
    subtype word_t is std_logic_vector(data_width-1 downto 0);
    type memory_t is array((2**addr_width-1) downto 0) of word_t;

    -- Declare the RAM signal.
    signal ram : memory_t;
begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(we = '1' and enable='1') then
                ram(to_integer(unsigned(addr))) <= inp;
            end if;
        end if;
    end process;

    -- A leitura é sempre assincrona e quando houver enable:
    outp <= ram(to_integer(unsigned(addr))) when (re = '1' and enable='1') else (others => 'Z');
end architecture;