library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
  port (
    clock: in std_logic;
    reset: in std_logic;
    load_enable: in std_logic;
    load_data: in std_logic_vector(5 downto 0);
	 enable : in std_logic;
	 timeExp : out std_logic;
    output: out std_logic_vector(5 downto 0)
  );
end;

architecture rtl of timer is
    signal count: std_logic_vector(5 downto 0);
begin
    process (clock, reset) begin
        if (reset = '0') then
            count <= (others => '0');
        elsif rising_edge(clock) then
				if (load_enable = '1') then
					 count <= load_data;
				else
					if (count = "000000") then
						timeExp <= '1';
					elsif (enable = '1') then
					 count <= std_logic_vector(unsigned(count) - 1);
					 timeExp <= '0';
					end if;
				end if;
        end if;
    end process;

    output <= count;
end;