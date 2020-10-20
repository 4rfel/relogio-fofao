LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- Converte Hexa pra Decimal

entity conversor_7seg is
    port (
        -- Input ports
        dadoHex  : in std_logic_vector(7 downto 0);
        apaga    : in std_logic := '0';
        negativo : in std_logic := '0';
        overFlow : in std_logic := '0';
        -- Output ports
        saida7seg1 : out std_logic_vector(6 downto 0); -- := (others => '1')
        saida7seg2 : out std_logic_vector(6 downto 0) -- := (others => '1')
    );
end entity;

architecture comportamento of conversor_7seg is
    SIGNAL hex           : std_logic_vector(13 downto 0);
    SIGNAL unsigned_input : unsigned(7 downto 0);
    
    FUNCTION Conv7Seg(
        digit : std_logic_vector(3 downto 0)
    ) return std_logic_vector
    is begin
        case digit is
            when x"0" => return "1000000";
            when x"1" => return "1111001";
            when x"2" => return "0100100";
            when x"3" => return "0110000";
            when x"4" => return "0011001";
            when x"5" => return "0010010";
            when x"6" => return "0000010";
            when x"7" => return "1111000";
            when x"8" => return "0000000";
            when x"9" => return "0010000";
                when others => return "1111111";
        end case;
    end;

    FUNCTION decimal7Segmentos(
        value: unsigned;
        digitos: integer
    ) return std_logic_vector
    is 
        variable LEDS : std_logic_vector(digitos*7-1 downto 0);
        variable quo : unsigned(7 downto 0);
        variable restante: unsigned(3 downto 0);
    begin
        quo := value;
        FOR i in 0 to digitos-1 loop
            restante := resize(quo mod 10, 4);
            quo  := quo/10;
            LEDS(i*7+6 downto i*7) := Conv7Seg(std_logic_vector(restante)
            );
        end loop;
        return LEDS;
    end;


begin
    unsigned_input <= unsigned(dadoHex);
    hex <= decimal7Segmentos(
        unsigned_input,
        2
    );

    saida7seg2 <= "1100010" when (overFlow = '1') else
        "1111111" when (apaga = '1' and negativo = '0') else
        "0111111" when (apaga = '0' and negativo = '1') else
        hex(13 downto 7);

    
    saida7seg1 <= "1100010" when (overFlow = '1') else
        "1111111" when (apaga = '1' and negativo = '0') else
        "0111111" when (apaga = '0' and negativo = '1') else
        hex(6 downto 0);
end architecture;