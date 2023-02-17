library ieee;
use ieee.std_logic_1164.all;

entity d_flipflop_tb is
end d_flipflop_tb;

architecture behavior of d_flipflop_tb is
    component d_flipflop
        port(
            d,clock,reset:in std_logic;
            q,qbar: out std_logic
        );
    end component;

    signal td,tclock,treset,tq,tqbar: std_logic;

begin
    u_dff: d_flipflop port map(
        d => td,
        clock => tclock,
        reset => treset,
        q => tq,
        qbar => tqbar
    );

    process
    begin
        tclock <= '0';
        wait for 5 ns;
        tclock <= '1';
        wait for 5 ns;
    end process;

    process
    begin
        treset <= '1';
        wait for 25 ns;
        treset <= '0';
        wait for 25 ns;

        td <= '0';
        wait for 15 ns;
        td <= '1';
        wait for 15 ns;
        td <= '0';
        wait for 15 ns;
        td <= '1';
        wait for 15 ns;
        wait;
    end process;
end behavior;
