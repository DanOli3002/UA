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
-- Generated on "06/05/2023 00:47:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FSM_Final
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSM_Final_vhd_vec_tst IS
END FSM_Final_vhd_vec_tst;
ARCHITECTURE FSM_Final_arch OF FSM_Final_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL amassar : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL cozer : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL green : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL levedar : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL load_enable : STD_LOGIC;
SIGNAL newTime : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL staStop : STD_LOGIC;
SIGNAL timeExp : STD_LOGIC;
COMPONENT FSM_Final
	PORT (
	amassar : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	clock : IN STD_LOGIC;
	cozer : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	enable : BUFFER STD_LOGIC;
	green : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	levedar : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	load_enable : BUFFER STD_LOGIC;
	newTime : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	reset : IN STD_LOGIC;
	staStop : IN STD_LOGIC;
	timeExp : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FSM_Final
	PORT MAP (
-- list connections between master ports and signals
	amassar => amassar,
	clock => clock,
	cozer => cozer,
	enable => enable,
	green => green,
	levedar => levedar,
	load_enable => load_enable,
	newTime => newTime,
	reset => reset,
	staStop => staStop,
	timeExp => timeExp
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- staStop
t_prcs_staStop: PROCESS
BEGIN
	staStop <= '1';
	WAIT FOR 30000 ps;
	staStop <= '0';
WAIT;
END PROCESS t_prcs_staStop;

-- timeExp
t_prcs_timeExp: PROCESS
BEGIN
	timeExp <= '0';
	WAIT FOR 330000 ps;
	timeExp <= '1';
	WAIT FOR 30000 ps;
	timeExp <= '0';
	WAIT FOR 370000 ps;
	timeExp <= '1';
	WAIT FOR 30000 ps;
	timeExp <= '0';
WAIT;
END PROCESS t_prcs_timeExp;
-- amassar[5]
t_prcs_amassar_5: PROCESS
BEGIN
	amassar(5) <= '0';
WAIT;
END PROCESS t_prcs_amassar_5;
-- amassar[4]
t_prcs_amassar_4: PROCESS
BEGIN
	amassar(4) <= '0';
WAIT;
END PROCESS t_prcs_amassar_4;
-- amassar[3]
t_prcs_amassar_3: PROCESS
BEGIN
	amassar(3) <= '1';
WAIT;
END PROCESS t_prcs_amassar_3;
-- amassar[2]
t_prcs_amassar_2: PROCESS
BEGIN
	amassar(2) <= '0';
WAIT;
END PROCESS t_prcs_amassar_2;
-- amassar[1]
t_prcs_amassar_1: PROCESS
BEGIN
	amassar(1) <= '1';
WAIT;
END PROCESS t_prcs_amassar_1;
-- amassar[0]
t_prcs_amassar_0: PROCESS
BEGIN
	amassar(0) <= '0';
WAIT;
END PROCESS t_prcs_amassar_0;
-- levedar[5]
t_prcs_levedar_5: PROCESS
BEGIN
	levedar(5) <= '0';
WAIT;
END PROCESS t_prcs_levedar_5;
-- levedar[4]
t_prcs_levedar_4: PROCESS
BEGIN
	levedar(4) <= '0';
WAIT;
END PROCESS t_prcs_levedar_4;
-- levedar[3]
t_prcs_levedar_3: PROCESS
BEGIN
	levedar(3) <= '0';
WAIT;
END PROCESS t_prcs_levedar_3;
-- levedar[2]
t_prcs_levedar_2: PROCESS
BEGIN
	levedar(2) <= '1';
WAIT;
END PROCESS t_prcs_levedar_2;
-- levedar[1]
t_prcs_levedar_1: PROCESS
BEGIN
	levedar(1) <= '0';
WAIT;
END PROCESS t_prcs_levedar_1;
-- levedar[0]
t_prcs_levedar_0: PROCESS
BEGIN
	levedar(0) <= '0';
WAIT;
END PROCESS t_prcs_levedar_0;
-- cozer[5]
t_prcs_cozer_5: PROCESS
BEGIN
	cozer(5) <= '0';
WAIT;
END PROCESS t_prcs_cozer_5;
-- cozer[4]
t_prcs_cozer_4: PROCESS
BEGIN
	cozer(4) <= '0';
WAIT;
END PROCESS t_prcs_cozer_4;
-- cozer[3]
t_prcs_cozer_3: PROCESS
BEGIN
	cozer(3) <= '1';
WAIT;
END PROCESS t_prcs_cozer_3;
-- cozer[2]
t_prcs_cozer_2: PROCESS
BEGIN
	cozer(2) <= '0';
WAIT;
END PROCESS t_prcs_cozer_2;
-- cozer[1]
t_prcs_cozer_1: PROCESS
BEGIN
	cozer(1) <= '1';
WAIT;
END PROCESS t_prcs_cozer_1;
-- cozer[0]
t_prcs_cozer_0: PROCESS
BEGIN
	cozer(0) <= '0';
WAIT;
END PROCESS t_prcs_cozer_0;
END FSM_Final_arch;
