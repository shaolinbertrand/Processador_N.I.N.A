
entity registrador is port
( clk : in bit;
 rst : in bit;
 set : in bit;
 d : in bit_vector(2 downto 0);
 q : out bit_vector(2 downto 0));
end registrador;

architecture hardware of registrador is begin
   process(clk)
  	 begin
  		 if(clk 'event and clk = '1') then
  			 if(rst = '1') then q <= "000";
  			 elsif(set = '1') then q <= "111";
  			 else q <= d;
  			 end if;
  		 end if;
  	 end process;
   end hardware;
