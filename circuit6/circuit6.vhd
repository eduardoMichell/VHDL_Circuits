library ieee;
use ieee.std_logic_1164.all;

entity circuit6 is

port(
i_E0 : in std_logic;
i_E1 : in std_logic;
i_E2 : in std_logic;
i_E3 : in std_logic;
o_S0: out std_logic;
o_S1: out std_logic;
o_S2: out std_logic);
end circuit6;

architecture arch_1 of circuit6 is


component circuit5 is
port(
i_EN0 : in std_logic;
i_EN1 : in std_logic;
i_EN2 : in std_logic;
i_EN3: in std_logic;
o_SA0: out std_logic_vector(1 downto 0));
end component;

signal w_S0: std_logic_vector(1 downto 0);
begin

u_0: circuit5
port map(
i_EN0 => i_E0,
i_EN1 => i_E1,
i_EN2 => i_E2,  
i_EN3 => i_E3,
o_SA0 =>w_S0);

o_S0 <= '0' when  w_S0 = "00"  and i_E0 = '0' and i_E1 = '0'and i_E2 = '0'and i_E3 = '0' else
                   '1'; 
o_S1 <=    '1' when w_S0(1) = '1' else
                      '0';						 
o_S2 <= '1' when w_S0(0) = '1' else
                  '0';							 
end arch_1;