library ieee;
use ieee.std_logic_1164.all;

entity Registor is
    port(
        D: in std_logic_vector(2 downto 0);
        Clock: in std_logic;
        Reset: in std_logic;
        Q,Qbar: out std_logic_vector(2 downto 0)
    );
end Registor;

architecture behavior of Registor is
    component flip_flop
        port(
            d,clock,reset: in std_logic;
            q,qbar: out std_logic
        );
    end component;

begin
    FF0: flip_flop port map(d=>D(0),clock=>Clock,reset=>Reset,q=>Q(0),qbar=>Qbar(0));
    FF1: flip_flop port map(d=>Q(0),clock=>Clock,reset=>Reset,q=>Q(1),qbar=>Qbar(1));
    FF2: flip_flop port map(d=>Q(1),clock=>Clock,reset=>Reset,q=>Q(2),qbar=>Qbar(2));
end behavior;
