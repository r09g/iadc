#!/bin/bash

PLSIM_DESIGN_NAME="transmission_gate" 

cat ../../netlist/${PLSIM_DESIGN_NAME}/${PLSIM_DESIGN_NAME}_layout_pex.spice ${DESIGN_DIR}/verification/post_layout_sim/${PLSIM_DESIGN_NAME}_tb_template.spice > ${DESIGN_DIR}/verification/post_layout_sim/${PLSIM_DESIGN_NAME}_tb.spice
ngspice ${DESIGN_DIR}/verification/post_layout_sim/${PLSIM_DESIGN_NAME}_tb.spice

