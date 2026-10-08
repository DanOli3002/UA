library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ShiftRegister8 is
	port ( clk : in std_logic;
			 dataOut : out std_logic_vector(7 downto 0);
			 sin : in std_logic;
			 sel : in std_logic;
			 reset : in std_logic);
end ShiftRegister8;

architecture comportamento of ShiftRegister8 is
signal S_Q : std_logic_vector(7 downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then 
			if (reset = '0') then
				S_Q <= (others => '0');
			else
			if (sel = '0') then
				S_Q <= S_Q(6 downto 0) & sin;
			else 
				S_Q <= sin & S_Q(7 downto 1);
		end if;
		end if;
		end if;
	end process;
	
	dataOut <= S_Q;
	
end comportamento;		
			