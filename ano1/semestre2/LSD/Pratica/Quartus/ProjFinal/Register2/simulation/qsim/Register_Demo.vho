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

-- DATE "05/29/2023 18:13:24"

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

ENTITY 	Register1 IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	Start_stop : IN std_logic;
	P1_P2 : IN std_logic;
	Time_adj : IN std_logic;
	Extra_time : OUT std_logic_vector(2 DOWNTO 0);
	Cozer_time : OUT std_logic_vector(5 DOWNTO 0);
	Levedar_time : OUT std_logic_vector(5 DOWNTO 0);
	Amassar_time : OUT std_logic_vector(5 DOWNTO 0);
	Start_stop_out : OUT std_logic
	);
END Register1;

-- Design Ports Information
-- Extra_time[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Extra_time[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Extra_time[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[2]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cozer_time[5]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[1]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Levedar_time[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amassar_time[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start_stop_out	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_adj	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P1_P2	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start_stop	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Register1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Start_stop : std_logic;
SIGNAL ww_P1_P2 : std_logic;
SIGNAL ww_Time_adj : std_logic;
SIGNAL ww_Extra_time : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Cozer_time : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Levedar_time : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Amassar_time : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Start_stop_out : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Extra_time[0]~output_o\ : std_logic;
SIGNAL \Extra_time[1]~output_o\ : std_logic;
SIGNAL \Extra_time[2]~output_o\ : std_logic;
SIGNAL \Cozer_time[0]~output_o\ : std_logic;
SIGNAL \Cozer_time[1]~output_o\ : std_logic;
SIGNAL \Cozer_time[2]~output_o\ : std_logic;
SIGNAL \Cozer_time[3]~output_o\ : std_logic;
SIGNAL \Cozer_time[4]~output_o\ : std_logic;
SIGNAL \Cozer_time[5]~output_o\ : std_logic;
SIGNAL \Levedar_time[0]~output_o\ : std_logic;
SIGNAL \Levedar_time[1]~output_o\ : std_logic;
SIGNAL \Levedar_time[2]~output_o\ : std_logic;
SIGNAL \Levedar_time[3]~output_o\ : std_logic;
SIGNAL \Levedar_time[4]~output_o\ : std_logic;
SIGNAL \Levedar_time[5]~output_o\ : std_logic;
SIGNAL \Amassar_time[0]~output_o\ : std_logic;
SIGNAL \Amassar_time[1]~output_o\ : std_logic;
SIGNAL \Amassar_time[2]~output_o\ : std_logic;
SIGNAL \Amassar_time[3]~output_o\ : std_logic;
SIGNAL \Amassar_time[4]~output_o\ : std_logic;
SIGNAL \Amassar_time[5]~output_o\ : std_logic;
SIGNAL \Start_stop_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Time_adj~input_o\ : std_logic;
SIGNAL \i_Tadj~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \i_Tadj~q\ : std_logic;
SIGNAL \counter[1]~1_combout\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[2]~2_combout\ : std_logic;
SIGNAL \counter[0]~0_combout\ : std_logic;
SIGNAL \i_TExtra~0_combout\ : std_logic;
SIGNAL \i_TExtra~1_combout\ : std_logic;
SIGNAL \i_TExtra~2_combout\ : std_logic;
SIGNAL \P1_P2~input_o\ : std_logic;
SIGNAL \i_P1_P2~feeder_combout\ : std_logic;
SIGNAL \i_P1_P2~q\ : std_logic;
SIGNAL \Start_stop~input_o\ : std_logic;
SIGNAL \i_Start_stop~feeder_combout\ : std_logic;
SIGNAL \i_Start_stop~q\ : std_logic;
SIGNAL \i_Start_stop_out~feeder_combout\ : std_logic;
SIGNAL \i_Start_stop_out~q\ : std_logic;
SIGNAL counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_i_P1_P2~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_Start_stop <= Start_stop;
ww_P1_P2 <= P1_P2;
ww_Time_adj <= Time_adj;
Extra_time <= ww_Extra_time;
Cozer_time <= ww_Cozer_time;
Levedar_time <= ww_Levedar_time;
Amassar_time <= ww_Amassar_time;
Start_stop_out <= ww_Start_stop_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_i_P1_P2~q\ <= NOT \i_P1_P2~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y47_N2
\Extra_time[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_TExtra~0_combout\,
	devoe => ww_devoe,
	o => \Extra_time[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\Extra_time[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_TExtra~1_combout\,
	devoe => ww_devoe,
	o => \Extra_time[1]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\Extra_time[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_TExtra~2_combout\,
	devoe => ww_devoe,
	o => \Extra_time[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Cozer_time[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Cozer_time[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\Cozer_time[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Cozer_time[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Cozer_time[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Cozer_time[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\Cozer_time[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Cozer_time[3]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Cozer_time[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Cozer_time[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\Cozer_time[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Cozer_time[5]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Levedar_time[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Levedar_time[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\Levedar_time[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Levedar_time[1]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\Levedar_time[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_i_P1_P2~q\,
	devoe => ww_devoe,
	o => \Levedar_time[2]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\Levedar_time[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_P1_P2~q\,
	devoe => ww_devoe,
	o => \Levedar_time[3]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\Levedar_time[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Levedar_time[4]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Levedar_time[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Levedar_time[5]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\Amassar_time[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_P1_P2~q\,
	devoe => ww_devoe,
	o => \Amassar_time[0]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\Amassar_time[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Amassar_time[1]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\Amassar_time[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_P1_P2~q\,
	devoe => ww_devoe,
	o => \Amassar_time[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Amassar_time[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Amassar_time[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Amassar_time[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Amassar_time[4]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\Amassar_time[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Amassar_time[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\Start_stop_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_Start_stop_out~q\,
	devoe => ww_devoe,
	o => \Start_stop_out~output_o\);

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

-- Location: IOIBUF_X0_Y43_N15
\Time_adj~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Time_adj,
	o => \Time_adj~input_o\);

-- Location: LCCOMB_X1_Y44_N22
\i_Tadj~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_Tadj~feeder_combout\ = \Time_adj~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Time_adj~input_o\,
	combout => \i_Tadj~feeder_combout\);

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

-- Location: FF_X1_Y44_N23
i_Tadj : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_Tadj~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_Tadj~q\);

-- Location: LCCOMB_X1_Y44_N18
\counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~1_combout\ = (\i_Tadj~q\ & (counter(1) $ (((counter(0) & !counter(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Tadj~q\,
	datab => counter(0),
	datac => counter(1),
	datad => counter(2),
	combout => \counter[1]~1_combout\);

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

-- Location: FF_X1_Y44_N19
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X1_Y44_N2
\counter[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~2_combout\ = (\i_Tadj~q\ & ((counter(2)) # ((counter(1) & counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Tadj~q\,
	datab => counter(1),
	datac => counter(2),
	datad => counter(0),
	combout => \counter[2]~2_combout\);

-- Location: FF_X1_Y44_N3
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X1_Y44_N28
\counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~0_combout\ = (\i_Tadj~q\ & ((counter(2) & ((counter(0)) # (!counter(1)))) # (!counter(2) & (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Tadj~q\,
	datab => counter(2),
	datac => counter(0),
	datad => counter(1),
	combout => \counter[0]~0_combout\);

-- Location: FF_X1_Y44_N29
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X1_Y44_N20
\i_TExtra~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_TExtra~0_combout\ = (\i_Tadj~q\ & counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Tadj~q\,
	datac => counter(0),
	combout => \i_TExtra~0_combout\);

-- Location: LCCOMB_X1_Y44_N0
\i_TExtra~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_TExtra~1_combout\ = (\i_Tadj~q\ & counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Tadj~q\,
	datac => counter(1),
	combout => \i_TExtra~1_combout\);

-- Location: LCCOMB_X1_Y44_N24
\i_TExtra~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_TExtra~2_combout\ = (\i_Tadj~q\ & counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Tadj~q\,
	datac => counter(2),
	combout => \i_TExtra~2_combout\);

-- Location: IOIBUF_X0_Y44_N22
\P1_P2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P1_P2,
	o => \P1_P2~input_o\);

-- Location: LCCOMB_X1_Y44_N30
\i_P1_P2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_P1_P2~feeder_combout\ = \P1_P2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P1_P2~input_o\,
	combout => \i_P1_P2~feeder_combout\);

-- Location: FF_X1_Y44_N31
i_P1_P2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_P1_P2~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_P1_P2~q\);

-- Location: IOIBUF_X0_Y44_N1
\Start_stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start_stop,
	o => \Start_stop~input_o\);

-- Location: LCCOMB_X1_Y44_N6
\i_Start_stop~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_Start_stop~feeder_combout\ = \Start_stop~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Start_stop~input_o\,
	combout => \i_Start_stop~feeder_combout\);

-- Location: FF_X1_Y44_N7
i_Start_stop : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_Start_stop~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_Start_stop~q\);

-- Location: LCCOMB_X1_Y44_N16
\i_Start_stop_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_Start_stop_out~feeder_combout\ = \i_Start_stop~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Start_stop~q\,
	combout => \i_Start_stop_out~feeder_combout\);

-- Location: FF_X1_Y44_N17
i_Start_stop_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_Start_stop_out~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_Start_stop_out~q\);

ww_Extra_time(0) <= \Extra_time[0]~output_o\;

ww_Extra_time(1) <= \Extra_time[1]~output_o\;

ww_Extra_time(2) <= \Extra_time[2]~output_o\;

ww_Cozer_time(0) <= \Cozer_time[0]~output_o\;

ww_Cozer_time(1) <= \Cozer_time[1]~output_o\;

ww_Cozer_time(2) <= \Cozer_time[2]~output_o\;

ww_Cozer_time(3) <= \Cozer_time[3]~output_o\;

ww_Cozer_time(4) <= \Cozer_time[4]~output_o\;

ww_Cozer_time(5) <= \Cozer_time[5]~output_o\;

ww_Levedar_time(0) <= \Levedar_time[0]~output_o\;

ww_Levedar_time(1) <= \Levedar_time[1]~output_o\;

ww_Levedar_time(2) <= \Levedar_time[2]~output_o\;

ww_Levedar_time(3) <= \Levedar_time[3]~output_o\;

ww_Levedar_time(4) <= \Levedar_time[4]~output_o\;

ww_Levedar_time(5) <= \Levedar_time[5]~output_o\;

ww_Amassar_time(0) <= \Amassar_time[0]~output_o\;

ww_Amassar_time(1) <= \Amassar_time[1]~output_o\;

ww_Amassar_time(2) <= \Amassar_time[2]~output_o\;

ww_Amassar_time(3) <= \Amassar_time[3]~output_o\;

ww_Amassar_time(4) <= \Amassar_time[4]~output_o\;

ww_Amassar_time(5) <= \Amassar_time[5]~output_o\;

ww_Start_stop_out <= \Start_stop_out~output_o\;
END structure;


