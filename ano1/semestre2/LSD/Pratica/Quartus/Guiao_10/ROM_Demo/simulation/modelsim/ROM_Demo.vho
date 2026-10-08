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

-- DATE "05/23/2023 10:38:07"

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

ENTITY 	ROM_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(0 TO 7);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(5 DOWNTO 4)
	);
END ROM_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 TO 7);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(5 DOWNTO 4);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|s_divCounter[0]~24_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[22]~69\ : std_logic;
SIGNAL \inst3|s_divCounter[23]~70_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|LessThan1~1_combout\ : std_logic;
SIGNAL \inst3|LessThan1~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|LessThan0~6_combout\ : std_logic;
SIGNAL \inst3|LessThan0~7_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[0]~25\ : std_logic;
SIGNAL \inst3|s_divCounter[1]~26_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[1]~27\ : std_logic;
SIGNAL \inst3|s_divCounter[2]~28_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[2]~29\ : std_logic;
SIGNAL \inst3|s_divCounter[3]~30_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[3]~31\ : std_logic;
SIGNAL \inst3|s_divCounter[4]~32_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[4]~33\ : std_logic;
SIGNAL \inst3|s_divCounter[5]~34_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[5]~35\ : std_logic;
SIGNAL \inst3|s_divCounter[6]~36_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[6]~37\ : std_logic;
SIGNAL \inst3|s_divCounter[7]~38_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[7]~39\ : std_logic;
SIGNAL \inst3|s_divCounter[8]~40_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[8]~41\ : std_logic;
SIGNAL \inst3|s_divCounter[9]~42_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[9]~43\ : std_logic;
SIGNAL \inst3|s_divCounter[10]~44_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[10]~45\ : std_logic;
SIGNAL \inst3|s_divCounter[11]~46_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[11]~47\ : std_logic;
SIGNAL \inst3|s_divCounter[12]~48_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[12]~49\ : std_logic;
SIGNAL \inst3|s_divCounter[13]~50_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[13]~51\ : std_logic;
SIGNAL \inst3|s_divCounter[14]~52_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[14]~53\ : std_logic;
SIGNAL \inst3|s_divCounter[15]~54_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[15]~55\ : std_logic;
SIGNAL \inst3|s_divCounter[16]~56_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[16]~57\ : std_logic;
SIGNAL \inst3|s_divCounter[17]~58_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[17]~59\ : std_logic;
SIGNAL \inst3|s_divCounter[18]~60_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[18]~61\ : std_logic;
SIGNAL \inst3|s_divCounter[19]~62_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[19]~63\ : std_logic;
SIGNAL \inst3|s_divCounter[20]~64_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[20]~65\ : std_logic;
SIGNAL \inst3|s_divCounter[21]~66_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[21]~67\ : std_logic;
SIGNAL \inst3|s_divCounter[22]~68_combout\ : std_logic;
SIGNAL \inst3|LessThan1~6_combout\ : std_logic;
SIGNAL \inst3|LessThan1~7_combout\ : std_logic;
SIGNAL \inst3|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|LessThan1~3_combout\ : std_logic;
SIGNAL \inst3|LessThan1~4_combout\ : std_logic;
SIGNAL \inst3|LessThan1~5_combout\ : std_logic;
SIGNAL \inst3|LessThan1~8_combout\ : std_logic;
SIGNAL \inst3|LessThan1~9_combout\ : std_logic;
SIGNAL \inst3|clkOut~q\ : std_logic;
SIGNAL \inst3|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst4|s_cntval~5_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst4|s_cntval[3]~1_combout\ : std_logic;
SIGNAL \inst4|s_cntval~0_combout\ : std_logic;
SIGNAL \inst4|s_cntval~2_combout\ : std_logic;
SIGNAL \inst4|s_cntval~3_combout\ : std_logic;
SIGNAL \inst4|s_cntval~4_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst3|s_divCounter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst4|s_cntval\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst3|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|clkOut~q\);
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
	i => \inst|Mux0~0_combout\,
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
	i => \inst|Mux0~0_combout\,
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
	i => \inst|Mux0~0_combout\,
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
	i => \inst|Mux0~0_combout\,
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
	i => \inst|Mux4~0_combout\,
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
	i => \inst|Mux5~0_combout\,
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
	i => \inst|Mux6~0_combout\,
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
	i => \inst|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X60_Y3_N8
\inst3|s_divCounter[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[0]~24_combout\ = \inst3|s_divCounter\(0) $ (VCC)
-- \inst3|s_divCounter[0]~25\ = CARRY(\inst3|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(0),
	datad => VCC,
	combout => \inst3|s_divCounter[0]~24_combout\,
	cout => \inst3|s_divCounter[0]~25\);

-- Location: LCCOMB_X60_Y2_N24
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (!\inst3|s_divCounter\(22) & (!\inst3|s_divCounter\(21) & ((!\inst3|s_divCounter\(20)) # (!\inst3|s_divCounter\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(22),
	datab => \inst3|s_divCounter\(21),
	datac => \inst3|s_divCounter\(19),
	datad => \inst3|s_divCounter\(20),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y2_N20
\inst3|s_divCounter[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[22]~68_combout\ = (\inst3|s_divCounter\(22) & (\inst3|s_divCounter[21]~67\ $ (GND))) # (!\inst3|s_divCounter\(22) & (!\inst3|s_divCounter[21]~67\ & VCC))
-- \inst3|s_divCounter[22]~69\ = CARRY((\inst3|s_divCounter\(22) & !\inst3|s_divCounter[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(22),
	datad => VCC,
	cin => \inst3|s_divCounter[21]~67\,
	combout => \inst3|s_divCounter[22]~68_combout\,
	cout => \inst3|s_divCounter[22]~69\);

-- Location: LCCOMB_X60_Y2_N22
\inst3|s_divCounter[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[23]~70_combout\ = \inst3|s_divCounter\(23) $ (\inst3|s_divCounter[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(23),
	cin => \inst3|s_divCounter[22]~69\,
	combout => \inst3|s_divCounter[23]~70_combout\);

-- Location: FF_X60_Y2_N23
\inst3|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[23]~70_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(23));

-- Location: LCCOMB_X59_Y3_N26
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (!\inst3|s_divCounter\(13) & !\inst3|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_divCounter\(13),
	datad => \inst3|s_divCounter\(14),
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X60_Y2_N30
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (!\inst3|s_divCounter\(17) & (!\inst3|s_divCounter\(22) & (!\inst3|s_divCounter\(16) & !\inst3|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(17),
	datab => \inst3|s_divCounter\(22),
	datac => \inst3|s_divCounter\(16),
	datad => \inst3|s_divCounter\(21),
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X60_Y3_N2
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = (!\inst3|s_divCounter\(7) & (!\inst3|s_divCounter\(11) & !\inst3|s_divCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(7),
	datac => \inst3|s_divCounter\(11),
	datad => \inst3|s_divCounter\(8),
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X59_Y3_N8
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = ((!\inst3|s_divCounter\(11) & ((!\inst3|s_divCounter\(10)) # (!\inst3|s_divCounter\(9))))) # (!\inst3|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(11),
	datab => \inst3|s_divCounter\(12),
	datac => \inst3|s_divCounter\(9),
	datad => \inst3|s_divCounter\(10),
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X60_Y3_N0
\inst3|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~1_combout\ = (\inst3|s_divCounter\(1) & (\inst3|s_divCounter\(0) & (\inst3|s_divCounter\(3) & \inst3|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(1),
	datab => \inst3|s_divCounter\(0),
	datac => \inst3|s_divCounter\(3),
	datad => \inst3|s_divCounter\(2),
	combout => \inst3|LessThan1~1_combout\);

-- Location: LCCOMB_X60_Y3_N6
\inst3|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~2_combout\ = (\inst3|s_divCounter\(5) & (\inst3|s_divCounter\(4) & \inst3|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(5),
	datac => \inst3|s_divCounter\(4),
	datad => \inst3|LessThan1~1_combout\,
	combout => \inst3|LessThan1~2_combout\);

-- Location: LCCOMB_X59_Y3_N16
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = (\inst3|LessThan0~3_combout\) # ((\inst3|LessThan0~4_combout\ & ((!\inst3|LessThan1~2_combout\) # (!\inst3|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~4_combout\,
	datab => \inst3|s_divCounter\(6),
	datac => \inst3|LessThan0~3_combout\,
	datad => \inst3|LessThan1~2_combout\,
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X59_Y3_N12
\inst3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~6_combout\ = (\inst3|LessThan0~1_combout\ & (((\inst3|LessThan0~2_combout\ & \inst3|LessThan0~5_combout\)) # (!\inst3|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~2_combout\,
	datab => \inst3|s_divCounter\(15),
	datac => \inst3|LessThan0~1_combout\,
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|LessThan0~6_combout\);

-- Location: LCCOMB_X59_Y3_N30
\inst3|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~7_combout\ = (!\inst3|LessThan0~0_combout\ & (\inst3|s_divCounter\(23) & ((\inst3|s_divCounter\(18)) # (!\inst3|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~0_combout\,
	datab => \inst3|s_divCounter\(23),
	datac => \inst3|s_divCounter\(18),
	datad => \inst3|LessThan0~6_combout\,
	combout => \inst3|LessThan0~7_combout\);

-- Location: FF_X60_Y3_N9
\inst3|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[0]~24_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(0));

-- Location: LCCOMB_X60_Y3_N10
\inst3|s_divCounter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[1]~26_combout\ = (\inst3|s_divCounter\(1) & (!\inst3|s_divCounter[0]~25\)) # (!\inst3|s_divCounter\(1) & ((\inst3|s_divCounter[0]~25\) # (GND)))
-- \inst3|s_divCounter[1]~27\ = CARRY((!\inst3|s_divCounter[0]~25\) # (!\inst3|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(1),
	datad => VCC,
	cin => \inst3|s_divCounter[0]~25\,
	combout => \inst3|s_divCounter[1]~26_combout\,
	cout => \inst3|s_divCounter[1]~27\);

-- Location: FF_X60_Y3_N11
\inst3|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[1]~26_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(1));

-- Location: LCCOMB_X60_Y3_N12
\inst3|s_divCounter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[2]~28_combout\ = (\inst3|s_divCounter\(2) & (\inst3|s_divCounter[1]~27\ $ (GND))) # (!\inst3|s_divCounter\(2) & (!\inst3|s_divCounter[1]~27\ & VCC))
-- \inst3|s_divCounter[2]~29\ = CARRY((\inst3|s_divCounter\(2) & !\inst3|s_divCounter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(2),
	datad => VCC,
	cin => \inst3|s_divCounter[1]~27\,
	combout => \inst3|s_divCounter[2]~28_combout\,
	cout => \inst3|s_divCounter[2]~29\);

-- Location: FF_X60_Y3_N13
\inst3|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[2]~28_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(2));

-- Location: LCCOMB_X60_Y3_N14
\inst3|s_divCounter[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[3]~30_combout\ = (\inst3|s_divCounter\(3) & (!\inst3|s_divCounter[2]~29\)) # (!\inst3|s_divCounter\(3) & ((\inst3|s_divCounter[2]~29\) # (GND)))
-- \inst3|s_divCounter[3]~31\ = CARRY((!\inst3|s_divCounter[2]~29\) # (!\inst3|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(3),
	datad => VCC,
	cin => \inst3|s_divCounter[2]~29\,
	combout => \inst3|s_divCounter[3]~30_combout\,
	cout => \inst3|s_divCounter[3]~31\);

-- Location: FF_X60_Y3_N15
\inst3|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[3]~30_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(3));

-- Location: LCCOMB_X60_Y3_N16
\inst3|s_divCounter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[4]~32_combout\ = (\inst3|s_divCounter\(4) & (\inst3|s_divCounter[3]~31\ $ (GND))) # (!\inst3|s_divCounter\(4) & (!\inst3|s_divCounter[3]~31\ & VCC))
-- \inst3|s_divCounter[4]~33\ = CARRY((\inst3|s_divCounter\(4) & !\inst3|s_divCounter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(4),
	datad => VCC,
	cin => \inst3|s_divCounter[3]~31\,
	combout => \inst3|s_divCounter[4]~32_combout\,
	cout => \inst3|s_divCounter[4]~33\);

-- Location: FF_X60_Y3_N17
\inst3|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[4]~32_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(4));

-- Location: LCCOMB_X60_Y3_N18
\inst3|s_divCounter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[5]~34_combout\ = (\inst3|s_divCounter\(5) & (!\inst3|s_divCounter[4]~33\)) # (!\inst3|s_divCounter\(5) & ((\inst3|s_divCounter[4]~33\) # (GND)))
-- \inst3|s_divCounter[5]~35\ = CARRY((!\inst3|s_divCounter[4]~33\) # (!\inst3|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(5),
	datad => VCC,
	cin => \inst3|s_divCounter[4]~33\,
	combout => \inst3|s_divCounter[5]~34_combout\,
	cout => \inst3|s_divCounter[5]~35\);

-- Location: FF_X60_Y3_N19
\inst3|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[5]~34_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(5));

-- Location: LCCOMB_X60_Y3_N20
\inst3|s_divCounter[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[6]~36_combout\ = (\inst3|s_divCounter\(6) & (\inst3|s_divCounter[5]~35\ $ (GND))) # (!\inst3|s_divCounter\(6) & (!\inst3|s_divCounter[5]~35\ & VCC))
-- \inst3|s_divCounter[6]~37\ = CARRY((\inst3|s_divCounter\(6) & !\inst3|s_divCounter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(6),
	datad => VCC,
	cin => \inst3|s_divCounter[5]~35\,
	combout => \inst3|s_divCounter[6]~36_combout\,
	cout => \inst3|s_divCounter[6]~37\);

-- Location: FF_X60_Y3_N21
\inst3|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[6]~36_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(6));

-- Location: LCCOMB_X60_Y3_N22
\inst3|s_divCounter[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[7]~38_combout\ = (\inst3|s_divCounter\(7) & (!\inst3|s_divCounter[6]~37\)) # (!\inst3|s_divCounter\(7) & ((\inst3|s_divCounter[6]~37\) # (GND)))
-- \inst3|s_divCounter[7]~39\ = CARRY((!\inst3|s_divCounter[6]~37\) # (!\inst3|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(7),
	datad => VCC,
	cin => \inst3|s_divCounter[6]~37\,
	combout => \inst3|s_divCounter[7]~38_combout\,
	cout => \inst3|s_divCounter[7]~39\);

-- Location: FF_X60_Y3_N23
\inst3|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[7]~38_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(7));

-- Location: LCCOMB_X60_Y3_N24
\inst3|s_divCounter[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[8]~40_combout\ = (\inst3|s_divCounter\(8) & (\inst3|s_divCounter[7]~39\ $ (GND))) # (!\inst3|s_divCounter\(8) & (!\inst3|s_divCounter[7]~39\ & VCC))
-- \inst3|s_divCounter[8]~41\ = CARRY((\inst3|s_divCounter\(8) & !\inst3|s_divCounter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(8),
	datad => VCC,
	cin => \inst3|s_divCounter[7]~39\,
	combout => \inst3|s_divCounter[8]~40_combout\,
	cout => \inst3|s_divCounter[8]~41\);

-- Location: FF_X60_Y3_N25
\inst3|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[8]~40_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(8));

-- Location: LCCOMB_X60_Y3_N26
\inst3|s_divCounter[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[9]~42_combout\ = (\inst3|s_divCounter\(9) & (!\inst3|s_divCounter[8]~41\)) # (!\inst3|s_divCounter\(9) & ((\inst3|s_divCounter[8]~41\) # (GND)))
-- \inst3|s_divCounter[9]~43\ = CARRY((!\inst3|s_divCounter[8]~41\) # (!\inst3|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(9),
	datad => VCC,
	cin => \inst3|s_divCounter[8]~41\,
	combout => \inst3|s_divCounter[9]~42_combout\,
	cout => \inst3|s_divCounter[9]~43\);

-- Location: FF_X60_Y3_N27
\inst3|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[9]~42_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(9));

-- Location: LCCOMB_X60_Y3_N28
\inst3|s_divCounter[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[10]~44_combout\ = (\inst3|s_divCounter\(10) & (\inst3|s_divCounter[9]~43\ $ (GND))) # (!\inst3|s_divCounter\(10) & (!\inst3|s_divCounter[9]~43\ & VCC))
-- \inst3|s_divCounter[10]~45\ = CARRY((\inst3|s_divCounter\(10) & !\inst3|s_divCounter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(10),
	datad => VCC,
	cin => \inst3|s_divCounter[9]~43\,
	combout => \inst3|s_divCounter[10]~44_combout\,
	cout => \inst3|s_divCounter[10]~45\);

-- Location: FF_X60_Y3_N29
\inst3|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[10]~44_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(10));

-- Location: LCCOMB_X60_Y3_N30
\inst3|s_divCounter[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[11]~46_combout\ = (\inst3|s_divCounter\(11) & (!\inst3|s_divCounter[10]~45\)) # (!\inst3|s_divCounter\(11) & ((\inst3|s_divCounter[10]~45\) # (GND)))
-- \inst3|s_divCounter[11]~47\ = CARRY((!\inst3|s_divCounter[10]~45\) # (!\inst3|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(11),
	datad => VCC,
	cin => \inst3|s_divCounter[10]~45\,
	combout => \inst3|s_divCounter[11]~46_combout\,
	cout => \inst3|s_divCounter[11]~47\);

-- Location: FF_X60_Y3_N31
\inst3|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[11]~46_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(11));

-- Location: LCCOMB_X60_Y2_N0
\inst3|s_divCounter[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[12]~48_combout\ = (\inst3|s_divCounter\(12) & (\inst3|s_divCounter[11]~47\ $ (GND))) # (!\inst3|s_divCounter\(12) & (!\inst3|s_divCounter[11]~47\ & VCC))
-- \inst3|s_divCounter[12]~49\ = CARRY((\inst3|s_divCounter\(12) & !\inst3|s_divCounter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(12),
	datad => VCC,
	cin => \inst3|s_divCounter[11]~47\,
	combout => \inst3|s_divCounter[12]~48_combout\,
	cout => \inst3|s_divCounter[12]~49\);

-- Location: FF_X59_Y3_N29
\inst3|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_divCounter[12]~48_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(12));

-- Location: LCCOMB_X60_Y2_N2
\inst3|s_divCounter[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[13]~50_combout\ = (\inst3|s_divCounter\(13) & (!\inst3|s_divCounter[12]~49\)) # (!\inst3|s_divCounter\(13) & ((\inst3|s_divCounter[12]~49\) # (GND)))
-- \inst3|s_divCounter[13]~51\ = CARRY((!\inst3|s_divCounter[12]~49\) # (!\inst3|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(13),
	datad => VCC,
	cin => \inst3|s_divCounter[12]~49\,
	combout => \inst3|s_divCounter[13]~50_combout\,
	cout => \inst3|s_divCounter[13]~51\);

-- Location: FF_X59_Y3_N15
\inst3|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_divCounter[13]~50_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(13));

-- Location: LCCOMB_X60_Y2_N4
\inst3|s_divCounter[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[14]~52_combout\ = (\inst3|s_divCounter\(14) & (\inst3|s_divCounter[13]~51\ $ (GND))) # (!\inst3|s_divCounter\(14) & (!\inst3|s_divCounter[13]~51\ & VCC))
-- \inst3|s_divCounter[14]~53\ = CARRY((\inst3|s_divCounter\(14) & !\inst3|s_divCounter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(14),
	datad => VCC,
	cin => \inst3|s_divCounter[13]~51\,
	combout => \inst3|s_divCounter[14]~52_combout\,
	cout => \inst3|s_divCounter[14]~53\);

-- Location: FF_X59_Y3_N19
\inst3|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_divCounter[14]~52_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(14));

-- Location: LCCOMB_X60_Y2_N6
\inst3|s_divCounter[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[15]~54_combout\ = (\inst3|s_divCounter\(15) & (!\inst3|s_divCounter[14]~53\)) # (!\inst3|s_divCounter\(15) & ((\inst3|s_divCounter[14]~53\) # (GND)))
-- \inst3|s_divCounter[15]~55\ = CARRY((!\inst3|s_divCounter[14]~53\) # (!\inst3|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(15),
	datad => VCC,
	cin => \inst3|s_divCounter[14]~53\,
	combout => \inst3|s_divCounter[15]~54_combout\,
	cout => \inst3|s_divCounter[15]~55\);

-- Location: FF_X59_Y3_N25
\inst3|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_divCounter[15]~54_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(15));

-- Location: LCCOMB_X60_Y2_N8
\inst3|s_divCounter[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[16]~56_combout\ = (\inst3|s_divCounter\(16) & (\inst3|s_divCounter[15]~55\ $ (GND))) # (!\inst3|s_divCounter\(16) & (!\inst3|s_divCounter[15]~55\ & VCC))
-- \inst3|s_divCounter[16]~57\ = CARRY((\inst3|s_divCounter\(16) & !\inst3|s_divCounter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(16),
	datad => VCC,
	cin => \inst3|s_divCounter[15]~55\,
	combout => \inst3|s_divCounter[16]~56_combout\,
	cout => \inst3|s_divCounter[16]~57\);

-- Location: FF_X60_Y2_N9
\inst3|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[16]~56_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(16));

-- Location: LCCOMB_X60_Y2_N10
\inst3|s_divCounter[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[17]~58_combout\ = (\inst3|s_divCounter\(17) & (!\inst3|s_divCounter[16]~57\)) # (!\inst3|s_divCounter\(17) & ((\inst3|s_divCounter[16]~57\) # (GND)))
-- \inst3|s_divCounter[17]~59\ = CARRY((!\inst3|s_divCounter[16]~57\) # (!\inst3|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(17),
	datad => VCC,
	cin => \inst3|s_divCounter[16]~57\,
	combout => \inst3|s_divCounter[17]~58_combout\,
	cout => \inst3|s_divCounter[17]~59\);

-- Location: FF_X60_Y2_N11
\inst3|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[17]~58_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(17));

-- Location: LCCOMB_X60_Y2_N12
\inst3|s_divCounter[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[18]~60_combout\ = (\inst3|s_divCounter\(18) & (\inst3|s_divCounter[17]~59\ $ (GND))) # (!\inst3|s_divCounter\(18) & (!\inst3|s_divCounter[17]~59\ & VCC))
-- \inst3|s_divCounter[18]~61\ = CARRY((\inst3|s_divCounter\(18) & !\inst3|s_divCounter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datad => VCC,
	cin => \inst3|s_divCounter[17]~59\,
	combout => \inst3|s_divCounter[18]~60_combout\,
	cout => \inst3|s_divCounter[18]~61\);

-- Location: FF_X60_Y2_N13
\inst3|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[18]~60_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(18));

-- Location: LCCOMB_X60_Y2_N14
\inst3|s_divCounter[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[19]~62_combout\ = (\inst3|s_divCounter\(19) & (!\inst3|s_divCounter[18]~61\)) # (!\inst3|s_divCounter\(19) & ((\inst3|s_divCounter[18]~61\) # (GND)))
-- \inst3|s_divCounter[19]~63\ = CARRY((!\inst3|s_divCounter[18]~61\) # (!\inst3|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(19),
	datad => VCC,
	cin => \inst3|s_divCounter[18]~61\,
	combout => \inst3|s_divCounter[19]~62_combout\,
	cout => \inst3|s_divCounter[19]~63\);

-- Location: FF_X60_Y2_N15
\inst3|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[19]~62_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(19));

-- Location: LCCOMB_X60_Y2_N16
\inst3|s_divCounter[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[20]~64_combout\ = (\inst3|s_divCounter\(20) & (\inst3|s_divCounter[19]~63\ $ (GND))) # (!\inst3|s_divCounter\(20) & (!\inst3|s_divCounter[19]~63\ & VCC))
-- \inst3|s_divCounter[20]~65\ = CARRY((\inst3|s_divCounter\(20) & !\inst3|s_divCounter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(20),
	datad => VCC,
	cin => \inst3|s_divCounter[19]~63\,
	combout => \inst3|s_divCounter[20]~64_combout\,
	cout => \inst3|s_divCounter[20]~65\);

-- Location: FF_X60_Y2_N17
\inst3|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[20]~64_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(20));

-- Location: LCCOMB_X60_Y2_N18
\inst3|s_divCounter[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[21]~66_combout\ = (\inst3|s_divCounter\(21) & (!\inst3|s_divCounter[20]~65\)) # (!\inst3|s_divCounter\(21) & ((\inst3|s_divCounter[20]~65\) # (GND)))
-- \inst3|s_divCounter[21]~67\ = CARRY((!\inst3|s_divCounter[20]~65\) # (!\inst3|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(21),
	datad => VCC,
	cin => \inst3|s_divCounter[20]~65\,
	combout => \inst3|s_divCounter[21]~66_combout\,
	cout => \inst3|s_divCounter[21]~67\);

-- Location: FF_X60_Y2_N19
\inst3|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[21]~66_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(21));

-- Location: FF_X60_Y2_N21
\inst3|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[22]~68_combout\,
	sclr => \inst3|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(22));

-- Location: LCCOMB_X60_Y2_N28
\inst3|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~6_combout\ = (!\inst3|s_divCounter\(14) & (!\inst3|s_divCounter\(16) & (!\inst3|s_divCounter\(15) & !\inst3|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(14),
	datab => \inst3|s_divCounter\(16),
	datac => \inst3|s_divCounter\(15),
	datad => \inst3|s_divCounter\(17),
	combout => \inst3|LessThan1~6_combout\);

-- Location: LCCOMB_X60_Y2_N26
\inst3|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~7_combout\ = ((\inst3|LessThan1~6_combout\) # (!\inst3|s_divCounter\(19))) # (!\inst3|s_divCounter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datac => \inst3|s_divCounter\(19),
	datad => \inst3|LessThan1~6_combout\,
	combout => \inst3|LessThan1~7_combout\);

-- Location: LCCOMB_X59_Y3_N4
\inst3|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~0_combout\ = (!\inst3|s_divCounter\(17) & (!\inst3|s_divCounter\(12) & (!\inst3|s_divCounter\(16) & !\inst3|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(17),
	datab => \inst3|s_divCounter\(12),
	datac => \inst3|s_divCounter\(16),
	datad => \inst3|s_divCounter\(15),
	combout => \inst3|LessThan1~0_combout\);

-- Location: LCCOMB_X60_Y3_N4
\inst3|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~3_combout\ = (\inst3|s_divCounter\(6)) # ((\inst3|s_divCounter\(7)) # (\inst3|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(6),
	datac => \inst3|s_divCounter\(7),
	datad => \inst3|LessThan1~2_combout\,
	combout => \inst3|LessThan1~3_combout\);

-- Location: LCCOMB_X59_Y3_N10
\inst3|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~4_combout\ = (!\inst3|s_divCounter\(10) & (((!\inst3|LessThan1~3_combout\) # (!\inst3|s_divCounter\(8))) # (!\inst3|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(9),
	datab => \inst3|s_divCounter\(10),
	datac => \inst3|s_divCounter\(8),
	datad => \inst3|LessThan1~3_combout\,
	combout => \inst3|LessThan1~4_combout\);

-- Location: LCCOMB_X59_Y3_N6
\inst3|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~5_combout\ = (!\inst3|s_divCounter\(13) & (\inst3|LessThan1~0_combout\ & ((\inst3|LessThan1~4_combout\) # (!\inst3|s_divCounter\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(11),
	datab => \inst3|s_divCounter\(13),
	datac => \inst3|LessThan1~0_combout\,
	datad => \inst3|LessThan1~4_combout\,
	combout => \inst3|LessThan1~5_combout\);

-- Location: LCCOMB_X59_Y3_N20
\inst3|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~8_combout\ = (\inst3|s_divCounter\(21)) # ((!\inst3|s_divCounter\(20) & ((\inst3|LessThan1~7_combout\) # (\inst3|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(20),
	datab => \inst3|s_divCounter\(21),
	datac => \inst3|LessThan1~7_combout\,
	datad => \inst3|LessThan1~5_combout\,
	combout => \inst3|LessThan1~8_combout\);

-- Location: LCCOMB_X59_Y3_N22
\inst3|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~9_combout\ = (\inst3|s_divCounter\(23)) # ((\inst3|s_divCounter\(22) & ((\inst3|s_divCounter\(21)) # (!\inst3|LessThan1~8_combout\))) # (!\inst3|s_divCounter\(22) & (\inst3|s_divCounter\(21) & !\inst3|LessThan1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(22),
	datab => \inst3|s_divCounter\(23),
	datac => \inst3|s_divCounter\(21),
	datad => \inst3|LessThan1~8_combout\,
	combout => \inst3|LessThan1~9_combout\);

-- Location: FF_X59_Y3_N23
\inst3|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clkOut~q\);

-- Location: CLKCTRL_G15
\inst3|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X87_Y69_N20
\inst4|s_cntval~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_cntval~5_combout\ = (!\inst4|s_cntval\(0) & !\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_cntval\(0),
	datad => \SW[4]~input_o\,
	combout => \inst4|s_cntval~5_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X87_Y69_N18
\inst4|s_cntval[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_cntval[3]~1_combout\ = (\SW[5]~input_o\) # (\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst4|s_cntval[3]~1_combout\);

-- Location: FF_X87_Y69_N21
\inst4|s_cntval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst4|s_cntval~5_combout\,
	ena => \inst4|s_cntval[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_cntval\(0));

-- Location: LCCOMB_X87_Y69_N28
\inst4|s_cntval~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_cntval~0_combout\ = (!\SW[4]~input_o\ & (\inst4|s_cntval\(1) $ (\inst4|s_cntval\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \inst4|s_cntval\(1),
	datad => \inst4|s_cntval\(0),
	combout => \inst4|s_cntval~0_combout\);

-- Location: FF_X87_Y69_N29
\inst4|s_cntval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst4|s_cntval~0_combout\,
	ena => \inst4|s_cntval[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_cntval\(1));

-- Location: LCCOMB_X87_Y69_N22
\inst4|s_cntval~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_cntval~2_combout\ = (!\SW[4]~input_o\ & (\inst4|s_cntval\(2) $ (((\inst4|s_cntval\(0) & \inst4|s_cntval\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst4|s_cntval\(0),
	datac => \inst4|s_cntval\(2),
	datad => \inst4|s_cntval\(1),
	combout => \inst4|s_cntval~2_combout\);

-- Location: FF_X87_Y69_N23
\inst4|s_cntval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst4|s_cntval~2_combout\,
	ena => \inst4|s_cntval[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_cntval\(2));

-- Location: LCCOMB_X87_Y69_N16
\inst4|s_cntval~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_cntval~3_combout\ = (!\inst4|s_cntval\(0)) # (!\inst4|s_cntval\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_cntval\(1),
	datad => \inst4|s_cntval\(0),
	combout => \inst4|s_cntval~3_combout\);

-- Location: LCCOMB_X87_Y69_N12
\inst4|s_cntval~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_cntval~4_combout\ = (!\SW[4]~input_o\ & (\inst4|s_cntval\(3) $ (((\inst4|s_cntval\(2) & !\inst4|s_cntval~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_cntval\(2),
	datab => \SW[4]~input_o\,
	datac => \inst4|s_cntval\(3),
	datad => \inst4|s_cntval~3_combout\,
	combout => \inst4|s_cntval~4_combout\);

-- Location: FF_X87_Y69_N13
\inst4|s_cntval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst4|s_cntval~4_combout\,
	ena => \inst4|s_cntval[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_cntval\(3));

-- Location: LCCOMB_X87_Y69_N14
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst4|s_cntval\(1) & (\inst4|s_cntval\(3) & \inst4|s_cntval\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_cntval\(1),
	datac => \inst4|s_cntval\(3),
	datad => \inst4|s_cntval\(2),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y69_N30
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst4|s_cntval\(2) & ((\inst4|s_cntval\(1) $ (!\inst4|s_cntval\(3))) # (!\inst4|s_cntval\(0)))) # (!\inst4|s_cntval\(2) & (((\inst4|s_cntval\(3) & !\inst4|s_cntval\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_cntval\(1),
	datab => \inst4|s_cntval\(3),
	datac => \inst4|s_cntval\(2),
	datad => \inst4|s_cntval\(0),
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X87_Y69_N24
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst4|s_cntval\(0) & ((\inst4|s_cntval\(1)) # ((\inst4|s_cntval\(2))))) # (!\inst4|s_cntval\(0) & (\inst4|s_cntval\(3) & ((\inst4|s_cntval\(2)) # (!\inst4|s_cntval\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_cntval\(1),
	datab => \inst4|s_cntval\(3),
	datac => \inst4|s_cntval\(2),
	datad => \inst4|s_cntval\(0),
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X87_Y69_N26
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst4|s_cntval\(0) & ((\inst4|s_cntval\(2) & (!\inst4|s_cntval\(1))) # (!\inst4|s_cntval\(2) & ((\inst4|s_cntval\(3)))))) # (!\inst4|s_cntval\(0) & ((\inst4|s_cntval\(3) & ((\inst4|s_cntval\(2)))) # (!\inst4|s_cntval\(3) & 
-- (\inst4|s_cntval\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_cntval\(1),
	datab => \inst4|s_cntval\(3),
	datac => \inst4|s_cntval\(2),
	datad => \inst4|s_cntval\(0),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X87_Y69_N8
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst4|s_cntval\(1) & ((\inst4|s_cntval\(3) & ((!\inst4|s_cntval\(0)))) # (!\inst4|s_cntval\(3) & (\inst4|s_cntval\(2) & \inst4|s_cntval\(0))))) # (!\inst4|s_cntval\(1) & (((\inst4|s_cntval\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_cntval\(1),
	datab => \inst4|s_cntval\(3),
	datac => \inst4|s_cntval\(2),
	datad => \inst4|s_cntval\(0),
	combout => \inst|Mux7~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


