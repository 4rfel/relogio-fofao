library IEEE;
use ieee.std_logic_1164.all;

entity conversorHex7Seg is
	port
	(
		-- Input ports
		dadoHex : in  std_logic_vector(7 downto 0);
		apaga   : in  std_logic := '0';
		negativo : in  std_logic := '0';
		overFlow : in  std_logic := '0';
		-- Output ports
		saida7seg0 : out std_logic_vector(6 downto 0)  -- := (others => '1')
		saida7seg1 : out std_logic_vector(6 downto 0)  -- := (others => '1')

	);
end entity;

architecture comportamento of conversorHex7Seg is
   --
   --       0
   --      ---
   --     |   |
   --    5|   |1
   --     | 6 |
   --      ---
   --     |   |
   --    4|   |2
   --     |   |
   --      ---
   --       3
   --
	signal rascSaida7seg0, rascSaida7seg1: std_logic_vector(6 downto 0);
begin
	rascSaida7seg0 <= "1000000" when dadoHex(3 downto 0)="0000" else ---0
					 "1111001" when dadoHex(3 downto 0)="0001" else ---1
					 "0100100" when dadoHex(3 downto 0)="0010" else ---2
					 "0110000" when dadoHex(3 downto 0)="0011" else ---3
					 "0011001" when dadoHex(3 downto 0)="0100" else ---4
					 "0010010" when dadoHex(3 downto 0)="0101" else ---5
					 "0000010" when dadoHex(3 downto 0)="0110" else ---6
					 "1111000" when dadoHex(3 downto 0)="0111" else ---7
					 "0000000" when dadoHex(3 downto 0)="1000" else ---8
					 "0010000" when dadoHex(3 downto 0)="1001" else ---9
					 "1000000" when dadoHex(3 downto 0)="1010" else ---A
					 "1111001" when dadoHex(3 downto 0)="1011" else ---B
					 "0100100" when dadoHex(3 downto 0)="1100" else ---C
					 "0110000" when dadoHex(3 downto 0)="1101" else ---D
					 "0011001" when dadoHex(3 downto 0)="1110" else ---E
					 "0010010" when dadoHex(3 downto 0)="1111" else ---F
					 "1111111"; -- Apaga todos segmentos.

	rascSaida7seg1 <= "1000000" when dadoHex(7 downto 4)="0000" else ---0
					 "1111001" when dadoHex(7 downto 4)="0001" else ---1
					 "0100100" when dadoHex(7 downto 4)="0010" else ---2
					 "0110000" when dadoHex(7 downto 4)="0011" else ---3
					 "0011001" when dadoHex(7 downto 4)="0100" else ---4
					 "0010010" when dadoHex(7 downto 4)="0101" else ---5
					 "0000010" when dadoHex(7 downto 4)="0110" else ---6
					 "1111000" when dadoHex(7 downto 4)="0111" else ---7
					 "0000000" when dadoHex(7 downto 4)="1000" else ---8
					 "0010000" when dadoHex(7 downto 4)="1001" else ---9
					 "1000000" when dadoHex(7 downto 4)="1010" else ---A
					 "1111001" when dadoHex(7 downto 4)="1011" else ---B
					 "0100100" when dadoHex(7 downto 4)="1100" else ---C
					 "0110000" when dadoHex(7 downto 4)="1101" else ---D
					 "0011001" when dadoHex(7 downto 4)="1110" else ---E
					 "0010010" when dadoHex(7 downto 4)="1111" else ---F
					 "1111111"; -- Apaga todos segmentos.

	saida7seg <= "1100010" when (overFlow='1') else
				 "1111111" when (apaga='1' and negativo='0') else
				 "0111111" when (apaga='0' and negativo='1') else
				 rascSaida7seg;
end architecture;