library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
    port(
        x,y: in std_logic;
        Sum,Carry: out std_logic
    );
end half_adder;

architecture behavior of half_adder is
begin
    Sum <= x xor y;
    Carry <= x and y;
end behavior;
