library ieee;
use ieee.std_logic_1164.all;

entity circuit2 is

port(
i_SEL : in std_logic;  
i_DIN : in std_logic;
o_DOUT0 : out std_logic; 
o_DOUT1 : out std_logic); 
end circuit2;

architecture arch_1 of circuit2 is
begin 
   process(i_SEL, i_DIN)
	begin
	
	  if i_SEL = '0' then
	     o_DOUT0 <= i_DIN;
		  o_DOUT1 <= '0';
		else
		o_DOUT1 <= i_DIN;
	   o_DOUT0 <= '0';	
	   end if;
end process; 
   end arch_1;