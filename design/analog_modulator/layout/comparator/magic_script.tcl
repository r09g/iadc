set MGC_DESIGN_NAME "comparator"
set MGC_PORT_LIST {clk ip in outp outn}
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

for {set i 0} {$i < 3} {incr i} {
    findlabel clk $i
    port make 
}

findlabel ip
port make

findlabel in
port make

findlabel outp
port make

findlabel outn
port make

# special handling of power ports
findlabel VDD
port make 
port use power
port class inout

for {set i 0} {$i < 7} {incr i} {
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

