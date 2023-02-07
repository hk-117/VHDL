library ieee;
use ieee.std_logic_1164.all;

entity and_testbench is
end and_testbench;

architecture behavior of and_testbench is
    component and_gate
        port(
            x,y: in std_logic;
            F: out std_logic
        );
    end component;
    
    signal x: std_logic := '0'; 
    signal y: std_logic := '0'; 
    signal F: std_logic; 

begin 
    uut: and_gate port map(
            x => x,
            y => y,
            F => F
        );

    stim_proc: process
    begin
        x <= '0';
        y <= '0';
        wait for 100 ns;
        x <= '0';
        y <= '1';
        wait for 100 ns;
        x <= '1';
        y <= '0';
        wait for 100 ns;
        x <= '1';
        y <= '1';
        wait for 100 ns;
        wait;
    end process;
end behavior;
