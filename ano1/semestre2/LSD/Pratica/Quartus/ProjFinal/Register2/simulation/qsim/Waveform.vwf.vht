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
-- Generated on "05/29/2023 18:13:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Register1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Register1_vhd_vec_tst IS
END Register1_vhd_vec_tst;
ARCHITECTURE Register1_arch OF Register1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Amassar_time : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL Cozer_time : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Extra_time : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Levedar_time : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL P1_P2 : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL Start_stop : STD_LOGIC;
SIGNAL Start_stop_out : STD_LOGIC;
SIGNAL Time_adj : STD_LOGIC;
COMPONENT Register1
	PORT (
	Amassar_time : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	clk : IN STD_LOGIC;
	Cozer_time : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Extra_time : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	Levedar_time : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	P1_P2 : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	Start_stop : IN STD_LOGIC;
	Start_stop_out : OUT STD_LOGIC;
	Time_adj : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Register1
	PORT MAP (
-- list connections between master ports and signals
	Amassar_time => Amassar_time,
	clk => clk,
	Cozer_time => Cozer_time,
	Extra_time => Extra_time,
	Levedar_time => Levedar_time,
	P1_P2 => P1_P2,
	rst => rst,
	Start_stop => Start_stop,
	Start_stop_out => Start_stop_out,
	Time_adj => Time_adj
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- P1_P2
t_prcs_P1_P2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		P1_P2 <= '0';
		WAIT FOR 75000 ps;
		P1_P2 <= '1';
		WAIT FOR 75000 ps;
	END LOOP;
	P1_P2 <= '0';
	WAIT FOR 75000 ps;
	P1_P2 <= '1';
WAIT;
END PROCESS t_prcs_P1_P2;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- Start_stop
t_prcs_Start_stop: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		Start_stop <= '0';
		WAIT FOR 225000 ps;
		Start_stop <= '1';
		WAIT FOR 225000 ps;
	END LOOP;
	Start_stop <= '0';
WAIT;
END PROCESS t_prcs_Start_stop;

-- Time_adj
t_prcs_Time_adj: PROCESS
BEGIN
LOOP
	Time_adj <= '0';
	WAIT FOR 250000 ps;
	Time_adj <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Time_adj;
END Register1_arch;
