library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
    port(   
        x:in std_logic;
        y:in std_logic;
        F:out std_logic
    );
end or_gate;

architecture behavior of or_gate is
begin
    F <= x or y;
end behavior;
