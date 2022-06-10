#=========================================================================
# Design Constraints File
#=========================================================================

# This constraint sets the target clock period for the chip in
# nanoseconds. Note that the first parameter is the name of the clock
# signal in your verlog design. If you called it something different than
# clk you will need to change this. You should set this constraint
# carefully. If the period is unrealistically small then the tools will
# spend forever trying to meet timing and ultimately fail. If the period
# is too large the tools will have no trouble but you will get a very
# conservative implementation.

set clock_net  wb_clk_i
set clock_name ideal_clock

create_clock -name ${clock_name} \
             -period ${dc_clock_period} \
             [get_ports ${clock_net}]

# This constraint sets the load capacitance in picofarads of the
# output pins of your design.

set_load -pin_load $ADK_TYPICAL_ON_CHIP_LOAD [all_outputs]

# This constraint sets the input drive strength of the input pins of
# your design. We specify a specific standard cell which models what
# would be driving the inputs. This should usually be a small inverter
# which is reasonable if another block of on-chip logic is driving
# your inputs.

set_driving_cell -no_design_rule \
    -lib_cell $ADK_DRIVING_CELL [all_inputs]

# set_input_delay constraints for input ports
# Make this non-zero to avoid hold buffers on input-registered designs

set_input_delay -clock ${clock_name} [expr ${dc_clock_period}/2.0] [remove_from_collection [all_inputs] [get_ports $clock_net]]

# set_output_delay constraints for output ports

set_output_delay -clock ${clock_name} 0 [all_outputs]

# Make all signals limit their fanout

set_max_fanout 20 $dc_design_name

# Make all signals meet good slew

set_max_transition [expr 0.25*${dc_clock_period}] $dc_design_name

#set_input_transition 1 [all_inputs]
#set_max_transition 10 [all_outputs]

set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__probec_p_8]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__probe_p_8]

set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkinvlp_2]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkinvlp_4]

set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlygate4sd1_1]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlygate4sd2_1]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlygate4sd3_1]

set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlymetal6s2s_1]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlymetal6s4s_1]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlymetal6s6s_1]

set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__buf_16]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__lpflow*]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkinv_16]


set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s15_1]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s15_2]

set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s18_1]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s18_2]

set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s25_1]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s25_2]

set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s50_1]
set_dont_use [get_lib_cell -quiet sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s50_2]







