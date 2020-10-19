-- Feito por
-- Rafael dos Santos
-- João Pedro Meirelles
-- Thomas Queiroz

Library ieee;
use ieee.std_logic_1164.all;

entity relogio is
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
		KEY : in std_logic_vector(3 downto 0);
		clk : in std_logic;
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0);
		LEDR                               : out std_logic_vector(9 downto 0)
	);
end entity;

architecture rtl of relogio is

	signal mux_jmp, mux_mem_ime, mux_ULA_mem_ime :         		 std_logic;
	signal enableRX, RAM_read, RAM_write, enableLED0 :     		 std_logic;
	signal enableHEX0, enableHEX1, enableHEX2 :            		 std_logic;
	signal enableHEX3, enableHEX4, enableHEX5 :            		 std_logic;
	signal enableRAM, enableSW0, enableSW1, enableBUT :    		 std_logic;
	signal enable_timer, enable_timer_fast :               		 std_logic := '0';
	signal out_timer, enableLED1 :                         		 std_logic;
	signal flag_zero, flag_neg, reset_timer :              		 std_logic;
	signal ff_flag_zero, ff_flag_neg, enable_ff_cmp:        		 std_logic;

	signal comand_ULA, RX_addrs, RY_addrs, RZ_addrs :      		 std_logic_vector(2 downto 0);
	signal romRX, romRY, romRZ :                           		 std_logic_vector(2 downto 0);
	signal opcode :                                        		 std_logic_vector((opcode_width-1) downto 0);
	signal HEX3n, HEX4n, HEX5n, HEX0n, HEX1n, HEX2n :      		 std_logic_vector(6 downto 0);
	signal addrs_jmp, out_inc, out_mux_jmp, out_PC:        		 std_logic_vector(9 downto 0);
	signal led_signal :                                    		 std_logic_vector(9 downto 0);
	signal imediato, data_bus_in, data_bus_out :           		 std_logic_vector((data_width-1) downto 0);
	signal out_register_bank, out_ULA :                    		 std_logic_vector((data_width-1) downto 0);
	signal out_mux_ULA_mem_ime, out_mux_mem_ime :          		 std_logic_vector(7 downto 0);
	signal out_RAM, out_SW0, out_SW1, out_BUT: std_logic_vector(7 downto 0); 
	signal out_BaseTempo, out_BaseTempoFast: std_logic_vector(7 downto 0); -- := (OTHERS => '0');

	signal addrs_mem :                                     		 std_logic_vector((address_width-1) downto 0);
	signal out_ROM :                                       		 std_logic_vector((instruction_width-1) downto 0);
	signal auxReset: std_logic;
	
	
	begin
		-- definindo os valores dos signais q saem da rom
		opcode <= out_ROM(15 downto 11);
		addrs_mem <= out_ROM(7 downto 0);
		romRX  <= out_ROM(10 downto 8);
		romRY  <= out_ROM(7 downto 5);
		romRZ  <= out_ROM(4 downto 2);
		imediato  <= out_ROM(7 downto 0);
		addrs_jmp <= out_ROM(10 downto 1);
		
		-- edge detector
		
		detectorSub0: work.edgeDetector port map (clk => clk, entrada => (not KEY(0)), saida => auxReset);

		-- setando os componentes com suas entradas e saidas necessarias utilizando os signais previamente declarados
		MUX_jump_component: entity work.mux2x1
		generic map(data_width => 10)
		port map(A => out_inc,
				 B => addrs_jmp,
				 sel => mux_jmp,
				 outp =>  out_mux_jmp);
				 
		data_bus_in <= out_BaseTempo or out_RAM or out_SW0 or out_SW1 or out_BUT or out_BaseTempo or out_BaseTempoFast;

		MUX_mem_ime_component: entity work.mux2x1
		port map(A => data_bus_in,
				 B =>  imediato,
				 sel => mux_mem_ime,
				 outp =>  out_mux_mem_ime);


		MUX_ULA_mem_ime_component: entity work.mux2x1
		port map(A => out_mux_mem_ime,
				 B =>  out_ULA,
				 sel => mux_ULA_mem_ime,
				 outp =>  out_mux_ULA_mem_ime);
				 

		PC: entity work.registrador
		generic map(data_width => 10)
		port map(DIN => out_mux_jmp,
				 DOUT => out_PC,
				 ENABLE => '1',
				 CLK => clk,
				 RST => '0');
		
		inc_PC: entity work.inc
		port map(A => out_PC,
				 outp => out_inc);

		rom: entity work.ROM
		port map(
			address => out_PC,
			data => out_ROM
		);

		register_bank: entity work.bancoRegistradores
		port map(clk => clk,
				 enderecoA => RY_addrs,
				 enderecoB => RZ_addrs,
				 enderecoC => RX_addrs,
				 dadoEscritaC => out_mux_ULA_mem_ime,
				 escreveC => enableRX,
				 saidaA => data_bus_out,
				 saidaB => out_register_bank);

		ula: entity work.ULA
		port map(A => data_bus_out,
				 B => out_register_bank,
				 sel => comand_ULA,
				 outp => out_ULA,
				 flag_zero => flag_zero,
				 flag_neg => flag_neg);
	
		negFlipFlop: entity work.flipflopGenerico
		port map (DIN => flag_neg, DOUT => ff_flag_neg,
				ENABLE => enable_ff_cmp, CLK => clk,
				RST => '0');
		zeroFlipFlop: entity work.flipflopGenerico
		port map (DIN => flag_zero, DOUT => ff_flag_zero,
				ENABLE => enable_ff_cmp, CLK => clk,
				RST => '0');


		unidade_controle: entity work.controller
		port map(opcode => opcode,
				 romRX => romRX,
				 romRY => romRY,
				 romRZ => romRZ,
				 flag_zero => ff_flag_zero,
				 flag_neg => ff_flag_neg,
				 RX => RX_addrs,
				 RY => RY_addrs,
				 RZ => RZ_addrs,
				 enableRX => enableRX,
				 RAM_read => RAM_read,
				 RAM_write  => RAM_write,
				 commandULA => comand_ULA,
				 mux_jmp => mux_jmp,
				 mux_mem_ime => mux_mem_ime,
				 reset_timer => reset_timer,
				 mux_ULA_mem_ime => mux_ULA_mem_ime,
				 enable_ff_cmp => enable_ff_cmp);

		ram: entity work.RAM
		port map(addr => addrs_mem,
				 we => RAM_write,
				 re => RAM_read,
				 enable => enableRAM,
				 clk => clk,
				 inp => data_bus_out,
				 outp => out_RAM);

		decoder: entity work.address_decoder
		port map(opcode => opcode,
				 address => addrs_mem,
				 HEX0 => enableHEX0,
				 HEX1 => enableHEX1,
				 HEX2 => enableHEX2,
				 HEX3 => enableHEX3,
				 HEX4 => enableHEX4,
				 HEX5 => enableHEX5,
				 LED0 => enableLED0,
				 LED1 => enableLED1,
				 RAM => enableRAM,
				 BUT => enableBUT,
				 BaseTempo => enable_timer,
				 SW0 => enableSW0,
				 SW1 => enableSW1,
				 BaseTempoFast => enable_timer_fast);

		tristate_but: entity work.tristate
		port map(inp => "0000" & KEY,
				 enable => enableBUT,
				 outp => out_BUT);
		
		tristate_SW0: entity work.tristate
		port map(inp => "000000" & SW(9 downto 8),
				 enable => enableSW0,
				 outp => out_SW0);

		tristate_SW1: entity work.tristate
		port map(inp => SW(7 downto 0),
				 enable => enableSW1,
				 outp => out_SW1);
		
		interfaceBaseTempo : entity work.divisorGenerico_e_Interface
		generic map(divisor => 25000000)
		port map (clk => clk,
				habilitaLeitura => enable_timer,
				limpaLeitura => reset_timer or auxReset,
				leituraUmSegundo => out_BaseTempo(0));

		interfaceBaseTempoFast : entity work.divisorGenerico_e_Interface
		generic map(divisor => 100000)
		port map (clk => clk,
				habilitaLeitura => enable_timer_fast,
				limpaLeitura => reset_timer,
				leituraUmSegundo => out_BaseTempoFast(0));
		
		register_led0: entity work.registrador
		port map(DIN => data_bus_out,
				 DOUT(1 downto 0) => led_signal(9 downto 8),
				 ENABLE => enableLED0,
				 CLK => clk,
				 RST => '0');
		
		register_led1: entity work.registrador
		port map(DIN => data_bus_out,
				 DOUT => led_signal(7 downto 0),
				 ENABLE => enableLED1,
				 CLK => clk,
				 RST => '0');
		
		LEDR <= led_signal;
		
		conversorhex0: entity work.conversorHex7Seg
		port map(dadoHex => data_bus_out(3 downto 0),
				 saida7seg => HEX0n);
			
		conversorhex1: entity work.conversorHex7Seg
		port map(dadoHex => data_bus_out(7 downto 4),
				 saida7seg => HEX1n);
				 
		conversorhex2: entity work.conversorHex7Seg
		port map(dadoHex => data_bus_out(3 downto 0),
				 saida7seg => HEX2n);
				 
		conversorhex3: entity work.conversorHex7Seg
		port map(dadoHex => data_bus_out(7 downto 4),
				 saida7seg => HEX3n);
				 
		conversorhex4: entity work.conversorHex7Seg
		port map(dadoHex => data_bus_out(3 downto 0),
				 saida7seg => HEX4n);
				 
		conversorhex5: entity work.conversorHex7Seg
		port map(dadoHex => data_bus_out(7 downto 4),
				 saida7seg => HEX5n);

		register_hex0: entity work.registrador
		port map(DIN => "0" & HEX0n,
				 DOUT(6 downto 0) => HEX0,
				 ENABLE => enableHEX0,
				 CLK => clk,
				 RST => '0');
		
		register_hex1: entity work.registrador
		port map(DIN => "0" & HEX1n,
				DOUT(6 downto 0) => HEX1,
				ENABLE => enableHEX1,
				CLK => clk,
				RST => '0');
		
		register_hex2: entity work.registrador
		port map(DIN => "0" & HEX2n,
				 DOUT(6 downto 0) => HEX2,
				 ENABLE => enableHEX2,
				 CLK => clk,
				 RST => '0');
		
		register_hex3: entity work.registrador
		port map(DIN => "0" & HEX3n,
				DOUT(6 downto 0) => HEX3,
				ENABLE => enableHEX3,
				CLK => clk,
				RST => '0');
		
		register_hex4: entity work.registrador
		port map(DIN => "0" & HEX4n,
				 DOUT(6 downto 0) => HEX4,
				 ENABLE => enableHEX4,
				 CLK => clk,
				 RST => '0');
		
		register_hex5: entity work.registrador
		port map(DIN => "0" & HEX5n,
				DOUT(6 downto 0) => HEX5,
				ENABLE => enableHEX5,
				CLK => clk,
				RST => '0');

end architecture;
