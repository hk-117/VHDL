library ieee;
use ieee.std_logic_1164.all;

entity Registor is
    port(
        J,K: in std_logic_vector(3 downto 0);
        Clock: in std_logic;
        Reset: in std_logic;
        Q,Qbar: out std_logic_vector(3 downto 0)
    );
end Registor;

architecture behavior of Registor is
    component jk_flipflop
        port(
            j,k,clock,reset: in std_logic;
            q,qbar: out std_logic
        );
    end component;
begin
    JK0: jk_flipflop port map(j=>'1',k=> '1', clock=>Clock, reset => Reset,q=>Q(0),qbar=>Qbar(0));
    JK1: jk_flipflop port map(j=>Q(0),k=> Q(0), clock=>Clock, reset => Reset,q=>Q(1),qbar=>Qbar(1));
    JK2: jk_flipflop port map(j=>(Q(0) and Q(1)),k=> (Q(0) and Q(1)), clock=>Clock, reset => Reset,q=>Q(2),qbar=>Qbar(2));
    JK3: jk_flipflop port map(j=>(Q(0) and Q(1) and Q(2)),k=> (Q(0) and Q(1) and Q(2)), clock=>Clock, reset => Reset,q=>Q(3),qbar=>Qbar(3));
end behavior;
