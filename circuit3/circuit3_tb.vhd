library ieee;
use ieee.std_logic_1164.all;

entity circuit3_tb is

end circuit3_tb; 

architecture arch_1 of circuit3_tb is
component circuit3 is
port(
i_MUX0: in std_logic; -- Mux 0 input
i_MUX1: in std_logic; -- Mux 1 input 
i_MUXSEL: in std_logic; -- Mux Selector
i_DMUXSEL: in std_logic; -- Demux Selector
o_DMUX0: out std_logic; -- Dmux 0 output
o_DMUX1: out std_logic); -- Dmux 1 output
end component;

signal w_MUX0: std_logic;
signal w_MUX1: std_logic;
signal w_MUXSEL: std_logic;
signal w_DMUXSEL: std_logic;
signal w_DMUX0: std_logic;
signal w_DMUX1: std_logic;

begin

u_0: circuit3
port map(
i_MUX0 => w_MUX0,
i_MUX1 => w_MUX0,
i_MUXSEL => w_MUXSEL,
i_DMUXSEL => w_DMUXSEL,
o_DMUX0 => w_DMUX0,
o_DMUX1 => w_DMUX1);
process 
begin
w_MUX0 <= '1';
w_MUX1 <= '1';
w_MUXSEL <= '0';
w_DMUXSEL <= '1';
wait for 100 ns;
w_MUXSEL <= '1';
w_DMUXSEL <= '0';
wait for 100 ns;

end process;
end arch_1;