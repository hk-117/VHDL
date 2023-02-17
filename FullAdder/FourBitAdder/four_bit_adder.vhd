library ieee;
use ieee.std_logic_1164.all;

entity four_bit_adder is
    port(
        X,Y: in std_logic_vector(3 downto 0);
        Cin: in std_logic;
        S: out std_logic_vector(3 downto 0);
        Cout: out std_logic
    );
end four_bit_adder;

architecture behavior of four_bit_adder is
    component full_adder
        port(
            x,y,cin: in std_logic;
            sum,cout: out std_logic
        );
    end component;

    signal C1,C2,C3: std_logic;

begin
    FA0 : full_adder port map(x=>X(0),y=>Y(0),cin=>Cin,sum=>S(0),cout=>C1);
    FA1 : full_adder port map(x=>X(1),y=>Y(1),cin=>C1,sum=>S(1),cout=>C2);
    FA2 : full_adder port map(x=>X(2),y=>Y(2),cin=>C2,sum=>S(2),cout=>C3);
    FA3 : full_adder port map(x=>X(3),y=>Y(3),cin=>C3,sum=>S(3),cout=>Cout);
end behavior;
