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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/18/2023 12:31:20"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Placa IS
    PORT (
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0)
	);
END Placa;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Placa IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco|mux2_1|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \bloco|flop|q~0_combout\ : std_logic;
SIGNAL \bloco|flop|q~q\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[0]~27\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[1]~29\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[2]~31\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[3]~33\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[4]~35\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[5]~37\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[6]~39\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[7]~41\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[8]~43\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[9]~45\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[10]~47\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[11]~49\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[12]~51\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[13]~53\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[14]~55\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \bloco|divider5|LessThan0~5_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[15]~57\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[16]~59\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[17]~61\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[18]~63\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[19]~65\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[20]~67\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[21]~69\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[22]~71\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[23]~73\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \bloco|divider5|LessThan0~4_combout\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[24]~75\ : std_logic;
SIGNAL \bloco|divider5|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \bloco|divider5|LessThan0~2_combout\ : std_logic;
SIGNAL \bloco|divider5|clkOut~3_combout\ : std_logic;
SIGNAL \bloco|divider5|LessThan0~3_combout\ : std_logic;
SIGNAL \bloco|divider5|clkOut~0_combout\ : std_logic;
SIGNAL \bloco|divider5|clkOut~1_combout\ : std_logic;
SIGNAL \bloco|divider5|clkOut~2_combout\ : std_logic;
SIGNAL \bloco|divider5|LessThan0~0_combout\ : std_logic;
SIGNAL \bloco|divider5|LessThan0~1_combout\ : std_logic;
SIGNAL \bloco|divider5|LessThan0~6_combout\ : std_logic;
SIGNAL \bloco|divider5|clkOut~5_combout\ : std_logic;
SIGNAL \bloco|divider5|clkOut~6_combout\ : std_logic;
SIGNAL \bloco|divider5|clkOut~4_combout\ : std_logic;
SIGNAL \bloco|divider5|clkOut~7_combout\ : std_logic;
SIGNAL \bloco|divider5|clkOut~8_combout\ : std_logic;
SIGNAL \bloco|divider5|clkOut~9_combout\ : std_logic;
SIGNAL \bloco|divider5|clkOut~q\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[0]~27_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[7]~42\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[8]~43_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[8]~44\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[9]~45_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[9]~46\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[10]~47_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[10]~48\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[11]~49_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[11]~50\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[12]~51_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[12]~52\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[13]~53_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[13]~54\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[14]~55_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[14]~56\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[15]~57_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[15]~58\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[16]~59_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[16]~60\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[17]~61_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[17]~62\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[18]~63_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[18]~64\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[19]~65_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[19]~66\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[20]~67_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[20]~68\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[21]~69_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[21]~70\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[22]~71_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[22]~72\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[23]~73_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[23]~74\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[24]~75_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[24]~76\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[25]~77_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[25]~78\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[26]~79_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~3_combout\ : std_logic;
SIGNAL \bloco|divider10|LessThan0~4_combout\ : std_logic;
SIGNAL \bloco|divider10|LessThan0~2_combout\ : std_logic;
SIGNAL \bloco|divider10|LessThan0~3_combout\ : std_logic;
SIGNAL \bloco|divider10|LessThan0~5_combout\ : std_logic;
SIGNAL \bloco|divider10|LessThan0~6_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[0]~28\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[1]~29_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[1]~30\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[2]~31_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[2]~32\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[3]~33_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[3]~34\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[4]~35_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[4]~36\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[5]~37_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[5]~38\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[6]~39_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[6]~40\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter[7]~41_combout\ : std_logic;
SIGNAL \bloco|divider10|LessThan0~0_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~0_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~1_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~2_combout\ : std_logic;
SIGNAL \bloco|divider10|LessThan0~1_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~5_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~6_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~4_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~7_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~8_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~9_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~feeder_combout\ : std_logic;
SIGNAL \bloco|divider10|clkOut~q\ : std_logic;
SIGNAL \bloco|mux2_1|output~combout\ : std_logic;
SIGNAL \bloco|mux2_1|output~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \bloco|shift8|S_Q~7_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q[7]~feeder_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q~6_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q[6]~feeder_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q~5_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q~4_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q[4]~feeder_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q~3_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q[3]~feeder_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q~2_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q[2]~feeder_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q~1_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q~0_combout\ : std_logic;
SIGNAL \bloco|shift8|S_Q[0]~feeder_combout\ : std_logic;
SIGNAL \bloco|divider10|s_divCounter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \bloco|divider5|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \bloco|shift8|S_Q\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\bloco|mux2_1|output~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bloco|mux2_1|output~combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco|shift8|S_Q\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco|shift8|S_Q\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco|shift8|S_Q\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco|shift8|S_Q\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco|shift8|S_Q\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco|shift8|S_Q\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco|shift8|S_Q\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco|shift8|S_Q\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X92_Y51_N26
\bloco|flop|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|flop|q~0_combout\ = !\bloco|flop|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco|flop|q~q\,
	combout => \bloco|flop|q~0_combout\);

-- Location: FF_X92_Y51_N27
\bloco|flop|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \bloco|flop|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|flop|q~q\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X60_Y49_N6
\bloco|divider5|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[0]~26_combout\ = \bloco|divider5|s_divCounter\(0) $ (VCC)
-- \bloco|divider5|s_divCounter[0]~27\ = CARRY(\bloco|divider5|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(0),
	datad => VCC,
	combout => \bloco|divider5|s_divCounter[0]~26_combout\,
	cout => \bloco|divider5|s_divCounter[0]~27\);

-- Location: FF_X60_Y49_N7
\bloco|divider5|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[0]~26_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(0));

-- Location: LCCOMB_X60_Y49_N8
\bloco|divider5|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[1]~28_combout\ = (\bloco|divider5|s_divCounter\(1) & (!\bloco|divider5|s_divCounter[0]~27\)) # (!\bloco|divider5|s_divCounter\(1) & ((\bloco|divider5|s_divCounter[0]~27\) # (GND)))
-- \bloco|divider5|s_divCounter[1]~29\ = CARRY((!\bloco|divider5|s_divCounter[0]~27\) # (!\bloco|divider5|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(1),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[0]~27\,
	combout => \bloco|divider5|s_divCounter[1]~28_combout\,
	cout => \bloco|divider5|s_divCounter[1]~29\);

-- Location: FF_X60_Y49_N9
\bloco|divider5|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[1]~28_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(1));

-- Location: LCCOMB_X60_Y49_N10
\bloco|divider5|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[2]~30_combout\ = (\bloco|divider5|s_divCounter\(2) & (\bloco|divider5|s_divCounter[1]~29\ $ (GND))) # (!\bloco|divider5|s_divCounter\(2) & (!\bloco|divider5|s_divCounter[1]~29\ & VCC))
-- \bloco|divider5|s_divCounter[2]~31\ = CARRY((\bloco|divider5|s_divCounter\(2) & !\bloco|divider5|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(2),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[1]~29\,
	combout => \bloco|divider5|s_divCounter[2]~30_combout\,
	cout => \bloco|divider5|s_divCounter[2]~31\);

-- Location: FF_X60_Y49_N11
\bloco|divider5|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[2]~30_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(2));

-- Location: LCCOMB_X60_Y49_N12
\bloco|divider5|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[3]~32_combout\ = (\bloco|divider5|s_divCounter\(3) & (!\bloco|divider5|s_divCounter[2]~31\)) # (!\bloco|divider5|s_divCounter\(3) & ((\bloco|divider5|s_divCounter[2]~31\) # (GND)))
-- \bloco|divider5|s_divCounter[3]~33\ = CARRY((!\bloco|divider5|s_divCounter[2]~31\) # (!\bloco|divider5|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(3),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[2]~31\,
	combout => \bloco|divider5|s_divCounter[3]~32_combout\,
	cout => \bloco|divider5|s_divCounter[3]~33\);

-- Location: FF_X60_Y49_N13
\bloco|divider5|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[3]~32_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(3));

-- Location: LCCOMB_X60_Y49_N14
\bloco|divider5|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[4]~34_combout\ = (\bloco|divider5|s_divCounter\(4) & (\bloco|divider5|s_divCounter[3]~33\ $ (GND))) # (!\bloco|divider5|s_divCounter\(4) & (!\bloco|divider5|s_divCounter[3]~33\ & VCC))
-- \bloco|divider5|s_divCounter[4]~35\ = CARRY((\bloco|divider5|s_divCounter\(4) & !\bloco|divider5|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(4),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[3]~33\,
	combout => \bloco|divider5|s_divCounter[4]~34_combout\,
	cout => \bloco|divider5|s_divCounter[4]~35\);

-- Location: FF_X60_Y49_N15
\bloco|divider5|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[4]~34_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(4));

-- Location: LCCOMB_X60_Y49_N16
\bloco|divider5|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[5]~36_combout\ = (\bloco|divider5|s_divCounter\(5) & (!\bloco|divider5|s_divCounter[4]~35\)) # (!\bloco|divider5|s_divCounter\(5) & ((\bloco|divider5|s_divCounter[4]~35\) # (GND)))
-- \bloco|divider5|s_divCounter[5]~37\ = CARRY((!\bloco|divider5|s_divCounter[4]~35\) # (!\bloco|divider5|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(5),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[4]~35\,
	combout => \bloco|divider5|s_divCounter[5]~36_combout\,
	cout => \bloco|divider5|s_divCounter[5]~37\);

-- Location: FF_X60_Y49_N17
\bloco|divider5|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[5]~36_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(5));

-- Location: LCCOMB_X60_Y49_N18
\bloco|divider5|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[6]~38_combout\ = (\bloco|divider5|s_divCounter\(6) & (\bloco|divider5|s_divCounter[5]~37\ $ (GND))) # (!\bloco|divider5|s_divCounter\(6) & (!\bloco|divider5|s_divCounter[5]~37\ & VCC))
-- \bloco|divider5|s_divCounter[6]~39\ = CARRY((\bloco|divider5|s_divCounter\(6) & !\bloco|divider5|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(6),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[5]~37\,
	combout => \bloco|divider5|s_divCounter[6]~38_combout\,
	cout => \bloco|divider5|s_divCounter[6]~39\);

-- Location: FF_X60_Y49_N19
\bloco|divider5|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[6]~38_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(6));

-- Location: LCCOMB_X60_Y49_N20
\bloco|divider5|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[7]~40_combout\ = (\bloco|divider5|s_divCounter\(7) & (!\bloco|divider5|s_divCounter[6]~39\)) # (!\bloco|divider5|s_divCounter\(7) & ((\bloco|divider5|s_divCounter[6]~39\) # (GND)))
-- \bloco|divider5|s_divCounter[7]~41\ = CARRY((!\bloco|divider5|s_divCounter[6]~39\) # (!\bloco|divider5|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(7),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[6]~39\,
	combout => \bloco|divider5|s_divCounter[7]~40_combout\,
	cout => \bloco|divider5|s_divCounter[7]~41\);

-- Location: FF_X60_Y49_N21
\bloco|divider5|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[7]~40_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(7));

-- Location: LCCOMB_X60_Y49_N22
\bloco|divider5|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[8]~42_combout\ = (\bloco|divider5|s_divCounter\(8) & (\bloco|divider5|s_divCounter[7]~41\ $ (GND))) # (!\bloco|divider5|s_divCounter\(8) & (!\bloco|divider5|s_divCounter[7]~41\ & VCC))
-- \bloco|divider5|s_divCounter[8]~43\ = CARRY((\bloco|divider5|s_divCounter\(8) & !\bloco|divider5|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(8),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[7]~41\,
	combout => \bloco|divider5|s_divCounter[8]~42_combout\,
	cout => \bloco|divider5|s_divCounter[8]~43\);

-- Location: FF_X60_Y49_N23
\bloco|divider5|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[8]~42_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(8));

-- Location: LCCOMB_X60_Y49_N24
\bloco|divider5|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[9]~44_combout\ = (\bloco|divider5|s_divCounter\(9) & (!\bloco|divider5|s_divCounter[8]~43\)) # (!\bloco|divider5|s_divCounter\(9) & ((\bloco|divider5|s_divCounter[8]~43\) # (GND)))
-- \bloco|divider5|s_divCounter[9]~45\ = CARRY((!\bloco|divider5|s_divCounter[8]~43\) # (!\bloco|divider5|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(9),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[8]~43\,
	combout => \bloco|divider5|s_divCounter[9]~44_combout\,
	cout => \bloco|divider5|s_divCounter[9]~45\);

-- Location: FF_X60_Y49_N25
\bloco|divider5|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[9]~44_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(9));

-- Location: LCCOMB_X60_Y49_N26
\bloco|divider5|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[10]~46_combout\ = (\bloco|divider5|s_divCounter\(10) & (\bloco|divider5|s_divCounter[9]~45\ $ (GND))) # (!\bloco|divider5|s_divCounter\(10) & (!\bloco|divider5|s_divCounter[9]~45\ & VCC))
-- \bloco|divider5|s_divCounter[10]~47\ = CARRY((\bloco|divider5|s_divCounter\(10) & !\bloco|divider5|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(10),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[9]~45\,
	combout => \bloco|divider5|s_divCounter[10]~46_combout\,
	cout => \bloco|divider5|s_divCounter[10]~47\);

-- Location: FF_X60_Y49_N27
\bloco|divider5|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[10]~46_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(10));

-- Location: LCCOMB_X60_Y49_N28
\bloco|divider5|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[11]~48_combout\ = (\bloco|divider5|s_divCounter\(11) & (!\bloco|divider5|s_divCounter[10]~47\)) # (!\bloco|divider5|s_divCounter\(11) & ((\bloco|divider5|s_divCounter[10]~47\) # (GND)))
-- \bloco|divider5|s_divCounter[11]~49\ = CARRY((!\bloco|divider5|s_divCounter[10]~47\) # (!\bloco|divider5|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(11),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[10]~47\,
	combout => \bloco|divider5|s_divCounter[11]~48_combout\,
	cout => \bloco|divider5|s_divCounter[11]~49\);

-- Location: FF_X60_Y49_N29
\bloco|divider5|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[11]~48_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(11));

-- Location: LCCOMB_X60_Y49_N30
\bloco|divider5|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[12]~50_combout\ = (\bloco|divider5|s_divCounter\(12) & (\bloco|divider5|s_divCounter[11]~49\ $ (GND))) # (!\bloco|divider5|s_divCounter\(12) & (!\bloco|divider5|s_divCounter[11]~49\ & VCC))
-- \bloco|divider5|s_divCounter[12]~51\ = CARRY((\bloco|divider5|s_divCounter\(12) & !\bloco|divider5|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(12),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[11]~49\,
	combout => \bloco|divider5|s_divCounter[12]~50_combout\,
	cout => \bloco|divider5|s_divCounter[12]~51\);

-- Location: FF_X60_Y49_N31
\bloco|divider5|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[12]~50_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(12));

-- Location: LCCOMB_X60_Y48_N0
\bloco|divider5|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[13]~52_combout\ = (\bloco|divider5|s_divCounter\(13) & (!\bloco|divider5|s_divCounter[12]~51\)) # (!\bloco|divider5|s_divCounter\(13) & ((\bloco|divider5|s_divCounter[12]~51\) # (GND)))
-- \bloco|divider5|s_divCounter[13]~53\ = CARRY((!\bloco|divider5|s_divCounter[12]~51\) # (!\bloco|divider5|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(13),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[12]~51\,
	combout => \bloco|divider5|s_divCounter[13]~52_combout\,
	cout => \bloco|divider5|s_divCounter[13]~53\);

-- Location: FF_X60_Y48_N1
\bloco|divider5|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[13]~52_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(13));

-- Location: LCCOMB_X60_Y48_N2
\bloco|divider5|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[14]~54_combout\ = (\bloco|divider5|s_divCounter\(14) & (\bloco|divider5|s_divCounter[13]~53\ $ (GND))) # (!\bloco|divider5|s_divCounter\(14) & (!\bloco|divider5|s_divCounter[13]~53\ & VCC))
-- \bloco|divider5|s_divCounter[14]~55\ = CARRY((\bloco|divider5|s_divCounter\(14) & !\bloco|divider5|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(14),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[13]~53\,
	combout => \bloco|divider5|s_divCounter[14]~54_combout\,
	cout => \bloco|divider5|s_divCounter[14]~55\);

-- Location: FF_X60_Y48_N3
\bloco|divider5|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[14]~54_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(14));

-- Location: LCCOMB_X60_Y48_N4
\bloco|divider5|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[15]~56_combout\ = (\bloco|divider5|s_divCounter\(15) & (!\bloco|divider5|s_divCounter[14]~55\)) # (!\bloco|divider5|s_divCounter\(15) & ((\bloco|divider5|s_divCounter[14]~55\) # (GND)))
-- \bloco|divider5|s_divCounter[15]~57\ = CARRY((!\bloco|divider5|s_divCounter[14]~55\) # (!\bloco|divider5|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(15),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[14]~55\,
	combout => \bloco|divider5|s_divCounter[15]~56_combout\,
	cout => \bloco|divider5|s_divCounter[15]~57\);

-- Location: FF_X60_Y48_N5
\bloco|divider5|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[15]~56_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(15));

-- Location: LCCOMB_X59_Y49_N26
\bloco|divider5|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|LessThan0~5_combout\ = (((!\bloco|divider5|s_divCounter\(15)) # (!\bloco|divider5|s_divCounter\(14))) # (!\bloco|divider5|s_divCounter\(13))) # (!\bloco|divider5|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(12),
	datab => \bloco|divider5|s_divCounter\(13),
	datac => \bloco|divider5|s_divCounter\(14),
	datad => \bloco|divider5|s_divCounter\(15),
	combout => \bloco|divider5|LessThan0~5_combout\);

-- Location: LCCOMB_X60_Y48_N6
\bloco|divider5|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[16]~58_combout\ = (\bloco|divider5|s_divCounter\(16) & (\bloco|divider5|s_divCounter[15]~57\ $ (GND))) # (!\bloco|divider5|s_divCounter\(16) & (!\bloco|divider5|s_divCounter[15]~57\ & VCC))
-- \bloco|divider5|s_divCounter[16]~59\ = CARRY((\bloco|divider5|s_divCounter\(16) & !\bloco|divider5|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(16),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[15]~57\,
	combout => \bloco|divider5|s_divCounter[16]~58_combout\,
	cout => \bloco|divider5|s_divCounter[16]~59\);

-- Location: FF_X60_Y48_N7
\bloco|divider5|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[16]~58_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(16));

-- Location: LCCOMB_X60_Y48_N8
\bloco|divider5|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[17]~60_combout\ = (\bloco|divider5|s_divCounter\(17) & (!\bloco|divider5|s_divCounter[16]~59\)) # (!\bloco|divider5|s_divCounter\(17) & ((\bloco|divider5|s_divCounter[16]~59\) # (GND)))
-- \bloco|divider5|s_divCounter[17]~61\ = CARRY((!\bloco|divider5|s_divCounter[16]~59\) # (!\bloco|divider5|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(17),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[16]~59\,
	combout => \bloco|divider5|s_divCounter[17]~60_combout\,
	cout => \bloco|divider5|s_divCounter[17]~61\);

-- Location: FF_X60_Y48_N9
\bloco|divider5|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[17]~60_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(17));

-- Location: LCCOMB_X60_Y48_N10
\bloco|divider5|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[18]~62_combout\ = (\bloco|divider5|s_divCounter\(18) & (\bloco|divider5|s_divCounter[17]~61\ $ (GND))) # (!\bloco|divider5|s_divCounter\(18) & (!\bloco|divider5|s_divCounter[17]~61\ & VCC))
-- \bloco|divider5|s_divCounter[18]~63\ = CARRY((\bloco|divider5|s_divCounter\(18) & !\bloco|divider5|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(18),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[17]~61\,
	combout => \bloco|divider5|s_divCounter[18]~62_combout\,
	cout => \bloco|divider5|s_divCounter[18]~63\);

-- Location: FF_X60_Y48_N11
\bloco|divider5|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[18]~62_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(18));

-- Location: LCCOMB_X60_Y48_N12
\bloco|divider5|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[19]~64_combout\ = (\bloco|divider5|s_divCounter\(19) & (!\bloco|divider5|s_divCounter[18]~63\)) # (!\bloco|divider5|s_divCounter\(19) & ((\bloco|divider5|s_divCounter[18]~63\) # (GND)))
-- \bloco|divider5|s_divCounter[19]~65\ = CARRY((!\bloco|divider5|s_divCounter[18]~63\) # (!\bloco|divider5|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(19),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[18]~63\,
	combout => \bloco|divider5|s_divCounter[19]~64_combout\,
	cout => \bloco|divider5|s_divCounter[19]~65\);

-- Location: FF_X60_Y48_N13
\bloco|divider5|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[19]~64_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(19));

-- Location: LCCOMB_X60_Y48_N14
\bloco|divider5|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[20]~66_combout\ = (\bloco|divider5|s_divCounter\(20) & (\bloco|divider5|s_divCounter[19]~65\ $ (GND))) # (!\bloco|divider5|s_divCounter\(20) & (!\bloco|divider5|s_divCounter[19]~65\ & VCC))
-- \bloco|divider5|s_divCounter[20]~67\ = CARRY((\bloco|divider5|s_divCounter\(20) & !\bloco|divider5|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(20),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[19]~65\,
	combout => \bloco|divider5|s_divCounter[20]~66_combout\,
	cout => \bloco|divider5|s_divCounter[20]~67\);

-- Location: FF_X60_Y48_N15
\bloco|divider5|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[20]~66_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(20));

-- Location: LCCOMB_X60_Y48_N16
\bloco|divider5|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[21]~68_combout\ = (\bloco|divider5|s_divCounter\(21) & (!\bloco|divider5|s_divCounter[20]~67\)) # (!\bloco|divider5|s_divCounter\(21) & ((\bloco|divider5|s_divCounter[20]~67\) # (GND)))
-- \bloco|divider5|s_divCounter[21]~69\ = CARRY((!\bloco|divider5|s_divCounter[20]~67\) # (!\bloco|divider5|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(21),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[20]~67\,
	combout => \bloco|divider5|s_divCounter[21]~68_combout\,
	cout => \bloco|divider5|s_divCounter[21]~69\);

-- Location: FF_X60_Y48_N17
\bloco|divider5|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[21]~68_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(21));

-- Location: LCCOMB_X60_Y48_N18
\bloco|divider5|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[22]~70_combout\ = (\bloco|divider5|s_divCounter\(22) & (\bloco|divider5|s_divCounter[21]~69\ $ (GND))) # (!\bloco|divider5|s_divCounter\(22) & (!\bloco|divider5|s_divCounter[21]~69\ & VCC))
-- \bloco|divider5|s_divCounter[22]~71\ = CARRY((\bloco|divider5|s_divCounter\(22) & !\bloco|divider5|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(22),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[21]~69\,
	combout => \bloco|divider5|s_divCounter[22]~70_combout\,
	cout => \bloco|divider5|s_divCounter[22]~71\);

-- Location: FF_X60_Y48_N19
\bloco|divider5|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[22]~70_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(22));

-- Location: LCCOMB_X60_Y48_N20
\bloco|divider5|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[23]~72_combout\ = (\bloco|divider5|s_divCounter\(23) & (!\bloco|divider5|s_divCounter[22]~71\)) # (!\bloco|divider5|s_divCounter\(23) & ((\bloco|divider5|s_divCounter[22]~71\) # (GND)))
-- \bloco|divider5|s_divCounter[23]~73\ = CARRY((!\bloco|divider5|s_divCounter[22]~71\) # (!\bloco|divider5|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(23),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[22]~71\,
	combout => \bloco|divider5|s_divCounter[23]~72_combout\,
	cout => \bloco|divider5|s_divCounter[23]~73\);

-- Location: FF_X60_Y48_N21
\bloco|divider5|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[23]~72_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(23));

-- Location: LCCOMB_X60_Y48_N22
\bloco|divider5|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[24]~74_combout\ = (\bloco|divider5|s_divCounter\(24) & (\bloco|divider5|s_divCounter[23]~73\ $ (GND))) # (!\bloco|divider5|s_divCounter\(24) & (!\bloco|divider5|s_divCounter[23]~73\ & VCC))
-- \bloco|divider5|s_divCounter[24]~75\ = CARRY((\bloco|divider5|s_divCounter\(24) & !\bloco|divider5|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(24),
	datad => VCC,
	cin => \bloco|divider5|s_divCounter[23]~73\,
	combout => \bloco|divider5|s_divCounter[24]~74_combout\,
	cout => \bloco|divider5|s_divCounter[24]~75\);

-- Location: FF_X60_Y48_N23
\bloco|divider5|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[24]~74_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(24));

-- Location: LCCOMB_X59_Y49_N8
\bloco|divider5|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|LessThan0~4_combout\ = (!\bloco|divider5|s_divCounter\(18) & (!\bloco|divider5|s_divCounter\(24) & !\bloco|divider5|s_divCounter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(18),
	datac => \bloco|divider5|s_divCounter\(24),
	datad => \bloco|divider5|s_divCounter\(16),
	combout => \bloco|divider5|LessThan0~4_combout\);

-- Location: LCCOMB_X60_Y48_N24
\bloco|divider5|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|s_divCounter[25]~76_combout\ = \bloco|divider5|s_divCounter[24]~75\ $ (\bloco|divider5|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bloco|divider5|s_divCounter\(25),
	cin => \bloco|divider5|s_divCounter[24]~75\,
	combout => \bloco|divider5|s_divCounter[25]~76_combout\);

-- Location: FF_X60_Y48_N25
\bloco|divider5|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider5|s_divCounter[25]~76_combout\,
	sclr => \bloco|divider5|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|s_divCounter\(25));

-- Location: LCCOMB_X60_Y48_N30
\bloco|divider5|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|LessThan0~2_combout\ = ((!\bloco|divider5|s_divCounter\(17) & !\bloco|divider5|s_divCounter\(18))) # (!\bloco|divider5|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(23),
	datac => \bloco|divider5|s_divCounter\(17),
	datad => \bloco|divider5|s_divCounter\(18),
	combout => \bloco|divider5|LessThan0~2_combout\);

-- Location: LCCOMB_X60_Y48_N28
\bloco|divider5|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|clkOut~3_combout\ = (\bloco|divider5|s_divCounter\(19) & (\bloco|divider5|s_divCounter\(21) & (\bloco|divider5|s_divCounter\(20) & \bloco|divider5|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(19),
	datab => \bloco|divider5|s_divCounter\(21),
	datac => \bloco|divider5|s_divCounter\(20),
	datad => \bloco|divider5|s_divCounter\(22),
	combout => \bloco|divider5|clkOut~3_combout\);

-- Location: LCCOMB_X59_Y49_N14
\bloco|divider5|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|LessThan0~3_combout\ = ((!\bloco|divider5|s_divCounter\(24) & ((\bloco|divider5|LessThan0~2_combout\) # (!\bloco|divider5|clkOut~3_combout\)))) # (!\bloco|divider5|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(25),
	datab => \bloco|divider5|LessThan0~2_combout\,
	datac => \bloco|divider5|s_divCounter\(24),
	datad => \bloco|divider5|clkOut~3_combout\,
	combout => \bloco|divider5|LessThan0~3_combout\);

-- Location: LCCOMB_X60_Y49_N4
\bloco|divider5|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|clkOut~0_combout\ = (!\bloco|divider5|s_divCounter\(8) & (!\bloco|divider5|s_divCounter\(7) & (!\bloco|divider5|s_divCounter\(10) & !\bloco|divider5|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(8),
	datab => \bloco|divider5|s_divCounter\(7),
	datac => \bloco|divider5|s_divCounter\(10),
	datad => \bloco|divider5|s_divCounter\(9),
	combout => \bloco|divider5|clkOut~0_combout\);

-- Location: LCCOMB_X60_Y49_N2
\bloco|divider5|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|clkOut~1_combout\ = (\bloco|divider5|s_divCounter\(3) & (\bloco|divider5|s_divCounter\(1) & (\bloco|divider5|s_divCounter\(0) & \bloco|divider5|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(3),
	datab => \bloco|divider5|s_divCounter\(1),
	datac => \bloco|divider5|s_divCounter\(0),
	datad => \bloco|divider5|s_divCounter\(2),
	combout => \bloco|divider5|clkOut~1_combout\);

-- Location: LCCOMB_X60_Y49_N0
\bloco|divider5|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|clkOut~2_combout\ = (\bloco|divider5|s_divCounter\(5) & (\bloco|divider5|s_divCounter\(4) & \bloco|divider5|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider5|s_divCounter\(5),
	datac => \bloco|divider5|s_divCounter\(4),
	datad => \bloco|divider5|clkOut~1_combout\,
	combout => \bloco|divider5|clkOut~2_combout\);

-- Location: LCCOMB_X59_Y49_N28
\bloco|divider5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|LessThan0~0_combout\ = (!\bloco|divider5|s_divCounter\(18) & (!\bloco|divider5|s_divCounter\(11) & (!\bloco|divider5|s_divCounter\(24) & !\bloco|divider5|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(18),
	datab => \bloco|divider5|s_divCounter\(11),
	datac => \bloco|divider5|s_divCounter\(24),
	datad => \bloco|divider5|s_divCounter\(16),
	combout => \bloco|divider5|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y49_N12
\bloco|divider5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|LessThan0~1_combout\ = (\bloco|divider5|clkOut~0_combout\ & (\bloco|divider5|LessThan0~0_combout\ & ((!\bloco|divider5|clkOut~2_combout\) # (!\bloco|divider5|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|clkOut~0_combout\,
	datab => \bloco|divider5|s_divCounter\(6),
	datac => \bloco|divider5|clkOut~2_combout\,
	datad => \bloco|divider5|LessThan0~0_combout\,
	combout => \bloco|divider5|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y49_N30
\bloco|divider5|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|LessThan0~6_combout\ = (!\bloco|divider5|LessThan0~3_combout\ & (!\bloco|divider5|LessThan0~1_combout\ & ((!\bloco|divider5|LessThan0~4_combout\) # (!\bloco|divider5|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|LessThan0~5_combout\,
	datab => \bloco|divider5|LessThan0~4_combout\,
	datac => \bloco|divider5|LessThan0~3_combout\,
	datad => \bloco|divider5|LessThan0~1_combout\,
	combout => \bloco|divider5|LessThan0~6_combout\);

-- Location: LCCOMB_X59_Y49_N22
\bloco|divider5|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|clkOut~5_combout\ = (\bloco|divider5|s_divCounter\(16) & (\bloco|divider5|s_divCounter\(11) & (!\bloco|divider5|s_divCounter\(17) & !\bloco|divider5|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(16),
	datab => \bloco|divider5|s_divCounter\(11),
	datac => \bloco|divider5|s_divCounter\(17),
	datad => \bloco|divider5|s_divCounter\(15),
	combout => \bloco|divider5|clkOut~5_combout\);

-- Location: LCCOMB_X60_Y48_N26
\bloco|divider5|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|clkOut~6_combout\ = (\bloco|divider5|s_divCounter\(24) & (\bloco|divider5|s_divCounter\(18) & (!\bloco|divider5|s_divCounter\(23) & !\bloco|divider5|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(24),
	datab => \bloco|divider5|s_divCounter\(18),
	datac => \bloco|divider5|s_divCounter\(23),
	datad => \bloco|divider5|s_divCounter\(25),
	combout => \bloco|divider5|clkOut~6_combout\);

-- Location: LCCOMB_X59_Y49_N16
\bloco|divider5|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|clkOut~4_combout\ = (\bloco|divider5|s_divCounter\(12) & (!\bloco|divider5|s_divCounter\(6) & (\bloco|divider5|s_divCounter\(14) & \bloco|divider5|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|s_divCounter\(12),
	datab => \bloco|divider5|s_divCounter\(6),
	datac => \bloco|divider5|s_divCounter\(14),
	datad => \bloco|divider5|s_divCounter\(13),
	combout => \bloco|divider5|clkOut~4_combout\);

-- Location: LCCOMB_X59_Y49_N10
\bloco|divider5|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|clkOut~7_combout\ = (\bloco|divider5|clkOut~5_combout\ & (\bloco|divider5|clkOut~6_combout\ & \bloco|divider5|clkOut~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|clkOut~5_combout\,
	datac => \bloco|divider5|clkOut~6_combout\,
	datad => \bloco|divider5|clkOut~4_combout\,
	combout => \bloco|divider5|clkOut~7_combout\);

-- Location: LCCOMB_X59_Y49_N20
\bloco|divider5|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|clkOut~8_combout\ = (\bloco|divider5|clkOut~2_combout\ & (\bloco|divider5|clkOut~3_combout\ & (\bloco|divider5|clkOut~0_combout\ & \bloco|divider5|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|clkOut~2_combout\,
	datab => \bloco|divider5|clkOut~3_combout\,
	datac => \bloco|divider5|clkOut~0_combout\,
	datad => \bloco|divider5|clkOut~7_combout\,
	combout => \bloco|divider5|clkOut~8_combout\);

-- Location: LCCOMB_X59_Y49_N24
\bloco|divider5|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider5|clkOut~9_combout\ = (!\bloco|divider5|LessThan0~6_combout\ & ((\bloco|divider5|clkOut~q\) # (\bloco|divider5|clkOut~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider5|LessThan0~6_combout\,
	datac => \bloco|divider5|clkOut~q\,
	datad => \bloco|divider5|clkOut~8_combout\,
	combout => \bloco|divider5|clkOut~9_combout\);

-- Location: FF_X59_Y49_N25
\bloco|divider5|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \bloco|divider5|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider5|clkOut~q\);

-- Location: LCCOMB_X87_Y52_N6
\bloco|divider10|s_divCounter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[0]~27_combout\ = \bloco|divider10|s_divCounter\(0) $ (VCC)
-- \bloco|divider10|s_divCounter[0]~28\ = CARRY(\bloco|divider10|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(0),
	datad => VCC,
	combout => \bloco|divider10|s_divCounter[0]~27_combout\,
	cout => \bloco|divider10|s_divCounter[0]~28\);

-- Location: LCCOMB_X87_Y52_N20
\bloco|divider10|s_divCounter[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[7]~41_combout\ = (\bloco|divider10|s_divCounter\(7) & (!\bloco|divider10|s_divCounter[6]~40\)) # (!\bloco|divider10|s_divCounter\(7) & ((\bloco|divider10|s_divCounter[6]~40\) # (GND)))
-- \bloco|divider10|s_divCounter[7]~42\ = CARRY((!\bloco|divider10|s_divCounter[6]~40\) # (!\bloco|divider10|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(7),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[6]~40\,
	combout => \bloco|divider10|s_divCounter[7]~41_combout\,
	cout => \bloco|divider10|s_divCounter[7]~42\);

-- Location: LCCOMB_X87_Y52_N22
\bloco|divider10|s_divCounter[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[8]~43_combout\ = (\bloco|divider10|s_divCounter\(8) & (\bloco|divider10|s_divCounter[7]~42\ $ (GND))) # (!\bloco|divider10|s_divCounter\(8) & (!\bloco|divider10|s_divCounter[7]~42\ & VCC))
-- \bloco|divider10|s_divCounter[8]~44\ = CARRY((\bloco|divider10|s_divCounter\(8) & !\bloco|divider10|s_divCounter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(8),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[7]~42\,
	combout => \bloco|divider10|s_divCounter[8]~43_combout\,
	cout => \bloco|divider10|s_divCounter[8]~44\);

-- Location: FF_X87_Y52_N23
\bloco|divider10|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[8]~43_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(8));

-- Location: LCCOMB_X87_Y52_N24
\bloco|divider10|s_divCounter[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[9]~45_combout\ = (\bloco|divider10|s_divCounter\(9) & (!\bloco|divider10|s_divCounter[8]~44\)) # (!\bloco|divider10|s_divCounter\(9) & ((\bloco|divider10|s_divCounter[8]~44\) # (GND)))
-- \bloco|divider10|s_divCounter[9]~46\ = CARRY((!\bloco|divider10|s_divCounter[8]~44\) # (!\bloco|divider10|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(9),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[8]~44\,
	combout => \bloco|divider10|s_divCounter[9]~45_combout\,
	cout => \bloco|divider10|s_divCounter[9]~46\);

-- Location: FF_X87_Y52_N25
\bloco|divider10|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[9]~45_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(9));

-- Location: LCCOMB_X87_Y52_N26
\bloco|divider10|s_divCounter[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[10]~47_combout\ = (\bloco|divider10|s_divCounter\(10) & (\bloco|divider10|s_divCounter[9]~46\ $ (GND))) # (!\bloco|divider10|s_divCounter\(10) & (!\bloco|divider10|s_divCounter[9]~46\ & VCC))
-- \bloco|divider10|s_divCounter[10]~48\ = CARRY((\bloco|divider10|s_divCounter\(10) & !\bloco|divider10|s_divCounter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(10),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[9]~46\,
	combout => \bloco|divider10|s_divCounter[10]~47_combout\,
	cout => \bloco|divider10|s_divCounter[10]~48\);

-- Location: FF_X87_Y52_N27
\bloco|divider10|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[10]~47_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(10));

-- Location: LCCOMB_X87_Y52_N28
\bloco|divider10|s_divCounter[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[11]~49_combout\ = (\bloco|divider10|s_divCounter\(11) & (!\bloco|divider10|s_divCounter[10]~48\)) # (!\bloco|divider10|s_divCounter\(11) & ((\bloco|divider10|s_divCounter[10]~48\) # (GND)))
-- \bloco|divider10|s_divCounter[11]~50\ = CARRY((!\bloco|divider10|s_divCounter[10]~48\) # (!\bloco|divider10|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(11),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[10]~48\,
	combout => \bloco|divider10|s_divCounter[11]~49_combout\,
	cout => \bloco|divider10|s_divCounter[11]~50\);

-- Location: FF_X87_Y52_N29
\bloco|divider10|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[11]~49_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(11));

-- Location: LCCOMB_X87_Y52_N30
\bloco|divider10|s_divCounter[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[12]~51_combout\ = (\bloco|divider10|s_divCounter\(12) & (\bloco|divider10|s_divCounter[11]~50\ $ (GND))) # (!\bloco|divider10|s_divCounter\(12) & (!\bloco|divider10|s_divCounter[11]~50\ & VCC))
-- \bloco|divider10|s_divCounter[12]~52\ = CARRY((\bloco|divider10|s_divCounter\(12) & !\bloco|divider10|s_divCounter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(12),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[11]~50\,
	combout => \bloco|divider10|s_divCounter[12]~51_combout\,
	cout => \bloco|divider10|s_divCounter[12]~52\);

-- Location: FF_X88_Y51_N5
\bloco|divider10|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \bloco|divider10|s_divCounter[12]~51_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(12));

-- Location: LCCOMB_X87_Y51_N0
\bloco|divider10|s_divCounter[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[13]~53_combout\ = (\bloco|divider10|s_divCounter\(13) & (!\bloco|divider10|s_divCounter[12]~52\)) # (!\bloco|divider10|s_divCounter\(13) & ((\bloco|divider10|s_divCounter[12]~52\) # (GND)))
-- \bloco|divider10|s_divCounter[13]~54\ = CARRY((!\bloco|divider10|s_divCounter[12]~52\) # (!\bloco|divider10|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(13),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[12]~52\,
	combout => \bloco|divider10|s_divCounter[13]~53_combout\,
	cout => \bloco|divider10|s_divCounter[13]~54\);

-- Location: FF_X87_Y51_N1
\bloco|divider10|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[13]~53_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(13));

-- Location: LCCOMB_X87_Y51_N2
\bloco|divider10|s_divCounter[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[14]~55_combout\ = (\bloco|divider10|s_divCounter\(14) & (\bloco|divider10|s_divCounter[13]~54\ $ (GND))) # (!\bloco|divider10|s_divCounter\(14) & (!\bloco|divider10|s_divCounter[13]~54\ & VCC))
-- \bloco|divider10|s_divCounter[14]~56\ = CARRY((\bloco|divider10|s_divCounter\(14) & !\bloco|divider10|s_divCounter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(14),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[13]~54\,
	combout => \bloco|divider10|s_divCounter[14]~55_combout\,
	cout => \bloco|divider10|s_divCounter[14]~56\);

-- Location: FF_X87_Y51_N3
\bloco|divider10|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[14]~55_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(14));

-- Location: LCCOMB_X87_Y51_N4
\bloco|divider10|s_divCounter[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[15]~57_combout\ = (\bloco|divider10|s_divCounter\(15) & (!\bloco|divider10|s_divCounter[14]~56\)) # (!\bloco|divider10|s_divCounter\(15) & ((\bloco|divider10|s_divCounter[14]~56\) # (GND)))
-- \bloco|divider10|s_divCounter[15]~58\ = CARRY((!\bloco|divider10|s_divCounter[14]~56\) # (!\bloco|divider10|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(15),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[14]~56\,
	combout => \bloco|divider10|s_divCounter[15]~57_combout\,
	cout => \bloco|divider10|s_divCounter[15]~58\);

-- Location: FF_X87_Y51_N5
\bloco|divider10|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[15]~57_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(15));

-- Location: LCCOMB_X87_Y51_N6
\bloco|divider10|s_divCounter[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[16]~59_combout\ = (\bloco|divider10|s_divCounter\(16) & (\bloco|divider10|s_divCounter[15]~58\ $ (GND))) # (!\bloco|divider10|s_divCounter\(16) & (!\bloco|divider10|s_divCounter[15]~58\ & VCC))
-- \bloco|divider10|s_divCounter[16]~60\ = CARRY((\bloco|divider10|s_divCounter\(16) & !\bloco|divider10|s_divCounter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(16),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[15]~58\,
	combout => \bloco|divider10|s_divCounter[16]~59_combout\,
	cout => \bloco|divider10|s_divCounter[16]~60\);

-- Location: FF_X87_Y51_N7
\bloco|divider10|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[16]~59_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(16));

-- Location: LCCOMB_X87_Y51_N8
\bloco|divider10|s_divCounter[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[17]~61_combout\ = (\bloco|divider10|s_divCounter\(17) & (!\bloco|divider10|s_divCounter[16]~60\)) # (!\bloco|divider10|s_divCounter\(17) & ((\bloco|divider10|s_divCounter[16]~60\) # (GND)))
-- \bloco|divider10|s_divCounter[17]~62\ = CARRY((!\bloco|divider10|s_divCounter[16]~60\) # (!\bloco|divider10|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(17),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[16]~60\,
	combout => \bloco|divider10|s_divCounter[17]~61_combout\,
	cout => \bloco|divider10|s_divCounter[17]~62\);

-- Location: FF_X87_Y51_N9
\bloco|divider10|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[17]~61_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(17));

-- Location: LCCOMB_X87_Y51_N10
\bloco|divider10|s_divCounter[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[18]~63_combout\ = (\bloco|divider10|s_divCounter\(18) & (\bloco|divider10|s_divCounter[17]~62\ $ (GND))) # (!\bloco|divider10|s_divCounter\(18) & (!\bloco|divider10|s_divCounter[17]~62\ & VCC))
-- \bloco|divider10|s_divCounter[18]~64\ = CARRY((\bloco|divider10|s_divCounter\(18) & !\bloco|divider10|s_divCounter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(18),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[17]~62\,
	combout => \bloco|divider10|s_divCounter[18]~63_combout\,
	cout => \bloco|divider10|s_divCounter[18]~64\);

-- Location: FF_X87_Y51_N11
\bloco|divider10|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[18]~63_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(18));

-- Location: LCCOMB_X87_Y51_N12
\bloco|divider10|s_divCounter[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[19]~65_combout\ = (\bloco|divider10|s_divCounter\(19) & (!\bloco|divider10|s_divCounter[18]~64\)) # (!\bloco|divider10|s_divCounter\(19) & ((\bloco|divider10|s_divCounter[18]~64\) # (GND)))
-- \bloco|divider10|s_divCounter[19]~66\ = CARRY((!\bloco|divider10|s_divCounter[18]~64\) # (!\bloco|divider10|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(19),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[18]~64\,
	combout => \bloco|divider10|s_divCounter[19]~65_combout\,
	cout => \bloco|divider10|s_divCounter[19]~66\);

-- Location: FF_X87_Y51_N13
\bloco|divider10|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[19]~65_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(19));

-- Location: LCCOMB_X87_Y51_N14
\bloco|divider10|s_divCounter[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[20]~67_combout\ = (\bloco|divider10|s_divCounter\(20) & (\bloco|divider10|s_divCounter[19]~66\ $ (GND))) # (!\bloco|divider10|s_divCounter\(20) & (!\bloco|divider10|s_divCounter[19]~66\ & VCC))
-- \bloco|divider10|s_divCounter[20]~68\ = CARRY((\bloco|divider10|s_divCounter\(20) & !\bloco|divider10|s_divCounter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(20),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[19]~66\,
	combout => \bloco|divider10|s_divCounter[20]~67_combout\,
	cout => \bloco|divider10|s_divCounter[20]~68\);

-- Location: FF_X87_Y51_N15
\bloco|divider10|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[20]~67_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(20));

-- Location: LCCOMB_X87_Y51_N16
\bloco|divider10|s_divCounter[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[21]~69_combout\ = (\bloco|divider10|s_divCounter\(21) & (!\bloco|divider10|s_divCounter[20]~68\)) # (!\bloco|divider10|s_divCounter\(21) & ((\bloco|divider10|s_divCounter[20]~68\) # (GND)))
-- \bloco|divider10|s_divCounter[21]~70\ = CARRY((!\bloco|divider10|s_divCounter[20]~68\) # (!\bloco|divider10|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(21),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[20]~68\,
	combout => \bloco|divider10|s_divCounter[21]~69_combout\,
	cout => \bloco|divider10|s_divCounter[21]~70\);

-- Location: FF_X87_Y51_N17
\bloco|divider10|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[21]~69_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(21));

-- Location: LCCOMB_X87_Y51_N18
\bloco|divider10|s_divCounter[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[22]~71_combout\ = (\bloco|divider10|s_divCounter\(22) & (\bloco|divider10|s_divCounter[21]~70\ $ (GND))) # (!\bloco|divider10|s_divCounter\(22) & (!\bloco|divider10|s_divCounter[21]~70\ & VCC))
-- \bloco|divider10|s_divCounter[22]~72\ = CARRY((\bloco|divider10|s_divCounter\(22) & !\bloco|divider10|s_divCounter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(22),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[21]~70\,
	combout => \bloco|divider10|s_divCounter[22]~71_combout\,
	cout => \bloco|divider10|s_divCounter[22]~72\);

-- Location: FF_X87_Y51_N19
\bloco|divider10|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[22]~71_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(22));

-- Location: LCCOMB_X87_Y51_N20
\bloco|divider10|s_divCounter[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[23]~73_combout\ = (\bloco|divider10|s_divCounter\(23) & (!\bloco|divider10|s_divCounter[22]~72\)) # (!\bloco|divider10|s_divCounter\(23) & ((\bloco|divider10|s_divCounter[22]~72\) # (GND)))
-- \bloco|divider10|s_divCounter[23]~74\ = CARRY((!\bloco|divider10|s_divCounter[22]~72\) # (!\bloco|divider10|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(23),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[22]~72\,
	combout => \bloco|divider10|s_divCounter[23]~73_combout\,
	cout => \bloco|divider10|s_divCounter[23]~74\);

-- Location: FF_X87_Y51_N21
\bloco|divider10|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[23]~73_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(23));

-- Location: LCCOMB_X87_Y51_N22
\bloco|divider10|s_divCounter[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[24]~75_combout\ = (\bloco|divider10|s_divCounter\(24) & (\bloco|divider10|s_divCounter[23]~74\ $ (GND))) # (!\bloco|divider10|s_divCounter\(24) & (!\bloco|divider10|s_divCounter[23]~74\ & VCC))
-- \bloco|divider10|s_divCounter[24]~76\ = CARRY((\bloco|divider10|s_divCounter\(24) & !\bloco|divider10|s_divCounter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(24),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[23]~74\,
	combout => \bloco|divider10|s_divCounter[24]~75_combout\,
	cout => \bloco|divider10|s_divCounter[24]~76\);

-- Location: FF_X87_Y51_N23
\bloco|divider10|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[24]~75_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(24));

-- Location: LCCOMB_X87_Y51_N24
\bloco|divider10|s_divCounter[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[25]~77_combout\ = (\bloco|divider10|s_divCounter\(25) & (!\bloco|divider10|s_divCounter[24]~76\)) # (!\bloco|divider10|s_divCounter\(25) & ((\bloco|divider10|s_divCounter[24]~76\) # (GND)))
-- \bloco|divider10|s_divCounter[25]~78\ = CARRY((!\bloco|divider10|s_divCounter[24]~76\) # (!\bloco|divider10|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(25),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[24]~76\,
	combout => \bloco|divider10|s_divCounter[25]~77_combout\,
	cout => \bloco|divider10|s_divCounter[25]~78\);

-- Location: FF_X87_Y51_N25
\bloco|divider10|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[25]~77_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(25));

-- Location: LCCOMB_X87_Y51_N26
\bloco|divider10|s_divCounter[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[26]~79_combout\ = \bloco|divider10|s_divCounter\(26) $ (!\bloco|divider10|s_divCounter[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(26),
	cin => \bloco|divider10|s_divCounter[25]~78\,
	combout => \bloco|divider10|s_divCounter[26]~79_combout\);

-- Location: FF_X87_Y51_N27
\bloco|divider10|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[26]~79_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(26));

-- Location: LCCOMB_X87_Y51_N28
\bloco|divider10|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|clkOut~3_combout\ = (\bloco|divider10|s_divCounter\(22) & (\bloco|divider10|s_divCounter\(21) & (\bloco|divider10|s_divCounter\(20) & \bloco|divider10|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(22),
	datab => \bloco|divider10|s_divCounter\(21),
	datac => \bloco|divider10|s_divCounter\(20),
	datad => \bloco|divider10|s_divCounter\(23),
	combout => \bloco|divider10|clkOut~3_combout\);

-- Location: LCCOMB_X88_Y51_N22
\bloco|divider10|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|LessThan0~4_combout\ = (((!\bloco|divider10|s_divCounter\(18) & !\bloco|divider10|s_divCounter\(19))) # (!\bloco|divider10|clkOut~3_combout\)) # (!\bloco|divider10|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(18),
	datab => \bloco|divider10|s_divCounter\(24),
	datac => \bloco|divider10|s_divCounter\(19),
	datad => \bloco|divider10|clkOut~3_combout\,
	combout => \bloco|divider10|LessThan0~4_combout\);

-- Location: LCCOMB_X87_Y51_N30
\bloco|divider10|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|LessThan0~2_combout\ = (((!\bloco|divider10|s_divCounter\(16)) # (!\bloco|divider10|s_divCounter\(15))) # (!\bloco|divider10|s_divCounter\(13))) # (!\bloco|divider10|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(14),
	datab => \bloco|divider10|s_divCounter\(13),
	datac => \bloco|divider10|s_divCounter\(15),
	datad => \bloco|divider10|s_divCounter\(16),
	combout => \bloco|divider10|LessThan0~2_combout\);

-- Location: LCCOMB_X88_Y51_N2
\bloco|divider10|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|LessThan0~3_combout\ = (!\bloco|divider10|s_divCounter\(17) & (!\bloco|divider10|s_divCounter\(25) & (!\bloco|divider10|s_divCounter\(19) & \bloco|divider10|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(17),
	datab => \bloco|divider10|s_divCounter\(25),
	datac => \bloco|divider10|s_divCounter\(19),
	datad => \bloco|divider10|LessThan0~2_combout\,
	combout => \bloco|divider10|LessThan0~3_combout\);

-- Location: LCCOMB_X88_Y51_N8
\bloco|divider10|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|LessThan0~5_combout\ = ((\bloco|divider10|LessThan0~3_combout\) # ((!\bloco|divider10|s_divCounter\(25) & \bloco|divider10|LessThan0~4_combout\))) # (!\bloco|divider10|s_divCounter\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(26),
	datab => \bloco|divider10|s_divCounter\(25),
	datac => \bloco|divider10|LessThan0~4_combout\,
	datad => \bloco|divider10|LessThan0~3_combout\,
	combout => \bloco|divider10|LessThan0~5_combout\);

-- Location: LCCOMB_X88_Y51_N0
\bloco|divider10|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|LessThan0~6_combout\ = (!\bloco|divider10|LessThan0~5_combout\ & !\bloco|divider10|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco|divider10|LessThan0~5_combout\,
	datad => \bloco|divider10|LessThan0~1_combout\,
	combout => \bloco|divider10|LessThan0~6_combout\);

-- Location: FF_X87_Y52_N7
\bloco|divider10|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[0]~27_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(0));

-- Location: LCCOMB_X87_Y52_N8
\bloco|divider10|s_divCounter[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[1]~29_combout\ = (\bloco|divider10|s_divCounter\(1) & (!\bloco|divider10|s_divCounter[0]~28\)) # (!\bloco|divider10|s_divCounter\(1) & ((\bloco|divider10|s_divCounter[0]~28\) # (GND)))
-- \bloco|divider10|s_divCounter[1]~30\ = CARRY((!\bloco|divider10|s_divCounter[0]~28\) # (!\bloco|divider10|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(1),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[0]~28\,
	combout => \bloco|divider10|s_divCounter[1]~29_combout\,
	cout => \bloco|divider10|s_divCounter[1]~30\);

-- Location: FF_X87_Y52_N9
\bloco|divider10|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[1]~29_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(1));

-- Location: LCCOMB_X87_Y52_N10
\bloco|divider10|s_divCounter[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[2]~31_combout\ = (\bloco|divider10|s_divCounter\(2) & (\bloco|divider10|s_divCounter[1]~30\ $ (GND))) # (!\bloco|divider10|s_divCounter\(2) & (!\bloco|divider10|s_divCounter[1]~30\ & VCC))
-- \bloco|divider10|s_divCounter[2]~32\ = CARRY((\bloco|divider10|s_divCounter\(2) & !\bloco|divider10|s_divCounter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(2),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[1]~30\,
	combout => \bloco|divider10|s_divCounter[2]~31_combout\,
	cout => \bloco|divider10|s_divCounter[2]~32\);

-- Location: FF_X87_Y52_N11
\bloco|divider10|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[2]~31_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(2));

-- Location: LCCOMB_X87_Y52_N12
\bloco|divider10|s_divCounter[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[3]~33_combout\ = (\bloco|divider10|s_divCounter\(3) & (!\bloco|divider10|s_divCounter[2]~32\)) # (!\bloco|divider10|s_divCounter\(3) & ((\bloco|divider10|s_divCounter[2]~32\) # (GND)))
-- \bloco|divider10|s_divCounter[3]~34\ = CARRY((!\bloco|divider10|s_divCounter[2]~32\) # (!\bloco|divider10|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(3),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[2]~32\,
	combout => \bloco|divider10|s_divCounter[3]~33_combout\,
	cout => \bloco|divider10|s_divCounter[3]~34\);

-- Location: FF_X87_Y52_N13
\bloco|divider10|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[3]~33_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(3));

-- Location: LCCOMB_X87_Y52_N14
\bloco|divider10|s_divCounter[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[4]~35_combout\ = (\bloco|divider10|s_divCounter\(4) & (\bloco|divider10|s_divCounter[3]~34\ $ (GND))) # (!\bloco|divider10|s_divCounter\(4) & (!\bloco|divider10|s_divCounter[3]~34\ & VCC))
-- \bloco|divider10|s_divCounter[4]~36\ = CARRY((\bloco|divider10|s_divCounter\(4) & !\bloco|divider10|s_divCounter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(4),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[3]~34\,
	combout => \bloco|divider10|s_divCounter[4]~35_combout\,
	cout => \bloco|divider10|s_divCounter[4]~36\);

-- Location: FF_X87_Y52_N15
\bloco|divider10|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[4]~35_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(4));

-- Location: LCCOMB_X87_Y52_N16
\bloco|divider10|s_divCounter[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[5]~37_combout\ = (\bloco|divider10|s_divCounter\(5) & (!\bloco|divider10|s_divCounter[4]~36\)) # (!\bloco|divider10|s_divCounter\(5) & ((\bloco|divider10|s_divCounter[4]~36\) # (GND)))
-- \bloco|divider10|s_divCounter[5]~38\ = CARRY((!\bloco|divider10|s_divCounter[4]~36\) # (!\bloco|divider10|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(5),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[4]~36\,
	combout => \bloco|divider10|s_divCounter[5]~37_combout\,
	cout => \bloco|divider10|s_divCounter[5]~38\);

-- Location: FF_X87_Y52_N17
\bloco|divider10|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[5]~37_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(5));

-- Location: LCCOMB_X87_Y52_N18
\bloco|divider10|s_divCounter[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|s_divCounter[6]~39_combout\ = (\bloco|divider10|s_divCounter\(6) & (\bloco|divider10|s_divCounter[5]~38\ $ (GND))) # (!\bloco|divider10|s_divCounter\(6) & (!\bloco|divider10|s_divCounter[5]~38\ & VCC))
-- \bloco|divider10|s_divCounter[6]~40\ = CARRY((\bloco|divider10|s_divCounter\(6) & !\bloco|divider10|s_divCounter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|s_divCounter\(6),
	datad => VCC,
	cin => \bloco|divider10|s_divCounter[5]~38\,
	combout => \bloco|divider10|s_divCounter[6]~39_combout\,
	cout => \bloco|divider10|s_divCounter[6]~40\);

-- Location: FF_X87_Y52_N19
\bloco|divider10|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[6]~39_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(6));

-- Location: FF_X87_Y52_N21
\bloco|divider10|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|s_divCounter[7]~41_combout\,
	sclr => \bloco|divider10|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|s_divCounter\(7));

-- Location: LCCOMB_X88_Y51_N28
\bloco|divider10|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|LessThan0~0_combout\ = (!\bloco|divider10|s_divCounter\(17) & (!\bloco|divider10|s_divCounter\(12) & (!\bloco|divider10|s_divCounter\(25) & !\bloco|divider10|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(17),
	datab => \bloco|divider10|s_divCounter\(12),
	datac => \bloco|divider10|s_divCounter\(25),
	datad => \bloco|divider10|s_divCounter\(19),
	combout => \bloco|divider10|LessThan0~0_combout\);

-- Location: LCCOMB_X87_Y52_N0
\bloco|divider10|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|clkOut~0_combout\ = (\bloco|divider10|s_divCounter\(3) & (\bloco|divider10|s_divCounter\(0) & (\bloco|divider10|s_divCounter\(1) & \bloco|divider10|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(3),
	datab => \bloco|divider10|s_divCounter\(0),
	datac => \bloco|divider10|s_divCounter\(1),
	datad => \bloco|divider10|s_divCounter\(2),
	combout => \bloco|divider10|clkOut~0_combout\);

-- Location: LCCOMB_X87_Y52_N2
\bloco|divider10|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|clkOut~1_combout\ = (\bloco|divider10|s_divCounter\(4) & (\bloco|divider10|s_divCounter\(6) & (\bloco|divider10|s_divCounter\(5) & \bloco|divider10|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(4),
	datab => \bloco|divider10|s_divCounter\(6),
	datac => \bloco|divider10|s_divCounter\(5),
	datad => \bloco|divider10|clkOut~0_combout\,
	combout => \bloco|divider10|clkOut~1_combout\);

-- Location: LCCOMB_X87_Y52_N4
\bloco|divider10|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|clkOut~2_combout\ = (!\bloco|divider10|s_divCounter\(10) & (!\bloco|divider10|s_divCounter\(9) & (!\bloco|divider10|s_divCounter\(8) & !\bloco|divider10|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(10),
	datab => \bloco|divider10|s_divCounter\(9),
	datac => \bloco|divider10|s_divCounter\(8),
	datad => \bloco|divider10|s_divCounter\(11),
	combout => \bloco|divider10|clkOut~2_combout\);

-- Location: LCCOMB_X88_Y51_N10
\bloco|divider10|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|LessThan0~1_combout\ = (\bloco|divider10|LessThan0~0_combout\ & (\bloco|divider10|clkOut~2_combout\ & ((!\bloco|divider10|clkOut~1_combout\) # (!\bloco|divider10|s_divCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(7),
	datab => \bloco|divider10|LessThan0~0_combout\,
	datac => \bloco|divider10|clkOut~1_combout\,
	datad => \bloco|divider10|clkOut~2_combout\,
	combout => \bloco|divider10|LessThan0~1_combout\);

-- Location: LCCOMB_X88_Y51_N26
\bloco|divider10|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|clkOut~5_combout\ = (\bloco|divider10|s_divCounter\(17) & (!\bloco|divider10|s_divCounter\(16) & (\bloco|divider10|s_divCounter\(12) & !\bloco|divider10|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(17),
	datab => \bloco|divider10|s_divCounter\(16),
	datac => \bloco|divider10|s_divCounter\(12),
	datad => \bloco|divider10|s_divCounter\(18),
	combout => \bloco|divider10|clkOut~5_combout\);

-- Location: LCCOMB_X88_Y51_N30
\bloco|divider10|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|clkOut~6_combout\ = (\bloco|divider10|s_divCounter\(19) & (\bloco|divider10|s_divCounter\(25) & (!\bloco|divider10|s_divCounter\(26) & !\bloco|divider10|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(19),
	datab => \bloco|divider10|s_divCounter\(25),
	datac => \bloco|divider10|s_divCounter\(26),
	datad => \bloco|divider10|s_divCounter\(24),
	combout => \bloco|divider10|clkOut~6_combout\);

-- Location: LCCOMB_X88_Y51_N18
\bloco|divider10|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|clkOut~4_combout\ = (\bloco|divider10|s_divCounter\(13) & (\bloco|divider10|s_divCounter\(15) & (\bloco|divider10|s_divCounter\(14) & !\bloco|divider10|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|s_divCounter\(13),
	datab => \bloco|divider10|s_divCounter\(15),
	datac => \bloco|divider10|s_divCounter\(14),
	datad => \bloco|divider10|s_divCounter\(7),
	combout => \bloco|divider10|clkOut~4_combout\);

-- Location: LCCOMB_X88_Y51_N14
\bloco|divider10|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|clkOut~7_combout\ = (\bloco|divider10|clkOut~5_combout\ & (\bloco|divider10|clkOut~6_combout\ & \bloco|divider10|clkOut~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|clkOut~5_combout\,
	datac => \bloco|divider10|clkOut~6_combout\,
	datad => \bloco|divider10|clkOut~4_combout\,
	combout => \bloco|divider10|clkOut~7_combout\);

-- Location: LCCOMB_X88_Y51_N16
\bloco|divider10|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|clkOut~8_combout\ = (\bloco|divider10|clkOut~3_combout\ & (\bloco|divider10|clkOut~7_combout\ & (\bloco|divider10|clkOut~1_combout\ & \bloco|divider10|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|clkOut~3_combout\,
	datab => \bloco|divider10|clkOut~7_combout\,
	datac => \bloco|divider10|clkOut~1_combout\,
	datad => \bloco|divider10|clkOut~2_combout\,
	combout => \bloco|divider10|clkOut~8_combout\);

-- Location: LCCOMB_X88_Y51_N12
\bloco|divider10|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|clkOut~9_combout\ = (\bloco|divider10|LessThan0~1_combout\ & (((\bloco|divider10|clkOut~q\) # (\bloco|divider10|clkOut~8_combout\)))) # (!\bloco|divider10|LessThan0~1_combout\ & (\bloco|divider10|LessThan0~5_combout\ & 
-- ((\bloco|divider10|clkOut~q\) # (\bloco|divider10|clkOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|divider10|LessThan0~1_combout\,
	datab => \bloco|divider10|LessThan0~5_combout\,
	datac => \bloco|divider10|clkOut~q\,
	datad => \bloco|divider10|clkOut~8_combout\,
	combout => \bloco|divider10|clkOut~9_combout\);

-- Location: LCCOMB_X88_Y51_N24
\bloco|divider10|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|divider10|clkOut~feeder_combout\ = \bloco|divider10|clkOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|divider10|clkOut~9_combout\,
	combout => \bloco|divider10|clkOut~feeder_combout\);

-- Location: FF_X88_Y51_N25
\bloco|divider10|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bloco|divider10|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|divider10|clkOut~q\);

-- Location: LCCOMB_X88_Y51_N20
\bloco|mux2_1|output\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|mux2_1|output~combout\ = LCELL((\bloco|flop|q~q\ & ((\bloco|divider10|clkOut~q\))) # (!\bloco|flop|q~q\ & (\bloco|divider5|clkOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|flop|q~q\,
	datac => \bloco|divider5|clkOut~q\,
	datad => \bloco|divider10|clkOut~q\,
	combout => \bloco|mux2_1|output~combout\);

-- Location: CLKCTRL_G9
\bloco|mux2_1|output~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bloco|mux2_1|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bloco|mux2_1|output~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X92_Y51_N22
\bloco|shift8|S_Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q~7_combout\ = (\KEY[1]~input_o\ & ((\bloco|flop|q~q\ & (\SW[0]~input_o\)) # (!\bloco|flop|q~q\ & ((\bloco|shift8|S_Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \bloco|flop|q~q\,
	datad => \bloco|shift8|S_Q\(6),
	combout => \bloco|shift8|S_Q~7_combout\);

-- Location: LCCOMB_X92_Y51_N14
\bloco|shift8|S_Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q[7]~feeder_combout\ = \bloco|shift8|S_Q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|shift8|S_Q~7_combout\,
	combout => \bloco|shift8|S_Q[7]~feeder_combout\);

-- Location: FF_X92_Y51_N15
\bloco|shift8|S_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloco|mux2_1|output~clkctrl_outclk\,
	d => \bloco|shift8|S_Q[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|shift8|S_Q\(7));

-- Location: LCCOMB_X92_Y51_N10
\bloco|shift8|S_Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q~6_combout\ = (\KEY[1]~input_o\ & ((\bloco|flop|q~q\ & (\bloco|shift8|S_Q\(7))) # (!\bloco|flop|q~q\ & ((\bloco|shift8|S_Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \bloco|flop|q~q\,
	datac => \bloco|shift8|S_Q\(7),
	datad => \bloco|shift8|S_Q\(5),
	combout => \bloco|shift8|S_Q~6_combout\);

-- Location: LCCOMB_X92_Y51_N28
\bloco|shift8|S_Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q[6]~feeder_combout\ = \bloco|shift8|S_Q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|shift8|S_Q~6_combout\,
	combout => \bloco|shift8|S_Q[6]~feeder_combout\);

-- Location: FF_X92_Y51_N29
\bloco|shift8|S_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloco|mux2_1|output~clkctrl_outclk\,
	d => \bloco|shift8|S_Q[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|shift8|S_Q\(6));

-- Location: LCCOMB_X92_Y51_N24
\bloco|shift8|S_Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q~5_combout\ = (\KEY[1]~input_o\ & ((\bloco|flop|q~q\ & (\bloco|shift8|S_Q\(6))) # (!\bloco|flop|q~q\ & ((\bloco|shift8|S_Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \bloco|shift8|S_Q\(6),
	datac => \bloco|flop|q~q\,
	datad => \bloco|shift8|S_Q\(4),
	combout => \bloco|shift8|S_Q~5_combout\);

-- Location: FF_X92_Y51_N13
\bloco|shift8|S_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloco|mux2_1|output~clkctrl_outclk\,
	asdata => \bloco|shift8|S_Q~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|shift8|S_Q\(5));

-- Location: LCCOMB_X92_Y51_N30
\bloco|shift8|S_Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q~4_combout\ = (\KEY[1]~input_o\ & ((\bloco|flop|q~q\ & ((\bloco|shift8|S_Q\(5)))) # (!\bloco|flop|q~q\ & (\bloco|shift8|S_Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \bloco|flop|q~q\,
	datac => \bloco|shift8|S_Q\(3),
	datad => \bloco|shift8|S_Q\(5),
	combout => \bloco|shift8|S_Q~4_combout\);

-- Location: LCCOMB_X92_Y51_N2
\bloco|shift8|S_Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q[4]~feeder_combout\ = \bloco|shift8|S_Q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco|shift8|S_Q~4_combout\,
	combout => \bloco|shift8|S_Q[4]~feeder_combout\);

-- Location: FF_X92_Y51_N3
\bloco|shift8|S_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloco|mux2_1|output~clkctrl_outclk\,
	d => \bloco|shift8|S_Q[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|shift8|S_Q\(4));

-- Location: LCCOMB_X92_Y51_N20
\bloco|shift8|S_Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q~3_combout\ = (\KEY[1]~input_o\ & ((\bloco|flop|q~q\ & ((\bloco|shift8|S_Q\(4)))) # (!\bloco|flop|q~q\ & (\bloco|shift8|S_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \bloco|flop|q~q\,
	datac => \bloco|shift8|S_Q\(2),
	datad => \bloco|shift8|S_Q\(4),
	combout => \bloco|shift8|S_Q~3_combout\);

-- Location: LCCOMB_X92_Y51_N4
\bloco|shift8|S_Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q[3]~feeder_combout\ = \bloco|shift8|S_Q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco|shift8|S_Q~3_combout\,
	combout => \bloco|shift8|S_Q[3]~feeder_combout\);

-- Location: FF_X92_Y51_N5
\bloco|shift8|S_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloco|mux2_1|output~clkctrl_outclk\,
	d => \bloco|shift8|S_Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|shift8|S_Q\(3));

-- Location: LCCOMB_X92_Y51_N18
\bloco|shift8|S_Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q~2_combout\ = (\KEY[1]~input_o\ & ((\bloco|flop|q~q\ & (\bloco|shift8|S_Q\(3))) # (!\bloco|flop|q~q\ & ((\bloco|shift8|S_Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \bloco|flop|q~q\,
	datac => \bloco|shift8|S_Q\(3),
	datad => \bloco|shift8|S_Q\(1),
	combout => \bloco|shift8|S_Q~2_combout\);

-- Location: LCCOMB_X92_Y51_N8
\bloco|shift8|S_Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q[2]~feeder_combout\ = \bloco|shift8|S_Q~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|shift8|S_Q~2_combout\,
	combout => \bloco|shift8|S_Q[2]~feeder_combout\);

-- Location: FF_X92_Y51_N9
\bloco|shift8|S_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloco|mux2_1|output~clkctrl_outclk\,
	d => \bloco|shift8|S_Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|shift8|S_Q\(2));

-- Location: LCCOMB_X92_Y51_N6
\bloco|shift8|S_Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q~1_combout\ = (\KEY[1]~input_o\ & ((\bloco|flop|q~q\ & (\bloco|shift8|S_Q\(2))) # (!\bloco|flop|q~q\ & ((\bloco|shift8|S_Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \bloco|flop|q~q\,
	datac => \bloco|shift8|S_Q\(2),
	datad => \bloco|shift8|S_Q\(0),
	combout => \bloco|shift8|S_Q~1_combout\);

-- Location: FF_X92_Y51_N1
\bloco|shift8|S_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloco|mux2_1|output~clkctrl_outclk\,
	asdata => \bloco|shift8|S_Q~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|shift8|S_Q\(1));

-- Location: LCCOMB_X92_Y51_N0
\bloco|shift8|S_Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q~0_combout\ = (\KEY[1]~input_o\ & ((\bloco|flop|q~q\ & ((\bloco|shift8|S_Q\(1)))) # (!\bloco|flop|q~q\ & (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \bloco|flop|q~q\,
	datac => \bloco|shift8|S_Q\(1),
	datad => \KEY[1]~input_o\,
	combout => \bloco|shift8|S_Q~0_combout\);

-- Location: LCCOMB_X92_Y51_N16
\bloco|shift8|S_Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco|shift8|S_Q[0]~feeder_combout\ = \bloco|shift8|S_Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco|shift8|S_Q~0_combout\,
	combout => \bloco|shift8|S_Q[0]~feeder_combout\);

-- Location: FF_X92_Y51_N17
\bloco|shift8|S_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bloco|mux2_1|output~clkctrl_outclk\,
	d => \bloco|shift8|S_Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco|shift8|S_Q\(0));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


