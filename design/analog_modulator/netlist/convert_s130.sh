#!/bin/bash

# Usage: ./convert_s130.sh <DESIGN_NAME>

NETLIST=$1/$1_layout_lvs.spice
OUTPUT=$1/$1_s130.spice
sed -r 's/([[:digit:]]{2})0000u/0.\1/g' $NETLIST > $OUTPUT
sed -r 's/([[:digit:]]{1})e\+06u/\1/g' $NETLIST > $OUTPUT
sed -r 's/^X([[:digit:]])/M\1/g' $NETLIST > $OUTPUT
sed -r 's/sky130_fd_pr__pfet_01v8/pmos/g' $NETLIST > $OUTPUT
sed -r 's/sky130_fd_pr__nfet_01v8/nmos/g' $NETLIST > $OUTPUT
sed -r 's/\//_/g' $NETLIST > $OUTPUT
