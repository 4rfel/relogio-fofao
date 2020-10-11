library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity controller is
    generic
    (
        opcode_width : natural := 5
        regs_addr    : natural := 3
    );
    port
    (
        opcode :                                in std_logic_vector((data_width-1) downto 0);
        romRX, romRY, romRZ :                   in std_logic_vector((regs_addr-1) downto 0);
        flag_zero, flag_ng :                    in std_logic;
        RX, RY, RZ :                            out std_logic_vector((regs_addr-1) downto 0) := "000";
        enableRX, RAM_read, RAM_write ;         out std_logic := '0';
        comandULA, enableRegis :                out std_logic_vector(2 downto 0) := "000"
        mux_jmp, mux_mem_ime, mux_ULA_mem_ime : out std_logic := '0'
    );
end entity;

architecture rtl of controller is
    -- 00000 == add
    -- 00001 == sub
    -- 00010 == and
    -- 00011 == or
    -- 00100 == not
    -- 00101 == inc
    -- 00110 == dec
    -- 00111 == mov
    -- 01000 == cmp
    -- 01001 == nop
    -- 01010 == ld
    -- 01011 == st
    -- 01100 == lea
    -- 01101 == jmp
    -- 01110 == jle
    -- 01111 == jl
    -- 10000 == jg
    -- 10001 == jge
    -- 10010 == je
    -- 10011 == jne
    
    begin
        RX <= romRX;    
        RY <= romRY;
        RZ <= romRZ;

        if (to_integer(opcode) >= 0 and to_integer(opcode) <= to_integer("00111")) then
            mux_jmp = '0';
            mux_ULA_mem_ime <= '1';
            enableRX <= '1';
            comandULA <= opcode(2 downto 0);
        end if;
        else if (opcode == "01000") -- cmp
            enableRX <= '0';
            comandULA <= "001";
        end if;
        else if (opcode == "01010") -- ld
            mux_ULA_mem_ime <= '0';
            mux_mem_ime <=  '0';
            RAM_read <= '1';
        end if;
        else if (opcode == "01011") -- st
            RY <= RX;
        end if;
        else if (opcode == "01100") -- lea
            mux_ULA_mem_ime = '0';
            enableRX <= '1';
        end if;
        else if (opcode == "01101") -- jmp
            mux_jmp <= '1';
            enableRX <= '0';
        end if;
        else if (opcode == "01110" and flag_zero = '1' and flag_ng = '1') -- jle
            mux_jmp <= '1';
            enableRX <= '0';
        end if;
        else if (opcode == "01111" and flag_zero = '1' and flag_ng = '0') -- jl
            mux_jmp <= '1';
            enableRX <= '0';
        end if;
        else if (opcode == "10000" and flag_zero = '0' and flag_ng = '0') -- jg
            mux_jmp <= '1';
            enableRX <= '0';
        end if;
        else if (opcode == "10001" and flag_zero = '1' and flag_ng = '0') -- jge
            mux_jmp <= '1';
            enableRX <= '0';
        end if;
        else if (opcode == "10010" and flag_zero = '1' and flag_ng = '0') -- je
            mux_jmp <= '1';
            enableRX <= '0';
        end if;
        else if (opcode == "10011" and flag_zero = '0') -- jne
            mux_jmp <= '1';
            enableRX <= '0';
        end if;
end architecture;