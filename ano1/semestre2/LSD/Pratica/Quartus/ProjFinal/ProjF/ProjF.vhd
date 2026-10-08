library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ProjF is
	port
	(
		CLOCK_50 : in    std_logic;
		SW       : in    std_logic_vector(0 downto 0);
		KEY      : in    std_logic_vector(2 downto 0);
		LEDG     : out   std_logic_vector(2 downto 0);
		LEDR     : out   std_logic_vector(0 downto 0);
		HEX0     : out   std_logic_vector(6 downto 0);
		HEX1     : out   std_logic_vector(6 downto 0);
		HEX2     : out   std_logic_vector(6 downto 0);
		HEX4     : out   std_logic_vector(6 downto 0)
	);
end ProjF;

architecture Shell of ProjF is

	signal s_clk_def, s_reset, s_start_stop, s_exp_time, s_time_adj, s_time_adj_out, s_start_stop_out : std_logic;
	signal s_amassar, s_levedar, s_cozer, s_new_time, d_new_time, s_time : std_logic_vector(5 downto 0);
	signal s_extra_time                                 : std_logic_vector(2 downto 0);
	signal display0     : std_logic_vector(3 downto 0) := "0100";
	signal display1     : std_logic_vector(3 downto 0) := "0010";

begin

	s_clk_def    <= CLOCK_50;
	s_reset      <= not KEY(2);
	s_start_stop <= not KEY(1);
	s_time_adj   <= not KEY(0);
	
	Meu_Debounce : entity work.DebounceUnit(Behavioral)
	port map
	(
		refClk => s_clk_def,
		dirtyIn => s_time_adj,
		pulsedOut => s_time_adj_out
	);
	
	Meu_Register : entity work.Register1(Behav)
	port map
	(
		rst            => s_reset,
		clk            => s_clk_def,
		P1_P2          => SW(0),
		Time_adj       => s_time_adj_out,
		Start_stop     => KEY(1),
		Extra_time     => s_extra_time,
		Cozer_time     => s_cozer,
		Levedar_time   => s_levedar,
		Amassar_time   => s_amassar,
		Start_stop_out => s_start_stop_out
		);
	
	Meu_FSM : entity work.FSM(Behav)
	port map
	(
		rst          => s_reset,
		clk          => s_clk_def,
		TExtra       => s_extra_time,
		Start_stop   => s_start_stop_out,
		Amassar_time => s_amassar,
		Levedar_time => s_levedar,
		Cozer_time   => s_cozer,
		New_time1    => s_time,
		Value_time   => s_new_time,
		LEDR         => LEDR(0),
		Amassar      => LEDG(0),
		Levedar      => LEDG(1),
		Cozer        => LEDG(2),
		Exp_time     => s_exp_time
	);
	
	Meu_Timer_FSM : entity work.Timer_FSM(Behav)
	port map
	(
		clk          => s_clk_def,
		rst          => s_reset,
		Enable_timer => s_start_stop_out,
		New_time     => s_time,
		Value_time   => s_amassar,
		Exp_time     => s_exp_time,
		Decrement_New_Time => d_new_time,
		Dec                => HEX2
	);
	
	Meu_DivideTimer : entity work.Divide_Time(Behav)
	port map
	(
		Value_time => d_new_time,
		Display0 => display0,
		Display1 => display1
	);
	
	Meu_Display_Select : entity work.Display_Select(Behav)
	port map
	(
		binInput => display0,
		segments => HEX0
	);
	
	Meu_Display_Select2 : entity work.Display_Select(Behav)
	port map
	(
		binInput => display1,
		segments => HEX1
	);
	
	Meu_Display_Select3 : entity work.Display_Select(Behav)
	port map
	(
		binInput => '0' & s_extra_time,
		segments => HEX4
	);
	
end Shell;
