library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FSM is
	port (
		Start_stop, clk, rst, Exp_time              : in  std_logic;
		TExtra                                      : in  std_logic_vector(2 downto 0);
		Cozer_time, Levedar_time, Amassar_time      : in  std_logic_vector(5 downto 0);
		New_time1, Value_time						     : out std_logic_vector(5 downto 0);
		Enable_timer, Amassar, Levedar, Cozer, LEDR : out std_logic
	);
end FSM;

architecture Behav of FSM is

	type State_Type is (xIn, Amassar_state, Levedar_state, Cozer_state, Final_state);
	signal Current_State, Next_State: State_Type;
	signal Amassar_Led, Levedar_Led, Cozer_Led : std_logic;
	signal Timer_Value, New_time               : std_logic_vector(5 downto 0);

begin
	process (clk, rst)
	begin
		if rst = '1' then
			Current_State    <= xIn;
			Amassar_Led      <= '0';
			Levedar_Led      <= '0';
			Cozer_Led        <= '0';
			-- Timer_Value      <= (others => '0');
			-- Last_Timer_Value <= (others => '0');
		elsif rising_edge(clk) then
			Current_State    <= Next_State;
			-- Last_Timer_Value <= Timer_Value;
		end if;
	end process;

	process (Current_State, Exp_time)
	begin
		case Current_State is
			when xIn =>
				if Start_stop = '1' then
					Next_State  <= Amassar_state;
					Timer_Value    <= Amassar_time;
				else
					Next_State  <= xIn;
				end if;
			when Amassar_state =>
				if Exp_time = '1' then
					Next_State  <= Levedar_state;
					Timer_Value    <= Levedar_time;
				else
					Next_State  <= Amassar_state;
				end if;
			when Levedar_state =>
				if Exp_time = '1' then
					Next_State  <= Cozer_state;
					Timer_Value    <= Cozer_time;
					
				else
					Next_State  <= Levedar_state;
				end if;
			when Cozer_state =>
				if Exp_time = '1' then
					Next_State  <= Final_state;
					Timer_Value <= "000" & TExtra;
				else
					Next_State  <= Cozer_state;
				end if;
			when Final_state =>
				if Exp_time = '1' then
					Next_State  <= Amassar_state;
					Timer_Value <= Amassar_time;
				else
					Next_State  <= Final_state;
				end if;
		end case;
	end process;

	process (Next_State)
	begin
		case Next_State is
			when xIn =>
				Amassar_Led <= '0';
				Levedar_Led <= '0';
				Cozer_Led   <= '0';
			when Amassar_state =>
				Amassar_Led <= '1';
				Levedar_Led <= '0';
				Cozer_Led   <= '0';
			when Levedar_state =>
				Amassar_Led <= '0';
				Levedar_Led <= '1';
				Cozer_Led   <= '0';
			when Cozer_state =>
				Amassar_Led <= '0';
				Levedar_Led <= '0';
				Cozer_Led   <= '1';
			when Final_state =>
				Amassar_Led <= '0';
				Levedar_Led <= '0';
				Cozer_Led   <= '0';
		end case;
	end process;

	Amassar <= '1' when Current_State = Amassar_state else '0';
	Levedar <= '1' when Current_State = Levedar_state else '0';
	Cozer   <= '1' when Current_State = Cozer_state   else '0';
	LEDR    <= '0' when (Current_State = Final_state) or (Current_State = xIn) else '1';
	New_time <= std_logic_vector(unsigned(Amassar_time) + unsigned(Levedar_time) + unsigned(Cozer_time) + to_unsigned(to_integer(unsigned(TExtra)), 6));
	New_time1 <= New_time;
	Value_time <= Timer_Value;
	Enable_timer <= Start_stop;
end Behav;

