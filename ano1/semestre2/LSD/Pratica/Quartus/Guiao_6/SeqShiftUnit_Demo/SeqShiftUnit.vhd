library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SeqShiftUnit is
	generic(N : positive := 8);
	port(clk : in std_logic;
			dataIn : in std_logic_vector(N - 1 downto 0);
			siLeft : in std_logic;
			siRight : in std_logic;
			loadEn : in std_logic;
			rotate : in std_logic;
			dirLeft : in std_logic;
			shArith : in std_logic;
			dataOut : out std_logic_vector(N - 1 downto 0));
end SeqShiftUnit;

architecture Behavioral of SeqShiftUnit is
	signal s_shiftReg : std_logic_vector(N - 1 downto 0);
	signal n_dataIn : signed(N - 1  downto 0);
begin
	process(clk)
	begin
		if (falling_edge(clk)) then
			if (loadEn = '1') then
				s_shiftReg <= dataIn;
			elsif (rotate = '1') then
				if (dirLeft = '1') then
					s_shiftReg <= s_shiftReg(N - 2 downto 0) & s_shiftReg(N - 1);
				else
					s_shiftReg <= s_shiftReg(0) & s_shiftReg(N - 1 downto 1);
				end if;
				
			elsif (shArith = '1') then
			 if (dirLeft = '1') then
				s_dataIn <= s_shiftReg;
			--
			-- Complete o código aqui
			--
			end if;
		end if;
	end process;
	dataOut <= s_shiftReg;
end Behavioral;