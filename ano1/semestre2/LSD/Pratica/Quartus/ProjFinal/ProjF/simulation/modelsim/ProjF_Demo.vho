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

-- DATE "06/05/2023 10:37:38"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ProjF IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(2 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ProjF;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ProjF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[0]~6_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|reset~0_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|reset~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Meu_Register|i_Start_stop~q\ : std_logic;
SIGNAL \Meu_Register|i_Start_stop_out~q\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[4]~8_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[0]~7\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[1]~9_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[1]~10\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[2]~11_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[2]~12\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[3]~13_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[3]~14\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[4]~15_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Exp~0_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[4]~16\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Value[5]~17_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Exp~1_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Exp~2_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Time_Exp~q\ : std_logic;
SIGNAL \Meu_FSM|Current_State.Levedar_state~q\ : std_logic;
SIGNAL \Meu_FSM|Current_State.Cozer_state~q\ : std_logic;
SIGNAL \Meu_FSM|Current_State.Final_state~q\ : std_logic;
SIGNAL \Meu_FSM|Current_State.xIn~0_combout\ : std_logic;
SIGNAL \Meu_FSM|Current_State.xIn~q\ : std_logic;
SIGNAL \Meu_FSM|Selector0~0_combout\ : std_logic;
SIGNAL \Meu_FSM|Selector0~1_combout\ : std_logic;
SIGNAL \Meu_FSM|Current_State.Amassar_state~q\ : std_logic;
SIGNAL \Meu_FSM|LEDR~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Meu_Register|i_P1_P2~feeder_combout\ : std_logic;
SIGNAL \Meu_Register|i_P1_P2~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Meu_Debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \Meu_Debounce|s_previousIn~q\ : std_logic;
SIGNAL \Meu_Debounce|Add0~1\ : std_logic;
SIGNAL \Meu_Debounce|Add0~2_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt[18]~2_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~3\ : std_logic;
SIGNAL \Meu_Debounce|Add0~4_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~5\ : std_logic;
SIGNAL \Meu_Debounce|Add0~6_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~7\ : std_logic;
SIGNAL \Meu_Debounce|Add0~8_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~9\ : std_logic;
SIGNAL \Meu_Debounce|Add0~10_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~11\ : std_logic;
SIGNAL \Meu_Debounce|Add0~12_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~0_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~13\ : std_logic;
SIGNAL \Meu_Debounce|Add0~14_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~15\ : std_logic;
SIGNAL \Meu_Debounce|Add0~16_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~17\ : std_logic;
SIGNAL \Meu_Debounce|Add0~18_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~19\ : std_logic;
SIGNAL \Meu_Debounce|Add0~20_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~21\ : std_logic;
SIGNAL \Meu_Debounce|Add0~22_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~23\ : std_logic;
SIGNAL \Meu_Debounce|Add0~24_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~25\ : std_logic;
SIGNAL \Meu_Debounce|Add0~26_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~27\ : std_logic;
SIGNAL \Meu_Debounce|Add0~28_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~29\ : std_logic;
SIGNAL \Meu_Debounce|Add0~30_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~31\ : std_logic;
SIGNAL \Meu_Debounce|Add0~32_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~33\ : std_logic;
SIGNAL \Meu_Debounce|Add0~34_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~35\ : std_logic;
SIGNAL \Meu_Debounce|Add0~36_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~37\ : std_logic;
SIGNAL \Meu_Debounce|Add0~39\ : std_logic;
SIGNAL \Meu_Debounce|Add0~40_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt[18]~6_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt[20]~7_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~41\ : std_logic;
SIGNAL \Meu_Debounce|Add0~42_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt[21]~8_combout\ : std_logic;
SIGNAL \Meu_Debounce|LessThan0~6_combout\ : std_logic;
SIGNAL \Meu_Debounce|LessThan0~3_combout\ : std_logic;
SIGNAL \Meu_Debounce|LessThan0~4_combout\ : std_logic;
SIGNAL \Meu_Debounce|LessThan0~0_combout\ : std_logic;
SIGNAL \Meu_Debounce|LessThan0~1_combout\ : std_logic;
SIGNAL \Meu_Debounce|LessThan0~2_combout\ : std_logic;
SIGNAL \Meu_Debounce|LessThan0~5_combout\ : std_logic;
SIGNAL \Meu_Debounce|LessThan0~7_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~38_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt[18]~1_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~43\ : std_logic;
SIGNAL \Meu_Debounce|Add0~44_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \Meu_Debounce|LessThan0~8_combout\ : std_logic;
SIGNAL \Meu_Debounce|Add0~0_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \Meu_Debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \Meu_Register|i_Tadj~feeder_combout\ : std_logic;
SIGNAL \Meu_Register|i_Tadj~q\ : std_logic;
SIGNAL \Meu_Register|counter[2]~2_combout\ : std_logic;
SIGNAL \Meu_Register|counter[0]~1_combout\ : std_logic;
SIGNAL \Meu_Register|counter[1]~3_combout\ : std_logic;
SIGNAL \Meu_FSM|Add2~0_combout\ : std_logic;
SIGNAL \Meu_FSM|Add2~1_combout\ : std_logic;
SIGNAL \Meu_Register|counter[0]~0_combout\ : std_logic;
SIGNAL \Meu_FSM|Add2~2_combout\ : std_logic;
SIGNAL \Meu_Register|Extra_time[1]~0_combout\ : std_logic;
SIGNAL \Meu_Register|Extra_time[0]~1_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[0]~7\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[1]~9\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[2]~11\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[3]~13\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[4]~15\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[5]~16_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[4]~14_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[3]~12_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[0]~6_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[4]~18_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[1]~8_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[2]~10_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[0]~7_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time[4]~19_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ : std_logic;
SIGNAL \Meu_Display_Select|segments[0]~0_combout\ : std_logic;
SIGNAL \Meu_Display_Select|segments[1]~1_combout\ : std_logic;
SIGNAL \Meu_Display_Select|segments[2]~2_combout\ : std_logic;
SIGNAL \Meu_Display_Select|segments[3]~3_combout\ : std_logic;
SIGNAL \Meu_Display_Select|segments[4]~4_combout\ : std_logic;
SIGNAL \Meu_Display_Select|segments[5]~5_combout\ : std_logic;
SIGNAL \Meu_Display_Select|segments[6]~6_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[0]~18_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[0]~19_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[1]~8_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[1]~9_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[2]~10_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[3]~11_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[3]~17_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[4]~13_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[4]~12_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[4]~14_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[0]~6_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[5]~15_combout\ : std_logic;
SIGNAL \Meu_Display_Select2|segments[6]~16_combout\ : std_logic;
SIGNAL \Meu_Display_Select3|segments[0]~0_combout\ : std_logic;
SIGNAL \Meu_Display_Select3|segments[1]~1_combout\ : std_logic;
SIGNAL \Meu_Display_Select3|Equal14~0_combout\ : std_logic;
SIGNAL \Meu_Display_Select3|segments[3]~2_combout\ : std_logic;
SIGNAL \Meu_Display_Select3|segments[4]~3_combout\ : std_logic;
SIGNAL \Meu_Display_Select3|segments[5]~4_combout\ : std_logic;
SIGNAL \Meu_Display_Select3|segments[6]~5_combout\ : std_logic;
SIGNAL \Meu_Timer_FSM|Dec_New_Time\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Meu_Timer_FSM|Time_Value\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Meu_Register|counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Meu_Debounce|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Meu_FSM|ALT_INV_LEDR~0_combout\ : std_logic;
SIGNAL \Meu_Display_Select3|ALT_INV_segments[6]~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX4 <= ww_HEX4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\Meu_FSM|ALT_INV_LEDR~0_combout\ <= NOT \Meu_FSM|LEDR~0_combout\;
\Meu_Display_Select3|ALT_INV_segments[6]~5_combout\ <= NOT \Meu_Display_Select3|segments[6]~5_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_FSM|Current_State.Amassar_state~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_FSM|Current_State.Levedar_state~q\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_FSM|Current_State.Cozer_state~q\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_FSM|ALT_INV_LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select|segments[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select|segments[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select|segments[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select|segments[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select|segments[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select2|segments[0]~19_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select2|segments[1]~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select2|segments[2]~10_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select2|segments[3]~17_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select2|segments[4]~14_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select2|segments[5]~15_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select2|segments[6]~16_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select3|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select3|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select3|Equal14~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select3|segments[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select3|segments[4]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select3|segments[5]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Meu_Display_Select3|ALT_INV_segments[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X111_Y42_N10
\Meu_Timer_FSM|Time_Value[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Time_Value[0]~6_combout\ = \Meu_Timer_FSM|Time_Value\(0) $ (VCC)
-- \Meu_Timer_FSM|Time_Value[0]~7\ = CARRY(\Meu_Timer_FSM|Time_Value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Time_Value\(0),
	datad => VCC,
	combout => \Meu_Timer_FSM|Time_Value[0]~6_combout\,
	cout => \Meu_Timer_FSM|Time_Value[0]~7\);

-- Location: LCCOMB_X112_Y42_N20
\Meu_Timer_FSM|reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|reset~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \Meu_Timer_FSM|reset~0_combout\);

-- Location: FF_X112_Y42_N21
\Meu_Timer_FSM|reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|reset~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X112_Y42_N19
\Meu_Register|i_Start_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[1]~input_o\,
	sload => VCC,
	ena => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Register|i_Start_stop~q\);

-- Location: FF_X112_Y42_N13
\Meu_Register|i_Start_stop_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Meu_Register|i_Start_stop~q\,
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Register|i_Start_stop_out~q\);

-- Location: LCCOMB_X112_Y42_N18
\Meu_Timer_FSM|Time_Value[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Time_Value[4]~8_combout\ = (\Meu_Timer_FSM|reset~q\) # ((!\Meu_Timer_FSM|Time_Exp~1_combout\ & \Meu_Register|i_Start_stop_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Time_Exp~1_combout\,
	datab => \Meu_Timer_FSM|reset~q\,
	datad => \Meu_Register|i_Start_stop_out~q\,
	combout => \Meu_Timer_FSM|Time_Value[4]~8_combout\);

-- Location: FF_X111_Y42_N11
\Meu_Timer_FSM|Time_Value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Time_Value[0]~6_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Time_Value[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Time_Value\(0));

-- Location: LCCOMB_X111_Y42_N12
\Meu_Timer_FSM|Time_Value[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Time_Value[1]~9_combout\ = (\Meu_Timer_FSM|Time_Value\(1) & (\Meu_Timer_FSM|Time_Value[0]~7\ & VCC)) # (!\Meu_Timer_FSM|Time_Value\(1) & (!\Meu_Timer_FSM|Time_Value[0]~7\))
-- \Meu_Timer_FSM|Time_Value[1]~10\ = CARRY((!\Meu_Timer_FSM|Time_Value\(1) & !\Meu_Timer_FSM|Time_Value[0]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Time_Value\(1),
	datad => VCC,
	cin => \Meu_Timer_FSM|Time_Value[0]~7\,
	combout => \Meu_Timer_FSM|Time_Value[1]~9_combout\,
	cout => \Meu_Timer_FSM|Time_Value[1]~10\);

-- Location: FF_X111_Y42_N13
\Meu_Timer_FSM|Time_Value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Time_Value[1]~9_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Time_Value[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Time_Value\(1));

-- Location: LCCOMB_X111_Y42_N14
\Meu_Timer_FSM|Time_Value[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Time_Value[2]~11_combout\ = (\Meu_Timer_FSM|Time_Value\(2) & ((GND) # (!\Meu_Timer_FSM|Time_Value[1]~10\))) # (!\Meu_Timer_FSM|Time_Value\(2) & (\Meu_Timer_FSM|Time_Value[1]~10\ $ (GND)))
-- \Meu_Timer_FSM|Time_Value[2]~12\ = CARRY((\Meu_Timer_FSM|Time_Value\(2)) # (!\Meu_Timer_FSM|Time_Value[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Timer_FSM|Time_Value\(2),
	datad => VCC,
	cin => \Meu_Timer_FSM|Time_Value[1]~10\,
	combout => \Meu_Timer_FSM|Time_Value[2]~11_combout\,
	cout => \Meu_Timer_FSM|Time_Value[2]~12\);

-- Location: FF_X111_Y42_N15
\Meu_Timer_FSM|Time_Value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Time_Value[2]~11_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Time_Value[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Time_Value\(2));

-- Location: LCCOMB_X111_Y42_N16
\Meu_Timer_FSM|Time_Value[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Time_Value[3]~13_combout\ = (\Meu_Timer_FSM|Time_Value\(3) & (\Meu_Timer_FSM|Time_Value[2]~12\ & VCC)) # (!\Meu_Timer_FSM|Time_Value\(3) & (!\Meu_Timer_FSM|Time_Value[2]~12\))
-- \Meu_Timer_FSM|Time_Value[3]~14\ = CARRY((!\Meu_Timer_FSM|Time_Value\(3) & !\Meu_Timer_FSM|Time_Value[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Timer_FSM|Time_Value\(3),
	datad => VCC,
	cin => \Meu_Timer_FSM|Time_Value[2]~12\,
	combout => \Meu_Timer_FSM|Time_Value[3]~13_combout\,
	cout => \Meu_Timer_FSM|Time_Value[3]~14\);

-- Location: FF_X111_Y42_N17
\Meu_Timer_FSM|Time_Value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Time_Value[3]~13_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Time_Value[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Time_Value\(3));

-- Location: LCCOMB_X111_Y42_N18
\Meu_Timer_FSM|Time_Value[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Time_Value[4]~15_combout\ = (\Meu_Timer_FSM|Time_Value\(4) & ((GND) # (!\Meu_Timer_FSM|Time_Value[3]~14\))) # (!\Meu_Timer_FSM|Time_Value\(4) & (\Meu_Timer_FSM|Time_Value[3]~14\ $ (GND)))
-- \Meu_Timer_FSM|Time_Value[4]~16\ = CARRY((\Meu_Timer_FSM|Time_Value\(4)) # (!\Meu_Timer_FSM|Time_Value[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Timer_FSM|Time_Value\(4),
	datad => VCC,
	cin => \Meu_Timer_FSM|Time_Value[3]~14\,
	combout => \Meu_Timer_FSM|Time_Value[4]~15_combout\,
	cout => \Meu_Timer_FSM|Time_Value[4]~16\);

-- Location: FF_X111_Y42_N19
\Meu_Timer_FSM|Time_Value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Time_Value[4]~15_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Time_Value[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Time_Value\(4));

-- Location: LCCOMB_X111_Y42_N22
\Meu_Timer_FSM|Time_Exp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Time_Exp~0_combout\ = (!\Meu_Timer_FSM|Time_Value\(1) & (!\Meu_Timer_FSM|Time_Value\(3) & (!\Meu_Timer_FSM|Time_Value\(2) & !\Meu_Timer_FSM|Time_Value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Time_Value\(1),
	datab => \Meu_Timer_FSM|Time_Value\(3),
	datac => \Meu_Timer_FSM|Time_Value\(2),
	datad => \Meu_Timer_FSM|Time_Value\(0),
	combout => \Meu_Timer_FSM|Time_Exp~0_combout\);

-- Location: LCCOMB_X111_Y42_N20
\Meu_Timer_FSM|Time_Value[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Time_Value[5]~17_combout\ = \Meu_Timer_FSM|Time_Value[4]~16\ $ (!\Meu_Timer_FSM|Time_Value\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Meu_Timer_FSM|Time_Value\(5),
	cin => \Meu_Timer_FSM|Time_Value[4]~16\,
	combout => \Meu_Timer_FSM|Time_Value[5]~17_combout\);

-- Location: FF_X111_Y42_N21
\Meu_Timer_FSM|Time_Value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Time_Value[5]~17_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Time_Value[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Time_Value\(5));

-- Location: LCCOMB_X111_Y42_N0
\Meu_Timer_FSM|Time_Exp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Time_Exp~1_combout\ = (!\Meu_Timer_FSM|Time_Value\(4) & (\Meu_Timer_FSM|Time_Exp~0_combout\ & !\Meu_Timer_FSM|Time_Value\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Timer_FSM|Time_Value\(4),
	datac => \Meu_Timer_FSM|Time_Exp~0_combout\,
	datad => \Meu_Timer_FSM|Time_Value\(5),
	combout => \Meu_Timer_FSM|Time_Exp~1_combout\);

-- Location: LCCOMB_X112_Y42_N10
\Meu_Timer_FSM|Time_Exp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Time_Exp~2_combout\ = (!\Meu_Timer_FSM|reset~q\ & ((\Meu_Register|i_Start_stop_out~q\ & (\Meu_Timer_FSM|Time_Exp~1_combout\)) # (!\Meu_Register|i_Start_stop_out~q\ & ((\Meu_Timer_FSM|Time_Exp~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Time_Exp~1_combout\,
	datab => \Meu_Register|i_Start_stop_out~q\,
	datac => \Meu_Timer_FSM|Time_Exp~q\,
	datad => \Meu_Timer_FSM|reset~q\,
	combout => \Meu_Timer_FSM|Time_Exp~2_combout\);

-- Location: FF_X112_Y42_N11
\Meu_Timer_FSM|Time_Exp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Time_Exp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Time_Exp~q\);

-- Location: FF_X114_Y42_N3
\Meu_FSM|Current_State.Levedar_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Meu_FSM|Current_State.Amassar_state~q\,
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \Meu_Timer_FSM|Time_Exp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_FSM|Current_State.Levedar_state~q\);

-- Location: FF_X114_Y42_N5
\Meu_FSM|Current_State.Cozer_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Meu_FSM|Current_State.Levedar_state~q\,
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \Meu_Timer_FSM|Time_Exp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_FSM|Current_State.Cozer_state~q\);

-- Location: FF_X114_Y42_N11
\Meu_FSM|Current_State.Final_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Meu_FSM|Current_State.Cozer_state~q\,
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \Meu_Timer_FSM|Time_Exp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_FSM|Current_State.Final_state~q\);

-- Location: LCCOMB_X114_Y42_N28
\Meu_FSM|Current_State.xIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_FSM|Current_State.xIn~0_combout\ = (\Meu_FSM|Current_State.xIn~q\) # (\Meu_Register|i_Start_stop_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_FSM|Current_State.xIn~q\,
	datad => \Meu_Register|i_Start_stop_out~q\,
	combout => \Meu_FSM|Current_State.xIn~0_combout\);

-- Location: FF_X114_Y42_N29
\Meu_FSM|Current_State.xIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_FSM|Current_State.xIn~0_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_FSM|Current_State.xIn~q\);

-- Location: LCCOMB_X114_Y42_N2
\Meu_FSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_FSM|Selector0~0_combout\ = (\Meu_Register|i_Start_stop_out~q\ & !\Meu_FSM|Current_State.xIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_Start_stop_out~q\,
	datad => \Meu_FSM|Current_State.xIn~q\,
	combout => \Meu_FSM|Selector0~0_combout\);

-- Location: LCCOMB_X114_Y42_N8
\Meu_FSM|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_FSM|Selector0~1_combout\ = (\Meu_FSM|Selector0~0_combout\) # ((\Meu_Timer_FSM|Time_Exp~q\ & (\Meu_FSM|Current_State.Final_state~q\)) # (!\Meu_Timer_FSM|Time_Exp~q\ & ((\Meu_FSM|Current_State.Amassar_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_FSM|Current_State.Final_state~q\,
	datab => \Meu_Timer_FSM|Time_Exp~q\,
	datac => \Meu_FSM|Current_State.Amassar_state~q\,
	datad => \Meu_FSM|Selector0~0_combout\,
	combout => \Meu_FSM|Selector0~1_combout\);

-- Location: FF_X114_Y42_N9
\Meu_FSM|Current_State.Amassar_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_FSM|Selector0~1_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_FSM|Current_State.Amassar_state~q\);

-- Location: LCCOMB_X114_Y42_N10
\Meu_FSM|LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_FSM|LEDR~0_combout\ = (\Meu_FSM|Current_State.Final_state~q\) # (!\Meu_FSM|Current_State.xIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_FSM|Current_State.Final_state~q\,
	datad => \Meu_FSM|Current_State.xIn~q\,
	combout => \Meu_FSM|LEDR~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X112_Y42_N16
\Meu_Register|i_P1_P2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Register|i_P1_P2~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \Meu_Register|i_P1_P2~feeder_combout\);

-- Location: FF_X112_Y42_N17
\Meu_Register|i_P1_P2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Register|i_P1_P2~feeder_combout\,
	ena => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Register|i_P1_P2~q\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X109_Y42_N17
\Meu_Debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_dirtyIn~q\);

-- Location: FF_X109_Y42_N13
\Meu_Debounce|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Meu_Debounce|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_previousIn~q\);

-- Location: LCCOMB_X108_Y42_N10
\Meu_Debounce|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~0_combout\ = \Meu_Debounce|s_debounceCnt\(0) $ (VCC)
-- \Meu_Debounce|Add0~1\ = CARRY(\Meu_Debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \Meu_Debounce|Add0~0_combout\,
	cout => \Meu_Debounce|Add0~1\);

-- Location: LCCOMB_X108_Y42_N12
\Meu_Debounce|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~2_combout\ = (\Meu_Debounce|s_debounceCnt\(1) & (\Meu_Debounce|Add0~1\ & VCC)) # (!\Meu_Debounce|s_debounceCnt\(1) & (!\Meu_Debounce|Add0~1\))
-- \Meu_Debounce|Add0~3\ = CARRY((!\Meu_Debounce|s_debounceCnt\(1) & !\Meu_Debounce|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \Meu_Debounce|Add0~1\,
	combout => \Meu_Debounce|Add0~2_combout\,
	cout => \Meu_Debounce|Add0~3\);

-- Location: LCCOMB_X107_Y42_N6
\Meu_Debounce|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~20_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|s_previousIn~q\ & (!\Meu_Debounce|LessThan0~8_combout\ & \Meu_Debounce|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|LessThan0~8_combout\,
	datad => \Meu_Debounce|Add0~2_combout\,
	combout => \Meu_Debounce|s_debounceCnt~20_combout\);

-- Location: LCCOMB_X109_Y42_N12
\Meu_Debounce|s_debounceCnt[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt[18]~2_combout\ = (\Meu_Debounce|s_debounceCnt\(22)) # (((\Meu_Debounce|s_debounceCnt[18]~1_combout\) # (!\Meu_Debounce|s_previousIn~q\)) # (!\Meu_Debounce|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(22),
	datab => \Meu_Debounce|s_dirtyIn~q\,
	datac => \Meu_Debounce|s_previousIn~q\,
	datad => \Meu_Debounce|s_debounceCnt[18]~1_combout\,
	combout => \Meu_Debounce|s_debounceCnt[18]~2_combout\);

-- Location: FF_X107_Y42_N7
\Meu_Debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~20_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X108_Y42_N14
\Meu_Debounce|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~4_combout\ = (\Meu_Debounce|s_debounceCnt\(2) & ((GND) # (!\Meu_Debounce|Add0~3\))) # (!\Meu_Debounce|s_debounceCnt\(2) & (\Meu_Debounce|Add0~3\ $ (GND)))
-- \Meu_Debounce|Add0~5\ = CARRY((\Meu_Debounce|s_debounceCnt\(2)) # (!\Meu_Debounce|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \Meu_Debounce|Add0~3\,
	combout => \Meu_Debounce|Add0~4_combout\,
	cout => \Meu_Debounce|Add0~5\);

-- Location: LCCOMB_X108_Y42_N2
\Meu_Debounce|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~21_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|s_previousIn~q\ & (\Meu_Debounce|Add0~4_combout\ & !\Meu_Debounce|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|Add0~4_combout\,
	datad => \Meu_Debounce|LessThan0~8_combout\,
	combout => \Meu_Debounce|s_debounceCnt~21_combout\);

-- Location: FF_X108_Y42_N3
\Meu_Debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~21_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X108_Y42_N16
\Meu_Debounce|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~6_combout\ = (\Meu_Debounce|s_debounceCnt\(3) & (\Meu_Debounce|Add0~5\ & VCC)) # (!\Meu_Debounce|s_debounceCnt\(3) & (!\Meu_Debounce|Add0~5\))
-- \Meu_Debounce|Add0~7\ = CARRY((!\Meu_Debounce|s_debounceCnt\(3) & !\Meu_Debounce|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \Meu_Debounce|Add0~5\,
	combout => \Meu_Debounce|Add0~6_combout\,
	cout => \Meu_Debounce|Add0~7\);

-- Location: LCCOMB_X107_Y42_N16
\Meu_Debounce|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~22_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|s_previousIn~q\ & (!\Meu_Debounce|LessThan0~8_combout\ & \Meu_Debounce|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|LessThan0~8_combout\,
	datad => \Meu_Debounce|Add0~6_combout\,
	combout => \Meu_Debounce|s_debounceCnt~22_combout\);

-- Location: FF_X107_Y42_N17
\Meu_Debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~22_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X108_Y42_N18
\Meu_Debounce|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~8_combout\ = (\Meu_Debounce|s_debounceCnt\(4) & ((GND) # (!\Meu_Debounce|Add0~7\))) # (!\Meu_Debounce|s_debounceCnt\(4) & (\Meu_Debounce|Add0~7\ $ (GND)))
-- \Meu_Debounce|Add0~9\ = CARRY((\Meu_Debounce|s_debounceCnt\(4)) # (!\Meu_Debounce|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \Meu_Debounce|Add0~7\,
	combout => \Meu_Debounce|Add0~8_combout\,
	cout => \Meu_Debounce|Add0~9\);

-- Location: LCCOMB_X107_Y42_N22
\Meu_Debounce|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~23_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|s_previousIn~q\ & (!\Meu_Debounce|LessThan0~8_combout\ & \Meu_Debounce|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|LessThan0~8_combout\,
	datad => \Meu_Debounce|Add0~8_combout\,
	combout => \Meu_Debounce|s_debounceCnt~23_combout\);

-- Location: FF_X107_Y42_N23
\Meu_Debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~23_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X108_Y42_N20
\Meu_Debounce|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~10_combout\ = (\Meu_Debounce|s_debounceCnt\(5) & (\Meu_Debounce|Add0~9\ & VCC)) # (!\Meu_Debounce|s_debounceCnt\(5) & (!\Meu_Debounce|Add0~9\))
-- \Meu_Debounce|Add0~11\ = CARRY((!\Meu_Debounce|s_debounceCnt\(5) & !\Meu_Debounce|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \Meu_Debounce|Add0~9\,
	combout => \Meu_Debounce|Add0~10_combout\,
	cout => \Meu_Debounce|Add0~11\);

-- Location: LCCOMB_X108_Y42_N0
\Meu_Debounce|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~27_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|Add0~10_combout\ & (\Meu_Debounce|s_previousIn~q\ & !\Meu_Debounce|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|Add0~10_combout\,
	datac => \Meu_Debounce|s_previousIn~q\,
	datad => \Meu_Debounce|LessThan0~8_combout\,
	combout => \Meu_Debounce|s_debounceCnt~27_combout\);

-- Location: FF_X108_Y42_N1
\Meu_Debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~27_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X107_Y42_N0
\Meu_Debounce|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_pulsedOut~5_combout\ = (!\Meu_Debounce|s_debounceCnt\(1) & (!\Meu_Debounce|s_debounceCnt\(3) & (!\Meu_Debounce|s_debounceCnt\(4) & !\Meu_Debounce|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(1),
	datab => \Meu_Debounce|s_debounceCnt\(3),
	datac => \Meu_Debounce|s_debounceCnt\(4),
	datad => \Meu_Debounce|s_debounceCnt\(2),
	combout => \Meu_Debounce|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X108_Y42_N22
\Meu_Debounce|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~12_combout\ = (\Meu_Debounce|s_debounceCnt\(6) & ((GND) # (!\Meu_Debounce|Add0~11\))) # (!\Meu_Debounce|s_debounceCnt\(6) & (\Meu_Debounce|Add0~11\ $ (GND)))
-- \Meu_Debounce|Add0~13\ = CARRY((\Meu_Debounce|s_debounceCnt\(6)) # (!\Meu_Debounce|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \Meu_Debounce|Add0~11\,
	combout => \Meu_Debounce|Add0~12_combout\,
	cout => \Meu_Debounce|Add0~13\);

-- Location: LCCOMB_X108_Y42_N4
\Meu_Debounce|s_debounceCnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~0_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (!\Meu_Debounce|LessThan0~8_combout\ & ((\Meu_Debounce|Add0~12_combout\) # (!\Meu_Debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|Add0~12_combout\,
	datad => \Meu_Debounce|LessThan0~8_combout\,
	combout => \Meu_Debounce|s_debounceCnt~0_combout\);

-- Location: FF_X108_Y42_N5
\Meu_Debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~0_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X108_Y42_N24
\Meu_Debounce|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~14_combout\ = (\Meu_Debounce|s_debounceCnt\(7) & (\Meu_Debounce|Add0~13\ & VCC)) # (!\Meu_Debounce|s_debounceCnt\(7) & (!\Meu_Debounce|Add0~13\))
-- \Meu_Debounce|Add0~15\ = CARRY((!\Meu_Debounce|s_debounceCnt\(7) & !\Meu_Debounce|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \Meu_Debounce|Add0~13\,
	combout => \Meu_Debounce|Add0~14_combout\,
	cout => \Meu_Debounce|Add0~15\);

-- Location: LCCOMB_X108_Y42_N6
\Meu_Debounce|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~11_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|Add0~14_combout\ & (\Meu_Debounce|s_previousIn~q\ & !\Meu_Debounce|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|Add0~14_combout\,
	datac => \Meu_Debounce|s_previousIn~q\,
	datad => \Meu_Debounce|LessThan0~8_combout\,
	combout => \Meu_Debounce|s_debounceCnt~11_combout\);

-- Location: FF_X108_Y42_N7
\Meu_Debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~11_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X108_Y42_N26
\Meu_Debounce|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~16_combout\ = (\Meu_Debounce|s_debounceCnt\(8) & ((GND) # (!\Meu_Debounce|Add0~15\))) # (!\Meu_Debounce|s_debounceCnt\(8) & (\Meu_Debounce|Add0~15\ $ (GND)))
-- \Meu_Debounce|Add0~17\ = CARRY((\Meu_Debounce|s_debounceCnt\(8)) # (!\Meu_Debounce|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \Meu_Debounce|Add0~15\,
	combout => \Meu_Debounce|Add0~16_combout\,
	cout => \Meu_Debounce|Add0~17\);

-- Location: LCCOMB_X109_Y42_N26
\Meu_Debounce|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~12_combout\ = (!\Meu_Debounce|LessThan0~8_combout\ & (\Meu_Debounce|s_dirtyIn~q\ & ((\Meu_Debounce|Add0~16_combout\) # (!\Meu_Debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|LessThan0~8_combout\,
	datab => \Meu_Debounce|s_dirtyIn~q\,
	datac => \Meu_Debounce|Add0~16_combout\,
	datad => \Meu_Debounce|s_previousIn~q\,
	combout => \Meu_Debounce|s_debounceCnt~12_combout\);

-- Location: FF_X109_Y42_N27
\Meu_Debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~12_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X108_Y42_N28
\Meu_Debounce|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~18_combout\ = (\Meu_Debounce|s_debounceCnt\(9) & (\Meu_Debounce|Add0~17\ & VCC)) # (!\Meu_Debounce|s_debounceCnt\(9) & (!\Meu_Debounce|Add0~17\))
-- \Meu_Debounce|Add0~19\ = CARRY((!\Meu_Debounce|s_debounceCnt\(9) & !\Meu_Debounce|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \Meu_Debounce|Add0~17\,
	combout => \Meu_Debounce|Add0~18_combout\,
	cout => \Meu_Debounce|Add0~19\);

-- Location: LCCOMB_X109_Y42_N28
\Meu_Debounce|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~13_combout\ = (!\Meu_Debounce|LessThan0~8_combout\ & (\Meu_Debounce|s_dirtyIn~q\ & ((\Meu_Debounce|Add0~18_combout\) # (!\Meu_Debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_previousIn~q\,
	datab => \Meu_Debounce|Add0~18_combout\,
	datac => \Meu_Debounce|LessThan0~8_combout\,
	datad => \Meu_Debounce|s_dirtyIn~q\,
	combout => \Meu_Debounce|s_debounceCnt~13_combout\);

-- Location: FF_X109_Y42_N29
\Meu_Debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~13_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X108_Y42_N30
\Meu_Debounce|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~20_combout\ = (\Meu_Debounce|s_debounceCnt\(10) & ((GND) # (!\Meu_Debounce|Add0~19\))) # (!\Meu_Debounce|s_debounceCnt\(10) & (\Meu_Debounce|Add0~19\ $ (GND)))
-- \Meu_Debounce|Add0~21\ = CARRY((\Meu_Debounce|s_debounceCnt\(10)) # (!\Meu_Debounce|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \Meu_Debounce|Add0~19\,
	combout => \Meu_Debounce|Add0~20_combout\,
	cout => \Meu_Debounce|Add0~21\);

-- Location: LCCOMB_X108_Y42_N8
\Meu_Debounce|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~14_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|s_previousIn~q\ & (\Meu_Debounce|Add0~20_combout\ & !\Meu_Debounce|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|Add0~20_combout\,
	datad => \Meu_Debounce|LessThan0~8_combout\,
	combout => \Meu_Debounce|s_debounceCnt~14_combout\);

-- Location: FF_X108_Y42_N9
\Meu_Debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~14_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X108_Y41_N0
\Meu_Debounce|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~22_combout\ = (\Meu_Debounce|s_debounceCnt\(11) & (\Meu_Debounce|Add0~21\ & VCC)) # (!\Meu_Debounce|s_debounceCnt\(11) & (!\Meu_Debounce|Add0~21\))
-- \Meu_Debounce|Add0~23\ = CARRY((!\Meu_Debounce|s_debounceCnt\(11) & !\Meu_Debounce|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \Meu_Debounce|Add0~21\,
	combout => \Meu_Debounce|Add0~22_combout\,
	cout => \Meu_Debounce|Add0~23\);

-- Location: LCCOMB_X109_Y42_N30
\Meu_Debounce|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~15_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (!\Meu_Debounce|LessThan0~8_combout\ & ((\Meu_Debounce|Add0~22_combout\) # (!\Meu_Debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|Add0~22_combout\,
	datac => \Meu_Debounce|LessThan0~8_combout\,
	datad => \Meu_Debounce|s_previousIn~q\,
	combout => \Meu_Debounce|s_debounceCnt~15_combout\);

-- Location: FF_X109_Y42_N31
\Meu_Debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~15_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X108_Y41_N2
\Meu_Debounce|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~24_combout\ = (\Meu_Debounce|s_debounceCnt\(12) & ((GND) # (!\Meu_Debounce|Add0~23\))) # (!\Meu_Debounce|s_debounceCnt\(12) & (\Meu_Debounce|Add0~23\ $ (GND)))
-- \Meu_Debounce|Add0~25\ = CARRY((\Meu_Debounce|s_debounceCnt\(12)) # (!\Meu_Debounce|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \Meu_Debounce|Add0~23\,
	combout => \Meu_Debounce|Add0~24_combout\,
	cout => \Meu_Debounce|Add0~25\);

-- Location: LCCOMB_X107_Y42_N20
\Meu_Debounce|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~9_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|s_previousIn~q\ & (!\Meu_Debounce|LessThan0~8_combout\ & \Meu_Debounce|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|LessThan0~8_combout\,
	datad => \Meu_Debounce|Add0~24_combout\,
	combout => \Meu_Debounce|s_debounceCnt~9_combout\);

-- Location: FF_X107_Y42_N21
\Meu_Debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~9_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X108_Y41_N4
\Meu_Debounce|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~26_combout\ = (\Meu_Debounce|s_debounceCnt\(13) & (\Meu_Debounce|Add0~25\ & VCC)) # (!\Meu_Debounce|s_debounceCnt\(13) & (!\Meu_Debounce|Add0~25\))
-- \Meu_Debounce|Add0~27\ = CARRY((!\Meu_Debounce|s_debounceCnt\(13) & !\Meu_Debounce|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \Meu_Debounce|Add0~25\,
	combout => \Meu_Debounce|Add0~26_combout\,
	cout => \Meu_Debounce|Add0~27\);

-- Location: LCCOMB_X109_Y41_N0
\Meu_Debounce|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~10_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|s_previousIn~q\ & (\Meu_Debounce|Add0~26_combout\ & !\Meu_Debounce|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|Add0~26_combout\,
	datad => \Meu_Debounce|LessThan0~8_combout\,
	combout => \Meu_Debounce|s_debounceCnt~10_combout\);

-- Location: FF_X109_Y41_N1
\Meu_Debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~10_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X108_Y41_N6
\Meu_Debounce|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~28_combout\ = (\Meu_Debounce|s_debounceCnt\(14) & ((GND) # (!\Meu_Debounce|Add0~27\))) # (!\Meu_Debounce|s_debounceCnt\(14) & (\Meu_Debounce|Add0~27\ $ (GND)))
-- \Meu_Debounce|Add0~29\ = CARRY((\Meu_Debounce|s_debounceCnt\(14)) # (!\Meu_Debounce|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \Meu_Debounce|Add0~27\,
	combout => \Meu_Debounce|Add0~28_combout\,
	cout => \Meu_Debounce|Add0~29\);

-- Location: LCCOMB_X109_Y41_N26
\Meu_Debounce|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~16_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (!\Meu_Debounce|LessThan0~8_combout\ & ((\Meu_Debounce|Add0~28_combout\) # (!\Meu_Debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|Add0~28_combout\,
	datad => \Meu_Debounce|LessThan0~8_combout\,
	combout => \Meu_Debounce|s_debounceCnt~16_combout\);

-- Location: FF_X109_Y41_N27
\Meu_Debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~16_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X108_Y41_N8
\Meu_Debounce|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~30_combout\ = (\Meu_Debounce|s_debounceCnt\(15) & (\Meu_Debounce|Add0~29\ & VCC)) # (!\Meu_Debounce|s_debounceCnt\(15) & (!\Meu_Debounce|Add0~29\))
-- \Meu_Debounce|Add0~31\ = CARRY((!\Meu_Debounce|s_debounceCnt\(15) & !\Meu_Debounce|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \Meu_Debounce|Add0~29\,
	combout => \Meu_Debounce|Add0~30_combout\,
	cout => \Meu_Debounce|Add0~31\);

-- Location: LCCOMB_X107_Y42_N28
\Meu_Debounce|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~3_combout\ = (!\Meu_Debounce|LessThan0~8_combout\ & (\Meu_Debounce|s_previousIn~q\ & (\Meu_Debounce|Add0~30_combout\ & \Meu_Debounce|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|LessThan0~8_combout\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|Add0~30_combout\,
	datad => \Meu_Debounce|s_dirtyIn~q\,
	combout => \Meu_Debounce|s_debounceCnt~3_combout\);

-- Location: FF_X107_Y42_N29
\Meu_Debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~3_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X108_Y41_N10
\Meu_Debounce|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~32_combout\ = (\Meu_Debounce|s_debounceCnt\(16) & ((GND) # (!\Meu_Debounce|Add0~31\))) # (!\Meu_Debounce|s_debounceCnt\(16) & (\Meu_Debounce|Add0~31\ $ (GND)))
-- \Meu_Debounce|Add0~33\ = CARRY((\Meu_Debounce|s_debounceCnt\(16)) # (!\Meu_Debounce|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \Meu_Debounce|Add0~31\,
	combout => \Meu_Debounce|Add0~32_combout\,
	cout => \Meu_Debounce|Add0~33\);

-- Location: LCCOMB_X109_Y42_N4
\Meu_Debounce|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~4_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|s_previousIn~q\ & (!\Meu_Debounce|LessThan0~8_combout\ & \Meu_Debounce|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|LessThan0~8_combout\,
	datad => \Meu_Debounce|Add0~32_combout\,
	combout => \Meu_Debounce|s_debounceCnt~4_combout\);

-- Location: FF_X109_Y42_N5
\Meu_Debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~4_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X108_Y41_N12
\Meu_Debounce|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~34_combout\ = (\Meu_Debounce|s_debounceCnt\(17) & (\Meu_Debounce|Add0~33\ & VCC)) # (!\Meu_Debounce|s_debounceCnt\(17) & (!\Meu_Debounce|Add0~33\))
-- \Meu_Debounce|Add0~35\ = CARRY((!\Meu_Debounce|s_debounceCnt\(17) & !\Meu_Debounce|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \Meu_Debounce|Add0~33\,
	combout => \Meu_Debounce|Add0~34_combout\,
	cout => \Meu_Debounce|Add0~35\);

-- Location: LCCOMB_X107_Y42_N26
\Meu_Debounce|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~5_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|s_previousIn~q\ & (!\Meu_Debounce|LessThan0~8_combout\ & \Meu_Debounce|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|LessThan0~8_combout\,
	datad => \Meu_Debounce|Add0~34_combout\,
	combout => \Meu_Debounce|s_debounceCnt~5_combout\);

-- Location: FF_X107_Y42_N27
\Meu_Debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~5_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X109_Y42_N6
\Meu_Debounce|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_pulsedOut~0_combout\ = (!\Meu_Debounce|s_debounceCnt\(15) & (!\Meu_Debounce|s_debounceCnt\(16) & (!\Meu_Debounce|s_debounceCnt\(6) & !\Meu_Debounce|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(15),
	datab => \Meu_Debounce|s_debounceCnt\(16),
	datac => \Meu_Debounce|s_debounceCnt\(6),
	datad => \Meu_Debounce|s_debounceCnt\(17),
	combout => \Meu_Debounce|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X109_Y42_N18
\Meu_Debounce|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_pulsedOut~2_combout\ = (!\Meu_Debounce|s_debounceCnt\(10) & (!\Meu_Debounce|s_debounceCnt\(7) & (!\Meu_Debounce|s_debounceCnt\(8) & !\Meu_Debounce|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(10),
	datab => \Meu_Debounce|s_debounceCnt\(7),
	datac => \Meu_Debounce|s_debounceCnt\(8),
	datad => \Meu_Debounce|s_debounceCnt\(9),
	combout => \Meu_Debounce|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X108_Y41_N14
\Meu_Debounce|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~36_combout\ = (\Meu_Debounce|s_debounceCnt\(18) & ((GND) # (!\Meu_Debounce|Add0~35\))) # (!\Meu_Debounce|s_debounceCnt\(18) & (\Meu_Debounce|Add0~35\ $ (GND)))
-- \Meu_Debounce|Add0~37\ = CARRY((\Meu_Debounce|s_debounceCnt\(18)) # (!\Meu_Debounce|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \Meu_Debounce|Add0~35\,
	combout => \Meu_Debounce|Add0~36_combout\,
	cout => \Meu_Debounce|Add0~37\);

-- Location: LCCOMB_X109_Y42_N22
\Meu_Debounce|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt[18]~18_combout\ = (\Meu_Debounce|s_debounceCnt[18]~2_combout\ & (\Meu_Debounce|s_debounceCnt[18]~17_combout\ & ((\Meu_Debounce|Add0~36_combout\) # (!\Meu_Debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_previousIn~q\,
	datab => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	datac => \Meu_Debounce|Add0~36_combout\,
	datad => \Meu_Debounce|s_debounceCnt[18]~17_combout\,
	combout => \Meu_Debounce|s_debounceCnt[18]~18_combout\);

-- Location: FF_X109_Y42_N23
\Meu_Debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X108_Y41_N16
\Meu_Debounce|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~38_combout\ = (\Meu_Debounce|s_debounceCnt\(19) & (\Meu_Debounce|Add0~37\ & VCC)) # (!\Meu_Debounce|s_debounceCnt\(19) & (!\Meu_Debounce|Add0~37\))
-- \Meu_Debounce|Add0~39\ = CARRY((!\Meu_Debounce|s_debounceCnt\(19) & !\Meu_Debounce|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \Meu_Debounce|Add0~37\,
	combout => \Meu_Debounce|Add0~38_combout\,
	cout => \Meu_Debounce|Add0~39\);

-- Location: LCCOMB_X108_Y41_N18
\Meu_Debounce|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~40_combout\ = (\Meu_Debounce|s_debounceCnt\(20) & ((GND) # (!\Meu_Debounce|Add0~39\))) # (!\Meu_Debounce|s_debounceCnt\(20) & (\Meu_Debounce|Add0~39\ $ (GND)))
-- \Meu_Debounce|Add0~41\ = CARRY((\Meu_Debounce|s_debounceCnt\(20)) # (!\Meu_Debounce|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \Meu_Debounce|Add0~39\,
	combout => \Meu_Debounce|Add0~40_combout\,
	cout => \Meu_Debounce|Add0~41\);

-- Location: LCCOMB_X108_Y41_N28
\Meu_Debounce|s_debounceCnt[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt[18]~6_combout\ = (\Meu_Debounce|s_previousIn~q\ & (\Meu_Debounce|s_dirtyIn~q\ & ((!\Meu_Debounce|LessThan0~7_combout\) # (!\Meu_Debounce|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_previousIn~q\,
	datab => \Meu_Debounce|s_debounceCnt\(22),
	datac => \Meu_Debounce|s_dirtyIn~q\,
	datad => \Meu_Debounce|LessThan0~7_combout\,
	combout => \Meu_Debounce|s_debounceCnt[18]~6_combout\);

-- Location: LCCOMB_X108_Y41_N24
\Meu_Debounce|s_debounceCnt[20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt[20]~7_combout\ = (\Meu_Debounce|Add0~40_combout\ & (\Meu_Debounce|s_debounceCnt[18]~2_combout\ & \Meu_Debounce|s_debounceCnt[18]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|Add0~40_combout\,
	datac => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	datad => \Meu_Debounce|s_debounceCnt[18]~6_combout\,
	combout => \Meu_Debounce|s_debounceCnt[20]~7_combout\);

-- Location: FF_X108_Y41_N25
\Meu_Debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt[20]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X108_Y41_N20
\Meu_Debounce|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~42_combout\ = (\Meu_Debounce|s_debounceCnt\(21) & (\Meu_Debounce|Add0~41\ & VCC)) # (!\Meu_Debounce|s_debounceCnt\(21) & (!\Meu_Debounce|Add0~41\))
-- \Meu_Debounce|Add0~43\ = CARRY((!\Meu_Debounce|s_debounceCnt\(21) & !\Meu_Debounce|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \Meu_Debounce|Add0~41\,
	combout => \Meu_Debounce|Add0~42_combout\,
	cout => \Meu_Debounce|Add0~43\);

-- Location: LCCOMB_X108_Y41_N26
\Meu_Debounce|s_debounceCnt[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt[21]~8_combout\ = (\Meu_Debounce|Add0~42_combout\ & (\Meu_Debounce|s_debounceCnt[18]~2_combout\ & \Meu_Debounce|s_debounceCnt[18]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|Add0~42_combout\,
	datac => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	datad => \Meu_Debounce|s_debounceCnt[18]~6_combout\,
	combout => \Meu_Debounce|s_debounceCnt[21]~8_combout\);

-- Location: FF_X108_Y41_N27
\Meu_Debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt[21]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X107_Y41_N0
\Meu_Debounce|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|LessThan0~6_combout\ = (!\Meu_Debounce|s_debounceCnt\(21) & !\Meu_Debounce|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_Debounce|s_debounceCnt\(21),
	datad => \Meu_Debounce|s_debounceCnt\(20),
	combout => \Meu_Debounce|LessThan0~6_combout\);

-- Location: LCCOMB_X107_Y42_N18
\Meu_Debounce|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|LessThan0~3_combout\ = (\Meu_Debounce|s_debounceCnt\(13)) # ((\Meu_Debounce|s_debounceCnt\(12)) # ((\Meu_Debounce|s_debounceCnt\(10) & \Meu_Debounce|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(13),
	datab => \Meu_Debounce|s_debounceCnt\(12),
	datac => \Meu_Debounce|s_debounceCnt\(10),
	datad => \Meu_Debounce|s_debounceCnt\(11),
	combout => \Meu_Debounce|LessThan0~3_combout\);

-- Location: LCCOMB_X107_Y42_N4
\Meu_Debounce|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|LessThan0~4_combout\ = (!\Meu_Debounce|s_debounceCnt\(15) & (!\Meu_Debounce|s_debounceCnt\(17) & !\Meu_Debounce|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(15),
	datac => \Meu_Debounce|s_debounceCnt\(17),
	datad => \Meu_Debounce|s_debounceCnt\(16),
	combout => \Meu_Debounce|LessThan0~4_combout\);

-- Location: LCCOMB_X109_Y42_N20
\Meu_Debounce|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|LessThan0~0_combout\ = (\Meu_Debounce|s_debounceCnt\(8) & (\Meu_Debounce|s_debounceCnt\(11) & \Meu_Debounce|s_debounceCnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(8),
	datac => \Meu_Debounce|s_debounceCnt\(11),
	datad => \Meu_Debounce|s_debounceCnt\(9),
	combout => \Meu_Debounce|LessThan0~0_combout\);

-- Location: LCCOMB_X107_Y42_N10
\Meu_Debounce|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|LessThan0~1_combout\ = (\Meu_Debounce|s_debounceCnt\(6) & ((\Meu_Debounce|s_debounceCnt\(0)) # ((\Meu_Debounce|s_debounceCnt\(5)) # (!\Meu_Debounce|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(6),
	datab => \Meu_Debounce|s_debounceCnt\(0),
	datac => \Meu_Debounce|s_debounceCnt\(5),
	datad => \Meu_Debounce|s_pulsedOut~5_combout\,
	combout => \Meu_Debounce|LessThan0~1_combout\);

-- Location: LCCOMB_X107_Y42_N24
\Meu_Debounce|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|LessThan0~2_combout\ = (\Meu_Debounce|LessThan0~0_combout\ & ((\Meu_Debounce|s_debounceCnt\(7)) # (\Meu_Debounce|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_debounceCnt\(7),
	datac => \Meu_Debounce|LessThan0~0_combout\,
	datad => \Meu_Debounce|LessThan0~1_combout\,
	combout => \Meu_Debounce|LessThan0~2_combout\);

-- Location: LCCOMB_X107_Y42_N2
\Meu_Debounce|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|LessThan0~5_combout\ = ((\Meu_Debounce|s_debounceCnt\(14) & ((\Meu_Debounce|LessThan0~3_combout\) # (\Meu_Debounce|LessThan0~2_combout\)))) # (!\Meu_Debounce|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(14),
	datab => \Meu_Debounce|LessThan0~3_combout\,
	datac => \Meu_Debounce|LessThan0~4_combout\,
	datad => \Meu_Debounce|LessThan0~2_combout\,
	combout => \Meu_Debounce|LessThan0~5_combout\);

-- Location: LCCOMB_X107_Y42_N12
\Meu_Debounce|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|LessThan0~7_combout\ = ((\Meu_Debounce|s_debounceCnt\(19) & (\Meu_Debounce|s_debounceCnt\(18) & \Meu_Debounce|LessThan0~5_combout\))) # (!\Meu_Debounce|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(19),
	datab => \Meu_Debounce|LessThan0~6_combout\,
	datac => \Meu_Debounce|s_debounceCnt\(18),
	datad => \Meu_Debounce|LessThan0~5_combout\,
	combout => \Meu_Debounce|LessThan0~7_combout\);

-- Location: LCCOMB_X109_Y42_N10
\Meu_Debounce|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt[18]~17_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & ((!\Meu_Debounce|LessThan0~7_combout\) # (!\Meu_Debounce|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Debounce|s_dirtyIn~q\,
	datac => \Meu_Debounce|s_debounceCnt\(22),
	datad => \Meu_Debounce|LessThan0~7_combout\,
	combout => \Meu_Debounce|s_debounceCnt[18]~17_combout\);

-- Location: LCCOMB_X109_Y42_N8
\Meu_Debounce|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt[19]~19_combout\ = (\Meu_Debounce|s_debounceCnt[18]~17_combout\ & (\Meu_Debounce|s_debounceCnt[18]~2_combout\ & ((\Meu_Debounce|Add0~38_combout\) # (!\Meu_Debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt[18]~17_combout\,
	datab => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	datac => \Meu_Debounce|s_previousIn~q\,
	datad => \Meu_Debounce|Add0~38_combout\,
	combout => \Meu_Debounce|s_debounceCnt[19]~19_combout\);

-- Location: FF_X109_Y42_N9
\Meu_Debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X109_Y42_N14
\Meu_Debounce|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_pulsedOut~3_combout\ = (!\Meu_Debounce|s_debounceCnt\(11) & (!\Meu_Debounce|s_debounceCnt\(19) & (!\Meu_Debounce|s_debounceCnt\(18) & !\Meu_Debounce|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(11),
	datab => \Meu_Debounce|s_debounceCnt\(19),
	datac => \Meu_Debounce|s_debounceCnt\(18),
	datad => \Meu_Debounce|s_debounceCnt\(14),
	combout => \Meu_Debounce|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X109_Y42_N2
\Meu_Debounce|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_pulsedOut~1_combout\ = (!\Meu_Debounce|s_debounceCnt\(21) & (!\Meu_Debounce|s_debounceCnt\(13) & (!\Meu_Debounce|s_debounceCnt\(12) & !\Meu_Debounce|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(21),
	datab => \Meu_Debounce|s_debounceCnt\(13),
	datac => \Meu_Debounce|s_debounceCnt\(12),
	datad => \Meu_Debounce|s_debounceCnt\(20),
	combout => \Meu_Debounce|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X109_Y42_N0
\Meu_Debounce|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_pulsedOut~4_combout\ = (\Meu_Debounce|s_pulsedOut~0_combout\ & (\Meu_Debounce|s_pulsedOut~2_combout\ & (\Meu_Debounce|s_pulsedOut~3_combout\ & \Meu_Debounce|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_pulsedOut~0_combout\,
	datab => \Meu_Debounce|s_pulsedOut~2_combout\,
	datac => \Meu_Debounce|s_pulsedOut~3_combout\,
	datad => \Meu_Debounce|s_pulsedOut~1_combout\,
	combout => \Meu_Debounce|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X109_Y42_N24
\Meu_Debounce|s_debounceCnt[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt[18]~1_combout\ = (\Meu_Debounce|s_debounceCnt\(5)) # (((\Meu_Debounce|s_debounceCnt\(0)) # (!\Meu_Debounce|s_pulsedOut~4_combout\)) # (!\Meu_Debounce|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(5),
	datab => \Meu_Debounce|s_pulsedOut~5_combout\,
	datac => \Meu_Debounce|s_debounceCnt\(0),
	datad => \Meu_Debounce|s_pulsedOut~4_combout\,
	combout => \Meu_Debounce|s_debounceCnt[18]~1_combout\);

-- Location: LCCOMB_X108_Y41_N22
\Meu_Debounce|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|Add0~44_combout\ = \Meu_Debounce|Add0~43\ $ (\Meu_Debounce|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Meu_Debounce|s_debounceCnt\(22),
	cin => \Meu_Debounce|Add0~43\,
	combout => \Meu_Debounce|Add0~44_combout\);

-- Location: LCCOMB_X108_Y41_N30
\Meu_Debounce|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt[22]~25_combout\ = (\Meu_Debounce|Add0~44_combout\ & ((\Meu_Debounce|s_debounceCnt\(22) & ((!\Meu_Debounce|LessThan0~7_combout\))) # (!\Meu_Debounce|s_debounceCnt\(22) & (\Meu_Debounce|s_debounceCnt[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt[18]~1_combout\,
	datab => \Meu_Debounce|s_debounceCnt\(22),
	datac => \Meu_Debounce|Add0~44_combout\,
	datad => \Meu_Debounce|LessThan0~7_combout\,
	combout => \Meu_Debounce|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X107_Y42_N8
\Meu_Debounce|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt[22]~26_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & ((\Meu_Debounce|s_previousIn~q\ & ((\Meu_Debounce|s_debounceCnt[22]~25_combout\))) # (!\Meu_Debounce|s_previousIn~q\ & (!\Meu_Debounce|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|LessThan0~8_combout\,
	datad => \Meu_Debounce|s_debounceCnt[22]~25_combout\,
	combout => \Meu_Debounce|s_debounceCnt[22]~26_combout\);

-- Location: FF_X107_Y42_N9
\Meu_Debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X107_Y42_N30
\Meu_Debounce|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|LessThan0~8_combout\ = (\Meu_Debounce|s_debounceCnt\(22) & \Meu_Debounce|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_Debounce|s_debounceCnt\(22),
	datad => \Meu_Debounce|LessThan0~7_combout\,
	combout => \Meu_Debounce|LessThan0~8_combout\);

-- Location: LCCOMB_X107_Y42_N14
\Meu_Debounce|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_debounceCnt~24_combout\ = (\Meu_Debounce|s_dirtyIn~q\ & (\Meu_Debounce|s_previousIn~q\ & (!\Meu_Debounce|LessThan0~8_combout\ & \Meu_Debounce|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_dirtyIn~q\,
	datab => \Meu_Debounce|s_previousIn~q\,
	datac => \Meu_Debounce|LessThan0~8_combout\,
	datad => \Meu_Debounce|Add0~0_combout\,
	combout => \Meu_Debounce|s_debounceCnt~24_combout\);

-- Location: FF_X107_Y42_N15
\Meu_Debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_debounceCnt~24_combout\,
	ena => \Meu_Debounce|s_debounceCnt[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X109_Y42_N16
\Meu_Debounce|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_pulsedOut~6_combout\ = (\Meu_Debounce|s_debounceCnt\(0) & (!\Meu_Debounce|s_debounceCnt\(22) & (\Meu_Debounce|s_dirtyIn~q\ & \Meu_Debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_debounceCnt\(0),
	datab => \Meu_Debounce|s_debounceCnt\(22),
	datac => \Meu_Debounce|s_dirtyIn~q\,
	datad => \Meu_Debounce|s_previousIn~q\,
	combout => \Meu_Debounce|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X110_Y42_N16
\Meu_Debounce|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Debounce|s_pulsedOut~7_combout\ = (\Meu_Debounce|s_pulsedOut~6_combout\ & (!\Meu_Debounce|s_debounceCnt\(5) & (\Meu_Debounce|s_pulsedOut~4_combout\ & \Meu_Debounce|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Debounce|s_pulsedOut~6_combout\,
	datab => \Meu_Debounce|s_debounceCnt\(5),
	datac => \Meu_Debounce|s_pulsedOut~4_combout\,
	datad => \Meu_Debounce|s_pulsedOut~5_combout\,
	combout => \Meu_Debounce|s_pulsedOut~7_combout\);

-- Location: FF_X110_Y42_N17
\Meu_Debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Debounce|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Debounce|s_pulsedOut~q\);

-- Location: LCCOMB_X112_Y42_N24
\Meu_Register|i_Tadj~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Register|i_Tadj~feeder_combout\ = \Meu_Debounce|s_pulsedOut~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Meu_Debounce|s_pulsedOut~q\,
	combout => \Meu_Register|i_Tadj~feeder_combout\);

-- Location: FF_X112_Y42_N25
\Meu_Register|i_Tadj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Register|i_Tadj~feeder_combout\,
	ena => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Register|i_Tadj~q\);

-- Location: LCCOMB_X112_Y42_N8
\Meu_Register|counter[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Register|counter[2]~2_combout\ = (\Meu_Register|i_Tadj~q\ & ((\Meu_Register|counter\(2)) # ((\Meu_Register|counter\(0) & \Meu_Register|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|counter\(0),
	datab => \Meu_Register|i_Tadj~q\,
	datac => \Meu_Register|counter\(2),
	datad => \Meu_Register|counter\(1),
	combout => \Meu_Register|counter[2]~2_combout\);

-- Location: FF_X112_Y42_N9
\Meu_Register|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Register|counter[2]~2_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Register|counter\(2));

-- Location: LCCOMB_X112_Y42_N26
\Meu_Register|counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Register|counter[0]~1_combout\ = (\Meu_Register|i_Tadj~q\ & ((\Meu_Register|counter\(2) & ((\Meu_Register|counter\(0)) # (!\Meu_Register|counter\(1)))) # (!\Meu_Register|counter\(2) & ((!\Meu_Register|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|counter\(1),
	datab => \Meu_Register|counter\(2),
	datac => \Meu_Register|counter\(0),
	datad => \Meu_Register|i_Tadj~q\,
	combout => \Meu_Register|counter[0]~1_combout\);

-- Location: FF_X112_Y42_N27
\Meu_Register|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Register|counter[0]~1_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Register|counter\(0));

-- Location: LCCOMB_X112_Y42_N22
\Meu_Register|counter[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Register|counter[1]~3_combout\ = (\Meu_Register|i_Tadj~q\ & (\Meu_Register|counter\(1) $ (((\Meu_Register|counter\(0) & !\Meu_Register|counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|counter\(0),
	datab => \Meu_Register|counter\(2),
	datac => \Meu_Register|counter\(1),
	datad => \Meu_Register|i_Tadj~q\,
	combout => \Meu_Register|counter[1]~3_combout\);

-- Location: FF_X112_Y42_N23
\Meu_Register|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Register|counter[1]~3_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Register|counter\(1));

-- Location: LCCOMB_X112_Y42_N12
\Meu_FSM|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_FSM|Add2~0_combout\ = (\Meu_Register|counter\(0) & (\Meu_Register|i_Tadj~q\ & \Meu_Register|i_P1_P2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|counter\(0),
	datab => \Meu_Register|i_Tadj~q\,
	datad => \Meu_Register|i_P1_P2~q\,
	combout => \Meu_FSM|Add2~0_combout\);

-- Location: LCCOMB_X112_Y42_N6
\Meu_FSM|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_FSM|Add2~1_combout\ = (\Meu_Register|counter\(1) & (\Meu_Register|i_Tadj~q\ & (\Meu_Register|counter\(2) & \Meu_FSM|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|counter\(1),
	datab => \Meu_Register|i_Tadj~q\,
	datac => \Meu_Register|counter\(2),
	datad => \Meu_FSM|Add2~0_combout\,
	combout => \Meu_FSM|Add2~1_combout\);

-- Location: LCCOMB_X112_Y42_N14
\Meu_Register|counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Register|counter[0]~0_combout\ = (\Meu_Register|counter\(2) & \Meu_Register|i_Tadj~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_Register|counter\(2),
	datad => \Meu_Register|i_Tadj~q\,
	combout => \Meu_Register|counter[0]~0_combout\);

-- Location: LCCOMB_X112_Y42_N28
\Meu_FSM|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_FSM|Add2~2_combout\ = (\Meu_Register|counter\(0) & (\Meu_Register|i_Tadj~q\ & (\Meu_Register|counter\(1) & \Meu_Register|i_P1_P2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|counter\(0),
	datab => \Meu_Register|i_Tadj~q\,
	datac => \Meu_Register|counter\(1),
	datad => \Meu_Register|i_P1_P2~q\,
	combout => \Meu_FSM|Add2~2_combout\);

-- Location: LCCOMB_X112_Y42_N4
\Meu_Register|Extra_time[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Register|Extra_time[1]~0_combout\ = (\Meu_Register|counter\(1) & \Meu_Register|i_Tadj~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_Register|counter\(1),
	datad => \Meu_Register|i_Tadj~q\,
	combout => \Meu_Register|Extra_time[1]~0_combout\);

-- Location: LCCOMB_X112_Y42_N30
\Meu_Register|Extra_time[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Register|Extra_time[0]~1_combout\ = (!\Meu_Register|i_Tadj~q\) # (!\Meu_Register|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_Register|counter\(0),
	datad => \Meu_Register|i_Tadj~q\,
	combout => \Meu_Register|Extra_time[0]~1_combout\);

-- Location: LCCOMB_X113_Y42_N16
\Meu_Timer_FSM|Dec_New_Time[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Dec_New_Time[0]~6_combout\ = \Meu_Register|i_P1_P2~q\ $ (\Meu_Register|Extra_time[0]~1_combout\ $ (GND))
-- \Meu_Timer_FSM|Dec_New_Time[0]~7\ = CARRY(\Meu_Register|i_P1_P2~q\ $ (!\Meu_Register|Extra_time[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_P1_P2~q\,
	datab => \Meu_Register|Extra_time[0]~1_combout\,
	datad => VCC,
	combout => \Meu_Timer_FSM|Dec_New_Time[0]~6_combout\,
	cout => \Meu_Timer_FSM|Dec_New_Time[0]~7\);

-- Location: LCCOMB_X113_Y42_N18
\Meu_Timer_FSM|Dec_New_Time[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Dec_New_Time[1]~8_combout\ = (\Meu_Timer_FSM|Dec_New_Time[0]~7\ & ((\Meu_FSM|Add2~0_combout\ $ (\Meu_Register|Extra_time[1]~0_combout\)))) # (!\Meu_Timer_FSM|Dec_New_Time[0]~7\ & (\Meu_FSM|Add2~0_combout\ $ 
-- ((!\Meu_Register|Extra_time[1]~0_combout\))))
-- \Meu_Timer_FSM|Dec_New_Time[1]~9\ = CARRY((!\Meu_Timer_FSM|Dec_New_Time[0]~7\ & (\Meu_FSM|Add2~0_combout\ $ (!\Meu_Register|Extra_time[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_FSM|Add2~0_combout\,
	datab => \Meu_Register|Extra_time[1]~0_combout\,
	datad => VCC,
	cin => \Meu_Timer_FSM|Dec_New_Time[0]~7\,
	combout => \Meu_Timer_FSM|Dec_New_Time[1]~8_combout\,
	cout => \Meu_Timer_FSM|Dec_New_Time[1]~9\);

-- Location: LCCOMB_X113_Y42_N20
\Meu_Timer_FSM|Dec_New_Time[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Dec_New_Time[2]~10_combout\ = (\Meu_Timer_FSM|Dec_New_Time[1]~9\ & (\Meu_Register|counter[0]~0_combout\ $ (\Meu_FSM|Add2~2_combout\ $ (VCC)))) # (!\Meu_Timer_FSM|Dec_New_Time[1]~9\ & ((\Meu_Register|counter[0]~0_combout\ $ 
-- (\Meu_FSM|Add2~2_combout\)) # (GND)))
-- \Meu_Timer_FSM|Dec_New_Time[2]~11\ = CARRY((\Meu_Register|counter[0]~0_combout\ $ (\Meu_FSM|Add2~2_combout\)) # (!\Meu_Timer_FSM|Dec_New_Time[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|counter[0]~0_combout\,
	datab => \Meu_FSM|Add2~2_combout\,
	datad => VCC,
	cin => \Meu_Timer_FSM|Dec_New_Time[1]~9\,
	combout => \Meu_Timer_FSM|Dec_New_Time[2]~10_combout\,
	cout => \Meu_Timer_FSM|Dec_New_Time[2]~11\);

-- Location: LCCOMB_X113_Y42_N22
\Meu_Timer_FSM|Dec_New_Time[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Dec_New_Time[3]~12_combout\ = (\Meu_Timer_FSM|Dec_New_Time[2]~11\ & ((\Meu_Register|i_P1_P2~q\ $ (!\Meu_FSM|Add2~1_combout\)))) # (!\Meu_Timer_FSM|Dec_New_Time[2]~11\ & (\Meu_Register|i_P1_P2~q\ $ ((\Meu_FSM|Add2~1_combout\))))
-- \Meu_Timer_FSM|Dec_New_Time[3]~13\ = CARRY((!\Meu_Timer_FSM|Dec_New_Time[2]~11\ & (\Meu_Register|i_P1_P2~q\ $ (\Meu_FSM|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_P1_P2~q\,
	datab => \Meu_FSM|Add2~1_combout\,
	datad => VCC,
	cin => \Meu_Timer_FSM|Dec_New_Time[2]~11\,
	combout => \Meu_Timer_FSM|Dec_New_Time[3]~12_combout\,
	cout => \Meu_Timer_FSM|Dec_New_Time[3]~13\);

-- Location: LCCOMB_X113_Y42_N24
\Meu_Timer_FSM|Dec_New_Time[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Dec_New_Time[4]~14_combout\ = (\Meu_Register|i_P1_P2~q\ & (\Meu_Timer_FSM|Dec_New_Time[3]~13\ $ (GND))) # (!\Meu_Register|i_P1_P2~q\ & ((GND) # (!\Meu_Timer_FSM|Dec_New_Time[3]~13\)))
-- \Meu_Timer_FSM|Dec_New_Time[4]~15\ = CARRY((!\Meu_Timer_FSM|Dec_New_Time[3]~13\) # (!\Meu_Register|i_P1_P2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_P1_P2~q\,
	datad => VCC,
	cin => \Meu_Timer_FSM|Dec_New_Time[3]~13\,
	combout => \Meu_Timer_FSM|Dec_New_Time[4]~14_combout\,
	cout => \Meu_Timer_FSM|Dec_New_Time[4]~15\);

-- Location: LCCOMB_X113_Y42_N26
\Meu_Timer_FSM|Dec_New_Time[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Dec_New_Time[5]~16_combout\ = \Meu_Register|i_P1_P2~q\ $ (!\Meu_Timer_FSM|Dec_New_Time[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_P1_P2~q\,
	cin => \Meu_Timer_FSM|Dec_New_Time[4]~15\,
	combout => \Meu_Timer_FSM|Dec_New_Time[5]~16_combout\);

-- Location: FF_X113_Y42_N25
\Meu_Timer_FSM|Dec_New_Time[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Dec_New_Time[4]~14_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Dec_New_Time[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Dec_New_Time\(4));

-- Location: FF_X113_Y42_N23
\Meu_Timer_FSM|Dec_New_Time[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Dec_New_Time[3]~12_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Dec_New_Time[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Dec_New_Time\(3));

-- Location: FF_X113_Y42_N17
\Meu_Timer_FSM|Dec_New_Time[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Dec_New_Time[0]~6_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Dec_New_Time[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Dec_New_Time\(0));

-- Location: LCCOMB_X113_Y42_N12
\Meu_Timer_FSM|Dec_New_Time[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Dec_New_Time[4]~18_combout\ = (!\Meu_Timer_FSM|Dec_New_Time\(4) & (!\Meu_Timer_FSM|reset~q\ & (!\Meu_Timer_FSM|Dec_New_Time\(3) & !\Meu_Timer_FSM|Dec_New_Time\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(4),
	datab => \Meu_Timer_FSM|reset~q\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(3),
	datad => \Meu_Timer_FSM|Dec_New_Time\(0),
	combout => \Meu_Timer_FSM|Dec_New_Time[4]~18_combout\);

-- Location: FF_X113_Y42_N19
\Meu_Timer_FSM|Dec_New_Time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Dec_New_Time[1]~8_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Dec_New_Time[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Dec_New_Time\(1));

-- Location: FF_X113_Y42_N21
\Meu_Timer_FSM|Dec_New_Time[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Dec_New_Time[2]~10_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Dec_New_Time[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Dec_New_Time\(2));

-- Location: LCCOMB_X113_Y42_N28
\Meu_Display_Select2|segments[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[0]~7_combout\ = (!\Meu_Timer_FSM|Dec_New_Time\(1) & !\Meu_Timer_FSM|Dec_New_Time\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Timer_FSM|Dec_New_Time\(1),
	datad => \Meu_Timer_FSM|Dec_New_Time\(2),
	combout => \Meu_Display_Select2|segments[0]~7_combout\);

-- Location: LCCOMB_X113_Y42_N30
\Meu_Timer_FSM|Dec_New_Time[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Timer_FSM|Dec_New_Time[4]~19_combout\ = (((\Meu_Timer_FSM|Dec_New_Time\(5)) # (!\Meu_Display_Select2|segments[0]~7_combout\)) # (!\Meu_Register|i_Start_stop_out~q\)) # (!\Meu_Timer_FSM|Dec_New_Time[4]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time[4]~18_combout\,
	datab => \Meu_Register|i_Start_stop_out~q\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(5),
	datad => \Meu_Display_Select2|segments[0]~7_combout\,
	combout => \Meu_Timer_FSM|Dec_New_Time[4]~19_combout\);

-- Location: FF_X113_Y42_N27
\Meu_Timer_FSM|Dec_New_Time[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Meu_Timer_FSM|Dec_New_Time[5]~16_combout\,
	sclr => \Meu_Timer_FSM|reset~q\,
	ena => \Meu_Timer_FSM|Dec_New_Time[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Meu_Timer_FSM|Dec_New_Time\(5));

-- Location: LCCOMB_X113_Y42_N4
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Meu_Timer_FSM|Dec_New_Time\(3) $ (VCC)
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Meu_Timer_FSM|Dec_New_Time\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(3),
	datad => VCC,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X113_Y42_N6
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(4) & (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\Meu_Timer_FSM|Dec_New_Time\(4) & 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Meu_Timer_FSM|Dec_New_Time\(4) & !\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Meu_Timer_FSM|Dec_New_Time\(4),
	datad => VCC,
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X113_Y42_N8
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(5) & (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\Meu_Timer_FSM|Dec_New_Time\(5) & 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Meu_Timer_FSM|Dec_New_Time\(5) & !\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(5),
	datad => VCC,
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X113_Y42_N10
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X113_Y45_N10
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X113_Y45_N0
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Meu_Timer_FSM|Dec_New_Time\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Meu_Timer_FSM|Dec_New_Time\(5),
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X113_Y45_N30
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X113_Y45_N8
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(4) & \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_Timer_FSM|Dec_New_Time\(4),
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X113_Y45_N26
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X113_Y45_N28
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(3) & \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_Timer_FSM|Dec_New_Time\(3),
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X113_Y45_N12
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Meu_Timer_FSM|Dec_New_Time\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Meu_Timer_FSM|Dec_New_Time\(2),
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X113_Y45_N14
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Meu_Timer_FSM|Dec_New_Time\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Meu_Timer_FSM|Dec_New_Time\(2),
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X113_Y45_N16
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X113_Y45_N18
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\) 
-- # (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- !\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datad => VCC,
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X113_Y45_N20
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) 
-- # (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X113_Y45_N22
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\) 
-- # (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X113_Y45_N24
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X112_Y45_N26
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Meu_Timer_FSM|Dec_New_Time\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(1),
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\);

-- Location: LCCOMB_X112_Y45_N24
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\ = (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Meu_Timer_FSM|Dec_New_Time\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(1),
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\);

-- Location: LCCOMB_X112_Y45_N10
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\) # (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\)))
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\) # (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\,
	datad => VCC,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X113_Y45_N4
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Meu_Timer_FSM|Dec_New_Time\(5))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Meu_Timer_FSM|Dec_New_Time\(5),
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\);

-- Location: LCCOMB_X112_Y45_N2
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\ = (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\);

-- Location: LCCOMB_X113_Y45_N2
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Meu_Timer_FSM|Dec_New_Time\(4)))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(4),
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\);

-- Location: LCCOMB_X112_Y45_N0
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ = (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\);

-- Location: LCCOMB_X113_Y45_N6
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Meu_Timer_FSM|Dec_New_Time\(3)))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(3),
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X112_Y45_N8
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\ = (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\);

-- Location: LCCOMB_X112_Y45_N6
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Meu_Timer_FSM|Dec_New_Time\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(2),
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\);

-- Location: LCCOMB_X112_Y45_N4
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ = (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\);

-- Location: LCCOMB_X112_Y45_N12
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\) 
-- # (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\)))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ & 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\)))
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ & 
-- !\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datad => VCC,
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X112_Y45_N14
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) 
-- # (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\)))))
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datad => VCC,
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X112_Y45_N16
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ 
-- & !\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\,
	datad => VCC,
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X112_Y45_N18
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\) # ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\) 
-- # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\,
	datad => VCC,
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X112_Y45_N20
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X112_Y45_N28
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Meu_Timer_FSM|Dec_New_Time\(1)))) # 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(1),
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\);

-- Location: LCCOMB_X112_Y45_N22
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\);

-- Location: LCCOMB_X112_Y45_N30
\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\) # 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\)))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datad => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\,
	combout => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\);

-- Location: LCCOMB_X112_Y53_N20
\Meu_Display_Select|segments[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select|segments[0]~0_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Meu_Timer_FSM|Dec_New_Time\(0) & (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ $ 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\)))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ $ (\Meu_Timer_FSM|Dec_New_Time\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Meu_Timer_FSM|Dec_New_Time\(0),
	combout => \Meu_Display_Select|segments[0]~0_combout\);

-- Location: LCCOMB_X112_Y53_N26
\Meu_Display_Select|segments[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select|segments[1]~1_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & ((\Meu_Timer_FSM|Dec_New_Time\(0) & (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\)) # 
-- (!\Meu_Timer_FSM|Dec_New_Time\(0) & ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\))))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ $ (\Meu_Timer_FSM|Dec_New_Time\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Meu_Timer_FSM|Dec_New_Time\(0),
	combout => \Meu_Display_Select|segments[1]~1_combout\);

-- Location: LCCOMB_X112_Y53_N12
\Meu_Display_Select|segments[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select|segments[2]~2_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & 
-- ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\) # (!\Meu_Timer_FSM|Dec_New_Time\(0))))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & !\Meu_Timer_FSM|Dec_New_Time\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Meu_Timer_FSM|Dec_New_Time\(0),
	combout => \Meu_Display_Select|segments[2]~2_combout\);

-- Location: LCCOMB_X112_Y53_N6
\Meu_Display_Select|segments[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select|segments[3]~3_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & ((\Meu_Timer_FSM|Dec_New_Time\(0)))) # 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & !\Meu_Timer_FSM|Dec_New_Time\(0))))) # 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ $ 
-- (\Meu_Timer_FSM|Dec_New_Time\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Meu_Timer_FSM|Dec_New_Time\(0),
	combout => \Meu_Display_Select|segments[3]~3_combout\);

-- Location: LCCOMB_X112_Y53_N0
\Meu_Display_Select|segments[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select|segments[4]~4_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & ((\Meu_Timer_FSM|Dec_New_Time\(0))))) # 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & ((\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\)) # 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & ((\Meu_Timer_FSM|Dec_New_Time\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Meu_Timer_FSM|Dec_New_Time\(0),
	combout => \Meu_Display_Select|segments[4]~4_combout\);

-- Location: LCCOMB_X112_Y53_N10
\Meu_Display_Select|segments[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select|segments[5]~5_combout\ = (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & ((\Meu_Timer_FSM|Dec_New_Time\(0)) # 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\)))) # (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\Meu_Timer_FSM|Dec_New_Time\(0) & 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ $ (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Meu_Timer_FSM|Dec_New_Time\(0),
	combout => \Meu_Display_Select|segments[5]~5_combout\);

-- Location: LCCOMB_X112_Y53_N16
\Meu_Display_Select|segments[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select|segments[6]~6_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(0) & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ $ 
-- (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\)))) # (!\Meu_Timer_FSM|Dec_New_Time\(0) & (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & 
-- (\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ $ (!\Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datab => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datac => \Meu_DivideTimer|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Meu_Timer_FSM|Dec_New_Time\(0),
	combout => \Meu_Display_Select|segments[6]~6_combout\);

-- Location: LCCOMB_X114_Y41_N20
\Meu_Display_Select2|segments[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[0]~18_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(4) & (!\Meu_Timer_FSM|Dec_New_Time\(2) & ((!\Meu_Timer_FSM|Dec_New_Time\(1)) # (!\Meu_Timer_FSM|Dec_New_Time\(5))))) # (!\Meu_Timer_FSM|Dec_New_Time\(4) & 
-- ((\Meu_Timer_FSM|Dec_New_Time\(2)) # ((\Meu_Timer_FSM|Dec_New_Time\(5)) # (\Meu_Timer_FSM|Dec_New_Time\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(4),
	datab => \Meu_Timer_FSM|Dec_New_Time\(2),
	datac => \Meu_Timer_FSM|Dec_New_Time\(5),
	datad => \Meu_Timer_FSM|Dec_New_Time\(1),
	combout => \Meu_Display_Select2|segments[0]~18_combout\);

-- Location: LCCOMB_X114_Y41_N22
\Meu_Display_Select2|segments[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[0]~19_combout\ = (\Meu_Display_Select2|segments[0]~18_combout\ & ((\Meu_Timer_FSM|Dec_New_Time\(4) & (!\Meu_Timer_FSM|Dec_New_Time\(2) & !\Meu_Timer_FSM|Dec_New_Time\(3))) # (!\Meu_Timer_FSM|Dec_New_Time\(4) & 
-- ((\Meu_Timer_FSM|Dec_New_Time\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(4),
	datab => \Meu_Display_Select2|segments[0]~18_combout\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(2),
	datad => \Meu_Timer_FSM|Dec_New_Time\(3),
	combout => \Meu_Display_Select2|segments[0]~19_combout\);

-- Location: LCCOMB_X113_Y42_N2
\Meu_Display_Select2|segments[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[1]~8_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(5) & (\Meu_Timer_FSM|Dec_New_Time\(4) & ((\Meu_Timer_FSM|Dec_New_Time\(3)) # (!\Meu_Display_Select2|segments[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(3),
	datab => \Meu_Display_Select2|segments[0]~7_combout\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(5),
	datad => \Meu_Timer_FSM|Dec_New_Time\(4),
	combout => \Meu_Display_Select2|segments[1]~8_combout\);

-- Location: LCCOMB_X114_Y41_N18
\Meu_Display_Select2|segments[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[1]~9_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(4) & !\Meu_Timer_FSM|Dec_New_Time\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(4),
	datac => \Meu_Timer_FSM|Dec_New_Time\(5),
	combout => \Meu_Display_Select2|segments[1]~9_combout\);

-- Location: LCCOMB_X114_Y41_N24
\Meu_Display_Select2|segments[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[2]~10_combout\ = (\Meu_Display_Select2|segments[1]~9_combout\ & ((\Meu_Timer_FSM|Dec_New_Time\(3) & ((!\Meu_Timer_FSM|Dec_New_Time\(1)) # (!\Meu_Timer_FSM|Dec_New_Time\(2)))) # (!\Meu_Timer_FSM|Dec_New_Time\(3) & 
-- (\Meu_Timer_FSM|Dec_New_Time\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(3),
	datab => \Meu_Display_Select2|segments[1]~9_combout\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(2),
	datad => \Meu_Timer_FSM|Dec_New_Time\(1),
	combout => \Meu_Display_Select2|segments[2]~10_combout\);

-- Location: LCCOMB_X114_Y41_N10
\Meu_Display_Select2|segments[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[3]~11_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(4) & (((\Meu_Timer_FSM|Dec_New_Time\(5) & \Meu_Timer_FSM|Dec_New_Time\(1))))) # (!\Meu_Timer_FSM|Dec_New_Time\(4) & ((\Meu_Timer_FSM|Dec_New_Time\(2)) # 
-- ((\Meu_Timer_FSM|Dec_New_Time\(5)) # (\Meu_Timer_FSM|Dec_New_Time\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(4),
	datab => \Meu_Timer_FSM|Dec_New_Time\(2),
	datac => \Meu_Timer_FSM|Dec_New_Time\(5),
	datad => \Meu_Timer_FSM|Dec_New_Time\(1),
	combout => \Meu_Display_Select2|segments[3]~11_combout\);

-- Location: LCCOMB_X114_Y41_N14
\Meu_Display_Select2|segments[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[3]~17_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(3) & (((!\Meu_Timer_FSM|Dec_New_Time\(4) & \Meu_Display_Select2|segments[3]~11_combout\)))) # (!\Meu_Timer_FSM|Dec_New_Time\(3) & (!\Meu_Timer_FSM|Dec_New_Time\(2) & 
-- (\Meu_Timer_FSM|Dec_New_Time\(4) & !\Meu_Display_Select2|segments[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(3),
	datab => \Meu_Timer_FSM|Dec_New_Time\(2),
	datac => \Meu_Timer_FSM|Dec_New_Time\(4),
	datad => \Meu_Display_Select2|segments[3]~11_combout\,
	combout => \Meu_Display_Select2|segments[3]~17_combout\);

-- Location: LCCOMB_X114_Y41_N26
\Meu_Display_Select2|segments[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[4]~13_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(3) & ((\Meu_Timer_FSM|Dec_New_Time\(2) & ((\Meu_Timer_FSM|Dec_New_Time\(1)) # (!\Meu_Timer_FSM|Dec_New_Time\(4)))) # (!\Meu_Timer_FSM|Dec_New_Time\(2) & 
-- (!\Meu_Timer_FSM|Dec_New_Time\(4) & \Meu_Timer_FSM|Dec_New_Time\(1))))) # (!\Meu_Timer_FSM|Dec_New_Time\(3) & (!\Meu_Timer_FSM|Dec_New_Time\(2) & (\Meu_Timer_FSM|Dec_New_Time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(3),
	datab => \Meu_Timer_FSM|Dec_New_Time\(2),
	datac => \Meu_Timer_FSM|Dec_New_Time\(4),
	datad => \Meu_Timer_FSM|Dec_New_Time\(1),
	combout => \Meu_Display_Select2|segments[4]~13_combout\);

-- Location: LCCOMB_X114_Y41_N12
\Meu_Display_Select2|segments[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[4]~12_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(5) & (((!\Meu_Timer_FSM|Dec_New_Time\(3)) # (!\Meu_Timer_FSM|Dec_New_Time\(2))) # (!\Meu_Timer_FSM|Dec_New_Time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(4),
	datab => \Meu_Timer_FSM|Dec_New_Time\(2),
	datac => \Meu_Timer_FSM|Dec_New_Time\(5),
	datad => \Meu_Timer_FSM|Dec_New_Time\(3),
	combout => \Meu_Display_Select2|segments[4]~12_combout\);

-- Location: LCCOMB_X114_Y41_N4
\Meu_Display_Select2|segments[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[4]~14_combout\ = (\Meu_Display_Select2|segments[4]~12_combout\) # ((!\Meu_Timer_FSM|Dec_New_Time\(5) & \Meu_Display_Select2|segments[4]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(5),
	datac => \Meu_Display_Select2|segments[4]~13_combout\,
	datad => \Meu_Display_Select2|segments[4]~12_combout\,
	combout => \Meu_Display_Select2|segments[4]~14_combout\);

-- Location: LCCOMB_X114_Y41_N28
\Meu_Display_Select2|segments[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[0]~6_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(3) & ((\Meu_Timer_FSM|Dec_New_Time\(2)) # (\Meu_Timer_FSM|Dec_New_Time\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(3),
	datac => \Meu_Timer_FSM|Dec_New_Time\(2),
	datad => \Meu_Timer_FSM|Dec_New_Time\(1),
	combout => \Meu_Display_Select2|segments[0]~6_combout\);

-- Location: LCCOMB_X114_Y41_N6
\Meu_Display_Select2|segments[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[5]~15_combout\ = (\Meu_Timer_FSM|Dec_New_Time\(4) & (((!\Meu_Timer_FSM|Dec_New_Time\(5))))) # (!\Meu_Timer_FSM|Dec_New_Time\(4) & ((\Meu_Timer_FSM|Dec_New_Time\(5) & ((!\Meu_Timer_FSM|Dec_New_Time\(3)))) # 
-- (!\Meu_Timer_FSM|Dec_New_Time\(5) & (\Meu_Display_Select2|segments[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(4),
	datab => \Meu_Display_Select2|segments[0]~6_combout\,
	datac => \Meu_Timer_FSM|Dec_New_Time\(5),
	datad => \Meu_Timer_FSM|Dec_New_Time\(3),
	combout => \Meu_Display_Select2|segments[5]~15_combout\);

-- Location: LCCOMB_X114_Y41_N8
\Meu_Display_Select2|segments[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select2|segments[6]~16_combout\ = (!\Meu_Timer_FSM|Dec_New_Time\(5) & (((!\Meu_Timer_FSM|Dec_New_Time\(2) & !\Meu_Timer_FSM|Dec_New_Time\(3))) # (!\Meu_Timer_FSM|Dec_New_Time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Timer_FSM|Dec_New_Time\(4),
	datab => \Meu_Timer_FSM|Dec_New_Time\(2),
	datac => \Meu_Timer_FSM|Dec_New_Time\(5),
	datad => \Meu_Timer_FSM|Dec_New_Time\(3),
	combout => \Meu_Display_Select2|segments[6]~16_combout\);

-- Location: LCCOMB_X111_Y42_N28
\Meu_Display_Select3|segments[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select3|segments[0]~0_combout\ = (\Meu_Register|i_Tadj~q\ & (!\Meu_Register|counter\(1) & (\Meu_Register|counter\(0) $ (\Meu_Register|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_Tadj~q\,
	datab => \Meu_Register|counter\(0),
	datac => \Meu_Register|counter\(2),
	datad => \Meu_Register|counter\(1),
	combout => \Meu_Display_Select3|segments[0]~0_combout\);

-- Location: LCCOMB_X111_Y42_N30
\Meu_Display_Select3|segments[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select3|segments[1]~1_combout\ = (\Meu_Register|i_Tadj~q\ & (\Meu_Register|counter\(2) & (\Meu_Register|counter\(0) $ (\Meu_Register|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_Tadj~q\,
	datab => \Meu_Register|counter\(0),
	datac => \Meu_Register|counter\(2),
	datad => \Meu_Register|counter\(1),
	combout => \Meu_Display_Select3|segments[1]~1_combout\);

-- Location: LCCOMB_X111_Y42_N8
\Meu_Display_Select3|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select3|Equal14~0_combout\ = (\Meu_Register|i_Tadj~q\ & (!\Meu_Register|counter\(0) & (!\Meu_Register|counter\(2) & \Meu_Register|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_Tadj~q\,
	datab => \Meu_Register|counter\(0),
	datac => \Meu_Register|counter\(2),
	datad => \Meu_Register|counter\(1),
	combout => \Meu_Display_Select3|Equal14~0_combout\);

-- Location: LCCOMB_X111_Y42_N26
\Meu_Display_Select3|segments[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select3|segments[3]~2_combout\ = (\Meu_Register|i_Tadj~q\ & ((\Meu_Register|counter\(0) & (\Meu_Register|counter\(2) $ (!\Meu_Register|counter\(1)))) # (!\Meu_Register|counter\(0) & (\Meu_Register|counter\(2) & !\Meu_Register|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_Tadj~q\,
	datab => \Meu_Register|counter\(0),
	datac => \Meu_Register|counter\(2),
	datad => \Meu_Register|counter\(1),
	combout => \Meu_Display_Select3|segments[3]~2_combout\);

-- Location: LCCOMB_X111_Y42_N4
\Meu_Display_Select3|segments[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select3|segments[4]~3_combout\ = (\Meu_Register|i_Tadj~q\ & ((\Meu_Register|counter\(0)) # ((\Meu_Register|counter\(2) & !\Meu_Register|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_Tadj~q\,
	datab => \Meu_Register|counter\(0),
	datac => \Meu_Register|counter\(2),
	datad => \Meu_Register|counter\(1),
	combout => \Meu_Display_Select3|segments[4]~3_combout\);

-- Location: LCCOMB_X111_Y42_N2
\Meu_Display_Select3|segments[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select3|segments[5]~4_combout\ = (\Meu_Register|i_Tadj~q\ & ((\Meu_Register|counter\(0) & ((\Meu_Register|counter\(1)) # (!\Meu_Register|counter\(2)))) # (!\Meu_Register|counter\(0) & (!\Meu_Register|counter\(2) & 
-- \Meu_Register|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_Tadj~q\,
	datab => \Meu_Register|counter\(0),
	datac => \Meu_Register|counter\(2),
	datad => \Meu_Register|counter\(1),
	combout => \Meu_Display_Select3|segments[5]~4_combout\);

-- Location: LCCOMB_X111_Y42_N24
\Meu_Display_Select3|segments[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Meu_Display_Select3|segments[6]~5_combout\ = (\Meu_Register|i_Tadj~q\ & ((\Meu_Register|counter\(2) & ((!\Meu_Register|counter\(1)) # (!\Meu_Register|counter\(0)))) # (!\Meu_Register|counter\(2) & ((\Meu_Register|counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Meu_Register|i_Tadj~q\,
	datab => \Meu_Register|counter\(0),
	datac => \Meu_Register|counter\(2),
	datad => \Meu_Register|counter\(1),
	combout => \Meu_Display_Select3|segments[6]~5_combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;
END structure;


