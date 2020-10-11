library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity address_decoder is
    generic
    (
        opcode_width  : natural := 5
        address_width : natural := 8
    );
    port
    (
        opcode :                                         in std_logic_vector((data_width-1) downto 0);
        address :                                        in std_logic_vector((address_width-1) downto 0);
        SEG7_0, SEG7_1, SEG7_2, SEG7_3, SEG7_4, SEG7_5 : out std_logic := 0;
        LED0, LED1, RAM :                                out std_logic := 0;
        BUT, BaseTempo, SW0, SW1 :                       out std_logic := 0
    );
end entity;

architecture rtl of address_decoder is
    begin
        if (opcode == "01010" or opcode == "01011") -- ld
            if (to_integer(address) >= 1024-1024 and to_integer(address) <= 1279-1024)
                RAM <= '1'
            end if;
            else if (to_integer(address) == 1280-1024)
                BaseTempo <= '1'
            end if;
            else if (to_integer(address) == 1281-1024)
                LED0 <= '1'
            end if;
            else if (to_integer(address) == 1282-1024)
                LED1 <= '1'
            end if;
            else if (to_integer(address) == 1283-1024)
                SW0 <= '1'
            end if;
            else if (to_integer(address) == 1284-1024)
                SW1 <= '1'
            end if;
            else if (to_integer(address) == 1285-1024)
                SEG7_0 <= '1'
            end if;
            else if (to_integer(address) == 1286-1024)
                SEG7_1 <= '1'
            end if;
            else if (to_integer(address) == 1287-1024)
                SEG7_2 <= '1'
            end if;
            else if (to_integer(address) == 1288-1024)
                SEG7_3 <= '1'
            end if;
            else if (to_integer(address) == 1289-1024)
                SEG7_4 <= '1'
            end if;
            else if (to_integer(address) == 1290-1024)
                SEG7_5 <= '1'
            end if;
            else if (to_integer(address) == 1291-1024)
                BUT <= '1'
            end if;
        end if;
end architecture;