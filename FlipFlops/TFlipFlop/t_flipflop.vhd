library ieee;
use ieee.std_logic_1164.all;

entity t_flipflop is
    port(
        t,clock,reset: in std_logic;
        q,qbar: out std_logic
    );
end t_flipflop;

architecture behavior of t_flipflop is
    signal state: std_logic;
    signal input: std_logic;

begin
    input <= t;

    p: process(clock, reset) is
    begin
        if (reset='1') then
            state <= '0';
        elsif (rising_edge(clock)) then
            case (input) is
                when '1' =>
                    state <= not state;
                when others =>
                    null;
            end case;
        end if;
    end process;

    q <= state;
    qbar <= not state;

end behavior;
