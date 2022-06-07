#!/bin/bash

# Usage: ./convert_s130.sh <DESIGN_NAME>

NETLIST=$1/$1.spice
OUTPUT=$1/$1_s130.spice
cp $NETLIST $OUTPUT
sed -i -r 's/X(.*sky130_fd_pr__cap_mim_m3.*)/C\1/g' $OUTPUT
sed -i -r 's/([wl]=)([1-9]+)0*u/\10.\2/g' $OUTPUT
sed -i -r 's/([wl]=)(\S+?)e\+06u/\1\2/g' $OUTPUT
sed -i -r 's/^X([[:digit:]])/M\1/g' $OUTPUT
sed -i -r 's/sky130_fd_pr__pfet_01v8/pmos/g' $OUTPUT
sed -i -r 's/sky130_fd_pr__nfet_01v8/nmos/g' $OUTPUT
sed -i -r 's/\//_/g' $OUTPUT
