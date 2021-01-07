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

-- DATE "09/20/2019 12:16:02"

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

ENTITY 	circuit5 IS
    PORT (
	i_EN0 : IN std_logic;
	i_EN1 : IN std_logic;
	i_EN2 : IN std_logic;
	i_EN3 : IN std_logic;
	o_SA0 : OUT std_logic_vector(1 DOWNTO 0)
	);
END circuit5;

-- Design Ports Information
-- o_SA0[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_SA0[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_EN0	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_EN1	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_EN2	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_EN3	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuit5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_EN0 : std_logic;
SIGNAL ww_i_EN1 : std_logic;
SIGNAL ww_i_EN2 : std_logic;
SIGNAL ww_i_EN3 : std_logic;
SIGNAL ww_o_SA0 : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_EN3~input_o\ : std_logic;
SIGNAL \i_EN1~input_o\ : std_logic;
SIGNAL \i_EN2~input_o\ : std_logic;
SIGNAL \i_EN0~input_o\ : std_logic;
SIGNAL \o_SA0~0_combout\ : std_logic;
SIGNAL \o_SA0~1_combout\ : std_logic;
SIGNAL \ALT_INV_i_EN3~input_o\ : std_logic;
SIGNAL \ALT_INV_i_EN2~input_o\ : std_logic;
SIGNAL \ALT_INV_i_EN1~input_o\ : std_logic;
SIGNAL \ALT_INV_i_EN0~input_o\ : std_logic;

BEGIN

ww_i_EN0 <= i_EN0;
ww_i_EN1 <= i_EN1;
ww_i_EN2 <= i_EN2;
ww_i_EN3 <= i_EN3;
o_SA0 <= ww_o_SA0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i_EN3~input_o\ <= NOT \i_EN3~input_o\;
\ALT_INV_i_EN2~input_o\ <= NOT \i_EN2~input_o\;
\ALT_INV_i_EN1~input_o\ <= NOT \i_EN1~input_o\;
\ALT_INV_i_EN0~input_o\ <= NOT \i_EN0~input_o\;

-- Location: IOOBUF_X89_Y20_N45
\o_SA0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_SA0~0_combout\,
	devoe => ww_devoe,
	o => ww_o_SA0(0));

-- Location: IOOBUF_X89_Y20_N79
\o_SA0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_SA0~1_combout\,
	devoe => ww_devoe,
	o => ww_o_SA0(1));

-- Location: IOIBUF_X89_Y21_N55
\i_EN3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_EN3,
	o => \i_EN3~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\i_EN1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_EN1,
	o => \i_EN1~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\i_EN2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_EN2,
	o => \i_EN2~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\i_EN0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_EN0,
	o => \i_EN0~input_o\);

-- Location: LABCELL_X88_Y21_N30
\o_SA0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_SA0~0_combout\ = ( !\i_EN0~input_o\ & ( ((\i_EN3~input_o\ & !\i_EN2~input_o\)) # (\i_EN1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011000000000000000001110011011100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_EN3~input_o\,
	datab => \ALT_INV_i_EN1~input_o\,
	datac => \ALT_INV_i_EN2~input_o\,
	datae => \ALT_INV_i_EN0~input_o\,
	combout => \o_SA0~0_combout\);

-- Location: LABCELL_X88_Y21_N39
\o_SA0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_SA0~1_combout\ = ( !\i_EN0~input_o\ & ( (!\i_EN1~input_o\ & ((\i_EN3~input_o\) # (\i_EN2~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000000000000000000001010000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_EN2~input_o\,
	datac => \ALT_INV_i_EN1~input_o\,
	datad => \ALT_INV_i_EN3~input_o\,
	datae => \ALT_INV_i_EN0~input_o\,
	combout => \o_SA0~1_combout\);

-- Location: LABCELL_X81_Y26_N3
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


