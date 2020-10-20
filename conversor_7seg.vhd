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
    signal hexa   : std_logic_vector(13 downto 0);
    
    function converte(
        digito : std_logic_vector(3 downto 0)
    ) return std_logic_vector
    is begin
        if 	   (digito = x"0") then return "1000000";
        elsif  (digito = x"1") then return "1111001";
        elsif  (digito = x"2") then return "0100100";
        elsif  (digito = x"3") then return "0110000";
        elsif  (digito = x"4") then return "0011001";
        elsif  (digito = x"5") then return "0010010";
        elsif  (digito = x"6") then return "0000010";
        elsif  (digito = x"7") then return "1111000";
        elsif  (digito = x"8") then return "0000000";
        elsif  (digito = x"9") then return "0010000";
        else return "1111111";
		end if;
	 end;
	 
	function decimalParaLed( -- Codigo baseado em https://stackoverflow.com/questions/20866747/decimal-number-on-7-segment-display, porem simplificado
        value: unsigned
    ) return std_logic_vector
    is 
        variable LED : std_logic_vector(13 downto 0);
        variable quoeficient : unsigned(7 downto 0);
        variable resto: unsigned(3 downto 0);
    begin
			quoeficient := value;
			
			resto := resize(quoeficient mod 10, 4); 	-- pega o resto da divisao por 10
         quoeficient  := quoeficient/10;				-- Cria um novo divisor pra proxima interacao
         LED(6 downto 0) := converte(std_logic_vector(resto)); -- Ve quanto que eh a o numero menos significativo
			
			resto := resize(quoeficient mod 10, 4); -- Faz igual pro segundo numero, as vezes eh zero mesmo
         quoeficient  := quoeficient/10;
         LED(13 downto 7) := converte(std_logic_vector(resto));
        return LED;
    end;


begin
    hexa <= decimalParaLed(unsigned(dadoHex));

    saida7seg2 <= "1100010" WHEN (overFlow = '1') ELSE
        "1111111" WHEN (apaga = '1' AND negativo = '0') ELSE
        "0111111" WHEN (apaga = '0' AND negativo = '1') ELSE
        hexa(13 DOWNTO 7);

    
    saida7seg1 <= "1100010" WHEN (overFlow = '1') ELSE
        "1111111" WHEN (apaga = '1' AND negativo = '0') ELSE
        "0111111" WHEN (apaga = '0' AND negativo = '1') ELSE
        hexa(6 DOWNTO 0);
END ARCHITECTURE;