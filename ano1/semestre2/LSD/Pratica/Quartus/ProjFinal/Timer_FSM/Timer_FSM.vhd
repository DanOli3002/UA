library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Timer_FSM is
	port(
		clk, rst, Enable_timer : in std_logic;
	   New_time, Value_time   : in std_logic_vector(5 downto 0);
	   Exp_time               : out std_logic;
	   Decrement_New_Time     : out std_logic_vector(5 downto 0);
		Dec                    : out std_logic_vector(6 downto 0)
	);
end Timer_FSM;

architecture Behav of Timer_FSM is

	signal Time_Exp                    : std_logic;
	signal Time_Value, Last_time_value : std_logic_vector(5 downto 0);
	signal reset                       : std_logic;
	signal Dec_New_Time                : std_logic_vector(5 downto 0);
    
begin
	process (clk)
	begin
		if rising_edge(clk) then
			reset <= rst;

			if reset = '1' then
				Time_Exp   <= '0';
				Time_Value <= (others => '0');
				Dec_New_Time <= (others => '0');
			else
				if Enable_timer = '1' then
					if Time_Value <= "000000" then
						Time_Exp <= '1';
					else
						Time_Exp <= '0';
						Time_Value <= std_logic_vector(unsigned(Time_Value) - 1);
					end if;
					Last_time_value <= Time_Value;

					if "000000" /= Dec_New_Time then
						Dec_New_Time <= std_logic_vector(unsigned(New_time) - 1);
					end if;
				else
					Dec_New_Time <= std_logic_vector(unsigned(New_time) - 1);
					Last_time_value <= Last_time_value;
					Dec <= "0110111";
				end if;
			end if;
		end if;
	end process;

	Exp_time <= Time_Exp;
	Decrement_New_Time <= Dec_New_Time;
 
end Behav;