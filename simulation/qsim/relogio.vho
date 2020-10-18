-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/18/2020 01:30:49"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \miguezao|Add0~57_sumout\ : std_logic;
SIGNAL \miguezao|Add0~58\ : std_logic;
SIGNAL \miguezao|Add0~89_sumout\ : std_logic;
SIGNAL \miguezao|Add0~90\ : std_logic;
SIGNAL \miguezao|Add0~93_sumout\ : std_logic;
SIGNAL \miguezao|Add0~94\ : std_logic;
SIGNAL \miguezao|Add0~2\ : std_logic;
SIGNAL \miguezao|Add0~29_sumout\ : std_logic;
SIGNAL \miguezao|prescaler[4]~DUPLICATE_q\ : std_logic;
SIGNAL \miguezao|Add0~30\ : std_logic;
SIGNAL \miguezao|Add0~33_sumout\ : std_logic;
SIGNAL \miguezao|Add0~34\ : std_logic;
SIGNAL \miguezao|Add0~37_sumout\ : std_logic;
SIGNAL \miguezao|Add0~38\ : std_logic;
SIGNAL \miguezao|Add0~41_sumout\ : std_logic;
SIGNAL \miguezao|Add0~42\ : std_logic;
SIGNAL \miguezao|Add0~45_sumout\ : std_logic;
SIGNAL \miguezao|Add0~46\ : std_logic;
SIGNAL \miguezao|Add0~85_sumout\ : std_logic;
SIGNAL \miguezao|Add0~86\ : std_logic;
SIGNAL \miguezao|Add0~49_sumout\ : std_logic;
SIGNAL \miguezao|Add0~50\ : std_logic;
SIGNAL \miguezao|Add0~5_sumout\ : std_logic;
SIGNAL \miguezao|Add0~6\ : std_logic;
SIGNAL \miguezao|Add0~9_sumout\ : std_logic;
SIGNAL \miguezao|Add0~10\ : std_logic;
SIGNAL \miguezao|Add0~13_sumout\ : std_logic;
SIGNAL \miguezao|prescaler[13]~DUPLICATE_q\ : std_logic;
SIGNAL \miguezao|Add0~14\ : std_logic;
SIGNAL \miguezao|Add0~17_sumout\ : std_logic;
SIGNAL \miguezao|Add0~18\ : std_logic;
SIGNAL \miguezao|Add0~21_sumout\ : std_logic;
SIGNAL \miguezao|Add0~22\ : std_logic;
SIGNAL \miguezao|Add0~25_sumout\ : std_logic;
SIGNAL \miguezao|Add0~26\ : std_logic;
SIGNAL \miguezao|Add0~53_sumout\ : std_logic;
SIGNAL \miguezao|Add0~54\ : std_logic;
SIGNAL \miguezao|Add0~81_sumout\ : std_logic;
SIGNAL \miguezao|Add0~82\ : std_logic;
SIGNAL \miguezao|Add0~77_sumout\ : std_logic;
SIGNAL \miguezao|Equal0~3_combout\ : std_logic;
SIGNAL \miguezao|Add0~78\ : std_logic;
SIGNAL \miguezao|Add0~73_sumout\ : std_logic;
SIGNAL \miguezao|prescaler[20]~DUPLICATE_q\ : std_logic;
SIGNAL \miguezao|Add0~74\ : std_logic;
SIGNAL \miguezao|Add0~69_sumout\ : std_logic;
SIGNAL \miguezao|Add0~70\ : std_logic;
SIGNAL \miguezao|Add0~65_sumout\ : std_logic;
SIGNAL \miguezao|Add0~66\ : std_logic;
SIGNAL \miguezao|Add0~61_sumout\ : std_logic;
SIGNAL \miguezao|prescaler[21]~DUPLICATE_q\ : std_logic;
SIGNAL \miguezao|Equal0~2_combout\ : std_logic;
SIGNAL \miguezao|prescaler[10]~DUPLICATE_q\ : std_logic;
SIGNAL \miguezao|Equal0~1_combout\ : std_logic;
SIGNAL \miguezao|Equal0~0_combout\ : std_logic;
SIGNAL \miguezao|Equal0~4_combout\ : std_logic;
SIGNAL \miguezao|prescaler[3]~DUPLICATE_q\ : std_logic;
SIGNAL \miguezao|Add0~1_sumout\ : std_logic;
SIGNAL \miguezao|clk_2Hz_i~0_combout\ : std_logic;
SIGNAL \miguezao|clk_2Hz_i~q\ : std_logic;
SIGNAL \inc_PC|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \rom|content~3_combout\ : std_logic;
SIGNAL \inc_PC|Add0~34\ : std_logic;
SIGNAL \inc_PC|Add0~10\ : std_logic;
SIGNAL \inc_PC|Add0~29_sumout\ : std_logic;
SIGNAL \PC|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \rom|content~5_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inc_PC|Add0~30\ : std_logic;
SIGNAL \inc_PC|Add0~25_sumout\ : std_logic;
SIGNAL \PC|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inc_PC|Add0~26\ : std_logic;
SIGNAL \inc_PC|Add0~21_sumout\ : std_logic;
SIGNAL \PC|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inc_PC|Add0~22\ : std_logic;
SIGNAL \inc_PC|Add0~17_sumout\ : std_logic;
SIGNAL \PC|DOUT[8]~feeder_combout\ : std_logic;
SIGNAL \rom|content~2_combout\ : std_logic;
SIGNAL \rom|content~6_combout\ : std_logic;
SIGNAL \PC|DOUT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inc_PC|Add0~18\ : std_logic;
SIGNAL \inc_PC|Add0~13_sumout\ : std_logic;
SIGNAL \PC|DOUT[9]~feeder_combout\ : std_logic;
SIGNAL \rom|content~0_combout\ : std_logic;
SIGNAL \ula|Equal6~0_combout\ : std_logic;
SIGNAL \ula|outp[0]~9_combout\ : std_logic;
SIGNAL \unidade_controle|Equal8~0_combout\ : std_logic;
SIGNAL \rom|content~10_combout\ : std_logic;
SIGNAL \rom|content~11_combout\ : std_logic;
SIGNAL \ula|outp[7]~8_combout\ : std_logic;
SIGNAL \ula|outp[0]~7_combout\ : std_logic;
SIGNAL \register_bank|registrador~92_combout\ : std_logic;
SIGNAL \register_bank|registrador~19DUPLICATE_q\ : std_logic;
SIGNAL \register_bank|registrador~89_combout\ : std_logic;
SIGNAL \unidade_controle|RY[2]~0_combout\ : std_logic;
SIGNAL \register_bank|registrador~93_combout\ : std_logic;
SIGNAL \register_bank|registrador~84_combout\ : std_logic;
SIGNAL \register_bank|registrador~98_combout\ : std_logic;
SIGNAL \register_bank|registrador~85_combout\ : std_logic;
SIGNAL \register_bank|registrador~99_combout\ : std_logic;
SIGNAL \register_bank|registrador~83_combout\ : std_logic;
SIGNAL \register_bank|registrador~88_combout\ : std_logic;
SIGNAL \ula|outp[2]~4_combout\ : std_logic;
SIGNAL \register_bank|registrador~14DUPLICATE_q\ : std_logic;
SIGNAL \register_bank|registrador~78_combout\ : std_logic;
SIGNAL \register_bank|registrador~90_combout\ : std_logic;
SIGNAL \ula|outp[1]~5_combout\ : std_logic;
SIGNAL \register_bank|registrador~13DUPLICATE_q\ : std_logic;
SIGNAL \register_bank|registrador~79_combout\ : std_logic;
SIGNAL \register_bank|registrador~77_combout\ : std_logic;
SIGNAL \ula|Add0~9_sumout\ : std_logic;
SIGNAL \register_bank|registrador~12feeder_combout\ : std_logic;
SIGNAL \register_bank|registrador~12_q\ : std_logic;
SIGNAL \register_bank|registrador~91_combout\ : std_logic;
SIGNAL \ula|outp[0]~6_combout\ : std_logic;
SIGNAL \register_bank|registrador~12DUPLICATE_q\ : std_logic;
SIGNAL \register_bank|registrador~95_combout\ : std_logic;
SIGNAL \ula|Add0~10\ : std_logic;
SIGNAL \ula|Add0~17_sumout\ : std_logic;
SIGNAL \register_bank|registrador~13feeder_combout\ : std_logic;
SIGNAL \register_bank|registrador~13_q\ : std_logic;
SIGNAL \register_bank|registrador~97_combout\ : std_logic;
SIGNAL \ula|Add0~18\ : std_logic;
SIGNAL \ula|Add0~13_sumout\ : std_logic;
SIGNAL \register_bank|registrador~14feeder_combout\ : std_logic;
SIGNAL \register_bank|registrador~14_q\ : std_logic;
SIGNAL \register_bank|registrador~96_combout\ : std_logic;
SIGNAL \ula|Add0~14\ : std_logic;
SIGNAL \ula|Add0~5_sumout\ : std_logic;
SIGNAL \register_bank|registrador~15feeder_combout\ : std_logic;
SIGNAL \ula|outp[3]~3_combout\ : std_logic;
SIGNAL \register_bank|registrador~15_q\ : std_logic;
SIGNAL \register_bank|registrador~87_combout\ : std_logic;
SIGNAL \register_bank|registrador~94_combout\ : std_logic;
SIGNAL \ula|Add0~6\ : std_logic;
SIGNAL \ula|Add0~29_sumout\ : std_logic;
SIGNAL \register_bank|registrador~16feeder_combout\ : std_logic;
SIGNAL \ula|outp[4]~2_combout\ : std_logic;
SIGNAL \register_bank|registrador~16_q\ : std_logic;
SIGNAL \register_bank|registrador~86_combout\ : std_logic;
SIGNAL \register_bank|registrador~100_combout\ : std_logic;
SIGNAL \ula|Add0~30\ : std_logic;
SIGNAL \ula|Add0~25_sumout\ : std_logic;
SIGNAL \register_bank|registrador~17feeder_combout\ : std_logic;
SIGNAL \ula|outp[5]~1_combout\ : std_logic;
SIGNAL \register_bank|registrador~17_q\ : std_logic;
SIGNAL \register_bank|registrador~82_combout\ : std_logic;
SIGNAL \ula|Add0~26\ : std_logic;
SIGNAL \ula|Add0~21_sumout\ : std_logic;
SIGNAL \register_bank|registrador~18feeder_combout\ : std_logic;
SIGNAL \ula|outp[6]~0_combout\ : std_logic;
SIGNAL \register_bank|registrador~18_q\ : std_logic;
SIGNAL \register_bank|registrador~81_combout\ : std_logic;
SIGNAL \ula|Add0~22\ : std_logic;
SIGNAL \ula|Add0~1_sumout\ : std_logic;
SIGNAL \register_bank|registrador~19feeder_combout\ : std_logic;
SIGNAL \register_bank|registrador~19_q\ : std_logic;
SIGNAL \register_bank|registrador~80_combout\ : std_logic;
SIGNAL \unidade_controle|mux_jmp~3_combout\ : std_logic;
SIGNAL \unidade_controle|mux_jmp~2_combout\ : std_logic;
SIGNAL \unidade_controle|mux_jmp~5_combout\ : std_logic;
SIGNAL \unidade_controle|mux_jmp~0_combout\ : std_logic;
SIGNAL \unidade_controle|mux_jmp~1_combout\ : std_logic;
SIGNAL \unidade_controle|mux_jmp~4_combout\ : std_logic;
SIGNAL \rom|content~1_combout\ : std_logic;
SIGNAL \rom|content~4_combout\ : std_logic;
SIGNAL \rom|content~8_combout\ : std_logic;
SIGNAL \inc_PC|Add0~9_sumout\ : std_logic;
SIGNAL \PC|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \rom|content~9_combout\ : std_logic;
SIGNAL \inc_PC|Add0~2\ : std_logic;
SIGNAL \inc_PC|Add0~5_sumout\ : std_logic;
SIGNAL \PC|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inc_PC|Add0~6\ : std_logic;
SIGNAL \inc_PC|Add0~37_sumout\ : std_logic;
SIGNAL \PC|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \inc_PC|Add0~38\ : std_logic;
SIGNAL \inc_PC|Add0~33_sumout\ : std_logic;
SIGNAL \PC|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \register_bank|registrador~76_combout\ : std_logic;
SIGNAL \conversorhex0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \rom|content~7_combout\ : std_logic;
SIGNAL \decoder|HEX0~combout\ : std_logic;
SIGNAL \conversorhex0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conversorhex0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conversorhex0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conversorhex0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \register_hex0|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \conversorhex0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conversorhex0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \conversorhex1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conversorhex1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \register_hex1|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \conversorhex1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \register_hex1|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \conversorhex1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \register_hex1|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \conversorhex1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conversorhex1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conversorhex1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoder|HEX2~combout\ : std_logic;
SIGNAL \register_hex2|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \decoder|HEX4~combout\ : std_logic;
SIGNAL \register_hex4|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \register_hex4|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \register_hex5|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \register_hex5|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \register_hex4|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \register_hex2|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \register_hex3|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \miguezao|prescaler\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \register_hex1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \register_hex0|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ula|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ula|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ula|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \miguezao|ALT_INV_prescaler\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ula|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ula|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ula|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ula|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inc_PC|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inc_PC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inc_PC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inc_PC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inc_PC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inc_PC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inc_PC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inc_PC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inc_PC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ula|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inc_PC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \unidade_controle|ALT_INV_mux_jmp~5_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~100_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~99_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~98_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~97_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~96_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~95_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~94_combout\ : std_logic;
SIGNAL \ula|ALT_INV_outp[0]~9_combout\ : std_logic;
SIGNAL \ula|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~93_combout\ : std_logic;
SIGNAL \miguezao|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \miguezao|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \miguezao|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \miguezao|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \unidade_controle|ALT_INV_mux_jmp~3_combout\ : std_logic;
SIGNAL \unidade_controle|ALT_INV_mux_jmp~2_combout\ : std_logic;
SIGNAL \ula|ALT_INV_outp[0]~7_combout\ : std_logic;
SIGNAL \unidade_controle|ALT_INV_mux_jmp~1_combout\ : std_logic;
SIGNAL \ula|ALT_INV_outp[0]~6_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~91_combout\ : std_logic;
SIGNAL \ula|ALT_INV_outp[1]~5_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~90_combout\ : std_logic;
SIGNAL \unidade_controle|ALT_INV_mux_jmp~0_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~89_combout\ : std_logic;
SIGNAL \ula|ALT_INV_outp[2]~4_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~88_combout\ : std_logic;
SIGNAL \ula|ALT_INV_outp[3]~3_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~87_combout\ : std_logic;
SIGNAL \ula|ALT_INV_outp[4]~2_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~86_combout\ : std_logic;
SIGNAL \ula|ALT_INV_outp[5]~1_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~85_combout\ : std_logic;
SIGNAL \ula|ALT_INV_outp[6]~0_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~84_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~11_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~10_combout\ : std_logic;
SIGNAL \conversorhex1|ALT_INV_rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conversorhex1|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conversorhex1|ALT_INV_rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~83_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~82_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~81_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~80_combout\ : std_logic;
SIGNAL \conversorhex0|ALT_INV_rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \conversorhex0|ALT_INV_rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conversorhex0|ALT_INV_rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conversorhex0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~9_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~8_combout\ : std_logic;
SIGNAL \unidade_controle|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~7_combout\ : std_logic;
SIGNAL \miguezao|ALT_INV_clk_2Hz_i~q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~79_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~78_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~77_combout\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~76_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~6_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~5_combout\ : std_logic;
SIGNAL \unidade_controle|ALT_INV_RY[2]~0_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~4_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~3_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~2_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~1_combout\ : std_logic;
SIGNAL \rom|ALT_INV_content~0_combout\ : std_logic;
SIGNAL \miguezao|ALT_INV_prescaler[20]~DUPLICATE_q\ : std_logic;
SIGNAL \miguezao|ALT_INV_prescaler[21]~DUPLICATE_q\ : std_logic;
SIGNAL \miguezao|ALT_INV_prescaler[10]~DUPLICATE_q\ : std_logic;
SIGNAL \miguezao|ALT_INV_prescaler[4]~DUPLICATE_q\ : std_logic;
SIGNAL \miguezao|ALT_INV_prescaler[13]~DUPLICATE_q\ : std_logic;
SIGNAL \miguezao|ALT_INV_prescaler[3]~DUPLICATE_q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~19DUPLICATE_q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~13DUPLICATE_q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~14DUPLICATE_q\ : std_logic;
SIGNAL \register_bank|ALT_INV_registrador~12DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_clk <= clk;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ula|ALT_INV_Add0~29_sumout\ <= NOT \ula|Add0~29_sumout\;
\ula|ALT_INV_Add0~25_sumout\ <= NOT \ula|Add0~25_sumout\;
\ula|ALT_INV_Add0~21_sumout\ <= NOT \ula|Add0~21_sumout\;
\miguezao|ALT_INV_prescaler\(2) <= NOT \miguezao|prescaler\(2);
\miguezao|ALT_INV_prescaler\(1) <= NOT \miguezao|prescaler\(1);
\miguezao|ALT_INV_prescaler\(9) <= NOT \miguezao|prescaler\(9);
\miguezao|ALT_INV_prescaler\(18) <= NOT \miguezao|prescaler\(18);
\miguezao|ALT_INV_prescaler\(19) <= NOT \miguezao|prescaler\(19);
\miguezao|ALT_INV_prescaler\(20) <= NOT \miguezao|prescaler\(20);
\miguezao|ALT_INV_prescaler\(21) <= NOT \miguezao|prescaler\(21);
\miguezao|ALT_INV_prescaler\(22) <= NOT \miguezao|prescaler\(22);
\miguezao|ALT_INV_prescaler\(23) <= NOT \miguezao|prescaler\(23);
\miguezao|ALT_INV_prescaler\(0) <= NOT \miguezao|prescaler\(0);
\miguezao|ALT_INV_prescaler\(17) <= NOT \miguezao|prescaler\(17);
\miguezao|ALT_INV_prescaler\(10) <= NOT \miguezao|prescaler\(10);
\miguezao|ALT_INV_prescaler\(8) <= NOT \miguezao|prescaler\(8);
\miguezao|ALT_INV_prescaler\(7) <= NOT \miguezao|prescaler\(7);
\miguezao|ALT_INV_prescaler\(6) <= NOT \miguezao|prescaler\(6);
\miguezao|ALT_INV_prescaler\(5) <= NOT \miguezao|prescaler\(5);
\miguezao|ALT_INV_prescaler\(4) <= NOT \miguezao|prescaler\(4);
\miguezao|ALT_INV_prescaler\(16) <= NOT \miguezao|prescaler\(16);
\miguezao|ALT_INV_prescaler\(15) <= NOT \miguezao|prescaler\(15);
\miguezao|ALT_INV_prescaler\(14) <= NOT \miguezao|prescaler\(14);
\miguezao|ALT_INV_prescaler\(13) <= NOT \miguezao|prescaler\(13);
\miguezao|ALT_INV_prescaler\(12) <= NOT \miguezao|prescaler\(12);
\miguezao|ALT_INV_prescaler\(11) <= NOT \miguezao|prescaler\(11);
\miguezao|ALT_INV_prescaler\(3) <= NOT \miguezao|prescaler\(3);
\ula|ALT_INV_Add0~17_sumout\ <= NOT \ula|Add0~17_sumout\;
\ula|ALT_INV_Add0~13_sumout\ <= NOT \ula|Add0~13_sumout\;
\ula|ALT_INV_Add0~9_sumout\ <= NOT \ula|Add0~9_sumout\;
\ula|ALT_INV_Add0~5_sumout\ <= NOT \ula|Add0~5_sumout\;
\inc_PC|ALT_INV_Add0~37_sumout\ <= NOT \inc_PC|Add0~37_sumout\;
\inc_PC|ALT_INV_Add0~33_sumout\ <= NOT \inc_PC|Add0~33_sumout\;
\inc_PC|ALT_INV_Add0~29_sumout\ <= NOT \inc_PC|Add0~29_sumout\;
\inc_PC|ALT_INV_Add0~25_sumout\ <= NOT \inc_PC|Add0~25_sumout\;
\inc_PC|ALT_INV_Add0~21_sumout\ <= NOT \inc_PC|Add0~21_sumout\;
\inc_PC|ALT_INV_Add0~17_sumout\ <= NOT \inc_PC|Add0~17_sumout\;
\inc_PC|ALT_INV_Add0~13_sumout\ <= NOT \inc_PC|Add0~13_sumout\;
\inc_PC|ALT_INV_Add0~9_sumout\ <= NOT \inc_PC|Add0~9_sumout\;
\inc_PC|ALT_INV_Add0~5_sumout\ <= NOT \inc_PC|Add0~5_sumout\;
\ula|ALT_INV_Add0~1_sumout\ <= NOT \ula|Add0~1_sumout\;
\inc_PC|ALT_INV_Add0~1_sumout\ <= NOT \inc_PC|Add0~1_sumout\;
\register_bank|ALT_INV_registrador~16_q\ <= NOT \register_bank|registrador~16_q\;
\register_bank|ALT_INV_registrador~17_q\ <= NOT \register_bank|registrador~17_q\;
\register_bank|ALT_INV_registrador~18_q\ <= NOT \register_bank|registrador~18_q\;
\register_bank|ALT_INV_registrador~19_q\ <= NOT \register_bank|registrador~19_q\;
\register_bank|ALT_INV_registrador~13_q\ <= NOT \register_bank|registrador~13_q\;
\register_bank|ALT_INV_registrador~14_q\ <= NOT \register_bank|registrador~14_q\;
\register_bank|ALT_INV_registrador~12_q\ <= NOT \register_bank|registrador~12_q\;
\register_bank|ALT_INV_registrador~15_q\ <= NOT \register_bank|registrador~15_q\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\unidade_controle|ALT_INV_mux_jmp~5_combout\ <= NOT \unidade_controle|mux_jmp~5_combout\;
\register_bank|ALT_INV_registrador~100_combout\ <= NOT \register_bank|registrador~100_combout\;
\register_bank|ALT_INV_registrador~99_combout\ <= NOT \register_bank|registrador~99_combout\;
\register_bank|ALT_INV_registrador~98_combout\ <= NOT \register_bank|registrador~98_combout\;
\register_bank|ALT_INV_registrador~97_combout\ <= NOT \register_bank|registrador~97_combout\;
\register_bank|ALT_INV_registrador~96_combout\ <= NOT \register_bank|registrador~96_combout\;
\register_bank|ALT_INV_registrador~95_combout\ <= NOT \register_bank|registrador~95_combout\;
\register_bank|ALT_INV_registrador~94_combout\ <= NOT \register_bank|registrador~94_combout\;
\ula|ALT_INV_outp[0]~9_combout\ <= NOT \ula|outp[0]~9_combout\;
\ula|ALT_INV_Equal6~0_combout\ <= NOT \ula|Equal6~0_combout\;
\register_bank|ALT_INV_registrador~93_combout\ <= NOT \register_bank|registrador~93_combout\;
\miguezao|ALT_INV_Equal0~3_combout\ <= NOT \miguezao|Equal0~3_combout\;
\miguezao|ALT_INV_Equal0~2_combout\ <= NOT \miguezao|Equal0~2_combout\;
\miguezao|ALT_INV_Equal0~1_combout\ <= NOT \miguezao|Equal0~1_combout\;
\miguezao|ALT_INV_Equal0~0_combout\ <= NOT \miguezao|Equal0~0_combout\;
\unidade_controle|ALT_INV_mux_jmp~3_combout\ <= NOT \unidade_controle|mux_jmp~3_combout\;
\unidade_controle|ALT_INV_mux_jmp~2_combout\ <= NOT \unidade_controle|mux_jmp~2_combout\;
\ula|ALT_INV_outp[0]~7_combout\ <= NOT \ula|outp[0]~7_combout\;
\unidade_controle|ALT_INV_mux_jmp~1_combout\ <= NOT \unidade_controle|mux_jmp~1_combout\;
\ula|ALT_INV_outp[0]~6_combout\ <= NOT \ula|outp[0]~6_combout\;
\register_bank|ALT_INV_registrador~91_combout\ <= NOT \register_bank|registrador~91_combout\;
\ula|ALT_INV_outp[1]~5_combout\ <= NOT \ula|outp[1]~5_combout\;
\register_bank|ALT_INV_registrador~90_combout\ <= NOT \register_bank|registrador~90_combout\;
\unidade_controle|ALT_INV_mux_jmp~0_combout\ <= NOT \unidade_controle|mux_jmp~0_combout\;
\register_bank|ALT_INV_registrador~89_combout\ <= NOT \register_bank|registrador~89_combout\;
\ula|ALT_INV_outp[2]~4_combout\ <= NOT \ula|outp[2]~4_combout\;
\register_bank|ALT_INV_registrador~88_combout\ <= NOT \register_bank|registrador~88_combout\;
\ula|ALT_INV_outp[3]~3_combout\ <= NOT \ula|outp[3]~3_combout\;
\register_bank|ALT_INV_registrador~87_combout\ <= NOT \register_bank|registrador~87_combout\;
\ula|ALT_INV_outp[4]~2_combout\ <= NOT \ula|outp[4]~2_combout\;
\register_bank|ALT_INV_registrador~86_combout\ <= NOT \register_bank|registrador~86_combout\;
\ula|ALT_INV_outp[5]~1_combout\ <= NOT \ula|outp[5]~1_combout\;
\register_bank|ALT_INV_registrador~85_combout\ <= NOT \register_bank|registrador~85_combout\;
\ula|ALT_INV_outp[6]~0_combout\ <= NOT \ula|outp[6]~0_combout\;
\register_bank|ALT_INV_registrador~84_combout\ <= NOT \register_bank|registrador~84_combout\;
\rom|ALT_INV_content~11_combout\ <= NOT \rom|content~11_combout\;
\rom|ALT_INV_content~10_combout\ <= NOT \rom|content~10_combout\;
\conversorhex1|ALT_INV_rascSaida7seg[3]~3_combout\ <= NOT \conversorhex1|rascSaida7seg[3]~3_combout\;
\conversorhex1|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \conversorhex1|rascSaida7seg[2]~2_combout\;
\conversorhex1|ALT_INV_rascSaida7seg[1]~1_combout\ <= NOT \conversorhex1|rascSaida7seg[1]~1_combout\;
\register_bank|ALT_INV_registrador~83_combout\ <= NOT \register_bank|registrador~83_combout\;
\register_bank|ALT_INV_registrador~82_combout\ <= NOT \register_bank|registrador~82_combout\;
\register_bank|ALT_INV_registrador~81_combout\ <= NOT \register_bank|registrador~81_combout\;
\register_bank|ALT_INV_registrador~80_combout\ <= NOT \register_bank|registrador~80_combout\;
\conversorhex0|ALT_INV_rascSaida7seg[6]~6_combout\ <= NOT \conversorhex0|rascSaida7seg[6]~6_combout\;
\conversorhex0|ALT_INV_rascSaida7seg[5]~5_combout\ <= NOT \conversorhex0|rascSaida7seg[5]~5_combout\;
\conversorhex0|ALT_INV_rascSaida7seg[4]~4_combout\ <= NOT \conversorhex0|rascSaida7seg[4]~4_combout\;
\conversorhex0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \conversorhex0|rascSaida7seg[2]~2_combout\;
\rom|ALT_INV_content~9_combout\ <= NOT \rom|content~9_combout\;
\rom|ALT_INV_content~8_combout\ <= NOT \rom|content~8_combout\;
\unidade_controle|ALT_INV_Equal8~0_combout\ <= NOT \unidade_controle|Equal8~0_combout\;
\rom|ALT_INV_content~7_combout\ <= NOT \rom|content~7_combout\;
\miguezao|ALT_INV_clk_2Hz_i~q\ <= NOT \miguezao|clk_2Hz_i~q\;
\register_bank|ALT_INV_registrador~79_combout\ <= NOT \register_bank|registrador~79_combout\;
\register_bank|ALT_INV_registrador~78_combout\ <= NOT \register_bank|registrador~78_combout\;
\register_bank|ALT_INV_registrador~77_combout\ <= NOT \register_bank|registrador~77_combout\;
\register_bank|ALT_INV_registrador~76_combout\ <= NOT \register_bank|registrador~76_combout\;
\rom|ALT_INV_content~6_combout\ <= NOT \rom|content~6_combout\;
\rom|ALT_INV_content~5_combout\ <= NOT \rom|content~5_combout\;
\unidade_controle|ALT_INV_RY[2]~0_combout\ <= NOT \unidade_controle|RY[2]~0_combout\;
\rom|ALT_INV_content~4_combout\ <= NOT \rom|content~4_combout\;
\rom|ALT_INV_content~3_combout\ <= NOT \rom|content~3_combout\;
\rom|ALT_INV_content~2_combout\ <= NOT \rom|content~2_combout\;
\rom|ALT_INV_content~1_combout\ <= NOT \rom|content~1_combout\;
\rom|ALT_INV_content~0_combout\ <= NOT \rom|content~0_combout\;
\miguezao|ALT_INV_prescaler[20]~DUPLICATE_q\ <= NOT \miguezao|prescaler[20]~DUPLICATE_q\;
\miguezao|ALT_INV_prescaler[21]~DUPLICATE_q\ <= NOT \miguezao|prescaler[21]~DUPLICATE_q\;
\miguezao|ALT_INV_prescaler[10]~DUPLICATE_q\ <= NOT \miguezao|prescaler[10]~DUPLICATE_q\;
\miguezao|ALT_INV_prescaler[4]~DUPLICATE_q\ <= NOT \miguezao|prescaler[4]~DUPLICATE_q\;
\miguezao|ALT_INV_prescaler[13]~DUPLICATE_q\ <= NOT \miguezao|prescaler[13]~DUPLICATE_q\;
\miguezao|ALT_INV_prescaler[3]~DUPLICATE_q\ <= NOT \miguezao|prescaler[3]~DUPLICATE_q\;
\register_bank|ALT_INV_registrador~19DUPLICATE_q\ <= NOT \register_bank|registrador~19DUPLICATE_q\;
\register_bank|ALT_INV_registrador~13DUPLICATE_q\ <= NOT \register_bank|registrador~13DUPLICATE_q\;
\register_bank|ALT_INV_registrador~14DUPLICATE_q\ <= NOT \register_bank|registrador~14DUPLICATE_q\;
\register_bank|ALT_INV_registrador~12DUPLICATE_q\ <= NOT \register_bank|registrador~12DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[9]~DUPLICATE_q\ <= NOT \PC|DOUT[9]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex0|DOUT\(0),
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex0|DOUT\(1),
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex0|DOUT\(2),
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex0|DOUT\(3),
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex0|DOUT\(4),
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex0|DOUT\(5),
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex0|DOUT\(6),
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex1|DOUT\(0),
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex1|DOUT\(1),
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex1|DOUT\(2),
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex1|DOUT\(3),
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex1|DOUT\(4),
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex1|DOUT\(5),
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex1|DOUT\(6),
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex2|DOUT\(0),
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex2|DOUT\(1),
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex2|DOUT\(2),
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex2|DOUT\(3),
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex2|DOUT\(4),
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex2|DOUT\(5),
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex2|DOUT\(6),
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex3|DOUT\(0),
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex3|DOUT\(1),
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex3|DOUT\(2),
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex3|DOUT\(3),
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex3|DOUT\(4),
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex3|DOUT\(5),
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex3|DOUT\(6),
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex4|DOUT\(0),
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex4|DOUT\(1),
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex4|DOUT\(2),
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex4|DOUT\(3),
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex4|DOUT\(4),
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex4|DOUT\(5),
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex4|DOUT\(6),
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex5|DOUT\(0),
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex5|DOUT\(1),
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex5|DOUT\(2),
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex5|DOUT\(3),
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex5|DOUT\(4),
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex5|DOUT\(5),
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_hex5|DOUT\(6),
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|content~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade_controle|RY[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|content~5_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|content~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X22_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X36_Y2_N30
\miguezao|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~57_sumout\ = SUM(( \miguezao|prescaler\(0) ) + ( VCC ) + ( !VCC ))
-- \miguezao|Add0~58\ = CARRY(( \miguezao|prescaler\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \miguezao|ALT_INV_prescaler\(0),
	cin => GND,
	sumout => \miguezao|Add0~57_sumout\,
	cout => \miguezao|Add0~58\);

-- Location: FF_X36_Y2_N31
\miguezao|prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~57_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(0));

-- Location: LABCELL_X36_Y2_N33
\miguezao|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~89_sumout\ = SUM(( \miguezao|prescaler\(1) ) + ( GND ) + ( \miguezao|Add0~58\ ))
-- \miguezao|Add0~90\ = CARRY(( \miguezao|prescaler\(1) ) + ( GND ) + ( \miguezao|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \miguezao|ALT_INV_prescaler\(1),
	cin => \miguezao|Add0~58\,
	sumout => \miguezao|Add0~89_sumout\,
	cout => \miguezao|Add0~90\);

-- Location: FF_X36_Y2_N35
\miguezao|prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~89_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(1));

-- Location: LABCELL_X36_Y2_N36
\miguezao|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~93_sumout\ = SUM(( \miguezao|prescaler\(2) ) + ( GND ) + ( \miguezao|Add0~90\ ))
-- \miguezao|Add0~94\ = CARRY(( \miguezao|prescaler\(2) ) + ( GND ) + ( \miguezao|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \miguezao|ALT_INV_prescaler\(2),
	cin => \miguezao|Add0~90\,
	sumout => \miguezao|Add0~93_sumout\,
	cout => \miguezao|Add0~94\);

-- Location: FF_X36_Y2_N38
\miguezao|prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~93_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(2));

-- Location: LABCELL_X36_Y2_N39
\miguezao|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~1_sumout\ = SUM(( \miguezao|prescaler[3]~DUPLICATE_q\ ) + ( GND ) + ( \miguezao|Add0~94\ ))
-- \miguezao|Add0~2\ = CARRY(( \miguezao|prescaler[3]~DUPLICATE_q\ ) + ( GND ) + ( \miguezao|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \miguezao|ALT_INV_prescaler[3]~DUPLICATE_q\,
	cin => \miguezao|Add0~94\,
	sumout => \miguezao|Add0~1_sumout\,
	cout => \miguezao|Add0~2\);

-- Location: LABCELL_X36_Y2_N42
\miguezao|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~29_sumout\ = SUM(( \miguezao|prescaler[4]~DUPLICATE_q\ ) + ( GND ) + ( \miguezao|Add0~2\ ))
-- \miguezao|Add0~30\ = CARRY(( \miguezao|prescaler[4]~DUPLICATE_q\ ) + ( GND ) + ( \miguezao|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \miguezao|ALT_INV_prescaler[4]~DUPLICATE_q\,
	cin => \miguezao|Add0~2\,
	sumout => \miguezao|Add0~29_sumout\,
	cout => \miguezao|Add0~30\);

-- Location: FF_X36_Y2_N43
\miguezao|prescaler[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~29_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler[4]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N45
\miguezao|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~33_sumout\ = SUM(( \miguezao|prescaler\(5) ) + ( GND ) + ( \miguezao|Add0~30\ ))
-- \miguezao|Add0~34\ = CARRY(( \miguezao|prescaler\(5) ) + ( GND ) + ( \miguezao|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \miguezao|ALT_INV_prescaler\(5),
	cin => \miguezao|Add0~30\,
	sumout => \miguezao|Add0~33_sumout\,
	cout => \miguezao|Add0~34\);

-- Location: FF_X36_Y2_N47
\miguezao|prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~33_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(5));

-- Location: LABCELL_X36_Y2_N48
\miguezao|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~37_sumout\ = SUM(( \miguezao|prescaler\(6) ) + ( GND ) + ( \miguezao|Add0~34\ ))
-- \miguezao|Add0~38\ = CARRY(( \miguezao|prescaler\(6) ) + ( GND ) + ( \miguezao|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \miguezao|ALT_INV_prescaler\(6),
	cin => \miguezao|Add0~34\,
	sumout => \miguezao|Add0~37_sumout\,
	cout => \miguezao|Add0~38\);

-- Location: FF_X36_Y2_N50
\miguezao|prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~37_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(6));

-- Location: LABCELL_X36_Y2_N51
\miguezao|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~41_sumout\ = SUM(( \miguezao|prescaler\(7) ) + ( GND ) + ( \miguezao|Add0~38\ ))
-- \miguezao|Add0~42\ = CARRY(( \miguezao|prescaler\(7) ) + ( GND ) + ( \miguezao|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \miguezao|ALT_INV_prescaler\(7),
	cin => \miguezao|Add0~38\,
	sumout => \miguezao|Add0~41_sumout\,
	cout => \miguezao|Add0~42\);

-- Location: FF_X36_Y2_N52
\miguezao|prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~41_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(7));

-- Location: LABCELL_X36_Y2_N54
\miguezao|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~45_sumout\ = SUM(( \miguezao|prescaler\(8) ) + ( GND ) + ( \miguezao|Add0~42\ ))
-- \miguezao|Add0~46\ = CARRY(( \miguezao|prescaler\(8) ) + ( GND ) + ( \miguezao|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \miguezao|ALT_INV_prescaler\(8),
	cin => \miguezao|Add0~42\,
	sumout => \miguezao|Add0~45_sumout\,
	cout => \miguezao|Add0~46\);

-- Location: FF_X36_Y2_N56
\miguezao|prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~45_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(8));

-- Location: LABCELL_X36_Y2_N57
\miguezao|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~85_sumout\ = SUM(( \miguezao|prescaler\(9) ) + ( GND ) + ( \miguezao|Add0~46\ ))
-- \miguezao|Add0~86\ = CARRY(( \miguezao|prescaler\(9) ) + ( GND ) + ( \miguezao|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \miguezao|ALT_INV_prescaler\(9),
	cin => \miguezao|Add0~46\,
	sumout => \miguezao|Add0~85_sumout\,
	cout => \miguezao|Add0~86\);

-- Location: FF_X36_Y2_N59
\miguezao|prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~85_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(9));

-- Location: LABCELL_X36_Y1_N0
\miguezao|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~49_sumout\ = SUM(( \miguezao|prescaler\(10) ) + ( GND ) + ( \miguezao|Add0~86\ ))
-- \miguezao|Add0~50\ = CARRY(( \miguezao|prescaler\(10) ) + ( GND ) + ( \miguezao|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \miguezao|ALT_INV_prescaler\(10),
	cin => \miguezao|Add0~86\,
	sumout => \miguezao|Add0~49_sumout\,
	cout => \miguezao|Add0~50\);

-- Location: FF_X36_Y1_N2
\miguezao|prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~49_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(10));

-- Location: LABCELL_X36_Y1_N3
\miguezao|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~5_sumout\ = SUM(( \miguezao|prescaler\(11) ) + ( GND ) + ( \miguezao|Add0~50\ ))
-- \miguezao|Add0~6\ = CARRY(( \miguezao|prescaler\(11) ) + ( GND ) + ( \miguezao|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \miguezao|ALT_INV_prescaler\(11),
	cin => \miguezao|Add0~50\,
	sumout => \miguezao|Add0~5_sumout\,
	cout => \miguezao|Add0~6\);

-- Location: FF_X36_Y1_N5
\miguezao|prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~5_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(11));

-- Location: LABCELL_X36_Y1_N6
\miguezao|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~9_sumout\ = SUM(( \miguezao|prescaler\(12) ) + ( GND ) + ( \miguezao|Add0~6\ ))
-- \miguezao|Add0~10\ = CARRY(( \miguezao|prescaler\(12) ) + ( GND ) + ( \miguezao|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \miguezao|ALT_INV_prescaler\(12),
	cin => \miguezao|Add0~6\,
	sumout => \miguezao|Add0~9_sumout\,
	cout => \miguezao|Add0~10\);

-- Location: FF_X36_Y1_N8
\miguezao|prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~9_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(12));

-- Location: LABCELL_X36_Y1_N9
\miguezao|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~13_sumout\ = SUM(( \miguezao|prescaler[13]~DUPLICATE_q\ ) + ( GND ) + ( \miguezao|Add0~10\ ))
-- \miguezao|Add0~14\ = CARRY(( \miguezao|prescaler[13]~DUPLICATE_q\ ) + ( GND ) + ( \miguezao|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \miguezao|ALT_INV_prescaler[13]~DUPLICATE_q\,
	cin => \miguezao|Add0~10\,
	sumout => \miguezao|Add0~13_sumout\,
	cout => \miguezao|Add0~14\);

-- Location: FF_X36_Y1_N11
\miguezao|prescaler[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~13_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler[13]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N12
\miguezao|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~17_sumout\ = SUM(( \miguezao|prescaler\(14) ) + ( GND ) + ( \miguezao|Add0~14\ ))
-- \miguezao|Add0~18\ = CARRY(( \miguezao|prescaler\(14) ) + ( GND ) + ( \miguezao|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \miguezao|ALT_INV_prescaler\(14),
	cin => \miguezao|Add0~14\,
	sumout => \miguezao|Add0~17_sumout\,
	cout => \miguezao|Add0~18\);

-- Location: FF_X36_Y1_N14
\miguezao|prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~17_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(14));

-- Location: LABCELL_X36_Y1_N15
\miguezao|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~21_sumout\ = SUM(( \miguezao|prescaler\(15) ) + ( GND ) + ( \miguezao|Add0~18\ ))
-- \miguezao|Add0~22\ = CARRY(( \miguezao|prescaler\(15) ) + ( GND ) + ( \miguezao|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \miguezao|ALT_INV_prescaler\(15),
	cin => \miguezao|Add0~18\,
	sumout => \miguezao|Add0~21_sumout\,
	cout => \miguezao|Add0~22\);

-- Location: FF_X36_Y1_N17
\miguezao|prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~21_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(15));

-- Location: LABCELL_X36_Y1_N18
\miguezao|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~25_sumout\ = SUM(( \miguezao|prescaler\(16) ) + ( GND ) + ( \miguezao|Add0~22\ ))
-- \miguezao|Add0~26\ = CARRY(( \miguezao|prescaler\(16) ) + ( GND ) + ( \miguezao|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \miguezao|ALT_INV_prescaler\(16),
	cin => \miguezao|Add0~22\,
	sumout => \miguezao|Add0~25_sumout\,
	cout => \miguezao|Add0~26\);

-- Location: FF_X36_Y1_N20
\miguezao|prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~25_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(16));

-- Location: LABCELL_X36_Y1_N21
\miguezao|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~53_sumout\ = SUM(( \miguezao|prescaler\(17) ) + ( GND ) + ( \miguezao|Add0~26\ ))
-- \miguezao|Add0~54\ = CARRY(( \miguezao|prescaler\(17) ) + ( GND ) + ( \miguezao|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \miguezao|ALT_INV_prescaler\(17),
	cin => \miguezao|Add0~26\,
	sumout => \miguezao|Add0~53_sumout\,
	cout => \miguezao|Add0~54\);

-- Location: FF_X36_Y1_N22
\miguezao|prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~53_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(17));

-- Location: LABCELL_X36_Y1_N24
\miguezao|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~81_sumout\ = SUM(( \miguezao|prescaler\(18) ) + ( GND ) + ( \miguezao|Add0~54\ ))
-- \miguezao|Add0~82\ = CARRY(( \miguezao|prescaler\(18) ) + ( GND ) + ( \miguezao|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \miguezao|ALT_INV_prescaler\(18),
	cin => \miguezao|Add0~54\,
	sumout => \miguezao|Add0~81_sumout\,
	cout => \miguezao|Add0~82\);

-- Location: FF_X36_Y1_N26
\miguezao|prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~81_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(18));

-- Location: LABCELL_X36_Y1_N27
\miguezao|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~77_sumout\ = SUM(( \miguezao|prescaler\(19) ) + ( GND ) + ( \miguezao|Add0~82\ ))
-- \miguezao|Add0~78\ = CARRY(( \miguezao|prescaler\(19) ) + ( GND ) + ( \miguezao|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \miguezao|ALT_INV_prescaler\(19),
	cin => \miguezao|Add0~82\,
	sumout => \miguezao|Add0~77_sumout\,
	cout => \miguezao|Add0~78\);

-- Location: FF_X36_Y1_N28
\miguezao|prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~77_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(19));

-- Location: LABCELL_X36_Y2_N18
\miguezao|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Equal0~3_combout\ = ( \miguezao|prescaler\(19) & ( \miguezao|prescaler\(18) & ( (!\miguezao|prescaler\(2) & (!\miguezao|prescaler\(1) & !\miguezao|prescaler\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \miguezao|ALT_INV_prescaler\(2),
	datac => \miguezao|ALT_INV_prescaler\(1),
	datad => \miguezao|ALT_INV_prescaler\(9),
	datae => \miguezao|ALT_INV_prescaler\(19),
	dataf => \miguezao|ALT_INV_prescaler\(18),
	combout => \miguezao|Equal0~3_combout\);

-- Location: LABCELL_X36_Y1_N30
\miguezao|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~73_sumout\ = SUM(( \miguezao|prescaler[20]~DUPLICATE_q\ ) + ( GND ) + ( \miguezao|Add0~78\ ))
-- \miguezao|Add0~74\ = CARRY(( \miguezao|prescaler[20]~DUPLICATE_q\ ) + ( GND ) + ( \miguezao|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \miguezao|ALT_INV_prescaler[20]~DUPLICATE_q\,
	cin => \miguezao|Add0~78\,
	sumout => \miguezao|Add0~73_sumout\,
	cout => \miguezao|Add0~74\);

-- Location: FF_X36_Y1_N31
\miguezao|prescaler[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~73_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler[20]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N33
\miguezao|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~69_sumout\ = SUM(( \miguezao|prescaler\(21) ) + ( GND ) + ( \miguezao|Add0~74\ ))
-- \miguezao|Add0~70\ = CARRY(( \miguezao|prescaler\(21) ) + ( GND ) + ( \miguezao|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \miguezao|ALT_INV_prescaler\(21),
	cin => \miguezao|Add0~74\,
	sumout => \miguezao|Add0~69_sumout\,
	cout => \miguezao|Add0~70\);

-- Location: FF_X36_Y1_N35
\miguezao|prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~69_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(21));

-- Location: LABCELL_X36_Y1_N36
\miguezao|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~65_sumout\ = SUM(( \miguezao|prescaler\(22) ) + ( GND ) + ( \miguezao|Add0~70\ ))
-- \miguezao|Add0~66\ = CARRY(( \miguezao|prescaler\(22) ) + ( GND ) + ( \miguezao|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \miguezao|ALT_INV_prescaler\(22),
	cin => \miguezao|Add0~70\,
	sumout => \miguezao|Add0~65_sumout\,
	cout => \miguezao|Add0~66\);

-- Location: FF_X36_Y1_N38
\miguezao|prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~65_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(22));

-- Location: LABCELL_X36_Y1_N39
\miguezao|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Add0~61_sumout\ = SUM(( \miguezao|prescaler\(23) ) + ( GND ) + ( \miguezao|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \miguezao|ALT_INV_prescaler\(23),
	cin => \miguezao|Add0~66\,
	sumout => \miguezao|Add0~61_sumout\);

-- Location: FF_X36_Y1_N40
\miguezao|prescaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~61_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(23));

-- Location: FF_X36_Y1_N32
\miguezao|prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~73_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(20));

-- Location: FF_X36_Y1_N34
\miguezao|prescaler[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~69_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler[21]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N15
\miguezao|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Equal0~2_combout\ = ( \miguezao|prescaler\(17) & ( \miguezao|prescaler[21]~DUPLICATE_q\ & ( (!\miguezao|prescaler\(0) & (\miguezao|prescaler\(23) & (!\miguezao|prescaler\(22) & \miguezao|prescaler\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \miguezao|ALT_INV_prescaler\(0),
	datab => \miguezao|ALT_INV_prescaler\(23),
	datac => \miguezao|ALT_INV_prescaler\(22),
	datad => \miguezao|ALT_INV_prescaler\(20),
	datae => \miguezao|ALT_INV_prescaler\(17),
	dataf => \miguezao|ALT_INV_prescaler[21]~DUPLICATE_q\,
	combout => \miguezao|Equal0~2_combout\);

-- Location: FF_X36_Y2_N44
\miguezao|prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~29_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(4));

-- Location: FF_X36_Y1_N1
\miguezao|prescaler[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~49_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler[10]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N0
\miguezao|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Equal0~1_combout\ = ( \miguezao|prescaler\(5) & ( \miguezao|prescaler[10]~DUPLICATE_q\ & ( (!\miguezao|prescaler\(6) & (!\miguezao|prescaler\(7) & (!\miguezao|prescaler\(8) & !\miguezao|prescaler\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \miguezao|ALT_INV_prescaler\(6),
	datab => \miguezao|ALT_INV_prescaler\(7),
	datac => \miguezao|ALT_INV_prescaler\(8),
	datad => \miguezao|ALT_INV_prescaler\(4),
	datae => \miguezao|ALT_INV_prescaler\(5),
	dataf => \miguezao|ALT_INV_prescaler[10]~DUPLICATE_q\,
	combout => \miguezao|Equal0~1_combout\);

-- Location: FF_X36_Y1_N10
\miguezao|prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~13_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(13));

-- Location: LABCELL_X36_Y1_N54
\miguezao|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Equal0~0_combout\ = ( \miguezao|prescaler\(13) & ( \miguezao|prescaler\(12) & ( (\miguezao|prescaler\(11) & (\miguezao|prescaler\(15) & (!\miguezao|prescaler\(16) & !\miguezao|prescaler\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \miguezao|ALT_INV_prescaler\(11),
	datab => \miguezao|ALT_INV_prescaler\(15),
	datac => \miguezao|ALT_INV_prescaler\(16),
	datad => \miguezao|ALT_INV_prescaler\(14),
	datae => \miguezao|ALT_INV_prescaler\(13),
	dataf => \miguezao|ALT_INV_prescaler\(12),
	combout => \miguezao|Equal0~0_combout\);

-- Location: LABCELL_X36_Y2_N6
\miguezao|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|Equal0~4_combout\ = ( \miguezao|Equal0~1_combout\ & ( \miguezao|Equal0~0_combout\ & ( (!\miguezao|prescaler[3]~DUPLICATE_q\ & (\miguezao|Equal0~3_combout\ & \miguezao|Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \miguezao|ALT_INV_prescaler[3]~DUPLICATE_q\,
	datac => \miguezao|ALT_INV_Equal0~3_combout\,
	datad => \miguezao|ALT_INV_Equal0~2_combout\,
	datae => \miguezao|ALT_INV_Equal0~1_combout\,
	dataf => \miguezao|ALT_INV_Equal0~0_combout\,
	combout => \miguezao|Equal0~4_combout\);

-- Location: FF_X36_Y2_N40
\miguezao|prescaler[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~1_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler[3]~DUPLICATE_q\);

-- Location: FF_X36_Y2_N41
\miguezao|prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \miguezao|Add0~1_sumout\,
	sclr => \miguezao|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|prescaler\(3));

-- Location: LABCELL_X36_Y2_N27
\miguezao|clk_2Hz_i~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \miguezao|clk_2Hz_i~0_combout\ = ( \miguezao|Equal0~1_combout\ & ( \miguezao|clk_2Hz_i~q\ & ( ((!\miguezao|Equal0~0_combout\) # ((!\miguezao|Equal0~2_combout\) # (!\miguezao|Equal0~3_combout\))) # (\miguezao|prescaler\(3)) ) ) ) # ( 
-- !\miguezao|Equal0~1_combout\ & ( \miguezao|clk_2Hz_i~q\ ) ) # ( \miguezao|Equal0~1_combout\ & ( !\miguezao|clk_2Hz_i~q\ & ( (!\miguezao|prescaler\(3) & (\miguezao|Equal0~0_combout\ & (\miguezao|Equal0~2_combout\ & \miguezao|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001011111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \miguezao|ALT_INV_prescaler\(3),
	datab => \miguezao|ALT_INV_Equal0~0_combout\,
	datac => \miguezao|ALT_INV_Equal0~2_combout\,
	datad => \miguezao|ALT_INV_Equal0~3_combout\,
	datae => \miguezao|ALT_INV_Equal0~1_combout\,
	dataf => \miguezao|ALT_INV_clk_2Hz_i~q\,
	combout => \miguezao|clk_2Hz_i~0_combout\);

-- Location: FF_X37_Y2_N17
\miguezao|clk_2Hz_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \miguezao|clk_2Hz_i~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miguezao|clk_2Hz_i~q\);

-- Location: MLABCELL_X37_Y2_N0
\inc_PC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc_PC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \inc_PC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \inc_PC|Add0~1_sumout\,
	cout => \inc_PC|Add0~2\);

-- Location: LABCELL_X41_Y2_N21
\PC|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~feeder_combout\ = ( \inc_PC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inc_PC|ALT_INV_Add0~1_sumout\,
	combout => \PC|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X41_Y3_N3
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X41_Y2_N54
\rom|content~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~3_combout\ = ( \PC|DOUT\(1) & ( !\PC|DOUT\(4) ) ) # ( !\PC|DOUT\(1) & ( !\PC|DOUT\(4) $ (((!\PC|DOUT\(0) & !\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \rom|content~3_combout\);

-- Location: MLABCELL_X37_Y2_N9
\inc_PC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc_PC|Add0~33_sumout\ = SUM(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \inc_PC|Add0~38\ ))
-- \inc_PC|Add0~34\ = CARRY(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \inc_PC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \inc_PC|Add0~38\,
	sumout => \inc_PC|Add0~33_sumout\,
	cout => \inc_PC|Add0~34\);

-- Location: MLABCELL_X37_Y2_N12
\inc_PC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc_PC|Add0~9_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \inc_PC|Add0~34\ ))
-- \inc_PC|Add0~10\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \inc_PC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(4),
	cin => \inc_PC|Add0~34\,
	sumout => \inc_PC|Add0~9_sumout\,
	cout => \inc_PC|Add0~10\);

-- Location: MLABCELL_X37_Y2_N15
\inc_PC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc_PC|Add0~29_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \inc_PC|Add0~10\ ))
-- \inc_PC|Add0~30\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \inc_PC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	cin => \inc_PC|Add0~10\,
	sumout => \inc_PC|Add0~29_sumout\,
	cout => \inc_PC|Add0~30\);

-- Location: LABCELL_X41_Y2_N0
\PC|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[5]~feeder_combout\ = \inc_PC|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inc_PC|ALT_INV_Add0~29_sumout\,
	combout => \PC|DOUT[5]~feeder_combout\);

-- Location: FF_X41_Y2_N2
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[5]~feeder_combout\,
	asdata => \rom|content~8_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X41_Y2_N45
\rom|content~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~5_combout\ = ( \rom|content~0_combout\ & ( (!\PC|DOUT\(4) & \PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \rom|ALT_INV_content~0_combout\,
	combout => \rom|content~5_combout\);

-- Location: FF_X40_Y2_N20
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[7]~feeder_combout\,
	asdata => \rom|content~5_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N18
\inc_PC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc_PC|Add0~25_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \inc_PC|Add0~30\ ))
-- \inc_PC|Add0~26\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \inc_PC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \inc_PC|Add0~30\,
	sumout => \inc_PC|Add0~25_sumout\,
	cout => \inc_PC|Add0~26\);

-- Location: LABCELL_X40_Y2_N15
\PC|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[6]~feeder_combout\ = ( \inc_PC|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inc_PC|ALT_INV_Add0~25_sumout\,
	combout => \PC|DOUT[6]~feeder_combout\);

-- Location: FF_X40_Y2_N17
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[6]~feeder_combout\,
	asdata => \rom|content~8_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N21
\inc_PC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc_PC|Add0~21_sumout\ = SUM(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \inc_PC|Add0~26\ ))
-- \inc_PC|Add0~22\ = CARRY(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \inc_PC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \inc_PC|Add0~26\,
	sumout => \inc_PC|Add0~21_sumout\,
	cout => \inc_PC|Add0~22\);

-- Location: LABCELL_X40_Y2_N18
\PC|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[7]~feeder_combout\ = ( \inc_PC|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inc_PC|ALT_INV_Add0~21_sumout\,
	combout => \PC|DOUT[7]~feeder_combout\);

-- Location: FF_X40_Y2_N19
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[7]~feeder_combout\,
	asdata => \rom|content~5_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: FF_X41_Y2_N8
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[8]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N24
\inc_PC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc_PC|Add0~17_sumout\ = SUM(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \inc_PC|Add0~22\ ))
-- \inc_PC|Add0~18\ = CARRY(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \inc_PC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \inc_PC|Add0~22\,
	sumout => \inc_PC|Add0~17_sumout\,
	cout => \inc_PC|Add0~18\);

-- Location: LABCELL_X41_Y2_N6
\PC|DOUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[8]~feeder_combout\ = ( \inc_PC|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inc_PC|ALT_INV_Add0~17_sumout\,
	combout => \PC|DOUT[8]~feeder_combout\);

-- Location: FF_X41_Y2_N7
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[8]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LABCELL_X41_Y2_N18
\rom|content~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~2_combout\ = ( !\PC|DOUT\(1) & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT\(0) & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \rom|content~2_combout\);

-- Location: LABCELL_X41_Y2_N3
\rom|content~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~6_combout\ = ( !\PC|DOUT\(4) & ( (!\rom|content~2_combout\ & \rom|content~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~2_combout\,
	datac => \rom|ALT_INV_content~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \rom|content~6_combout\);

-- Location: FF_X42_Y2_N37
\PC|DOUT[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[9]~feeder_combout\,
	asdata => \rom|content~6_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[9]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N27
\inc_PC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc_PC|Add0~13_sumout\ = SUM(( \PC|DOUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \inc_PC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[9]~DUPLICATE_q\,
	cin => \inc_PC|Add0~18\,
	sumout => \inc_PC|Add0~13_sumout\);

-- Location: MLABCELL_X42_Y2_N36
\PC|DOUT[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[9]~feeder_combout\ = ( \inc_PC|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inc_PC|ALT_INV_Add0~13_sumout\,
	combout => \PC|DOUT[9]~feeder_combout\);

-- Location: FF_X42_Y2_N38
\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[9]~feeder_combout\,
	asdata => \rom|content~6_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

-- Location: FF_X40_Y2_N16
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[6]~feeder_combout\,
	asdata => \rom|content~8_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X41_Y2_N42
\rom|content~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~0_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(5) & (!\PC|DOUT\(7) & (!\PC|DOUT\(8) & !\PC|DOUT\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \PC|ALT_INV_DOUT\(9),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \rom|content~0_combout\);

-- Location: LABCELL_X41_Y2_N36
\ula|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|Equal6~0_combout\ = ( \rom|content~2_combout\ & ( (!\rom|content~0_combout\) # ((!\PC|DOUT[4]~DUPLICATE_q\ & ((!\rom|content~3_combout\) # (\PC|DOUT[3]~DUPLICATE_q\)))) ) ) # ( !\rom|content~2_combout\ & ( (!\rom|content~0_combout\) # 
-- ((\PC|DOUT[4]~DUPLICATE_q\ & ((!\rom|content~3_combout\) # (\PC|DOUT[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110001111111110011000111111111110001001111111111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \rom|ALT_INV_content~3_combout\,
	datad => \rom|ALT_INV_content~0_combout\,
	dataf => \rom|ALT_INV_content~2_combout\,
	combout => \ula|Equal6~0_combout\);

-- Location: MLABCELL_X42_Y2_N24
\ula|outp[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|outp[0]~9_combout\ = ( \rom|content~0_combout\ & ( \rom|content~2_combout\ & ( (!\PC|DOUT\(3) & (\rom|content~3_combout\ & \PC|DOUT[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \rom|ALT_INV_content~3_combout\,
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \rom|ALT_INV_content~0_combout\,
	dataf => \rom|ALT_INV_content~2_combout\,
	combout => \ula|outp[0]~9_combout\);

-- Location: LABCELL_X41_Y2_N24
\unidade_controle|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle|Equal8~0_combout\ = ( !\PC|DOUT\(4) & ( (\rom|content~3_combout\ & (\rom|content~0_combout\ & (!\rom|content~2_combout\ & !\PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~3_combout\,
	datab => \rom|ALT_INV_content~0_combout\,
	datac => \rom|ALT_INV_content~2_combout\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \unidade_controle|Equal8~0_combout\);

-- Location: LABCELL_X41_Y2_N9
\rom|content~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~10_combout\ = ( \PC|DOUT\(4) & ( (\rom|content~2_combout\ & \rom|content~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~2_combout\,
	datad => \rom|ALT_INV_content~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \rom|content~10_combout\);

-- Location: LABCELL_X40_Y3_N45
\rom|content~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~11_combout\ = ( \rom|content~3_combout\ & ( (\rom|content~0_combout\ & !\PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom|ALT_INV_content~0_combout\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \rom|ALT_INV_content~3_combout\,
	combout => \rom|content~11_combout\);

-- Location: LABCELL_X40_Y3_N36
\ula|outp[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|outp[7]~8_combout\ = ( \register_bank|registrador~93_combout\ & ( (!\rom|content~10_combout\ & (((\rom|content~11_combout\ & \rom|content~6_combout\)) # (\register_bank|registrador~80_combout\))) # (\rom|content~10_combout\ & 
-- (!\register_bank|registrador~80_combout\ $ (((\rom|content~6_combout\) # (\rom|content~11_combout\))))) ) ) # ( !\register_bank|registrador~93_combout\ & ( (!\rom|content~10_combout\ & (\register_bank|registrador~80_combout\ & ((!\rom|content~6_combout\) 
-- # (\rom|content~11_combout\)))) # (\rom|content~10_combout\ & (!\register_bank|registrador~80_combout\ $ (((\rom|content~6_combout\) # (\rom|content~11_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010110111010000001011011101000010101111110100001010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~10_combout\,
	datab => \rom|ALT_INV_content~11_combout\,
	datac => \rom|ALT_INV_content~6_combout\,
	datad => \register_bank|ALT_INV_registrador~80_combout\,
	dataf => \register_bank|ALT_INV_registrador~93_combout\,
	combout => \ula|outp[7]~8_combout\);

-- Location: LABCELL_X40_Y3_N39
\ula|outp[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|outp[0]~7_combout\ = ( \rom|content~10_combout\ & ( (!\rom|content~11_combout\) # (\rom|content~6_combout\) ) ) # ( !\rom|content~10_combout\ & ( \rom|content~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rom|ALT_INV_content~11_combout\,
	datad => \rom|ALT_INV_content~6_combout\,
	dataf => \rom|ALT_INV_content~10_combout\,
	combout => \ula|outp[0]~7_combout\);

-- Location: LABCELL_X40_Y3_N51
\register_bank|registrador~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~92_combout\ = ( !\rom|content~1_combout\ & ( (!\rom|content~0_combout\) # (!\PC|DOUT[4]~DUPLICATE_q\ $ (!\rom|content~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111010111101011111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \rom|ALT_INV_content~0_combout\,
	datad => \rom|ALT_INV_content~2_combout\,
	dataf => \rom|ALT_INV_content~1_combout\,
	combout => \register_bank|registrador~92_combout\);

-- Location: FF_X40_Y3_N34
\register_bank|registrador~19DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~19feeder_combout\,
	asdata => \ula|outp[7]~8_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~19DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N54
\register_bank|registrador~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~89_combout\ = ( \rom|content~8_combout\ & ( \register_bank|registrador~19DUPLICATE_q\ & ( (!\rom|content~5_combout\ & \unidade_controle|Equal8~0_combout\) ) ) ) # ( !\rom|content~8_combout\ & ( 
-- \register_bank|registrador~19DUPLICATE_q\ & ( (!\rom|content~5_combout\ & \unidade_controle|Equal8~0_combout\) ) ) ) # ( \rom|content~8_combout\ & ( !\register_bank|registrador~19DUPLICATE_q\ & ( (!\rom|content~5_combout\ & 
-- \unidade_controle|Equal8~0_combout\) ) ) ) # ( !\rom|content~8_combout\ & ( !\register_bank|registrador~19DUPLICATE_q\ & ( (!\rom|content~5_combout\) # (!\unidade_controle|Equal8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom|ALT_INV_content~5_combout\,
	datad => \unidade_controle|ALT_INV_Equal8~0_combout\,
	datae => \rom|ALT_INV_content~8_combout\,
	dataf => \register_bank|ALT_INV_registrador~19DUPLICATE_q\,
	combout => \register_bank|registrador~89_combout\);

-- Location: LABCELL_X41_Y2_N30
\unidade_controle|RY[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle|RY[2]~0_combout\ = ( \rom|content~3_combout\ & ( !\PC|DOUT\(4) & ( (\rom|content~0_combout\ & (((!\PC|DOUT\(3) & !\rom|content~2_combout\)) # (\rom|content~4_combout\))) ) ) ) # ( !\rom|content~3_combout\ & ( !\PC|DOUT\(4) & ( 
-- (\rom|content~4_combout\ & \rom|content~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000001101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~4_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \rom|ALT_INV_content~2_combout\,
	datad => \rom|ALT_INV_content~0_combout\,
	datae => \rom|ALT_INV_content~3_combout\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \unidade_controle|RY[2]~0_combout\);

-- Location: MLABCELL_X42_Y2_N15
\register_bank|registrador~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~93_combout\ = ( !\register_bank|registrador~89_combout\ & ( !\unidade_controle|RY[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \register_bank|ALT_INV_registrador~89_combout\,
	dataf => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	combout => \register_bank|registrador~93_combout\);

-- Location: LABCELL_X39_Y2_N36
\register_bank|registrador~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~84_combout\ = ( \rom|content~8_combout\ & ( (\unidade_controle|Equal8~0_combout\ & !\rom|content~5_combout\) ) ) # ( !\rom|content~8_combout\ & ( (!\unidade_controle|Equal8~0_combout\ & (!\register_bank|registrador~18_q\)) # 
-- (\unidade_controle|Equal8~0_combout\ & ((!\rom|content~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111000000110011111100000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_bank|ALT_INV_registrador~18_q\,
	datac => \unidade_controle|ALT_INV_Equal8~0_combout\,
	datad => \rom|ALT_INV_content~5_combout\,
	dataf => \rom|ALT_INV_content~8_combout\,
	combout => \register_bank|registrador~84_combout\);

-- Location: LABCELL_X40_Y2_N57
\register_bank|registrador~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~98_combout\ = ( !\register_bank|registrador~84_combout\ & ( !\unidade_controle|RY[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	dataf => \register_bank|ALT_INV_registrador~84_combout\,
	combout => \register_bank|registrador~98_combout\);

-- Location: LABCELL_X40_Y2_N9
\register_bank|registrador~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~85_combout\ = ( \rom|content~5_combout\ & ( (!\register_bank|registrador~17_q\ & (!\unidade_controle|Equal8~0_combout\ & !\rom|content~8_combout\)) ) ) # ( !\rom|content~5_combout\ & ( ((!\register_bank|registrador~17_q\ & 
-- !\rom|content~8_combout\)) # (\unidade_controle|Equal8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001111101011110000111110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~17_q\,
	datac => \unidade_controle|ALT_INV_Equal8~0_combout\,
	datad => \rom|ALT_INV_content~8_combout\,
	dataf => \rom|ALT_INV_content~5_combout\,
	combout => \register_bank|registrador~85_combout\);

-- Location: LABCELL_X39_Y2_N21
\register_bank|registrador~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~99_combout\ = ( !\register_bank|registrador~85_combout\ & ( !\unidade_controle|RY[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	dataf => \register_bank|ALT_INV_registrador~85_combout\,
	combout => \register_bank|registrador~99_combout\);

-- Location: LABCELL_X39_Y2_N48
\register_bank|registrador~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~83_combout\ = ( \rom|content~0_combout\ & ( (\register_bank|registrador~16_q\ & (((!\PC|DOUT[3]~DUPLICATE_q\ & \rom|content~2_combout\)) # (\PC|DOUT[4]~DUPLICATE_q\))) ) ) # ( !\rom|content~0_combout\ & ( 
-- \register_bank|registrador~16_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001110110000000000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \rom|ALT_INV_content~2_combout\,
	datad => \register_bank|ALT_INV_registrador~16_q\,
	dataf => \rom|ALT_INV_content~0_combout\,
	combout => \register_bank|registrador~83_combout\);

-- Location: LABCELL_X39_Y2_N15
\register_bank|registrador~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~88_combout\ = ( \register_bank|registrador~14DUPLICATE_q\ & ( (!\rom|content~5_combout\ & \unidade_controle|Equal8~0_combout\) ) ) # ( !\register_bank|registrador~14DUPLICATE_q\ & ( (!\unidade_controle|Equal8~0_combout\ & 
-- (!\rom|content~8_combout\)) # (\unidade_controle|Equal8~0_combout\ & ((!\rom|content~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011110000101010101111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~8_combout\,
	datac => \rom|ALT_INV_content~5_combout\,
	datad => \unidade_controle|ALT_INV_Equal8~0_combout\,
	dataf => \register_bank|ALT_INV_registrador~14DUPLICATE_q\,
	combout => \register_bank|registrador~88_combout\);

-- Location: LABCELL_X39_Y2_N9
\ula|outp[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|outp[2]~4_combout\ = ( \register_bank|registrador~78_combout\ & ( \register_bank|registrador~88_combout\ & ( (!\rom|content~10_combout\ $ (\rom|content~6_combout\)) # (\rom|content~11_combout\) ) ) ) # ( !\register_bank|registrador~78_combout\ & ( 
-- \register_bank|registrador~88_combout\ & ( (\rom|content~10_combout\ & (!\rom|content~11_combout\ & !\rom|content~6_combout\)) ) ) ) # ( \register_bank|registrador~78_combout\ & ( !\register_bank|registrador~88_combout\ & ( ((!\rom|content~10_combout\ & 
-- ((!\unidade_controle|RY[2]~0_combout\) # (!\rom|content~6_combout\))) # (\rom|content~10_combout\ & ((\rom|content~6_combout\)))) # (\rom|content~11_combout\) ) ) ) # ( !\register_bank|registrador~78_combout\ & ( !\register_bank|registrador~88_combout\ & 
-- ( (!\rom|content~10_combout\ & (!\unidade_controle|RY[2]~0_combout\ & (\rom|content~11_combout\ & \rom|content~6_combout\))) # (\rom|content~10_combout\ & (((!\rom|content~11_combout\ & !\rom|content~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001000101011111101111101010000000000001010111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~10_combout\,
	datab => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	datac => \rom|ALT_INV_content~11_combout\,
	datad => \rom|ALT_INV_content~6_combout\,
	datae => \register_bank|ALT_INV_registrador~78_combout\,
	dataf => \register_bank|ALT_INV_registrador~88_combout\,
	combout => \ula|outp[2]~4_combout\);

-- Location: FF_X39_Y2_N53
\register_bank|registrador~14DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~14feeder_combout\,
	asdata => \ula|outp[2]~4_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~14DUPLICATE_q\);

-- Location: LABCELL_X39_Y2_N27
\register_bank|registrador~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~78_combout\ = ( \rom|content~2_combout\ & ( (\register_bank|registrador~14DUPLICATE_q\ & (((!\PC|DOUT[3]~DUPLICATE_q\) # (!\rom|content~0_combout\)) # (\PC|DOUT[4]~DUPLICATE_q\))) ) ) # ( !\rom|content~2_combout\ & ( 
-- (\register_bank|registrador~14DUPLICATE_q\ & ((!\rom|content~0_combout\) # (\PC|DOUT[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010001010101010001000101010101010100010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~14DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \rom|ALT_INV_content~0_combout\,
	dataf => \rom|ALT_INV_content~2_combout\,
	combout => \register_bank|registrador~78_combout\);

-- Location: LABCELL_X40_Y3_N24
\register_bank|registrador~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~90_combout\ = ( !\rom|content~5_combout\ & ( \unidade_controle|Equal8~0_combout\ ) ) # ( \rom|content~5_combout\ & ( !\unidade_controle|Equal8~0_combout\ & ( (!\register_bank|registrador~13DUPLICATE_q\ & 
-- !\rom|content~8_combout\) ) ) ) # ( !\rom|content~5_combout\ & ( !\unidade_controle|Equal8~0_combout\ & ( (!\register_bank|registrador~13DUPLICATE_q\ & !\rom|content~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~13DUPLICATE_q\,
	datac => \rom|ALT_INV_content~8_combout\,
	datae => \rom|ALT_INV_content~5_combout\,
	dataf => \unidade_controle|ALT_INV_Equal8~0_combout\,
	combout => \register_bank|registrador~90_combout\);

-- Location: LABCELL_X40_Y3_N12
\ula|outp[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|outp[1]~5_combout\ = ( \rom|content~11_combout\ & ( \register_bank|registrador~90_combout\ & ( \register_bank|registrador~79_combout\ ) ) ) # ( !\rom|content~11_combout\ & ( \register_bank|registrador~90_combout\ & ( (!\rom|content~10_combout\ & 
-- (\register_bank|registrador~79_combout\ & !\rom|content~6_combout\)) # (\rom|content~10_combout\ & (!\register_bank|registrador~79_combout\ $ (\rom|content~6_combout\))) ) ) ) # ( \rom|content~11_combout\ & ( !\register_bank|registrador~90_combout\ & ( 
-- ((!\rom|content~10_combout\ & (\rom|content~6_combout\ & !\unidade_controle|RY[2]~0_combout\))) # (\register_bank|registrador~79_combout\) ) ) ) # ( !\rom|content~11_combout\ & ( !\register_bank|registrador~90_combout\ & ( (!\rom|content~10_combout\ & 
-- (\register_bank|registrador~79_combout\ & ((!\rom|content~6_combout\) # (!\unidade_controle|RY[2]~0_combout\)))) # (\rom|content~10_combout\ & (!\register_bank|registrador~79_combout\ $ ((\rom|content~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001101100001001110110011001101100001011000010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~10_combout\,
	datab => \register_bank|ALT_INV_registrador~79_combout\,
	datac => \rom|ALT_INV_content~6_combout\,
	datad => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	datae => \rom|ALT_INV_content~11_combout\,
	dataf => \register_bank|ALT_INV_registrador~90_combout\,
	combout => \ula|outp[1]~5_combout\);

-- Location: FF_X40_Y3_N5
\register_bank|registrador~13DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~13feeder_combout\,
	asdata => \ula|outp[1]~5_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~13DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N30
\register_bank|registrador~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~79_combout\ = ( \rom|content~0_combout\ & ( (\register_bank|registrador~13DUPLICATE_q\ & (((!\PC|DOUT[3]~DUPLICATE_q\ & \rom|content~2_combout\)) # (\PC|DOUT[4]~DUPLICATE_q\))) ) ) # ( !\rom|content~0_combout\ & ( 
-- \register_bank|registrador~13DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100010001010100010001000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~13DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \rom|ALT_INV_content~2_combout\,
	dataf => \rom|ALT_INV_content~0_combout\,
	combout => \register_bank|registrador~79_combout\);

-- Location: LABCELL_X40_Y3_N0
\register_bank|registrador~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~77_combout\ = ( \rom|content~0_combout\ & ( (\register_bank|registrador~12DUPLICATE_q\ & (((!\PC|DOUT[3]~DUPLICATE_q\ & \rom|content~2_combout\)) # (\PC|DOUT[4]~DUPLICATE_q\))) ) ) # ( !\rom|content~0_combout\ & ( 
-- \register_bank|registrador~12DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011001000110000001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \register_bank|ALT_INV_registrador~12DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \rom|ALT_INV_content~2_combout\,
	dataf => \rom|ALT_INV_content~0_combout\,
	combout => \register_bank|registrador~77_combout\);

-- Location: LABCELL_X40_Y2_N30
\ula|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|Add0~9_sumout\ = SUM(( \register_bank|registrador~77_combout\ ) + ( (!\ula|Equal6~0_combout\) # (\register_bank|registrador~95_combout\) ) + ( !VCC ))
-- \ula|Add0~10\ = CARRY(( \register_bank|registrador~77_combout\ ) + ( (!\ula|Equal6~0_combout\) # (\register_bank|registrador~95_combout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|ALT_INV_Equal6~0_combout\,
	datac => \register_bank|ALT_INV_registrador~95_combout\,
	datad => \register_bank|ALT_INV_registrador~77_combout\,
	cin => GND,
	sumout => \ula|Add0~9_sumout\,
	cout => \ula|Add0~10\);

-- Location: LABCELL_X40_Y3_N21
\register_bank|registrador~12feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~12feeder_combout\ = ( \ula|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ula|ALT_INV_Add0~9_sumout\,
	combout => \register_bank|registrador~12feeder_combout\);

-- Location: FF_X40_Y3_N23
\register_bank|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~12feeder_combout\,
	asdata => \ula|outp[0]~6_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~12_q\);

-- Location: LABCELL_X40_Y3_N18
\register_bank|registrador~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~91_combout\ = ( \unidade_controle|Equal8~0_combout\ & ( !\rom|content~5_combout\ ) ) # ( !\unidade_controle|Equal8~0_combout\ & ( (!\register_bank|registrador~12_q\ & !\rom|content~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~12_q\,
	datac => \rom|ALT_INV_content~5_combout\,
	datad => \rom|ALT_INV_content~8_combout\,
	dataf => \unidade_controle|ALT_INV_Equal8~0_combout\,
	combout => \register_bank|registrador~91_combout\);

-- Location: LABCELL_X40_Y3_N54
\ula|outp[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|outp[0]~6_combout\ = ( \rom|content~6_combout\ & ( \register_bank|registrador~91_combout\ & ( (\register_bank|registrador~77_combout\ & ((\rom|content~11_combout\) # (\rom|content~10_combout\))) ) ) ) # ( !\rom|content~6_combout\ & ( 
-- \register_bank|registrador~91_combout\ & ( !\register_bank|registrador~77_combout\ $ (((!\rom|content~10_combout\) # (\rom|content~11_combout\))) ) ) ) # ( \rom|content~6_combout\ & ( !\register_bank|registrador~91_combout\ & ( (!\rom|content~10_combout\ 
-- & ((!\rom|content~11_combout\ & (\register_bank|registrador~77_combout\ & !\unidade_controle|RY[2]~0_combout\)) # (\rom|content~11_combout\ & ((!\unidade_controle|RY[2]~0_combout\) # (\register_bank|registrador~77_combout\))))) # (\rom|content~10_combout\ 
-- & (((\register_bank|registrador~77_combout\)))) ) ) ) # ( !\rom|content~6_combout\ & ( !\register_bank|registrador~91_combout\ & ( !\register_bank|registrador~77_combout\ $ (((!\rom|content~10_combout\) # (\rom|content~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011001011110000011101001011010010110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~10_combout\,
	datab => \rom|ALT_INV_content~11_combout\,
	datac => \register_bank|ALT_INV_registrador~77_combout\,
	datad => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	datae => \rom|ALT_INV_content~6_combout\,
	dataf => \register_bank|ALT_INV_registrador~91_combout\,
	combout => \ula|outp[0]~6_combout\);

-- Location: FF_X40_Y3_N22
\register_bank|registrador~12DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~12feeder_combout\,
	asdata => \ula|outp[0]~6_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~12DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N3
\register_bank|registrador~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~95_combout\ = ( \unidade_controle|Equal8~0_combout\ & ( (!\unidade_controle|RY[2]~0_combout\ & \rom|content~5_combout\) ) ) # ( !\unidade_controle|Equal8~0_combout\ & ( (!\unidade_controle|RY[2]~0_combout\ & 
-- ((\register_bank|registrador~12DUPLICATE_q\) # (\rom|content~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	datab => \rom|ALT_INV_content~5_combout\,
	datac => \rom|ALT_INV_content~8_combout\,
	datad => \register_bank|ALT_INV_registrador~12DUPLICATE_q\,
	dataf => \unidade_controle|ALT_INV_Equal8~0_combout\,
	combout => \register_bank|registrador~95_combout\);

-- Location: LABCELL_X40_Y2_N33
\ula|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|Add0~17_sumout\ = SUM(( \register_bank|registrador~79_combout\ ) + ( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~97_combout\))) ) + ( \ula|Add0~10\ ))
-- \ula|Add0~18\ = CARRY(( \register_bank|registrador~79_combout\ ) + ( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~97_combout\))) ) + ( \ula|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|ALT_INV_Equal6~0_combout\,
	datab => \ula|ALT_INV_outp[0]~9_combout\,
	datac => \register_bank|ALT_INV_registrador~97_combout\,
	datad => \register_bank|ALT_INV_registrador~79_combout\,
	cin => \ula|Add0~10\,
	sumout => \ula|Add0~17_sumout\,
	cout => \ula|Add0~18\);

-- Location: LABCELL_X40_Y3_N3
\register_bank|registrador~13feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~13feeder_combout\ = ( \ula|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ula|ALT_INV_Add0~17_sumout\,
	combout => \register_bank|registrador~13feeder_combout\);

-- Location: FF_X40_Y3_N4
\register_bank|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~13feeder_combout\,
	asdata => \ula|outp[1]~5_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~13_q\);

-- Location: LABCELL_X41_Y2_N15
\register_bank|registrador~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~97_combout\ = ( !\unidade_controle|RY[2]~0_combout\ & ( (!\unidade_controle|Equal8~0_combout\ & (((\rom|content~8_combout\)) # (\register_bank|registrador~13_q\))) # (\unidade_controle|Equal8~0_combout\ & 
-- (((\rom|content~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001111111001010100111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle|ALT_INV_Equal8~0_combout\,
	datab => \register_bank|ALT_INV_registrador~13_q\,
	datac => \rom|ALT_INV_content~8_combout\,
	datad => \rom|ALT_INV_content~5_combout\,
	dataf => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	combout => \register_bank|registrador~97_combout\);

-- Location: LABCELL_X40_Y2_N36
\ula|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|Add0~13_sumout\ = SUM(( \register_bank|registrador~78_combout\ ) + ( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~96_combout\))) ) + ( \ula|Add0~18\ ))
-- \ula|Add0~14\ = CARRY(( \register_bank|registrador~78_combout\ ) + ( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~96_combout\))) ) + ( \ula|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|ALT_INV_Equal6~0_combout\,
	datab => \ula|ALT_INV_outp[0]~9_combout\,
	datac => \register_bank|ALT_INV_registrador~96_combout\,
	datad => \register_bank|ALT_INV_registrador~78_combout\,
	cin => \ula|Add0~18\,
	sumout => \ula|Add0~13_sumout\,
	cout => \ula|Add0~14\);

-- Location: LABCELL_X39_Y2_N51
\register_bank|registrador~14feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~14feeder_combout\ = ( \ula|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ula|ALT_INV_Add0~13_sumout\,
	combout => \register_bank|registrador~14feeder_combout\);

-- Location: FF_X39_Y2_N52
\register_bank|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~14feeder_combout\,
	asdata => \ula|outp[2]~4_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~14_q\);

-- Location: LABCELL_X40_Y2_N21
\register_bank|registrador~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~96_combout\ = ( !\unidade_controle|RY[2]~0_combout\ & ( (!\unidade_controle|Equal8~0_combout\ & (((\rom|content~8_combout\)) # (\register_bank|registrador~14_q\))) # (\unidade_controle|Equal8~0_combout\ & 
-- (((\rom|content~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001111111011100000111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~14_q\,
	datab => \rom|ALT_INV_content~8_combout\,
	datac => \unidade_controle|ALT_INV_Equal8~0_combout\,
	datad => \rom|ALT_INV_content~5_combout\,
	dataf => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	combout => \register_bank|registrador~96_combout\);

-- Location: LABCELL_X40_Y2_N39
\ula|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|Add0~5_sumout\ = SUM(( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~94_combout\))) ) + ( \register_bank|registrador~76_combout\ ) + ( \ula|Add0~14\ ))
-- \ula|Add0~6\ = CARRY(( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~94_combout\))) ) + ( \register_bank|registrador~76_combout\ ) + ( \ula|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001000100011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|ALT_INV_Equal6~0_combout\,
	datab => \ula|ALT_INV_outp[0]~9_combout\,
	datac => \register_bank|ALT_INV_registrador~76_combout\,
	datad => \register_bank|ALT_INV_registrador~94_combout\,
	cin => \ula|Add0~14\,
	sumout => \ula|Add0~5_sumout\,
	cout => \ula|Add0~6\);

-- Location: LABCELL_X39_Y1_N51
\register_bank|registrador~15feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~15feeder_combout\ = ( \ula|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ula|ALT_INV_Add0~5_sumout\,
	combout => \register_bank|registrador~15feeder_combout\);

-- Location: LABCELL_X39_Y2_N57
\ula|outp[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|outp[3]~3_combout\ = ( \register_bank|registrador~76_combout\ & ( \register_bank|registrador~87_combout\ & ( (!\rom|content~10_combout\ $ (\rom|content~6_combout\)) # (\rom|content~11_combout\) ) ) ) # ( !\register_bank|registrador~76_combout\ & ( 
-- \register_bank|registrador~87_combout\ & ( (\rom|content~10_combout\ & (!\rom|content~6_combout\ & !\rom|content~11_combout\)) ) ) ) # ( \register_bank|registrador~76_combout\ & ( !\register_bank|registrador~87_combout\ & ( ((!\rom|content~10_combout\ & 
-- ((!\rom|content~6_combout\) # (!\unidade_controle|RY[2]~0_combout\))) # (\rom|content~10_combout\ & (\rom|content~6_combout\))) # (\rom|content~11_combout\) ) ) ) # ( !\register_bank|registrador~76_combout\ & ( !\register_bank|registrador~87_combout\ & ( 
-- (!\rom|content~10_combout\ & (\rom|content~6_combout\ & (\rom|content~11_combout\ & !\unidade_controle|RY[2]~0_combout\))) # (\rom|content~10_combout\ & (!\rom|content~6_combout\ & (!\rom|content~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000000101111111001111101000000010000001001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~10_combout\,
	datab => \rom|ALT_INV_content~6_combout\,
	datac => \rom|ALT_INV_content~11_combout\,
	datad => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	datae => \register_bank|ALT_INV_registrador~76_combout\,
	dataf => \register_bank|ALT_INV_registrador~87_combout\,
	combout => \ula|outp[3]~3_combout\);

-- Location: FF_X39_Y1_N53
\register_bank|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~15feeder_combout\,
	asdata => \ula|outp[3]~3_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~15_q\);

-- Location: LABCELL_X40_Y2_N12
\register_bank|registrador~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~87_combout\ = ( \rom|content~8_combout\ & ( (\unidade_controle|Equal8~0_combout\ & !\rom|content~5_combout\) ) ) # ( !\rom|content~8_combout\ & ( (!\unidade_controle|Equal8~0_combout\ & (!\register_bank|registrador~15_q\)) # 
-- (\unidade_controle|Equal8~0_combout\ & ((!\rom|content~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010111000101110001011100000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~15_q\,
	datab => \unidade_controle|ALT_INV_Equal8~0_combout\,
	datac => \rom|ALT_INV_content~5_combout\,
	dataf => \rom|ALT_INV_content~8_combout\,
	combout => \register_bank|registrador~87_combout\);

-- Location: LABCELL_X40_Y2_N0
\register_bank|registrador~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~94_combout\ = ( !\register_bank|registrador~87_combout\ & ( !\unidade_controle|RY[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	dataf => \register_bank|ALT_INV_registrador~87_combout\,
	combout => \register_bank|registrador~94_combout\);

-- Location: LABCELL_X40_Y2_N42
\ula|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|Add0~29_sumout\ = SUM(( \register_bank|registrador~83_combout\ ) + ( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~100_combout\))) ) + ( \ula|Add0~6\ ))
-- \ula|Add0~30\ = CARRY(( \register_bank|registrador~83_combout\ ) + ( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~100_combout\))) ) + ( \ula|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|ALT_INV_Equal6~0_combout\,
	datab => \ula|ALT_INV_outp[0]~9_combout\,
	datac => \register_bank|ALT_INV_registrador~100_combout\,
	datad => \register_bank|ALT_INV_registrador~83_combout\,
	cin => \ula|Add0~6\,
	sumout => \ula|Add0~29_sumout\,
	cout => \ula|Add0~30\);

-- Location: LABCELL_X39_Y1_N18
\register_bank|registrador~16feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~16feeder_combout\ = ( \ula|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ula|ALT_INV_Add0~29_sumout\,
	combout => \register_bank|registrador~16feeder_combout\);

-- Location: LABCELL_X39_Y2_N54
\ula|outp[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|outp[4]~2_combout\ = ( \register_bank|registrador~83_combout\ & ( \register_bank|registrador~86_combout\ & ( (!\rom|content~10_combout\ $ (\rom|content~6_combout\)) # (\rom|content~11_combout\) ) ) ) # ( !\register_bank|registrador~83_combout\ & ( 
-- \register_bank|registrador~86_combout\ & ( (\rom|content~10_combout\ & (!\rom|content~6_combout\ & !\rom|content~11_combout\)) ) ) ) # ( \register_bank|registrador~83_combout\ & ( !\register_bank|registrador~86_combout\ & ( ((!\rom|content~10_combout\ & 
-- ((!\rom|content~6_combout\) # (!\unidade_controle|RY[2]~0_combout\))) # (\rom|content~10_combout\ & (\rom|content~6_combout\))) # (\rom|content~11_combout\) ) ) ) # ( !\register_bank|registrador~83_combout\ & ( !\register_bank|registrador~86_combout\ & ( 
-- (!\rom|content~10_combout\ & (\rom|content~6_combout\ & (!\unidade_controle|RY[2]~0_combout\ & \rom|content~11_combout\))) # (\rom|content~10_combout\ & (!\rom|content~6_combout\ & ((!\rom|content~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000100000101110011111111101000100000000001001100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~10_combout\,
	datab => \rom|ALT_INV_content~6_combout\,
	datac => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	datad => \rom|ALT_INV_content~11_combout\,
	datae => \register_bank|ALT_INV_registrador~83_combout\,
	dataf => \register_bank|ALT_INV_registrador~86_combout\,
	combout => \ula|outp[4]~2_combout\);

-- Location: FF_X39_Y1_N20
\register_bank|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~16feeder_combout\,
	asdata => \ula|outp[4]~2_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~16_q\);

-- Location: LABCELL_X40_Y2_N6
\register_bank|registrador~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~86_combout\ = ( \rom|content~5_combout\ & ( (!\unidade_controle|Equal8~0_combout\ & (!\register_bank|registrador~16_q\ & !\rom|content~8_combout\)) ) ) # ( !\rom|content~5_combout\ & ( ((!\register_bank|registrador~16_q\ & 
-- !\rom|content~8_combout\)) # (\unidade_controle|Equal8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111100110011001111000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \unidade_controle|ALT_INV_Equal8~0_combout\,
	datac => \register_bank|ALT_INV_registrador~16_q\,
	datad => \rom|ALT_INV_content~8_combout\,
	dataf => \rom|ALT_INV_content~5_combout\,
	combout => \register_bank|registrador~86_combout\);

-- Location: LABCELL_X40_Y2_N54
\register_bank|registrador~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~100_combout\ = ( !\register_bank|registrador~86_combout\ & ( !\unidade_controle|RY[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	dataf => \register_bank|ALT_INV_registrador~86_combout\,
	combout => \register_bank|registrador~100_combout\);

-- Location: LABCELL_X40_Y2_N45
\ula|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|Add0~25_sumout\ = SUM(( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~99_combout\))) ) + ( \register_bank|registrador~82_combout\ ) + ( \ula|Add0~30\ ))
-- \ula|Add0~26\ = CARRY(( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~99_combout\))) ) + ( \register_bank|registrador~82_combout\ ) + ( \ula|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001000100011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|ALT_INV_Equal6~0_combout\,
	datab => \ula|ALT_INV_outp[0]~9_combout\,
	datac => \register_bank|ALT_INV_registrador~82_combout\,
	datad => \register_bank|ALT_INV_registrador~99_combout\,
	cin => \ula|Add0~30\,
	sumout => \ula|Add0~25_sumout\,
	cout => \ula|Add0~26\);

-- Location: LABCELL_X39_Y2_N24
\register_bank|registrador~17feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~17feeder_combout\ = ( \ula|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ula|ALT_INV_Add0~25_sumout\,
	combout => \register_bank|registrador~17feeder_combout\);

-- Location: LABCELL_X39_Y2_N45
\ula|outp[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|outp[5]~1_combout\ = ( \rom|content~11_combout\ & ( \register_bank|registrador~85_combout\ & ( \register_bank|registrador~82_combout\ ) ) ) # ( !\rom|content~11_combout\ & ( \register_bank|registrador~85_combout\ & ( (!\rom|content~10_combout\ & 
-- (!\rom|content~6_combout\ & \register_bank|registrador~82_combout\)) # (\rom|content~10_combout\ & (!\rom|content~6_combout\ $ (\register_bank|registrador~82_combout\))) ) ) ) # ( \rom|content~11_combout\ & ( !\register_bank|registrador~85_combout\ & ( 
-- ((!\rom|content~10_combout\ & (!\unidade_controle|RY[2]~0_combout\ & \rom|content~6_combout\))) # (\register_bank|registrador~82_combout\) ) ) ) # ( !\rom|content~11_combout\ & ( !\register_bank|registrador~85_combout\ & ( (!\rom|content~10_combout\ & 
-- (\register_bank|registrador~82_combout\ & ((!\unidade_controle|RY[2]~0_combout\) # (!\rom|content~6_combout\)))) # (\rom|content~10_combout\ & ((!\rom|content~6_combout\ $ (\register_bank|registrador~82_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101101000010001111111101010000101001010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~10_combout\,
	datab => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	datac => \rom|ALT_INV_content~6_combout\,
	datad => \register_bank|ALT_INV_registrador~82_combout\,
	datae => \rom|ALT_INV_content~11_combout\,
	dataf => \register_bank|ALT_INV_registrador~85_combout\,
	combout => \ula|outp[5]~1_combout\);

-- Location: FF_X39_Y2_N25
\register_bank|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~17feeder_combout\,
	asdata => \ula|outp[5]~1_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~17_q\);

-- Location: MLABCELL_X42_Y2_N6
\register_bank|registrador~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~82_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( \register_bank|registrador~17_q\ ) ) # ( !\PC|DOUT[4]~DUPLICATE_q\ & ( \register_bank|registrador~17_q\ & ( (!\rom|content~0_combout\) # ((\rom|content~2_combout\ & !\PC|DOUT\(3))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rom|ALT_INV_content~2_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \rom|ALT_INV_content~0_combout\,
	datae => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \register_bank|ALT_INV_registrador~17_q\,
	combout => \register_bank|registrador~82_combout\);

-- Location: LABCELL_X40_Y2_N48
\ula|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|Add0~21_sumout\ = SUM(( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~98_combout\))) ) + ( \register_bank|registrador~81_combout\ ) + ( \ula|Add0~26\ ))
-- \ula|Add0~22\ = CARRY(( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~98_combout\))) ) + ( \register_bank|registrador~81_combout\ ) + ( \ula|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001000100011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|ALT_INV_Equal6~0_combout\,
	datab => \ula|ALT_INV_outp[0]~9_combout\,
	datac => \register_bank|ALT_INV_registrador~81_combout\,
	datad => \register_bank|ALT_INV_registrador~98_combout\,
	cin => \ula|Add0~26\,
	sumout => \ula|Add0~21_sumout\,
	cout => \ula|Add0~22\);

-- Location: LABCELL_X39_Y2_N12
\register_bank|registrador~18feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~18feeder_combout\ = \ula|Add0~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ula|ALT_INV_Add0~21_sumout\,
	combout => \register_bank|registrador~18feeder_combout\);

-- Location: LABCELL_X39_Y2_N6
\ula|outp[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|outp[6]~0_combout\ = ( \register_bank|registrador~81_combout\ & ( \register_bank|registrador~84_combout\ & ( (!\rom|content~10_combout\ $ (\rom|content~6_combout\)) # (\rom|content~11_combout\) ) ) ) # ( !\register_bank|registrador~81_combout\ & ( 
-- \register_bank|registrador~84_combout\ & ( (\rom|content~10_combout\ & (!\rom|content~6_combout\ & !\rom|content~11_combout\)) ) ) ) # ( \register_bank|registrador~81_combout\ & ( !\register_bank|registrador~84_combout\ & ( ((!\rom|content~10_combout\ & 
-- ((!\unidade_controle|RY[2]~0_combout\) # (!\rom|content~6_combout\))) # (\rom|content~10_combout\ & ((\rom|content~6_combout\)))) # (\rom|content~11_combout\) ) ) ) # ( !\register_bank|registrador~81_combout\ & ( !\register_bank|registrador~84_combout\ & 
-- ( (!\rom|content~10_combout\ & (!\unidade_controle|RY[2]~0_combout\ & (\rom|content~6_combout\ & \rom|content~11_combout\))) # (\rom|content~10_combout\ & (((!\rom|content~6_combout\ & !\rom|content~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001000101011011111111101010000000000001010010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~10_combout\,
	datab => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	datac => \rom|ALT_INV_content~6_combout\,
	datad => \rom|ALT_INV_content~11_combout\,
	datae => \register_bank|ALT_INV_registrador~81_combout\,
	dataf => \register_bank|ALT_INV_registrador~84_combout\,
	combout => \ula|outp[6]~0_combout\);

-- Location: FF_X39_Y2_N14
\register_bank|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~18feeder_combout\,
	asdata => \ula|outp[6]~0_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~18_q\);

-- Location: LABCELL_X39_Y2_N39
\register_bank|registrador~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~81_combout\ = ( \rom|content~2_combout\ & ( (\register_bank|registrador~18_q\ & ((!\rom|content~0_combout\) # ((!\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT[4]~DUPLICATE_q\)))) ) ) # ( !\rom|content~2_combout\ & ( 
-- (\register_bank|registrador~18_q\ & ((!\rom|content~0_combout\) # (\PC|DOUT[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100110011001000110011001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~0_combout\,
	datab => \register_bank|ALT_INV_registrador~18_q\,
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \rom|ALT_INV_content~2_combout\,
	combout => \register_bank|registrador~81_combout\);

-- Location: LABCELL_X40_Y2_N51
\ula|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|Add0~1_sumout\ = SUM(( (!\ula|Equal6~0_combout\ & (!\ula|outp[0]~9_combout\)) # (\ula|Equal6~0_combout\ & ((\register_bank|registrador~93_combout\))) ) + ( \register_bank|registrador~80_combout\ ) + ( \ula|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001000100011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|ALT_INV_Equal6~0_combout\,
	datab => \ula|ALT_INV_outp[0]~9_combout\,
	datac => \register_bank|ALT_INV_registrador~80_combout\,
	datad => \register_bank|ALT_INV_registrador~93_combout\,
	cin => \ula|Add0~22\,
	sumout => \ula|Add0~1_sumout\);

-- Location: LABCELL_X40_Y3_N33
\register_bank|registrador~19feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~19feeder_combout\ = ( \ula|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ula|ALT_INV_Add0~1_sumout\,
	combout => \register_bank|registrador~19feeder_combout\);

-- Location: FF_X40_Y3_N35
\register_bank|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_bank|registrador~19feeder_combout\,
	asdata => \ula|outp[7]~8_combout\,
	sload => \ula|outp[0]~7_combout\,
	ena => \register_bank|registrador~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_bank|registrador~19_q\);

-- Location: LABCELL_X40_Y3_N42
\register_bank|registrador~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~80_combout\ = ( \rom|content~2_combout\ & ( (\register_bank|registrador~19_q\ & ((!\PC|DOUT[3]~DUPLICATE_q\) # ((!\rom|content~0_combout\) # (\PC|DOUT[4]~DUPLICATE_q\)))) ) ) # ( !\rom|content~2_combout\ & ( 
-- (\register_bank|registrador~19_q\ & ((!\rom|content~0_combout\) # (\PC|DOUT[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011000011110000001100001111000010110000111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \register_bank|ALT_INV_registrador~19_q\,
	datad => \rom|ALT_INV_content~0_combout\,
	dataf => \rom|ALT_INV_content~2_combout\,
	combout => \register_bank|registrador~80_combout\);

-- Location: LABCELL_X39_Y2_N30
\unidade_controle|mux_jmp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle|mux_jmp~3_combout\ = ( \rom|content~11_combout\ & ( \rom|content~6_combout\ & ( ((!\unidade_controle|RY[2]~0_combout\ & (!\register_bank|registrador~89_combout\ & !\rom|content~10_combout\))) # (\register_bank|registrador~80_combout\) ) 
-- ) ) # ( \rom|content~11_combout\ & ( !\rom|content~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~80_combout\,
	datab => \unidade_controle|ALT_INV_RY[2]~0_combout\,
	datac => \register_bank|ALT_INV_registrador~89_combout\,
	datad => \rom|ALT_INV_content~10_combout\,
	datae => \rom|ALT_INV_content~11_combout\,
	dataf => \rom|ALT_INV_content~6_combout\,
	combout => \unidade_controle|mux_jmp~3_combout\);

-- Location: LABCELL_X40_Y3_N48
\unidade_controle|mux_jmp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle|mux_jmp~2_combout\ = ( !\ula|outp[0]~7_combout\ & ( \rom|content~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rom|ALT_INV_content~11_combout\,
	dataf => \ula|ALT_INV_outp[0]~7_combout\,
	combout => \unidade_controle|mux_jmp~2_combout\);

-- Location: MLABCELL_X42_Y2_N30
\unidade_controle|mux_jmp~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle|mux_jmp~5_combout\ = ( \PC|DOUT\(3) & ( (\rom|content~0_combout\ & !\PC|DOUT[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rom|ALT_INV_content~0_combout\,
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(3),
	combout => \unidade_controle|mux_jmp~5_combout\);

-- Location: LABCELL_X39_Y2_N3
\unidade_controle|mux_jmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle|mux_jmp~0_combout\ = ( !\ula|outp[5]~1_combout\ & ( !\ula|outp[6]~0_combout\ & ( (\unidade_controle|mux_jmp~5_combout\ & (!\ula|outp[3]~3_combout\ & (!\ula|outp[2]~4_combout\ & !\ula|outp[4]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle|ALT_INV_mux_jmp~5_combout\,
	datab => \ula|ALT_INV_outp[3]~3_combout\,
	datac => \ula|ALT_INV_outp[2]~4_combout\,
	datad => \ula|ALT_INV_outp[4]~2_combout\,
	datae => \ula|ALT_INV_outp[5]~1_combout\,
	dataf => \ula|ALT_INV_outp[6]~0_combout\,
	combout => \unidade_controle|mux_jmp~0_combout\);

-- Location: LABCELL_X40_Y3_N9
\unidade_controle|mux_jmp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle|mux_jmp~1_combout\ = ( !\ula|outp[1]~5_combout\ & ( !\ula|outp[0]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ula|ALT_INV_outp[0]~6_combout\,
	dataf => \ula|ALT_INV_outp[1]~5_combout\,
	combout => \unidade_controle|mux_jmp~1_combout\);

-- Location: LABCELL_X40_Y2_N24
\unidade_controle|mux_jmp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade_controle|mux_jmp~4_combout\ = ( \unidade_controle|mux_jmp~1_combout\ & ( \ula|Add0~1_sumout\ & ( (\rom|content~10_combout\ & (((\unidade_controle|mux_jmp~0_combout\) # (\unidade_controle|mux_jmp~2_combout\)) # 
-- (\unidade_controle|mux_jmp~3_combout\))) ) ) ) # ( !\unidade_controle|mux_jmp~1_combout\ & ( \ula|Add0~1_sumout\ & ( (\rom|content~10_combout\ & ((\unidade_controle|mux_jmp~2_combout\) # (\unidade_controle|mux_jmp~3_combout\))) ) ) ) # ( 
-- \unidade_controle|mux_jmp~1_combout\ & ( !\ula|Add0~1_sumout\ & ( (\rom|content~10_combout\ & ((\unidade_controle|mux_jmp~0_combout\) # (\unidade_controle|mux_jmp~3_combout\))) ) ) ) # ( !\unidade_controle|mux_jmp~1_combout\ & ( !\ula|Add0~1_sumout\ & ( 
-- (\unidade_controle|mux_jmp~3_combout\ & \rom|content~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010011001100010011000100110001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_controle|ALT_INV_mux_jmp~3_combout\,
	datab => \rom|ALT_INV_content~10_combout\,
	datac => \unidade_controle|ALT_INV_mux_jmp~2_combout\,
	datad => \unidade_controle|ALT_INV_mux_jmp~0_combout\,
	datae => \unidade_controle|ALT_INV_mux_jmp~1_combout\,
	dataf => \ula|ALT_INV_Add0~1_sumout\,
	combout => \unidade_controle|mux_jmp~4_combout\);

-- Location: FF_X41_Y2_N28
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[3]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: MLABCELL_X42_Y2_N18
\rom|content~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~1_combout\ = ( \rom|content~0_combout\ & ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[4]~DUPLICATE_q\ & (\PC|DOUT\(0) & (!\PC|DOUT\(3) & !\PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \rom|ALT_INV_content~0_combout\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \rom|content~1_combout\);

-- Location: FF_X41_Y2_N41
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[1]~feeder_combout\,
	asdata => \rom|content~1_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X41_Y2_N51
\rom|content~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~4_combout\ = ( \PC|DOUT\(1) & ( !\PC|DOUT[3]~DUPLICATE_q\ ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT[3]~DUPLICATE_q\ & ((\PC|DOUT\(0)) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \rom|content~4_combout\);

-- Location: LABCELL_X41_Y2_N48
\rom|content~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~8_combout\ = ( \rom|content~0_combout\ & ( (!\PC|DOUT\(4) & \rom|content~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \rom|ALT_INV_content~4_combout\,
	dataf => \rom|ALT_INV_content~0_combout\,
	combout => \rom|content~8_combout\);

-- Location: FF_X41_Y2_N14
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[4]~feeder_combout\,
	asdata => \rom|content~8_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X41_Y2_N12
\PC|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[4]~feeder_combout\ = ( \inc_PC|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inc_PC|ALT_INV_Add0~9_sumout\,
	combout => \PC|DOUT[4]~feeder_combout\);

-- Location: FF_X41_Y2_N13
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[4]~feeder_combout\,
	asdata => \rom|content~8_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y2_N0
\rom|content~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~9_combout\ = ( \PC|DOUT\(0) & ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[4]~DUPLICATE_q\ & (\rom|content~0_combout\ & ((\PC|DOUT\(2)) # (\PC|DOUT\(3))))) ) ) ) # ( !\PC|DOUT\(0) & ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[4]~DUPLICATE_q\ & 
-- \rom|content~0_combout\) ) ) ) # ( \PC|DOUT\(0) & ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[4]~DUPLICATE_q\ & \rom|content~0_combout\) ) ) ) # ( !\PC|DOUT\(0) & ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (\rom|content~0_combout\ & (!\PC|DOUT[4]~DUPLICATE_q\ $ 
-- (((!\PC|DOUT\(3) & !\PC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100010001000100010001000100010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \rom|ALT_INV_content~0_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \rom|content~9_combout\);

-- Location: FF_X41_Y2_N23
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[0]~feeder_combout\,
	asdata => \rom|content~9_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: MLABCELL_X37_Y2_N3
\inc_PC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc_PC|Add0~5_sumout\ = SUM(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \inc_PC|Add0~2\ ))
-- \inc_PC|Add0~6\ = CARRY(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \inc_PC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \inc_PC|Add0~2\,
	sumout => \inc_PC|Add0~5_sumout\,
	cout => \inc_PC|Add0~6\);

-- Location: LABCELL_X41_Y2_N39
\PC|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[1]~feeder_combout\ = ( \inc_PC|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inc_PC|ALT_INV_Add0~5_sumout\,
	combout => \PC|DOUT[1]~feeder_combout\);

-- Location: FF_X41_Y2_N40
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[1]~feeder_combout\,
	asdata => \rom|content~1_combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N6
\inc_PC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc_PC|Add0~37_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \inc_PC|Add0~6\ ))
-- \inc_PC|Add0~38\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \inc_PC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \inc_PC|Add0~6\,
	sumout => \inc_PC|Add0~37_sumout\,
	cout => \inc_PC|Add0~38\);

-- Location: LABCELL_X41_Y2_N57
\PC|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~feeder_combout\ = ( \inc_PC|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inc_PC|ALT_INV_Add0~37_sumout\,
	combout => \PC|DOUT[2]~feeder_combout\);

-- Location: FF_X41_Y2_N59
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[2]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X41_Y2_N27
\PC|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[3]~feeder_combout\ = ( \inc_PC|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inc_PC|ALT_INV_Add0~33_sumout\,
	combout => \PC|DOUT[3]~feeder_combout\);

-- Location: FF_X41_Y2_N29
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \PC|DOUT[3]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \unidade_controle|mux_jmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y2_N18
\register_bank|registrador~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_bank|registrador~76_combout\ = ( \rom|content~2_combout\ & ( (\register_bank|registrador~15_q\ & ((!\PC|DOUT[3]~DUPLICATE_q\) # ((!\rom|content~0_combout\) # (\PC|DOUT[4]~DUPLICATE_q\)))) ) ) # ( !\rom|content~2_combout\ & ( 
-- (\register_bank|registrador~15_q\ & ((!\rom|content~0_combout\) # (\PC|DOUT[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011000011110000001100001111000010110000111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \register_bank|ALT_INV_registrador~15_q\,
	datad => \rom|ALT_INV_content~0_combout\,
	dataf => \rom|ALT_INV_content~2_combout\,
	combout => \register_bank|registrador~76_combout\);

-- Location: LABCELL_X39_Y3_N0
\conversorhex0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex0|rascSaida7seg[0]~0_combout\ = ( !\register_bank|registrador~78_combout\ & ( \register_bank|registrador~79_combout\ & ( (\register_bank|registrador~76_combout\ & \register_bank|registrador~77_combout\) ) ) ) # ( 
-- \register_bank|registrador~78_combout\ & ( !\register_bank|registrador~79_combout\ & ( !\register_bank|registrador~76_combout\ $ (\register_bank|registrador~77_combout\) ) ) ) # ( !\register_bank|registrador~78_combout\ & ( 
-- !\register_bank|registrador~79_combout\ & ( (!\register_bank|registrador~76_combout\ & \register_bank|registrador~77_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000111100001100000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_bank|ALT_INV_registrador~76_combout\,
	datac => \register_bank|ALT_INV_registrador~77_combout\,
	datae => \register_bank|ALT_INV_registrador~78_combout\,
	dataf => \register_bank|ALT_INV_registrador~79_combout\,
	combout => \conversorhex0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y2_N51
\rom|content~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom|content~7_combout\ = ( !\PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT\(2) & ( (\PC|DOUT[1]~DUPLICATE_q\ & (\rom|content~0_combout\ & !\PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \rom|ALT_INV_content~0_combout\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \rom|content~7_combout\);

-- Location: MLABCELL_X42_Y2_N42
\decoder|HEX0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|HEX0~combout\ = ( \rom|content~9_combout\ & ( !\rom|content~7_combout\ & ( (\rom|content~8_combout\ & \unidade_controle|Equal8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rom|ALT_INV_content~8_combout\,
	datad => \unidade_controle|ALT_INV_Equal8~0_combout\,
	datae => \rom|ALT_INV_content~9_combout\,
	dataf => \rom|ALT_INV_content~7_combout\,
	combout => \decoder|HEX0~combout\);

-- Location: FF_X37_Y2_N34
\register_hex0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[0]~0_combout\,
	sload => VCC,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex0|DOUT\(0));

-- Location: MLABCELL_X37_Y3_N54
\conversorhex0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex0|rascSaida7seg[1]~1_combout\ = ( \register_bank|registrador~76_combout\ & ( (!\register_bank|registrador~77_combout\ & ((\register_bank|registrador~78_combout\))) # (\register_bank|registrador~77_combout\ & 
-- (\register_bank|registrador~79_combout\)) ) ) # ( !\register_bank|registrador~76_combout\ & ( (\register_bank|registrador~78_combout\ & (!\register_bank|registrador~77_combout\ $ (!\register_bank|registrador~79_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000110110001101100000110000001100001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~77_combout\,
	datab => \register_bank|ALT_INV_registrador~79_combout\,
	datac => \register_bank|ALT_INV_registrador~78_combout\,
	datae => \register_bank|ALT_INV_registrador~76_combout\,
	combout => \conversorhex0|rascSaida7seg[1]~1_combout\);

-- Location: FF_X37_Y3_N49
\register_hex0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[1]~1_combout\,
	sload => VCC,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex0|DOUT\(1));

-- Location: MLABCELL_X37_Y3_N3
\conversorhex0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex0|rascSaida7seg[2]~2_combout\ = ( \register_bank|registrador~76_combout\ & ( \register_bank|registrador~78_combout\ & ( (!\register_bank|registrador~77_combout\) # (\register_bank|registrador~79_combout\) ) ) ) # ( 
-- !\register_bank|registrador~76_combout\ & ( !\register_bank|registrador~78_combout\ & ( (!\register_bank|registrador~77_combout\ & \register_bank|registrador~79_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000000000000000000001010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~77_combout\,
	datad => \register_bank|ALT_INV_registrador~79_combout\,
	datae => \register_bank|ALT_INV_registrador~76_combout\,
	dataf => \register_bank|ALT_INV_registrador~78_combout\,
	combout => \conversorhex0|rascSaida7seg[2]~2_combout\);

-- Location: FF_X37_Y2_N58
\register_hex0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[2]~2_combout\,
	sload => VCC,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex0|DOUT\(2));

-- Location: MLABCELL_X37_Y2_N33
\conversorhex0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex0|rascSaida7seg[3]~3_combout\ = ( \register_bank|registrador~77_combout\ & ( (!\register_bank|registrador~78_combout\ & (!\register_bank|registrador~76_combout\ & !\register_bank|registrador~79_combout\)) # 
-- (\register_bank|registrador~78_combout\ & ((\register_bank|registrador~79_combout\))) ) ) # ( !\register_bank|registrador~77_combout\ & ( (!\register_bank|registrador~76_combout\ & (\register_bank|registrador~78_combout\ & 
-- !\register_bank|registrador~79_combout\)) # (\register_bank|registrador~76_combout\ & (!\register_bank|registrador~78_combout\ & \register_bank|registrador~79_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~76_combout\,
	datab => \register_bank|ALT_INV_registrador~78_combout\,
	datac => \register_bank|ALT_INV_registrador~79_combout\,
	dataf => \register_bank|ALT_INV_registrador~77_combout\,
	combout => \conversorhex0|rascSaida7seg[3]~3_combout\);

-- Location: FF_X37_Y2_N31
\register_hex0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[3]~3_combout\,
	sload => VCC,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex0|DOUT\(3));

-- Location: MLABCELL_X37_Y2_N39
\conversorhex0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex0|rascSaida7seg[4]~4_combout\ = ( \register_bank|registrador~76_combout\ & ( \register_bank|registrador~77_combout\ & ( (!\register_bank|registrador~79_combout\ & !\register_bank|registrador~78_combout\) ) ) ) # ( 
-- !\register_bank|registrador~76_combout\ & ( \register_bank|registrador~77_combout\ ) ) # ( !\register_bank|registrador~76_combout\ & ( !\register_bank|registrador~77_combout\ & ( (!\register_bank|registrador~79_combout\ & 
-- \register_bank|registrador~78_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011111111111111111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_bank|ALT_INV_registrador~79_combout\,
	datac => \register_bank|ALT_INV_registrador~78_combout\,
	datae => \register_bank|ALT_INV_registrador~76_combout\,
	dataf => \register_bank|ALT_INV_registrador~77_combout\,
	combout => \conversorhex0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y2_N30
\register_hex0|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_hex0|DOUT[4]~feeder_combout\ = ( \conversorhex0|rascSaida7seg[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conversorhex0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \register_hex0|DOUT[4]~feeder_combout\);

-- Location: FF_X37_Y2_N32
\register_hex0|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_hex0|DOUT[4]~feeder_combout\,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex0|DOUT\(4));

-- Location: MLABCELL_X37_Y2_N57
\conversorhex0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex0|rascSaida7seg[5]~5_combout\ = ( \register_bank|registrador~76_combout\ & ( \register_bank|registrador~77_combout\ & ( (!\register_bank|registrador~79_combout\ & \register_bank|registrador~78_combout\) ) ) ) # ( 
-- !\register_bank|registrador~76_combout\ & ( \register_bank|registrador~77_combout\ & ( (!\register_bank|registrador~78_combout\) # (\register_bank|registrador~79_combout\) ) ) ) # ( !\register_bank|registrador~76_combout\ & ( 
-- !\register_bank|registrador~77_combout\ & ( (\register_bank|registrador~79_combout\ & !\register_bank|registrador~78_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011110011111100110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_bank|ALT_INV_registrador~79_combout\,
	datac => \register_bank|ALT_INV_registrador~78_combout\,
	datae => \register_bank|ALT_INV_registrador~76_combout\,
	dataf => \register_bank|ALT_INV_registrador~77_combout\,
	combout => \conversorhex0|rascSaida7seg[5]~5_combout\);

-- Location: FF_X37_Y2_N53
\register_hex0|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[5]~5_combout\,
	sload => VCC,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex0|DOUT\(5));

-- Location: MLABCELL_X37_Y2_N45
\conversorhex0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex0|rascSaida7seg[6]~6_combout\ = ( \register_bank|registrador~77_combout\ & ( (!\register_bank|registrador~76_combout\ & (!\register_bank|registrador~78_combout\ $ (\register_bank|registrador~79_combout\))) ) ) # ( 
-- !\register_bank|registrador~77_combout\ & ( (!\register_bank|registrador~79_combout\ & (!\register_bank|registrador~76_combout\ $ (\register_bank|registrador~78_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~76_combout\,
	datab => \register_bank|ALT_INV_registrador~78_combout\,
	datac => \register_bank|ALT_INV_registrador~79_combout\,
	dataf => \register_bank|ALT_INV_registrador~77_combout\,
	combout => \conversorhex0|rascSaida7seg[6]~6_combout\);

-- Location: FF_X37_Y2_N55
\register_hex0|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[6]~6_combout\,
	sload => VCC,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex0|DOUT\(6));

-- Location: MLABCELL_X37_Y3_N39
\conversorhex1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex1|rascSaida7seg[0]~0_combout\ = ( !\register_bank|registrador~82_combout\ & ( \register_bank|registrador~81_combout\ & ( !\register_bank|registrador~83_combout\ $ (\register_bank|registrador~80_combout\) ) ) ) # ( 
-- \register_bank|registrador~82_combout\ & ( !\register_bank|registrador~81_combout\ & ( (\register_bank|registrador~83_combout\ & \register_bank|registrador~80_combout\) ) ) ) # ( !\register_bank|registrador~82_combout\ & ( 
-- !\register_bank|registrador~81_combout\ & ( (\register_bank|registrador~83_combout\ & !\register_bank|registrador~80_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000111111110000000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \register_bank|ALT_INV_registrador~83_combout\,
	datad => \register_bank|ALT_INV_registrador~80_combout\,
	datae => \register_bank|ALT_INV_registrador~82_combout\,
	dataf => \register_bank|ALT_INV_registrador~81_combout\,
	combout => \conversorhex1|rascSaida7seg[0]~0_combout\);

-- Location: FF_X37_Y2_N50
\register_hex1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[0]~0_combout\,
	sload => VCC,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex1|DOUT\(0));

-- Location: LABCELL_X35_Y2_N27
\conversorhex1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex1|rascSaida7seg[1]~1_combout\ = ( \register_bank|registrador~81_combout\ & ( \register_bank|registrador~83_combout\ & ( !\register_bank|registrador~82_combout\ $ (\register_bank|registrador~80_combout\) ) ) ) # ( 
-- !\register_bank|registrador~81_combout\ & ( \register_bank|registrador~83_combout\ & ( (\register_bank|registrador~82_combout\ & \register_bank|registrador~80_combout\) ) ) ) # ( \register_bank|registrador~81_combout\ & ( 
-- !\register_bank|registrador~83_combout\ & ( (\register_bank|registrador~80_combout\) # (\register_bank|registrador~82_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~82_combout\,
	datad => \register_bank|ALT_INV_registrador~80_combout\,
	datae => \register_bank|ALT_INV_registrador~81_combout\,
	dataf => \register_bank|ALT_INV_registrador~83_combout\,
	combout => \conversorhex1|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X37_Y2_N48
\register_hex1|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_hex1|DOUT[1]~feeder_combout\ = ( \conversorhex1|rascSaida7seg[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conversorhex1|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \register_hex1|DOUT[1]~feeder_combout\);

-- Location: FF_X37_Y2_N49
\register_hex1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_hex1|DOUT[1]~feeder_combout\,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex1|DOUT\(1));

-- Location: MLABCELL_X37_Y3_N12
\conversorhex1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex1|rascSaida7seg[2]~2_combout\ = ( \register_bank|registrador~82_combout\ & ( \register_bank|registrador~81_combout\ & ( \register_bank|registrador~80_combout\ ) ) ) # ( !\register_bank|registrador~82_combout\ & ( 
-- \register_bank|registrador~81_combout\ & ( (!\register_bank|registrador~83_combout\ & \register_bank|registrador~80_combout\) ) ) ) # ( \register_bank|registrador~82_combout\ & ( !\register_bank|registrador~81_combout\ & ( 
-- (!\register_bank|registrador~83_combout\ & !\register_bank|registrador~80_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000001100000011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_bank|ALT_INV_registrador~83_combout\,
	datac => \register_bank|ALT_INV_registrador~80_combout\,
	datae => \register_bank|ALT_INV_registrador~82_combout\,
	dataf => \register_bank|ALT_INV_registrador~81_combout\,
	combout => \conversorhex1|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X37_Y3_N45
\register_hex1|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_hex1|DOUT[2]~feeder_combout\ = ( \conversorhex1|rascSaida7seg[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conversorhex1|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \register_hex1|DOUT[2]~feeder_combout\);

-- Location: FF_X37_Y3_N46
\register_hex1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_hex1|DOUT[2]~feeder_combout\,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex1|DOUT\(2));

-- Location: LABCELL_X35_Y2_N42
\conversorhex1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex1|rascSaida7seg[3]~3_combout\ = ( \register_bank|registrador~83_combout\ & ( (!\register_bank|registrador~82_combout\ & (!\register_bank|registrador~80_combout\ & !\register_bank|registrador~81_combout\)) # 
-- (\register_bank|registrador~82_combout\ & ((\register_bank|registrador~81_combout\))) ) ) # ( !\register_bank|registrador~83_combout\ & ( (!\register_bank|registrador~80_combout\ & (!\register_bank|registrador~82_combout\ & 
-- \register_bank|registrador~81_combout\)) # (\register_bank|registrador~80_combout\ & (\register_bank|registrador~82_combout\ & !\register_bank|registrador~81_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~80_combout\,
	datac => \register_bank|ALT_INV_registrador~82_combout\,
	datad => \register_bank|ALT_INV_registrador~81_combout\,
	dataf => \register_bank|ALT_INV_registrador~83_combout\,
	combout => \conversorhex1|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y2_N51
\register_hex1|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_hex1|DOUT[3]~feeder_combout\ = ( \conversorhex1|rascSaida7seg[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conversorhex1|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \register_hex1|DOUT[3]~feeder_combout\);

-- Location: FF_X37_Y2_N52
\register_hex1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_hex1|DOUT[3]~feeder_combout\,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex1|DOUT\(3));

-- Location: LABCELL_X35_Y2_N0
\conversorhex1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex1|rascSaida7seg[4]~4_combout\ = ( \register_bank|registrador~83_combout\ & ( (!\register_bank|registrador~80_combout\) # ((!\register_bank|registrador~81_combout\ & !\register_bank|registrador~82_combout\)) ) ) # ( 
-- !\register_bank|registrador~83_combout\ & ( (!\register_bank|registrador~80_combout\ & (\register_bank|registrador~81_combout\ & !\register_bank|registrador~82_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~80_combout\,
	datab => \register_bank|ALT_INV_registrador~81_combout\,
	datac => \register_bank|ALT_INV_registrador~82_combout\,
	dataf => \register_bank|ALT_INV_registrador~83_combout\,
	combout => \conversorhex1|rascSaida7seg[4]~4_combout\);

-- Location: FF_X37_Y2_N40
\register_hex1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[4]~4_combout\,
	sload => VCC,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex1|DOUT\(4));

-- Location: LABCELL_X35_Y2_N18
\conversorhex1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex1|rascSaida7seg[5]~5_combout\ = ( \register_bank|registrador~83_combout\ & ( !\register_bank|registrador~80_combout\ $ (((\register_bank|registrador~81_combout\ & !\register_bank|registrador~82_combout\))) ) ) # ( 
-- !\register_bank|registrador~83_combout\ & ( (!\register_bank|registrador~80_combout\ & (!\register_bank|registrador~81_combout\ & \register_bank|registrador~82_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~80_combout\,
	datab => \register_bank|ALT_INV_registrador~81_combout\,
	datac => \register_bank|ALT_INV_registrador~82_combout\,
	dataf => \register_bank|ALT_INV_registrador~83_combout\,
	combout => \conversorhex1|rascSaida7seg[5]~5_combout\);

-- Location: FF_X37_Y2_N37
\register_hex1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[5]~5_combout\,
	sload => VCC,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex1|DOUT\(5));

-- Location: LABCELL_X35_Y2_N36
\conversorhex1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorhex1|rascSaida7seg[6]~6_combout\ = ( \register_bank|registrador~83_combout\ & ( (!\register_bank|registrador~80_combout\ & (!\register_bank|registrador~81_combout\ $ (\register_bank|registrador~82_combout\))) ) ) # ( 
-- !\register_bank|registrador~83_combout\ & ( (!\register_bank|registrador~82_combout\ & (!\register_bank|registrador~80_combout\ $ (\register_bank|registrador~81_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_bank|ALT_INV_registrador~80_combout\,
	datab => \register_bank|ALT_INV_registrador~81_combout\,
	datac => \register_bank|ALT_INV_registrador~82_combout\,
	dataf => \register_bank|ALT_INV_registrador~83_combout\,
	combout => \conversorhex1|rascSaida7seg[6]~6_combout\);

-- Location: FF_X39_Y2_N34
\register_hex1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[6]~6_combout\,
	sload => VCC,
	ena => \decoder|HEX0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex1|DOUT\(6));

-- Location: MLABCELL_X42_Y2_N39
\decoder|HEX2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|HEX2~combout\ = ( \unidade_controle|Equal8~0_combout\ & ( (\rom|content~7_combout\ & (!\PC|DOUT\(0) & (\rom|content~8_combout\ & \rom|content~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ALT_INV_content~7_combout\,
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \rom|ALT_INV_content~8_combout\,
	datad => \rom|ALT_INV_content~9_combout\,
	dataf => \unidade_controle|ALT_INV_Equal8~0_combout\,
	combout => \decoder|HEX2~combout\);

-- Location: FF_X37_Y2_N20
\register_hex2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[0]~0_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex2|DOUT\(0));

-- Location: FF_X36_Y2_N4
\register_hex2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[1]~1_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex2|DOUT\(1));

-- Location: MLABCELL_X37_Y2_N42
\register_hex2|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_hex2|DOUT[2]~feeder_combout\ = ( \conversorhex0|rascSaida7seg[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conversorhex0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \register_hex2|DOUT[2]~feeder_combout\);

-- Location: FF_X37_Y2_N43
\register_hex2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_hex2|DOUT[2]~feeder_combout\,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex2|DOUT\(2));

-- Location: FF_X37_Y2_N7
\register_hex2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[3]~3_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex2|DOUT\(3));

-- Location: FF_X37_Y2_N28
\register_hex2|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[4]~4_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex2|DOUT\(4));

-- Location: FF_X37_Y2_N1
\register_hex2|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[5]~5_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex2|DOUT\(5));

-- Location: FF_X37_Y2_N5
\register_hex2|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[6]~6_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex2|DOUT\(6));

-- Location: FF_X37_Y2_N46
\register_hex3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[0]~0_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex3|DOUT\(0));

-- Location: FF_X37_Y2_N22
\register_hex3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[1]~1_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex3|DOUT\(1));

-- Location: FF_X37_Y3_N13
\register_hex3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \conversorhex1|rascSaida7seg[2]~2_combout\,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex3|DOUT\(2));

-- Location: FF_X37_Y2_N25
\register_hex3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[3]~3_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex3|DOUT\(3));

-- Location: FF_X37_Y2_N44
\register_hex3|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[4]~4_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex3|DOUT\(4));

-- Location: FF_X36_Y2_N11
\register_hex3|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[5]~5_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex3|DOUT\(5));

-- Location: FF_X37_Y2_N11
\register_hex3|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[6]~6_combout\,
	sload => VCC,
	ena => \decoder|HEX2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex3|DOUT\(6));

-- Location: LABCELL_X40_Y3_N6
\decoder|HEX4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|HEX4~combout\ = ( !\rom|content~9_combout\ & ( (\unidade_controle|Equal8~0_combout\ & (\rom|content~1_combout\ & \rom|content~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \unidade_controle|ALT_INV_Equal8~0_combout\,
	datac => \rom|ALT_INV_content~1_combout\,
	datad => \rom|ALT_INV_content~8_combout\,
	dataf => \rom|ALT_INV_content~9_combout\,
	combout => \decoder|HEX4~combout\);

-- Location: FF_X36_Y2_N13
\register_hex4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[0]~0_combout\,
	sload => VCC,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex4|DOUT\(0));

-- Location: FF_X37_Y3_N55
\register_hex4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \conversorhex0|rascSaida7seg[1]~1_combout\,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex4|DOUT\(1));

-- Location: FF_X37_Y3_N4
\register_hex4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \conversorhex0|rascSaida7seg[2]~2_combout\,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex4|DOUT\(2));

-- Location: FF_X40_Y2_N28
\register_hex4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[3]~3_combout\,
	sload => VCC,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex4|DOUT\(3));

-- Location: FF_X36_Y2_N19
\register_hex4|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex0|rascSaida7seg[4]~4_combout\,
	sload => VCC,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex4|DOUT\(4));

-- Location: LABCELL_X35_Y2_N48
\register_hex4|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_hex4|DOUT[5]~feeder_combout\ = ( \conversorhex0|rascSaida7seg[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conversorhex0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \register_hex4|DOUT[5]~feeder_combout\);

-- Location: FF_X35_Y2_N49
\register_hex4|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_hex4|DOUT[5]~feeder_combout\,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex4|DOUT\(5));

-- Location: LABCELL_X35_Y2_N57
\register_hex4|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_hex4|DOUT[6]~feeder_combout\ = ( \conversorhex0|rascSaida7seg[6]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conversorhex0|ALT_INV_rascSaida7seg[6]~6_combout\,
	combout => \register_hex4|DOUT[6]~feeder_combout\);

-- Location: FF_X35_Y2_N58
\register_hex4|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_hex4|DOUT[6]~feeder_combout\,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex4|DOUT\(6));

-- Location: FF_X37_Y3_N59
\register_hex5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[0]~0_combout\,
	sload => VCC,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex5|DOUT\(0));

-- Location: FF_X35_Y2_N28
\register_hex5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \conversorhex1|rascSaida7seg[1]~1_combout\,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex5|DOUT\(1));

-- Location: MLABCELL_X37_Y3_N30
\register_hex5|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_hex5|DOUT[2]~feeder_combout\ = ( \conversorhex1|rascSaida7seg[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \conversorhex1|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \register_hex5|DOUT[2]~feeder_combout\);

-- Location: FF_X37_Y3_N31
\register_hex5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \register_hex5|DOUT[2]~feeder_combout\,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex5|DOUT\(2));

-- Location: FF_X35_Y2_N43
\register_hex5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	d => \conversorhex1|rascSaida7seg[3]~3_combout\,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex5|DOUT\(3));

-- Location: FF_X36_Y2_N28
\register_hex5|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[4]~4_combout\,
	sload => VCC,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex5|DOUT\(4));

-- Location: FF_X36_Y2_N23
\register_hex5|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[5]~5_combout\,
	sload => VCC,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex5|DOUT\(5));

-- Location: FF_X36_Y2_N25
\register_hex5|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \miguezao|clk_2Hz_i~q\,
	asdata => \conversorhex1|rascSaida7seg[6]~6_combout\,
	sload => VCC,
	ena => \decoder|HEX4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_hex5|DOUT\(6));

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);
END structure;


