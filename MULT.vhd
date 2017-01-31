library ieee;
use ieee.std_logic_1164.all;
entity MULT is
	port (a,b: in std_logic_vector(3 downto 0);
	s: out std_logic_vector(3 downto 0));
end MULT;
architecture arch_MULT of MULT is
	function deslocar(x: std_logic_vector(3 downto 0))
	return std_logic_vector is
	variable y: std_logic_vector(3 downto 0);
	begin
		for i in 3 downto 1 loop
					y(i):=x(i-1);
		end loop;
		y(0):='0';
		return y;
	end;
		function somador(a: std_logic_vector(3 downto 0);
							  b: std_logic_vector(3 downto 0))
		return std_logic_vector is
		variable vaium: std_logic;
		variable soma: std_logic_vector(3 downto 0);
		begin
					vaium:='0';
					for i in 0 to 3 loop
					soma(i):=a(i) xor b(i) xor vaium;
					vaium:=(a(i) and b(i)) or (b(i) and Vaium) or(vaium and a(i));
		end loop;
		return soma;
		end;
		begin
					process(a,b)
					variable aux1: std_logic_vector(3 downto 0);
					variable aux2: std_logic_vector(3 downto 0);
					variable vaium: std_logic;
					begin
								aux1:="0000";
								aux2:=a;
								vaium:= '0';
								
								for i in 0 to 3 loop
								aux1:=deslocar(aux1);
								vaium:=aux2(3);
								if vaium='1' then
											aux1:=somador(aux1,b);
								end if;
								aux2:=deslocar(aux2);
					end loop;
					s<=aux1;
		end process;
end arch_MULT;
	
								