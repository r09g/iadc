#!/bin/sh

# Default arguments
ARGS="-R -sverilog -timescale=1ns/1ps"
ARGS="$ARGS -hsopt"

# Dump waveform
if [ "$waveform" = "True" ]; then
    ARGS="$ARGS +vcs+dumpvars+outputs/run.vcd"
fi

# ADK for GLS
# for f in inputs/adk/*.v; do
#    [ -e "$f" ] || continue
#    ARGS="$ARGS $f"
#done

# Add modified pdk for Gate-level sdf simulation

ARGS="$ARGS ./cvc-pdk/primitives_hd.v"
ARGS="$ARGS ./cvc-pdk/sky130_fd_sc_hd.v"

# Set-up testbench
ARGS="$ARGS -top $testbench_name"

# Grab all design/testbench files
for f in inputs/*.v; do
    [ -e "$f" ] || continue
    ARGS="$ARGS $f"
done

for f in inputs/*.sv; do
    [ -e "$f" ] || continue
    ARGS="$ARGS $f"
done

if [ -a "inputs/design.sdf" ]; then
  ARGS="$ARGS +sdfverbose -sdf max:${testbench_name}.${dut_name}:inputs/design.sdf"
fi


# Optional arguments
if [ -f "inputs/design.args" ]; then
    ARGS="$ARGS -file inputs/design.args"
fi

# Run VCS and print out the command
(
    set -x;
    vcs $ARGS
)
