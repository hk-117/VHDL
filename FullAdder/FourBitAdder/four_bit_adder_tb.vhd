library ieee;
use ieee.std_logic_1164.all;

entity four_bit_adder_tb is
end four_bit_adder_tb;

architecture behavior of four_bit_adder_tb is
    component four_bit_adder
        port(
            X,Y:in std_logic_vector(3 downto 0);
            Cin: in std_logic;
            S: out std_logic_vector(3 downto 0);
            Cout: out std_logic
        );
    end component;

    signal X: std_logic_vector(3 downto 0) := (others => '0');
    signal Y: std_logic_vector(3 downto 0) := (others => '0');
    signal Cin: std_logic :='0';

    signal Cout: std_logic;
    signal S: std_logic_vector(3 downto 0);

begin
    uut: four_bit_adder port map(
        X => X,
        Y => Y,
        Cin => Cin,
        S => S,
        Cout => Cout
    );

    stim_proc: process
    begin
        X <= "0100";
        Y <= "1011";
        Cin <= '0';
        wait for 100 ns;
        X <= "1100";
        Y <= "1011";
        Cin <= '0';
        wait for 100 ns;
        wait;
    end process;

end behavior;
