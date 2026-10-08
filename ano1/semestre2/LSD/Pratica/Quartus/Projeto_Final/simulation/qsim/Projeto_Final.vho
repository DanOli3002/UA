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

-- DATE "06/05/2023 01:12:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	timer IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	load_enable : IN std_logic;
	load_data : IN std_logic_vector(5 DOWNTO 0);
	enable : IN std_logic;
	timeExp : BUFFER std_logic;
	output : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END timer;

ARCHITECTURE structure OF timer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_load_enable : std_logic;
SIGNAL ww_load_data : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_timeExp : std_logic;
SIGNAL ww_output : std_logic_vector(5 DOWNTO 0);
SIGNAL \timeExp~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \load_enable~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \timeExp~0_combout\ : std_logic;
SIGNAL \count[0]~8_combout\ : std_logic;
SIGNAL \load_data[0]~input_o\ : std_logic;
SIGNAL \count[0]~9\ : std_logic;
SIGNAL \count[1]~11_combout\ : std_logic;
SIGNAL \load_data[1]~input_o\ : std_logic;
SIGNAL \count[1]~12\ : std_logic;
SIGNAL \count[2]~13_combout\ : std_logic;
SIGNAL \load_data[2]~input_o\ : std_logic;
SIGNAL \count[2]~14\ : std_logic;
SIGNAL \count[3]~15_combout\ : std_logic;
SIGNAL \load_data[3]~input_o\ : std_logic;
SIGNAL \count[3]~16\ : std_logic;
SIGNAL \count[4]~17_combout\ : std_logic;
SIGNAL \load_data[4]~input_o\ : std_logic;
SIGNAL \count[4]~18\ : std_logic;
SIGNAL \count[5]~19_combout\ : std_logic;
SIGNAL \load_data[5]~input_o\ : std_logic;
SIGNAL \count[0]~7_combout\ : std_logic;
SIGNAL \count[0]~10_combout\ : std_logic;
SIGNAL \count[0]~6_combout\ : std_logic;
SIGNAL \timeExp~1_combout\ : std_logic;
SIGNAL \timeExp~reg0_q\ : std_logic;
SIGNAL count : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_load_enable <= load_enable;
ww_load_data <= load_data;
ww_enable <= enable;
timeExp <= ww_timeExp;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\timeExp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timeExp~reg0_q\,
	devoe => ww_devoe,
	o => \timeExp~output_o\);

\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(5),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\load_enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_enable,
	o => \load_enable~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\timeExp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeExp~0_combout\ = (\timeExp~reg0_q\ & ((\load_enable~input_o\) # ((!\enable~input_o\) # (!\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeExp~reg0_q\,
	datab => \load_enable~input_o\,
	datac => \reset~input_o\,
	datad => \enable~input_o\,
	combout => \timeExp~0_combout\);

\count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~8_combout\ = count(0) $ (VCC)
-- \count[0]~9\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~8_combout\,
	cout => \count[0]~9\);

\load_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(0),
	o => \load_data[0]~input_o\);

\count[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~11_combout\ = (count(1) & (\count[0]~9\ & VCC)) # (!count(1) & (!\count[0]~9\))
-- \count[1]~12\ = CARRY((!count(1) & !\count[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \count[0]~9\,
	combout => \count[1]~11_combout\,
	cout => \count[1]~12\);

\load_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(1),
	o => \load_data[1]~input_o\);

\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \count[1]~11_combout\,
	asdata => \load_data[1]~input_o\,
	clrn => \reset~input_o\,
	sload => \load_enable~input_o\,
	ena => \count[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

\count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~13_combout\ = (count(2) & ((GND) # (!\count[1]~12\))) # (!count(2) & (\count[1]~12\ $ (GND)))
-- \count[2]~14\ = CARRY((count(2)) # (!\count[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~12\,
	combout => \count[2]~13_combout\,
	cout => \count[2]~14\);

\load_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(2),
	o => \load_data[2]~input_o\);

\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \count[2]~13_combout\,
	asdata => \load_data[2]~input_o\,
	clrn => \reset~input_o\,
	sload => \load_enable~input_o\,
	ena => \count[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

\count[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~15_combout\ = (count(3) & (\count[2]~14\ & VCC)) # (!count(3) & (!\count[2]~14\))
-- \count[3]~16\ = CARRY((!count(3) & !\count[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~14\,
	combout => \count[3]~15_combout\,
	cout => \count[3]~16\);

\load_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(3),
	o => \load_data[3]~input_o\);

\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \count[3]~15_combout\,
	asdata => \load_data[3]~input_o\,
	clrn => \reset~input_o\,
	sload => \load_enable~input_o\,
	ena => \count[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

\count[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~17_combout\ = (count(4) & ((GND) # (!\count[3]~16\))) # (!count(4) & (\count[3]~16\ $ (GND)))
-- \count[4]~18\ = CARRY((count(4)) # (!\count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \count[3]~16\,
	combout => \count[4]~17_combout\,
	cout => \count[4]~18\);

\load_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(4),
	o => \load_data[4]~input_o\);

\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \count[4]~17_combout\,
	asdata => \load_data[4]~input_o\,
	clrn => \reset~input_o\,
	sload => \load_enable~input_o\,
	ena => \count[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

\count[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~19_combout\ = count(5) $ (!\count[4]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	cin => \count[4]~18\,
	combout => \count[5]~19_combout\);

\load_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_data(5),
	o => \load_data[5]~input_o\);

\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \count[5]~19_combout\,
	asdata => \load_data[5]~input_o\,
	clrn => \reset~input_o\,
	sload => \load_enable~input_o\,
	ena => \count[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

\count[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~7_combout\ = (!count(3) & (!count(4) & !count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datac => count(4),
	datad => count(5),
	combout => \count[0]~7_combout\);

\count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~10_combout\ = (\count[0]~6_combout\ & (!\count[0]~7_combout\ & ((\load_enable~input_o\) # (\enable~input_o\)))) # (!\count[0]~6_combout\ & (((\load_enable~input_o\) # (\enable~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0]~6_combout\,
	datab => \count[0]~7_combout\,
	datac => \load_enable~input_o\,
	datad => \enable~input_o\,
	combout => \count[0]~10_combout\);

\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \count[0]~8_combout\,
	asdata => \load_data[0]~input_o\,
	clrn => \reset~input_o\,
	sload => \load_enable~input_o\,
	ena => \count[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

\count[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~6_combout\ = (!count(0) & (!count(1) & (!count(2) & !\load_enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(2),
	datad => \load_enable~input_o\,
	combout => \count[0]~6_combout\);

\timeExp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeExp~1_combout\ = (\timeExp~0_combout\) # ((\reset~input_o\ & (\count[0]~6_combout\ & \count[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeExp~0_combout\,
	datab => \reset~input_o\,
	datac => \count[0]~6_combout\,
	datad => \count[0]~7_combout\,
	combout => \timeExp~1_combout\);

\timeExp~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \timeExp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeExp~reg0_q\);

ww_timeExp <= \timeExp~output_o\;

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;
END structure;


