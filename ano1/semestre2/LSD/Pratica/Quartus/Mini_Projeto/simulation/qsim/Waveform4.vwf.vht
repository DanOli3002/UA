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
-- Generated on "04/18/2023 11:38:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Shift_Reg8_Demo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Shift_Reg8_Demo_vhd_vec_tst IS
END Shift_Reg8_Demo_vhd_vec_tst;
ARCHITECTURE Shift_Reg8_Demo_arch OF Shift_Reg8_Demo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL sel : STD_LOGIC;
SIGNAL SIN : STD_LOGIC;
COMPONENT Shift_Reg8_Demo
	PORT (
	clk : IN STD_LOGIC;
	dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	sel : IN STD_LOGIC;
	SIN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Shift_Reg8_Demo
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataOut => dataOut,
	reset => reset,
	sel => sel,
	SIN => SIN
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- SIN
t_prcs_SIN: PROCESS
BEGIN
	SIN <= '0';
	WAIT FOR 74000 ps;
	SIN <= '1';
	WAIT FOR 37000 ps;
	SIN <= '0';
	WAIT FOR 37000 ps;
	SIN <= '1';
	WAIT FOR 37000 ps;
	SIN <= '0';
	WAIT FOR 185000 ps;
	SIN <= '1';
	WAIT FOR 74000 ps;
	SIN <= '0';
	WAIT FOR 111000 ps;
	SIN <= '1';
	WAIT FOR 74000 ps;
	SIN <= '0';
	WAIT FOR 111000 ps;
	SIN <= '1';
	WAIT FOR 148000 ps;
	SIN <= '0';
	WAIT FOR 111000 ps;
	SIN <= '1';
WAIT;
END PROCESS t_prcs_SIN;

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
	WAIT FOR 200000 ps;
	sel <= '1';
	WAIT FOR 30000 ps;
	sel <= '0';
	WAIT FOR 160000 ps;
	sel <= '1';
	WAIT FOR 10000 ps;
	sel <= '0';
	WAIT FOR 200000 ps;
	sel <= '1';
	WAIT FOR 20000 ps;
	sel <= '0';
	WAIT FOR 170000 ps;
	sel <= '1';
	WAIT FOR 10000 ps;
	sel <= '0';
WAIT;
END PROCESS t_prcs_sel;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END Shift_Reg8_Demo_arch;
