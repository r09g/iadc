#!/bin/bash

LVS_DESIGN_NAME="onebit_dac"
netgen -batch lvs "../../netlist/${LVS_DESIGN_NAME}/${LVS_DESIGN_NAME}.spice ${LVS_DESIGN_NAME}" "../../netlist/${LVS_DESIGN_NAME}/${LVS_DESIGN_NAME}_layout_lvs.spice ${LVS_DESIGN_NAME}" ../sky130A_setup.tcl