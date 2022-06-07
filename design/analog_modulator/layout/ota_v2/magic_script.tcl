set MGC_DESIGN_NAME "ota_v2"
set MGC_PORT_LIST {ip in p1 p1_b p2 p2_b op on i_bias cm}
set FLAT 0

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

# special handling of power ports
for {set i 0} {$i < 15} {incr i} {
    findlabel VDD $i
    port make 
    port use power
    port class inout
}

for {set i 0} {$i < 23} {incr i} {
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

