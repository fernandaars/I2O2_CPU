# Copyright (C) 2017  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel MegaCore Function License Agreement, or other 
# applicable license agreement, including, without limitation, 
# that your use is for the sole purpose of programming logic 
# devices manufactured by Intel and sold by Intel or its 
# authorized distributors.  Please refer to the applicable 
# agreement for further details.


# Quartus Prime Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition
# File: signalprobe_qsf.tcl
# Generated on: Sat Dec  2 19:36:54 2017

# Note: This file contains a Tcl script generated from the SignalProbe Gui.
#       You can use this script to restore SignalProbes after deleting the DB
#       folder; at the command line use "quartus_cdb -t signalprobe_qsf.tcl".

package require ::quartus::chip_planner
package require ::quartus::project
project_open hal_4 -revision hal_4
read_netlist
set had_failure 0

############
# Index: 1 #
############
set result [ make_sp  -src_name "|hal_4|key3~input" -loc PIN_E24 -pin_name "key3_(clk)" -io_std "2.5 V" ] 
if { $result == 0 } { 
	 puts "FAIL (key3_(clk)): make_sp  -src_name \"|hal_4|key3~input\" -loc PIN_E24 -pin_name \"key3_(clk)\" -io_std \"2.5 V\""
} else { 
 	 puts "SET  (key3_(clk)): make_sp  -src_name \"|hal_4|key3~input\" -loc PIN_E24 -pin_name \"key3_(clk)\" -io_std \"2.5 V\""
} 

