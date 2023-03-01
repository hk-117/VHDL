library ieee;
use ieee.std_logic_1164.all;

entity jk_flipflop is
    port(
        j,k,clock,reset: in std_logic;
        q,qbar: out std_logic
    );
end jk_flipflop;

architecture behavior of jk_flipflop is
    signal state: std_logic;
    signal input: std_logic_vector(1 downto 0);

begin
    input <= j & k;

    p: process(clock, reset) is
    begin
        if (reset='1') then
            state <= '0';
        elsif (rising_edge(clock)) then
            case (input) is
                when "11" =>
                    state <= not state;
                when "10" =>
                    state <= '1';
                when "01" =>
                    state <= '0';
                when others =>
                    null;
            end case;
        end if;
    end process;

    q <= state;
    qbar <= not state;

end behavior;
