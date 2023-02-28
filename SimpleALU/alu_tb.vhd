library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_tb is
end alu_tb;

architecture behavior of alu_tb is
  component alu is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           ALUctrl : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
  end component;

  signal A : STD_LOGIC_VECTOR (3 downto 0) := "0001";
  signal B : STD_LOGIC_VECTOR (3 downto 0) := "0001";
  signal ALUctrl : STD_LOGIC_VECTOR (2 downto 0) := "000";
  signal Y : STD_LOGIC_VECTOR (3 downto 0);

begin

  UUT: alu port map (
        A => A, 
        B => B, 
        ALUctrl => ALUctrl, 
        Y => Y
    );
    stim_proc: process
    begin
        ALUctrl <= "000";
        wait for 10 ns;
        ALUctrl <= "001";
        wait for 10 ns;
        ALUctrl <= "010";
        wait for 10 ns;
        ALUctrl <= "011";
        wait for 10 ns;
        ALUctrl <= "100";
        wait for 10 ns;
        ALUctrl <= "101";
        wait for 10 ns;
        ALUctrl <= "110";
        wait for 10 ns;
        ALUctrl <= "111";
    end process;

end behavior;