library ieee;
use ieee.std_logic_1164.all;

entity flip_flop is
    port(
        d,clock,reset: in std_logic;
        q,qbar: out std_logic
    );
end flip_flop;

architecture behavior of flip_flop is
    signal input: std_logic;
    signal state: std_logic;
begin
    input <= d;
    p: process(clock,reset) is
    begin
        if(reset = '1') then
            state <= '0';
        elsif(rising_edge(clock)) then
            case (input) is
                when '0' =>
                    state <= '0';
                when '1' =>
                    state <= '1';
                when others =>
                    null;
            end case;
        end if;
    end process;
    q <= state;
    qbar <= not state;
end behavior;
