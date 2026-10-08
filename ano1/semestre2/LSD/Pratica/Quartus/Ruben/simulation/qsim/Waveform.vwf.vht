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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/03/2023 22:41:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Timer_FSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Timer_FSM_vhd_vec_tst IS
END Timer_FSM_vhd_vec_tst;
ARCHITECTURE Timer_FSM_arch OF Timer_FSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Dec : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Decrement_New_Time : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Enable_timer : STD_LOGIC;
SIGNAL Exp_time : STD_LOGIC;
SIGNAL New_time : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL Value_time : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT Timer_FSM
	PORT (
	clk : IN STD_LOGIC;
	Dec : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Decrement_New_Time : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Enable_timer : IN STD_LOGIC;
	Exp_time : OUT STD_LOGIC;
	New_time : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	rst : IN STD_LOGIC;
	Value_time : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Timer_FSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Dec => Dec,
	Decrement_New_Time => Decrement_New_Time,
	Enable_timer => Enable_timer,
	Exp_time => Exp_time,
	New_time => New_time,
	rst => rst,
	Value_time => Value_time
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		clk <= '0';
		WAIT FOR 30000 ps;
		clk <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 30000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- Enable_timer
t_prcs_Enable_timer: PROCESS
BEGIN
	Enable_timer <= '1';
WAIT;
END PROCESS t_prcs_Enable_timer;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
-- New_time[5]
t_prcs_New_time_5: PROCESS
BEGIN
	New_time(5) <= '0';
WAIT;
END PROCESS t_prcs_New_time_5;
-- New_time[4]
t_prcs_New_time_4: PROCESS
BEGIN
	New_time(4) <= '1';
WAIT;
END PROCESS t_prcs_New_time_4;
-- New_time[3]
t_prcs_New_time_3: PROCESS
BEGIN
	New_time(3) <= '1';
WAIT;
END PROCESS t_prcs_New_time_3;
-- New_time[2]
t_prcs_New_time_2: PROCESS
BEGIN
	New_time(2) <= '0';
WAIT;
END PROCESS t_prcs_New_time_2;
-- New_time[1]
t_prcs_New_time_1: PROCESS
BEGIN
	New_time(1) <= '0';
WAIT;
END PROCESS t_prcs_New_time_1;
-- New_time[0]
t_prcs_New_time_0: PROCESS
BEGIN
	New_time(0) <= '0';
WAIT;
END PROCESS t_prcs_New_time_0;
-- Value_time[5]
t_prcs_Value_time_5: PROCESS
BEGIN
	Value_time(5) <= '0';
WAIT;
END PROCESS t_prcs_Value_time_5;
-- Value_time[4]
t_prcs_Value_time_4: PROCESS
BEGIN
	Value_time(4) <= '0';
WAIT;
END PROCESS t_prcs_Value_time_4;
-- Value_time[3]
t_prcs_Value_time_3: PROCESS
BEGIN
	Value_time(3) <= '1';
WAIT;
END PROCESS t_prcs_Value_time_3;
-- Value_time[2]
t_prcs_Value_time_2: PROCESS
BEGIN
	Value_time(2) <= '0';
WAIT;
END PROCESS t_prcs_Value_time_2;
-- Value_time[1]
t_prcs_Value_time_1: PROCESS
BEGIN
	Value_time(1) <= '1';
WAIT;
END PROCESS t_prcs_Value_time_1;
-- Value_time[0]
t_prcs_Value_time_0: PROCESS
BEGIN
	Value_time(0) <= '0';
WAIT;
END PROCESS t_prcs_Value_time_0;
END Timer_FSM_arch;
