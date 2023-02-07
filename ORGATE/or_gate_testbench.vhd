library ieee;
use ieee.std_logic_1164.all;

entity or_gate_testbench is
end or_gate_testbench;

architecture behavior of or_gate_testbench is
    component or_gate
    port( 
        x: in std_logic;
        y: in std_logic;
        F: out std_logic
    );
    end component;
    
    signal x: std_logic := '0';
    signal y: std_logic := '0';
    signal F: std_logic;

begin
    uut: or_gate port map(
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
