library ieee;
use ieee.std_logic_1164.all;

entity circuit6_tb is

end circuit6_tb;


architecture arch_1 of circuit6_tb is
component circuit6 is
port(
i_E0 : in std_logic;
i_E1 : in std_logic;
i_E2 : in std_logic;
i_E3 : in std_logic;
o_S0: out std_logic;
o_S1: out std_logic;
o_S2: out std_logic);
end component;

signal w_E0: std_logic;
signal w_E1: std_logic;
signal w_E2: std_logic;
signal w_E3: std_logic;
signal w_S0: std_logic;
signal w_S1: std_logic;
signal w_S2: std_logic;

begin

u_0: circuit6
port map(
i_E0 => w_E0,
i_E1 => w_E1,
i_E2 => w_E2,
i_E3 => w_E3,
o_S0 => w_S0,
o_S1 => w_S1,
o_S2 => w_S2);
process 
begin

w_E0 <= '1';
w_E1 <= '0';
w_E2 <= '0';
w_E3 <= '0';

wait for 100 ns;

w_E0 <= '0';
w_E1 <= '1';
w_E2 <= '0';
w_E3 <= '1';

wait for 100 ns;

w_E0 <= '0';
w_E1 <= '0';
w_E2 <= '1';
w_E3 <= '1';

wait for 100 ns;
w_E0 <= '0';
w_E1 <= '0';
w_E2 <= '0';
w_E3 <= '1';

wait for 100 ns;
w_E0 <= '0';
w_E1 <= '0';
w_E2 <= '0';
w_E3 <= '0';

wait for 100 ns;
end process;
end arch_1; 