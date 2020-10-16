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
        opcode :                                         in std_logic_vector((data_width-1) downto 0);
        address :                                        in std_logic_vector((address_width-1) downto 0);
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 :             out std_logic := 0;
        LED0, LED1, RAM :                                out std_logic := 0;
        BUT, BaseTempo, SW0, SW1 :                       out std_logic := 0
    );
end entity;

architecture rtl of address_decoder is
    begin
		process is
        if(opcode = "01010" or opcode = "01011") then
		  		process is

            if(to_integer(address) >= 1024-1024 and to_integer(address) <= 1279-1024) then
                RAM <= '1';
            elsif(to_integer(address) = 1280-1024) then
                BaseTempo <= '1'
            elsif(to_integer(address) = 1281-1024) then
                LED0 <= '1';
            elsif(to_integer(address) = 1282-1024) then
                LED1 <= '1';
            elsif(to_integer(address) = 1283-1024) then
                SW0 <= '1';
            elsif(to_integer(address) = 1284-1024) then
                SW1 <= '1';
            elsif(to_integer(address) = 1285-1024) then
                HEX0 <= '1';
            elsif(to_integer(address) = 1286-1024) then
                HEX1 <= '1';
            elsif(to_integer(address) = 1287-1024) then
                HEX2 <= '1';
            elsif(to_integer(address) = 1288-1024) then
                HEX3 <= '1';
            elsif(to_integer(address) = 1289-1024) then
                HEX4 <= '1';
            elsif(to_integer(address) = 1290-1024) then
                HEX5 <= '1';
            elsif(to_integer(address) = 1291-1024) then
                BUT <= '1';
            end if;
				end process;
        end if;
		end process;
end architecture;