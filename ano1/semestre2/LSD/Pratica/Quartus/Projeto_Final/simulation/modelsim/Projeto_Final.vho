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

-- DATE "06/04/2023 21:01:37"

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

ENTITY 	Final IS
    PORT (
	CLOCK_50 : IN std_logic;
	reset : IN std_logic;
	pao : IN std_logic;
	staStop : IN std_logic;
	red : BUFFER std_logic;
	green : BUFFER std_logic_vector(2 DOWNTO 0);
	display0 : BUFFER std_logic_vector(6 DOWNTO 0);
	display1 : BUFFER std_logic_vector(6 DOWNTO 0);
	display2 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Final;

-- Design Ports Information
-- red	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[0]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[6]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pao	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- staStop	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_pao : std_logic;
SIGNAL ww_staStop : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_green : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_display0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkdiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \red~output_o\ : std_logic;
SIGNAL \green[0]~output_o\ : std_logic;
SIGNAL \green[1]~output_o\ : std_logic;
SIGNAL \green[2]~output_o\ : std_logic;
SIGNAL \display0[0]~output_o\ : std_logic;
SIGNAL \display0[1]~output_o\ : std_logic;
SIGNAL \display0[2]~output_o\ : std_logic;
SIGNAL \display0[3]~output_o\ : std_logic;
SIGNAL \display0[4]~output_o\ : std_logic;
SIGNAL \display0[5]~output_o\ : std_logic;
SIGNAL \display0[6]~output_o\ : std_logic;
SIGNAL \display1[0]~output_o\ : std_logic;
SIGNAL \display1[1]~output_o\ : std_logic;
SIGNAL \display1[2]~output_o\ : std_logic;
SIGNAL \display1[3]~output_o\ : std_logic;
SIGNAL \display1[4]~output_o\ : std_logic;
SIGNAL \display1[5]~output_o\ : std_logic;
SIGNAL \display1[6]~output_o\ : std_logic;
SIGNAL \display2[0]~output_o\ : std_logic;
SIGNAL \display2[1]~output_o\ : std_logic;
SIGNAL \display2[2]~output_o\ : std_logic;
SIGNAL \display2[3]~output_o\ : std_logic;
SIGNAL \display2[4]~output_o\ : std_logic;
SIGNAL \display2[5]~output_o\ : std_logic;
SIGNAL \display2[6]~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdiv|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[4]~35\ : std_logic;
SIGNAL \clkdiv|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[5]~37\ : std_logic;
SIGNAL \clkdiv|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[6]~39\ : std_logic;
SIGNAL \clkdiv|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[7]~41\ : std_logic;
SIGNAL \clkdiv|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[8]~43\ : std_logic;
SIGNAL \clkdiv|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[9]~45\ : std_logic;
SIGNAL \clkdiv|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[10]~47\ : std_logic;
SIGNAL \clkdiv|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[11]~49\ : std_logic;
SIGNAL \clkdiv|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[12]~51\ : std_logic;
SIGNAL \clkdiv|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[13]~53\ : std_logic;
SIGNAL \clkdiv|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[14]~55\ : std_logic;
SIGNAL \clkdiv|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[15]~57\ : std_logic;
SIGNAL \clkdiv|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[16]~59\ : std_logic;
SIGNAL \clkdiv|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[17]~61\ : std_logic;
SIGNAL \clkdiv|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[18]~63\ : std_logic;
SIGNAL \clkdiv|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[19]~65\ : std_logic;
SIGNAL \clkdiv|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[20]~67\ : std_logic;
SIGNAL \clkdiv|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[21]~69\ : std_logic;
SIGNAL \clkdiv|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[22]~71\ : std_logic;
SIGNAL \clkdiv|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[23]~73\ : std_logic;
SIGNAL \clkdiv|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[24]~75\ : std_logic;
SIGNAL \clkdiv|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \clkdiv|clkOut~4_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~4_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~5_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~2_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~3_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~6_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[0]~27\ : std_logic;
SIGNAL \clkdiv|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[1]~29\ : std_logic;
SIGNAL \clkdiv|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[2]~31\ : std_logic;
SIGNAL \clkdiv|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter[3]~33\ : std_logic;
SIGNAL \clkdiv|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \clkdiv|clkOut~0_combout\ : std_logic;
SIGNAL \clkdiv|clkOut~1_combout\ : std_logic;
SIGNAL \clkdiv|clkOut~3_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~0_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~1_combout\ : std_logic;
SIGNAL \clkdiv|clkOut~2_combout\ : std_logic;
SIGNAL \clkdiv|clkOut~5_combout\ : std_logic;
SIGNAL \clkdiv|clkOut~6_combout\ : std_logic;
SIGNAL \clkdiv|clkOut~7_combout\ : std_logic;
SIGNAL \clkdiv|clkOut~8_combout\ : std_logic;
SIGNAL \clkdiv|clkOut~9_combout\ : std_logic;
SIGNAL \clkdiv|clkOut~q\ : std_logic;
SIGNAL \clkdiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \staStop~input_o\ : std_logic;
SIGNAL \FFD|q~0_combout\ : std_logic;
SIGNAL \FFD|q~q\ : std_logic;
SIGNAL \FSM|reg_fstate.ama~0_combout\ : std_logic;
SIGNAL \FSM|fstate.ama~feeder_combout\ : std_logic;
SIGNAL \FSM|fstate.ama~q\ : std_logic;
SIGNAL \FSM|green[0]~0_combout\ : std_logic;
SIGNAL \FSM|fstate.lev~q\ : std_logic;
SIGNAL \FSM|green[1]~1_combout\ : std_logic;
SIGNAL \FSM|fstate.coz~q\ : std_logic;
SIGNAL \FSM|reg_fstate.clear~0_combout\ : std_logic;
SIGNAL \FSM|fstate.clear~feeder_combout\ : std_logic;
SIGNAL \FSM|fstate.clear~q\ : std_logic;
SIGNAL \FSM|enable~0_combout\ : std_logic;
SIGNAL \FSM|green[2]~2_combout\ : std_logic;
SIGNAL \pao~input_o\ : std_logic;
SIGNAL \decoder|decOut_n2[1]~0_combout\ : std_logic;
SIGNAL \clkdiv|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \decoder|ALT_INV_decOut_n2[1]~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_enable~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_reset <= reset;
ww_pao <= pao;
ww_staStop <= staStop;
red <= ww_red;
green <= ww_green;
display0 <= ww_display0;
display1 <= ww_display1;
display2 <= ww_display2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clkdiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkdiv|clkOut~q\);
\decoder|ALT_INV_decOut_n2[1]~0_combout\ <= NOT \decoder|decOut_n2[1]~0_combout\;
\FSM|ALT_INV_enable~0_combout\ <= NOT \FSM|enable~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y73_N23
\red~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|enable~0_combout\,
	devoe => ww_devoe,
	o => \red~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\green[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|green[0]~0_combout\,
	devoe => ww_devoe,
	o => \green[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\green[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|green[1]~1_combout\,
	devoe => ww_devoe,
	o => \green[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\green[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|green[2]~2_combout\,
	devoe => ww_devoe,
	o => \green[2]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\display0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display0[0]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\display0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_enable~0_combout\,
	devoe => ww_devoe,
	o => \display0[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\display0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_enable~0_combout\,
	devoe => ww_devoe,
	o => \display0[2]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\display0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display0[3]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\display0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_enable~0_combout\,
	devoe => ww_devoe,
	o => \display0[4]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\display0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_enable~0_combout\,
	devoe => ww_devoe,
	o => \display0[5]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\display0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display0[6]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\display1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display1[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\display1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_enable~0_combout\,
	devoe => ww_devoe,
	o => \display1[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\display1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_enable~0_combout\,
	devoe => ww_devoe,
	o => \display1[2]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\display1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display1[3]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\display1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_enable~0_combout\,
	devoe => ww_devoe,
	o => \display1[4]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\display1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_enable~0_combout\,
	devoe => ww_devoe,
	o => \display1[5]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\display1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display1[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\display2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display2[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\display2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decOut_n2[1]~0_combout\,
	devoe => ww_devoe,
	o => \display2[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\display2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decOut_n2[1]~0_combout\,
	devoe => ww_devoe,
	o => \display2[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\display2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|ALT_INV_decOut_n2[1]~0_combout\,
	devoe => ww_devoe,
	o => \display2[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\display2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_enable~0_combout\,
	devoe => ww_devoe,
	o => \display2[4]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\display2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_enable~0_combout\,
	devoe => ww_devoe,
	o => \display2[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\display2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decOut_n2[1]~0_combout\,
	devoe => ww_devoe,
	o => \display2[6]~output_o\);

-- Location: IOIBUF_X52_Y73_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

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

-- Location: LCCOMB_X66_Y7_N6
\clkdiv|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[0]~26_combout\ = \clkdiv|s_divCounter\(0) $ (VCC)
-- \clkdiv|s_divCounter[0]~27\ = CARRY(\clkdiv|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(0),
	datad => VCC,
	combout => \clkdiv|s_divCounter[0]~26_combout\,
	cout => \clkdiv|s_divCounter[0]~27\);

-- Location: LCCOMB_X66_Y7_N14
\clkdiv|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[4]~34_combout\ = (\clkdiv|s_divCounter\(4) & (\clkdiv|s_divCounter[3]~33\ $ (GND))) # (!\clkdiv|s_divCounter\(4) & (!\clkdiv|s_divCounter[3]~33\ & VCC))
-- \clkdiv|s_divCounter[4]~35\ = CARRY((\clkdiv|s_divCounter\(4) & !\clkdiv|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(4),
	datad => VCC,
	cin => \clkdiv|s_divCounter[3]~33\,
	combout => \clkdiv|s_divCounter[4]~34_combout\,
	cout => \clkdiv|s_divCounter[4]~35\);

-- Location: LCCOMB_X66_Y7_N16
\clkdiv|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[5]~36_combout\ = (\clkdiv|s_divCounter\(5) & (!\clkdiv|s_divCounter[4]~35\)) # (!\clkdiv|s_divCounter\(5) & ((\clkdiv|s_divCounter[4]~35\) # (GND)))
-- \clkdiv|s_divCounter[5]~37\ = CARRY((!\clkdiv|s_divCounter[4]~35\) # (!\clkdiv|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(5),
	datad => VCC,
	cin => \clkdiv|s_divCounter[4]~35\,
	combout => \clkdiv|s_divCounter[5]~36_combout\,
	cout => \clkdiv|s_divCounter[5]~37\);

-- Location: FF_X66_Y7_N17
\clkdiv|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[5]~36_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(5));

-- Location: LCCOMB_X66_Y7_N18
\clkdiv|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[6]~38_combout\ = (\clkdiv|s_divCounter\(6) & (\clkdiv|s_divCounter[5]~37\ $ (GND))) # (!\clkdiv|s_divCounter\(6) & (!\clkdiv|s_divCounter[5]~37\ & VCC))
-- \clkdiv|s_divCounter[6]~39\ = CARRY((\clkdiv|s_divCounter\(6) & !\clkdiv|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(6),
	datad => VCC,
	cin => \clkdiv|s_divCounter[5]~37\,
	combout => \clkdiv|s_divCounter[6]~38_combout\,
	cout => \clkdiv|s_divCounter[6]~39\);

-- Location: FF_X66_Y7_N19
\clkdiv|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[6]~38_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(6));

-- Location: LCCOMB_X66_Y7_N20
\clkdiv|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[7]~40_combout\ = (\clkdiv|s_divCounter\(7) & (!\clkdiv|s_divCounter[6]~39\)) # (!\clkdiv|s_divCounter\(7) & ((\clkdiv|s_divCounter[6]~39\) # (GND)))
-- \clkdiv|s_divCounter[7]~41\ = CARRY((!\clkdiv|s_divCounter[6]~39\) # (!\clkdiv|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(7),
	datad => VCC,
	cin => \clkdiv|s_divCounter[6]~39\,
	combout => \clkdiv|s_divCounter[7]~40_combout\,
	cout => \clkdiv|s_divCounter[7]~41\);

-- Location: FF_X66_Y7_N21
\clkdiv|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[7]~40_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(7));

-- Location: LCCOMB_X66_Y7_N22
\clkdiv|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[8]~42_combout\ = (\clkdiv|s_divCounter\(8) & (\clkdiv|s_divCounter[7]~41\ $ (GND))) # (!\clkdiv|s_divCounter\(8) & (!\clkdiv|s_divCounter[7]~41\ & VCC))
-- \clkdiv|s_divCounter[8]~43\ = CARRY((\clkdiv|s_divCounter\(8) & !\clkdiv|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(8),
	datad => VCC,
	cin => \clkdiv|s_divCounter[7]~41\,
	combout => \clkdiv|s_divCounter[8]~42_combout\,
	cout => \clkdiv|s_divCounter[8]~43\);

-- Location: FF_X66_Y7_N23
\clkdiv|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[8]~42_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(8));

-- Location: LCCOMB_X66_Y7_N24
\clkdiv|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[9]~44_combout\ = (\clkdiv|s_divCounter\(9) & (!\clkdiv|s_divCounter[8]~43\)) # (!\clkdiv|s_divCounter\(9) & ((\clkdiv|s_divCounter[8]~43\) # (GND)))
-- \clkdiv|s_divCounter[9]~45\ = CARRY((!\clkdiv|s_divCounter[8]~43\) # (!\clkdiv|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(9),
	datad => VCC,
	cin => \clkdiv|s_divCounter[8]~43\,
	combout => \clkdiv|s_divCounter[9]~44_combout\,
	cout => \clkdiv|s_divCounter[9]~45\);

-- Location: FF_X66_Y7_N25
\clkdiv|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[9]~44_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(9));

-- Location: LCCOMB_X66_Y7_N26
\clkdiv|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[10]~46_combout\ = (\clkdiv|s_divCounter\(10) & (\clkdiv|s_divCounter[9]~45\ $ (GND))) # (!\clkdiv|s_divCounter\(10) & (!\clkdiv|s_divCounter[9]~45\ & VCC))
-- \clkdiv|s_divCounter[10]~47\ = CARRY((\clkdiv|s_divCounter\(10) & !\clkdiv|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(10),
	datad => VCC,
	cin => \clkdiv|s_divCounter[9]~45\,
	combout => \clkdiv|s_divCounter[10]~46_combout\,
	cout => \clkdiv|s_divCounter[10]~47\);

-- Location: FF_X66_Y7_N27
\clkdiv|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[10]~46_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(10));

-- Location: LCCOMB_X66_Y7_N28
\clkdiv|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[11]~48_combout\ = (\clkdiv|s_divCounter\(11) & (!\clkdiv|s_divCounter[10]~47\)) # (!\clkdiv|s_divCounter\(11) & ((\clkdiv|s_divCounter[10]~47\) # (GND)))
-- \clkdiv|s_divCounter[11]~49\ = CARRY((!\clkdiv|s_divCounter[10]~47\) # (!\clkdiv|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(11),
	datad => VCC,
	cin => \clkdiv|s_divCounter[10]~47\,
	combout => \clkdiv|s_divCounter[11]~48_combout\,
	cout => \clkdiv|s_divCounter[11]~49\);

-- Location: FF_X66_Y7_N29
\clkdiv|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[11]~48_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(11));

-- Location: LCCOMB_X66_Y7_N30
\clkdiv|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[12]~50_combout\ = (\clkdiv|s_divCounter\(12) & (\clkdiv|s_divCounter[11]~49\ $ (GND))) # (!\clkdiv|s_divCounter\(12) & (!\clkdiv|s_divCounter[11]~49\ & VCC))
-- \clkdiv|s_divCounter[12]~51\ = CARRY((\clkdiv|s_divCounter\(12) & !\clkdiv|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(12),
	datad => VCC,
	cin => \clkdiv|s_divCounter[11]~49\,
	combout => \clkdiv|s_divCounter[12]~50_combout\,
	cout => \clkdiv|s_divCounter[12]~51\);

-- Location: FF_X66_Y7_N31
\clkdiv|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[12]~50_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(12));

-- Location: LCCOMB_X66_Y6_N0
\clkdiv|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[13]~52_combout\ = (\clkdiv|s_divCounter\(13) & (!\clkdiv|s_divCounter[12]~51\)) # (!\clkdiv|s_divCounter\(13) & ((\clkdiv|s_divCounter[12]~51\) # (GND)))
-- \clkdiv|s_divCounter[13]~53\ = CARRY((!\clkdiv|s_divCounter[12]~51\) # (!\clkdiv|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(13),
	datad => VCC,
	cin => \clkdiv|s_divCounter[12]~51\,
	combout => \clkdiv|s_divCounter[13]~52_combout\,
	cout => \clkdiv|s_divCounter[13]~53\);

-- Location: FF_X66_Y6_N1
\clkdiv|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[13]~52_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(13));

-- Location: LCCOMB_X66_Y6_N2
\clkdiv|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[14]~54_combout\ = (\clkdiv|s_divCounter\(14) & (\clkdiv|s_divCounter[13]~53\ $ (GND))) # (!\clkdiv|s_divCounter\(14) & (!\clkdiv|s_divCounter[13]~53\ & VCC))
-- \clkdiv|s_divCounter[14]~55\ = CARRY((\clkdiv|s_divCounter\(14) & !\clkdiv|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(14),
	datad => VCC,
	cin => \clkdiv|s_divCounter[13]~53\,
	combout => \clkdiv|s_divCounter[14]~54_combout\,
	cout => \clkdiv|s_divCounter[14]~55\);

-- Location: FF_X66_Y6_N3
\clkdiv|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[14]~54_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(14));

-- Location: LCCOMB_X66_Y6_N4
\clkdiv|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[15]~56_combout\ = (\clkdiv|s_divCounter\(15) & (!\clkdiv|s_divCounter[14]~55\)) # (!\clkdiv|s_divCounter\(15) & ((\clkdiv|s_divCounter[14]~55\) # (GND)))
-- \clkdiv|s_divCounter[15]~57\ = CARRY((!\clkdiv|s_divCounter[14]~55\) # (!\clkdiv|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(15),
	datad => VCC,
	cin => \clkdiv|s_divCounter[14]~55\,
	combout => \clkdiv|s_divCounter[15]~56_combout\,
	cout => \clkdiv|s_divCounter[15]~57\);

-- Location: FF_X66_Y6_N5
\clkdiv|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[15]~56_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(15));

-- Location: LCCOMB_X66_Y6_N6
\clkdiv|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[16]~58_combout\ = (\clkdiv|s_divCounter\(16) & (\clkdiv|s_divCounter[15]~57\ $ (GND))) # (!\clkdiv|s_divCounter\(16) & (!\clkdiv|s_divCounter[15]~57\ & VCC))
-- \clkdiv|s_divCounter[16]~59\ = CARRY((\clkdiv|s_divCounter\(16) & !\clkdiv|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(16),
	datad => VCC,
	cin => \clkdiv|s_divCounter[15]~57\,
	combout => \clkdiv|s_divCounter[16]~58_combout\,
	cout => \clkdiv|s_divCounter[16]~59\);

-- Location: FF_X66_Y6_N7
\clkdiv|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[16]~58_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(16));

-- Location: LCCOMB_X66_Y6_N8
\clkdiv|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[17]~60_combout\ = (\clkdiv|s_divCounter\(17) & (!\clkdiv|s_divCounter[16]~59\)) # (!\clkdiv|s_divCounter\(17) & ((\clkdiv|s_divCounter[16]~59\) # (GND)))
-- \clkdiv|s_divCounter[17]~61\ = CARRY((!\clkdiv|s_divCounter[16]~59\) # (!\clkdiv|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(17),
	datad => VCC,
	cin => \clkdiv|s_divCounter[16]~59\,
	combout => \clkdiv|s_divCounter[17]~60_combout\,
	cout => \clkdiv|s_divCounter[17]~61\);

-- Location: FF_X66_Y6_N9
\clkdiv|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[17]~60_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(17));

-- Location: LCCOMB_X66_Y6_N10
\clkdiv|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[18]~62_combout\ = (\clkdiv|s_divCounter\(18) & (\clkdiv|s_divCounter[17]~61\ $ (GND))) # (!\clkdiv|s_divCounter\(18) & (!\clkdiv|s_divCounter[17]~61\ & VCC))
-- \clkdiv|s_divCounter[18]~63\ = CARRY((\clkdiv|s_divCounter\(18) & !\clkdiv|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(18),
	datad => VCC,
	cin => \clkdiv|s_divCounter[17]~61\,
	combout => \clkdiv|s_divCounter[18]~62_combout\,
	cout => \clkdiv|s_divCounter[18]~63\);

-- Location: FF_X66_Y6_N11
\clkdiv|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[18]~62_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(18));

-- Location: LCCOMB_X66_Y6_N12
\clkdiv|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[19]~64_combout\ = (\clkdiv|s_divCounter\(19) & (!\clkdiv|s_divCounter[18]~63\)) # (!\clkdiv|s_divCounter\(19) & ((\clkdiv|s_divCounter[18]~63\) # (GND)))
-- \clkdiv|s_divCounter[19]~65\ = CARRY((!\clkdiv|s_divCounter[18]~63\) # (!\clkdiv|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(19),
	datad => VCC,
	cin => \clkdiv|s_divCounter[18]~63\,
	combout => \clkdiv|s_divCounter[19]~64_combout\,
	cout => \clkdiv|s_divCounter[19]~65\);

-- Location: FF_X66_Y6_N13
\clkdiv|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[19]~64_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(19));

-- Location: LCCOMB_X66_Y6_N14
\clkdiv|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[20]~66_combout\ = (\clkdiv|s_divCounter\(20) & (\clkdiv|s_divCounter[19]~65\ $ (GND))) # (!\clkdiv|s_divCounter\(20) & (!\clkdiv|s_divCounter[19]~65\ & VCC))
-- \clkdiv|s_divCounter[20]~67\ = CARRY((\clkdiv|s_divCounter\(20) & !\clkdiv|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(20),
	datad => VCC,
	cin => \clkdiv|s_divCounter[19]~65\,
	combout => \clkdiv|s_divCounter[20]~66_combout\,
	cout => \clkdiv|s_divCounter[20]~67\);

-- Location: FF_X66_Y6_N15
\clkdiv|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[20]~66_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(20));

-- Location: LCCOMB_X66_Y6_N16
\clkdiv|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[21]~68_combout\ = (\clkdiv|s_divCounter\(21) & (!\clkdiv|s_divCounter[20]~67\)) # (!\clkdiv|s_divCounter\(21) & ((\clkdiv|s_divCounter[20]~67\) # (GND)))
-- \clkdiv|s_divCounter[21]~69\ = CARRY((!\clkdiv|s_divCounter[20]~67\) # (!\clkdiv|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(21),
	datad => VCC,
	cin => \clkdiv|s_divCounter[20]~67\,
	combout => \clkdiv|s_divCounter[21]~68_combout\,
	cout => \clkdiv|s_divCounter[21]~69\);

-- Location: FF_X66_Y6_N17
\clkdiv|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[21]~68_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(21));

-- Location: LCCOMB_X66_Y6_N18
\clkdiv|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[22]~70_combout\ = (\clkdiv|s_divCounter\(22) & (\clkdiv|s_divCounter[21]~69\ $ (GND))) # (!\clkdiv|s_divCounter\(22) & (!\clkdiv|s_divCounter[21]~69\ & VCC))
-- \clkdiv|s_divCounter[22]~71\ = CARRY((\clkdiv|s_divCounter\(22) & !\clkdiv|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(22),
	datad => VCC,
	cin => \clkdiv|s_divCounter[21]~69\,
	combout => \clkdiv|s_divCounter[22]~70_combout\,
	cout => \clkdiv|s_divCounter[22]~71\);

-- Location: FF_X66_Y6_N19
\clkdiv|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[22]~70_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(22));

-- Location: LCCOMB_X66_Y6_N20
\clkdiv|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[23]~72_combout\ = (\clkdiv|s_divCounter\(23) & (!\clkdiv|s_divCounter[22]~71\)) # (!\clkdiv|s_divCounter\(23) & ((\clkdiv|s_divCounter[22]~71\) # (GND)))
-- \clkdiv|s_divCounter[23]~73\ = CARRY((!\clkdiv|s_divCounter[22]~71\) # (!\clkdiv|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(23),
	datad => VCC,
	cin => \clkdiv|s_divCounter[22]~71\,
	combout => \clkdiv|s_divCounter[23]~72_combout\,
	cout => \clkdiv|s_divCounter[23]~73\);

-- Location: FF_X66_Y6_N21
\clkdiv|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[23]~72_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(23));

-- Location: LCCOMB_X66_Y6_N22
\clkdiv|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[24]~74_combout\ = (\clkdiv|s_divCounter\(24) & (\clkdiv|s_divCounter[23]~73\ $ (GND))) # (!\clkdiv|s_divCounter\(24) & (!\clkdiv|s_divCounter[23]~73\ & VCC))
-- \clkdiv|s_divCounter[24]~75\ = CARRY((\clkdiv|s_divCounter\(24) & !\clkdiv|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(24),
	datad => VCC,
	cin => \clkdiv|s_divCounter[23]~73\,
	combout => \clkdiv|s_divCounter[24]~74_combout\,
	cout => \clkdiv|s_divCounter[24]~75\);

-- Location: FF_X66_Y6_N23
\clkdiv|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[24]~74_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(24));

-- Location: LCCOMB_X66_Y6_N24
\clkdiv|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[25]~76_combout\ = \clkdiv|s_divCounter[24]~75\ $ (\clkdiv|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv|s_divCounter\(25),
	cin => \clkdiv|s_divCounter[24]~75\,
	combout => \clkdiv|s_divCounter[25]~76_combout\);

-- Location: FF_X66_Y6_N25
\clkdiv|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[25]~76_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(25));

-- Location: LCCOMB_X66_Y6_N26
\clkdiv|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|clkOut~4_combout\ = (\clkdiv|s_divCounter\(19) & (\clkdiv|s_divCounter\(22) & (\clkdiv|s_divCounter\(20) & \clkdiv|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(19),
	datab => \clkdiv|s_divCounter\(22),
	datac => \clkdiv|s_divCounter\(20),
	datad => \clkdiv|s_divCounter\(21),
	combout => \clkdiv|clkOut~4_combout\);

-- Location: LCCOMB_X66_Y6_N30
\clkdiv|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~4_combout\ = ((!\clkdiv|s_divCounter\(18) & !\clkdiv|s_divCounter\(17))) # (!\clkdiv|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(18),
	datac => \clkdiv|s_divCounter\(17),
	datad => \clkdiv|s_divCounter\(23),
	combout => \clkdiv|LessThan0~4_combout\);

-- Location: LCCOMB_X65_Y7_N8
\clkdiv|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~5_combout\ = ((!\clkdiv|s_divCounter\(24) & ((\clkdiv|LessThan0~4_combout\) # (!\clkdiv|clkOut~4_combout\)))) # (!\clkdiv|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(25),
	datab => \clkdiv|s_divCounter\(24),
	datac => \clkdiv|clkOut~4_combout\,
	datad => \clkdiv|LessThan0~4_combout\,
	combout => \clkdiv|LessThan0~5_combout\);

-- Location: LCCOMB_X65_Y7_N16
\clkdiv|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~2_combout\ = (((!\clkdiv|s_divCounter\(14)) # (!\clkdiv|s_divCounter\(15))) # (!\clkdiv|s_divCounter\(13))) # (!\clkdiv|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(12),
	datab => \clkdiv|s_divCounter\(13),
	datac => \clkdiv|s_divCounter\(15),
	datad => \clkdiv|s_divCounter\(14),
	combout => \clkdiv|LessThan0~2_combout\);

-- Location: LCCOMB_X65_Y7_N6
\clkdiv|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~3_combout\ = (!\clkdiv|s_divCounter\(18) & (!\clkdiv|s_divCounter\(24) & (!\clkdiv|s_divCounter\(16) & \clkdiv|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(18),
	datab => \clkdiv|s_divCounter\(24),
	datac => \clkdiv|s_divCounter\(16),
	datad => \clkdiv|LessThan0~2_combout\,
	combout => \clkdiv|LessThan0~3_combout\);

-- Location: LCCOMB_X65_Y7_N30
\clkdiv|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~6_combout\ = (!\clkdiv|LessThan0~5_combout\ & (!\clkdiv|LessThan0~1_combout\ & !\clkdiv|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|LessThan0~5_combout\,
	datac => \clkdiv|LessThan0~1_combout\,
	datad => \clkdiv|LessThan0~3_combout\,
	combout => \clkdiv|LessThan0~6_combout\);

-- Location: FF_X66_Y7_N7
\clkdiv|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[0]~26_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(0));

-- Location: LCCOMB_X66_Y7_N8
\clkdiv|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[1]~28_combout\ = (\clkdiv|s_divCounter\(1) & (!\clkdiv|s_divCounter[0]~27\)) # (!\clkdiv|s_divCounter\(1) & ((\clkdiv|s_divCounter[0]~27\) # (GND)))
-- \clkdiv|s_divCounter[1]~29\ = CARRY((!\clkdiv|s_divCounter[0]~27\) # (!\clkdiv|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(1),
	datad => VCC,
	cin => \clkdiv|s_divCounter[0]~27\,
	combout => \clkdiv|s_divCounter[1]~28_combout\,
	cout => \clkdiv|s_divCounter[1]~29\);

-- Location: FF_X66_Y7_N9
\clkdiv|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[1]~28_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(1));

-- Location: LCCOMB_X66_Y7_N10
\clkdiv|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[2]~30_combout\ = (\clkdiv|s_divCounter\(2) & (\clkdiv|s_divCounter[1]~29\ $ (GND))) # (!\clkdiv|s_divCounter\(2) & (!\clkdiv|s_divCounter[1]~29\ & VCC))
-- \clkdiv|s_divCounter[2]~31\ = CARRY((\clkdiv|s_divCounter\(2) & !\clkdiv|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(2),
	datad => VCC,
	cin => \clkdiv|s_divCounter[1]~29\,
	combout => \clkdiv|s_divCounter[2]~30_combout\,
	cout => \clkdiv|s_divCounter[2]~31\);

-- Location: FF_X66_Y7_N11
\clkdiv|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[2]~30_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(2));

-- Location: LCCOMB_X66_Y7_N12
\clkdiv|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|s_divCounter[3]~32_combout\ = (\clkdiv|s_divCounter\(3) & (!\clkdiv|s_divCounter[2]~31\)) # (!\clkdiv|s_divCounter\(3) & ((\clkdiv|s_divCounter[2]~31\) # (GND)))
-- \clkdiv|s_divCounter[3]~33\ = CARRY((!\clkdiv|s_divCounter[2]~31\) # (!\clkdiv|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(3),
	datad => VCC,
	cin => \clkdiv|s_divCounter[2]~31\,
	combout => \clkdiv|s_divCounter[3]~32_combout\,
	cout => \clkdiv|s_divCounter[3]~33\);

-- Location: FF_X66_Y7_N13
\clkdiv|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[3]~32_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(3));

-- Location: FF_X66_Y7_N15
\clkdiv|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|s_divCounter[4]~34_combout\,
	sclr => \clkdiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|s_divCounter\(4));

-- Location: LCCOMB_X66_Y7_N0
\clkdiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|clkOut~0_combout\ = (\clkdiv|s_divCounter\(3) & (\clkdiv|s_divCounter\(0) & (\clkdiv|s_divCounter\(1) & \clkdiv|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(3),
	datab => \clkdiv|s_divCounter\(0),
	datac => \clkdiv|s_divCounter\(1),
	datad => \clkdiv|s_divCounter\(2),
	combout => \clkdiv|clkOut~0_combout\);

-- Location: LCCOMB_X66_Y7_N2
\clkdiv|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|clkOut~1_combout\ = (\clkdiv|s_divCounter\(4) & (\clkdiv|s_divCounter\(5) & \clkdiv|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|s_divCounter\(4),
	datac => \clkdiv|s_divCounter\(5),
	datad => \clkdiv|clkOut~0_combout\,
	combout => \clkdiv|clkOut~1_combout\);

-- Location: LCCOMB_X66_Y7_N4
\clkdiv|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|clkOut~3_combout\ = (!\clkdiv|s_divCounter\(8) & (!\clkdiv|s_divCounter\(7) & (!\clkdiv|s_divCounter\(10) & !\clkdiv|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(8),
	datab => \clkdiv|s_divCounter\(7),
	datac => \clkdiv|s_divCounter\(10),
	datad => \clkdiv|s_divCounter\(9),
	combout => \clkdiv|clkOut~3_combout\);

-- Location: LCCOMB_X65_Y7_N24
\clkdiv|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~0_combout\ = (!\clkdiv|s_divCounter\(11) & (!\clkdiv|s_divCounter\(18) & (!\clkdiv|s_divCounter\(16) & !\clkdiv|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(11),
	datab => \clkdiv|s_divCounter\(18),
	datac => \clkdiv|s_divCounter\(16),
	datad => \clkdiv|s_divCounter\(24),
	combout => \clkdiv|LessThan0~0_combout\);

-- Location: LCCOMB_X65_Y7_N26
\clkdiv|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~1_combout\ = (\clkdiv|clkOut~3_combout\ & (\clkdiv|LessThan0~0_combout\ & ((!\clkdiv|s_divCounter\(6)) # (!\clkdiv|clkOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|clkOut~1_combout\,
	datab => \clkdiv|s_divCounter\(6),
	datac => \clkdiv|clkOut~3_combout\,
	datad => \clkdiv|LessThan0~0_combout\,
	combout => \clkdiv|LessThan0~1_combout\);

-- Location: LCCOMB_X65_Y7_N14
\clkdiv|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|clkOut~2_combout\ = (!\clkdiv|s_divCounter\(6) & (\clkdiv|s_divCounter\(14) & (\clkdiv|s_divCounter\(12) & \clkdiv|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(6),
	datab => \clkdiv|s_divCounter\(14),
	datac => \clkdiv|s_divCounter\(12),
	datad => \clkdiv|s_divCounter\(13),
	combout => \clkdiv|clkOut~2_combout\);

-- Location: LCCOMB_X66_Y6_N28
\clkdiv|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|clkOut~5_combout\ = (\clkdiv|s_divCounter\(24) & (!\clkdiv|s_divCounter\(25) & (!\clkdiv|s_divCounter\(23) & \clkdiv|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(24),
	datab => \clkdiv|s_divCounter\(25),
	datac => \clkdiv|s_divCounter\(23),
	datad => \clkdiv|s_divCounter\(18),
	combout => \clkdiv|clkOut~5_combout\);

-- Location: LCCOMB_X65_Y7_N28
\clkdiv|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|clkOut~6_combout\ = (!\clkdiv|s_divCounter\(17) & (\clkdiv|s_divCounter\(16) & (\clkdiv|clkOut~5_combout\ & !\clkdiv|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|s_divCounter\(17),
	datab => \clkdiv|s_divCounter\(16),
	datac => \clkdiv|clkOut~5_combout\,
	datad => \clkdiv|s_divCounter\(15),
	combout => \clkdiv|clkOut~6_combout\);

-- Location: LCCOMB_X65_Y7_N20
\clkdiv|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|clkOut~7_combout\ = (\clkdiv|clkOut~3_combout\ & (\clkdiv|s_divCounter\(11) & (\clkdiv|clkOut~4_combout\ & \clkdiv|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|clkOut~3_combout\,
	datab => \clkdiv|s_divCounter\(11),
	datac => \clkdiv|clkOut~4_combout\,
	datad => \clkdiv|clkOut~6_combout\,
	combout => \clkdiv|clkOut~7_combout\);

-- Location: LCCOMB_X65_Y7_N18
\clkdiv|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|clkOut~8_combout\ = (\clkdiv|clkOut~q\) # ((\clkdiv|clkOut~1_combout\ & (\clkdiv|clkOut~2_combout\ & \clkdiv|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|clkOut~q\,
	datab => \clkdiv|clkOut~1_combout\,
	datac => \clkdiv|clkOut~2_combout\,
	datad => \clkdiv|clkOut~7_combout\,
	combout => \clkdiv|clkOut~8_combout\);

-- Location: LCCOMB_X65_Y7_N22
\clkdiv|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|clkOut~9_combout\ = (\clkdiv|clkOut~8_combout\ & ((\clkdiv|LessThan0~1_combout\) # ((\clkdiv|LessThan0~5_combout\) # (\clkdiv|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|LessThan0~1_combout\,
	datab => \clkdiv|LessThan0~5_combout\,
	datac => \clkdiv|clkOut~8_combout\,
	datad => \clkdiv|LessThan0~3_combout\,
	combout => \clkdiv|clkOut~9_combout\);

-- Location: FF_X65_Y7_N23
\clkdiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdiv|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|clkOut~q\);

-- Location: CLKCTRL_G17
\clkdiv|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkdiv|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkdiv|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X54_Y73_N8
\staStop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_staStop,
	o => \staStop~input_o\);

-- Location: LCCOMB_X53_Y72_N26
\FFD|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FFD|q~0_combout\ = !\FFD|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FFD|q~q\,
	combout => \FFD|q~0_combout\);

-- Location: FF_X53_Y72_N27
\FFD|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \staStop~input_o\,
	d => \FFD|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFD|q~q\);

-- Location: LCCOMB_X53_Y72_N14
\FSM|reg_fstate.ama~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|reg_fstate.ama~0_combout\ = (\FFD|q~q\ & (!\reset~input_o\ & !\FSM|fstate.clear~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FFD|q~q\,
	datac => \reset~input_o\,
	datad => \FSM|fstate.clear~q\,
	combout => \FSM|reg_fstate.ama~0_combout\);

-- Location: LCCOMB_X53_Y72_N18
\FSM|fstate.ama~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|fstate.ama~feeder_combout\ = \FSM|reg_fstate.ama~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|reg_fstate.ama~0_combout\,
	combout => \FSM|fstate.ama~feeder_combout\);

-- Location: FF_X53_Y72_N19
\FSM|fstate.ama\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clkOut~clkctrl_outclk\,
	d => \FSM|fstate.ama~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|fstate.ama~q\);

-- Location: LCCOMB_X53_Y72_N4
\FSM|green[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|green[0]~0_combout\ = (!\reset~input_o\ & \FSM|fstate.ama~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \FSM|fstate.ama~q\,
	combout => \FSM|green[0]~0_combout\);

-- Location: FF_X53_Y72_N29
\FSM|fstate.lev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clkOut~clkctrl_outclk\,
	asdata => \FSM|green[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|fstate.lev~q\);

-- Location: LCCOMB_X53_Y72_N30
\FSM|green[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|green[1]~1_combout\ = (!\reset~input_o\ & \FSM|fstate.lev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \FSM|fstate.lev~q\,
	combout => \FSM|green[1]~1_combout\);

-- Location: FF_X53_Y72_N9
\FSM|fstate.coz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clkOut~clkctrl_outclk\,
	asdata => \FSM|green[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|fstate.coz~q\);

-- Location: LCCOMB_X53_Y72_N16
\FSM|reg_fstate.clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|reg_fstate.clear~0_combout\ = (!\reset~input_o\ & (!\FSM|fstate.coz~q\ & ((\FFD|q~q\) # (\FSM|fstate.clear~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FFD|q~q\,
	datab => \reset~input_o\,
	datac => \FSM|fstate.coz~q\,
	datad => \FSM|fstate.clear~q\,
	combout => \FSM|reg_fstate.clear~0_combout\);

-- Location: LCCOMB_X53_Y72_N20
\FSM|fstate.clear~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|fstate.clear~feeder_combout\ = \FSM|reg_fstate.clear~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|reg_fstate.clear~0_combout\,
	combout => \FSM|fstate.clear~feeder_combout\);

-- Location: FF_X53_Y72_N21
\FSM|fstate.clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clkOut~clkctrl_outclk\,
	d => \FSM|fstate.clear~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|fstate.clear~q\);

-- Location: LCCOMB_X53_Y72_N28
\FSM|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|enable~0_combout\ = (!\reset~input_o\ & (\FSM|fstate.clear~q\ & \FFD|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \FSM|fstate.clear~q\,
	datad => \FFD|q~q\,
	combout => \FSM|enable~0_combout\);

-- Location: LCCOMB_X53_Y72_N8
\FSM|green[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|green[2]~2_combout\ = (!\reset~input_o\ & \FSM|fstate.coz~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \FSM|fstate.coz~q\,
	combout => \FSM|green[2]~2_combout\);

-- Location: IOIBUF_X54_Y73_N1
\pao~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pao,
	o => \pao~input_o\);

-- Location: LCCOMB_X53_Y72_N10
\decoder|decOut_n2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n2[1]~0_combout\ = (((\reset~input_o\) # (!\FSM|fstate.clear~q\)) # (!\pao~input_o\)) # (!\FFD|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FFD|q~q\,
	datab => \pao~input_o\,
	datac => \reset~input_o\,
	datad => \FSM|fstate.clear~q\,
	combout => \decoder|decOut_n2[1]~0_combout\);

ww_red <= \red~output_o\;

ww_green(0) <= \green[0]~output_o\;

ww_green(1) <= \green[1]~output_o\;

ww_green(2) <= \green[2]~output_o\;

ww_display0(0) <= \display0[0]~output_o\;

ww_display0(1) <= \display0[1]~output_o\;

ww_display0(2) <= \display0[2]~output_o\;

ww_display0(3) <= \display0[3]~output_o\;

ww_display0(4) <= \display0[4]~output_o\;

ww_display0(5) <= \display0[5]~output_o\;

ww_display0(6) <= \display0[6]~output_o\;

ww_display1(0) <= \display1[0]~output_o\;

ww_display1(1) <= \display1[1]~output_o\;

ww_display1(2) <= \display1[2]~output_o\;

ww_display1(3) <= \display1[3]~output_o\;

ww_display1(4) <= \display1[4]~output_o\;

ww_display1(5) <= \display1[5]~output_o\;

ww_display1(6) <= \display1[6]~output_o\;

ww_display2(0) <= \display2[0]~output_o\;

ww_display2(1) <= \display2[1]~output_o\;

ww_display2(2) <= \display2[2]~output_o\;

ww_display2(3) <= \display2[3]~output_o\;

ww_display2(4) <= \display2[4]~output_o\;

ww_display2(5) <= \display2[5]~output_o\;

ww_display2(6) <= \display2[6]~output_o\;
END structure;


