library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Divide_Time is
    port (
        Value_time : in  std_logic_vector(5 downto 0);
        Display1   : out std_logic_vector(3 downto 0); -- Dígitos das dezenas
        Display0   : out std_logic_vector(3 downto 0)  -- Dígitos das unidades
    );
end Divide_Time;

architecture Behav of Divide_Time is
    signal time_int                 : integer range 0 to 38; -- número total máximo é 38
    signal dezenas_int, unidades_int: integer range 0 to 9;
begin
    process (Value_time, time_int, dezenas_int, unidades_int)
    begin
        -- Converter Value_time para inteiro
        time_int <= to_integer(unsigned(Value_time));

        -- Obter dígitos das dezenas e unidades
        dezenas_int <= time_int / 10;
        unidades_int <= time_int mod 10;

        -- Converter dígitos para representação binária de 4 bits
        Display1 <= std_logic_vector(to_unsigned(dezenas_int, 4));
        Display0 <= std_logic_vector(to_unsigned(unidades_int, 4));
    end process;
end Behav;
