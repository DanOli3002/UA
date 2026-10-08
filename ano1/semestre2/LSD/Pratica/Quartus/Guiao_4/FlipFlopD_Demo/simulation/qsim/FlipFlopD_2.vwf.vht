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
-- Generated on "03/21/2023 10:18:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FlipFlopD_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FlipFlopD_2_vhd_vec_tst IS
END FlipFlopD_2_vhd_vec_tst;
ARCHITECTURE FlipFlopD_2_arch OF FlipFlopD_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL q : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL set : STD_LOGIC;
COMPONENT FlipFlopD_2
	PORT (
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC;
	q : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	set : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FlipFlopD_2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	q => q,
	reset => reset,
	set => set
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

-- d
t_prcs_d: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		d <= '0';
		WAIT FOR 30000 ps;
		d <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	d <= '0';
	WAIT FOR 30000 ps;
	d <= '1';
WAIT;
END PROCESS t_prcs_d;

-- reset
t_prcs_reset: PROCESS
BEGIN
LOOP
	reset <= '0';
	WAIT FOR 100000 ps;
	reset <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_reset;

-- set
t_prcs_set: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		set <= '0';
		WAIT FOR 80000 ps;
		set <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	set <= '0';
WAIT;
END PROCESS t_prcs_set;
END FlipFlopD_2_arch;
