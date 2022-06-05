#-------------------------------------------------------------------------
# Designer interface
#-------------------------------------------------------------------------
# Source the designer interface script, which sets up variables from the
# build system, sets up ASIC design kit variables, etc.

source -echo -verbose designer_interface.tcl

#-------------------------------------------------------------------------
# Setup
#-------------------------------------------------------------------------

# Set up paths and libraries

set_app_var search_path      ". $pt_additional_search_path $search_path"
set_app_var target_library   $pt_target_libraries
set_app_var link_library     "* $pt_target_libraries $pt_extra_link_libraries"

#-------------------------------------------------------------------------
# Read design
#-------------------------------------------------------------------------

# Read and link the design

read_verilog   $pt_gl_netlist

current_design $pt_design_name

link_design

# Read in the SDC and parasitics

read_sdc -echo $pt_sdc

set_propagated_clock [all_clocks]

read_parasitics -format spef $pt_spef
