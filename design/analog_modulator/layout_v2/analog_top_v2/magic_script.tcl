set MGC_DESIGN_NAME "analog_top_v2"
set MGC_PORT_LIST {ip in rst_n i_bias_1 i_bias_2 a_mod_grp_ctrl_0 a_mod_grp_ctrl_1 debug op a_probe_0 a_probe_1 a_probe_2 a_probe_3 clk d_probe_0 d_probe_1 d_probe_2 d_probe_3 d_clk_grp_1_ctrl_0 d_clk_grp_1_ctrl_1 d_clk_grp_2_ctrl_0 d_clk_grp_2_ctrl_1}
set FLAT 0

# flatten design and make ports

load "${MGC_DESIGN_NAME}.mag"
# if {$FLAT} {
#     box 0 0 0 0
#     select
#     flatten "${MGC_DESIGN_NAME}_flat"
#     load "${MGC_DESIGN_NAME}_flat"
# }
# box 0 0 0 0
# select

# foreach port $MGC_PORT_LIST {
#     findlabel $port
#     port make
# }

# findlabel VDD
# port make 
# port use power
# port class inout

# findlabel VSS
# port make 
# port use power
# port class inout

if {$FLAT} {save "${MGC_DESIGN_NAME}_flat.mag"}

# lvs extraction
extract all
ext2spice lvs
ext2spice -o "../../netlist/${MGC_DESIGN_NAME}/${MGC_DESIGN_NAME}_layout_lvs.spice"

# pex extraction
ext2spice cthresh 0
ext2spice -o "../../netlist/${MGC_DESIGN_NAME}/${MGC_DESIGN_NAME}_layout_pex.spice"

# output gds and lef
# if {$FLAT == 0} {
#     select top cell
#     expand
#     gds write "${MGC_DESIGN_NAME}.gds"
# }
# lef write "${MGC_DESIGN_NAME}.lef"

# unset variables
unset MGC_DESIGN_NAME
unset MGC_PORT_LIST
unset FLAT

quit

