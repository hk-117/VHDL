library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture behavior of full_adder_tb is
    component full_adder
        port(
            x,y,cin: in std_logic;
            sum,cout: out std_logic
        );
    end component;

    signal x: std_logic :='0';
    signal y: std_logic :='0';
    signal cin: std_logic :='0';

    signal cout: std_logic;
    signal sum: std_logic;

begin
    uut: full_adder port map(
        x => x,
        y => y,
        cin => cin,
        sum => sum,
        cout => cout
    );

    stim_proc: process
    begin
        x <= '0';
        y <= '0';
        cin <= '0';
        wait for 100 ns;
        x <= '0';
        y <= '0';
        cin <= '1';
        wait for 100 ns;
        x <= '0';
        y <= '1';
        cin <= '0';
        wait for 100 ns;
        x <= '0';
        y <= '1';
        cin <= '1';
        wait for 100 ns;
        x <= '1';
        y <= '0';
        cin <= '0';
        wait for 100 ns;
        x <= '1';
        y <= '0';
        cin <= '1';
        wait for 100 ns;
        x <= '1';
        y <= '1';
        cin <= '0';
        wait for 100 ns;
        x <= '1';
        y <= '1';
        cin <= '1';
        wait for 100 ns;
        wait;
    end process;

end behavior;
