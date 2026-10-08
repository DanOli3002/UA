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
-- Generated on "06/05/2023 01:12:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          timer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY timer_vhd_vec_tst IS
END timer_vhd_vec_tst;
ARCHITECTURE timer_arch OF timer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL load_data : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL load_enable : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL timeExp : STD_LOGIC;
COMPONENT timer
	PORT (
	clock : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	load_data : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	load_enable : IN STD_LOGIC;
	output : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	reset : IN STD_LOGIC;
	timeExp : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : timer
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	enable => enable,
	load_data => load_data,
	load_enable => load_enable,
	output => output,
	reset => reset,
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

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
-- load_data[5]
t_prcs_load_data_5: PROCESS
BEGIN
	load_data(5) <= '0';
WAIT;
END PROCESS t_prcs_load_data_5;
-- load_data[4]
t_prcs_load_data_4: PROCESS
BEGIN
	load_data(4) <= '1';
WAIT;
END PROCESS t_prcs_load_data_4;
-- load_data[3]
t_prcs_load_data_3: PROCESS
BEGIN
	load_data(3) <= '0';
WAIT;
END PROCESS t_prcs_load_data_3;
-- load_data[2]
t_prcs_load_data_2: PROCESS
BEGIN
	load_data(2) <= '0';
WAIT;
END PROCESS t_prcs_load_data_2;
-- load_data[1]
t_prcs_load_data_1: PROCESS
BEGIN
	load_data(1) <= '0';
WAIT;
END PROCESS t_prcs_load_data_1;
-- load_data[0]
t_prcs_load_data_0: PROCESS
BEGIN
	load_data(0) <= '0';
WAIT;
END PROCESS t_prcs_load_data_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- load_enable
t_prcs_load_enable: PROCESS
BEGIN
	load_enable <= '0';
	WAIT FOR 10000 ps;
	load_enable <= '1';
	WAIT FOR 20000 ps;
	load_enable <= '0';
WAIT;
END PROCESS t_prcs_load_enable;
END timer_arch;
