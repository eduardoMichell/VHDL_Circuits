library ieee;
use ieee.std_logic_1164.all;

entity circuit5 is


port(
i_EN0 : in std_logic;
i_EN1 : in std_logic;
i_EN2 : in std_logic;
i_EN3: in std_logic;
o_SA0: out std_logic_vector(1 downto 0));
end circuit5;

architecture arch_1 of circuit5 is
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

signal w_S0: std_logic;
signal w_S1: std_logic;
signal w_S2: std_logic;
signal w_S3: std_logic;
begin

u_0: circuit4
port map(
i_P0 => i_EN0,
i_P1 => i_EN1,
i_P2 => i_EN2,  
i_P3 => i_EN3,
o_S0 =>w_S0 ,
o_S1 => w_S1 ,
o_S2 => w_S2 ,
o_S3 => w_S3);

 o_SA0 <= "11" when w_S3 = '1' else
                      "10" when w_S2 = '1' else
							 "01" when w_S1 = '1' else
							 "00";
 
end arch_1;
