library ieee;
use ieee.std_logic_1164.all;

entity circuit1 is
                
port ( 
  i_SEL  : in  std_logic;                            
  i_DIN0 : in  std_logic_vector(1 downto 0); 
  i_DIN1 : in  std_logic_vector(1 downto 0);  
  o_DOUT : out std_logic_vector(1 downto 0)); 
end circuit1;

architecture arch_1 of circuit1 is
begin
  o_DOUT <= i_DIN0 when i_SEL = '0' else
            i_DIN1; 
end arch_1;
