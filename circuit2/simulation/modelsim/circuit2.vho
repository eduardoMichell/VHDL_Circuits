-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/20/2019 12:01:04"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	circuit2 IS
    PORT (
	i_SEL : IN std_logic;
	i_DIN : IN std_logic;
	o_DOUT0 : OUT std_logic;
	o_DOUT1 : OUT std_logic
	);
END circuit2;

-- Design Ports Information
-- o_DOUT0	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DOUT1	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SEL	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DIN	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuit2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_SEL : std_logic;
SIGNAL ww_i_DIN : std_logic;
SIGNAL ww_o_DOUT0 : std_logic;
SIGNAL ww_o_DOUT1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_DIN~input_o\ : std_logic;
SIGNAL \i_SEL~input_o\ : std_logic;
SIGNAL \o_DOUT0~0_combout\ : std_logic;
SIGNAL \o_DOUT1~0_combout\ : std_logic;
SIGNAL \ALT_INV_i_DIN~input_o\ : std_logic;
SIGNAL \ALT_INV_i_SEL~input_o\ : std_logic;

BEGIN

ww_i_SEL <= i_SEL;
ww_i_DIN <= i_DIN;
o_DOUT0 <= ww_o_DOUT0;
o_DOUT1 <= ww_o_DOUT1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i_DIN~input_o\ <= NOT \i_DIN~input_o\;
\ALT_INV_i_SEL~input_o\ <= NOT \i_SEL~input_o\;

-- Location: IOOBUF_X89_Y25_N39
\o_DOUT0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DOUT0~0_combout\,
	devoe => ww_devoe,
	o => ww_o_DOUT0);

-- Location: IOOBUF_X89_Y25_N5
\o_DOUT1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DOUT1~0_combout\,
	devoe => ww_devoe,
	o => ww_o_DOUT1);

-- Location: IOIBUF_X89_Y25_N21
\i_DIN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DIN,
	o => \i_DIN~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\i_SEL~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SEL,
	o => \i_SEL~input_o\);

-- Location: LABCELL_X88_Y25_N0
\o_DOUT0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_DOUT0~0_combout\ = ( !\i_SEL~input_o\ & ( \i_DIN~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_DIN~input_o\,
	datae => \ALT_INV_i_SEL~input_o\,
	combout => \o_DOUT0~0_combout\);

-- Location: LABCELL_X88_Y25_N9
\o_DOUT1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_DOUT1~0_combout\ = ( \i_SEL~input_o\ & ( \i_DIN~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_DIN~input_o\,
	datae => \ALT_INV_i_SEL~input_o\,
	combout => \o_DOUT1~0_combout\);

-- Location: LABCELL_X9_Y35_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


