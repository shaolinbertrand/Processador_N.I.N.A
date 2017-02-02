library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity ULA is port(
   x,y : in std_logic_vector(3 downto 0); 
   s   : out std_logic_vector(3 downto 0);
   selection : in std_logic_vector(2 downto 0)
);
end ULA;

architecture hardware of ULA is begin
process(x,y,selection)
begin
   case selection is
  	 when "000" => s <= x or y; 
  	 when "001" => s <= x XOR y;
  	 when "010" => s <= x - y;
  	 when "011" => s <= x + y;
  	 when "100" => s <= x AND y;
  	 when "101" => s <= not y;
  	 when "110" => s <= not x;
  	 when others=>s <= "ZZZZ";
  	 
  	 
  	 
  	 end case;
   end process;
end hardware;
