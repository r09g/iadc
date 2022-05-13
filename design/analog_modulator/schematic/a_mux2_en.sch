v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 650 -320 750 -320 { lab=#net1}
N 650 -120 870 -120 { lab=#net2}
N 870 -320 1070 -320 { lab=out}
N 990 -120 1070 -120 { lab=out}
N 1070 -320 1270 -320 { lab=out}
N 570 -320 650 -320 { lab=#net1}
N 570 -120 650 -120 { lab=#net2}
N 480 -760 480 -740 { lab=en}
N 480 -760 520 -760 { lab=en}
N 520 -780 520 -660 { lab=en}
N 410 -320 470 -320 { lab=in0}
N 410 -120 470 -120 { lab=in1}
N 1070 -320 1070 -120 { lab=out}
N 590 -760 590 -740 { lab=s0}
N 590 -760 630 -760 { lab=s0}
N 630 -780 630 -660 { lab=s0}
C {switch_5t.sym} 860 -170 2 1 {name=x3 VDD=VDD VSS=VSS}
C {switch_5t.sym} 740 -370 2 1 {name=x4 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 930 -200 1 0 {name=x7 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 810 -400 1 0 {name=x8 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 810 -440 1 0 {name=l1 sig_type=std_logic lab=s0}
C {devices/lab_pin.sym} 810 -280 3 0 {name=l2 sig_type=std_logic lab=s0}
C {devices/lab_pin.sym} 930 -240 1 0 {name=l3 sig_type=std_logic lab=s0_b}
C {devices/lab_pin.sym} 930 -80 3 0 {name=l4 sig_type=std_logic lab=s0_b}
C {devices/lab_pin.sym} 1270 -320 0 1 {name=l13 sig_type=std_logic lab=out}
C {transmission_gate.sym} 490 -320 0 0 {name=x15 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 490 -120 0 0 {name=x16 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {sky130_stdcells/inv_1.sym} 480 -700 1 0 {name=x19 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 520 -780 1 0 {name=l28 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 480 -660 3 0 {name=l29 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 520 -660 3 0 {name=l30 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 410 -320 0 0 {name=l39 sig_type=std_logic lab=in0}
C {devices/lab_pin.sym} 410 -120 0 0 {name=l9 sig_type=std_logic lab=in1}
C {devices/ipin.sym} 110 -380 0 0 {name=p6 lab=en}
C {devices/ipin.sym} 110 -400 0 0 {name=p8 lab=s0}
C {devices/ipin.sym} 110 -340 0 0 {name=p1 lab=in0}
C {devices/ipin.sym} 110 -320 0 0 {name=p2 lab=in1}
C {devices/opin.sym} 100 -290 0 0 {name=p5 lab=out}
C {sky130_stdcells/inv_1.sym} 590 -700 1 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 630 -780 1 0 {name=l5 sig_type=std_logic lab=s0}
C {devices/lab_pin.sym} 590 -660 3 0 {name=l6 sig_type=std_logic lab=s0_b}
C {devices/lab_pin.sym} 630 -660 3 0 {name=l7 sig_type=std_logic lab=s0}
C {devices/lab_pin.sym} 520 -280 3 0 {name=l8 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 520 -360 1 0 {name=l10 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 520 -80 3 0 {name=l11 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 520 -160 1 0 {name=l12 sig_type=std_logic lab=en_b}
