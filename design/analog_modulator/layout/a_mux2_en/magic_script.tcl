set MGC_DESIGN_NAME "a_mux2_en"
set MGC_PORT_LIST {en s0 in0 in1 out}

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

# special handling of power ports
for {set i 0} {$i < 6} {incr i} {
    findlabel VDD $i
    port make 
    port use power
    port class inout
}

for {set i 0} {$i < 8} {incr i} {
    findlabel VSS $i
    port make 
    port use power
    port class inout
}

save "${MGC_DESIGN_NAME}_flat.mag"

# lvs extraction
extract all
ext2spice lvs
ext2spice -o "../../netlist/${MGC_DESIGN_NAME}/${MGC_DESIGN_NAME}_layout_lvs.spice"

# pex extraction
ext2spice cthresh 0
ext2spice -o "../../netlist/${MGC_DESIGN_NAME}/${MGC_DESIGN_NAME}_layout_pex.spice"

# output gds and lef
# gds write "${MGC_DESIGN_NAME}.gds"
# lef write "${MGC_DESIGN_NAME}.lef"

# unset variables
unset MGC_DESIGN_NAME
unset MGC_PORT_LIST

quit
