library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Register1 is
    port (
        rst, clk, Start_stop      : in  std_logic;
        P1_P2                     : in  std_logic;
        Time_adj                  : in  std_logic;
        Extra_time                : out std_logic_vector(2 downto 0);
        Cozer_time, Levedar_time, Amassar_time : out std_logic_vector(5 downto 0);
        Start_stop_out            : out std_logic
    );
end Register1;

architecture Behav of Register1 is
    signal i_Start_stop, i_Start_stop_out, i_Tadj        : std_logic;
    signal i_TExtra                                      : std_logic_vector(2 downto 0);
    signal i_P1_P2                                       : std_logic;
    signal i_TCozer, i_TLevedar, i_time, i_TAmassar      : std_logic_vector(5 downto 0);
    signal counter                                       : unsigned(2 downto 0) := (others => '0');
    
begin
	process (clk, rst, i_Tadj, counter, i_P1_P2)
	begin
		if rst = '1' then -- Verificar o reset antes do clock
			counter <= (others => '0');
			i_Start_stop_out <= '0'; -- Resetar Start_stop_out
		elsif rising_edge(clk) then
			i_P1_P2 <= P1_P2;
			i_Tadj <= Time_adj;
			i_Start_stop <= Start_stop;

			if i_Tadj = '1' then
				if counter < 5 then
					counter <= counter + 1;
				end if;
			else
				counter <= (others => '0');
			end if;

			  -- Start/stop logic
			if i_Start_stop = '1' then
				i_Start_stop_out <= '1'; -- Saída Start_stop_out ativada
			else
				i_Start_stop_out <= '0'; -- Saída Start_stop_out desativada
			end if;
		end if;
		
		-- tempos
		if i_Tadj = '1' then
			i_TExtra <= std_logic_vector(to_unsigned(to_integer(counter), i_TExtra'length)); -- tempo extra ativado
		else
			i_TExtra <= "000"; -- Tempo extra desativado
		end if;

		-- Lógica para atualizar os tempos (amassar, levedar, cozer)
		case i_P1_P2 is
			when '0' =>
				 i_TAmassar <= "001010"; -- Tempo para amassar pão caseiro
				 i_TLevedar <= "000100"; -- Tempo para levedar pão caseiro
				 i_TCozer <= "001010"; -- Tempo para cozer pão caseiro
			when '1' =>
				 i_TAmassar <= "001111"; -- Tempo para amassar pão rústico
				 i_TLevedar <= "001000"; -- Tempo para levedar pão rústico
				 i_TCozer <= "001010"; -- Tempo para cozer pão rústico
		end case;
	end process;

    -- Atualizar as saídas
    Extra_time <= i_TExtra;
    Cozer_time <= i_TCozer;
    Levedar_time <= i_TLevedar;
    Amassar_time <= i_TAmassar;
    Start_stop_out <= i_Start_stop_out;
end Behav;