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
    SIGNAL hexa   : std_logic_vector(13 downto 0);
    SIGNAL input : unsigned(7 downto 0);
    
    function converte(
        digito : std_logic_vector(3 downto 0)
    ) return std_logic_vector
    is begin
        if digito is x"0" return "1000000";
        if digito is x"1" return "1111001";
        if digito is x"2" return "0100100";
        if digito is x"3" return "0110000";
        if digito is x"4" return "0011001";
        if digito is x"5" return "0010010";
        if digito is x"6" return "0000010";
        if digito is x"7" return "1111000";
        if digito is x"8" return "0000000";
        if digito is x"9" return "0010000";
        return "1111111";
    end;

variable LEDS : std_logic_vector(digitos*7-1 downto 0);
variable quociente : unsigned(7 downto 0);
variable resto: unsigned(3 downto 0);
begin
    input <= unsigned(dadoHex);
    quociente := input;
    resto := resize(quociente mod 10, 4);
    quociente := quociente/10;
    LEDS(6 downto 0) := converte(std_logic_vector(resto));

    resto := resize(quociente mod 10, 4);
    quociente := quociente/10;
    LEDS(15 downto 7) := converte(std_logic_vector(resto));

    saida7seg1 <= "1100010" when (overFlow = '1') else
        "1111111" when (apaga = '1' and negativo = '0') else
        "0111111" when (apaga = '0' and negativo = '1') else
        hexa(13 downto 7);

    
    saida7seg2 <= "1100010" when (overFlow = '1') else
        "1111111" when (apaga = '1' and negativo = '0') else
        "0111111" when (apaga = '0' and negativo = '1') else
        hexa(6 downto 0);
end architecture;