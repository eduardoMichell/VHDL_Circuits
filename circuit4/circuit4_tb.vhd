library ieee;
use ieee.std_logic_1164.all;

entity circuit4_tb is

end circuit4_tb;


architecture arch_1 of circuit4_tb is
component circuit4 is
port(
i_P0: in std_logic;
i_P1: in std_logic;
i_P2: in std_logic;
i_P3: in std_logic;
o_S0: out std_logic;
o_S1: out std_logic;
o_S2: out std_logic;
o_S3: out std_logic);
end component;

signal w_P0: std_logic;
signal w_P1: std_logic;
signal w_P2: std_logic;
signal w_P3: std_logic;
signal w_S0: std_logic;
signal w_S1: std_logic;
signal w_S2: std_logic;
signal w_S3: std_logic;

begin

u_0: circuit4
port map(
i_P0 => w_P0,
i_P1 => w_P1,
i_P2 => w_P2,  
i_P3 => w_P3,
o_S0 =>w_S0 ,
o_S1 => w_S1 ,
o_S2 => w_S2 ,
 o_S3 => w_S3);
process 
begin
w_P0 <= '1';
w_P1 <= '1';
w_P2 <= '1';
w_P3 <= '1';
wait for 100 ns;
w_P0 <= '1';
w_P1 <= '1';
w_P2 <= '1';
w_P3 <= '0';
wait for 100 ns;
w_P0 <= '1';
w_P1 <= '1';
w_P2 <= '0';
w_P3 <= '0';
wait for 100 ns;
w_P0 <= '0';
w_P1 <= '1';
w_P2 <= '0';
w_P3 <= '1';
wait for 100 ns;

end process;
end arch_1; 