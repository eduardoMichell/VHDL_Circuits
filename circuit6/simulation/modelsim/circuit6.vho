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

-- DATE "09/20/2019 12:22:59"

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

ENTITY 	circuit6 IS
    PORT (
	i_E0 : IN std_logic;
	i_E1 : IN std_logic;
	i_E2 : IN std_logic;
	i_E3 : IN std_logic;
	o_S0 : BUFFER std_logic;
	o_S1 : BUFFER std_logic;
	o_S2 : BUFFER std_logic
	);
END circuit6;

-- Design Ports Information
-- o_S0	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S1	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S2	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_E0	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_E1	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_E2	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_E3	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuit6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_E0 : std_logic;
SIGNAL ww_i_E1 : std_logic;
SIGNAL ww_i_E2 : std_logic;
SIGNAL ww_i_E3 : std_logic;
SIGNAL ww_o_S0 : std_logic;
SIGNAL ww_o_S1 : std_logic;
SIGNAL ww_o_S2 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_E2~input_o\ : std_logic;
SIGNAL \i_E0~input_o\ : std_logic;
SIGNAL \i_E3~input_o\ : std_logic;
SIGNAL \i_E1~input_o\ : std_logic;
SIGNAL \o_S0~0_combout\ : std_logic;
SIGNAL \u_0|o_SA0[1]~0_combout\ : std_logic;
SIGNAL \u_0|o_SA0[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_i_E3~input_o\ : std_logic;
SIGNAL \ALT_INV_i_E2~input_o\ : std_logic;
SIGNAL \ALT_INV_i_E1~input_o\ : std_logic;
SIGNAL \ALT_INV_i_E0~input_o\ : std_logic;

BEGIN

ww_i_E0 <= i_E0;
ww_i_E1 <= i_E1;
ww_i_E2 <= i_E2;
ww_i_E3 <= i_E3;
o_S0 <= ww_o_S0;
o_S1 <= ww_o_S1;
o_S2 <= ww_o_S2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i_E3~input_o\ <= NOT \i_E3~input_o\;
\ALT_INV_i_E2~input_o\ <= NOT \i_E2~input_o\;
\ALT_INV_i_E1~input_o\ <= NOT \i_E1~input_o\;
\ALT_INV_i_E0~input_o\ <= NOT \i_E0~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\o_S0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S0~0_combout\,
	devoe => ww_devoe,
	o => ww_o_S0);

-- Location: IOOBUF_X52_Y0_N19
\o_S1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_0|o_SA0[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_o_S1);

-- Location: IOOBUF_X60_Y0_N2
\o_S2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_0|o_SA0[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_o_S2);

-- Location: IOIBUF_X8_Y0_N35
\i_E2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_E2,
	o => \i_E2~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\i_E0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_E0,
	o => \i_E0~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\i_E3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_E3,
	o => \i_E3~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\i_E1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_E1,
	o => \i_E1~input_o\);

-- Location: LABCELL_X17_Y1_N0
\o_S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_S0~0_combout\ = ( \i_E1~input_o\ ) # ( !\i_E1~input_o\ & ( ((\i_E3~input_o\) # (\i_E0~input_o\)) # (\i_E2~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_E2~input_o\,
	datab => \ALT_INV_i_E0~input_o\,
	datac => \ALT_INV_i_E3~input_o\,
	datae => \ALT_INV_i_E1~input_o\,
	combout => \o_S0~0_combout\);

-- Location: LABCELL_X17_Y1_N39
\u_0|o_SA0[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_SA0[1]~0_combout\ = ( !\i_E1~input_o\ & ( (!\i_E0~input_o\ & ((\i_E2~input_o\) # (\i_E3~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000000000000000000001010000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_E3~input_o\,
	datac => \ALT_INV_i_E0~input_o\,
	datad => \ALT_INV_i_E2~input_o\,
	datae => \ALT_INV_i_E1~input_o\,
	combout => \u_0|o_SA0[1]~0_combout\);

-- Location: LABCELL_X17_Y1_N12
\u_0|o_SA0[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_SA0[0]~1_combout\ = ( \i_E1~input_o\ & ( !\i_E0~input_o\ ) ) # ( !\i_E1~input_o\ & ( (!\i_E2~input_o\ & (!\i_E0~input_o\ & \i_E3~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000110011001100110000001000000010001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_E2~input_o\,
	datab => \ALT_INV_i_E0~input_o\,
	datac => \ALT_INV_i_E3~input_o\,
	datae => \ALT_INV_i_E1~input_o\,
	combout => \u_0|o_SA0[0]~1_combout\);

-- Location: LABCELL_X12_Y74_N0
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


