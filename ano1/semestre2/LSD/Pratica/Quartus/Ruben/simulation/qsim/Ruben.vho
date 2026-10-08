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

-- DATE "06/03/2023 22:41:04"

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

ENTITY 	Timer_FSM IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	Enable_timer : IN std_logic;
	New_time : IN std_logic_vector(5 DOWNTO 0);
	Value_time : IN std_logic_vector(5 DOWNTO 0);
	Exp_time : OUT std_logic;
	Decrement_New_Time : OUT std_logic_vector(5 DOWNTO 0);
	Dec : OUT std_logic_vector(6 DOWNTO 0)
	);
END Timer_FSM;

ARCHITECTURE structure OF Timer_FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Enable_timer : std_logic;
SIGNAL ww_New_time : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Value_time : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Exp_time : std_logic;
SIGNAL ww_Decrement_New_Time : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Dec : std_logic_vector(6 DOWNTO 0);
SIGNAL \Value_time[0]~input_o\ : std_logic;
SIGNAL \Value_time[1]~input_o\ : std_logic;
SIGNAL \Value_time[2]~input_o\ : std_logic;
SIGNAL \Value_time[3]~input_o\ : std_logic;
SIGNAL \Value_time[4]~input_o\ : std_logic;
SIGNAL \Value_time[5]~input_o\ : std_logic;
SIGNAL \Exp_time~output_o\ : std_logic;
SIGNAL \Decrement_New_Time[0]~output_o\ : std_logic;
SIGNAL \Decrement_New_Time[1]~output_o\ : std_logic;
SIGNAL \Decrement_New_Time[2]~output_o\ : std_logic;
SIGNAL \Decrement_New_Time[3]~output_o\ : std_logic;
SIGNAL \Decrement_New_Time[4]~output_o\ : std_logic;
SIGNAL \Decrement_New_Time[5]~output_o\ : std_logic;
SIGNAL \Dec[0]~output_o\ : std_logic;
SIGNAL \Dec[1]~output_o\ : std_logic;
SIGNAL \Dec[2]~output_o\ : std_logic;
SIGNAL \Dec[3]~output_o\ : std_logic;
SIGNAL \Dec[4]~output_o\ : std_logic;
SIGNAL \Dec[5]~output_o\ : std_logic;
SIGNAL \Dec[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \reset~q\ : std_logic;
SIGNAL \Enable_timer~input_o\ : std_logic;
SIGNAL \Time_Exp~0_combout\ : std_logic;
SIGNAL \Time_Value[0]~8_combout\ : std_logic;
SIGNAL \Time_Value[0]~9\ : std_logic;
SIGNAL \Time_Value[1]~11_combout\ : std_logic;
SIGNAL \Time_Value[1]~12\ : std_logic;
SIGNAL \Time_Value[2]~13_combout\ : std_logic;
SIGNAL \Time_Value[2]~14\ : std_logic;
SIGNAL \Time_Value[3]~15_combout\ : std_logic;
SIGNAL \Time_Value[3]~16\ : std_logic;
SIGNAL \Time_Value[4]~17_combout\ : std_logic;
SIGNAL \Time_Value[4]~18\ : std_logic;
SIGNAL \Time_Value[5]~19_combout\ : std_logic;
SIGNAL \Time_Value[5]~7_combout\ : std_logic;
SIGNAL \Time_Value[5]~10_combout\ : std_logic;
SIGNAL \Time_Value[5]~6_combout\ : std_logic;
SIGNAL \Time_Exp~1_combout\ : std_logic;
SIGNAL \Time_Exp~q\ : std_logic;
SIGNAL \New_time[0]~input_o\ : std_logic;
SIGNAL \Dec_New_Time[0]~6_combout\ : std_logic;
SIGNAL \New_time[1]~input_o\ : std_logic;
SIGNAL \Dec_New_Time[0]~7\ : std_logic;
SIGNAL \Dec_New_Time[1]~11_combout\ : std_logic;
SIGNAL \New_time[2]~input_o\ : std_logic;
SIGNAL \Dec_New_Time[1]~12\ : std_logic;
SIGNAL \Dec_New_Time[2]~13_combout\ : std_logic;
SIGNAL \Dec_New_Time[0]~8_combout\ : std_logic;
SIGNAL \New_time[3]~input_o\ : std_logic;
SIGNAL \Dec_New_Time[2]~14\ : std_logic;
SIGNAL \Dec_New_Time[3]~15_combout\ : std_logic;
SIGNAL \New_time[4]~input_o\ : std_logic;
SIGNAL \Dec_New_Time[3]~16\ : std_logic;
SIGNAL \Dec_New_Time[4]~17_combout\ : std_logic;
SIGNAL \New_time[5]~input_o\ : std_logic;
SIGNAL \Dec_New_Time[4]~18\ : std_logic;
SIGNAL \Dec_New_Time[5]~19_combout\ : std_logic;
SIGNAL \Dec_New_Time[0]~9_combout\ : std_logic;
SIGNAL \Dec_New_Time[0]~10_combout\ : std_logic;
SIGNAL Dec_New_Time : std_logic_vector(5 DOWNTO 0);
SIGNAL Time_Value : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_Enable_timer <= Enable_timer;
ww_New_time <= New_time;
ww_Value_time <= Value_time;
Exp_time <= ww_Exp_time;
Decrement_New_Time <= ww_Decrement_New_Time;
Dec <= ww_Dec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Exp_time~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Time_Exp~q\,
	devoe => ww_devoe,
	o => \Exp_time~output_o\);

\Decrement_New_Time[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dec_New_Time(0),
	devoe => ww_devoe,
	o => \Decrement_New_Time[0]~output_o\);

\Decrement_New_Time[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dec_New_Time(1),
	devoe => ww_devoe,
	o => \Decrement_New_Time[1]~output_o\);

\Decrement_New_Time[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dec_New_Time(2),
	devoe => ww_devoe,
	o => \Decrement_New_Time[2]~output_o\);

\Decrement_New_Time[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dec_New_Time(3),
	devoe => ww_devoe,
	o => \Decrement_New_Time[3]~output_o\);

\Decrement_New_Time[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dec_New_Time(4),
	devoe => ww_devoe,
	o => \Decrement_New_Time[4]~output_o\);

\Decrement_New_Time[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Dec_New_Time(5),
	devoe => ww_devoe,
	o => \Decrement_New_Time[5]~output_o\);

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

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset~q\);

\Enable_timer~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable_timer,
	o => \Enable_timer~input_o\);

\Time_Exp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_Exp~0_combout\ = (\Time_Exp~q\ & (!\reset~q\ & !\Enable_timer~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Time_Exp~q\,
	datac => \reset~q\,
	datad => \Enable_timer~input_o\,
	combout => \Time_Exp~0_combout\);

\Time_Value[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_Value[0]~8_combout\ = Time_Value(0) $ (VCC)
-- \Time_Value[0]~9\ = CARRY(Time_Value(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Time_Value(0),
	datad => VCC,
	combout => \Time_Value[0]~8_combout\,
	cout => \Time_Value[0]~9\);

\Time_Value[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_Value[1]~11_combout\ = (Time_Value(1) & (\Time_Value[0]~9\ & VCC)) # (!Time_Value(1) & (!\Time_Value[0]~9\))
-- \Time_Value[1]~12\ = CARRY((!Time_Value(1) & !\Time_Value[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Time_Value(1),
	datad => VCC,
	cin => \Time_Value[0]~9\,
	combout => \Time_Value[1]~11_combout\,
	cout => \Time_Value[1]~12\);

\Time_Value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Time_Value[1]~11_combout\,
	sclr => \reset~q\,
	ena => \Time_Value[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_Value(1));

\Time_Value[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_Value[2]~13_combout\ = (Time_Value(2) & ((GND) # (!\Time_Value[1]~12\))) # (!Time_Value(2) & (\Time_Value[1]~12\ $ (GND)))
-- \Time_Value[2]~14\ = CARRY((Time_Value(2)) # (!\Time_Value[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Time_Value(2),
	datad => VCC,
	cin => \Time_Value[1]~12\,
	combout => \Time_Value[2]~13_combout\,
	cout => \Time_Value[2]~14\);

\Time_Value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Time_Value[2]~13_combout\,
	sclr => \reset~q\,
	ena => \Time_Value[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_Value(2));

\Time_Value[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_Value[3]~15_combout\ = (Time_Value(3) & (\Time_Value[2]~14\ & VCC)) # (!Time_Value(3) & (!\Time_Value[2]~14\))
-- \Time_Value[3]~16\ = CARRY((!Time_Value(3) & !\Time_Value[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Time_Value(3),
	datad => VCC,
	cin => \Time_Value[2]~14\,
	combout => \Time_Value[3]~15_combout\,
	cout => \Time_Value[3]~16\);

\Time_Value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Time_Value[3]~15_combout\,
	sclr => \reset~q\,
	ena => \Time_Value[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_Value(3));

\Time_Value[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_Value[4]~17_combout\ = (Time_Value(4) & ((GND) # (!\Time_Value[3]~16\))) # (!Time_Value(4) & (\Time_Value[3]~16\ $ (GND)))
-- \Time_Value[4]~18\ = CARRY((Time_Value(4)) # (!\Time_Value[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Time_Value(4),
	datad => VCC,
	cin => \Time_Value[3]~16\,
	combout => \Time_Value[4]~17_combout\,
	cout => \Time_Value[4]~18\);

\Time_Value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Time_Value[4]~17_combout\,
	sclr => \reset~q\,
	ena => \Time_Value[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_Value(4));

\Time_Value[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_Value[5]~19_combout\ = Time_Value(5) $ (!\Time_Value[4]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Time_Value(5),
	cin => \Time_Value[4]~18\,
	combout => \Time_Value[5]~19_combout\);

\Time_Value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Time_Value[5]~19_combout\,
	sclr => \reset~q\,
	ena => \Time_Value[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_Value(5));

\Time_Value[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_Value[5]~7_combout\ = (!Time_Value(3) & (!Time_Value(4) & !Time_Value(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Time_Value(3),
	datac => Time_Value(4),
	datad => Time_Value(5),
	combout => \Time_Value[5]~7_combout\);

\Time_Value[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_Value[5]~10_combout\ = (\Time_Value[5]~6_combout\ & (!\Time_Value[5]~7_combout\ & ((\reset~q\) # (\Enable_timer~input_o\)))) # (!\Time_Value[5]~6_combout\ & (((\reset~q\) # (\Enable_timer~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Time_Value[5]~6_combout\,
	datab => \Time_Value[5]~7_combout\,
	datac => \reset~q\,
	datad => \Enable_timer~input_o\,
	combout => \Time_Value[5]~10_combout\);

\Time_Value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Time_Value[0]~8_combout\,
	sclr => \reset~q\,
	ena => \Time_Value[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Time_Value(0));

\Time_Value[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_Value[5]~6_combout\ = (!\reset~q\ & (!Time_Value(0) & (!Time_Value(1) & !Time_Value(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => Time_Value(0),
	datac => Time_Value(1),
	datad => Time_Value(2),
	combout => \Time_Value[5]~6_combout\);

\Time_Exp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_Exp~1_combout\ = (\Time_Exp~0_combout\) # ((\Enable_timer~input_o\ & (\Time_Value[5]~6_combout\ & \Time_Value[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Time_Exp~0_combout\,
	datab => \Enable_timer~input_o\,
	datac => \Time_Value[5]~6_combout\,
	datad => \Time_Value[5]~7_combout\,
	combout => \Time_Exp~1_combout\);

Time_Exp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Time_Exp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_Exp~q\);

\New_time[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_New_time(0),
	o => \New_time[0]~input_o\);

\Dec_New_Time[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec_New_Time[0]~6_combout\ = \New_time[0]~input_o\ $ (VCC)
-- \Dec_New_Time[0]~7\ = CARRY(\New_time[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \New_time[0]~input_o\,
	datad => VCC,
	combout => \Dec_New_Time[0]~6_combout\,
	cout => \Dec_New_Time[0]~7\);

\New_time[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_New_time(1),
	o => \New_time[1]~input_o\);

\Dec_New_Time[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec_New_Time[1]~11_combout\ = (\New_time[1]~input_o\ & (\Dec_New_Time[0]~7\ & VCC)) # (!\New_time[1]~input_o\ & (!\Dec_New_Time[0]~7\))
-- \Dec_New_Time[1]~12\ = CARRY((!\New_time[1]~input_o\ & !\Dec_New_Time[0]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \New_time[1]~input_o\,
	datad => VCC,
	cin => \Dec_New_Time[0]~7\,
	combout => \Dec_New_Time[1]~11_combout\,
	cout => \Dec_New_Time[1]~12\);

\Dec_New_Time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dec_New_Time[1]~11_combout\,
	sclr => \reset~q\,
	ena => \Dec_New_Time[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dec_New_Time(1));

\New_time[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_New_time(2),
	o => \New_time[2]~input_o\);

\Dec_New_Time[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec_New_Time[2]~13_combout\ = (\New_time[2]~input_o\ & ((GND) # (!\Dec_New_Time[1]~12\))) # (!\New_time[2]~input_o\ & (\Dec_New_Time[1]~12\ $ (GND)))
-- \Dec_New_Time[2]~14\ = CARRY((\New_time[2]~input_o\) # (!\Dec_New_Time[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \New_time[2]~input_o\,
	datad => VCC,
	cin => \Dec_New_Time[1]~12\,
	combout => \Dec_New_Time[2]~13_combout\,
	cout => \Dec_New_Time[2]~14\);

\Dec_New_Time[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dec_New_Time[2]~13_combout\,
	sclr => \reset~q\,
	ena => \Dec_New_Time[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dec_New_Time(2));

\Dec_New_Time[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec_New_Time[0]~8_combout\ = (!Dec_New_Time(0) & (!Dec_New_Time(1) & (!Dec_New_Time(2) & !\reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Dec_New_Time(0),
	datab => Dec_New_Time(1),
	datac => Dec_New_Time(2),
	datad => \reset~q\,
	combout => \Dec_New_Time[0]~8_combout\);

\New_time[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_New_time(3),
	o => \New_time[3]~input_o\);

\Dec_New_Time[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec_New_Time[3]~15_combout\ = (\New_time[3]~input_o\ & (\Dec_New_Time[2]~14\ & VCC)) # (!\New_time[3]~input_o\ & (!\Dec_New_Time[2]~14\))
-- \Dec_New_Time[3]~16\ = CARRY((!\New_time[3]~input_o\ & !\Dec_New_Time[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \New_time[3]~input_o\,
	datad => VCC,
	cin => \Dec_New_Time[2]~14\,
	combout => \Dec_New_Time[3]~15_combout\,
	cout => \Dec_New_Time[3]~16\);

\Dec_New_Time[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dec_New_Time[3]~15_combout\,
	sclr => \reset~q\,
	ena => \Dec_New_Time[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dec_New_Time(3));

\New_time[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_New_time(4),
	o => \New_time[4]~input_o\);

\Dec_New_Time[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec_New_Time[4]~17_combout\ = (\New_time[4]~input_o\ & ((GND) # (!\Dec_New_Time[3]~16\))) # (!\New_time[4]~input_o\ & (\Dec_New_Time[3]~16\ $ (GND)))
-- \Dec_New_Time[4]~18\ = CARRY((\New_time[4]~input_o\) # (!\Dec_New_Time[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \New_time[4]~input_o\,
	datad => VCC,
	cin => \Dec_New_Time[3]~16\,
	combout => \Dec_New_Time[4]~17_combout\,
	cout => \Dec_New_Time[4]~18\);

\Dec_New_Time[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dec_New_Time[4]~17_combout\,
	sclr => \reset~q\,
	ena => \Dec_New_Time[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dec_New_Time(4));

\New_time[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_New_time(5),
	o => \New_time[5]~input_o\);

\Dec_New_Time[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec_New_Time[5]~19_combout\ = \New_time[5]~input_o\ $ (!\Dec_New_Time[4]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \New_time[5]~input_o\,
	cin => \Dec_New_Time[4]~18\,
	combout => \Dec_New_Time[5]~19_combout\);

\Dec_New_Time[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dec_New_Time[5]~19_combout\,
	sclr => \reset~q\,
	ena => \Dec_New_Time[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dec_New_Time(5));

\Dec_New_Time[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec_New_Time[0]~9_combout\ = (!Dec_New_Time(3) & (!Dec_New_Time(4) & !Dec_New_Time(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Dec_New_Time(3),
	datac => Dec_New_Time(4),
	datad => Dec_New_Time(5),
	combout => \Dec_New_Time[0]~9_combout\);

\Dec_New_Time[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dec_New_Time[0]~10_combout\ = (\Dec_New_Time[0]~8_combout\ & (!\Dec_New_Time[0]~9_combout\ & ((\reset~q\) # (\Enable_timer~input_o\)))) # (!\Dec_New_Time[0]~8_combout\ & (((\reset~q\) # (\Enable_timer~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dec_New_Time[0]~8_combout\,
	datab => \Dec_New_Time[0]~9_combout\,
	datac => \reset~q\,
	datad => \Enable_timer~input_o\,
	combout => \Dec_New_Time[0]~10_combout\);

\Dec_New_Time[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Dec_New_Time[0]~6_combout\,
	sclr => \reset~q\,
	ena => \Dec_New_Time[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Dec_New_Time(0));

\Value_time[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Value_time(0),
	o => \Value_time[0]~input_o\);

\Value_time[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Value_time(1),
	o => \Value_time[1]~input_o\);

\Value_time[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Value_time(2),
	o => \Value_time[2]~input_o\);

\Value_time[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Value_time(3),
	o => \Value_time[3]~input_o\);

\Value_time[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Value_time(4),
	o => \Value_time[4]~input_o\);

\Value_time[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Value_time(5),
	o => \Value_time[5]~input_o\);

ww_Exp_time <= \Exp_time~output_o\;

ww_Decrement_New_Time(0) <= \Decrement_New_Time[0]~output_o\;

ww_Decrement_New_Time(1) <= \Decrement_New_Time[1]~output_o\;

ww_Decrement_New_Time(2) <= \Decrement_New_Time[2]~output_o\;

ww_Decrement_New_Time(3) <= \Decrement_New_Time[3]~output_o\;

ww_Decrement_New_Time(4) <= \Decrement_New_Time[4]~output_o\;

ww_Decrement_New_Time(5) <= \Decrement_New_Time[5]~output_o\;

ww_Dec(0) <= \Dec[0]~output_o\;

ww_Dec(1) <= \Dec[1]~output_o\;

ww_Dec(2) <= \Dec[2]~output_o\;

ww_Dec(3) <= \Dec[3]~output_o\;

ww_Dec(4) <= \Dec[4]~output_o\;

ww_Dec(5) <= \Dec[5]~output_o\;

ww_Dec(6) <= \Dec[6]~output_o\;
END structure;


