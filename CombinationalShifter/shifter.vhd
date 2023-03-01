library ieee;
use ieee.std_logic_1164.all;

entity shifter is
    port(
        data : in std_logic_vector(3 downto 0);
        direction : in std_logic;
        clk : in std_logic;
        output : out std_logic_vector(3 downto 0)
    );
end entity shifter;

architecture behavior of shifter is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if direction = '0' then
                output <= data(2 downto 0) & '0';
            else
                output <= '0' & data(3 downto 1);
            end if;
        end if;
    end process;
end architecture behavior;