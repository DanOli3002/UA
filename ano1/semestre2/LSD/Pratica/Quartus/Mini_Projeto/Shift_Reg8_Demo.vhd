library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; 

entity Shift_Reg8_Demo is
	generic (factor10 : positive := 100000000;
				 factor5 : positive := 50000000);
				
	port (SIN :  in std_logic;
			dataOut : out std_logic_vector(7 downto 0);
			clk : in std_logic;
			sel : in std_logic;
			reset : in std_logic);
end Shift_Reg8_Demo;

architecture shift of Shift_Reg8_Demo is
signal l_clk10 : std_logic;
signal l_clk5 : std_logic;
signal l_clk : std_logic;
signal l_sel : std_logic;
begin

	shift8 : entity work.ShiftRegister8(comportamento)
								port map (clk => l_clk,
											 dataOut => dataOut,
											 sin => SIN,
											 sel => l_sel,
											 reset => reset);
	
	flop : entity work.FlipFlopD(Behavioral)
							 port map (clk => sel,
										  d => not l_sel,
										  q => l_sel);	  
										  
	divider5 : entity work.ClkDivider_5(Behavioral)
								 generic map ( divFactor => factor5)
								 port map (clkIn => clk,
											  clkOut => l_clk5);
											  
	divider10 : entity work.ClkDivider10(Behavioral)
								 generic map ( divFactor => factor10)
								 port map (clkIn => clk,
											  clkOut => l_clk10);
											 
	mux2_1 : entity work.Mux2_1(comportamento)
								port map(input0 => l_clk5,
											input1 => l_clk10,
											sel => l_sel,
											output => l_clk);
						
end shift;

