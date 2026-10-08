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

-- DATE "05/16/2023 11:41:57"

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

ENTITY 	SeqDetector IS
    PORT (
	LEDR : OUT std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0)
	);
END SeqDetector;

-- Design Ports Information
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqDetector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|s_divCounter[0]~27_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|s_divCounter[25]~78\ : std_logic;
SIGNAL \inst|s_divCounter[26]~79_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|s_divCounter[0]~28\ : std_logic;
SIGNAL \inst|s_divCounter[1]~29_combout\ : std_logic;
SIGNAL \inst|s_divCounter[1]~30\ : std_logic;
SIGNAL \inst|s_divCounter[2]~31_combout\ : std_logic;
SIGNAL \inst|s_divCounter[2]~32\ : std_logic;
SIGNAL \inst|s_divCounter[3]~33_combout\ : std_logic;
SIGNAL \inst|s_divCounter[3]~34\ : std_logic;
SIGNAL \inst|s_divCounter[4]~35_combout\ : std_logic;
SIGNAL \inst|s_divCounter[4]~36\ : std_logic;
SIGNAL \inst|s_divCounter[5]~37_combout\ : std_logic;
SIGNAL \inst|s_divCounter[5]~38\ : std_logic;
SIGNAL \inst|s_divCounter[6]~39_combout\ : std_logic;
SIGNAL \inst|s_divCounter[6]~40\ : std_logic;
SIGNAL \inst|s_divCounter[7]~41_combout\ : std_logic;
SIGNAL \inst|s_divCounter[7]~42\ : std_logic;
SIGNAL \inst|s_divCounter[8]~43_combout\ : std_logic;
SIGNAL \inst|s_divCounter[8]~44\ : std_logic;
SIGNAL \inst|s_divCounter[9]~45_combout\ : std_logic;
SIGNAL \inst|s_divCounter[9]~46\ : std_logic;
SIGNAL \inst|s_divCounter[10]~47_combout\ : std_logic;
SIGNAL \inst|s_divCounter[10]~48\ : std_logic;
SIGNAL \inst|s_divCounter[11]~49_combout\ : std_logic;
SIGNAL \inst|s_divCounter[11]~50\ : std_logic;
SIGNAL \inst|s_divCounter[12]~51_combout\ : std_logic;
SIGNAL \inst|s_divCounter[12]~52\ : std_logic;
SIGNAL \inst|s_divCounter[13]~53_combout\ : std_logic;
SIGNAL \inst|s_divCounter[13]~54\ : std_logic;
SIGNAL \inst|s_divCounter[14]~55_combout\ : std_logic;
SIGNAL \inst|s_divCounter[14]~56\ : std_logic;
SIGNAL \inst|s_divCounter[15]~57_combout\ : std_logic;
SIGNAL \inst|s_divCounter[15]~58\ : std_logic;
SIGNAL \inst|s_divCounter[16]~59_combout\ : std_logic;
SIGNAL \inst|s_divCounter[16]~60\ : std_logic;
SIGNAL \inst|s_divCounter[17]~61_combout\ : std_logic;
SIGNAL \inst|s_divCounter[17]~62\ : std_logic;
SIGNAL \inst|s_divCounter[18]~63_combout\ : std_logic;
SIGNAL \inst|s_divCounter[18]~64\ : std_logic;
SIGNAL \inst|s_divCounter[19]~65_combout\ : std_logic;
SIGNAL \inst|s_divCounter[19]~66\ : std_logic;
SIGNAL \inst|s_divCounter[20]~67_combout\ : std_logic;
SIGNAL \inst|s_divCounter[20]~68\ : std_logic;
SIGNAL \inst|s_divCounter[21]~69_combout\ : std_logic;
SIGNAL \inst|s_divCounter[21]~70\ : std_logic;
SIGNAL \inst|s_divCounter[22]~71_combout\ : std_logic;
SIGNAL \inst|s_divCounter[22]~72\ : std_logic;
SIGNAL \inst|s_divCounter[23]~73_combout\ : std_logic;
SIGNAL \inst|s_divCounter[23]~74\ : std_logic;
SIGNAL \inst|s_divCounter[24]~75_combout\ : std_logic;
SIGNAL \inst|s_divCounter[24]~76\ : std_logic;
SIGNAL \inst|s_divCounter[25]~77_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~5_combout\ : std_logic;
SIGNAL \inst|LessThan1~6_combout\ : std_logic;
SIGNAL \inst|LessThan1~7_combout\ : std_logic;
SIGNAL \inst|LessThan1~8_combout\ : std_logic;
SIGNAL \inst|clkOut~q\ : std_logic;
SIGNAL \inst|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|s_currentState.B~q\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|s_currentState.C~q\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|s_currentState.D~q\ : std_logic;
SIGNAL \inst2|seq~0_combout\ : std_logic;
SIGNAL \inst|s_divCounter\ : std_logic_vector(26 DOWNTO 0);

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

\inst|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seq~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X66_Y3_N6
\inst|s_divCounter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[0]~27_combout\ = \inst|s_divCounter\(0) $ (VCC)
-- \inst|s_divCounter[0]~28\ = CARRY(\inst|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(0),
	datad => VCC,
	combout => \inst|s_divCounter[0]~27_combout\,
	cout => \inst|s_divCounter[0]~28\);

-- Location: LCCOMB_X66_Y2_N30
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (((!\inst|s_divCounter\(13)) # (!\inst|s_divCounter\(15))) # (!\inst|s_divCounter\(14))) # (!\inst|s_divCounter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(16),
	datab => \inst|s_divCounter\(14),
	datac => \inst|s_divCounter\(15),
	datad => \inst|s_divCounter\(13),
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X65_Y3_N4
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (!\inst|s_divCounter\(17) & (!\inst|s_divCounter\(25) & !\inst|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(17),
	datac => \inst|s_divCounter\(25),
	datad => \inst|s_divCounter\(19),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X65_Y3_N26
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = ((!\inst|s_divCounter\(18) & !\inst|s_divCounter\(19))) # (!\inst|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(18),
	datac => \inst|s_divCounter\(19),
	datad => \inst|s_divCounter\(24),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X66_Y2_N24
\inst|s_divCounter[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[25]~77_combout\ = (\inst|s_divCounter\(25) & (!\inst|s_divCounter[24]~76\)) # (!\inst|s_divCounter\(25) & ((\inst|s_divCounter[24]~76\) # (GND)))
-- \inst|s_divCounter[25]~78\ = CARRY((!\inst|s_divCounter[24]~76\) # (!\inst|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(25),
	datad => VCC,
	cin => \inst|s_divCounter[24]~76\,
	combout => \inst|s_divCounter[25]~77_combout\,
	cout => \inst|s_divCounter[25]~78\);

-- Location: LCCOMB_X66_Y2_N26
\inst|s_divCounter[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[26]~79_combout\ = \inst|s_divCounter\(26) $ (!\inst|s_divCounter[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(26),
	cin => \inst|s_divCounter[25]~78\,
	combout => \inst|s_divCounter[26]~79_combout\);

-- Location: FF_X66_Y2_N27
\inst|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[26]~79_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(26));

-- Location: LCCOMB_X66_Y2_N28
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (\inst|s_divCounter\(22) & (\inst|s_divCounter\(21) & (\inst|s_divCounter\(20) & \inst|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(22),
	datab => \inst|s_divCounter\(21),
	datac => \inst|s_divCounter\(20),
	datad => \inst|s_divCounter\(23),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X65_Y3_N6
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = ((!\inst|s_divCounter\(25) & ((\inst|LessThan0~2_combout\) # (!\inst|LessThan1~0_combout\)))) # (!\inst|s_divCounter\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~2_combout\,
	datab => \inst|s_divCounter\(26),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|s_divCounter\(25),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X65_Y3_N16
\inst|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_combout\ = (!\inst|s_divCounter\(8) & (!\inst|s_divCounter\(11) & (!\inst|s_divCounter\(10) & !\inst|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(8),
	datab => \inst|s_divCounter\(11),
	datac => \inst|s_divCounter\(10),
	datad => \inst|s_divCounter\(9),
	combout => \inst|LessThan1~4_combout\);

-- Location: LCCOMB_X66_Y3_N4
\inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (((!\inst|s_divCounter\(3)) # (!\inst|s_divCounter\(2))) # (!\inst|s_divCounter\(1))) # (!\inst|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(0),
	datab => \inst|s_divCounter\(1),
	datac => \inst|s_divCounter\(2),
	datad => \inst|s_divCounter\(3),
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X65_Y3_N0
\inst|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = (((\inst|LessThan1~2_combout\) # (!\inst|s_divCounter\(5))) # (!\inst|s_divCounter\(6))) # (!\inst|s_divCounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(4),
	datab => \inst|s_divCounter\(6),
	datac => \inst|s_divCounter\(5),
	datad => \inst|LessThan1~2_combout\,
	combout => \inst|LessThan1~3_combout\);

-- Location: LCCOMB_X65_Y3_N14
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|s_divCounter\(12) & (!\inst|s_divCounter\(19) & (!\inst|s_divCounter\(17) & !\inst|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(12),
	datab => \inst|s_divCounter\(19),
	datac => \inst|s_divCounter\(17),
	datad => \inst|s_divCounter\(25),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X66_Y3_N2
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|LessThan1~4_combout\ & (\inst|LessThan0~0_combout\ & ((\inst|LessThan1~3_combout\) # (!\inst|s_divCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~4_combout\,
	datab => \inst|s_divCounter\(7),
	datac => \inst|LessThan1~3_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X66_Y3_N0
\inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (!\inst|LessThan0~3_combout\ & (!\inst|LessThan0~1_combout\ & ((!\inst|LessThan0~4_combout\) # (!\inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~5_combout\,
	datab => \inst|LessThan0~4_combout\,
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: FF_X66_Y3_N7
\inst|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[0]~27_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(0));

-- Location: LCCOMB_X66_Y3_N8
\inst|s_divCounter[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[1]~29_combout\ = (\inst|s_divCounter\(1) & (!\inst|s_divCounter[0]~28\)) # (!\inst|s_divCounter\(1) & ((\inst|s_divCounter[0]~28\) # (GND)))
-- \inst|s_divCounter[1]~30\ = CARRY((!\inst|s_divCounter[0]~28\) # (!\inst|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(1),
	datad => VCC,
	cin => \inst|s_divCounter[0]~28\,
	combout => \inst|s_divCounter[1]~29_combout\,
	cout => \inst|s_divCounter[1]~30\);

-- Location: FF_X66_Y3_N9
\inst|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[1]~29_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(1));

-- Location: LCCOMB_X66_Y3_N10
\inst|s_divCounter[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[2]~31_combout\ = (\inst|s_divCounter\(2) & (\inst|s_divCounter[1]~30\ $ (GND))) # (!\inst|s_divCounter\(2) & (!\inst|s_divCounter[1]~30\ & VCC))
-- \inst|s_divCounter[2]~32\ = CARRY((\inst|s_divCounter\(2) & !\inst|s_divCounter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(2),
	datad => VCC,
	cin => \inst|s_divCounter[1]~30\,
	combout => \inst|s_divCounter[2]~31_combout\,
	cout => \inst|s_divCounter[2]~32\);

-- Location: FF_X66_Y3_N11
\inst|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[2]~31_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(2));

-- Location: LCCOMB_X66_Y3_N12
\inst|s_divCounter[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[3]~33_combout\ = (\inst|s_divCounter\(3) & (!\inst|s_divCounter[2]~32\)) # (!\inst|s_divCounter\(3) & ((\inst|s_divCounter[2]~32\) # (GND)))
-- \inst|s_divCounter[3]~34\ = CARRY((!\inst|s_divCounter[2]~32\) # (!\inst|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(3),
	datad => VCC,
	cin => \inst|s_divCounter[2]~32\,
	combout => \inst|s_divCounter[3]~33_combout\,
	cout => \inst|s_divCounter[3]~34\);

-- Location: FF_X66_Y3_N13
\inst|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[3]~33_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(3));

-- Location: LCCOMB_X66_Y3_N14
\inst|s_divCounter[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[4]~35_combout\ = (\inst|s_divCounter\(4) & (\inst|s_divCounter[3]~34\ $ (GND))) # (!\inst|s_divCounter\(4) & (!\inst|s_divCounter[3]~34\ & VCC))
-- \inst|s_divCounter[4]~36\ = CARRY((\inst|s_divCounter\(4) & !\inst|s_divCounter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(4),
	datad => VCC,
	cin => \inst|s_divCounter[3]~34\,
	combout => \inst|s_divCounter[4]~35_combout\,
	cout => \inst|s_divCounter[4]~36\);

-- Location: FF_X66_Y3_N15
\inst|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[4]~35_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(4));

-- Location: LCCOMB_X66_Y3_N16
\inst|s_divCounter[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[5]~37_combout\ = (\inst|s_divCounter\(5) & (!\inst|s_divCounter[4]~36\)) # (!\inst|s_divCounter\(5) & ((\inst|s_divCounter[4]~36\) # (GND)))
-- \inst|s_divCounter[5]~38\ = CARRY((!\inst|s_divCounter[4]~36\) # (!\inst|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(5),
	datad => VCC,
	cin => \inst|s_divCounter[4]~36\,
	combout => \inst|s_divCounter[5]~37_combout\,
	cout => \inst|s_divCounter[5]~38\);

-- Location: FF_X66_Y3_N17
\inst|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[5]~37_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(5));

-- Location: LCCOMB_X66_Y3_N18
\inst|s_divCounter[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[6]~39_combout\ = (\inst|s_divCounter\(6) & (\inst|s_divCounter[5]~38\ $ (GND))) # (!\inst|s_divCounter\(6) & (!\inst|s_divCounter[5]~38\ & VCC))
-- \inst|s_divCounter[6]~40\ = CARRY((\inst|s_divCounter\(6) & !\inst|s_divCounter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(6),
	datad => VCC,
	cin => \inst|s_divCounter[5]~38\,
	combout => \inst|s_divCounter[6]~39_combout\,
	cout => \inst|s_divCounter[6]~40\);

-- Location: FF_X66_Y3_N19
\inst|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[6]~39_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(6));

-- Location: LCCOMB_X66_Y3_N20
\inst|s_divCounter[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[7]~41_combout\ = (\inst|s_divCounter\(7) & (!\inst|s_divCounter[6]~40\)) # (!\inst|s_divCounter\(7) & ((\inst|s_divCounter[6]~40\) # (GND)))
-- \inst|s_divCounter[7]~42\ = CARRY((!\inst|s_divCounter[6]~40\) # (!\inst|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(7),
	datad => VCC,
	cin => \inst|s_divCounter[6]~40\,
	combout => \inst|s_divCounter[7]~41_combout\,
	cout => \inst|s_divCounter[7]~42\);

-- Location: FF_X66_Y3_N21
\inst|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[7]~41_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(7));

-- Location: LCCOMB_X66_Y3_N22
\inst|s_divCounter[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[8]~43_combout\ = (\inst|s_divCounter\(8) & (\inst|s_divCounter[7]~42\ $ (GND))) # (!\inst|s_divCounter\(8) & (!\inst|s_divCounter[7]~42\ & VCC))
-- \inst|s_divCounter[8]~44\ = CARRY((\inst|s_divCounter\(8) & !\inst|s_divCounter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(8),
	datad => VCC,
	cin => \inst|s_divCounter[7]~42\,
	combout => \inst|s_divCounter[8]~43_combout\,
	cout => \inst|s_divCounter[8]~44\);

-- Location: FF_X66_Y3_N23
\inst|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[8]~43_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(8));

-- Location: LCCOMB_X66_Y3_N24
\inst|s_divCounter[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[9]~45_combout\ = (\inst|s_divCounter\(9) & (!\inst|s_divCounter[8]~44\)) # (!\inst|s_divCounter\(9) & ((\inst|s_divCounter[8]~44\) # (GND)))
-- \inst|s_divCounter[9]~46\ = CARRY((!\inst|s_divCounter[8]~44\) # (!\inst|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(9),
	datad => VCC,
	cin => \inst|s_divCounter[8]~44\,
	combout => \inst|s_divCounter[9]~45_combout\,
	cout => \inst|s_divCounter[9]~46\);

-- Location: FF_X66_Y3_N25
\inst|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[9]~45_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(9));

-- Location: LCCOMB_X66_Y3_N26
\inst|s_divCounter[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[10]~47_combout\ = (\inst|s_divCounter\(10) & (\inst|s_divCounter[9]~46\ $ (GND))) # (!\inst|s_divCounter\(10) & (!\inst|s_divCounter[9]~46\ & VCC))
-- \inst|s_divCounter[10]~48\ = CARRY((\inst|s_divCounter\(10) & !\inst|s_divCounter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(10),
	datad => VCC,
	cin => \inst|s_divCounter[9]~46\,
	combout => \inst|s_divCounter[10]~47_combout\,
	cout => \inst|s_divCounter[10]~48\);

-- Location: FF_X66_Y3_N27
\inst|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[10]~47_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(10));

-- Location: LCCOMB_X66_Y3_N28
\inst|s_divCounter[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[11]~49_combout\ = (\inst|s_divCounter\(11) & (!\inst|s_divCounter[10]~48\)) # (!\inst|s_divCounter\(11) & ((\inst|s_divCounter[10]~48\) # (GND)))
-- \inst|s_divCounter[11]~50\ = CARRY((!\inst|s_divCounter[10]~48\) # (!\inst|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(11),
	datad => VCC,
	cin => \inst|s_divCounter[10]~48\,
	combout => \inst|s_divCounter[11]~49_combout\,
	cout => \inst|s_divCounter[11]~50\);

-- Location: FF_X66_Y3_N29
\inst|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[11]~49_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(11));

-- Location: LCCOMB_X66_Y3_N30
\inst|s_divCounter[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[12]~51_combout\ = (\inst|s_divCounter\(12) & (\inst|s_divCounter[11]~50\ $ (GND))) # (!\inst|s_divCounter\(12) & (!\inst|s_divCounter[11]~50\ & VCC))
-- \inst|s_divCounter[12]~52\ = CARRY((\inst|s_divCounter\(12) & !\inst|s_divCounter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(12),
	datad => VCC,
	cin => \inst|s_divCounter[11]~50\,
	combout => \inst|s_divCounter[12]~51_combout\,
	cout => \inst|s_divCounter[12]~52\);

-- Location: FF_X66_Y3_N31
\inst|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[12]~51_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(12));

-- Location: LCCOMB_X66_Y2_N0
\inst|s_divCounter[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[13]~53_combout\ = (\inst|s_divCounter\(13) & (!\inst|s_divCounter[12]~52\)) # (!\inst|s_divCounter\(13) & ((\inst|s_divCounter[12]~52\) # (GND)))
-- \inst|s_divCounter[13]~54\ = CARRY((!\inst|s_divCounter[12]~52\) # (!\inst|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(13),
	datad => VCC,
	cin => \inst|s_divCounter[12]~52\,
	combout => \inst|s_divCounter[13]~53_combout\,
	cout => \inst|s_divCounter[13]~54\);

-- Location: FF_X66_Y2_N1
\inst|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[13]~53_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(13));

-- Location: LCCOMB_X66_Y2_N2
\inst|s_divCounter[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[14]~55_combout\ = (\inst|s_divCounter\(14) & (\inst|s_divCounter[13]~54\ $ (GND))) # (!\inst|s_divCounter\(14) & (!\inst|s_divCounter[13]~54\ & VCC))
-- \inst|s_divCounter[14]~56\ = CARRY((\inst|s_divCounter\(14) & !\inst|s_divCounter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(14),
	datad => VCC,
	cin => \inst|s_divCounter[13]~54\,
	combout => \inst|s_divCounter[14]~55_combout\,
	cout => \inst|s_divCounter[14]~56\);

-- Location: FF_X66_Y2_N3
\inst|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[14]~55_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(14));

-- Location: LCCOMB_X66_Y2_N4
\inst|s_divCounter[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[15]~57_combout\ = (\inst|s_divCounter\(15) & (!\inst|s_divCounter[14]~56\)) # (!\inst|s_divCounter\(15) & ((\inst|s_divCounter[14]~56\) # (GND)))
-- \inst|s_divCounter[15]~58\ = CARRY((!\inst|s_divCounter[14]~56\) # (!\inst|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(15),
	datad => VCC,
	cin => \inst|s_divCounter[14]~56\,
	combout => \inst|s_divCounter[15]~57_combout\,
	cout => \inst|s_divCounter[15]~58\);

-- Location: FF_X66_Y2_N5
\inst|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[15]~57_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(15));

-- Location: LCCOMB_X66_Y2_N6
\inst|s_divCounter[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[16]~59_combout\ = (\inst|s_divCounter\(16) & (\inst|s_divCounter[15]~58\ $ (GND))) # (!\inst|s_divCounter\(16) & (!\inst|s_divCounter[15]~58\ & VCC))
-- \inst|s_divCounter[16]~60\ = CARRY((\inst|s_divCounter\(16) & !\inst|s_divCounter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(16),
	datad => VCC,
	cin => \inst|s_divCounter[15]~58\,
	combout => \inst|s_divCounter[16]~59_combout\,
	cout => \inst|s_divCounter[16]~60\);

-- Location: FF_X66_Y2_N7
\inst|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[16]~59_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(16));

-- Location: LCCOMB_X66_Y2_N8
\inst|s_divCounter[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[17]~61_combout\ = (\inst|s_divCounter\(17) & (!\inst|s_divCounter[16]~60\)) # (!\inst|s_divCounter\(17) & ((\inst|s_divCounter[16]~60\) # (GND)))
-- \inst|s_divCounter[17]~62\ = CARRY((!\inst|s_divCounter[16]~60\) # (!\inst|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(17),
	datad => VCC,
	cin => \inst|s_divCounter[16]~60\,
	combout => \inst|s_divCounter[17]~61_combout\,
	cout => \inst|s_divCounter[17]~62\);

-- Location: FF_X66_Y2_N9
\inst|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[17]~61_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(17));

-- Location: LCCOMB_X66_Y2_N10
\inst|s_divCounter[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[18]~63_combout\ = (\inst|s_divCounter\(18) & (\inst|s_divCounter[17]~62\ $ (GND))) # (!\inst|s_divCounter\(18) & (!\inst|s_divCounter[17]~62\ & VCC))
-- \inst|s_divCounter[18]~64\ = CARRY((\inst|s_divCounter\(18) & !\inst|s_divCounter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(18),
	datad => VCC,
	cin => \inst|s_divCounter[17]~62\,
	combout => \inst|s_divCounter[18]~63_combout\,
	cout => \inst|s_divCounter[18]~64\);

-- Location: FF_X66_Y2_N11
\inst|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[18]~63_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(18));

-- Location: LCCOMB_X66_Y2_N12
\inst|s_divCounter[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[19]~65_combout\ = (\inst|s_divCounter\(19) & (!\inst|s_divCounter[18]~64\)) # (!\inst|s_divCounter\(19) & ((\inst|s_divCounter[18]~64\) # (GND)))
-- \inst|s_divCounter[19]~66\ = CARRY((!\inst|s_divCounter[18]~64\) # (!\inst|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(19),
	datad => VCC,
	cin => \inst|s_divCounter[18]~64\,
	combout => \inst|s_divCounter[19]~65_combout\,
	cout => \inst|s_divCounter[19]~66\);

-- Location: FF_X66_Y2_N13
\inst|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[19]~65_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(19));

-- Location: LCCOMB_X66_Y2_N14
\inst|s_divCounter[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[20]~67_combout\ = (\inst|s_divCounter\(20) & (\inst|s_divCounter[19]~66\ $ (GND))) # (!\inst|s_divCounter\(20) & (!\inst|s_divCounter[19]~66\ & VCC))
-- \inst|s_divCounter[20]~68\ = CARRY((\inst|s_divCounter\(20) & !\inst|s_divCounter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(20),
	datad => VCC,
	cin => \inst|s_divCounter[19]~66\,
	combout => \inst|s_divCounter[20]~67_combout\,
	cout => \inst|s_divCounter[20]~68\);

-- Location: FF_X66_Y2_N15
\inst|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[20]~67_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(20));

-- Location: LCCOMB_X66_Y2_N16
\inst|s_divCounter[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[21]~69_combout\ = (\inst|s_divCounter\(21) & (!\inst|s_divCounter[20]~68\)) # (!\inst|s_divCounter\(21) & ((\inst|s_divCounter[20]~68\) # (GND)))
-- \inst|s_divCounter[21]~70\ = CARRY((!\inst|s_divCounter[20]~68\) # (!\inst|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(21),
	datad => VCC,
	cin => \inst|s_divCounter[20]~68\,
	combout => \inst|s_divCounter[21]~69_combout\,
	cout => \inst|s_divCounter[21]~70\);

-- Location: FF_X66_Y2_N17
\inst|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[21]~69_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(21));

-- Location: LCCOMB_X66_Y2_N18
\inst|s_divCounter[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[22]~71_combout\ = (\inst|s_divCounter\(22) & (\inst|s_divCounter[21]~70\ $ (GND))) # (!\inst|s_divCounter\(22) & (!\inst|s_divCounter[21]~70\ & VCC))
-- \inst|s_divCounter[22]~72\ = CARRY((\inst|s_divCounter\(22) & !\inst|s_divCounter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(22),
	datad => VCC,
	cin => \inst|s_divCounter[21]~70\,
	combout => \inst|s_divCounter[22]~71_combout\,
	cout => \inst|s_divCounter[22]~72\);

-- Location: FF_X66_Y2_N19
\inst|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[22]~71_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(22));

-- Location: LCCOMB_X66_Y2_N20
\inst|s_divCounter[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[23]~73_combout\ = (\inst|s_divCounter\(23) & (!\inst|s_divCounter[22]~72\)) # (!\inst|s_divCounter\(23) & ((\inst|s_divCounter[22]~72\) # (GND)))
-- \inst|s_divCounter[23]~74\ = CARRY((!\inst|s_divCounter[22]~72\) # (!\inst|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(23),
	datad => VCC,
	cin => \inst|s_divCounter[22]~72\,
	combout => \inst|s_divCounter[23]~73_combout\,
	cout => \inst|s_divCounter[23]~74\);

-- Location: FF_X66_Y2_N21
\inst|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[23]~73_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(23));

-- Location: LCCOMB_X66_Y2_N22
\inst|s_divCounter[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[24]~75_combout\ = (\inst|s_divCounter\(24) & (\inst|s_divCounter[23]~74\ $ (GND))) # (!\inst|s_divCounter\(24) & (!\inst|s_divCounter[23]~74\ & VCC))
-- \inst|s_divCounter[24]~76\ = CARRY((\inst|s_divCounter\(24) & !\inst|s_divCounter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(24),
	datad => VCC,
	cin => \inst|s_divCounter[23]~74\,
	combout => \inst|s_divCounter[24]~75_combout\,
	cout => \inst|s_divCounter[24]~76\);

-- Location: FF_X66_Y2_N23
\inst|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[24]~75_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(24));

-- Location: FF_X66_Y2_N25
\inst|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[25]~77_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(25));

-- Location: LCCOMB_X65_Y3_N18
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (((!\inst|s_divCounter\(15)) # (!\inst|s_divCounter\(14))) # (!\inst|s_divCounter\(13))) # (!\inst|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(12),
	datab => \inst|s_divCounter\(13),
	datac => \inst|s_divCounter\(14),
	datad => \inst|s_divCounter\(15),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X65_Y3_N2
\inst|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_combout\ = (\inst|LessThan1~1_combout\) # ((!\inst|s_divCounter\(7) & (\inst|LessThan1~4_combout\ & \inst|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(7),
	datab => \inst|LessThan1~4_combout\,
	datac => \inst|LessThan1~3_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|LessThan1~5_combout\);

-- Location: LCCOMB_X65_Y3_N28
\inst|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~6_combout\ = (\inst|s_divCounter\(17) & ((\inst|s_divCounter\(16)) # (!\inst|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(16),
	datab => \inst|s_divCounter\(17),
	datad => \inst|LessThan1~5_combout\,
	combout => \inst|LessThan1~6_combout\);

-- Location: LCCOMB_X65_Y3_N24
\inst|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_combout\ = (\inst|s_divCounter\(19) & (\inst|LessThan1~0_combout\ & ((\inst|s_divCounter\(18)) # (\inst|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(19),
	datab => \inst|s_divCounter\(18),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan1~6_combout\,
	combout => \inst|LessThan1~7_combout\);

-- Location: LCCOMB_X65_Y3_N22
\inst|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~8_combout\ = (\inst|s_divCounter\(26)) # ((\inst|s_divCounter\(25) & ((\inst|s_divCounter\(24)) # (\inst|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(25),
	datab => \inst|s_divCounter\(24),
	datac => \inst|s_divCounter\(26),
	datad => \inst|LessThan1~7_combout\,
	combout => \inst|LessThan1~8_combout\);

-- Location: FF_X65_Y3_N23
\inst|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkOut~q\);

-- Location: CLKCTRL_G15
\inst|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clkOut~clkctrl_outclk\);

-- Location: FF_X77_Y72_N19
\inst2|s_currentState.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.B~q\);

-- Location: LCCOMB_X77_Y72_N12
\inst2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (!\SW[0]~input_o\ & \inst2|s_currentState.B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \inst2|s_currentState.B~q\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X77_Y72_N13
\inst2|s_currentState.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.C~q\);

-- Location: LCCOMB_X77_Y72_N28
\inst2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (!\SW[0]~input_o\ & \inst2|s_currentState.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \inst2|s_currentState.C~q\,
	combout => \inst2|Selector2~0_combout\);

-- Location: FF_X77_Y72_N29
\inst2|s_currentState.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.D~q\);

-- Location: LCCOMB_X77_Y72_N2
\inst2|seq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seq~0_combout\ = (\SW[0]~input_o\ & \inst2|s_currentState.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \inst2|s_currentState.D~q\,
	combout => \inst2|seq~0_combout\);

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


