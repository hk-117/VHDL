library ieee;
use ieee.std_logic_1164.all;

entity jk_flipflop_tb is
end jk_flipflop_tb;

architecture behavior of jk_flipflop_tb is
    component jk_flipflop
        port(
            j,k,clock,reset: in std_logic;
            q,qbar: out std_logic
        );
    end component;

    signal j,k,tclock,treset,tq,tqbar: std_logic;

begin
    u_dff: jk_flipflop port map(
        j => j,
        k => k,
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

        j <= '0';
        k <= '0';
        wait for 15 ns;
        j <= '0';
        k <= '1';
        wait for 15 ns;
        j <= '1';
        k <= '0';
        wait for 15 ns;
        j <= '1';
        k <= '1';
        wait for 15 ns;
        wait;
    end process;
end behavior;
