library ieee;
use ieee.std_logic_1164.all;

entity circuit3 is

port(
i_MUX0: in std_logic; -- Mux 0 input
i_MUX1: in std_logic; -- Mux 1 input 
i_MUXSEL: in std_logic; -- Mux Selector
i_DMUXSEL: in std_logic; -- Demux Selector
o_DMUX0: out std_logic; -- Dmux 0 output
o_DMUX1: out std_logic); -- Dmux 1 output
end circuit3; 

architecture arch_1 of circuit3 is

 attribute chip_pin : string;
attribute chip_pin of i_MUX0 : signal is "AB12 ";
attribute chip_pin of i_MUX1: signal is "AC12";
attribute chip_pin of i_MUXSEL : signal is "AF9";
attribute chip_pin of  i_DMUXSEL : signal is "AF10";
attribute chip_pin of o_DMUX0 : signal is "V16";
attribute chip_pin of o_DMUX1 : signal is "W16";

begin
process(i_MUX0, i_MUX1, i_MUXSEL, i_DMUXSEL)
begin
if  (i_MUXSEL = '0' and i_DMUXSEL = '0') then 
     o_DMUX0 <= i_MUX0;
	  o_DMUX1 <= '0';
	  else
				if (i_MUXSEL = '0' and i_DMUXSEL = '1') then
				o_DMUX1 <= i_MUX0;
					  o_DMUX0 <= '0';
				else
						if (i_MUXSEL = '1' and i_DMUXSEL = '0') then
						o_DMUX0 <= i_MUX1;
							  o_DMUX1 <= '0';
						else
								o_DMUX1 <= i_MUX1;
									  o_DMUX0 <= '0';
						end if;
					end if;
			end if;
end process;			
end arch_1;


