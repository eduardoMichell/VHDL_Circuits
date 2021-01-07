library ieee;
use ieee.std_logic_1164.all;

entity circuit1_tb is
                 
port ( 
  o_SEL  : buffer std_logic;                             
  o_DIN0 : buffer std_logic_vector(1 downto 0);  
  o_DIN1 : buffer std_logic_vector(1 downto 0);  
  o_DOUT : buffer std_logic_vector(1 downto 0)); 
end circuit1_tb;

architecture arch_1 of circuit1_tb is
  component circuit1 is
                   
  port ( 
    i_SEL  : in  std_logic;                            
    i_DIN0 : in  std_logic_vector(1 downto 0); 
    i_DIN1 : in  std_logic_vector(1 downto 0); 
    o_DOUT : out std_logic_vector(1 downto 0)); 
  end component;

begin

  u_0: circuit1
      
        port map ( 
          i_SEL  => o_SEL,
          i_DIN0 => o_DIN0,
          i_DIN1 => o_DIN1,
          o_DOUT => o_DOUT);  
process
begin
  o_SEL  <= '0';
  o_DIN0 <= (others => '0');
  o_DIN1 <= (others => '1');
  wait for 100 ns;

  o_SEL  <= '1';
  wait for 100 ns;
end process;
  
end arch_1;
