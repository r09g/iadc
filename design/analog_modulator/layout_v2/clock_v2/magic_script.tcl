set MGC_DESIGN_NAME "clock_v2"
set MGC_PORT_LIST {clk p2d_b p2d p2_b p2 p1d_b p1d p1_b p1 Ad_b Ad A_b A Bd_b Bd B_b B}
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

foreach port $MGC_PORT_LIST {
    findlabel $port
    port make
}

# special handling of power ports
findlabel VDD
port make 
port use power
port class inout

findlabel VSS
port make 
port use power
port class inout

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

