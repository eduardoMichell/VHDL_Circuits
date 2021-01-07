library ieee;
use ieee.std_logic_1164.all;

entity circuit5_tb is

end circuit5_tb;


architecture arch_1 of circuit5_tb is
component circuit5 is
port(
i_EN0 : in std_logic;
i_EN1 : in std_logic;
i_EN2 : in std_logic;
i_EN3: in std_logic;
o_SA0: out std_logic_vector(1 downto 0));
end component;

signal w_EN0: std_logic;
signal w_EN1: std_logic;
signal w_EN2: std_logic;
signal w_EN3: std_logic;
signal w_SA0: std_logic_vector(1 downto 0);

begin

u_0: circuit5
port map(
i_EN0 => w_EN0 ,
i_EN1 => w_EN1 ,
i_EN2 => w_EN2 ,
i_EN3 => w_EN3 ,
o_SA0 => w_SA0);
process 
begin
w_EN0 <= '0';
w_EN1 <= '0';
w_EN2 <= '0';
w_EN3 <= '1';
wait for 100 ns;
w_EN0 <= '0';
w_EN1 <= '1';
w_EN2 <= '0';
w_EN3 <= '1';
wait for 100 ns;
w_EN0 <= '0';
w_EN1 <= '0';
w_EN2 <= '1';
w_EN3 <= '1';
wait for 100 ns;
end process;
end arch_1; 