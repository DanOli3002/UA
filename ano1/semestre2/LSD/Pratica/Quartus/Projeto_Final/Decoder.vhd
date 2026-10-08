library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Decoder is
	port(enable : in std_logic;
		pao : in std_logic;
		binInput : in std_logic_vector(5 downto 0);
		decOut_n0 : out std_logic_vector(6 downto 0);
		decOut_n1 : out std_logic_vector(6 downto 0);
		decOut_n2 : out std_logic_vector(6 downto 0));
end Decoder;

architecture Behavioral of Decoder is
begin
	decOut_n0 <= "1110110" when (enable = '0') else
					"1111001" when (binInput = "000001") else --1
					"0100100" when (binInput = "000010") else --2
					"0110000" when (binInput = "000011") else --3
					"0011001" when (binInput = "000100") else --4
					"0010010" when (binInput = "000101") else --5
					"0000010" when (binInput = "000110") else --6
					"1111000" when (binInput = "000111") else --7
					"0000000" when (binInput = "001000") else --8
					"0010000" when (binInput = "001001") else --9
					"1000000" when (binInput = "001010") else --0
					"1111001" when (binInput = "001011") else --1
					"0100100" when (binInput = "001100") else --2
					"0110000" when (binInput = "001101") else --3
					"0011001" when (binInput = "001110") else --4
					"0010010" when (binInput = "001111") else --5
					"0110000" when (binInput = "100001") else --33
					"0011001" when (binInput = "011000") else --24
					"1000000"; --0
					
		decOut_n1 <= "1110110" when (enable = '0') else
					"1000000" when (binInput = "000001") else --0
					"1000000" when (binInput = "000010") else --0
					"1000000" when (binInput = "000011") else --0
					"1000000" when (binInput = "000100") else --0
					"1000000" when (binInput = "000101") else --0
					"1000000" when (binInput = "000110") else --0
					"1000000" when (binInput = "000111") else --0
					"1000000" when (binInput = "001000") else --0
					"1000000" when (binInput = "001001") else --0
					"1111001" when (binInput = "001010") else --1
					"1111001" when (binInput = "001011") else --1
					"1111001" when (binInput = "001100") else --1
					"1111001" when (binInput = "001101") else --1
					"1111001" when (binInput = "001110") else --1
					"1111001" when (binInput = "001111") else --1
					"0110000" when (binInput = "100001") else --33
					"0100100" when (binInput = "011000") else --24
					"1000000"; --0
					
		decOut_n2 <= "1110110" when (enable = '0') else
					"0001000" when (pao = '1') else
					"1000110" when (pao = '0') else
					"1000000";
end Behavioral;