library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port(
        x,y,cin: in std_logic;
        sum,cout: out std_logic
    );
end full_adder;

architecture behavior of full_adder is
begin
    sum <= x xor y xor cin;
    cout <= (x and y) or (y and cin) or (cin and x);
end behavior;
