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

-- DATE "05/25/2023 09:17:42"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Display_Select IS
    PORT (
	input : IN std_logic_vector(3 DOWNTO 0);
	Enable_Timer : IN std_logic;
	segments : OUT std_logic_vector(6 DOWNTO 0);
	Dec : OUT std_logic_vector(6 DOWNTO 0)
	);
END Display_Select;

-- Design Ports Information
-- segments[0]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[4]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[5]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[6]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[0]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[2]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[3]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[4]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[5]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec[6]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable_Timer	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Display_Select IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Enable_Timer : std_logic;
SIGNAL ww_segments : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dec : std_logic_vector(6 DOWNTO 0);
SIGNAL \Enable_Timer~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \segments[0]~output_o\ : std_logic;
SIGNAL \segments[1]~output_o\ : std_logic;
SIGNAL \segments[2]~output_o\ : std_logic;
SIGNAL \segments[3]~output_o\ : std_logic;
SIGNAL \segments[4]~output_o\ : std_logic;
SIGNAL \segments[5]~output_o\ : std_logic;
SIGNAL \segments[6]~output_o\ : std_logic;
SIGNAL \Dec[0]~output_o\ : std_logic;
SIGNAL \Dec[1]~output_o\ : std_logic;
SIGNAL \Dec[2]~output_o\ : std_logic;
SIGNAL \Dec[3]~output_o\ : std_logic;
SIGNAL \Dec[4]~output_o\ : std_logic;
SIGNAL \Dec[5]~output_o\ : std_logic;
SIGNAL \Dec[6]~output_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Enable_Timer~input_o\ : std_logic;
SIGNAL \Enable_Timer~inputclkctrl_outclk\ : std_logic;
SIGNAL \segments[0]$latch~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \segments[1]$latch~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \segments[2]$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \segments[3]$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \segments[4]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \segments[5]$latch~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \segments[6]$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input <= input;
ww_Enable_Timer <= Enable_Timer;
segments <= ww_segments;
Dec <= ww_Dec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Enable_Timer~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Enable_Timer~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y13_N2
\segments[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segments[0]$latch~combout\,
	devoe => ww_devoe,
	o => \segments[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\segments[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segments[1]$latch~combout\,
	devoe => ww_devoe,
	o => \segments[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\segments[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segments[2]$latch~combout\,
	devoe => ww_devoe,
	o => \segments[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\segments[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segments[3]$latch~combout\,
	devoe => ww_devoe,
	o => \segments[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\segments[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segments[4]$latch~combout\,
	devoe => ww_devoe,
	o => \segments[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\segments[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segments[5]$latch~combout\,
	devoe => ww_devoe,
	o => \segments[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\segments[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segments[6]$latch~combout\,
	devoe => ww_devoe,
	o => \segments[6]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Dec[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Dec[0]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\Dec[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Dec[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Dec[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Dec[2]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\Dec[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Dec[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\Dec[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Dec[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Dec[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Dec[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\Dec[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Dec[6]~output_o\);

-- Location: IOIBUF_X0_Y8_N22
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X1_Y10_N24
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\input[2]~input_o\ & (!\input[0]~input_o\ & (!\input[1]~input_o\ & !\input[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\Enable_Timer~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable_Timer,
	o => \Enable_Timer~input_o\);

-- Location: CLKCTRL_G2
\Enable_Timer~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Enable_Timer~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Enable_Timer~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y10_N30
\segments[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments[0]$latch~combout\ = (GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & (\Mux6~0_combout\)) # (!GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & ((\segments[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datac => \segments[0]$latch~combout\,
	datad => \Enable_Timer~inputclkctrl_outclk\,
	combout => \segments[0]$latch~combout\);

-- Location: LCCOMB_X1_Y10_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\input[3]~input_o\) # ((\input[2]~input_o\ & (\input[0]~input_o\ $ (!\input[1]~input_o\))) # (!\input[2]~input_o\ & ((\input[0]~input_o\) # (\input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y10_N16
\segments[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments[1]$latch~combout\ = (GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & (!\Mux5~0_combout\)) # (!GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & ((\segments[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datac => \Enable_Timer~inputclkctrl_outclk\,
	datad => \segments[1]$latch~combout\,
	combout => \segments[1]$latch~combout\);

-- Location: LCCOMB_X1_Y10_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\input[2]~input_o\ & (!\input[0]~input_o\ & !\input[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y10_N18
\segments[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments[2]$latch~combout\ = (GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & (\Mux4~0_combout\)) # (!GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & ((\segments[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datac => \Enable_Timer~inputclkctrl_outclk\,
	datad => \segments[2]$latch~combout\,
	combout => \segments[2]$latch~combout\);

-- Location: LCCOMB_X1_Y10_N6
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\input[3]~input_o\) # ((\input[0]~input_o\ & ((!\input[1]~input_o\) # (!\input[2]~input_o\))) # (!\input[0]~input_o\ & ((\input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y10_N28
\segments[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments[3]$latch~combout\ = (GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & (!\Mux3~0_combout\)) # (!GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & ((\segments[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \Enable_Timer~inputclkctrl_outclk\,
	datad => \segments[3]$latch~combout\,
	combout => \segments[3]$latch~combout\);

-- Location: LCCOMB_X1_Y10_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\input[0]~input_o\ & (\input[3]~input_o\ & ((\input[2]~input_o\) # (\input[1]~input_o\)))) # (!\input[0]~input_o\ & (((\input[1]~input_o\) # (\input[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y10_N22
\segments[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments[4]$latch~combout\ = (GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & (!\Mux2~0_combout\)) # (!GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & ((\segments[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~0_combout\,
	datac => \segments[4]$latch~combout\,
	datad => \Enable_Timer~inputclkctrl_outclk\,
	combout => \segments[4]$latch~combout\);

-- Location: LCCOMB_X1_Y10_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\input[3]~input_o\) # ((\input[2]~input_o\ & ((!\input[1]~input_o\) # (!\input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y10_N0
\segments[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments[5]$latch~combout\ = (GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & (!\Mux1~0_combout\)) # (!GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & ((\segments[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \Enable_Timer~inputclkctrl_outclk\,
	datad => \segments[5]$latch~combout\,
	combout => \segments[5]$latch~combout\);

-- Location: LCCOMB_X1_Y10_N20
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\input[3]~input_o\) # ((\input[2]~input_o\ & ((!\input[1]~input_o\) # (!\input[0]~input_o\))) # (!\input[2]~input_o\ & ((\input[0]~input_o\) # (\input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y10_N2
\segments[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \segments[6]$latch~combout\ = (GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & (!\Mux0~0_combout\)) # (!GLOBAL(\Enable_Timer~inputclkctrl_outclk\) & ((\segments[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \Enable_Timer~inputclkctrl_outclk\,
	datad => \segments[6]$latch~combout\,
	combout => \segments[6]$latch~combout\);

ww_segments(0) <= \segments[0]~output_o\;

ww_segments(1) <= \segments[1]~output_o\;

ww_segments(2) <= \segments[2]~output_o\;

ww_segments(3) <= \segments[3]~output_o\;

ww_segments(4) <= \segments[4]~output_o\;

ww_segments(5) <= \segments[5]~output_o\;

ww_segments(6) <= \segments[6]~output_o\;

ww_Dec(0) <= \Dec[0]~output_o\;

ww_Dec(1) <= \Dec[1]~output_o\;

ww_Dec(2) <= \Dec[2]~output_o\;

ww_Dec(3) <= \Dec[3]~output_o\;

ww_Dec(4) <= \Dec[4]~output_o\;

ww_Dec(5) <= \Dec[5]~output_o\;

ww_Dec(6) <= \Dec[6]~output_o\;
END structure;


