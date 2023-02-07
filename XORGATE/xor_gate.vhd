library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
    port(
        x,y: in std_logic;
        F: out std_logic
    );
end xor_gate;

architecture behavior of xor_gate is
begin
    F <= x xor y;
end behavior;
 