library ieee;
use ieee.std_logic_1164.all;

entity register_tb is
end register_tb;

architecture behavior of register_tb is
    component Registor
        port(
            D: in std_logic_vector(3 downto 0);
            Clock: in std_logic;
            Reset: in std_logic;
            Q,Qbar: out std_logic_vector(3 downto 0)
        );
    end component;

    signal tD: std_logic_vector(3 downto 0) := (others => '0');
    signal tClock: std_logic := '0';
    signal tReset: std_logic := '0';
    signal tQ,tQbar: std_logic_vector(3 downto 0);

begin
    u_regi: Registor port map(
        D => tD,
        Clock => tClock,
        Reset => tReset,
        Q => tQ,
        Qbar => tQbar
    );
    
    process
    begin
        tClock <= '0';
        wait for 5 ns;
        tClock <= '1';
        wait for 5 ns;
    end process;
    
    process
    begin
        tReset <= '1';
        wait for 25 ns;
        tReset <= '0';
        wait for 25 ns;
        
        tD <= "1011";
        wait for 15 ns;
        tD <= "1111";
        wait for 15 ns;
        tD <= "1001";
        wait for 15 ns;
        wait;
    end process;
end behavior;
