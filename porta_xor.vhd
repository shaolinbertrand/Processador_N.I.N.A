library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
entity porta_xor is port(
		x : in std_logic;
      y : in std_logic;
      s : out std_logic
);
end porta_xor;

architecture hardware of porta_xor is begin
s <= x XOR y;
end hardware;
