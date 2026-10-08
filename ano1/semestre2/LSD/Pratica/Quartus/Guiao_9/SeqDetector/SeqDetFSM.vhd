library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(clk		: in  std_logic;
		  user	: in  std_logic;
		  seq	: out std_logic);
end SeqDetFSM;

architecture MealyArch of SeqDetFSM is

	type TState is (A, B, C, D);
	signal s_currentState, s_nextState : TState;
	
begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			s_currentState <= s_nextState;
		end if;
	end process;
	
	comb_proc : process(s_currentState, user)
	begin
		seq <= '0';
		case (s_currentState) is
		when A =>
			if (user = '1') then
				s_nextState <= B;
			elsif (user = '0') then
				s_nextState <= A;
			end if;

		when B =>
			if (user = '1') then
				s_nextState <= B;
			elsif (user = '0') then
				s_nextState <= C;
			end if;
			
		when C =>
			if (user = '1') then
				s_nextState <= B;
			elsif (user = '0') then
				s_nextState <= D;
			end if;
				
		when D =>
			if (user = '1') then
				s_nextState <= B;
				seq <= '1';
			elsif (user = '0') then
				s_nextState <= A;
			end if;
			
		when others =>
			s_nextState <= A;
		end case;
	end process;
end MealyArch;