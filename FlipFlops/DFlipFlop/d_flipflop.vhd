library ieee;
use ieee.std_logic_1164.all;

entity d_flipflop is
    port(
        d,clock,reset: in std_logic;
        q,qbar: out std_logic
    );
end d_flipflop;

architecture behavior of d_flipflop is
    signal state: std_logic;
    signal input: std_logic;

begin
    input <= d;

    p: process(clock, reset) is
    begin
        if (reset='1') then
            state <= '0';
        elsif (rising_edge(clock)) then
            case (input) is
                when '1' =>
                    state <= '1';
                when '0' =>
                    state <= '0';
                when others =>
                    null;
            end case;
        end if;
    end process;

    q <= state;
    qbar <= not state;

end behavior;
