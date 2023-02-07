library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
    port(
        x,y: in std_logic;
        F: out std_logic
    );
end and_gate;

architecture behavior of and_gate is
begin
    F <= x and y;
end behavior;
