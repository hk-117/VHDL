library ieee;
use ieee.std_logic_1164.all;

entity xor_gate_testbench is
end xor_gate_testbench;

architecture behavior of xor_gate_testbench is
    component xor_gate
        port(
            x,y: in std_logic;
            F: out std_logic
        );
    end component;

    signal x: std_logic := '0';
    signal y: std_logic := '0';
    signal Ot: std_logic ;
    
begin
    uut: xor_gate port map(
        x => x,
        y => y,
        F => Ot
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
