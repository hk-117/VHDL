library ieee;
use ieee.std_logic_1164.all;

entity t_flipflop_tb is
end t_flipflop_tb;

architecture behavior of t_flipflop_tb is
    component t_flipflop
        port(
            t,clock,reset:in std_logic;
            q,qbar: out std_logic
        );
    end component;

    signal tt,tclock,treset,tq,tqbar: std_logic;

begin
    u_tff: t_flipflop port map(
        t => tt,
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

        tt <= '0';
        wait for 15 ns;
        tt <= '1';
        wait for 15 ns;
        tt <= '0';
        wait for 15 ns;
        tt <= '1';
        wait for 15 ns;
        wait;
    end process;

end behavior;
