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

-- DATE "05/23/2023 12:19:05"

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

ENTITY 	RAM_1P_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(12 DOWNTO 0)
	);
END RAM_1P_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_1P_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(12 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|s_divCounter[0]~27_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[25]~78\ : std_logic;
SIGNAL \inst2|s_divCounter[26]~79_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan1~4_combout\ : std_logic;
SIGNAL \inst2|LessThan1~2_combout\ : std_logic;
SIGNAL \inst2|LessThan1~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[0]~28\ : std_logic;
SIGNAL \inst2|s_divCounter[1]~29_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[1]~30\ : std_logic;
SIGNAL \inst2|s_divCounter[2]~31_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[2]~32\ : std_logic;
SIGNAL \inst2|s_divCounter[3]~33_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[3]~34\ : std_logic;
SIGNAL \inst2|s_divCounter[4]~35_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[4]~36\ : std_logic;
SIGNAL \inst2|s_divCounter[5]~37_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[5]~38\ : std_logic;
SIGNAL \inst2|s_divCounter[6]~39_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[6]~40\ : std_logic;
SIGNAL \inst2|s_divCounter[7]~41_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[7]~42\ : std_logic;
SIGNAL \inst2|s_divCounter[8]~43_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[8]~44\ : std_logic;
SIGNAL \inst2|s_divCounter[9]~45_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[9]~46\ : std_logic;
SIGNAL \inst2|s_divCounter[10]~47_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[10]~48\ : std_logic;
SIGNAL \inst2|s_divCounter[11]~49_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[11]~50\ : std_logic;
SIGNAL \inst2|s_divCounter[12]~51_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[12]~52\ : std_logic;
SIGNAL \inst2|s_divCounter[13]~53_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[13]~54\ : std_logic;
SIGNAL \inst2|s_divCounter[14]~55_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[14]~56\ : std_logic;
SIGNAL \inst2|s_divCounter[15]~57_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[15]~58\ : std_logic;
SIGNAL \inst2|s_divCounter[16]~59_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[16]~60\ : std_logic;
SIGNAL \inst2|s_divCounter[17]~61_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[17]~62\ : std_logic;
SIGNAL \inst2|s_divCounter[18]~63_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[18]~64\ : std_logic;
SIGNAL \inst2|s_divCounter[19]~65_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[19]~66\ : std_logic;
SIGNAL \inst2|s_divCounter[20]~67_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[20]~68\ : std_logic;
SIGNAL \inst2|s_divCounter[21]~69_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[21]~70\ : std_logic;
SIGNAL \inst2|s_divCounter[22]~71_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[22]~72\ : std_logic;
SIGNAL \inst2|s_divCounter[23]~73_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[23]~74\ : std_logic;
SIGNAL \inst2|s_divCounter[24]~75_combout\ : std_logic;
SIGNAL \inst2|s_divCounter[24]~76\ : std_logic;
SIGNAL \inst2|s_divCounter[25]~77_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|LessThan1~5_combout\ : std_logic;
SIGNAL \inst2|LessThan1~6_combout\ : std_logic;
SIGNAL \inst2|LessThan1~7_combout\ : std_logic;
SIGNAL \inst2|LessThan1~8_combout\ : std_logic;
SIGNAL \inst2|clkOut~q\ : std_logic;
SIGNAL \inst2|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|s_memory~226_combout\ : std_logic;
SIGNAL \inst|s_memory~68_q\ : std_logic;
SIGNAL \inst|s_memory~227_combout\ : std_logic;
SIGNAL \inst|s_memory~52_q\ : std_logic;
SIGNAL \inst|s_memory~143_combout\ : std_logic;
SIGNAL \inst|s_memory~228_combout\ : std_logic;
SIGNAL \inst|s_memory~76_q\ : std_logic;
SIGNAL \inst|s_memory~225_combout\ : std_logic;
SIGNAL \inst|s_memory~60_q\ : std_logic;
SIGNAL \inst|s_memory~144_combout\ : std_logic;
SIGNAL \inst|s_memory~231_combout\ : std_logic;
SIGNAL \inst|s_memory~20_q\ : std_logic;
SIGNAL \inst|s_memory~230_combout\ : std_logic;
SIGNAL \inst|s_memory~28_q\ : std_logic;
SIGNAL \inst|s_memory~145_combout\ : std_logic;
SIGNAL \inst|s_memory~229_combout\ : std_logic;
SIGNAL \inst|s_memory~36_q\ : std_logic;
SIGNAL \inst|s_memory~232_combout\ : std_logic;
SIGNAL \inst|s_memory~44_q\ : std_logic;
SIGNAL \inst|s_memory~146_combout\ : std_logic;
SIGNAL \inst|s_memory~147_combout\ : std_logic;
SIGNAL \inst|s_memory~235_combout\ : std_logic;
SIGNAL \inst|s_memory~116_q\ : std_logic;
SIGNAL \inst|s_memory~132feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~234_combout\ : std_logic;
SIGNAL \inst|s_memory~132_q\ : std_logic;
SIGNAL \inst|s_memory~148_combout\ : std_logic;
SIGNAL \inst|s_memory~236_combout\ : std_logic;
SIGNAL \inst|s_memory~140_q\ : std_logic;
SIGNAL \inst|s_memory~124feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~233_combout\ : std_logic;
SIGNAL \inst|s_memory~124_q\ : std_logic;
SIGNAL \inst|s_memory~149_combout\ : std_logic;
SIGNAL \inst|s_memory~100feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~221_combout\ : std_logic;
SIGNAL \inst|s_memory~100_q\ : std_logic;
SIGNAL \inst|s_memory~223_combout\ : std_logic;
SIGNAL \inst|s_memory~84_q\ : std_logic;
SIGNAL \inst|s_memory~92feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~222_combout\ : std_logic;
SIGNAL \inst|s_memory~92_q\ : std_logic;
SIGNAL \inst|s_memory~141_combout\ : std_logic;
SIGNAL \inst|s_memory~224_combout\ : std_logic;
SIGNAL \inst|s_memory~108_q\ : std_logic;
SIGNAL \inst|s_memory~142_combout\ : std_logic;
SIGNAL \inst|s_memory~150_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \inst|s_memory~59_q\ : std_logic;
SIGNAL \inst|s_memory~27_q\ : std_logic;
SIGNAL \inst|s_memory~153_combout\ : std_logic;
SIGNAL \inst|s_memory~91_q\ : std_logic;
SIGNAL \inst|s_memory~123_q\ : std_logic;
SIGNAL \inst|s_memory~154_combout\ : std_logic;
SIGNAL \inst|s_memory~51_q\ : std_logic;
SIGNAL \inst|s_memory~115_q\ : std_logic;
SIGNAL \inst|s_memory~83feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~83_q\ : std_logic;
SIGNAL \inst|s_memory~19_q\ : std_logic;
SIGNAL \inst|s_memory~155_combout\ : std_logic;
SIGNAL \inst|s_memory~156_combout\ : std_logic;
SIGNAL \inst|s_memory~157_combout\ : std_logic;
SIGNAL \inst|s_memory~107_q\ : std_logic;
SIGNAL \inst|s_memory~75feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~75_q\ : std_logic;
SIGNAL \inst|s_memory~43_q\ : std_logic;
SIGNAL \inst|s_memory~158_combout\ : std_logic;
SIGNAL \inst|s_memory~139_q\ : std_logic;
SIGNAL \inst|s_memory~159_combout\ : std_logic;
SIGNAL \inst|s_memory~35_q\ : std_logic;
SIGNAL \inst|s_memory~99_q\ : std_logic;
SIGNAL \inst|s_memory~151_combout\ : std_logic;
SIGNAL \inst|s_memory~67_q\ : std_logic;
SIGNAL \inst|s_memory~131_q\ : std_logic;
SIGNAL \inst|s_memory~152_combout\ : std_logic;
SIGNAL \inst|s_memory~160_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \inst|s_memory~130_q\ : std_logic;
SIGNAL \inst|s_memory~114_q\ : std_logic;
SIGNAL \inst|s_memory~122_q\ : std_logic;
SIGNAL \inst|s_memory~168_combout\ : std_logic;
SIGNAL \inst|s_memory~138_q\ : std_logic;
SIGNAL \inst|s_memory~169_combout\ : std_logic;
SIGNAL \inst|s_memory~82_q\ : std_logic;
SIGNAL \inst|s_memory~98_q\ : std_logic;
SIGNAL \inst|s_memory~163_combout\ : std_logic;
SIGNAL \inst|s_memory~90feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~90_q\ : std_logic;
SIGNAL \inst|s_memory~106_q\ : std_logic;
SIGNAL \inst|s_memory~164_combout\ : std_logic;
SIGNAL \inst|s_memory~26_q\ : std_logic;
SIGNAL \inst|s_memory~34feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~34_q\ : std_logic;
SIGNAL \inst|s_memory~18_q\ : std_logic;
SIGNAL \inst|s_memory~165_combout\ : std_logic;
SIGNAL \inst|s_memory~42_q\ : std_logic;
SIGNAL \inst|s_memory~166_combout\ : std_logic;
SIGNAL \inst|s_memory~167_combout\ : std_logic;
SIGNAL \inst|s_memory~66feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~66_q\ : std_logic;
SIGNAL \inst|s_memory~58_q\ : std_logic;
SIGNAL \inst|s_memory~50_q\ : std_logic;
SIGNAL \inst|s_memory~161_combout\ : std_logic;
SIGNAL \inst|s_memory~74_q\ : std_logic;
SIGNAL \inst|s_memory~162_combout\ : std_logic;
SIGNAL \inst|s_memory~170_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst|s_memory~89_q\ : std_logic;
SIGNAL \inst|s_memory~25_q\ : std_logic;
SIGNAL \inst|s_memory~171_combout\ : std_logic;
SIGNAL \inst|s_memory~121_q\ : std_logic;
SIGNAL \inst|s_memory~57feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~57_q\ : std_logic;
SIGNAL \inst|s_memory~172_combout\ : std_logic;
SIGNAL \inst|s_memory~73_q\ : std_logic;
SIGNAL \inst|s_memory~105_q\ : std_logic;
SIGNAL \inst|s_memory~41_q\ : std_logic;
SIGNAL \inst|s_memory~178_combout\ : std_logic;
SIGNAL \inst|s_memory~137_q\ : std_logic;
SIGNAL \inst|s_memory~179_combout\ : std_logic;
SIGNAL \inst|s_memory~97feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~97_q\ : std_logic;
SIGNAL \inst|s_memory~129_q\ : std_logic;
SIGNAL \inst|s_memory~65_q\ : std_logic;
SIGNAL \inst|s_memory~33_q\ : std_logic;
SIGNAL \inst|s_memory~173_combout\ : std_logic;
SIGNAL \inst|s_memory~174_combout\ : std_logic;
SIGNAL \inst|s_memory~49feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~49_q\ : std_logic;
SIGNAL \inst|s_memory~17_q\ : std_logic;
SIGNAL \inst|s_memory~175_combout\ : std_logic;
SIGNAL \inst|s_memory~81feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~81_q\ : std_logic;
SIGNAL \inst|s_memory~113_q\ : std_logic;
SIGNAL \inst|s_memory~176_combout\ : std_logic;
SIGNAL \inst|s_memory~177_combout\ : std_logic;
SIGNAL \inst|s_memory~180_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|s_memory~96feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~96_q\ : std_logic;
SIGNAL \inst|s_memory~80_q\ : std_logic;
SIGNAL \inst|s_memory~88feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~88_q\ : std_logic;
SIGNAL \inst|s_memory~181_combout\ : std_logic;
SIGNAL \inst|s_memory~104_q\ : std_logic;
SIGNAL \inst|s_memory~182_combout\ : std_logic;
SIGNAL \inst|s_memory~112_q\ : std_logic;
SIGNAL \inst|s_memory~128feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~128_q\ : std_logic;
SIGNAL \inst|s_memory~188_combout\ : std_logic;
SIGNAL \inst|s_memory~120feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~120_q\ : std_logic;
SIGNAL \inst|s_memory~136_q\ : std_logic;
SIGNAL \inst|s_memory~189_combout\ : std_logic;
SIGNAL \inst|s_memory~32feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~32_q\ : std_logic;
SIGNAL \inst|s_memory~24_q\ : std_logic;
SIGNAL \inst|s_memory~16_q\ : std_logic;
SIGNAL \inst|s_memory~185_combout\ : std_logic;
SIGNAL \inst|s_memory~40_q\ : std_logic;
SIGNAL \inst|s_memory~186_combout\ : std_logic;
SIGNAL \inst|s_memory~56_q\ : std_logic;
SIGNAL \inst|s_memory~64feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~64_q\ : std_logic;
SIGNAL \inst|s_memory~48_q\ : std_logic;
SIGNAL \inst|s_memory~183_combout\ : std_logic;
SIGNAL \inst|s_memory~72_q\ : std_logic;
SIGNAL \inst|s_memory~184_combout\ : std_logic;
SIGNAL \inst|s_memory~187_combout\ : std_logic;
SIGNAL \inst|s_memory~190_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst|s_memory~87_q\ : std_logic;
SIGNAL \inst|s_memory~119_q\ : std_logic;
SIGNAL \inst|s_memory~55feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~55_q\ : std_logic;
SIGNAL \inst|s_memory~23_q\ : std_logic;
SIGNAL \inst|s_memory~193_combout\ : std_logic;
SIGNAL \inst|s_memory~194_combout\ : std_logic;
SIGNAL \inst|s_memory~79_q\ : std_logic;
SIGNAL \inst|s_memory~15_q\ : std_logic;
SIGNAL \inst|s_memory~195_combout\ : std_logic;
SIGNAL \inst|s_memory~47feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~47_q\ : std_logic;
SIGNAL \inst|s_memory~111_q\ : std_logic;
SIGNAL \inst|s_memory~196_combout\ : std_logic;
SIGNAL \inst|s_memory~197_combout\ : std_logic;
SIGNAL \inst|s_memory~71feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~71_q\ : std_logic;
SIGNAL \inst|s_memory~39_q\ : std_logic;
SIGNAL \inst|s_memory~198_combout\ : std_logic;
SIGNAL \inst|s_memory~103_q\ : std_logic;
SIGNAL \inst|s_memory~135_q\ : std_logic;
SIGNAL \inst|s_memory~199_combout\ : std_logic;
SIGNAL \inst|s_memory~31_q\ : std_logic;
SIGNAL \inst|s_memory~95feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~95_q\ : std_logic;
SIGNAL \inst|s_memory~191_combout\ : std_logic;
SIGNAL \inst|s_memory~63_q\ : std_logic;
SIGNAL \inst|s_memory~127_q\ : std_logic;
SIGNAL \inst|s_memory~192_combout\ : std_logic;
SIGNAL \inst|s_memory~200_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|s_memory~126feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~126_q\ : std_logic;
SIGNAL \inst|s_memory~110_q\ : std_logic;
SIGNAL \inst|s_memory~118feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~118_q\ : std_logic;
SIGNAL \inst|s_memory~208_combout\ : std_logic;
SIGNAL \inst|s_memory~134_q\ : std_logic;
SIGNAL \inst|s_memory~209_combout\ : std_logic;
SIGNAL \inst|s_memory~86feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~86_q\ : std_logic;
SIGNAL \inst|s_memory~78_q\ : std_logic;
SIGNAL \inst|s_memory~94feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~94_q\ : std_logic;
SIGNAL \inst|s_memory~203_combout\ : std_logic;
SIGNAL \inst|s_memory~102_q\ : std_logic;
SIGNAL \inst|s_memory~204_combout\ : std_logic;
SIGNAL \inst|s_memory~22_q\ : std_logic;
SIGNAL \inst|s_memory~38_q\ : std_logic;
SIGNAL \inst|s_memory~30_q\ : std_logic;
SIGNAL \inst|s_memory~14_q\ : std_logic;
SIGNAL \inst|s_memory~205_combout\ : std_logic;
SIGNAL \inst|s_memory~206_combout\ : std_logic;
SIGNAL \inst|s_memory~207_combout\ : std_logic;
SIGNAL \inst|s_memory~62_q\ : std_logic;
SIGNAL \inst|s_memory~54feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~54_q\ : std_logic;
SIGNAL \inst|s_memory~46_q\ : std_logic;
SIGNAL \inst|s_memory~201_combout\ : std_logic;
SIGNAL \inst|s_memory~70_q\ : std_logic;
SIGNAL \inst|s_memory~202_combout\ : std_logic;
SIGNAL \inst|s_memory~210_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|s_memory~85feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~85_q\ : std_logic;
SIGNAL \inst|s_memory~21_q\ : std_logic;
SIGNAL \inst|s_memory~211_combout\ : std_logic;
SIGNAL \inst|s_memory~53_q\ : std_logic;
SIGNAL \inst|s_memory~117_q\ : std_logic;
SIGNAL \inst|s_memory~212_combout\ : std_logic;
SIGNAL \inst|s_memory~29_q\ : std_logic;
SIGNAL \inst|s_memory~61_q\ : std_logic;
SIGNAL \inst|s_memory~213_combout\ : std_logic;
SIGNAL \inst|s_memory~125_q\ : std_logic;
SIGNAL \inst|s_memory~93_q\ : std_logic;
SIGNAL \inst|s_memory~214_combout\ : std_logic;
SIGNAL \inst|s_memory~77_q\ : std_logic;
SIGNAL \inst|s_memory~45_q\ : std_logic;
SIGNAL \inst|s_memory~13_q\ : std_logic;
SIGNAL \inst|s_memory~215_combout\ : std_logic;
SIGNAL \inst|s_memory~109_q\ : std_logic;
SIGNAL \inst|s_memory~216_combout\ : std_logic;
SIGNAL \inst|s_memory~217_combout\ : std_logic;
SIGNAL \inst|s_memory~69_q\ : std_logic;
SIGNAL \inst|s_memory~101_q\ : std_logic;
SIGNAL \inst|s_memory~37_q\ : std_logic;
SIGNAL \inst|s_memory~218_combout\ : std_logic;
SIGNAL \inst|s_memory~133_q\ : std_logic;
SIGNAL \inst|s_memory~219_combout\ : std_logic;
SIGNAL \inst|s_memory~220_combout\ : std_logic;
SIGNAL \inst2|s_divCounter\ : std_logic_vector(26 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst2|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~150_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~160_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~170_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~180_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~190_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~200_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~210_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~220_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X2_Y35_N6
\inst2|s_divCounter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[0]~27_combout\ = \inst2|s_divCounter\(0) $ (VCC)
-- \inst2|s_divCounter[0]~28\ = CARRY(\inst2|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(0),
	datad => VCC,
	combout => \inst2|s_divCounter[0]~27_combout\,
	cout => \inst2|s_divCounter[0]~28\);

-- Location: LCCOMB_X2_Y34_N24
\inst2|s_divCounter[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[25]~77_combout\ = (\inst2|s_divCounter\(25) & (!\inst2|s_divCounter[24]~76\)) # (!\inst2|s_divCounter\(25) & ((\inst2|s_divCounter[24]~76\) # (GND)))
-- \inst2|s_divCounter[25]~78\ = CARRY((!\inst2|s_divCounter[24]~76\) # (!\inst2|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(25),
	datad => VCC,
	cin => \inst2|s_divCounter[24]~76\,
	combout => \inst2|s_divCounter[25]~77_combout\,
	cout => \inst2|s_divCounter[25]~78\);

-- Location: LCCOMB_X2_Y34_N26
\inst2|s_divCounter[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[26]~79_combout\ = \inst2|s_divCounter\(26) $ (!\inst2|s_divCounter[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(26),
	cin => \inst2|s_divCounter[25]~78\,
	combout => \inst2|s_divCounter[26]~79_combout\);

-- Location: FF_X2_Y34_N27
\inst2|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[26]~79_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(26));

-- Location: LCCOMB_X2_Y34_N28
\inst2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (\inst2|s_divCounter\(21) & (\inst2|s_divCounter\(22) & (\inst2|s_divCounter\(20) & \inst2|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(21),
	datab => \inst2|s_divCounter\(22),
	datac => \inst2|s_divCounter\(20),
	datad => \inst2|s_divCounter\(23),
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y34_N30
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (((!\inst2|s_divCounter\(18) & !\inst2|s_divCounter\(19))) # (!\inst2|LessThan1~0_combout\)) # (!\inst2|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(18),
	datab => \inst2|s_divCounter\(19),
	datac => \inst2|s_divCounter\(24),
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y35_N24
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (((!\inst2|s_divCounter\(15)) # (!\inst2|s_divCounter\(16))) # (!\inst2|s_divCounter\(13))) # (!\inst2|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(14),
	datab => \inst2|s_divCounter\(13),
	datac => \inst2|s_divCounter\(16),
	datad => \inst2|s_divCounter\(15),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y35_N4
\inst2|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~4_combout\ = (!\inst2|s_divCounter\(10) & (!\inst2|s_divCounter\(11) & (!\inst2|s_divCounter\(8) & !\inst2|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(10),
	datab => \inst2|s_divCounter\(11),
	datac => \inst2|s_divCounter\(8),
	datad => \inst2|s_divCounter\(9),
	combout => \inst2|LessThan1~4_combout\);

-- Location: LCCOMB_X2_Y35_N0
\inst2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~2_combout\ = (((!\inst2|s_divCounter\(2)) # (!\inst2|s_divCounter\(0))) # (!\inst2|s_divCounter\(1))) # (!\inst2|s_divCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(3),
	datab => \inst2|s_divCounter\(1),
	datac => \inst2|s_divCounter\(0),
	datad => \inst2|s_divCounter\(2),
	combout => \inst2|LessThan1~2_combout\);

-- Location: LCCOMB_X2_Y35_N2
\inst2|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~3_combout\ = (((\inst2|LessThan1~2_combout\) # (!\inst2|s_divCounter\(4))) # (!\inst2|s_divCounter\(6))) # (!\inst2|s_divCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(5),
	datab => \inst2|s_divCounter\(6),
	datac => \inst2|s_divCounter\(4),
	datad => \inst2|LessThan1~2_combout\,
	combout => \inst2|LessThan1~3_combout\);

-- Location: LCCOMB_X1_Y35_N16
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (!\inst2|s_divCounter\(12) & (\inst2|LessThan1~4_combout\ & ((\inst2|LessThan1~3_combout\) # (!\inst2|s_divCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(12),
	datab => \inst2|s_divCounter\(7),
	datac => \inst2|LessThan1~4_combout\,
	datad => \inst2|LessThan1~3_combout\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y35_N2
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (!\inst2|s_divCounter\(19) & (!\inst2|s_divCounter\(17) & ((\inst2|LessThan0~1_combout\) # (\inst2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(19),
	datab => \inst2|LessThan0~1_combout\,
	datac => \inst2|s_divCounter\(17),
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y35_N30
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (\inst2|s_divCounter\(26) & ((\inst2|s_divCounter\(25)) # ((!\inst2|LessThan0~0_combout\ & !\inst2|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(25),
	datab => \inst2|s_divCounter\(26),
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|LessThan0~3_combout\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: FF_X2_Y35_N7
\inst2|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[0]~27_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(0));

-- Location: LCCOMB_X2_Y35_N8
\inst2|s_divCounter[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[1]~29_combout\ = (\inst2|s_divCounter\(1) & (!\inst2|s_divCounter[0]~28\)) # (!\inst2|s_divCounter\(1) & ((\inst2|s_divCounter[0]~28\) # (GND)))
-- \inst2|s_divCounter[1]~30\ = CARRY((!\inst2|s_divCounter[0]~28\) # (!\inst2|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(1),
	datad => VCC,
	cin => \inst2|s_divCounter[0]~28\,
	combout => \inst2|s_divCounter[1]~29_combout\,
	cout => \inst2|s_divCounter[1]~30\);

-- Location: FF_X2_Y35_N9
\inst2|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[1]~29_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(1));

-- Location: LCCOMB_X2_Y35_N10
\inst2|s_divCounter[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[2]~31_combout\ = (\inst2|s_divCounter\(2) & (\inst2|s_divCounter[1]~30\ $ (GND))) # (!\inst2|s_divCounter\(2) & (!\inst2|s_divCounter[1]~30\ & VCC))
-- \inst2|s_divCounter[2]~32\ = CARRY((\inst2|s_divCounter\(2) & !\inst2|s_divCounter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(2),
	datad => VCC,
	cin => \inst2|s_divCounter[1]~30\,
	combout => \inst2|s_divCounter[2]~31_combout\,
	cout => \inst2|s_divCounter[2]~32\);

-- Location: FF_X2_Y35_N11
\inst2|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[2]~31_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(2));

-- Location: LCCOMB_X2_Y35_N12
\inst2|s_divCounter[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[3]~33_combout\ = (\inst2|s_divCounter\(3) & (!\inst2|s_divCounter[2]~32\)) # (!\inst2|s_divCounter\(3) & ((\inst2|s_divCounter[2]~32\) # (GND)))
-- \inst2|s_divCounter[3]~34\ = CARRY((!\inst2|s_divCounter[2]~32\) # (!\inst2|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(3),
	datad => VCC,
	cin => \inst2|s_divCounter[2]~32\,
	combout => \inst2|s_divCounter[3]~33_combout\,
	cout => \inst2|s_divCounter[3]~34\);

-- Location: FF_X2_Y35_N13
\inst2|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[3]~33_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(3));

-- Location: LCCOMB_X2_Y35_N14
\inst2|s_divCounter[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[4]~35_combout\ = (\inst2|s_divCounter\(4) & (\inst2|s_divCounter[3]~34\ $ (GND))) # (!\inst2|s_divCounter\(4) & (!\inst2|s_divCounter[3]~34\ & VCC))
-- \inst2|s_divCounter[4]~36\ = CARRY((\inst2|s_divCounter\(4) & !\inst2|s_divCounter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(4),
	datad => VCC,
	cin => \inst2|s_divCounter[3]~34\,
	combout => \inst2|s_divCounter[4]~35_combout\,
	cout => \inst2|s_divCounter[4]~36\);

-- Location: FF_X2_Y35_N15
\inst2|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[4]~35_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(4));

-- Location: LCCOMB_X2_Y35_N16
\inst2|s_divCounter[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[5]~37_combout\ = (\inst2|s_divCounter\(5) & (!\inst2|s_divCounter[4]~36\)) # (!\inst2|s_divCounter\(5) & ((\inst2|s_divCounter[4]~36\) # (GND)))
-- \inst2|s_divCounter[5]~38\ = CARRY((!\inst2|s_divCounter[4]~36\) # (!\inst2|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(5),
	datad => VCC,
	cin => \inst2|s_divCounter[4]~36\,
	combout => \inst2|s_divCounter[5]~37_combout\,
	cout => \inst2|s_divCounter[5]~38\);

-- Location: FF_X2_Y35_N17
\inst2|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[5]~37_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(5));

-- Location: LCCOMB_X2_Y35_N18
\inst2|s_divCounter[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[6]~39_combout\ = (\inst2|s_divCounter\(6) & (\inst2|s_divCounter[5]~38\ $ (GND))) # (!\inst2|s_divCounter\(6) & (!\inst2|s_divCounter[5]~38\ & VCC))
-- \inst2|s_divCounter[6]~40\ = CARRY((\inst2|s_divCounter\(6) & !\inst2|s_divCounter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(6),
	datad => VCC,
	cin => \inst2|s_divCounter[5]~38\,
	combout => \inst2|s_divCounter[6]~39_combout\,
	cout => \inst2|s_divCounter[6]~40\);

-- Location: FF_X2_Y35_N19
\inst2|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[6]~39_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(6));

-- Location: LCCOMB_X2_Y35_N20
\inst2|s_divCounter[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[7]~41_combout\ = (\inst2|s_divCounter\(7) & (!\inst2|s_divCounter[6]~40\)) # (!\inst2|s_divCounter\(7) & ((\inst2|s_divCounter[6]~40\) # (GND)))
-- \inst2|s_divCounter[7]~42\ = CARRY((!\inst2|s_divCounter[6]~40\) # (!\inst2|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(7),
	datad => VCC,
	cin => \inst2|s_divCounter[6]~40\,
	combout => \inst2|s_divCounter[7]~41_combout\,
	cout => \inst2|s_divCounter[7]~42\);

-- Location: FF_X2_Y35_N21
\inst2|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[7]~41_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(7));

-- Location: LCCOMB_X2_Y35_N22
\inst2|s_divCounter[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[8]~43_combout\ = (\inst2|s_divCounter\(8) & (\inst2|s_divCounter[7]~42\ $ (GND))) # (!\inst2|s_divCounter\(8) & (!\inst2|s_divCounter[7]~42\ & VCC))
-- \inst2|s_divCounter[8]~44\ = CARRY((\inst2|s_divCounter\(8) & !\inst2|s_divCounter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(8),
	datad => VCC,
	cin => \inst2|s_divCounter[7]~42\,
	combout => \inst2|s_divCounter[8]~43_combout\,
	cout => \inst2|s_divCounter[8]~44\);

-- Location: FF_X2_Y35_N23
\inst2|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[8]~43_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(8));

-- Location: LCCOMB_X2_Y35_N24
\inst2|s_divCounter[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[9]~45_combout\ = (\inst2|s_divCounter\(9) & (!\inst2|s_divCounter[8]~44\)) # (!\inst2|s_divCounter\(9) & ((\inst2|s_divCounter[8]~44\) # (GND)))
-- \inst2|s_divCounter[9]~46\ = CARRY((!\inst2|s_divCounter[8]~44\) # (!\inst2|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(9),
	datad => VCC,
	cin => \inst2|s_divCounter[8]~44\,
	combout => \inst2|s_divCounter[9]~45_combout\,
	cout => \inst2|s_divCounter[9]~46\);

-- Location: FF_X2_Y35_N25
\inst2|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[9]~45_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(9));

-- Location: LCCOMB_X2_Y35_N26
\inst2|s_divCounter[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[10]~47_combout\ = (\inst2|s_divCounter\(10) & (\inst2|s_divCounter[9]~46\ $ (GND))) # (!\inst2|s_divCounter\(10) & (!\inst2|s_divCounter[9]~46\ & VCC))
-- \inst2|s_divCounter[10]~48\ = CARRY((\inst2|s_divCounter\(10) & !\inst2|s_divCounter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(10),
	datad => VCC,
	cin => \inst2|s_divCounter[9]~46\,
	combout => \inst2|s_divCounter[10]~47_combout\,
	cout => \inst2|s_divCounter[10]~48\);

-- Location: FF_X2_Y35_N27
\inst2|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[10]~47_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(10));

-- Location: LCCOMB_X2_Y35_N28
\inst2|s_divCounter[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[11]~49_combout\ = (\inst2|s_divCounter\(11) & (!\inst2|s_divCounter[10]~48\)) # (!\inst2|s_divCounter\(11) & ((\inst2|s_divCounter[10]~48\) # (GND)))
-- \inst2|s_divCounter[11]~50\ = CARRY((!\inst2|s_divCounter[10]~48\) # (!\inst2|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(11),
	datad => VCC,
	cin => \inst2|s_divCounter[10]~48\,
	combout => \inst2|s_divCounter[11]~49_combout\,
	cout => \inst2|s_divCounter[11]~50\);

-- Location: FF_X2_Y35_N29
\inst2|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[11]~49_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(11));

-- Location: LCCOMB_X2_Y35_N30
\inst2|s_divCounter[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[12]~51_combout\ = (\inst2|s_divCounter\(12) & (\inst2|s_divCounter[11]~50\ $ (GND))) # (!\inst2|s_divCounter\(12) & (!\inst2|s_divCounter[11]~50\ & VCC))
-- \inst2|s_divCounter[12]~52\ = CARRY((\inst2|s_divCounter\(12) & !\inst2|s_divCounter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(12),
	datad => VCC,
	cin => \inst2|s_divCounter[11]~50\,
	combout => \inst2|s_divCounter[12]~51_combout\,
	cout => \inst2|s_divCounter[12]~52\);

-- Location: FF_X2_Y35_N31
\inst2|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[12]~51_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(12));

-- Location: LCCOMB_X2_Y34_N0
\inst2|s_divCounter[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[13]~53_combout\ = (\inst2|s_divCounter\(13) & (!\inst2|s_divCounter[12]~52\)) # (!\inst2|s_divCounter\(13) & ((\inst2|s_divCounter[12]~52\) # (GND)))
-- \inst2|s_divCounter[13]~54\ = CARRY((!\inst2|s_divCounter[12]~52\) # (!\inst2|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(13),
	datad => VCC,
	cin => \inst2|s_divCounter[12]~52\,
	combout => \inst2|s_divCounter[13]~53_combout\,
	cout => \inst2|s_divCounter[13]~54\);

-- Location: FF_X1_Y35_N21
\inst2|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_divCounter[13]~53_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(13));

-- Location: LCCOMB_X2_Y34_N2
\inst2|s_divCounter[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[14]~55_combout\ = (\inst2|s_divCounter\(14) & (\inst2|s_divCounter[13]~54\ $ (GND))) # (!\inst2|s_divCounter\(14) & (!\inst2|s_divCounter[13]~54\ & VCC))
-- \inst2|s_divCounter[14]~56\ = CARRY((\inst2|s_divCounter\(14) & !\inst2|s_divCounter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(14),
	datad => VCC,
	cin => \inst2|s_divCounter[13]~54\,
	combout => \inst2|s_divCounter[14]~55_combout\,
	cout => \inst2|s_divCounter[14]~56\);

-- Location: FF_X1_Y35_N27
\inst2|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_divCounter[14]~55_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(14));

-- Location: LCCOMB_X2_Y34_N4
\inst2|s_divCounter[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[15]~57_combout\ = (\inst2|s_divCounter\(15) & (!\inst2|s_divCounter[14]~56\)) # (!\inst2|s_divCounter\(15) & ((\inst2|s_divCounter[14]~56\) # (GND)))
-- \inst2|s_divCounter[15]~58\ = CARRY((!\inst2|s_divCounter[14]~56\) # (!\inst2|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(15),
	datad => VCC,
	cin => \inst2|s_divCounter[14]~56\,
	combout => \inst2|s_divCounter[15]~57_combout\,
	cout => \inst2|s_divCounter[15]~58\);

-- Location: FF_X1_Y35_N13
\inst2|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_divCounter[15]~57_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(15));

-- Location: LCCOMB_X2_Y34_N6
\inst2|s_divCounter[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[16]~59_combout\ = (\inst2|s_divCounter\(16) & (\inst2|s_divCounter[15]~58\ $ (GND))) # (!\inst2|s_divCounter\(16) & (!\inst2|s_divCounter[15]~58\ & VCC))
-- \inst2|s_divCounter[16]~60\ = CARRY((\inst2|s_divCounter\(16) & !\inst2|s_divCounter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(16),
	datad => VCC,
	cin => \inst2|s_divCounter[15]~58\,
	combout => \inst2|s_divCounter[16]~59_combout\,
	cout => \inst2|s_divCounter[16]~60\);

-- Location: FF_X1_Y35_N23
\inst2|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_divCounter[16]~59_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(16));

-- Location: LCCOMB_X2_Y34_N8
\inst2|s_divCounter[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[17]~61_combout\ = (\inst2|s_divCounter\(17) & (!\inst2|s_divCounter[16]~60\)) # (!\inst2|s_divCounter\(17) & ((\inst2|s_divCounter[16]~60\) # (GND)))
-- \inst2|s_divCounter[17]~62\ = CARRY((!\inst2|s_divCounter[16]~60\) # (!\inst2|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(17),
	datad => VCC,
	cin => \inst2|s_divCounter[16]~60\,
	combout => \inst2|s_divCounter[17]~61_combout\,
	cout => \inst2|s_divCounter[17]~62\);

-- Location: FF_X2_Y34_N9
\inst2|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[17]~61_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(17));

-- Location: LCCOMB_X2_Y34_N10
\inst2|s_divCounter[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[18]~63_combout\ = (\inst2|s_divCounter\(18) & (\inst2|s_divCounter[17]~62\ $ (GND))) # (!\inst2|s_divCounter\(18) & (!\inst2|s_divCounter[17]~62\ & VCC))
-- \inst2|s_divCounter[18]~64\ = CARRY((\inst2|s_divCounter\(18) & !\inst2|s_divCounter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(18),
	datad => VCC,
	cin => \inst2|s_divCounter[17]~62\,
	combout => \inst2|s_divCounter[18]~63_combout\,
	cout => \inst2|s_divCounter[18]~64\);

-- Location: FF_X2_Y34_N11
\inst2|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[18]~63_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(18));

-- Location: LCCOMB_X2_Y34_N12
\inst2|s_divCounter[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[19]~65_combout\ = (\inst2|s_divCounter\(19) & (!\inst2|s_divCounter[18]~64\)) # (!\inst2|s_divCounter\(19) & ((\inst2|s_divCounter[18]~64\) # (GND)))
-- \inst2|s_divCounter[19]~66\ = CARRY((!\inst2|s_divCounter[18]~64\) # (!\inst2|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(19),
	datad => VCC,
	cin => \inst2|s_divCounter[18]~64\,
	combout => \inst2|s_divCounter[19]~65_combout\,
	cout => \inst2|s_divCounter[19]~66\);

-- Location: FF_X2_Y34_N13
\inst2|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[19]~65_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(19));

-- Location: LCCOMB_X2_Y34_N14
\inst2|s_divCounter[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[20]~67_combout\ = (\inst2|s_divCounter\(20) & (\inst2|s_divCounter[19]~66\ $ (GND))) # (!\inst2|s_divCounter\(20) & (!\inst2|s_divCounter[19]~66\ & VCC))
-- \inst2|s_divCounter[20]~68\ = CARRY((\inst2|s_divCounter\(20) & !\inst2|s_divCounter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(20),
	datad => VCC,
	cin => \inst2|s_divCounter[19]~66\,
	combout => \inst2|s_divCounter[20]~67_combout\,
	cout => \inst2|s_divCounter[20]~68\);

-- Location: FF_X2_Y34_N15
\inst2|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[20]~67_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(20));

-- Location: LCCOMB_X2_Y34_N16
\inst2|s_divCounter[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[21]~69_combout\ = (\inst2|s_divCounter\(21) & (!\inst2|s_divCounter[20]~68\)) # (!\inst2|s_divCounter\(21) & ((\inst2|s_divCounter[20]~68\) # (GND)))
-- \inst2|s_divCounter[21]~70\ = CARRY((!\inst2|s_divCounter[20]~68\) # (!\inst2|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(21),
	datad => VCC,
	cin => \inst2|s_divCounter[20]~68\,
	combout => \inst2|s_divCounter[21]~69_combout\,
	cout => \inst2|s_divCounter[21]~70\);

-- Location: FF_X2_Y34_N17
\inst2|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[21]~69_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(21));

-- Location: LCCOMB_X2_Y34_N18
\inst2|s_divCounter[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[22]~71_combout\ = (\inst2|s_divCounter\(22) & (\inst2|s_divCounter[21]~70\ $ (GND))) # (!\inst2|s_divCounter\(22) & (!\inst2|s_divCounter[21]~70\ & VCC))
-- \inst2|s_divCounter[22]~72\ = CARRY((\inst2|s_divCounter\(22) & !\inst2|s_divCounter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(22),
	datad => VCC,
	cin => \inst2|s_divCounter[21]~70\,
	combout => \inst2|s_divCounter[22]~71_combout\,
	cout => \inst2|s_divCounter[22]~72\);

-- Location: FF_X2_Y34_N19
\inst2|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[22]~71_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(22));

-- Location: LCCOMB_X2_Y34_N20
\inst2|s_divCounter[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[23]~73_combout\ = (\inst2|s_divCounter\(23) & (!\inst2|s_divCounter[22]~72\)) # (!\inst2|s_divCounter\(23) & ((\inst2|s_divCounter[22]~72\) # (GND)))
-- \inst2|s_divCounter[23]~74\ = CARRY((!\inst2|s_divCounter[22]~72\) # (!\inst2|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(23),
	datad => VCC,
	cin => \inst2|s_divCounter[22]~72\,
	combout => \inst2|s_divCounter[23]~73_combout\,
	cout => \inst2|s_divCounter[23]~74\);

-- Location: FF_X2_Y34_N21
\inst2|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[23]~73_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(23));

-- Location: LCCOMB_X2_Y34_N22
\inst2|s_divCounter[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter[24]~75_combout\ = (\inst2|s_divCounter\(24) & (\inst2|s_divCounter[23]~74\ $ (GND))) # (!\inst2|s_divCounter\(24) & (!\inst2|s_divCounter[23]~74\ & VCC))
-- \inst2|s_divCounter[24]~76\ = CARRY((\inst2|s_divCounter\(24) & !\inst2|s_divCounter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(24),
	datad => VCC,
	cin => \inst2|s_divCounter[23]~74\,
	combout => \inst2|s_divCounter[24]~75_combout\,
	cout => \inst2|s_divCounter[24]~76\);

-- Location: FF_X2_Y34_N23
\inst2|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[24]~75_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(24));

-- Location: FF_X2_Y34_N25
\inst2|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter[25]~77_combout\,
	sclr => \inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(25));

-- Location: LCCOMB_X1_Y35_N28
\inst2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_combout\ = (((!\inst2|s_divCounter\(15)) # (!\inst2|s_divCounter\(12))) # (!\inst2|s_divCounter\(13))) # (!\inst2|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(14),
	datab => \inst2|s_divCounter\(13),
	datac => \inst2|s_divCounter\(12),
	datad => \inst2|s_divCounter\(15),
	combout => \inst2|LessThan1~1_combout\);

-- Location: LCCOMB_X1_Y35_N6
\inst2|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~5_combout\ = (\inst2|LessThan1~1_combout\) # ((\inst2|LessThan1~4_combout\ & (!\inst2|s_divCounter\(7) & \inst2|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan1~4_combout\,
	datab => \inst2|LessThan1~1_combout\,
	datac => \inst2|s_divCounter\(7),
	datad => \inst2|LessThan1~3_combout\,
	combout => \inst2|LessThan1~5_combout\);

-- Location: LCCOMB_X1_Y35_N10
\inst2|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~6_combout\ = (\inst2|s_divCounter\(17) & ((\inst2|s_divCounter\(16)) # (!\inst2|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(16),
	datac => \inst2|s_divCounter\(17),
	datad => \inst2|LessThan1~5_combout\,
	combout => \inst2|LessThan1~6_combout\);

-- Location: LCCOMB_X1_Y35_N18
\inst2|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~7_combout\ = (\inst2|s_divCounter\(19) & (\inst2|LessThan1~0_combout\ & ((\inst2|s_divCounter\(18)) # (\inst2|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(19),
	datab => \inst2|LessThan1~0_combout\,
	datac => \inst2|s_divCounter\(18),
	datad => \inst2|LessThan1~6_combout\,
	combout => \inst2|LessThan1~7_combout\);

-- Location: LCCOMB_X1_Y35_N0
\inst2|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~8_combout\ = (\inst2|s_divCounter\(26)) # ((\inst2|s_divCounter\(25) & ((\inst2|s_divCounter\(24)) # (\inst2|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(25),
	datab => \inst2|s_divCounter\(24),
	datac => \inst2|s_divCounter\(26),
	datad => \inst2|LessThan1~7_combout\,
	combout => \inst2|LessThan1~8_combout\);

-- Location: FF_X1_Y35_N1
\inst2|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkOut~q\);

-- Location: CLKCTRL_G3
\inst2|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

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

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X109_Y13_N12
\inst|s_memory~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~226_combout\ = (\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~226_combout\);

-- Location: FF_X109_Y13_N29
\inst|s_memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~68_q\);

-- Location: LCCOMB_X109_Y13_N26
\inst|s_memory~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~227_combout\ = (\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~227_combout\);

-- Location: FF_X109_Y13_N31
\inst|s_memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~52_q\);

-- Location: LCCOMB_X109_Y13_N30
\inst|s_memory~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~143_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\inst|s_memory~68_q\)) # (!\SW[1]~input_o\ & ((\inst|s_memory~52_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~68_q\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_memory~52_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~143_combout\);

-- Location: LCCOMB_X109_Y12_N24
\inst|s_memory~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~228_combout\ = (!\SW[3]~input_o\ & (\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~228_combout\);

-- Location: FF_X109_Y12_N13
\inst|s_memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~76_q\);

-- Location: LCCOMB_X113_Y11_N8
\inst|s_memory~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~225_combout\ = (\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~225_combout\);

-- Location: FF_X112_Y11_N21
\inst|s_memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~60_q\);

-- Location: LCCOMB_X109_Y12_N12
\inst|s_memory~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~144_combout\ = (\inst|s_memory~143_combout\ & (((\inst|s_memory~76_q\)) # (!\SW[0]~input_o\))) # (!\inst|s_memory~143_combout\ & (\SW[0]~input_o\ & ((\inst|s_memory~60_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~143_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_memory~76_q\,
	datad => \inst|s_memory~60_q\,
	combout => \inst|s_memory~144_combout\);

-- Location: LCCOMB_X109_Y11_N30
\inst|s_memory~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~231_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~231_combout\);

-- Location: FF_X111_Y11_N31
\inst|s_memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~20_q\);

-- Location: LCCOMB_X110_Y11_N22
\inst|s_memory~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~230_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[0]~input_o\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~230_combout\);

-- Location: FF_X111_Y11_N21
\inst|s_memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~28_q\);

-- Location: LCCOMB_X111_Y11_N30
\inst|s_memory~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~145_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\inst|s_memory~28_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\inst|s_memory~20_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~20_q\,
	datad => \inst|s_memory~28_q\,
	combout => \inst|s_memory~145_combout\);

-- Location: LCCOMB_X111_Y13_N8
\inst|s_memory~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~229_combout\ = (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~229_combout\);

-- Location: FF_X111_Y13_N21
\inst|s_memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~36_q\);

-- Location: LCCOMB_X110_Y12_N28
\inst|s_memory~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~232_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~232_combout\);

-- Location: FF_X110_Y12_N19
\inst|s_memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~44_q\);

-- Location: LCCOMB_X110_Y12_N18
\inst|s_memory~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~146_combout\ = (\inst|s_memory~145_combout\ & (((\inst|s_memory~44_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~145_combout\ & (\inst|s_memory~36_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~145_combout\,
	datab => \inst|s_memory~36_q\,
	datac => \inst|s_memory~44_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~146_combout\);

-- Location: LCCOMB_X109_Y12_N26
\inst|s_memory~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~147_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~144_combout\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~146_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~144_combout\,
	datab => \inst|s_memory~146_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~147_combout\);

-- Location: LCCOMB_X109_Y11_N6
\inst|s_memory~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~235_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~235_combout\);

-- Location: FF_X109_Y11_N19
\inst|s_memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~116_q\);

-- Location: LCCOMB_X110_Y13_N22
\inst|s_memory~132feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~132feeder_combout\ = \SW[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[12]~input_o\,
	combout => \inst|s_memory~132feeder_combout\);

-- Location: LCCOMB_X109_Y13_N4
\inst|s_memory~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~234_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~234_combout\);

-- Location: FF_X110_Y13_N23
\inst|s_memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~132feeder_combout\,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~132_q\);

-- Location: LCCOMB_X109_Y11_N18
\inst|s_memory~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~148_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\inst|s_memory~132_q\))) # (!\SW[1]~input_o\ & (\inst|s_memory~116_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~116_q\,
	datad => \inst|s_memory~132_q\,
	combout => \inst|s_memory~148_combout\);

-- Location: LCCOMB_X109_Y12_N18
\inst|s_memory~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~236_combout\ = (\SW[3]~input_o\ & (\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~236_combout\);

-- Location: FF_X109_Y12_N17
\inst|s_memory~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~140_q\);

-- Location: LCCOMB_X109_Y11_N4
\inst|s_memory~124feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~124feeder_combout\ = \SW[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[12]~input_o\,
	combout => \inst|s_memory~124feeder_combout\);

-- Location: LCCOMB_X109_Y11_N24
\inst|s_memory~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~233_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~233_combout\);

-- Location: FF_X109_Y11_N5
\inst|s_memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~124feeder_combout\,
	ena => \inst|s_memory~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~124_q\);

-- Location: LCCOMB_X109_Y12_N16
\inst|s_memory~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~149_combout\ = (\inst|s_memory~148_combout\ & (((\inst|s_memory~140_q\)) # (!\SW[0]~input_o\))) # (!\inst|s_memory~148_combout\ & (\SW[0]~input_o\ & ((\inst|s_memory~124_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~148_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_memory~140_q\,
	datad => \inst|s_memory~124_q\,
	combout => \inst|s_memory~149_combout\);

-- Location: LCCOMB_X110_Y13_N8
\inst|s_memory~100feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~100feeder_combout\ = \SW[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[12]~input_o\,
	combout => \inst|s_memory~100feeder_combout\);

-- Location: LCCOMB_X109_Y13_N6
\inst|s_memory~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~221_combout\ = (!\SW[2]~input_o\ & (\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~221_combout\);

-- Location: FF_X110_Y13_N9
\inst|s_memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~100feeder_combout\,
	ena => \inst|s_memory~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~100_q\);

-- Location: LCCOMB_X109_Y11_N16
\inst|s_memory~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~223_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~223_combout\);

-- Location: FF_X110_Y11_N9
\inst|s_memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~84_q\);

-- Location: LCCOMB_X113_Y11_N28
\inst|s_memory~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~92feeder_combout\ = \SW[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[12]~input_o\,
	combout => \inst|s_memory~92feeder_combout\);

-- Location: LCCOMB_X113_Y11_N6
\inst|s_memory~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~222_combout\ = (!\SW[2]~input_o\ & (\SW[3]~input_o\ & (!\SW[1]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~222_combout\);

-- Location: FF_X113_Y11_N29
\inst|s_memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~92feeder_combout\,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~92_q\);

-- Location: LCCOMB_X110_Y11_N8
\inst|s_memory~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~141_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\inst|s_memory~92_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\inst|s_memory~84_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~84_q\,
	datad => \inst|s_memory~92_q\,
	combout => \inst|s_memory~141_combout\);

-- Location: LCCOMB_X110_Y12_N2
\inst|s_memory~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~224_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\ & (\SW[3]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~224_combout\);

-- Location: FF_X110_Y12_N25
\inst|s_memory~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~108_q\);

-- Location: LCCOMB_X110_Y12_N24
\inst|s_memory~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~142_combout\ = (\inst|s_memory~141_combout\ & (((\inst|s_memory~108_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~141_combout\ & (\inst|s_memory~100_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~100_q\,
	datab => \inst|s_memory~141_combout\,
	datac => \inst|s_memory~108_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~142_combout\);

-- Location: LCCOMB_X109_Y12_N6
\inst|s_memory~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~150_combout\ = (\inst|s_memory~147_combout\ & ((\inst|s_memory~149_combout\) # ((!\SW[3]~input_o\)))) # (!\inst|s_memory~147_combout\ & (((\SW[3]~input_o\ & \inst|s_memory~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~147_combout\,
	datab => \inst|s_memory~149_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|s_memory~142_combout\,
	combout => \inst|s_memory~150_combout\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: FF_X112_Y11_N23
\inst|s_memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~59_q\);

-- Location: FF_X111_Y11_N25
\inst|s_memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~27_q\);

-- Location: LCCOMB_X111_Y11_N24
\inst|s_memory~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~153_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~59_q\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~27_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~59_q\,
	datac => \inst|s_memory~27_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~153_combout\);

-- Location: FF_X113_Y11_N19
\inst|s_memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~91_q\);

-- Location: FF_X113_Y11_N21
\inst|s_memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~123_q\);

-- Location: LCCOMB_X113_Y11_N20
\inst|s_memory~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~154_combout\ = (\inst|s_memory~153_combout\ & (((\inst|s_memory~123_q\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~153_combout\ & (\inst|s_memory~91_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~153_combout\,
	datab => \inst|s_memory~91_q\,
	datac => \inst|s_memory~123_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~154_combout\);

-- Location: FF_X112_Y11_N25
\inst|s_memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~51_q\);

-- Location: FF_X110_Y11_N1
\inst|s_memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~115_q\);

-- Location: LCCOMB_X110_Y11_N30
\inst|s_memory~83feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~83feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~83feeder_combout\);

-- Location: FF_X110_Y11_N31
\inst|s_memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~83feeder_combout\,
	ena => \inst|s_memory~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~83_q\);

-- Location: FF_X111_Y11_N27
\inst|s_memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~19_q\);

-- Location: LCCOMB_X111_Y11_N26
\inst|s_memory~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~155_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~83_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~19_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~83_q\,
	datac => \inst|s_memory~19_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~155_combout\);

-- Location: LCCOMB_X110_Y11_N0
\inst|s_memory~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~156_combout\ = (\SW[2]~input_o\ & ((\inst|s_memory~155_combout\ & ((\inst|s_memory~115_q\))) # (!\inst|s_memory~155_combout\ & (\inst|s_memory~51_q\)))) # (!\SW[2]~input_o\ & (((\inst|s_memory~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|s_memory~51_q\,
	datac => \inst|s_memory~115_q\,
	datad => \inst|s_memory~155_combout\,
	combout => \inst|s_memory~156_combout\);

-- Location: LCCOMB_X110_Y11_N6
\inst|s_memory~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~157_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\inst|s_memory~154_combout\)) # (!\SW[0]~input_o\ & ((\inst|s_memory~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~154_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \inst|s_memory~156_combout\,
	combout => \inst|s_memory~157_combout\);

-- Location: FF_X112_Y12_N9
\inst|s_memory~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~107_q\);

-- Location: LCCOMB_X111_Y12_N12
\inst|s_memory~75feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~75feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~75feeder_combout\);

-- Location: FF_X111_Y12_N13
\inst|s_memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~75feeder_combout\,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~75_q\);

-- Location: FF_X112_Y12_N27
\inst|s_memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~43_q\);

-- Location: LCCOMB_X112_Y12_N26
\inst|s_memory~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~158_combout\ = (\SW[2]~input_o\ & ((\inst|s_memory~75_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\inst|s_memory~43_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~75_q\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~43_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~158_combout\);

-- Location: FF_X111_Y12_N27
\inst|s_memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~139_q\);

-- Location: LCCOMB_X111_Y12_N26
\inst|s_memory~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~159_combout\ = (\inst|s_memory~158_combout\ & (((\inst|s_memory~139_q\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~158_combout\ & (\inst|s_memory~107_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~107_q\,
	datab => \inst|s_memory~158_combout\,
	datac => \inst|s_memory~139_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~159_combout\);

-- Location: FF_X111_Y13_N5
\inst|s_memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~35_q\);

-- Location: FF_X110_Y13_N25
\inst|s_memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~99_q\);

-- Location: LCCOMB_X111_Y13_N4
\inst|s_memory~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~151_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\inst|s_memory~99_q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\inst|s_memory~35_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~35_q\,
	datad => \inst|s_memory~99_q\,
	combout => \inst|s_memory~151_combout\);

-- Location: FF_X111_Y13_N11
\inst|s_memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~67_q\);

-- Location: FF_X110_Y13_N31
\inst|s_memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~131_q\);

-- Location: LCCOMB_X110_Y13_N30
\inst|s_memory~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~152_combout\ = (\inst|s_memory~151_combout\ & (((\inst|s_memory~131_q\) # (!\SW[2]~input_o\)))) # (!\inst|s_memory~151_combout\ & (\inst|s_memory~67_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~151_combout\,
	datab => \inst|s_memory~67_q\,
	datac => \inst|s_memory~131_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~152_combout\);

-- Location: LCCOMB_X110_Y12_N4
\inst|s_memory~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~160_combout\ = (\inst|s_memory~157_combout\ & ((\inst|s_memory~159_combout\) # ((!\SW[1]~input_o\)))) # (!\inst|s_memory~157_combout\ & (((\inst|s_memory~152_combout\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~157_combout\,
	datab => \inst|s_memory~159_combout\,
	datac => \inst|s_memory~152_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~160_combout\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: FF_X110_Y13_N3
\inst|s_memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~130_q\);

-- Location: FF_X109_Y11_N11
\inst|s_memory~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~114_q\);

-- Location: FF_X109_Y11_N13
\inst|s_memory~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~122_q\);

-- Location: LCCOMB_X109_Y11_N10
\inst|s_memory~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~168_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\inst|s_memory~122_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\inst|s_memory~114_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~114_q\,
	datad => \inst|s_memory~122_q\,
	combout => \inst|s_memory~168_combout\);

-- Location: FF_X109_Y12_N11
\inst|s_memory~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~138_q\);

-- Location: LCCOMB_X109_Y12_N10
\inst|s_memory~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~169_combout\ = (\inst|s_memory~168_combout\ & (((\inst|s_memory~138_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~168_combout\ & (\inst|s_memory~130_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~130_q\,
	datab => \inst|s_memory~168_combout\,
	datac => \inst|s_memory~138_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~169_combout\);

-- Location: FF_X110_Y11_N29
\inst|s_memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~82_q\);

-- Location: FF_X110_Y13_N5
\inst|s_memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~98_q\);

-- Location: LCCOMB_X110_Y11_N28
\inst|s_memory~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~163_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\inst|s_memory~98_q\))) # (!\SW[1]~input_o\ & (\inst|s_memory~82_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~82_q\,
	datad => \inst|s_memory~98_q\,
	combout => \inst|s_memory~163_combout\);

-- Location: LCCOMB_X113_Y11_N10
\inst|s_memory~90feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~90feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \inst|s_memory~90feeder_combout\);

-- Location: FF_X113_Y11_N11
\inst|s_memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~90feeder_combout\,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~90_q\);

-- Location: FF_X112_Y12_N13
\inst|s_memory~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~106_q\);

-- Location: LCCOMB_X112_Y12_N12
\inst|s_memory~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~164_combout\ = (\inst|s_memory~163_combout\ & (((\inst|s_memory~106_q\) # (!\SW[0]~input_o\)))) # (!\inst|s_memory~163_combout\ & (\inst|s_memory~90_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~163_combout\,
	datab => \inst|s_memory~90_q\,
	datac => \inst|s_memory~106_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~164_combout\);

-- Location: FF_X111_Y11_N5
\inst|s_memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~26_q\);

-- Location: LCCOMB_X111_Y13_N6
\inst|s_memory~34feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~34feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \inst|s_memory~34feeder_combout\);

-- Location: FF_X111_Y13_N7
\inst|s_memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~34feeder_combout\,
	ena => \inst|s_memory~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~34_q\);

-- Location: FF_X111_Y11_N23
\inst|s_memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~18_q\);

-- Location: LCCOMB_X111_Y11_N22
\inst|s_memory~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~165_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~34_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\inst|s_memory~18_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~34_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~18_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~165_combout\);

-- Location: FF_X112_Y12_N19
\inst|s_memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~42_q\);

-- Location: LCCOMB_X112_Y12_N18
\inst|s_memory~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~166_combout\ = (\inst|s_memory~165_combout\ & (((\inst|s_memory~42_q\) # (!\SW[0]~input_o\)))) # (!\inst|s_memory~165_combout\ & (\inst|s_memory~26_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~26_q\,
	datab => \inst|s_memory~165_combout\,
	datac => \inst|s_memory~42_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~166_combout\);

-- Location: LCCOMB_X112_Y12_N20
\inst|s_memory~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~167_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~164_combout\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((!\SW[2]~input_o\ & \inst|s_memory~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~164_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst|s_memory~166_combout\,
	combout => \inst|s_memory~167_combout\);

-- Location: LCCOMB_X109_Y13_N0
\inst|s_memory~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~66feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \inst|s_memory~66feeder_combout\);

-- Location: FF_X109_Y13_N1
\inst|s_memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~66feeder_combout\,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~66_q\);

-- Location: FF_X112_Y11_N11
\inst|s_memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~58_q\);

-- Location: FF_X112_Y11_N1
\inst|s_memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~50_q\);

-- Location: LCCOMB_X112_Y11_N0
\inst|s_memory~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~161_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\inst|s_memory~58_q\)) # (!\SW[0]~input_o\ & ((\inst|s_memory~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~58_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~50_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~161_combout\);

-- Location: FF_X109_Y12_N5
\inst|s_memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~74_q\);

-- Location: LCCOMB_X109_Y12_N4
\inst|s_memory~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~162_combout\ = (\inst|s_memory~161_combout\ & (((\inst|s_memory~74_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~161_combout\ & (\inst|s_memory~66_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~66_q\,
	datab => \inst|s_memory~161_combout\,
	datac => \inst|s_memory~74_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~162_combout\);

-- Location: LCCOMB_X109_Y12_N8
\inst|s_memory~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~170_combout\ = (\inst|s_memory~167_combout\ & ((\inst|s_memory~169_combout\) # ((!\SW[2]~input_o\)))) # (!\inst|s_memory~167_combout\ & (((\inst|s_memory~162_combout\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~169_combout\,
	datab => \inst|s_memory~167_combout\,
	datac => \inst|s_memory~162_combout\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~170_combout\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X113_Y11_N17
\inst|s_memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~89_q\);

-- Location: FF_X111_Y11_N9
\inst|s_memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~25_q\);

-- Location: LCCOMB_X111_Y11_N8
\inst|s_memory~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~171_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~89_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~25_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~89_q\,
	datac => \inst|s_memory~25_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~171_combout\);

-- Location: FF_X113_Y11_N3
\inst|s_memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~121_q\);

-- Location: LCCOMB_X112_Y11_N18
\inst|s_memory~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~57feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~57feeder_combout\);

-- Location: FF_X112_Y11_N19
\inst|s_memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~57feeder_combout\,
	ena => \inst|s_memory~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~57_q\);

-- Location: LCCOMB_X113_Y11_N2
\inst|s_memory~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~172_combout\ = (\SW[2]~input_o\ & ((\inst|s_memory~171_combout\ & (\inst|s_memory~121_q\)) # (!\inst|s_memory~171_combout\ & ((\inst|s_memory~57_q\))))) # (!\SW[2]~input_o\ & (\inst|s_memory~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|s_memory~171_combout\,
	datac => \inst|s_memory~121_q\,
	datad => \inst|s_memory~57_q\,
	combout => \inst|s_memory~172_combout\);

-- Location: FF_X109_Y12_N23
\inst|s_memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~73_q\);

-- Location: FF_X110_Y12_N31
\inst|s_memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~105_q\);

-- Location: FF_X110_Y12_N17
\inst|s_memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~41_q\);

-- Location: LCCOMB_X110_Y12_N16
\inst|s_memory~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~178_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~105_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~41_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~105_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~41_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~178_combout\);

-- Location: FF_X109_Y12_N29
\inst|s_memory~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~137_q\);

-- Location: LCCOMB_X109_Y12_N28
\inst|s_memory~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~179_combout\ = (\inst|s_memory~178_combout\ & (((\inst|s_memory~137_q\) # (!\SW[2]~input_o\)))) # (!\inst|s_memory~178_combout\ & (\inst|s_memory~73_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~73_q\,
	datab => \inst|s_memory~178_combout\,
	datac => \inst|s_memory~137_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~179_combout\);

-- Location: LCCOMB_X110_Y13_N28
\inst|s_memory~97feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~97feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~97feeder_combout\);

-- Location: FF_X110_Y13_N29
\inst|s_memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~97feeder_combout\,
	ena => \inst|s_memory~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~97_q\);

-- Location: FF_X110_Y13_N15
\inst|s_memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~129_q\);

-- Location: FF_X111_Y13_N13
\inst|s_memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~65_q\);

-- Location: FF_X111_Y13_N3
\inst|s_memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~33_q\);

-- Location: LCCOMB_X111_Y13_N2
\inst|s_memory~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~173_combout\ = (\SW[2]~input_o\ & ((\inst|s_memory~65_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\inst|s_memory~33_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~65_q\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~33_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~173_combout\);

-- Location: LCCOMB_X110_Y13_N14
\inst|s_memory~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~174_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~173_combout\ & ((\inst|s_memory~129_q\))) # (!\inst|s_memory~173_combout\ & (\inst|s_memory~97_q\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~97_q\,
	datac => \inst|s_memory~129_q\,
	datad => \inst|s_memory~173_combout\,
	combout => \inst|s_memory~174_combout\);

-- Location: LCCOMB_X112_Y11_N28
\inst|s_memory~49feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~49feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~49feeder_combout\);

-- Location: FF_X112_Y11_N29
\inst|s_memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~49feeder_combout\,
	ena => \inst|s_memory~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~49_q\);

-- Location: FF_X111_Y11_N3
\inst|s_memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~17_q\);

-- Location: LCCOMB_X111_Y11_N2
\inst|s_memory~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~175_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~49_q\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~49_q\,
	datac => \inst|s_memory~17_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~175_combout\);

-- Location: LCCOMB_X110_Y11_N2
\inst|s_memory~81feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~81feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~81feeder_combout\);

-- Location: FF_X110_Y11_N3
\inst|s_memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~81feeder_combout\,
	ena => \inst|s_memory~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~81_q\);

-- Location: FF_X110_Y11_N17
\inst|s_memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~113_q\);

-- Location: LCCOMB_X110_Y11_N16
\inst|s_memory~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~176_combout\ = (\inst|s_memory~175_combout\ & (((\inst|s_memory~113_q\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~175_combout\ & (\inst|s_memory~81_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~175_combout\,
	datab => \inst|s_memory~81_q\,
	datac => \inst|s_memory~113_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~176_combout\);

-- Location: LCCOMB_X109_Y11_N28
\inst|s_memory~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~177_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\inst|s_memory~174_combout\)) # (!\SW[1]~input_o\ & ((\inst|s_memory~176_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|s_memory~174_combout\,
	datac => \SW[1]~input_o\,
	datad => \inst|s_memory~176_combout\,
	combout => \inst|s_memory~177_combout\);

-- Location: LCCOMB_X109_Y11_N26
\inst|s_memory~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~180_combout\ = (\SW[0]~input_o\ & ((\inst|s_memory~177_combout\ & ((\inst|s_memory~179_combout\))) # (!\inst|s_memory~177_combout\ & (\inst|s_memory~172_combout\)))) # (!\SW[0]~input_o\ & (((\inst|s_memory~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~172_combout\,
	datab => \inst|s_memory~179_combout\,
	datac => \SW[0]~input_o\,
	datad => \inst|s_memory~177_combout\,
	combout => \inst|s_memory~180_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X110_Y13_N16
\inst|s_memory~96feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~96feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~96feeder_combout\);

-- Location: FF_X110_Y13_N17
\inst|s_memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~96feeder_combout\,
	ena => \inst|s_memory~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~96_q\);

-- Location: FF_X110_Y11_N27
\inst|s_memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~80_q\);

-- Location: LCCOMB_X113_Y11_N4
\inst|s_memory~88feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~88feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~88feeder_combout\);

-- Location: FF_X113_Y11_N5
\inst|s_memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~88feeder_combout\,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~88_q\);

-- Location: LCCOMB_X110_Y11_N26
\inst|s_memory~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~181_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\inst|s_memory~88_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\inst|s_memory~80_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~80_q\,
	datad => \inst|s_memory~88_q\,
	combout => \inst|s_memory~181_combout\);

-- Location: FF_X110_Y12_N11
\inst|s_memory~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~104_q\);

-- Location: LCCOMB_X110_Y12_N10
\inst|s_memory~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~182_combout\ = (\inst|s_memory~181_combout\ & (((\inst|s_memory~104_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~181_combout\ & (\inst|s_memory~96_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~96_q\,
	datab => \inst|s_memory~181_combout\,
	datac => \inst|s_memory~104_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~182_combout\);

-- Location: FF_X110_Y11_N25
\inst|s_memory~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~112_q\);

-- Location: LCCOMB_X110_Y13_N18
\inst|s_memory~128feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~128feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~128feeder_combout\);

-- Location: FF_X110_Y13_N19
\inst|s_memory~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~128feeder_combout\,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~128_q\);

-- Location: LCCOMB_X110_Y11_N24
\inst|s_memory~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~188_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\inst|s_memory~128_q\))) # (!\SW[1]~input_o\ & (\inst|s_memory~112_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~112_q\,
	datad => \inst|s_memory~128_q\,
	combout => \inst|s_memory~188_combout\);

-- Location: LCCOMB_X113_Y11_N30
\inst|s_memory~120feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~120feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~120feeder_combout\);

-- Location: FF_X113_Y11_N31
\inst|s_memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~120feeder_combout\,
	ena => \inst|s_memory~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~120_q\);

-- Location: FF_X111_Y12_N19
\inst|s_memory~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~136_q\);

-- Location: LCCOMB_X111_Y12_N18
\inst|s_memory~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~189_combout\ = (\inst|s_memory~188_combout\ & (((\inst|s_memory~136_q\) # (!\SW[0]~input_o\)))) # (!\inst|s_memory~188_combout\ & (\inst|s_memory~120_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~188_combout\,
	datab => \inst|s_memory~120_q\,
	datac => \inst|s_memory~136_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~189_combout\);

-- Location: LCCOMB_X111_Y13_N22
\inst|s_memory~32feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~32feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~32feeder_combout\);

-- Location: FF_X111_Y13_N23
\inst|s_memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~32feeder_combout\,
	ena => \inst|s_memory~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~32_q\);

-- Location: FF_X111_Y11_N13
\inst|s_memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~24_q\);

-- Location: FF_X111_Y11_N19
\inst|s_memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~16_q\);

-- Location: LCCOMB_X111_Y11_N18
\inst|s_memory~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~185_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\inst|s_memory~24_q\)) # (!\SW[0]~input_o\ & ((\inst|s_memory~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~24_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~16_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~185_combout\);

-- Location: FF_X110_Y12_N13
\inst|s_memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~40_q\);

-- Location: LCCOMB_X110_Y12_N12
\inst|s_memory~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~186_combout\ = (\inst|s_memory~185_combout\ & (((\inst|s_memory~40_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~185_combout\ & (\inst|s_memory~32_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~32_q\,
	datab => \inst|s_memory~185_combout\,
	datac => \inst|s_memory~40_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~186_combout\);

-- Location: FF_X112_Y11_N31
\inst|s_memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~56_q\);

-- Location: LCCOMB_X111_Y13_N28
\inst|s_memory~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~64feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~64feeder_combout\);

-- Location: FF_X111_Y13_N29
\inst|s_memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~64feeder_combout\,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~64_q\);

-- Location: FF_X112_Y11_N9
\inst|s_memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~48_q\);

-- Location: LCCOMB_X112_Y11_N8
\inst|s_memory~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~183_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~64_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\inst|s_memory~48_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~64_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~48_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~183_combout\);

-- Location: FF_X111_Y12_N9
\inst|s_memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~72_q\);

-- Location: LCCOMB_X111_Y12_N8
\inst|s_memory~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~184_combout\ = (\inst|s_memory~183_combout\ & (((\inst|s_memory~72_q\) # (!\SW[0]~input_o\)))) # (!\inst|s_memory~183_combout\ & (\inst|s_memory~56_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~56_q\,
	datab => \inst|s_memory~183_combout\,
	datac => \inst|s_memory~72_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~184_combout\);

-- Location: LCCOMB_X110_Y12_N22
\inst|s_memory~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~187_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\inst|s_memory~184_combout\))) # (!\SW[2]~input_o\ & (\inst|s_memory~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~186_combout\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~184_combout\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~187_combout\);

-- Location: LCCOMB_X110_Y12_N20
\inst|s_memory~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~190_combout\ = (\inst|s_memory~187_combout\ & (((\inst|s_memory~189_combout\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~187_combout\ & (\inst|s_memory~182_combout\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~182_combout\,
	datab => \inst|s_memory~189_combout\,
	datac => \inst|s_memory~187_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~190_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X113_Y11_N13
\inst|s_memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~87_q\);

-- Location: FF_X113_Y11_N15
\inst|s_memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~119_q\);

-- Location: LCCOMB_X112_Y11_N26
\inst|s_memory~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~55feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \inst|s_memory~55feeder_combout\);

-- Location: FF_X112_Y11_N27
\inst|s_memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~55feeder_combout\,
	ena => \inst|s_memory~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~55_q\);

-- Location: FF_X111_Y11_N1
\inst|s_memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~23_q\);

-- Location: LCCOMB_X111_Y11_N0
\inst|s_memory~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~193_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~55_q\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~55_q\,
	datac => \inst|s_memory~23_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~193_combout\);

-- Location: LCCOMB_X113_Y11_N14
\inst|s_memory~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~194_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~193_combout\ & ((\inst|s_memory~119_q\))) # (!\inst|s_memory~193_combout\ & (\inst|s_memory~87_q\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~87_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~119_q\,
	datad => \inst|s_memory~193_combout\,
	combout => \inst|s_memory~194_combout\);

-- Location: FF_X110_Y11_N15
\inst|s_memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~79_q\);

-- Location: FF_X111_Y11_N7
\inst|s_memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~15_q\);

-- Location: LCCOMB_X111_Y11_N6
\inst|s_memory~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~195_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~79_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~15_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~79_q\,
	datac => \inst|s_memory~15_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~195_combout\);

-- Location: LCCOMB_X112_Y11_N16
\inst|s_memory~47feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~47feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \inst|s_memory~47feeder_combout\);

-- Location: FF_X112_Y11_N17
\inst|s_memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~47feeder_combout\,
	ena => \inst|s_memory~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~47_q\);

-- Location: FF_X110_Y11_N21
\inst|s_memory~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~111_q\);

-- Location: LCCOMB_X110_Y11_N20
\inst|s_memory~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~196_combout\ = (\inst|s_memory~195_combout\ & (((\inst|s_memory~111_q\) # (!\SW[2]~input_o\)))) # (!\inst|s_memory~195_combout\ & (\inst|s_memory~47_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~195_combout\,
	datab => \inst|s_memory~47_q\,
	datac => \inst|s_memory~111_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~196_combout\);

-- Location: LCCOMB_X109_Y11_N0
\inst|s_memory~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~197_combout\ = (\SW[0]~input_o\ & ((\inst|s_memory~194_combout\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((!\SW[1]~input_o\ & \inst|s_memory~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|s_memory~194_combout\,
	datac => \SW[1]~input_o\,
	datad => \inst|s_memory~196_combout\,
	combout => \inst|s_memory~197_combout\);

-- Location: LCCOMB_X111_Y12_N16
\inst|s_memory~71feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~71feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \inst|s_memory~71feeder_combout\);

-- Location: FF_X111_Y12_N17
\inst|s_memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~71feeder_combout\,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~71_q\);

-- Location: FF_X112_Y12_N5
\inst|s_memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~39_q\);

-- Location: LCCOMB_X112_Y12_N4
\inst|s_memory~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~198_combout\ = (\SW[2]~input_o\ & ((\inst|s_memory~71_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\inst|s_memory~39_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~71_q\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~39_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~198_combout\);

-- Location: FF_X112_Y12_N23
\inst|s_memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~103_q\);

-- Location: FF_X111_Y12_N31
\inst|s_memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~135_q\);

-- Location: LCCOMB_X111_Y12_N30
\inst|s_memory~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~199_combout\ = (\inst|s_memory~198_combout\ & (((\inst|s_memory~135_q\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~198_combout\ & (\inst|s_memory~103_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~198_combout\,
	datab => \inst|s_memory~103_q\,
	datac => \inst|s_memory~135_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~199_combout\);

-- Location: FF_X111_Y13_N31
\inst|s_memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~31_q\);

-- Location: LCCOMB_X110_Y13_N12
\inst|s_memory~95feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~95feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \inst|s_memory~95feeder_combout\);

-- Location: FF_X110_Y13_N13
\inst|s_memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~95feeder_combout\,
	ena => \inst|s_memory~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~95_q\);

-- Location: LCCOMB_X111_Y13_N30
\inst|s_memory~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~191_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\inst|s_memory~95_q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\inst|s_memory~31_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~31_q\,
	datad => \inst|s_memory~95_q\,
	combout => \inst|s_memory~191_combout\);

-- Location: FF_X111_Y13_N25
\inst|s_memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~63_q\);

-- Location: FF_X110_Y13_N27
\inst|s_memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~127_q\);

-- Location: LCCOMB_X110_Y13_N26
\inst|s_memory~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~192_combout\ = (\inst|s_memory~191_combout\ & (((\inst|s_memory~127_q\) # (!\SW[2]~input_o\)))) # (!\inst|s_memory~191_combout\ & (\inst|s_memory~63_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~191_combout\,
	datab => \inst|s_memory~63_q\,
	datac => \inst|s_memory~127_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~192_combout\);

-- Location: LCCOMB_X110_Y12_N26
\inst|s_memory~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~200_combout\ = (\inst|s_memory~197_combout\ & (((\inst|s_memory~199_combout\)) # (!\SW[1]~input_o\))) # (!\inst|s_memory~197_combout\ & (\SW[1]~input_o\ & ((\inst|s_memory~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~197_combout\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~199_combout\,
	datad => \inst|s_memory~192_combout\,
	combout => \inst|s_memory~200_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X110_Y13_N6
\inst|s_memory~126feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~126feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \inst|s_memory~126feeder_combout\);

-- Location: FF_X110_Y13_N7
\inst|s_memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~126feeder_combout\,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~126_q\);

-- Location: FF_X110_Y11_N13
\inst|s_memory~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~110_q\);

-- Location: LCCOMB_X113_Y11_N22
\inst|s_memory~118feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~118feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \inst|s_memory~118feeder_combout\);

-- Location: FF_X113_Y11_N23
\inst|s_memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~118feeder_combout\,
	ena => \inst|s_memory~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~118_q\);

-- Location: LCCOMB_X110_Y11_N12
\inst|s_memory~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~208_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\inst|s_memory~118_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\inst|s_memory~110_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~110_q\,
	datad => \inst|s_memory~118_q\,
	combout => \inst|s_memory~208_combout\);

-- Location: FF_X111_Y12_N11
\inst|s_memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~134_q\);

-- Location: LCCOMB_X111_Y12_N10
\inst|s_memory~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~209_combout\ = (\inst|s_memory~208_combout\ & (((\inst|s_memory~134_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~208_combout\ & (\inst|s_memory~126_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~126_q\,
	datab => \inst|s_memory~208_combout\,
	datac => \inst|s_memory~134_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~209_combout\);

-- Location: LCCOMB_X113_Y11_N0
\inst|s_memory~86feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~86feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \inst|s_memory~86feeder_combout\);

-- Location: FF_X113_Y11_N1
\inst|s_memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~86feeder_combout\,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~86_q\);

-- Location: FF_X110_Y11_N19
\inst|s_memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~78_q\);

-- Location: LCCOMB_X110_Y13_N0
\inst|s_memory~94feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~94feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \inst|s_memory~94feeder_combout\);

-- Location: FF_X110_Y13_N1
\inst|s_memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~94feeder_combout\,
	ena => \inst|s_memory~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~94_q\);

-- Location: LCCOMB_X110_Y11_N18
\inst|s_memory~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~203_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\inst|s_memory~94_q\))) # (!\SW[1]~input_o\ & (\inst|s_memory~78_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~78_q\,
	datad => \inst|s_memory~94_q\,
	combout => \inst|s_memory~203_combout\);

-- Location: FF_X112_Y12_N11
\inst|s_memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~102_q\);

-- Location: LCCOMB_X112_Y12_N10
\inst|s_memory~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~204_combout\ = (\inst|s_memory~203_combout\ & (((\inst|s_memory~102_q\) # (!\SW[0]~input_o\)))) # (!\inst|s_memory~203_combout\ & (\inst|s_memory~86_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~86_q\,
	datab => \inst|s_memory~203_combout\,
	datac => \inst|s_memory~102_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~204_combout\);

-- Location: FF_X111_Y11_N17
\inst|s_memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~22_q\);

-- Location: FF_X112_Y12_N29
\inst|s_memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~38_q\);

-- Location: FF_X111_Y13_N27
\inst|s_memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~30_q\);

-- Location: FF_X111_Y11_N15
\inst|s_memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~14_q\);

-- Location: LCCOMB_X111_Y11_N14
\inst|s_memory~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~205_combout\ = (\SW[1]~input_o\ & ((\inst|s_memory~30_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\inst|s_memory~14_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~30_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~14_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~205_combout\);

-- Location: LCCOMB_X112_Y12_N28
\inst|s_memory~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~206_combout\ = (\SW[0]~input_o\ & ((\inst|s_memory~205_combout\ & ((\inst|s_memory~38_q\))) # (!\inst|s_memory~205_combout\ & (\inst|s_memory~22_q\)))) # (!\SW[0]~input_o\ & (((\inst|s_memory~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~22_q\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_memory~38_q\,
	datad => \inst|s_memory~205_combout\,
	combout => \inst|s_memory~206_combout\);

-- Location: LCCOMB_X112_Y12_N14
\inst|s_memory~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~207_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~204_combout\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((!\SW[2]~input_o\ & \inst|s_memory~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~204_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst|s_memory~206_combout\,
	combout => \inst|s_memory~207_combout\);

-- Location: FF_X111_Y13_N1
\inst|s_memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~62_q\);

-- Location: LCCOMB_X112_Y11_N6
\inst|s_memory~54feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~54feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \inst|s_memory~54feeder_combout\);

-- Location: FF_X112_Y11_N7
\inst|s_memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~54feeder_combout\,
	ena => \inst|s_memory~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~54_q\);

-- Location: FF_X112_Y11_N13
\inst|s_memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~46_q\);

-- Location: LCCOMB_X112_Y11_N12
\inst|s_memory~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~201_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\inst|s_memory~54_q\)) # (!\SW[0]~input_o\ & ((\inst|s_memory~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~54_q\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_memory~46_q\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~201_combout\);

-- Location: FF_X111_Y12_N5
\inst|s_memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~70_q\);

-- Location: LCCOMB_X111_Y12_N4
\inst|s_memory~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~202_combout\ = (\inst|s_memory~201_combout\ & (((\inst|s_memory~70_q\) # (!\SW[1]~input_o\)))) # (!\inst|s_memory~201_combout\ & (\inst|s_memory~62_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~62_q\,
	datab => \inst|s_memory~201_combout\,
	datac => \inst|s_memory~70_q\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~202_combout\);

-- Location: LCCOMB_X111_Y12_N0
\inst|s_memory~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~210_combout\ = (\inst|s_memory~207_combout\ & ((\inst|s_memory~209_combout\) # ((!\SW[2]~input_o\)))) # (!\inst|s_memory~207_combout\ & (((\inst|s_memory~202_combout\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~209_combout\,
	datab => \inst|s_memory~207_combout\,
	datac => \inst|s_memory~202_combout\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~210_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X113_Y11_N24
\inst|s_memory~85feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~85feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \inst|s_memory~85feeder_combout\);

-- Location: FF_X113_Y11_N25
\inst|s_memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	d => \inst|s_memory~85feeder_combout\,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~85_q\);

-- Location: FF_X111_Y11_N29
\inst|s_memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~21_q\);

-- Location: LCCOMB_X111_Y11_N28
\inst|s_memory~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~211_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~85_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~21_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~85_q\,
	datac => \inst|s_memory~21_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~211_combout\);

-- Location: FF_X112_Y11_N15
\inst|s_memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~53_q\);

-- Location: FF_X109_Y11_N23
\inst|s_memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~117_q\);

-- Location: LCCOMB_X109_Y11_N22
\inst|s_memory~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~212_combout\ = (\inst|s_memory~211_combout\ & (((\inst|s_memory~117_q\) # (!\SW[2]~input_o\)))) # (!\inst|s_memory~211_combout\ & (\inst|s_memory~53_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~211_combout\,
	datab => \inst|s_memory~53_q\,
	datac => \inst|s_memory~117_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~212_combout\);

-- Location: FF_X111_Y13_N15
\inst|s_memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~29_q\);

-- Location: FF_X111_Y13_N17
\inst|s_memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~61_q\);

-- Location: LCCOMB_X111_Y13_N14
\inst|s_memory~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~213_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\inst|s_memory~61_q\))) # (!\SW[2]~input_o\ & (\inst|s_memory~29_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \inst|s_memory~29_q\,
	datad => \inst|s_memory~61_q\,
	combout => \inst|s_memory~213_combout\);

-- Location: FF_X110_Y13_N11
\inst|s_memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~125_q\);

-- Location: FF_X110_Y13_N21
\inst|s_memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~93_q\);

-- Location: LCCOMB_X110_Y13_N10
\inst|s_memory~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~214_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~213_combout\ & (\inst|s_memory~125_q\)) # (!\inst|s_memory~213_combout\ & ((\inst|s_memory~93_q\))))) # (!\SW[3]~input_o\ & (\inst|s_memory~213_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~213_combout\,
	datac => \inst|s_memory~125_q\,
	datad => \inst|s_memory~93_q\,
	combout => \inst|s_memory~214_combout\);

-- Location: FF_X110_Y11_N11
\inst|s_memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~77_q\);

-- Location: FF_X112_Y11_N5
\inst|s_memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~45_q\);

-- Location: FF_X111_Y11_N11
\inst|s_memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~13_q\);

-- Location: LCCOMB_X111_Y11_N10
\inst|s_memory~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~215_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\inst|s_memory~45_q\)) # (!\SW[2]~input_o\ & ((\inst|s_memory~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|s_memory~45_q\,
	datac => \inst|s_memory~13_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~215_combout\);

-- Location: FF_X110_Y11_N5
\inst|s_memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~109_q\);

-- Location: LCCOMB_X110_Y11_N4
\inst|s_memory~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~216_combout\ = (\inst|s_memory~215_combout\ & (((\inst|s_memory~109_q\) # (!\SW[3]~input_o\)))) # (!\inst|s_memory~215_combout\ & (\inst|s_memory~77_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~77_q\,
	datab => \inst|s_memory~215_combout\,
	datac => \inst|s_memory~109_q\,
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~216_combout\);

-- Location: LCCOMB_X110_Y12_N0
\inst|s_memory~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~217_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\inst|s_memory~214_combout\)) # (!\SW[1]~input_o\ & ((\inst|s_memory~216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|s_memory~214_combout\,
	datac => \inst|s_memory~216_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~217_combout\);

-- Location: FF_X109_Y12_N31
\inst|s_memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~69_q\);

-- Location: FF_X110_Y12_N7
\inst|s_memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~101_q\);

-- Location: FF_X110_Y12_N9
\inst|s_memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~37_q\);

-- Location: LCCOMB_X110_Y12_N8
\inst|s_memory~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~218_combout\ = (\SW[3]~input_o\ & ((\inst|s_memory~101_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\inst|s_memory~37_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~101_q\,
	datab => \SW[3]~input_o\,
	datac => \inst|s_memory~37_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~218_combout\);

-- Location: FF_X109_Y12_N21
\inst|s_memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~133_q\);

-- Location: LCCOMB_X109_Y12_N20
\inst|s_memory~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~219_combout\ = (\inst|s_memory~218_combout\ & (((\inst|s_memory~133_q\) # (!\SW[2]~input_o\)))) # (!\inst|s_memory~218_combout\ & (\inst|s_memory~69_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~69_q\,
	datab => \inst|s_memory~218_combout\,
	datac => \inst|s_memory~133_q\,
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~219_combout\);

-- Location: LCCOMB_X109_Y12_N14
\inst|s_memory~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~220_combout\ = (\SW[0]~input_o\ & ((\inst|s_memory~217_combout\ & ((\inst|s_memory~219_combout\))) # (!\inst|s_memory~217_combout\ & (\inst|s_memory~212_combout\)))) # (!\SW[0]~input_o\ & (((\inst|s_memory~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~212_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_memory~217_combout\,
	datad => \inst|s_memory~219_combout\,
	combout => \inst|s_memory~220_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


