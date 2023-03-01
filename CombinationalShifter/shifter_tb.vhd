library ieee;
use ieee.std_logic_1164.all;

entity shifter_tb is
end entity shifter_tb;

architecture behavior of shifter_tb is
    component shifter
        port(
            data : in std_logic_vector(3 downto 0);
            direction : in std_logic;
            clk : in std_logic;
            output : out std_logic_vector(3 downto 0)
        );
    end component;

    signal data : std_logic_vector(3 downto 0);
    signal direction : std_logic;
    signal clk : std_logic;
    signal output : std_logic_vector(3 downto 0);

begin
    uut : shifter
        port map(
            data => data,
            direction => direction,
            clk => clk,
            output => output
        );

    clock : process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    stim_proc : process
    begin
        data <= "0001";
        direction <= '0';
        wait for 10 ns;
        data <= "0010";
        direction <= '1';
        wait for 10 ns;
        data <= "0100";
        direction <= '0';
        wait for 10 ns;
        data <= "1000";
        direction <= '1';
        wait for 10 ns;
        wait;
    end process;

end architecture behavior;
