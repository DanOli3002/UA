library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FlipFlopD_2 is
	port(clk : in std_logic;
		d, set, reset : in std_logic;
		q : out std_logic);
end FlipFlopD_2;

architecture Behavioral_2 of FlipFlopD_2 is
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
			q <= '0';
			else if (set = '1' and reset = '0') then
			q <= '1';
			else q <= '1';
			end if;
			end if;
		end if;
	end process;
end Behavioral_2; 