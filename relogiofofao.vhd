Library ieee;
use ieee.std_logic_1164.all;

entity relogiofofao is
    generic
    (
        data_width : natural := 8;
        opcode_width : natural := 5;
        regs_addr  : natural := 3;
        address_width : natural := 8;
        instruction_width : natural := 16
    );
    port(
        SW  : in std_logic_vector(9 downto 0);
        BUT : in std_logic_vector(3 downto 0);
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(3 downto 0);
        LED                                : out std_logic_vector(9 downto 0)
    );
end entity;

architecture rtl of relogiofofao is

    signal mux_jmp, mux_mem_ime, mux_ULA_mem_ime :         std_logic;
    signal enableRX, RAM_read, RAM_write, enableLED0 :     std_logic;
    signal enableHEX0, enableHEX1, enableHEX2 :            std_logic;
    signal enableHEX3, enableHEX4, enableHEX5 :            std_logic;
    signal enableRAM, enableSW0, enableSW1, enableBUT :    std_logic;
    signal enable_base_tempo, out_base_tempo, enableLED1 : std_logic;
    signal out_ROM :                                       std_logic_vector((instruction_width-1) downto 0);
    signal opcode :                                        std_logic_vector((opcode_width-1) downto 0);
    signal addrs_mem :                                     std_logic_vector((address_width-1) downto 0);
    signal imediato, data_bus_in, data_bus_out :           std_logic_vector((data_width-1) downto 0);
    signal comand_ULA, RX_addrs, RY_addrs, RZ_addrs :      std_logic_vector(2 downto 0);
    signal romRX, romRY, romRZ :                           std_logic_vector(2 downto 0);
    signal out_mux_ULA_mem_ime, out_mux_mem_ime :          std_logic_vector((data_width-1) downto 0);
    signal addrs_jmp, out_inc, out_mux_jmp, out_PC:        std_logic_vector(9 down to 0);
    signal out_register_bank, out_ULA :                    std_logic_vector((data_width-1) downto 0);


    begin
        opcode <= out_ROM((address_width-1) downto (address_width-opcode));
        addrs_mem <= out_ROM(7 downto 0);
        romRX  <= out_ROM(10 downto 8);
        romRY  <= out_ROM(7 downto 5);
        romRZ  <= out_ROM(4 downto 2);
        imediato  <= out_ROM(7 downto 0);
        addrs_jmp <= out_ROM(10 downto 1);

        MUX_jump: entity work.mux2x1
        port map(A <= out_adder,
                 B <=  addrs_jmp,
                 sel <= mux_jmp,
                 outp <=  out_mux_jmp);

        MUX_mem_ime: entity work.mux2x1
        port map(A <= data_bus_in,
                 B <=  imediato,
                 sel <= mux_mem_ime,
                 outp <=  out_mux_mem_ime);


        MUX_ULA_mem_ime: entity work.mux2x1
        port map(A <= out_mux_mem_ime,
                 B <=  out_ULA,
                 sel <= mux_ULA_mem_ime,
                 outp <=  out_mux_ULA_mem_ime);

        PC: entity work.registrador
        port map(DIN <= out_mux_jmp,
                 DOUT <= out_PC,
                 ENABLE <= '1',
                 CLK <= clk,
                 RST <= '0');
        
        inc_PC: entity work.inc
        port map(A <= out_PC,
                 outp <= out_inc);

        rom: entity work.ROM
        port map(
            address <= out_PC,
            data <= out_ROM
        );

        register_bank: entity work.bancoRegistradores
        port map(clk <= clk,
                 addressX <= RX_addrs,
                 addressY <= RY_addrs,
                 addressZ <= RZ_addrs,
                 dadoEscritaX <= out_mux_ULA_mem_ime,
                 enableX <= enableRX,
                 outY <= data_bus_out,
                 outZ <= out_register_bank);
        
        ula: entity work.ULA
        port map(A <= data_bus_out,
                 B <= out_register_bank,
                 sel <= comand_ULA,
                 outp <= out_ULA,
                 flag_zero <= flag_zero,
                 flag_neg <= flag_neg);

        unidade_controle: entity work.controller
        port map(opcode <= opcode,
                 romRX <= romRX,
                 romRY <= romRY
                 romRZ <= romRZ,
                 flag_zero <= flag_zero,
                 flag_neg <= flag_neg,
                 RX <= RX_addrs,
                 RY <= RY_addrs,
                 RZ <= RZ_addrs,
                 enableRX <= enableRX,
                 RAM_read <= RAM_read,
                 RAM_write  <= RAM_write,
                 comandULA <= comand_ULA,
                 mux_jmp <= mux_jmp,
                 mux_mem_ime <= mux_mem_ime,
                 mux_ULA_mem_ime <= mux_ULA_mem_ime);

        ram: entity work.RAM
        port map(addr <= addrs_mem,
                 we <= RAM_write,
                 re <= RAM_read,
                 enable <= enableRAM,
                 clk <= clk,
                 inp <= data_bus_out,
                 outp <= data_bus_in);
        
        decoder: entity work.address_decoder
        port map(opcode <= opcode,
                 address <= addrs_mem,
                 HEX0 <= HEX0,
                 HEX1 <= HEX1,
                 HEX2 <= HEX2,
                 HEX3 <= HEX3,
                 HEX4 <= HEX4,
                 HEX5 <= HEX5,
                 LED0 <= LED0,
                 LED1 <= LED1,
                 RAM <= enableRAM,
                 BUT <= enableBUT,
                 BaseTempo <= enable_base_tempo,
                 SW0 <= enableSW0,
                 SW1 <= enableSW1);

        tristate_but: entity work.tristate
        port map(inp <= "0000" & BUT,
                 enable <= enableBUT,
                 outp <= data_bus_in);
        
        tristate_SW0: entity work.tristate
        port map(inp <= "000000" & SW(9 downto 8),
                 enable <= enableSW0,
                 outp <= data_bus_in);

        tristate_SW1: entity work.tristate
        port map(inp <= SW(7 downto 0),
                 enable <= enableSW1,
                 outp <= data_bus_in);

        tristate_base_tempo: entity work.tristate
        port map(inp <= out_base_tempo,
                 enable <= enable_base_tempo,
                 outp <= data_bus_in);
        
        base_tempo: entity work.baseTempo
        port map(clk <= clk,
                 outp <= out_base_tempo);
        
        register_led0: entity work.registrador
        port map(DIN <= data_bus_out,
                 DOUT <= "000000" & LEDS(9 downto 8),
                 ENABLE <= enable_LED0,
                 CLK <= clk,
                 RST <= '0');
        
        register_led1: entity work.registrador
        port map(DIN <= data_bus_out,
                 DOUT <= LEDS(7 downto 0),
                 ENABLE <= enable_LED1,
                 CLK <= clk,
                 RST <= '0');
            
        register_hex0: entity work.registrador
        port map(DIN <= data_bus_out,
                 DOUT <= "0000" & HEX0(3 downto 0),
                 ENABLE <= enable_HEX0,
                 CLK <= clk,
                 RST <= '0');
        
        register_hex1: entity work.registrador
        port map(DIN <= data_bus_out,
                DOUT <= "0000" & HEX1(3 downto 0),
                ENABLE <= enable_HEX1,
                CLK <= clk,
                RST <= '0');
        
        register_hex2: entity work.registrador
        port map(DIN <= data_bus_out,
                 DOUT <= "0000" & HEX2(3 downto 0),
                 ENABLE <= enable_HEX2,
                 CLK <= clk,
                 RST <= '0');
        
        register_hex3: entity work.registrador
        port map(DIN <= data_bus_out,
                DOUT <= "0000" & HEX3(3 downto 0),
                ENABLE <= enable_HEX3,
                CLK <= clk,
                RST <= '0');
        
        register_hex4: entity work.registrador
        port map(DIN <= data_bus_out,
                 DOUT <= "0000" & HEX4(3 downto 0),
                 ENABLE <= enable_HEX4,
                 CLK <= clk,
                 RST <= '0');
        
        register_hex5: entity work.registrador
        port map(DIN <= data_bus_out,
                DOUT <= "0000" & HEX5(3 downto 0),
                ENABLE <= enable_HEX5,
                CLK <= clk,
                RST <= '0');

end architecture;