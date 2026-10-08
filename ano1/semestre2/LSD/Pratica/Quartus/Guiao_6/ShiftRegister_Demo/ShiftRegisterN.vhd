library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegisterN is
	generic(size : positive := 4);
	port(clk : in std_logic;
			dataOut : out std_logic_vector (size - 1 downto 0);
			sin : in std_logic_vector(0 downto 0));
end ShiftRegisterN;

architecture BehavioralShiftRegisterN of ShiftRegisterN is
signal s_Q : std_logic_vector (size - 1 downto 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			s_Q <= s_Q (size - 2 downto 0) & sin;
		end if;
	end process;
	dataOut <= s_Q;
end BehavioralShiftRegisterN;