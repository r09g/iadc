#!/bin/bash

MGC_DESIGN_NAME="clock"
magic -dnull -noc magic_script.tcl
sed -i '/VDD VSS VDD VDD sky130_fd_pr__pfet_01v8_hvt/d' ../../netlist/${MGC_DESIGN_NAME}/${MGC_DESIGN_NAME}_layout_lvs.spice
sed -i '/VSS VDD VSS VSS sky130_fd_pr__nfet_01v8/d' ../../netlist/${MGC_DESIGN_NAME}/${MGC_DESIGN_NAME}_layout_lvs.spice