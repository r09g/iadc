#!/bin/bash

# Get layout of standard cells used in design
STD_LAYOUT_PATH=$PDK_ROOT/sky130A/libs.ref/sky130_fd_sc_hd/mag
LOCAL_PATH=stdcells

cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__buf_2.mag ./$LOCAL_PATH
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__clkdlybuf4s50_1.mag ./$LOCAL_PATH 
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__clkinv_1.mag ./$LOCAL_PATH 
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__clkinv_4.mag ./$LOCAL_PATH 
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__clkbuf_16.mag ./$LOCAL_PATH
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__clkbuf_4.mag ./$LOCAL_PATH 
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__dfxbp_1.mag ./$LOCAL_PATH 
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__inv_1.mag ./$LOCAL_PATH 
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__mux2_1.mag ./$LOCAL_PATH 
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__nand2_1.mag ./$LOCAL_PATH 
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__nand2_4.mag ./$LOCAL_PATH
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__tapvpwrvgnd_1.mag ./$LOCAL_PATH
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__fill* ./$LOCAL_PATH
cp $STD_LAYOUT_PATH/sky130_fd_sc_hd__decap* ./$LOCAL_PATH

