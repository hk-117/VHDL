library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           ALUctrl : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end alu;

architecture behavior of alu is
begin
  process (A, B, ALUctrl)
  begin
    case ALUctrl is
      when "000" => Y <= A + B;
      when "001" => Y <= A - B;
      when "010" => Y <= A AND B;
      when "011" => Y <= A OR B;
      when "100" => Y <= A XOR B;
      when "101" => Y <= A XNOR B;
      when "110" => Y <= A NAND B;
      when "111" => Y <= A NOR B;
      when others => Y <= (others => '0');
    end case;
  end process;
end behavior;