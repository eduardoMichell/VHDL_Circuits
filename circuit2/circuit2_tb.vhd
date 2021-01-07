library ieee;
use ieee.std_logic_1164.all;

entity circuit2_tb is
end circuit2_tb;

architecture arch_1 of circuit2_tb is
component circuit2 is 
port(
i_SEL : in std_logic;
i_DIN : in std_logic;
o_DOUT0 : out std_logic;
o_DOUT1 : out std_logic);
end component;

     signal w_SEL : std_logic;
	  signal w_DIN : std_logic;	
	  signal w_DOUT0 : std_logic;
	  signal w_DOUT1 : std_logic;	
begin 

u_0 : circuit2
     port map(
	  i_SEL =>  w_SEL,
     i_DIN   => w_DIN,
     o_DOUT0 => w_DOUT0,
     o_DOUT1	=> w_DOUT1);
	process
	begin
	w_SEL <= '1';
	w_DIN <= '1';
	wait for 100 ns;
	w_SEL <= '0';
	wait for 100 ns;
end process; 
   end arch_1;