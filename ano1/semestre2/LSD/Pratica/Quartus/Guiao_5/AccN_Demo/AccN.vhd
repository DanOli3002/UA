library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AccN is
	generic (N : positive := 8);
	port(clk : in std_logic;
			enable : in std_logic;
			reset : in std_logic;
			dataIn : in std_logic_vector((N-1) downto 0);
			dataOut : out std_logic_vector((N-1) downto 0));
end AccN;

architecture BehavioralAccN of AccN is
signal s_adderOut, s_regOut : std_logic_vector((N-1) downto 0);
begin
	adder : entity WORK.AdderN(BehavioralAdderN)
					generic map(N => N)
					port map(operand0 => dataIn,
							operand1 => s_regOut,
							result => s_adderOut);
							
	reg : entity WORK.RegN(BehavioralRegN)
					generic map(N => N)
					port map(dataIn => s_adderOut,
							enable => enable,
							reset => reset,
							clk => clk,
							dataOut => s_regOut);
							
							dataOut <= S_regOut;
end BehavioralAccN;