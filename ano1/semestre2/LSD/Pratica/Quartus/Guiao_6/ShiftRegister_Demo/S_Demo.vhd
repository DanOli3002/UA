library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity S_Demo is
	generic(N : positive := 8);
	port(SW : in std_logic_vector(0 downto 0);
				CLOCK_50 : in std_logic;
				LEDR : out std_logic_vector (N-1 downto 0));
end S_Demo;

architecture BehavioralS_Demo of S_Demo is
begin
	shift : entity WORK.ShiftRegister_Demo(BehavioralShiftRegister_Demo)
					port map(sin => SW,
								clk => CLOCK_50,
								dataOut => LEDR);
end BehavioralS_Demo;