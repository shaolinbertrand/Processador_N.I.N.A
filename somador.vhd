library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
entity somador is port(
	x,y : in std_logic_vector(15 downto 0);
     result   : out std_logic_vector(15 downto 0)
);
end somador;

architecture hardware of somador is begin
result <= x + y;
end hardware;
