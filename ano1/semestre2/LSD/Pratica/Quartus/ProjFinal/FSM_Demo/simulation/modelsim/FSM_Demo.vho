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

-- DATE "05/29/2023 12:20:20"

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

ENTITY 	FSM IS
    PORT (
	Start_stop : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	Exp_time : IN std_logic;
	TExtra : IN std_logic_vector(2 DOWNTO 0);
	Cozer_time : IN std_logic_vector(5 DOWNTO 0);
	Levedar_time : IN std_logic_vector(5 DOWNTO 0);
	Amassar_time : IN std_logic_vector(5 DOWNTO 0);
	New_time1 : BUFFER std_logic_vector(5 DOWNTO 0);
	Value_time : BUFFER std_logic_vector(5 DOWNTO 0);
	Enable_timer : BUFFER std_logic;
	Amassar : BUFFER std_logic;
	Levedar : BUFFER std_logic;
	Cozer : BUFFER std_logic;
	LEDR : BUFFER std_logic
	);
END FSM;

-- Design Ports Information
-- New_time1[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- New_time1[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- New_time1[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- New_time1[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- New_time1[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- New_time1[5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Value_time[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Value_time[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Value_time[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Value_time[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Value_time[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Value_time[5]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable_timer	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TExtra[0]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[0]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TExtra[1]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[1]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[2]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TExtra[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[2]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[3]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[4]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[4]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start_stop	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Exp_time	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Start_stop : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Exp_time : std_logic;
SIGNAL ww_TExtra : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Cozer_time : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Levedar_time : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Amassar_time : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_New_time1 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Value_time : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Enable_timer : std_logic;
SIGNAL ww_Amassar : std_logic;
SIGNAL ww_Levedar : std_logic;
SIGNAL ww_Cozer : std_logic;
SIGNAL ww_LEDR : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector10~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \New_time1[0]~output_o\ : std_logic;
SIGNAL \New_time1[1]~output_o\ : std_logic;
SIGNAL \New_time1[2]~output_o\ : std_logic;
SIGNAL \New_time1[3]~output_o\ : std_logic;
SIGNAL \New_time1[4]~output_o\ : std_logic;
SIGNAL \New_time1[5]~output_o\ : std_logic;
SIGNAL \Value_time[0]~output_o\ : std_logic;
SIGNAL \Value_time[1]~output_o\ : std_logic;
SIGNAL \Value_time[2]~output_o\ : std_logic;
SIGNAL \Value_time[3]~output_o\ : std_logic;
SIGNAL \Value_time[4]~output_o\ : std_logic;
SIGNAL \Value_time[5]~output_o\ : std_logic;
SIGNAL \Enable_timer~output_o\ : std_logic;
SIGNAL \Amassar~output_o\ : std_logic;
SIGNAL \Levedar~output_o\ : std_logic;
SIGNAL \Cozer~output_o\ : std_logic;
SIGNAL \LEDR~output_o\ : std_logic;
SIGNAL \Levedar_time[0]~input_o\ : std_logic;
SIGNAL \Amassar_time[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \TExtra[0]~input_o\ : std_logic;
SIGNAL \Cozer_time[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \TExtra[1]~input_o\ : std_logic;
SIGNAL \Cozer_time[1]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Amassar_time[1]~input_o\ : std_logic;
SIGNAL \Levedar_time[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Cozer_time[2]~input_o\ : std_logic;
SIGNAL \TExtra[2]~input_o\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Levedar_time[2]~input_o\ : std_logic;
SIGNAL \Amassar_time[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Amassar_time[3]~input_o\ : std_logic;
SIGNAL \Levedar_time[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Cozer_time[3]~input_o\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Amassar_time[4]~input_o\ : std_logic;
SIGNAL \Levedar_time[4]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Cozer_time[4]~input_o\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Levedar_time[5]~input_o\ : std_logic;
SIGNAL \Amassar_time[5]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Cozer_time[5]~input_o\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Exp_time~input_o\ : std_logic;
SIGNAL \Start_stop~input_o\ : std_logic;
SIGNAL \Current_State.xIn~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \Current_State.xIn~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Current_State.Amassar_state~q\ : std_logic;
SIGNAL \Current_State.Levedar_state~q\ : std_logic;
SIGNAL \Current_State.Cozer_state~q\ : std_logic;
SIGNAL \Current_State.Final_state~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~0clkctrl_outclk\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL Timer_Value : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_LEDR~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Start_stop <= Start_stop;
ww_clk <= clk;
ww_rst <= rst;
ww_Exp_time <= Exp_time;
ww_TExtra <= TExtra;
ww_Cozer_time <= Cozer_time;
ww_Levedar_time <= Levedar_time;
ww_Amassar_time <= Amassar_time;
New_time1 <= ww_New_time1;
Value_time <= ww_Value_time;
Enable_timer <= ww_Enable_timer;
Amassar <= ww_Amassar;
Levedar <= ww_Levedar;
Cozer <= ww_Cozer;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\Selector10~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector10~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_LEDR~0_combout\ <= NOT \LEDR~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y29_N16
\New_time1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~0_combout\,
	devoe => ww_devoe,
	o => \New_time1[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\New_time1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~2_combout\,
	devoe => ww_devoe,
	o => \New_time1[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\New_time1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~4_combout\,
	devoe => ww_devoe,
	o => \New_time1[2]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\New_time1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~6_combout\,
	devoe => ww_devoe,
	o => \New_time1[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\New_time1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~8_combout\,
	devoe => ww_devoe,
	o => \New_time1[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\New_time1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~10_combout\,
	devoe => ww_devoe,
	o => \New_time1[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\Value_time[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Timer_Value(0),
	devoe => ww_devoe,
	o => \Value_time[0]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\Value_time[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Timer_Value(1),
	devoe => ww_devoe,
	o => \Value_time[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\Value_time[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Timer_Value(2),
	devoe => ww_devoe,
	o => \Value_time[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\Value_time[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Timer_Value(3),
	devoe => ww_devoe,
	o => \Value_time[3]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\Value_time[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Timer_Value(4),
	devoe => ww_devoe,
	o => \Value_time[4]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Value_time[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Timer_Value(5),
	devoe => ww_devoe,
	o => \Value_time[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\Enable_timer~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Start_stop~input_o\,
	devoe => ww_devoe,
	o => \Enable_timer~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\Amassar~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Current_State.Amassar_state~q\,
	devoe => ww_devoe,
	o => \Amassar~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\Levedar~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Current_State.Levedar_state~q\,
	devoe => ww_devoe,
	o => \Levedar~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\Cozer~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Current_State.Cozer_state~q\,
	devoe => ww_devoe,
	o => \Cozer~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\LEDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDR~output_o\);

-- Location: IOIBUF_X0_Y27_N22
\Levedar_time[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Levedar_time(0),
	o => \Levedar_time[0]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\Amassar_time[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Amassar_time(0),
	o => \Amassar_time[0]~input_o\);

-- Location: LCCOMB_X2_Y32_N10
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Levedar_time[0]~input_o\ & (\Amassar_time[0]~input_o\ $ (VCC))) # (!\Levedar_time[0]~input_o\ & (\Amassar_time[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\Levedar_time[0]~input_o\ & \Amassar_time[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Levedar_time[0]~input_o\,
	datab => \Amassar_time[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X0_Y21_N15
\TExtra[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TExtra(0),
	o => \TExtra[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\Cozer_time[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cozer_time(0),
	o => \Cozer_time[0]~input_o\);

-- Location: LCCOMB_X3_Y32_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\TExtra[0]~input_o\ & (\Cozer_time[0]~input_o\ $ (VCC))) # (!\TExtra[0]~input_o\ & (\Cozer_time[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\TExtra[0]~input_o\ & \Cozer_time[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TExtra[0]~input_o\,
	datab => \Cozer_time[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X3_Y32_N20
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Add0~0_combout\ & (\Add1~0_combout\ $ (VCC))) # (!\Add0~0_combout\ & (\Add1~0_combout\ & VCC))
-- \Add2~1\ = CARRY((\Add0~0_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: IOIBUF_X0_Y22_N15
\TExtra[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TExtra(1),
	o => \TExtra[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\Cozer_time[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cozer_time(1),
	o => \Cozer_time[1]~input_o\);

-- Location: LCCOMB_X3_Y32_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\TExtra[1]~input_o\ & ((\Cozer_time[1]~input_o\ & (\Add1~1\ & VCC)) # (!\Cozer_time[1]~input_o\ & (!\Add1~1\)))) # (!\TExtra[1]~input_o\ & ((\Cozer_time[1]~input_o\ & (!\Add1~1\)) # (!\Cozer_time[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\TExtra[1]~input_o\ & (!\Cozer_time[1]~input_o\ & !\Add1~1\)) # (!\TExtra[1]~input_o\ & ((!\Add1~1\) # (!\Cozer_time[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TExtra[1]~input_o\,
	datab => \Cozer_time[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: IOIBUF_X0_Y24_N15
\Amassar_time[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Amassar_time(1),
	o => \Amassar_time[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\Levedar_time[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Levedar_time(1),
	o => \Levedar_time[1]~input_o\);

-- Location: LCCOMB_X2_Y32_N12
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Amassar_time[1]~input_o\ & ((\Levedar_time[1]~input_o\ & (\Add0~1\ & VCC)) # (!\Levedar_time[1]~input_o\ & (!\Add0~1\)))) # (!\Amassar_time[1]~input_o\ & ((\Levedar_time[1]~input_o\ & (!\Add0~1\)) # (!\Levedar_time[1]~input_o\ & 
-- ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\Amassar_time[1]~input_o\ & (!\Levedar_time[1]~input_o\ & !\Add0~1\)) # (!\Amassar_time[1]~input_o\ & ((!\Add0~1\) # (!\Levedar_time[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Amassar_time[1]~input_o\,
	datab => \Levedar_time[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X3_Y32_N22
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add1~2_combout\ & ((\Add0~2_combout\ & (\Add2~1\ & VCC)) # (!\Add0~2_combout\ & (!\Add2~1\)))) # (!\Add1~2_combout\ & ((\Add0~2_combout\ & (!\Add2~1\)) # (!\Add0~2_combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Add1~2_combout\ & (!\Add0~2_combout\ & !\Add2~1\)) # (!\Add1~2_combout\ & ((!\Add2~1\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: IOIBUF_X0_Y22_N22
\Cozer_time[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cozer_time(2),
	o => \Cozer_time[2]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\TExtra[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TExtra(2),
	o => \TExtra[2]~input_o\);

-- Location: LCCOMB_X3_Y32_N12
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Cozer_time[2]~input_o\ $ (\TExtra[2]~input_o\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Cozer_time[2]~input_o\ & ((\TExtra[2]~input_o\) # (!\Add1~3\))) # (!\Cozer_time[2]~input_o\ & (\TExtra[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cozer_time[2]~input_o\,
	datab => \TExtra[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: IOIBUF_X0_Y24_N22
\Levedar_time[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Levedar_time(2),
	o => \Levedar_time[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\Amassar_time[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Amassar_time(2),
	o => \Amassar_time[2]~input_o\);

-- Location: LCCOMB_X2_Y32_N14
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Levedar_time[2]~input_o\ $ (\Amassar_time[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Levedar_time[2]~input_o\ & ((\Amassar_time[2]~input_o\) # (!\Add0~3\))) # (!\Levedar_time[2]~input_o\ & (\Amassar_time[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Levedar_time[2]~input_o\,
	datab => \Amassar_time[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X3_Y32_N24
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Add1~4_combout\ $ (\Add0~4_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Add1~4_combout\ & ((\Add0~4_combout\) # (!\Add2~3\))) # (!\Add1~4_combout\ & (\Add0~4_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: IOIBUF_X0_Y32_N22
\Amassar_time[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Amassar_time(3),
	o => \Amassar_time[3]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\Levedar_time[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Levedar_time(3),
	o => \Levedar_time[3]~input_o\);

-- Location: LCCOMB_X2_Y32_N16
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Amassar_time[3]~input_o\ & ((\Levedar_time[3]~input_o\ & (\Add0~5\ & VCC)) # (!\Levedar_time[3]~input_o\ & (!\Add0~5\)))) # (!\Amassar_time[3]~input_o\ & ((\Levedar_time[3]~input_o\ & (!\Add0~5\)) # (!\Levedar_time[3]~input_o\ & 
-- ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\Amassar_time[3]~input_o\ & (!\Levedar_time[3]~input_o\ & !\Add0~5\)) # (!\Amassar_time[3]~input_o\ & ((!\Add0~5\) # (!\Levedar_time[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Amassar_time[3]~input_o\,
	datab => \Levedar_time[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X0_Y26_N15
\Cozer_time[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cozer_time(3),
	o => \Cozer_time[3]~input_o\);

-- Location: LCCOMB_X3_Y32_N14
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Cozer_time[3]~input_o\ & (!\Add1~5\)) # (!\Cozer_time[3]~input_o\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\Cozer_time[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cozer_time[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X3_Y32_N26
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add0~6_combout\ & ((\Add1~6_combout\ & (\Add2~5\ & VCC)) # (!\Add1~6_combout\ & (!\Add2~5\)))) # (!\Add0~6_combout\ & ((\Add1~6_combout\ & (!\Add2~5\)) # (!\Add1~6_combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Add0~6_combout\ & (!\Add1~6_combout\ & !\Add2~5\)) # (!\Add0~6_combout\ & ((!\Add2~5\) # (!\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: IOIBUF_X0_Y31_N15
\Amassar_time[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Amassar_time(4),
	o => \Amassar_time[4]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\Levedar_time[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Levedar_time(4),
	o => \Levedar_time[4]~input_o\);

-- Location: LCCOMB_X2_Y32_N18
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Amassar_time[4]~input_o\ $ (\Levedar_time[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Amassar_time[4]~input_o\ & ((\Levedar_time[4]~input_o\) # (!\Add0~7\))) # (!\Amassar_time[4]~input_o\ & (\Levedar_time[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Amassar_time[4]~input_o\,
	datab => \Levedar_time[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: IOIBUF_X0_Y25_N15
\Cozer_time[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cozer_time(4),
	o => \Cozer_time[4]~input_o\);

-- Location: LCCOMB_X3_Y32_N16
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Cozer_time[4]~input_o\ & (\Add1~7\ $ (GND))) # (!\Cozer_time[4]~input_o\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\Cozer_time[4]~input_o\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cozer_time[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X3_Y32_N28
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add0~8_combout\ $ (\Add1~8_combout\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Add0~8_combout\ & ((\Add1~8_combout\) # (!\Add2~7\))) # (!\Add0~8_combout\ & (\Add1~8_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: IOIBUF_X0_Y25_N22
\Levedar_time[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Levedar_time(5),
	o => \Levedar_time[5]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\Amassar_time[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Amassar_time(5),
	o => \Amassar_time[5]~input_o\);

-- Location: LCCOMB_X2_Y32_N20
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Levedar_time[5]~input_o\ $ (\Add0~9\ $ (\Amassar_time[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Levedar_time[5]~input_o\,
	datad => \Amassar_time[5]~input_o\,
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: IOIBUF_X0_Y33_N22
\Cozer_time[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cozer_time(5),
	o => \Cozer_time[5]~input_o\);

-- Location: LCCOMB_X3_Y32_N18
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (\Cozer_time[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Cozer_time[5]~input_o\,
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X3_Y32_N30
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = \Add0~10_combout\ $ (\Add2~9\ $ (\Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => \Add1~10_combout\,
	cin => \Add2~9\,
	combout => \Add2~10_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y32_N15
\Exp_time~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Exp_time,
	o => \Exp_time~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\Start_stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start_stop,
	o => \Start_stop~input_o\);

-- Location: LCCOMB_X1_Y32_N10
\Current_State.xIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Current_State.xIn~0_combout\ = (\Current_State.xIn~q\) # (\Start_stop~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Current_State.xIn~q\,
	datad => \Start_stop~input_o\,
	combout => \Current_State.xIn~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X1_Y32_N11
\Current_State.xIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Current_State.xIn~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.xIn~q\);

-- Location: LCCOMB_X1_Y32_N28
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Start_stop~input_o\ & !\Current_State.xIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start_stop~input_o\,
	datad => \Current_State.xIn~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X2_Y32_N26
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\Exp_time~input_o\ & ((\Current_State.Final_state~q\))) # (!\Exp_time~input_o\ & (\Current_State.Amassar_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Exp_time~input_o\,
	datab => \Selector0~0_combout\,
	datac => \Current_State.Amassar_state~q\,
	datad => \Current_State.Final_state~q\,
	combout => \Selector0~1_combout\);

-- Location: FF_X2_Y32_N9
\Current_State.Amassar_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector0~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.Amassar_state~q\);

-- Location: FF_X2_Y32_N31
\Current_State.Levedar_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Current_State.Amassar_state~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Exp_time~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.Levedar_state~q\);

-- Location: FF_X2_Y32_N23
\Current_State.Cozer_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Current_State.Levedar_state~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Exp_time~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.Cozer_state~q\);

-- Location: FF_X2_Y32_N7
\Current_State.Final_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Current_State.Cozer_state~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Exp_time~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Current_State.Final_state~q\);

-- Location: LCCOMB_X2_Y32_N2
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Current_State.Final_state~q\ & ((\Current_State.Levedar_state~q\) # (!\Current_State.Cozer_state~q\))) # (!\Current_State.Final_state~q\ & (!\Current_State.Cozer_state~q\ & \Current_State.Levedar_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.Final_state~q\,
	datac => \Current_State.Cozer_state~q\,
	datad => \Current_State.Levedar_state~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X2_Y32_N30
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = \Current_State.Final_state~q\ $ (\Current_State.Cozer_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.Final_state~q\,
	datad => \Current_State.Cozer_state~q\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X3_Y32_N4
\Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\Selector9~0_combout\ & (((\Selector9~1_combout\)))) # (!\Selector9~0_combout\ & ((\Selector9~1_combout\ & (\TExtra[0]~input_o\)) # (!\Selector9~1_combout\ & ((\Levedar_time[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TExtra[0]~input_o\,
	datab => \Levedar_time[0]~input_o\,
	datac => \Selector9~0_combout\,
	datad => \Selector9~1_combout\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X3_Y32_N6
\Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (\Selector9~0_combout\ & ((\Selector9~2_combout\ & (\Amassar_time[0]~input_o\)) # (!\Selector9~2_combout\ & ((\Cozer_time[0]~input_o\))))) # (!\Selector9~0_combout\ & (((\Selector9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Amassar_time[0]~input_o\,
	datab => \Selector9~0_combout\,
	datac => \Cozer_time[0]~input_o\,
	datad => \Selector9~2_combout\,
	combout => \Selector9~3_combout\);

-- Location: LCCOMB_X1_Y32_N0
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Exp_time~input_o\ & \Current_State.xIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Exp_time~input_o\,
	datad => \Current_State.xIn~q\,
	combout => \Selector10~0_combout\);

-- Location: CLKCTRL_G3
\Selector10~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector10~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector10~0clkctrl_outclk\);

-- Location: LCCOMB_X3_Y32_N0
\Timer_Value[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- Timer_Value(0) = (GLOBAL(\Selector10~0clkctrl_outclk\) & (\Selector9~3_combout\)) # (!GLOBAL(\Selector10~0clkctrl_outclk\) & ((Timer_Value(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~3_combout\,
	datab => Timer_Value(0),
	datac => \Selector10~0clkctrl_outclk\,
	combout => Timer_Value(0));

-- Location: LCCOMB_X2_Y32_N28
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Selector9~1_combout\ & (\Selector9~0_combout\)) # (!\Selector9~1_combout\ & ((\Selector9~0_combout\ & ((\Cozer_time[1]~input_o\))) # (!\Selector9~0_combout\ & (\Levedar_time[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~1_combout\,
	datab => \Selector9~0_combout\,
	datac => \Levedar_time[1]~input_o\,
	datad => \Cozer_time[1]~input_o\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X2_Y32_N24
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\ & ((\Amassar_time[1]~input_o\) # ((!\Selector9~1_combout\)))) # (!\Selector8~0_combout\ & (((\Selector9~1_combout\ & \TExtra[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Amassar_time[1]~input_o\,
	datab => \Selector8~0_combout\,
	datac => \Selector9~1_combout\,
	datad => \TExtra[1]~input_o\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X2_Y32_N8
\Timer_Value[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- Timer_Value(1) = (GLOBAL(\Selector10~0clkctrl_outclk\) & ((\Selector8~1_combout\))) # (!GLOBAL(\Selector10~0clkctrl_outclk\) & (Timer_Value(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Timer_Value(1),
	datab => \Selector8~1_combout\,
	datad => \Selector10~0clkctrl_outclk\,
	combout => Timer_Value(1));

-- Location: LCCOMB_X2_Y32_N4
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Selector9~0_combout\ & (((\Selector9~1_combout\)))) # (!\Selector9~0_combout\ & ((\Selector9~1_combout\ & ((\TExtra[2]~input_o\))) # (!\Selector9~1_combout\ & (\Levedar_time[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Levedar_time[2]~input_o\,
	datab => \Selector9~0_combout\,
	datac => \Selector9~1_combout\,
	datad => \TExtra[2]~input_o\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X2_Y32_N0
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector9~0_combout\ & ((\Selector7~0_combout\ & (\Amassar_time[2]~input_o\)) # (!\Selector7~0_combout\ & ((\Cozer_time[2]~input_o\))))) # (!\Selector9~0_combout\ & (((\Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Amassar_time[2]~input_o\,
	datab => \Selector9~0_combout\,
	datac => \Cozer_time[2]~input_o\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X2_Y32_N22
\Timer_Value[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- Timer_Value(2) = (GLOBAL(\Selector10~0clkctrl_outclk\) & ((\Selector7~1_combout\))) # (!GLOBAL(\Selector10~0clkctrl_outclk\) & (Timer_Value(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Timer_Value(2),
	datab => \Selector7~1_combout\,
	datad => \Selector10~0clkctrl_outclk\,
	combout => Timer_Value(2));

-- Location: LCCOMB_X1_Y32_N4
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Current_State.Levedar_state~q\ & ((\Cozer_time[3]~input_o\))) # (!\Current_State.Levedar_state~q\ & (\Levedar_time[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.Levedar_state~q\,
	datab => \Levedar_time[3]~input_o\,
	datad => \Cozer_time[3]~input_o\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X1_Y32_N14
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Current_State.Final_state~q\ & (((\Amassar_time[3]~input_o\)))) # (!\Current_State.Final_state~q\ & (!\Current_State.Cozer_state~q\ & (\Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.Cozer_state~q\,
	datab => \Selector6~0_combout\,
	datac => \Amassar_time[3]~input_o\,
	datad => \Current_State.Final_state~q\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X1_Y32_N30
\Timer_Value[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- Timer_Value(3) = (GLOBAL(\Selector10~0clkctrl_outclk\) & ((\Selector6~1_combout\))) # (!GLOBAL(\Selector10~0clkctrl_outclk\) & (Timer_Value(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Timer_Value(3),
	datac => \Selector10~0clkctrl_outclk\,
	datad => \Selector6~1_combout\,
	combout => Timer_Value(3));

-- Location: LCCOMB_X1_Y32_N24
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Current_State.Levedar_state~q\ & (\Cozer_time[4]~input_o\)) # (!\Current_State.Levedar_state~q\ & ((\Levedar_time[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.Levedar_state~q\,
	datac => \Cozer_time[4]~input_o\,
	datad => \Levedar_time[4]~input_o\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X1_Y32_N20
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Current_State.Final_state~q\ & (((\Amassar_time[4]~input_o\)))) # (!\Current_State.Final_state~q\ & (!\Current_State.Cozer_state~q\ & (\Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.Cozer_state~q\,
	datab => \Selector5~0_combout\,
	datac => \Amassar_time[4]~input_o\,
	datad => \Current_State.Final_state~q\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X1_Y32_N16
\Timer_Value[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- Timer_Value(4) = (GLOBAL(\Selector10~0clkctrl_outclk\) & ((\Selector5~1_combout\))) # (!GLOBAL(\Selector10~0clkctrl_outclk\) & (Timer_Value(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Timer_Value(4),
	datac => \Selector10~0clkctrl_outclk\,
	datad => \Selector5~1_combout\,
	combout => Timer_Value(4));

-- Location: LCCOMB_X2_Y32_N6
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Current_State.Levedar_state~q\ & ((\Cozer_time[5]~input_o\))) # (!\Current_State.Levedar_state~q\ & (\Levedar_time[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Levedar_time[5]~input_o\,
	datab => \Cozer_time[5]~input_o\,
	datad => \Current_State.Levedar_state~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X1_Y32_N12
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Current_State.Final_state~q\ & (((\Amassar_time[5]~input_o\)))) # (!\Current_State.Final_state~q\ & (\Selector4~0_combout\ & (!\Current_State.Cozer_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \Current_State.Cozer_state~q\,
	datac => \Amassar_time[5]~input_o\,
	datad => \Current_State.Final_state~q\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X1_Y32_N8
\Timer_Value[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- Timer_Value(5) = (GLOBAL(\Selector10~0clkctrl_outclk\) & ((\Selector4~1_combout\))) # (!GLOBAL(\Selector10~0clkctrl_outclk\) & (Timer_Value(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Timer_Value(5),
	datac => \Selector10~0clkctrl_outclk\,
	datad => \Selector4~1_combout\,
	combout => Timer_Value(5));

-- Location: LCCOMB_X1_Y32_N18
\LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\Current_State.Final_state~q\) # (!\Current_State.xIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Current_State.Final_state~q\,
	datad => \Current_State.xIn~q\,
	combout => \LEDR~0_combout\);

ww_New_time1(0) <= \New_time1[0]~output_o\;

ww_New_time1(1) <= \New_time1[1]~output_o\;

ww_New_time1(2) <= \New_time1[2]~output_o\;

ww_New_time1(3) <= \New_time1[3]~output_o\;

ww_New_time1(4) <= \New_time1[4]~output_o\;

ww_New_time1(5) <= \New_time1[5]~output_o\;

ww_Value_time(0) <= \Value_time[0]~output_o\;

ww_Value_time(1) <= \Value_time[1]~output_o\;

ww_Value_time(2) <= \Value_time[2]~output_o\;

ww_Value_time(3) <= \Value_time[3]~output_o\;

ww_Value_time(4) <= \Value_time[4]~output_o\;

ww_Value_time(5) <= \Value_time[5]~output_o\;

ww_Enable_timer <= \Enable_timer~output_o\;

ww_Amassar <= \Amassar~output_o\;

ww_Levedar <= \Levedar~output_o\;

ww_Cozer <= \Cozer~output_o\;

ww_LEDR <= \LEDR~output_o\;
END structure;


