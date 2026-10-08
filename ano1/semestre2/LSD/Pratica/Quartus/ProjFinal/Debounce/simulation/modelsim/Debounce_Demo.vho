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

-- DATE "05/25/2023 18:08:07"

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

ENTITY 	DebounceUnit IS
    PORT (
	refClk : IN std_logic;
	dirtyIn : IN std_logic;
	pulsedOut : OUT std_logic
	);
END DebounceUnit;

-- Design Ports Information
-- pulsedOut	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- refClk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dirtyIn	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DebounceUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_refClk : std_logic;
SIGNAL ww_dirtyIn : std_logic;
SIGNAL ww_pulsedOut : std_logic;
SIGNAL \refClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulsedOut~output_o\ : std_logic;
SIGNAL \refClk~input_o\ : std_logic;
SIGNAL \refClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dirtyIn~input_o\ : std_logic;
SIGNAL \s_dirtyIn~0_combout\ : std_logic;
SIGNAL \s_dirtyIn~q\ : std_logic;
SIGNAL \s_previousIn~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \s_debounceCnt~24_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s_debounceCnt~20_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \s_debounceCnt~21_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \s_debounceCnt~22_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \s_debounceCnt~23_combout\ : std_logic;
SIGNAL \s_pulsedOut~5_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \s_debounceCnt~1_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \s_debounceCnt~12_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \s_debounceCnt~13_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \s_debounceCnt~14_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \s_debounceCnt~15_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \s_debounceCnt~16_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \s_debounceCnt~8_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \s_debounceCnt~9_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \s_debounceCnt~17_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \s_debounceCnt~5_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \s_debounceCnt~6_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \s_debounceCnt~7_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \s_pulsedOut~3_combout\ : std_logic;
SIGNAL \s_pulsedOut~0_combout\ : std_logic;
SIGNAL \s_pulsedOut~2_combout\ : std_logic;
SIGNAL \s_pulsedOut~1_combout\ : std_logic;
SIGNAL \s_pulsedOut~4_combout\ : std_logic;
SIGNAL \s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \s_debounceCnt~27_combout\ : std_logic;
SIGNAL \s_pulsedOut~6_combout\ : std_logic;
SIGNAL \s_pulsedOut~7_combout\ : std_logic;
SIGNAL \s_pulsedOut~q\ : std_logic;
SIGNAL s_debounceCnt : std_logic_vector(22 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_refClk <= refClk;
ww_dirtyIn <= dirtyIn;
pulsedOut <= ww_pulsedOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\refClk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \refClk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X27_Y73_N16
\pulsedOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_pulsedOut~q\,
	devoe => ww_devoe,
	o => \pulsedOut~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\refClk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_refClk,
	o => \refClk~input_o\);

-- Location: CLKCTRL_G2
\refClk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \refClk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \refClk~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y73_N8
\dirtyIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dirtyIn,
	o => \dirtyIn~input_o\);

-- Location: LCCOMB_X30_Y71_N4
\s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_dirtyIn~0_combout\ = !\dirtyIn~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dirtyIn~input_o\,
	combout => \s_dirtyIn~0_combout\);

-- Location: FF_X30_Y71_N5
s_dirtyIn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_dirtyIn~q\);

-- Location: FF_X28_Y71_N31
s_previousIn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	asdata => \s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_previousIn~q\);

-- Location: LCCOMB_X29_Y71_N10
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_debounceCnt(0) $ (VCC)
-- \Add0~1\ = CARRY(s_debounceCnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X29_Y71_N2
\s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~24_combout\ = (\s_debounceCnt[0]~4_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_debounceCnt[0]~4_combout\,
	datad => \Add0~0_combout\,
	combout => \s_debounceCnt~24_combout\);

-- Location: FF_X29_Y71_N3
\s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~24_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(0));

-- Location: LCCOMB_X29_Y71_N12
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (s_debounceCnt(1) & (\Add0~1\ & VCC)) # (!s_debounceCnt(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!s_debounceCnt(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X29_Y71_N0
\s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~20_combout\ = (\Add0~2_combout\ & \s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datac => \s_debounceCnt[0]~4_combout\,
	combout => \s_debounceCnt~20_combout\);

-- Location: FF_X29_Y71_N1
\s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~20_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(1));

-- Location: LCCOMB_X29_Y71_N14
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (s_debounceCnt(2) & ((GND) # (!\Add0~3\))) # (!s_debounceCnt(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((s_debounceCnt(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X29_Y71_N6
\s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~21_combout\ = (\Add0~4_combout\ & \s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datac => \s_debounceCnt[0]~4_combout\,
	combout => \s_debounceCnt~21_combout\);

-- Location: FF_X29_Y71_N7
\s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~21_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(2));

-- Location: LCCOMB_X29_Y71_N16
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (s_debounceCnt(3) & (\Add0~5\ & VCC)) # (!s_debounceCnt(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!s_debounceCnt(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X29_Y71_N4
\s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~22_combout\ = (\Add0~6_combout\ & \s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datac => \s_debounceCnt[0]~4_combout\,
	combout => \s_debounceCnt~22_combout\);

-- Location: FF_X29_Y71_N5
\s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~22_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(3));

-- Location: LCCOMB_X29_Y71_N18
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (s_debounceCnt(4) & ((GND) # (!\Add0~7\))) # (!s_debounceCnt(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((s_debounceCnt(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X28_Y71_N14
\s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~23_combout\ = (\Add0~8_combout\ & \s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => \s_debounceCnt[0]~4_combout\,
	combout => \s_debounceCnt~23_combout\);

-- Location: FF_X28_Y71_N15
\s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~23_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(4));

-- Location: LCCOMB_X28_Y71_N24
\s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pulsedOut~5_combout\ = (!s_debounceCnt(3) & (!s_debounceCnt(4) & (!s_debounceCnt(1) & !s_debounceCnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(3),
	datab => s_debounceCnt(4),
	datac => s_debounceCnt(1),
	datad => s_debounceCnt(2),
	combout => \s_pulsedOut~5_combout\);

-- Location: LCCOMB_X29_Y71_N20
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_debounceCnt(5) & (\Add0~9\ & VCC)) # (!s_debounceCnt(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!s_debounceCnt(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X29_Y71_N22
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (s_debounceCnt(6) & ((GND) # (!\Add0~11\))) # (!s_debounceCnt(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((s_debounceCnt(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X28_Y71_N28
\s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~1_combout\ = (\s_debounceCnt[0]~0_combout\ & ((\Add0~12_combout\) # (!\s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => \s_previousIn~q\,
	datad => \s_debounceCnt[0]~0_combout\,
	combout => \s_debounceCnt~1_combout\);

-- Location: FF_X28_Y71_N29
\s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~1_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(6));

-- Location: LCCOMB_X29_Y71_N24
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (s_debounceCnt(7) & (\Add0~13\ & VCC)) # (!s_debounceCnt(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((!s_debounceCnt(7) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X27_Y71_N4
\s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~12_combout\ = (\Add0~14_combout\ & \s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datac => \s_debounceCnt[0]~4_combout\,
	combout => \s_debounceCnt~12_combout\);

-- Location: FF_X27_Y71_N5
\s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~12_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(7));

-- Location: LCCOMB_X29_Y71_N26
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (s_debounceCnt(8) & ((GND) # (!\Add0~15\))) # (!s_debounceCnt(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((s_debounceCnt(8)) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X27_Y71_N18
\s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~13_combout\ = (\s_debounceCnt[0]~0_combout\ & ((\Add0~16_combout\) # (!\s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \s_previousIn~q\,
	datad => \s_debounceCnt[0]~0_combout\,
	combout => \s_debounceCnt~13_combout\);

-- Location: FF_X27_Y71_N19
\s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~13_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(8));

-- Location: LCCOMB_X29_Y71_N28
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (s_debounceCnt(9) & (\Add0~17\ & VCC)) # (!s_debounceCnt(9) & (!\Add0~17\))
-- \Add0~19\ = CARRY((!s_debounceCnt(9) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X27_Y71_N0
\s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~14_combout\ = (\s_debounceCnt[0]~0_combout\ & ((\Add0~18_combout\) # (!\s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_previousIn~q\,
	datac => \Add0~18_combout\,
	datad => \s_debounceCnt[0]~0_combout\,
	combout => \s_debounceCnt~14_combout\);

-- Location: FF_X27_Y71_N1
\s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~14_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(9));

-- Location: LCCOMB_X29_Y71_N30
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (s_debounceCnt(10) & ((GND) # (!\Add0~19\))) # (!s_debounceCnt(10) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((s_debounceCnt(10)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X27_Y71_N26
\s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~15_combout\ = (\s_debounceCnt[0]~4_combout\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_debounceCnt[0]~4_combout\,
	datad => \Add0~20_combout\,
	combout => \s_debounceCnt~15_combout\);

-- Location: FF_X27_Y71_N27
\s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~15_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(10));

-- Location: LCCOMB_X29_Y70_N0
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (s_debounceCnt(11) & (\Add0~21\ & VCC)) # (!s_debounceCnt(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((!s_debounceCnt(11) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X28_Y71_N10
\s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~16_combout\ = (\s_debounceCnt[0]~0_combout\ & ((\Add0~22_combout\) # (!\s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_previousIn~q\,
	datac => \Add0~22_combout\,
	datad => \s_debounceCnt[0]~0_combout\,
	combout => \s_debounceCnt~16_combout\);

-- Location: FF_X28_Y71_N11
\s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~16_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(11));

-- Location: LCCOMB_X29_Y70_N2
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (s_debounceCnt(12) & ((GND) # (!\Add0~23\))) # (!s_debounceCnt(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((s_debounceCnt(12)) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X28_Y70_N20
\s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~8_combout\ = (\s_debounceCnt[0]~4_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_debounceCnt[0]~4_combout\,
	datad => \Add0~24_combout\,
	combout => \s_debounceCnt~8_combout\);

-- Location: FF_X28_Y70_N21
\s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~8_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(12));

-- Location: LCCOMB_X29_Y70_N4
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (s_debounceCnt(13) & (\Add0~25\ & VCC)) # (!s_debounceCnt(13) & (!\Add0~25\))
-- \Add0~27\ = CARRY((!s_debounceCnt(13) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X28_Y70_N26
\s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~9_combout\ = (\s_debounceCnt[0]~4_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_debounceCnt[0]~4_combout\,
	datad => \Add0~26_combout\,
	combout => \s_debounceCnt~9_combout\);

-- Location: FF_X28_Y70_N27
\s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~9_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(13));

-- Location: LCCOMB_X29_Y70_N6
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (s_debounceCnt(14) & ((GND) # (!\Add0~27\))) # (!s_debounceCnt(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((s_debounceCnt(14)) # (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X28_Y71_N8
\s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~17_combout\ = (\s_debounceCnt[0]~0_combout\ & ((\Add0~28_combout\) # (!\s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_previousIn~q\,
	datac => \Add0~28_combout\,
	datad => \s_debounceCnt[0]~0_combout\,
	combout => \s_debounceCnt~17_combout\);

-- Location: FF_X28_Y71_N9
\s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~17_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(14));

-- Location: LCCOMB_X29_Y70_N8
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (s_debounceCnt(15) & (\Add0~29\ & VCC)) # (!s_debounceCnt(15) & (!\Add0~29\))
-- \Add0~31\ = CARRY((!s_debounceCnt(15) & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X28_Y71_N26
\s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~5_combout\ = (\Add0~30_combout\ & \s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \s_debounceCnt[0]~4_combout\,
	combout => \s_debounceCnt~5_combout\);

-- Location: FF_X28_Y71_N27
\s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~5_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(15));

-- Location: LCCOMB_X29_Y70_N10
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (s_debounceCnt(16) & ((GND) # (!\Add0~31\))) # (!s_debounceCnt(16) & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((s_debounceCnt(16)) # (!\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X27_Y71_N14
\s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~6_combout\ = (\s_debounceCnt[0]~4_combout\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_debounceCnt[0]~4_combout\,
	datad => \Add0~32_combout\,
	combout => \s_debounceCnt~6_combout\);

-- Location: FF_X27_Y71_N15
\s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~6_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(16));

-- Location: LCCOMB_X29_Y70_N12
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (s_debounceCnt(17) & (\Add0~33\ & VCC)) # (!s_debounceCnt(17) & (!\Add0~33\))
-- \Add0~35\ = CARRY((!s_debounceCnt(17) & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X28_Y71_N4
\s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~7_combout\ = (\Add0~34_combout\ & \s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~34_combout\,
	datad => \s_debounceCnt[0]~4_combout\,
	combout => \s_debounceCnt~7_combout\);

-- Location: FF_X28_Y71_N5
\s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~7_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(17));

-- Location: LCCOMB_X27_Y71_N2
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (s_debounceCnt(13)) # ((s_debounceCnt(12)) # ((s_debounceCnt(10) & s_debounceCnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(10),
	datab => s_debounceCnt(11),
	datac => s_debounceCnt(13),
	datad => s_debounceCnt(12),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y71_N20
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (s_debounceCnt(15)) # ((s_debounceCnt(16)) # ((s_debounceCnt(14) & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(15),
	datab => s_debounceCnt(16),
	datac => s_debounceCnt(14),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X27_Y71_N22
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (s_debounceCnt(18) & (s_debounceCnt(19) & ((s_debounceCnt(17)) # (\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(18),
	datab => s_debounceCnt(17),
	datac => s_debounceCnt(19),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X27_Y71_N10
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (s_debounceCnt(19) & (s_debounceCnt(8) & (s_debounceCnt(14) & s_debounceCnt(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(19),
	datab => s_debounceCnt(8),
	datac => s_debounceCnt(14),
	datad => s_debounceCnt(18),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y71_N8
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (s_debounceCnt(11) & s_debounceCnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_debounceCnt(11),
	datad => s_debounceCnt(9),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y71_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (s_debounceCnt(6) & ((s_debounceCnt(0)) # ((s_debounceCnt(5)) # (!\s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(0),
	datab => s_debounceCnt(6),
	datac => s_debounceCnt(5),
	datad => \s_pulsedOut~5_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y71_N28
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & (\LessThan0~1_combout\ & ((s_debounceCnt(7)) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => s_debounceCnt(7),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y71_N24
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (s_debounceCnt(21)) # ((s_debounceCnt(20)) # ((\LessThan0~6_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(21),
	datab => s_debounceCnt(20),
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X28_Y71_N16
\s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt[0]~0_combout\ = (\s_dirtyIn~q\ & ((!\LessThan0~7_combout\) # (!s_debounceCnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(22),
	datac => \s_dirtyIn~q\,
	datad => \LessThan0~7_combout\,
	combout => \s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X29_Y70_N14
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (s_debounceCnt(18) & ((GND) # (!\Add0~35\))) # (!s_debounceCnt(18) & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((s_debounceCnt(18)) # (!\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X28_Y71_N6
\s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt[18]~18_combout\ = (\s_debounceCnt[0]~3_combout\ & (\s_debounceCnt[0]~0_combout\ & ((\Add0~36_combout\) # (!\s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_debounceCnt[0]~3_combout\,
	datab => \s_debounceCnt[0]~0_combout\,
	datac => \s_previousIn~q\,
	datad => \Add0~36_combout\,
	combout => \s_debounceCnt[18]~18_combout\);

-- Location: FF_X28_Y71_N7
\s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(18));

-- Location: LCCOMB_X28_Y71_N22
\s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pulsedOut~3_combout\ = (!s_debounceCnt(18) & (!s_debounceCnt(19) & (!s_debounceCnt(14) & !s_debounceCnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(18),
	datab => s_debounceCnt(19),
	datac => s_debounceCnt(14),
	datad => s_debounceCnt(11),
	combout => \s_pulsedOut~3_combout\);

-- Location: LCCOMB_X28_Y71_N18
\s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pulsedOut~0_combout\ = (!s_debounceCnt(15) & (!s_debounceCnt(17) & (!s_debounceCnt(6) & !s_debounceCnt(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(15),
	datab => s_debounceCnt(17),
	datac => s_debounceCnt(6),
	datad => s_debounceCnt(16),
	combout => \s_pulsedOut~0_combout\);

-- Location: LCCOMB_X27_Y71_N16
\s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pulsedOut~2_combout\ = (!s_debounceCnt(10) & (!s_debounceCnt(9) & (!s_debounceCnt(7) & !s_debounceCnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(10),
	datab => s_debounceCnt(9),
	datac => s_debounceCnt(7),
	datad => s_debounceCnt(8),
	combout => \s_pulsedOut~2_combout\);

-- Location: LCCOMB_X28_Y71_N12
\s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pulsedOut~1_combout\ = (!s_debounceCnt(13) & (!s_debounceCnt(12) & (!s_debounceCnt(20) & !s_debounceCnt(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(13),
	datab => s_debounceCnt(12),
	datac => s_debounceCnt(20),
	datad => s_debounceCnt(21),
	combout => \s_pulsedOut~1_combout\);

-- Location: LCCOMB_X28_Y71_N0
\s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pulsedOut~4_combout\ = (\s_pulsedOut~3_combout\ & (\s_pulsedOut~0_combout\ & (\s_pulsedOut~2_combout\ & \s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pulsedOut~3_combout\,
	datab => \s_pulsedOut~0_combout\,
	datac => \s_pulsedOut~2_combout\,
	datad => \s_pulsedOut~1_combout\,
	combout => \s_pulsedOut~4_combout\);

-- Location: LCCOMB_X28_Y71_N2
\s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt[0]~2_combout\ = (s_debounceCnt(5)) # (((s_debounceCnt(0)) # (!\s_pulsedOut~4_combout\)) # (!\s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(5),
	datab => \s_pulsedOut~5_combout\,
	datac => s_debounceCnt(0),
	datad => \s_pulsedOut~4_combout\,
	combout => \s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X28_Y71_N30
\s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt[0]~3_combout\ = (s_debounceCnt(22)) # (((\s_debounceCnt[0]~2_combout\) # (!\s_previousIn~q\)) # (!\s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(22),
	datab => \s_dirtyIn~q\,
	datac => \s_previousIn~q\,
	datad => \s_debounceCnt[0]~2_combout\,
	combout => \s_debounceCnt[0]~3_combout\);

-- Location: LCCOMB_X29_Y70_N16
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (s_debounceCnt(19) & (\Add0~37\ & VCC)) # (!s_debounceCnt(19) & (!\Add0~37\))
-- \Add0~39\ = CARRY((!s_debounceCnt(19) & !\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X28_Y71_N20
\s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt[19]~19_combout\ = (\s_debounceCnt[0]~3_combout\ & (\s_debounceCnt[0]~0_combout\ & ((\Add0~38_combout\) # (!\s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_debounceCnt[0]~3_combout\,
	datab => \s_previousIn~q\,
	datac => \Add0~38_combout\,
	datad => \s_debounceCnt[0]~0_combout\,
	combout => \s_debounceCnt[19]~19_combout\);

-- Location: FF_X28_Y71_N21
\s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(19));

-- Location: LCCOMB_X29_Y70_N18
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (s_debounceCnt(20) & ((GND) # (!\Add0~39\))) # (!s_debounceCnt(20) & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((s_debounceCnt(20)) # (!\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_debounceCnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X29_Y70_N28
\s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt[20]~10_combout\ = (\Add0~40_combout\ & (\s_debounceCnt[0]~3_combout\ & \s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~40_combout\,
	datac => \s_debounceCnt[0]~3_combout\,
	datad => \s_debounceCnt[0]~4_combout\,
	combout => \s_debounceCnt[20]~10_combout\);

-- Location: FF_X29_Y70_N29
\s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(20));

-- Location: LCCOMB_X29_Y70_N20
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (s_debounceCnt(21) & (\Add0~41\ & VCC)) # (!s_debounceCnt(21) & (!\Add0~41\))
-- \Add0~43\ = CARRY((!s_debounceCnt(21) & !\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X29_Y70_N26
\s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt[21]~11_combout\ = (\Add0~42_combout\ & (\s_debounceCnt[0]~3_combout\ & \s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~42_combout\,
	datac => \s_debounceCnt[0]~3_combout\,
	datad => \s_debounceCnt[0]~4_combout\,
	combout => \s_debounceCnt[21]~11_combout\);

-- Location: FF_X29_Y70_N27
\s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(21));

-- Location: LCCOMB_X29_Y70_N22
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \Add0~43\ $ (s_debounceCnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => s_debounceCnt(22),
	cin => \Add0~43\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X30_Y71_N30
\s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt[22]~25_combout\ = (\s_dirtyIn~q\ & ((s_debounceCnt(22) & ((!\LessThan0~7_combout\))) # (!s_debounceCnt(22) & (\s_debounceCnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(22),
	datab => \s_dirtyIn~q\,
	datac => \s_debounceCnt[0]~2_combout\,
	datad => \LessThan0~7_combout\,
	combout => \s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X30_Y71_N26
\s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt[22]~26_combout\ = (\s_previousIn~q\ & (\Add0~44_combout\ & (\s_debounceCnt[22]~25_combout\))) # (!\s_previousIn~q\ & (((\s_debounceCnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \s_previousIn~q\,
	datac => \s_debounceCnt[22]~25_combout\,
	datad => \s_debounceCnt[0]~0_combout\,
	combout => \s_debounceCnt[22]~26_combout\);

-- Location: FF_X30_Y71_N27
\s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(22));

-- Location: LCCOMB_X27_Y71_N30
\s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt[0]~4_combout\ = (\s_previousIn~q\ & (\s_dirtyIn~q\ & ((!\LessThan0~7_combout\) # (!s_debounceCnt(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_previousIn~q\,
	datab => s_debounceCnt(22),
	datac => \s_dirtyIn~q\,
	datad => \LessThan0~7_combout\,
	combout => \s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X29_Y71_N8
\s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_debounceCnt~27_combout\ = (\s_debounceCnt[0]~4_combout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_debounceCnt[0]~4_combout\,
	datad => \Add0~10_combout\,
	combout => \s_debounceCnt~27_combout\);

-- Location: FF_X29_Y71_N9
\s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_debounceCnt~27_combout\,
	ena => \s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_debounceCnt(5));

-- Location: LCCOMB_X30_Y71_N16
\s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pulsedOut~6_combout\ = (!s_debounceCnt(22) & (\s_dirtyIn~q\ & (s_debounceCnt(0) & \s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(22),
	datab => \s_dirtyIn~q\,
	datac => s_debounceCnt(0),
	datad => \s_previousIn~q\,
	combout => \s_pulsedOut~6_combout\);

-- Location: LCCOMB_X27_Y71_N12
\s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pulsedOut~7_combout\ = (!s_debounceCnt(5) & (\s_pulsedOut~6_combout\ & (\s_pulsedOut~4_combout\ & \s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_debounceCnt(5),
	datab => \s_pulsedOut~6_combout\,
	datac => \s_pulsedOut~4_combout\,
	datad => \s_pulsedOut~5_combout\,
	combout => \s_pulsedOut~7_combout\);

-- Location: FF_X27_Y71_N13
s_pulsedOut : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \refClk~inputclkctrl_outclk\,
	d => \s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pulsedOut~q\);

ww_pulsedOut <= \pulsedOut~output_o\;
END structure;


