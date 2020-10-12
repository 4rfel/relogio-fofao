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
        outp <= inp when enable = '1' else "00000000"
end architecture;