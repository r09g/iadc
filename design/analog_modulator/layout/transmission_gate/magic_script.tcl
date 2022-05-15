set MGC_DESIGN_NAME "transmission_gate"
set MGC_PORT_LIST {in out en en_b VDD VSS}

# flatten design and make ports

load "${MGC_DESIGN_NAME}.mag"
box 0 0 0 0
select

flatten "${MGC_DESIGN_NAME}_flat"

load "${MGC_DESIGN_NAME}_flat"
box 0 0 0 0
select

foreach port $MGC_PORT_LIST {
    findlabel $port
    port make
}

save "${MGC_DESIGN_NAME}_flat.mag"

# lvs extraction
extract all
ext2spice lvs
ext2spice -o "../../netlist/${MGC_DESIGN_NAME}/${MGC_DESIGN_NAME}_layout_lvs.spice"

# pex extraction
ext2spice cthresh 0
ext2spice -o "../../netlist/${MGC_DESIGN_NAME}/${MGC_DESIGN_NAME}_layout_pex.spice"

# unset variables
unset MGC_DESIGN_NAME
unset MGC_PORT_LIST

quit

