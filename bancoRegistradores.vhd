library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bancoRegistradoresArqRegReg is
    generic
    (
        width_data      : natural := 8;
        regs_addr       : natural := 3   --Resulta em 2^3=8 registradores possiveis
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk             : in std_logic;
        addressX        : in std_logic_vector((regs_addr-1) downto 0);
        addressY        : in std_logic_vector((regs_addr-1) downto 0);
        addressZ        : in std_logic_vector((regs_addr-1) downto 0);
        dadoEscritaX    : in std_logic_vector((width_data-1) downto 0);
        enableX         : in std_logic := '0';

        outY            : out std_logic_vector((width_data -1) downto 0);
        outZ            : out std_logic_vector((width_data -1) downto 0)
    );
end entity;

architecture comportamento of bancoRegistradoresArqRegReg is

    subtype palavra_t is std_logic_vector((width_data-1) downto 0);
    type memoria_t is array(2**regs_addr-1 downto 0) of palavra_t;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;

begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (enableX = '1') then
                registrador(to_integer(unsigned(addressZ))) := dadoEscritaX;
            end if;
        end if;
    end process;
    outY <= registrador(to_integer(unsigned(addressX)));
    outZ <= registrador(to_integer(unsigned(addressY)));
end architecture;