library ieee;
use ieee.std_logic_1164.all;

entity circuit4 is


port(
i_P0: in std_logic;
i_P1: in std_logic;
i_P2: in std_logic;
i_P3: in std_logic;
o_S0: out std_logic;
o_S1: out std_logic;
o_S2: out std_logic;
o_S3: out std_logic);
end circuit4;

architecture arch_1 of circuit4 is
begin

process (i_P0, i_P1, i_P2, i_P3)

begin
if(i_P0 = '1') then
    o_S0 <= i_P0;
    o_S1 <= '0';
	 o_S2 <= '0';
	 o_S3 <= '0';
	 else 
	 if(i_P1 = '1') then
	     o_S1 <= i_P1;
		  o_S0 <= '0';
		  o_S2 <= '0';
		  o_S3 <= '0';
		  else
					if(i_P2 = '1')then
					o_S2 <= i_P2;
					o_S0 <= '0';
					o_S1 <= '0';
					o_S3 <= '0';
					else 
					      o_S3 <= i_P3;
					    	o_S1 <= '0';
					    	o_S2 <= '0';
					   	o_S0 <= '0';	
				     	end if;
				  end if;
		     end if;
end process;
end arch_1;