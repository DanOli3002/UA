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
-- Generated on "05/29/2023 18:24:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSM_vhd_vec_tst IS
END FSM_vhd_vec_tst;
ARCHITECTURE FSM_arch OF FSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Amassar : STD_LOGIC;
SIGNAL Amassar_time : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL Cozer : STD_LOGIC;
SIGNAL Cozer_time : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Enable_timer : STD_LOGIC;
SIGNAL Exp_time : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC;
SIGNAL Levedar : STD_LOGIC;
SIGNAL Levedar_time : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL New_time1 : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL Start_stop : STD_LOGIC;
SIGNAL TExtra : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Value_time : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT FSM
	PORT (
	Amassar : BUFFER STD_LOGIC;
	Amassar_time : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	clk : IN STD_LOGIC;
	Cozer : BUFFER STD_LOGIC;
	Cozer_time : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	Enable_timer : BUFFER STD_LOGIC;
	Exp_time : IN STD_LOGIC;
	LEDR : BUFFER STD_LOGIC;
	Levedar : BUFFER STD_LOGIC;
	Levedar_time : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	New_time1 : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	rst : IN STD_LOGIC;
	Start_stop : IN STD_LOGIC;
	TExtra : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Value_time : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FSM
	PORT MAP (
-- list connections between master ports and signals
	Amassar => Amassar,
	Amassar_time => Amassar_time,
	clk => clk,
	Cozer => Cozer,
	Cozer_time => Cozer_time,
	Enable_timer => Enable_timer,
	Exp_time => Exp_time,
	LEDR => LEDR,
	Levedar => Levedar,
	Levedar_time => Levedar_time,
	New_time1 => New_time1,
	rst => rst,
	Start_stop => Start_stop,
	TExtra => TExtra,
	Value_time => Value_time
	);
-- Amassar_time[5]
t_prcs_Amassar_time_5: PROCESS
BEGIN
LOOP
	Amassar_time(5) <= '0';
	WAIT FOR 25000 ps;
	Amassar_time(5) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Amassar_time_5;
-- Amassar_time[4]
t_prcs_Amassar_time_4: PROCESS
BEGIN
LOOP
	Amassar_time(4) <= '0';
	WAIT FOR 25000 ps;
	Amassar_time(4) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Amassar_time_4;
-- Amassar_time[3]
t_prcs_Amassar_time_3: PROCESS
BEGIN
LOOP
	Amassar_time(3) <= '0';
	WAIT FOR 25000 ps;
	Amassar_time(3) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Amassar_time_3;
-- Amassar_time[2]
t_prcs_Amassar_time_2: PROCESS
BEGIN
LOOP
	Amassar_time(2) <= '0';
	WAIT FOR 25000 ps;
	Amassar_time(2) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Amassar_time_2;
-- Amassar_time[1]
t_prcs_Amassar_time_1: PROCESS
BEGIN
LOOP
	Amassar_time(1) <= '0';
	WAIT FOR 25000 ps;
	Amassar_time(1) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Amassar_time_1;
-- Amassar_time[0]
t_prcs_Amassar_time_0: PROCESS
BEGIN
LOOP
	Amassar_time(0) <= '0';
	WAIT FOR 25000 ps;
	Amassar_time(0) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Amassar_time_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 12500 ps;
	clk <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- Cozer_time[5]
t_prcs_Cozer_time_5: PROCESS
BEGIN
LOOP
	Cozer_time(5) <= '0';
	WAIT FOR 25000 ps;
	Cozer_time(5) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Cozer_time_5;
-- Cozer_time[4]
t_prcs_Cozer_time_4: PROCESS
BEGIN
LOOP
	Cozer_time(4) <= '0';
	WAIT FOR 25000 ps;
	Cozer_time(4) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Cozer_time_4;
-- Cozer_time[3]
t_prcs_Cozer_time_3: PROCESS
BEGIN
LOOP
	Cozer_time(3) <= '0';
	WAIT FOR 25000 ps;
	Cozer_time(3) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Cozer_time_3;
-- Cozer_time[2]
t_prcs_Cozer_time_2: PROCESS
BEGIN
LOOP
	Cozer_time(2) <= '0';
	WAIT FOR 25000 ps;
	Cozer_time(2) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Cozer_time_2;
-- Cozer_time[1]
t_prcs_Cozer_time_1: PROCESS
BEGIN
LOOP
	Cozer_time(1) <= '0';
	WAIT FOR 25000 ps;
	Cozer_time(1) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Cozer_time_1;
-- Cozer_time[0]
t_prcs_Cozer_time_0: PROCESS
BEGIN
LOOP
	Cozer_time(0) <= '0';
	WAIT FOR 25000 ps;
	Cozer_time(0) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Cozer_time_0;

-- Exp_time
t_prcs_Exp_time: PROCESS
BEGIN
LOOP
	Exp_time <= '0';
	WAIT FOR 62500 ps;
	Exp_time <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Exp_time;
-- Levedar_time[5]
t_prcs_Levedar_time_5: PROCESS
BEGIN
LOOP
	Levedar_time(5) <= '0';
	WAIT FOR 25000 ps;
	Levedar_time(5) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Levedar_time_5;
-- Levedar_time[4]
t_prcs_Levedar_time_4: PROCESS
BEGIN
LOOP
	Levedar_time(4) <= '0';
	WAIT FOR 25000 ps;
	Levedar_time(4) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Levedar_time_4;
-- Levedar_time[3]
t_prcs_Levedar_time_3: PROCESS
BEGIN
LOOP
	Levedar_time(3) <= '0';
	WAIT FOR 25000 ps;
	Levedar_time(3) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Levedar_time_3;
-- Levedar_time[2]
t_prcs_Levedar_time_2: PROCESS
BEGIN
LOOP
	Levedar_time(2) <= '0';
	WAIT FOR 25000 ps;
	Levedar_time(2) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Levedar_time_2;
-- Levedar_time[1]
t_prcs_Levedar_time_1: PROCESS
BEGIN
LOOP
	Levedar_time(1) <= '0';
	WAIT FOR 25000 ps;
	Levedar_time(1) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Levedar_time_1;
-- Levedar_time[0]
t_prcs_Levedar_time_0: PROCESS
BEGIN
LOOP
	Levedar_time(0) <= '0';
	WAIT FOR 25000 ps;
	Levedar_time(0) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Levedar_time_0;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- Start_stop
t_prcs_Start_stop: PROCESS
BEGIN
LOOP
	Start_stop <= '0';
	WAIT FOR 25000 ps;
	Start_stop <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Start_stop;
-- TExtra[2]
t_prcs_TExtra_2: PROCESS
BEGIN
	TExtra(2) <= '0';
	WAIT FOR 80000 ps;
	TExtra(2) <= '1';
	WAIT FOR 100000 ps;
	TExtra(2) <= '0';
	WAIT FOR 60000 ps;
	TExtra(2) <= '1';
	WAIT FOR 60000 ps;
	TExtra(2) <= '0';
	WAIT FOR 20000 ps;
	TExtra(2) <= '1';
	WAIT FOR 40000 ps;
	TExtra(2) <= '0';
	WAIT FOR 20000 ps;
	TExtra(2) <= '1';
	WAIT FOR 60000 ps;
	TExtra(2) <= '0';
	WAIT FOR 60000 ps;
	TExtra(2) <= '1';
	WAIT FOR 20000 ps;
	TExtra(2) <= '0';
	WAIT FOR 40000 ps;
	TExtra(2) <= '1';
	WAIT FOR 60000 ps;
	TExtra(2) <= '0';
	WAIT FOR 20000 ps;
	TExtra(2) <= '1';
	WAIT FOR 20000 ps;
	TExtra(2) <= '0';
	WAIT FOR 20000 ps;
	TExtra(2) <= '1';
	WAIT FOR 20000 ps;
	TExtra(2) <= '0';
	WAIT FOR 60000 ps;
	TExtra(2) <= '1';
	WAIT FOR 20000 ps;
	TExtra(2) <= '0';
	WAIT FOR 20000 ps;
	TExtra(2) <= '1';
	WAIT FOR 40000 ps;
	TExtra(2) <= '0';
	WAIT FOR 40000 ps;
	TExtra(2) <= '1';
	WAIT FOR 40000 ps;
	TExtra(2) <= '0';
	WAIT FOR 40000 ps;
	TExtra(2) <= '1';
	WAIT FOR 20000 ps;
	TExtra(2) <= '0';
WAIT;
END PROCESS t_prcs_TExtra_2;
-- TExtra[1]
t_prcs_TExtra_1: PROCESS
BEGIN
	TExtra(1) <= '1';
	WAIT FOR 60000 ps;
	TExtra(1) <= '0';
	WAIT FOR 60000 ps;
	TExtra(1) <= '1';
	WAIT FOR 60000 ps;
	TExtra(1) <= '0';
	WAIT FOR 80000 ps;
	TExtra(1) <= '1';
	WAIT FOR 20000 ps;
	TExtra(1) <= '0';
	WAIT FOR 20000 ps;
	TExtra(1) <= '1';
	WAIT FOR 20000 ps;
	TExtra(1) <= '0';
	WAIT FOR 60000 ps;
	TExtra(1) <= '1';
	WAIT FOR 60000 ps;
	TExtra(1) <= '0';
	WAIT FOR 20000 ps;
	TExtra(1) <= '1';
	WAIT FOR 20000 ps;
	TExtra(1) <= '0';
	WAIT FOR 20000 ps;
	TExtra(1) <= '1';
	WAIT FOR 200000 ps;
	TExtra(1) <= '0';
	WAIT FOR 20000 ps;
	TExtra(1) <= '1';
	WAIT FOR 40000 ps;
	TExtra(1) <= '0';
	WAIT FOR 40000 ps;
	TExtra(1) <= '1';
	WAIT FOR 20000 ps;
	TExtra(1) <= '0';
	WAIT FOR 20000 ps;
	TExtra(1) <= '1';
	WAIT FOR 20000 ps;
	TExtra(1) <= '0';
	WAIT FOR 20000 ps;
	TExtra(1) <= '1';
	WAIT FOR 40000 ps;
	TExtra(1) <= '0';
	WAIT FOR 40000 ps;
	TExtra(1) <= '1';
	WAIT FOR 20000 ps;
	TExtra(1) <= '0';
WAIT;
END PROCESS t_prcs_TExtra_1;
-- TExtra[0]
t_prcs_TExtra_0: PROCESS
BEGIN
	TExtra(0) <= '0';
	WAIT FOR 40000 ps;
	TExtra(0) <= '1';
	WAIT FOR 60000 ps;
	TExtra(0) <= '0';
	WAIT FOR 60000 ps;
	TExtra(0) <= '1';
	WAIT FOR 20000 ps;
	TExtra(0) <= '0';
	WAIT FOR 20000 ps;
	TExtra(0) <= '1';
	WAIT FOR 20000 ps;
	TExtra(0) <= '0';
	WAIT FOR 20000 ps;
	TExtra(0) <= '1';
	WAIT FOR 100000 ps;
	TExtra(0) <= '0';
	WAIT FOR 20000 ps;
	TExtra(0) <= '1';
	WAIT FOR 20000 ps;
	TExtra(0) <= '0';
	WAIT FOR 40000 ps;
	TExtra(0) <= '1';
	WAIT FOR 40000 ps;
	TExtra(0) <= '0';
	WAIT FOR 20000 ps;
	TExtra(0) <= '1';
	WAIT FOR 20000 ps;
	TExtra(0) <= '0';
	WAIT FOR 20000 ps;
	TExtra(0) <= '1';
	WAIT FOR 20000 ps;
	TExtra(0) <= '0';
	WAIT FOR 20000 ps;
	TExtra(0) <= '1';
	WAIT FOR 20000 ps;
	TExtra(0) <= '0';
	WAIT FOR 20000 ps;
	TExtra(0) <= '1';
	WAIT FOR 20000 ps;
	TExtra(0) <= '0';
	WAIT FOR 80000 ps;
	TExtra(0) <= '1';
	WAIT FOR 100000 ps;
	TExtra(0) <= '0';
	WAIT FOR 40000 ps;
	TExtra(0) <= '1';
	WAIT FOR 100000 ps;
	TExtra(0) <= '0';
	WAIT FOR 20000 ps;
	TExtra(0) <= '1';
WAIT;
END PROCESS t_prcs_TExtra_0;
END FSM_arch;
