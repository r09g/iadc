set MGC_DESIGN_NAME "clock"
set MGC_PORT_LIST {clk p2d_b p2d p2_b p2 p1d_b p1d p1_b p1 Ad_b Ad A_b A Bd_b Bd B_b B}

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
for {set i 0} {$i < 28} {incr i} {
    findlabel VDD $i
    port make 
    port use power
    port class inout
}

for {set i 0} {$i < 26} {incr i} {
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
# 51.2 MHz corner
ext2spice cthresh 10
ext2spice -o "../../netlist/${MGC_DESIGN_NAME}/${MGC_DESIGN_NAME}_layout_pex.spice"

# unset variables
unset MGC_DESIGN_NAME
unset MGC_PORT_LIST

quit

