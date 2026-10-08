library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AddSub4 is
	port(a, b : in std_logic_vector(3 downto 0);
		sub : in std_logic;
		s : out std_logic_vector(3 downto 0);
		cout : out std_logic);
end AddSub4;

architecture Behavioral of AddSub4 is
	signal s_a, s_b, s_s : unsigned(4 downto 0);
begin
	s_a <= '0' & unsigned(a); -- '0's para capturar o cout do
	s_b <= '0' & unsigned(b); -- do bit mais significativo
	s_s <= (s_a + s_b) when (sub = '0') else
				(s_a - s_b);
	s <= std_logic_vector(s_s(3 downto 0));
	cout <= s_s(4);
end Behavioral; 

--architecture comportamento of AddSub4 is
	--signal carryout : std_logic_vector(2 downto 0);
	--signal s_b : std_logic_vector(3 downto 0);
	--signal cin : std_logic;
--begin
	--s_b <= b when (sub = '0') else not b;
	--cin <= sub;
	--bit0: entity work.FullAdder(Behavioral)
		--port map(a => a(0),
					--b => s_b(0),
					--cin => cin,
					--s => s(0),
					--cout => carryOut(0));
	--bit1: entity work.FullAdder(Behavioral)
		--port map(a => a(1),
					--b => s_b(1),
					--cin => carryout(0),
					--s => s(1),
					--cout => carryout(1));
	--bit2: entity work.FullAdder(Behavioral)
		--port map(a => a(2),
					--b => s_b(2),
					--cin => carryout(1),
					--s => s(2),
					--cout => carryout(2));
	--bit3: entity work.FullAdder(Behavioral)
		--port map(a => a(3),
					--b => s_b(3),
					--cin => carryout(2),
					--s => s(3),
					--cout => cout);
--end comportamento;