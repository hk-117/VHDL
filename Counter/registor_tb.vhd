library ieee;
use ieee.std_logic_1164.all;

entity registor_tb is
end registor_tb;

architecture behavior of registor_tb is
    component Registor
        port(
            J,K: in std_logic_vector(3 downto 0);
            Clock: in std_logic;
            Reset: in std_logic;
            Q,Qbar: out std_logic_vector
        );
    end component;

    signal J,K: std_logic_vector(3 downto 0) := (others => '0');
    signal Clock: std_logic := '0';
    signal Reset: std_logic := '0';
    signal Q,Qbar: std_logic_vector(3 downto 0);

begin
    uut: Registor port map(
        J=>J,
        K=>K,
        Clock=>Clock,
        Reset=>Reset,
        Q=>Q,
        Qbar=>Qbar
    );

    process
    begin
        Clock <= '0';
        wait for 25 ns;
        Clock <= '1';
        wait for 25 ns;
    end process;

    stim_proc: process
    begin
        Reset <= '1';
        wait for 15 ns;
        Reset <= '0';
        wait for 15 ns;
        J <= "0001";
        K <= "0001";
        wait for 15 ns;
        wait;
    end process;

end behavior;
