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

-- DATE "04/18/2023 11:38:06"

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

ENTITY 	Shift_Reg8_Demo IS
    PORT (
	SIN : IN std_logic;
	dataOut : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	sel : IN std_logic;
	reset : IN std_logic
	);
END Shift_Reg8_Demo;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[4]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[6]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[7]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIN	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Shift_Reg8_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SIN : std_logic;
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_sel : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \divider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \divider|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \divider|s_divCounter[18]~63\ : std_logic;
SIGNAL \divider|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \divider|s_divCounter[19]~65\ : std_logic;
SIGNAL \divider|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \divider|s_divCounter[20]~67\ : std_logic;
SIGNAL \divider|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \divider|s_divCounter[21]~69\ : std_logic;
SIGNAL \divider|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \divider|s_divCounter[22]~71\ : std_logic;
SIGNAL \divider|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \divider|LessThan0~4_combout\ : std_logic;
SIGNAL \divider|s_divCounter[23]~73\ : std_logic;
SIGNAL \divider|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \divider|s_divCounter[24]~75\ : std_logic;
SIGNAL \divider|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \divider|clkOut~4_combout\ : std_logic;
SIGNAL \divider|LessThan0~5_combout\ : std_logic;
SIGNAL \divider|clkOut~3_combout\ : std_logic;
SIGNAL \divider|LessThan0~0_combout\ : std_logic;
SIGNAL \divider|clkOut~0_combout\ : std_logic;
SIGNAL \divider|clkOut~1_combout\ : std_logic;
SIGNAL \divider|LessThan0~1_combout\ : std_logic;
SIGNAL \divider|LessThan0~6_combout\ : std_logic;
SIGNAL \divider|s_divCounter[0]~27\ : std_logic;
SIGNAL \divider|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \divider|s_divCounter[1]~29\ : std_logic;
SIGNAL \divider|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \divider|s_divCounter[2]~31\ : std_logic;
SIGNAL \divider|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \divider|s_divCounter[3]~33\ : std_logic;
SIGNAL \divider|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \divider|s_divCounter[4]~35\ : std_logic;
SIGNAL \divider|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \divider|s_divCounter[5]~37\ : std_logic;
SIGNAL \divider|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \divider|s_divCounter[6]~39\ : std_logic;
SIGNAL \divider|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \divider|s_divCounter[7]~41\ : std_logic;
SIGNAL \divider|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \divider|s_divCounter[8]~43\ : std_logic;
SIGNAL \divider|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \divider|s_divCounter[9]~45\ : std_logic;
SIGNAL \divider|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \divider|s_divCounter[10]~47\ : std_logic;
SIGNAL \divider|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \divider|s_divCounter[11]~49\ : std_logic;
SIGNAL \divider|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \divider|s_divCounter[12]~51\ : std_logic;
SIGNAL \divider|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \divider|s_divCounter[13]~53\ : std_logic;
SIGNAL \divider|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \divider|s_divCounter[14]~55\ : std_logic;
SIGNAL \divider|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \divider|s_divCounter[15]~57\ : std_logic;
SIGNAL \divider|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \divider|s_divCounter[16]~59\ : std_logic;
SIGNAL \divider|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \divider|s_divCounter[17]~61\ : std_logic;
SIGNAL \divider|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \divider|LessThan0~2_combout\ : std_logic;
SIGNAL \divider|LessThan0~3_combout\ : std_logic;
SIGNAL \divider|clkOut~2_combout\ : std_logic;
SIGNAL \divider|clkOut~5_combout\ : std_logic;
SIGNAL \divider|clkOut~6_combout\ : std_logic;
SIGNAL \divider|clkOut~7_combout\ : std_logic;
SIGNAL \divider|clkOut~8_combout\ : std_logic;
SIGNAL \divider|clkOut~9_combout\ : std_logic;
SIGNAL \divider|clkOut~q\ : std_logic;
SIGNAL \divider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \SIN~input_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \flop|q~0_combout\ : std_logic;
SIGNAL \flop|q~q\ : std_logic;
SIGNAL \shift8|S_Q~7_combout\ : std_logic;
SIGNAL \shift8|S_Q[7]~feeder_combout\ : std_logic;
SIGNAL \shift8|S_Q~6_combout\ : std_logic;
SIGNAL \shift8|S_Q~5_combout\ : std_logic;
SIGNAL \shift8|S_Q[5]~feeder_combout\ : std_logic;
SIGNAL \shift8|S_Q~4_combout\ : std_logic;
SIGNAL \shift8|S_Q[4]~feeder_combout\ : std_logic;
SIGNAL \shift8|S_Q~3_combout\ : std_logic;
SIGNAL \shift8|S_Q[3]~feeder_combout\ : std_logic;
SIGNAL \shift8|S_Q~2_combout\ : std_logic;
SIGNAL \shift8|S_Q[2]~feeder_combout\ : std_logic;
SIGNAL \shift8|S_Q~1_combout\ : std_logic;
SIGNAL \shift8|S_Q[1]~feeder_combout\ : std_logic;
SIGNAL \shift8|S_Q~0_combout\ : std_logic;
SIGNAL \shift8|S_Q[0]~feeder_combout\ : std_logic;
SIGNAL \divider|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \shift8|S_Q\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SIN <= SIN;
dataOut <= ww_dataOut;
ww_clk <= clk;
ww_sel <= sel;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divider|clkOut~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X105_Y73_N2
\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift8|S_Q\(0),
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift8|S_Q\(1),
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift8|S_Q\(2),
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift8|S_Q\(3),
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift8|S_Q\(4),
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift8|S_Q\(5),
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift8|S_Q\(6),
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift8|S_Q\(7),
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X102_Y61_N6
\divider|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[0]~26_combout\ = \divider|s_divCounter\(0) $ (VCC)
-- \divider|s_divCounter[0]~27\ = CARRY(\divider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(0),
	datad => VCC,
	combout => \divider|s_divCounter[0]~26_combout\,
	cout => \divider|s_divCounter[0]~27\);

-- Location: LCCOMB_X102_Y60_N10
\divider|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[18]~62_combout\ = (\divider|s_divCounter\(18) & (\divider|s_divCounter[17]~61\ $ (GND))) # (!\divider|s_divCounter\(18) & (!\divider|s_divCounter[17]~61\ & VCC))
-- \divider|s_divCounter[18]~63\ = CARRY((\divider|s_divCounter\(18) & !\divider|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(18),
	datad => VCC,
	cin => \divider|s_divCounter[17]~61\,
	combout => \divider|s_divCounter[18]~62_combout\,
	cout => \divider|s_divCounter[18]~63\);

-- Location: LCCOMB_X102_Y60_N12
\divider|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[19]~64_combout\ = (\divider|s_divCounter\(19) & (!\divider|s_divCounter[18]~63\)) # (!\divider|s_divCounter\(19) & ((\divider|s_divCounter[18]~63\) # (GND)))
-- \divider|s_divCounter[19]~65\ = CARRY((!\divider|s_divCounter[18]~63\) # (!\divider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(19),
	datad => VCC,
	cin => \divider|s_divCounter[18]~63\,
	combout => \divider|s_divCounter[19]~64_combout\,
	cout => \divider|s_divCounter[19]~65\);

-- Location: FF_X102_Y60_N13
\divider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[19]~64_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(19));

-- Location: LCCOMB_X102_Y60_N14
\divider|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[20]~66_combout\ = (\divider|s_divCounter\(20) & (\divider|s_divCounter[19]~65\ $ (GND))) # (!\divider|s_divCounter\(20) & (!\divider|s_divCounter[19]~65\ & VCC))
-- \divider|s_divCounter[20]~67\ = CARRY((\divider|s_divCounter\(20) & !\divider|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(20),
	datad => VCC,
	cin => \divider|s_divCounter[19]~65\,
	combout => \divider|s_divCounter[20]~66_combout\,
	cout => \divider|s_divCounter[20]~67\);

-- Location: FF_X102_Y60_N15
\divider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[20]~66_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(20));

-- Location: LCCOMB_X102_Y60_N16
\divider|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[21]~68_combout\ = (\divider|s_divCounter\(21) & (!\divider|s_divCounter[20]~67\)) # (!\divider|s_divCounter\(21) & ((\divider|s_divCounter[20]~67\) # (GND)))
-- \divider|s_divCounter[21]~69\ = CARRY((!\divider|s_divCounter[20]~67\) # (!\divider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(21),
	datad => VCC,
	cin => \divider|s_divCounter[20]~67\,
	combout => \divider|s_divCounter[21]~68_combout\,
	cout => \divider|s_divCounter[21]~69\);

-- Location: FF_X102_Y60_N17
\divider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[21]~68_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(21));

-- Location: LCCOMB_X102_Y60_N18
\divider|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[22]~70_combout\ = (\divider|s_divCounter\(22) & (\divider|s_divCounter[21]~69\ $ (GND))) # (!\divider|s_divCounter\(22) & (!\divider|s_divCounter[21]~69\ & VCC))
-- \divider|s_divCounter[22]~71\ = CARRY((\divider|s_divCounter\(22) & !\divider|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(22),
	datad => VCC,
	cin => \divider|s_divCounter[21]~69\,
	combout => \divider|s_divCounter[22]~70_combout\,
	cout => \divider|s_divCounter[22]~71\);

-- Location: FF_X102_Y60_N19
\divider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[22]~70_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(22));

-- Location: LCCOMB_X102_Y60_N20
\divider|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[23]~72_combout\ = (\divider|s_divCounter\(23) & (!\divider|s_divCounter[22]~71\)) # (!\divider|s_divCounter\(23) & ((\divider|s_divCounter[22]~71\) # (GND)))
-- \divider|s_divCounter[23]~73\ = CARRY((!\divider|s_divCounter[22]~71\) # (!\divider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(23),
	datad => VCC,
	cin => \divider|s_divCounter[22]~71\,
	combout => \divider|s_divCounter[23]~72_combout\,
	cout => \divider|s_divCounter[23]~73\);

-- Location: FF_X102_Y60_N21
\divider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[23]~72_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(23));

-- Location: LCCOMB_X102_Y60_N30
\divider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~4_combout\ = ((!\divider|s_divCounter\(18) & !\divider|s_divCounter\(17))) # (!\divider|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(18),
	datac => \divider|s_divCounter\(17),
	datad => \divider|s_divCounter\(23),
	combout => \divider|LessThan0~4_combout\);

-- Location: LCCOMB_X102_Y60_N22
\divider|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[24]~74_combout\ = (\divider|s_divCounter\(24) & (\divider|s_divCounter[23]~73\ $ (GND))) # (!\divider|s_divCounter\(24) & (!\divider|s_divCounter[23]~73\ & VCC))
-- \divider|s_divCounter[24]~75\ = CARRY((\divider|s_divCounter\(24) & !\divider|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(24),
	datad => VCC,
	cin => \divider|s_divCounter[23]~73\,
	combout => \divider|s_divCounter[24]~74_combout\,
	cout => \divider|s_divCounter[24]~75\);

-- Location: FF_X102_Y60_N23
\divider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[24]~74_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(24));

-- Location: LCCOMB_X102_Y60_N24
\divider|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[25]~76_combout\ = \divider|s_divCounter[24]~75\ $ (\divider|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divider|s_divCounter\(25),
	cin => \divider|s_divCounter[24]~75\,
	combout => \divider|s_divCounter[25]~76_combout\);

-- Location: FF_X102_Y60_N25
\divider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[25]~76_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(25));

-- Location: LCCOMB_X102_Y60_N28
\divider|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~4_combout\ = (\divider|s_divCounter\(19) & (\divider|s_divCounter\(21) & (\divider|s_divCounter\(20) & \divider|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(19),
	datab => \divider|s_divCounter\(21),
	datac => \divider|s_divCounter\(20),
	datad => \divider|s_divCounter\(22),
	combout => \divider|clkOut~4_combout\);

-- Location: LCCOMB_X103_Y61_N26
\divider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~5_combout\ = ((!\divider|s_divCounter\(24) & ((\divider|LessThan0~4_combout\) # (!\divider|clkOut~4_combout\)))) # (!\divider|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|LessThan0~4_combout\,
	datab => \divider|s_divCounter\(25),
	datac => \divider|s_divCounter\(24),
	datad => \divider|clkOut~4_combout\,
	combout => \divider|LessThan0~5_combout\);

-- Location: LCCOMB_X102_Y61_N4
\divider|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~3_combout\ = (!\divider|s_divCounter\(8) & (!\divider|s_divCounter\(7) & (!\divider|s_divCounter\(10) & !\divider|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(8),
	datab => \divider|s_divCounter\(7),
	datac => \divider|s_divCounter\(10),
	datad => \divider|s_divCounter\(9),
	combout => \divider|clkOut~3_combout\);

-- Location: LCCOMB_X103_Y61_N14
\divider|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~0_combout\ = (!\divider|s_divCounter\(16) & (!\divider|s_divCounter\(11) & (!\divider|s_divCounter\(24) & !\divider|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(16),
	datab => \divider|s_divCounter\(11),
	datac => \divider|s_divCounter\(24),
	datad => \divider|s_divCounter\(18),
	combout => \divider|LessThan0~0_combout\);

-- Location: LCCOMB_X102_Y61_N0
\divider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~0_combout\ = (\divider|s_divCounter\(3) & (\divider|s_divCounter\(1) & (\divider|s_divCounter\(0) & \divider|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(3),
	datab => \divider|s_divCounter\(1),
	datac => \divider|s_divCounter\(0),
	datad => \divider|s_divCounter\(2),
	combout => \divider|clkOut~0_combout\);

-- Location: LCCOMB_X102_Y61_N2
\divider|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~1_combout\ = (\divider|s_divCounter\(5) & (\divider|s_divCounter\(4) & \divider|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(5),
	datac => \divider|s_divCounter\(4),
	datad => \divider|clkOut~0_combout\,
	combout => \divider|clkOut~1_combout\);

-- Location: LCCOMB_X103_Y61_N24
\divider|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~1_combout\ = (\divider|clkOut~3_combout\ & (\divider|LessThan0~0_combout\ & ((!\divider|clkOut~1_combout\) # (!\divider|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(6),
	datab => \divider|clkOut~3_combout\,
	datac => \divider|LessThan0~0_combout\,
	datad => \divider|clkOut~1_combout\,
	combout => \divider|LessThan0~1_combout\);

-- Location: LCCOMB_X103_Y61_N18
\divider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~6_combout\ = (!\divider|LessThan0~3_combout\ & (!\divider|LessThan0~5_combout\ & !\divider|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|LessThan0~3_combout\,
	datac => \divider|LessThan0~5_combout\,
	datad => \divider|LessThan0~1_combout\,
	combout => \divider|LessThan0~6_combout\);

-- Location: FF_X102_Y61_N7
\divider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[0]~26_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(0));

-- Location: LCCOMB_X102_Y61_N8
\divider|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[1]~28_combout\ = (\divider|s_divCounter\(1) & (!\divider|s_divCounter[0]~27\)) # (!\divider|s_divCounter\(1) & ((\divider|s_divCounter[0]~27\) # (GND)))
-- \divider|s_divCounter[1]~29\ = CARRY((!\divider|s_divCounter[0]~27\) # (!\divider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(1),
	datad => VCC,
	cin => \divider|s_divCounter[0]~27\,
	combout => \divider|s_divCounter[1]~28_combout\,
	cout => \divider|s_divCounter[1]~29\);

-- Location: FF_X102_Y61_N9
\divider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[1]~28_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(1));

-- Location: LCCOMB_X102_Y61_N10
\divider|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[2]~30_combout\ = (\divider|s_divCounter\(2) & (\divider|s_divCounter[1]~29\ $ (GND))) # (!\divider|s_divCounter\(2) & (!\divider|s_divCounter[1]~29\ & VCC))
-- \divider|s_divCounter[2]~31\ = CARRY((\divider|s_divCounter\(2) & !\divider|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(2),
	datad => VCC,
	cin => \divider|s_divCounter[1]~29\,
	combout => \divider|s_divCounter[2]~30_combout\,
	cout => \divider|s_divCounter[2]~31\);

-- Location: FF_X102_Y61_N11
\divider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[2]~30_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(2));

-- Location: LCCOMB_X102_Y61_N12
\divider|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[3]~32_combout\ = (\divider|s_divCounter\(3) & (!\divider|s_divCounter[2]~31\)) # (!\divider|s_divCounter\(3) & ((\divider|s_divCounter[2]~31\) # (GND)))
-- \divider|s_divCounter[3]~33\ = CARRY((!\divider|s_divCounter[2]~31\) # (!\divider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(3),
	datad => VCC,
	cin => \divider|s_divCounter[2]~31\,
	combout => \divider|s_divCounter[3]~32_combout\,
	cout => \divider|s_divCounter[3]~33\);

-- Location: FF_X102_Y61_N13
\divider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[3]~32_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(3));

-- Location: LCCOMB_X102_Y61_N14
\divider|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[4]~34_combout\ = (\divider|s_divCounter\(4) & (\divider|s_divCounter[3]~33\ $ (GND))) # (!\divider|s_divCounter\(4) & (!\divider|s_divCounter[3]~33\ & VCC))
-- \divider|s_divCounter[4]~35\ = CARRY((\divider|s_divCounter\(4) & !\divider|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(4),
	datad => VCC,
	cin => \divider|s_divCounter[3]~33\,
	combout => \divider|s_divCounter[4]~34_combout\,
	cout => \divider|s_divCounter[4]~35\);

-- Location: FF_X102_Y61_N15
\divider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[4]~34_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(4));

-- Location: LCCOMB_X102_Y61_N16
\divider|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[5]~36_combout\ = (\divider|s_divCounter\(5) & (!\divider|s_divCounter[4]~35\)) # (!\divider|s_divCounter\(5) & ((\divider|s_divCounter[4]~35\) # (GND)))
-- \divider|s_divCounter[5]~37\ = CARRY((!\divider|s_divCounter[4]~35\) # (!\divider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(5),
	datad => VCC,
	cin => \divider|s_divCounter[4]~35\,
	combout => \divider|s_divCounter[5]~36_combout\,
	cout => \divider|s_divCounter[5]~37\);

-- Location: FF_X102_Y61_N17
\divider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[5]~36_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(5));

-- Location: LCCOMB_X102_Y61_N18
\divider|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[6]~38_combout\ = (\divider|s_divCounter\(6) & (\divider|s_divCounter[5]~37\ $ (GND))) # (!\divider|s_divCounter\(6) & (!\divider|s_divCounter[5]~37\ & VCC))
-- \divider|s_divCounter[6]~39\ = CARRY((\divider|s_divCounter\(6) & !\divider|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(6),
	datad => VCC,
	cin => \divider|s_divCounter[5]~37\,
	combout => \divider|s_divCounter[6]~38_combout\,
	cout => \divider|s_divCounter[6]~39\);

-- Location: FF_X102_Y61_N19
\divider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[6]~38_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(6));

-- Location: LCCOMB_X102_Y61_N20
\divider|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[7]~40_combout\ = (\divider|s_divCounter\(7) & (!\divider|s_divCounter[6]~39\)) # (!\divider|s_divCounter\(7) & ((\divider|s_divCounter[6]~39\) # (GND)))
-- \divider|s_divCounter[7]~41\ = CARRY((!\divider|s_divCounter[6]~39\) # (!\divider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(7),
	datad => VCC,
	cin => \divider|s_divCounter[6]~39\,
	combout => \divider|s_divCounter[7]~40_combout\,
	cout => \divider|s_divCounter[7]~41\);

-- Location: FF_X102_Y61_N21
\divider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[7]~40_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(7));

-- Location: LCCOMB_X102_Y61_N22
\divider|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[8]~42_combout\ = (\divider|s_divCounter\(8) & (\divider|s_divCounter[7]~41\ $ (GND))) # (!\divider|s_divCounter\(8) & (!\divider|s_divCounter[7]~41\ & VCC))
-- \divider|s_divCounter[8]~43\ = CARRY((\divider|s_divCounter\(8) & !\divider|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(8),
	datad => VCC,
	cin => \divider|s_divCounter[7]~41\,
	combout => \divider|s_divCounter[8]~42_combout\,
	cout => \divider|s_divCounter[8]~43\);

-- Location: FF_X102_Y61_N23
\divider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[8]~42_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(8));

-- Location: LCCOMB_X102_Y61_N24
\divider|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[9]~44_combout\ = (\divider|s_divCounter\(9) & (!\divider|s_divCounter[8]~43\)) # (!\divider|s_divCounter\(9) & ((\divider|s_divCounter[8]~43\) # (GND)))
-- \divider|s_divCounter[9]~45\ = CARRY((!\divider|s_divCounter[8]~43\) # (!\divider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(9),
	datad => VCC,
	cin => \divider|s_divCounter[8]~43\,
	combout => \divider|s_divCounter[9]~44_combout\,
	cout => \divider|s_divCounter[9]~45\);

-- Location: FF_X102_Y61_N25
\divider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[9]~44_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(9));

-- Location: LCCOMB_X102_Y61_N26
\divider|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[10]~46_combout\ = (\divider|s_divCounter\(10) & (\divider|s_divCounter[9]~45\ $ (GND))) # (!\divider|s_divCounter\(10) & (!\divider|s_divCounter[9]~45\ & VCC))
-- \divider|s_divCounter[10]~47\ = CARRY((\divider|s_divCounter\(10) & !\divider|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(10),
	datad => VCC,
	cin => \divider|s_divCounter[9]~45\,
	combout => \divider|s_divCounter[10]~46_combout\,
	cout => \divider|s_divCounter[10]~47\);

-- Location: FF_X102_Y61_N27
\divider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[10]~46_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(10));

-- Location: LCCOMB_X102_Y61_N28
\divider|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[11]~48_combout\ = (\divider|s_divCounter\(11) & (!\divider|s_divCounter[10]~47\)) # (!\divider|s_divCounter\(11) & ((\divider|s_divCounter[10]~47\) # (GND)))
-- \divider|s_divCounter[11]~49\ = CARRY((!\divider|s_divCounter[10]~47\) # (!\divider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(11),
	datad => VCC,
	cin => \divider|s_divCounter[10]~47\,
	combout => \divider|s_divCounter[11]~48_combout\,
	cout => \divider|s_divCounter[11]~49\);

-- Location: FF_X102_Y61_N29
\divider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[11]~48_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(11));

-- Location: LCCOMB_X102_Y61_N30
\divider|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[12]~50_combout\ = (\divider|s_divCounter\(12) & (\divider|s_divCounter[11]~49\ $ (GND))) # (!\divider|s_divCounter\(12) & (!\divider|s_divCounter[11]~49\ & VCC))
-- \divider|s_divCounter[12]~51\ = CARRY((\divider|s_divCounter\(12) & !\divider|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(12),
	datad => VCC,
	cin => \divider|s_divCounter[11]~49\,
	combout => \divider|s_divCounter[12]~50_combout\,
	cout => \divider|s_divCounter[12]~51\);

-- Location: FF_X102_Y61_N31
\divider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[12]~50_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(12));

-- Location: LCCOMB_X102_Y60_N0
\divider|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[13]~52_combout\ = (\divider|s_divCounter\(13) & (!\divider|s_divCounter[12]~51\)) # (!\divider|s_divCounter\(13) & ((\divider|s_divCounter[12]~51\) # (GND)))
-- \divider|s_divCounter[13]~53\ = CARRY((!\divider|s_divCounter[12]~51\) # (!\divider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(13),
	datad => VCC,
	cin => \divider|s_divCounter[12]~51\,
	combout => \divider|s_divCounter[13]~52_combout\,
	cout => \divider|s_divCounter[13]~53\);

-- Location: FF_X103_Y61_N5
\divider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \divider|s_divCounter[13]~52_combout\,
	sclr => \divider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(13));

-- Location: LCCOMB_X102_Y60_N2
\divider|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[14]~54_combout\ = (\divider|s_divCounter\(14) & (\divider|s_divCounter[13]~53\ $ (GND))) # (!\divider|s_divCounter\(14) & (!\divider|s_divCounter[13]~53\ & VCC))
-- \divider|s_divCounter[14]~55\ = CARRY((\divider|s_divCounter\(14) & !\divider|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(14),
	datad => VCC,
	cin => \divider|s_divCounter[13]~53\,
	combout => \divider|s_divCounter[14]~54_combout\,
	cout => \divider|s_divCounter[14]~55\);

-- Location: FF_X103_Y61_N23
\divider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \divider|s_divCounter[14]~54_combout\,
	sclr => \divider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(14));

-- Location: LCCOMB_X102_Y60_N4
\divider|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[15]~56_combout\ = (\divider|s_divCounter\(15) & (!\divider|s_divCounter[14]~55\)) # (!\divider|s_divCounter\(15) & ((\divider|s_divCounter[14]~55\) # (GND)))
-- \divider|s_divCounter[15]~57\ = CARRY((!\divider|s_divCounter[14]~55\) # (!\divider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(15),
	datad => VCC,
	cin => \divider|s_divCounter[14]~55\,
	combout => \divider|s_divCounter[15]~56_combout\,
	cout => \divider|s_divCounter[15]~57\);

-- Location: FF_X103_Y61_N29
\divider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \divider|s_divCounter[15]~56_combout\,
	sclr => \divider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(15));

-- Location: LCCOMB_X102_Y60_N6
\divider|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[16]~58_combout\ = (\divider|s_divCounter\(16) & (\divider|s_divCounter[15]~57\ $ (GND))) # (!\divider|s_divCounter\(16) & (!\divider|s_divCounter[15]~57\ & VCC))
-- \divider|s_divCounter[16]~59\ = CARRY((\divider|s_divCounter\(16) & !\divider|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(16),
	datad => VCC,
	cin => \divider|s_divCounter[15]~57\,
	combout => \divider|s_divCounter[16]~58_combout\,
	cout => \divider|s_divCounter[16]~59\);

-- Location: FF_X102_Y60_N7
\divider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[16]~58_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(16));

-- Location: LCCOMB_X102_Y60_N8
\divider|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|s_divCounter[17]~60_combout\ = (\divider|s_divCounter\(17) & (!\divider|s_divCounter[16]~59\)) # (!\divider|s_divCounter\(17) & ((\divider|s_divCounter[16]~59\) # (GND)))
-- \divider|s_divCounter[17]~61\ = CARRY((!\divider|s_divCounter[16]~59\) # (!\divider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|s_divCounter\(17),
	datad => VCC,
	cin => \divider|s_divCounter[16]~59\,
	combout => \divider|s_divCounter[17]~60_combout\,
	cout => \divider|s_divCounter[17]~61\);

-- Location: FF_X102_Y60_N9
\divider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[17]~60_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(17));

-- Location: FF_X102_Y60_N11
\divider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|s_divCounter[18]~62_combout\,
	sclr => \divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|s_divCounter\(18));

-- Location: LCCOMB_X103_Y61_N2
\divider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~2_combout\ = (((!\divider|s_divCounter\(12)) # (!\divider|s_divCounter\(15))) # (!\divider|s_divCounter\(13))) # (!\divider|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(14),
	datab => \divider|s_divCounter\(13),
	datac => \divider|s_divCounter\(15),
	datad => \divider|s_divCounter\(12),
	combout => \divider|LessThan0~2_combout\);

-- Location: LCCOMB_X103_Y61_N6
\divider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|LessThan0~3_combout\ = (!\divider|s_divCounter\(18) & (!\divider|s_divCounter\(24) & (!\divider|s_divCounter\(16) & \divider|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(18),
	datab => \divider|s_divCounter\(24),
	datac => \divider|s_divCounter\(16),
	datad => \divider|LessThan0~2_combout\,
	combout => \divider|LessThan0~3_combout\);

-- Location: LCCOMB_X102_Y60_N26
\divider|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~2_combout\ = (\divider|s_divCounter\(18) & (!\divider|s_divCounter\(23) & (\divider|s_divCounter\(24) & !\divider|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(18),
	datab => \divider|s_divCounter\(23),
	datac => \divider|s_divCounter\(24),
	datad => \divider|s_divCounter\(25),
	combout => \divider|clkOut~2_combout\);

-- Location: LCCOMB_X103_Y61_N10
\divider|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~5_combout\ = (!\divider|s_divCounter\(15) & (\divider|s_divCounter\(11) & (\divider|s_divCounter\(16) & !\divider|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(15),
	datab => \divider|s_divCounter\(11),
	datac => \divider|s_divCounter\(16),
	datad => \divider|s_divCounter\(17),
	combout => \divider|clkOut~5_combout\);

-- Location: LCCOMB_X103_Y61_N20
\divider|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~6_combout\ = (\divider|s_divCounter\(14) & (!\divider|s_divCounter\(6) & (\divider|s_divCounter\(13) & \divider|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(14),
	datab => \divider|s_divCounter\(6),
	datac => \divider|s_divCounter\(13),
	datad => \divider|clkOut~5_combout\,
	combout => \divider|clkOut~6_combout\);

-- Location: LCCOMB_X103_Y61_N30
\divider|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~7_combout\ = (\divider|s_divCounter\(12) & (\divider|clkOut~3_combout\ & (\divider|clkOut~4_combout\ & \divider|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|s_divCounter\(12),
	datab => \divider|clkOut~3_combout\,
	datac => \divider|clkOut~4_combout\,
	datad => \divider|clkOut~6_combout\,
	combout => \divider|clkOut~7_combout\);

-- Location: LCCOMB_X103_Y61_N12
\divider|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~8_combout\ = (\divider|clkOut~q\) # ((\divider|clkOut~1_combout\ & (\divider|clkOut~2_combout\ & \divider|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|clkOut~1_combout\,
	datab => \divider|clkOut~2_combout\,
	datac => \divider|clkOut~7_combout\,
	datad => \divider|clkOut~q\,
	combout => \divider|clkOut~8_combout\);

-- Location: LCCOMB_X103_Y61_N16
\divider|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|clkOut~9_combout\ = (\divider|clkOut~8_combout\ & ((\divider|LessThan0~3_combout\) # ((\divider|LessThan0~1_combout\) # (\divider|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|LessThan0~3_combout\,
	datab => \divider|LessThan0~1_combout\,
	datac => \divider|LessThan0~5_combout\,
	datad => \divider|clkOut~8_combout\,
	combout => \divider|clkOut~9_combout\);

-- Location: FF_X103_Y61_N17
\divider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|clkOut~q\);

-- Location: CLKCTRL_G9
\divider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divider|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X107_Y73_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\SIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIN,
	o => \SIN~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: LCCOMB_X107_Y72_N28
\flop|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flop|q~0_combout\ = !\flop|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flop|q~q\,
	combout => \flop|q~0_combout\);

-- Location: FF_X107_Y72_N29
\flop|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sel~input_o\,
	d => \flop|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flop|q~q\);

-- Location: LCCOMB_X107_Y72_N4
\shift8|S_Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q~7_combout\ = (!\reset~input_o\ & ((\flop|q~q\ & ((\shift8|S_Q\(6)))) # (!\flop|q~q\ & (\SIN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \SIN~input_o\,
	datac => \shift8|S_Q\(6),
	datad => \flop|q~q\,
	combout => \shift8|S_Q~7_combout\);

-- Location: LCCOMB_X107_Y72_N18
\shift8|S_Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q[7]~feeder_combout\ = \shift8|S_Q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shift8|S_Q~7_combout\,
	combout => \shift8|S_Q[7]~feeder_combout\);

-- Location: FF_X107_Y72_N19
\shift8|S_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clkOut~clkctrl_outclk\,
	d => \shift8|S_Q[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift8|S_Q\(7));

-- Location: LCCOMB_X107_Y72_N30
\shift8|S_Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q~6_combout\ = (!\reset~input_o\ & ((\flop|q~q\ & (\shift8|S_Q\(5))) # (!\flop|q~q\ & ((\shift8|S_Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flop|q~q\,
	datab => \reset~input_o\,
	datac => \shift8|S_Q\(5),
	datad => \shift8|S_Q\(7),
	combout => \shift8|S_Q~6_combout\);

-- Location: FF_X107_Y72_N5
\shift8|S_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clkOut~clkctrl_outclk\,
	asdata => \shift8|S_Q~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift8|S_Q\(6));

-- Location: LCCOMB_X107_Y72_N24
\shift8|S_Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q~5_combout\ = (!\reset~input_o\ & ((\flop|q~q\ & ((\shift8|S_Q\(4)))) # (!\flop|q~q\ & (\shift8|S_Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \flop|q~q\,
	datac => \shift8|S_Q\(6),
	datad => \shift8|S_Q\(4),
	combout => \shift8|S_Q~5_combout\);

-- Location: LCCOMB_X107_Y72_N26
\shift8|S_Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q[5]~feeder_combout\ = \shift8|S_Q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift8|S_Q~5_combout\,
	combout => \shift8|S_Q[5]~feeder_combout\);

-- Location: FF_X107_Y72_N27
\shift8|S_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clkOut~clkctrl_outclk\,
	d => \shift8|S_Q[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift8|S_Q\(5));

-- Location: LCCOMB_X107_Y72_N22
\shift8|S_Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q~4_combout\ = (!\reset~input_o\ & ((\flop|q~q\ & ((\shift8|S_Q\(3)))) # (!\flop|q~q\ & (\shift8|S_Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \flop|q~q\,
	datac => \shift8|S_Q\(5),
	datad => \shift8|S_Q\(3),
	combout => \shift8|S_Q~4_combout\);

-- Location: LCCOMB_X107_Y72_N0
\shift8|S_Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q[4]~feeder_combout\ = \shift8|S_Q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift8|S_Q~4_combout\,
	combout => \shift8|S_Q[4]~feeder_combout\);

-- Location: FF_X107_Y72_N1
\shift8|S_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clkOut~clkctrl_outclk\,
	d => \shift8|S_Q[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift8|S_Q\(4));

-- Location: LCCOMB_X107_Y72_N20
\shift8|S_Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q~3_combout\ = (!\reset~input_o\ & ((\flop|q~q\ & ((\shift8|S_Q\(2)))) # (!\flop|q~q\ & (\shift8|S_Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \shift8|S_Q\(4),
	datac => \flop|q~q\,
	datad => \shift8|S_Q\(2),
	combout => \shift8|S_Q~3_combout\);

-- Location: LCCOMB_X107_Y72_N14
\shift8|S_Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q[3]~feeder_combout\ = \shift8|S_Q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift8|S_Q~3_combout\,
	combout => \shift8|S_Q[3]~feeder_combout\);

-- Location: FF_X107_Y72_N15
\shift8|S_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clkOut~clkctrl_outclk\,
	d => \shift8|S_Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift8|S_Q\(3));

-- Location: LCCOMB_X107_Y72_N10
\shift8|S_Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q~2_combout\ = (!\reset~input_o\ & ((\flop|q~q\ & ((\shift8|S_Q\(1)))) # (!\flop|q~q\ & (\shift8|S_Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \flop|q~q\,
	datac => \shift8|S_Q\(3),
	datad => \shift8|S_Q\(1),
	combout => \shift8|S_Q~2_combout\);

-- Location: LCCOMB_X107_Y72_N12
\shift8|S_Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q[2]~feeder_combout\ = \shift8|S_Q~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift8|S_Q~2_combout\,
	combout => \shift8|S_Q[2]~feeder_combout\);

-- Location: FF_X107_Y72_N13
\shift8|S_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clkOut~clkctrl_outclk\,
	d => \shift8|S_Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift8|S_Q\(2));

-- Location: LCCOMB_X107_Y72_N16
\shift8|S_Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q~1_combout\ = (!\reset~input_o\ & ((\flop|q~q\ & (\shift8|S_Q\(0))) # (!\flop|q~q\ & ((\shift8|S_Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \flop|q~q\,
	datac => \shift8|S_Q\(0),
	datad => \shift8|S_Q\(2),
	combout => \shift8|S_Q~1_combout\);

-- Location: LCCOMB_X107_Y72_N2
\shift8|S_Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q[1]~feeder_combout\ = \shift8|S_Q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift8|S_Q~1_combout\,
	combout => \shift8|S_Q[1]~feeder_combout\);

-- Location: FF_X107_Y72_N3
\shift8|S_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clkOut~clkctrl_outclk\,
	d => \shift8|S_Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift8|S_Q\(1));

-- Location: LCCOMB_X107_Y72_N6
\shift8|S_Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q~0_combout\ = (!\reset~input_o\ & ((\flop|q~q\ & (\SIN~input_o\)) # (!\flop|q~q\ & ((\shift8|S_Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \SIN~input_o\,
	datac => \flop|q~q\,
	datad => \shift8|S_Q\(1),
	combout => \shift8|S_Q~0_combout\);

-- Location: LCCOMB_X107_Y72_N8
\shift8|S_Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift8|S_Q[0]~feeder_combout\ = \shift8|S_Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift8|S_Q~0_combout\,
	combout => \shift8|S_Q[0]~feeder_combout\);

-- Location: FF_X107_Y72_N9
\shift8|S_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clkOut~clkctrl_outclk\,
	d => \shift8|S_Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift8|S_Q\(0));

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;


