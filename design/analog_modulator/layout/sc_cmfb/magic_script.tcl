set MGC_DESIGN_NAME "sc_cmfb"
set MGC_PORT_LIST {on cm bias_a op cmc phi2_b phi2 phi1_b phi1}

# flatten design and make ports

load "${MGC_DESIGN_NAME}.mag"
box 0 0 0 0
select

flatten "${MGC_DESIGN_NAME}_flat"

load "${MGC_DESIGN_NAME}_flat"
box 0 0 0 0
select


findlabel on
port make

findlabel cm
port make

findlabel bias_a
port make

findlabel op
port make

findlabel cmc
port make

for {set i 0} {$i < 2} {incr i} {
    findlabel p2_b $i
    port make 
}

for {set i 0} {$i < 2} {incr i} {
    findlabel p2 $i
    port make 
}

for {set i 0} {$i < 2} {incr i} {
    findlabel p1_b $i
    port make 
}

for {set i 0} {$i < 2} {incr i} {
    findlabel p1 $i
    port make 
}

# special handling of power ports
for {set i 0} {$i < 12} {incr i} {
    findlabel VDD $i
    port make 
    port use power
    port class inout
}

for {set i 0} {$i < 12} {incr i} {
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

