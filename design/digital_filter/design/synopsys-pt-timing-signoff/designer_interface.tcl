#=========================================================================
# designer_interface.tcl
#=========================================================================
# The designer_interface.tcl file is the first script run by PT (see the
# top of pt.tcl). It is the interface that connects the scripts with
# the following:
#
# - ASIC design kit
# - Build system variables
#
# Author : Christopher Torng
# Date   : May 20, 2019

#-------------------------------------------------------------------------
# Interface to the ASIC design kit
#-------------------------------------------------------------------------

set pt_additional_search_path   inputs/adk
set pt_target_libraries         inputs/adk/stdcells.db
set pt_extra_link_libraries     [lsort [glob -nocomplain inputs/*.db]]

#-------------------------------------------------------------------------
# Interface to the build system
#-------------------------------------------------------------------------

set pt_design_name              $::env(design_name)

set pt_gl_netlist               [lsort [glob -nocomplain inputs/*.vcs.v]]
set pt_sdc                      [lsort [glob -nocomplain inputs/*.pt.sdc]]
set pt_spef                     [lsort [glob -nocomplain inputs/*.spef.gz]]

puts "done"

