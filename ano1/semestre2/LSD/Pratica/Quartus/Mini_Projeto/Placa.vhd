library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; 

entity Placa is
	port (SW :  in std_logic_vector(0 downto 0);
			LEDR : out std_logic_vector(7 downto 0);
			CLOCK_50 : in std_logic;
			KEY : in std_logic_vector(1 downto 0));
end Placa;

architecture final of Placa is
begin
	bloco : entity work.Shift_Reg8_Demo(shift)
								port map (SIN => SW(0),
											 dataOut => LEDR,
											 clk => CLOCK_50,
											 sel => KEY(0),
											 reset => KEY(1));
end final;