library ieee;
use ieee.std_logic_1164.all;

entity half_adder_tb is
end half_adder_tb;

architecture behavior of half_adder_tb is
    component half_adder
        port(
            x,y: in std_logic;
            Sum, Carry: out std_logic
        );
    end component;
    
    signal xin: std_logic :='0';
    signal yin: std_logic :='0';
    signal Sum: std_logic;
    signal Carry: std_logic;

begin
    uut: half_adder port map(
        x => xin,
        y => yin,
        Sum => Sum,
        Carry=> Carry
    );

    stim_proc: process
    begin
        xin <= '0';
        yin <= '0';
        wait for 100 ns;
        xin <= '0';
        yin <= '1';
        wait for 100 ns;
        xin <= '1';
        yin <= '0';
        wait for 100 ns;
        xin <= '1';
        yin <= '1';
        wait for 100 ns;
        wait;
    end process;

end behavior;
