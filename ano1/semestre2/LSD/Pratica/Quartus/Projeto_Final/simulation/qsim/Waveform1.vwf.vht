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
-- Generated on "06/04/2023 21:03:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Final
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Final_vhd_vec_tst IS
END Final_vhd_vec_tst;
ARCHITECTURE Final_arch OF Final_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL display0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL green : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL pao : STD_LOGIC;
SIGNAL red : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL staStop : STD_LOGIC;
COMPONENT Final
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	display0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	display1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	display2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	green : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	pao : IN STD_LOGIC;
	red : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	staStop : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Final
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	display0 => display0,
	display1 => display1,
	display2 => display2,
	green => green,
	pao => pao,
	red => red,
	reset => reset,
	staStop => staStop
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 25000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;

-- pao
t_prcs_pao: PROCESS
BEGIN
	pao <= '0';
WAIT;
END PROCESS t_prcs_pao;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- staStop
t_prcs_staStop: PROCESS
BEGIN
	staStop <= '0';
	WAIT FOR 10000 ps;
	staStop <= '1';
	WAIT FOR 30000 ps;
	staStop <= '0';
	WAIT FOR 20000 ps;
	staStop <= '1';
	WAIT FOR 30000 ps;
	staStop <= '0';
	WAIT FOR 30000 ps;
	staStop <= '1';
	WAIT FOR 20000 ps;
	staStop <= '0';
WAIT;
END PROCESS t_prcs_staStop;
END Final_arch;
