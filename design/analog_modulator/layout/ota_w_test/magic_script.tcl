set MGC_DESIGN_NAME "ota_w_test"
set MGC_PORT_LIST {ip in p1 p1_b p2 p2_b op on i_bias cm bias_a bias_b bias_c bias_d cmc}
set FLAT 1

# flatten design and make ports

load "${MGC_DESIGN_NAME}.mag"
if {$FLAT} {
    box 0 0 0 0
    select
    flatten "${MGC_DESIGN_NAME}_flat"
    load "${MGC_DESIGN_NAME}_flat"
}
box 0 0 0 0
select

findlabel ip
port make

findlabel in
port make

findlabel p1 0
port make
findlabel p1 1
port make

findlabel p1_b 0
port make
findlabel p1_b 1
port make

findlabel p2 0
port make
findlabel p2 1
port make

findlabel p2_b 0
port make
findlabel p2_b 1
port make

findlabel op
port make

findlabel on
port make

findlabel i_bias
port make

findlabel cm
port make

findlabel bias_a
port make

findlabel bias_b
port make

findlabel bias_c
port make

findlabel bias_d
port make

findlabel cmc
port make

# special handling of power ports
for {set i 0} {$i < 13} {incr i} {
    findlabel VDD $i
    port make 
    port use power
    port class inout
}

for {set i 0} {$i < 13} {incr i} {
    findlabel VSS $i
    port make 
    port use power
    port class inout
}

if {$FLAT} {save "${MGC_DESIGN_NAME}_flat.mag"}

# lvs extraction
extract all
ext2spice lvs
ext2spice -o "../../netlist/${MGC_DESIGN_NAME}/${MGC_DESIGN_NAME}_layout_lvs.spice"

# pex extraction
ext2spice cthresh 0
ext2spice -o "../../netlist/${MGC_DESIGN_NAME}/${MGC_DESIGN_NAME}_layout_pex.spice"

# output gds and lef
if {$FLAT == 0} {
    select top cell
    expand
    gds write "${MGC_DESIGN_NAME}.gds"
}
# lef write "${MGC_DESIGN_NAME}.lef"

# unset variables
unset MGC_DESIGN_NAME
unset MGC_PORT_LIST
unset FLAT

quit

