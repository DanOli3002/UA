LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY FSM_Final IS
    PORT (
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC := '0';
        cozer : IN STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
        levedar : IN STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
        amassar : IN STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
        staStop : IN STD_LOGIC := '0';
        timeExp : IN STD_LOGIC := '0';
        newTime : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
        load_enable : OUT STD_LOGIC;
        enable : OUT STD_LOGIC;
        green : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
END FSM_Final;

ARCHITECTURE BEHAVIOR OF FSM_Final IS
    TYPE type_fstate IS (clear,coz,ama,lev);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
	 SIGNAL s_newTime : std_logic_vector(5 downto 0);
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,cozer,levedar,amassar,staStop,timeExp)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= clear;
            newTime <= "000000";
            load_enable <= '0';
            enable <= '0';
            green <= "000";
        ELSE
            newTime <= "000000";
            load_enable <= '0';
            enable <= '0';
            green <= "000";
            CASE fstate IS
                WHEN clear =>
                    IF ((staStop = '1')) THEN
                        reg_fstate <= ama;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= clear;
								s_newTime <= std_logic_vector(unsigned(amassar) + unsigned(levedar) + unsigned(cozer));
								newTime <= s_newTime;
                    END IF;
                WHEN coz =>
                    IF ((timeExp = '1')) THEN
                        reg_fstate <= clear;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= coz;
                    END IF;

                    enable <= staStop;

                    IF ((timeExp = '1')) THEN
                        load_enable <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        load_enable <= '0';
                    END IF;

                    newTime <= cozer(5 DOWNTO 0);

                    green <= "100";
                WHEN ama =>
                    IF ((timeExp = '1')) THEN
                        reg_fstate <= lev;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= ama;
                    END IF;

                    enable <= staStop;

                    IF ((timeExp = '1')) THEN
                        load_enable <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        load_enable <= '0';
                    END IF;

                    newTime <= amassar(5 DOWNTO 0);

                    green <= "001";
                WHEN lev =>
                    IF ((timeExp = '1')) THEN
                        reg_fstate <= coz;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= lev;
                    END IF;

                    enable <= staStop;

                    IF ((timeExp = '1')) THEN
                        load_enable <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        load_enable <= '0';
                    END IF;

                    newTime <= levedar(5 DOWNTO 0);

                    green <= "010";
                WHEN OTHERS => 
                    newTime <= "XXXXXX";
                    load_enable <= 'X';
                    enable <= 'X';
                    green <= "XXX";
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
