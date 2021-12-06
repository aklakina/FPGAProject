## Clock signal
#set_property PACKAGE_PIN W5 [get_ports clk100mhz]							
#	set_property IOSTANDARD LVCMOS33 [get_ports clk100mhz]
#	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk100mhz]
 
## Switches
#set_property PACKAGE_PIN V17 [get_ports {enable}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {enable}]
#set_property PACKAGE_PIN V16 [get_ports {initial_condition[0]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {initial_condition[0]}]
#set_property PACKAGE_PIN W16 [get_ports {initial_condition[1]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {initial_condition[1]}]
#set_property PACKAGE_PIN W17 [get_ports {initial_condition[2]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {initial_condition[2]}]
##set_property PACKAGE_PIN W15 [get_ports {sw[4]}]					
#	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
##set_property PACKAGE_PIN V15 [get_ports {button[0]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {button[0]}]
##set_property PACKAGE_PIN W14 [get_ports {sw[6]}]					
#	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
##set_property PACKAGE_PIN W13 [get_ports {sw[7]}]					
#	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]
##set_property PACKAGE_PIN V2 [get_ports {sw[8]}]					
#	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[8]}]
##set_property PACKAGE_PIN T3 [get_ports {sw[9]}]					
#	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[9]}]
#set_property PACKAGE_PIN T2 [get_ports {size_selection[0]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {size_selection[0]}]
#set_property PACKAGE_PIN R3 [get_ports {size_selection[1]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {size_selection[1]}]
##set_property PACKAGE_PIN W2 [get_ports {time_selection[3]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {time_selection[3]}]
##set_property PACKAGE_PIN U1 [get_ports {time_selection[2]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {time_selection[2]}]
#set_property PACKAGE_PIN T1 [get_ports {time_selection[0]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {time_selection[0]}]
#set_property PACKAGE_PIN R2 [get_ports {time_selection[1]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {time_selection[1]}]
 

## LEDs
#set_property PACKAGE_PIN U16 [get_ports {leds[0]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]
#set_property PACKAGE_PIN E19 [get_ports {leds[1]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]
#set_property PACKAGE_PIN U19 [get_ports {leds[2]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}]
#set_property PACKAGE_PIN V19 [get_ports {leds[3]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}]
##set_property PACKAGE_PIN W18 [get_ports {out_row2[3]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {out_row2[3]}]
##set_property PACKAGE_PIN U15 [get_ports {out_row2[2]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {out_row2[2]}]
##set_property PACKAGE_PIN U14 [get_ports {out_row2[1]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {out_row2[1]}]
##set_property PACKAGE_PIN V14 [get_ports {out_row2[0]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {out_row2[0]}]
##set_property PACKAGE_PIN V13 [get_ports {out_row1[3]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {out_row1[3]}]
##set_property PACKAGE_PIN V3 [get_ports {out_row1[2]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {out_row1[2]}]
#set_property PACKAGE_PIN W3 [get_ports {leds[4]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {leds[4]}]
#set_property PACKAGE_PIN U3 [get_ports {leds[5]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {leds[5]}]
##set_property PACKAGE_PIN P3 [get_ports {out_row0[3]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {out_row0[3]}]
##set_property PACKAGE_PIN N3 [get_ports {out_row0[2]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {out_row0[2]}]
#set_property PACKAGE_PIN P1 [get_ports {leds[6]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {leds[6]}]
#set_property PACKAGE_PIN L1 [get_ports {leds[7]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {leds[7]}]
	

# ----------------------------------------------------------------------------
# Clock Source - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y9 [get_ports {clk100mhz}];  # "GCLK"

# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN T22 [get_ports {leds2}];  # "LD0"
#set_property PACKAGE_PIN T21 [get_ports {leds[1]}];  # "LD1"
#set_property PACKAGE_PIN U22 [get_ports {leds[2]}];  # "LD2"
#set_property PACKAGE_PIN U21 [get_ports {leds[3]}];  # "LD3"
set_property PACKAGE_PIN V22 [get_ports {leds1[0]}];  # "LD4"
set_property PACKAGE_PIN W22 [get_ports {leds1[1]}];  # "LD5"
set_property PACKAGE_PIN U19 [get_ports {leds1[2]}];  # "LD6"
set_property PACKAGE_PIN U14 [get_ports {leds1[3]}];  # "LD7"

# ----------------------------------------------------------------------------
# VGA Output - Bank 33
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y21  [get_ports {vgaBlue[0]}];  # "VGA-B1"
set_property PACKAGE_PIN Y20  [get_ports {vgaBlue[1]}];  # "VGA-B2"
set_property PACKAGE_PIN AB20 [get_ports {vgaBlue[2]}];  # "VGA-B3"
set_property PACKAGE_PIN AB19 [get_ports {vgaBlue[3]}];  # "VGA-B4"
set_property PACKAGE_PIN AB22 [get_ports {vgaGreen[0]}];  # "VGA-G1"
set_property PACKAGE_PIN AA22 [get_ports {vgaGreen[1]}];  # "VGA-G2"
set_property PACKAGE_PIN AB21 [get_ports {vgaGreen[2]}];  # "VGA-G3"
set_property PACKAGE_PIN AA21 [get_ports {vgaGreen[3]}];  # "VGA-G4"
set_property PACKAGE_PIN AA19 [get_ports {horizontal_sync}];  # "VGA-HS"
set_property PACKAGE_PIN V20  [get_ports {vgaRed[0]}];  # "VGA-R1"
set_property PACKAGE_PIN U20  [get_ports {vgaRed[1]}];  # "VGA-R2"
set_property PACKAGE_PIN V19  [get_ports {vgaRed[2]}];  # "VGA-R3"
set_property PACKAGE_PIN V18  [get_ports {vgaRed[3]}];  # "VGA-R4"
set_property PACKAGE_PIN Y19  [get_ports {vertical_sync}];  # "VGA-VS"

# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN P16 [get_ports {button[0]}];  # "BTNC"
set_property PACKAGE_PIN R16 [get_ports {button[1]}];  # "BTND"
set_property PACKAGE_PIN N15 [get_ports {button[2]}];  # "BTNL"
set_property PACKAGE_PIN R18 [get_ports {button[3]}];  # "BTNR"
set_property PACKAGE_PIN T18 [get_ports {button[4]}];  # "BTNU"

## ----------------------------------------------------------------------------
## User DIP Switches - Bank 35
## ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN F22 [get_ports {enable}];  # "SW0"
#set_property PACKAGE_PIN G22 [get_ports {SW1}];  # "SW1"
#set_property PACKAGE_PIN H22 [get_ports {SW2}];  # "SW2"
#set_property PACKAGE_PIN F21 [get_ports {SW3}];  # "SW3"
set_property PACKAGE_PIN H19 [get_ports {size_selection[0]}];  # "SW4"
set_property PACKAGE_PIN H18 [get_ports {size_selection[1]}];  # "SW5"
set_property PACKAGE_PIN H17 [get_ports {time_selection[0]}];  # "SW6"
set_property PACKAGE_PIN M15 [get_ports {time_selection[1]}];  # "SW7"


# ----------------------------------------------------------------------------
# IOSTANDARD Constraints
#
# Note that these IOSTANDARD constraints are applied to all IOs currently
# assigned within an I/O bank.  If these IOSTANDARD constraints are 
# evaluated prior to other PACKAGE_PIN constraints being applied, then 
# the IOSTANDARD specified will likely not be applied properly to those 
# pins.  Therefore, bank wide IOSTANDARD constraints should be placed 
# within the XDC file in a location that is evaluated AFTER all 
# PACKAGE_PIN constraints within the target bank have been evaluated.
#
# Un-comment one or more of the following IOSTANDARD constraints according to
# the bank pin assignments that are required within a design.
# ---------------------------------------------------------------------------- 

# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
