v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -180 400 -180 { lab=bias_a}
N 300 -160 400 -160 { lab=bias_b}
N 300 -140 400 -140 { lab=bias_c}
N 300 -120 400 -120 { lab=bias_d}
N 640 -260 700 -260 { lab=opp}
N 640 -190 700 -190 { lab=#net1}
N 640 -120 700 -120 { lab=opn}
N 940 -260 960 -260 { lab=bias_e}
N 940 -120 960 -120 { lab=bias_a}
N 300 -100 320 -100 { lab=bias_e}
N 660 -480 660 -260 { lab=opp}
N 680 -480 680 -120 { lab=opn}
C {folded_cascode_bias.sym} 60 -60 0 0 {name=x1 VDD=VDD VSS=GND}
C {sc_cmfb.sym} 700 -80 0 0 {name=x3 MF='C_CMFB' VDD=VDD VSS=GND}
C {devices/lab_wire.sym} 320 -180 0 1 {name=l1 sig_type=std_logic lab=bias_a}
C {devices/lab_wire.sym} 320 -160 0 1 {name=l2 sig_type=std_logic lab=bias_b}
C {devices/lab_wire.sym} 320 -140 0 1 {name=l3 sig_type=std_logic lab=bias_c}
C {devices/lab_wire.sym} 320 -120 0 1 {name=l4 sig_type=std_logic lab=bias_d}
C {devices/lab_pin.sym} 400 -260 0 0 {name=l6 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 400 -240 0 0 {name=l7 sig_type=std_logic lab=inn}
C {folded_cascode_core_66dB_78degPM.sym} 380 -60 0 0 {name=x2 VDD=VDD VSS=GND}
C {devices/lab_pin.sym} 80 -140 0 0 {name=l8 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 960 -120 0 1 {name=l9 sig_type=std_logic lab=bias_a}
C {devices/lab_wire.sym} 320 -100 0 1 {name=l5 sig_type=std_logic lab=bias_e}
C {devices/lab_wire.sym} 960 -260 0 1 {name=l10 sig_type=std_logic lab=bias_e}
C {devices/lab_pin.sym} 800 -300 1 0 {name=l11 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 850 -300 1 0 {name=l12 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 850 -80 3 0 {name=l13 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 800 -80 3 0 {name=l14 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 660 -480 1 0 {name=l15 sig_type=std_logic lab=opp}
C {devices/lab_pin.sym} 680 -480 1 0 {name=l17 sig_type=std_logic lab=opn}
C {devices/ipin.sym} 140 -500 0 0 {name=p1 lab=i_bias}
C {devices/ipin.sym} 140 -460 0 0 {name=p2 lab=inp}
C {devices/ipin.sym} 140 -440 0 0 {name=p3 lab=inn}
C {devices/ipin.sym} 140 -400 0 0 {name=p4 lab=phi1}
C {devices/ipin.sym} 140 -380 0 0 {name=p5 lab=phi1_b}
C {devices/ipin.sym} 140 -360 0 0 {name=p6 lab=phi2}
C {devices/ipin.sym} 140 -340 0 0 {name=p7 lab=phi2_b}
C {devices/opin.sym} 130 -310 0 0 {name=p8 lab=opp}
C {devices/opin.sym} 130 -290 0 0 {name=p9 lab=opn}
C {sky130_fd_pr/cap_mim_m3_1.sym} 630 -440 1 0 {name=Ccomp1 model=cap_mim_m3_1 W=1 L=1 MF='C_COMP' spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 710 -440 3 0 {name=Ccomp2 model=cap_mim_m3_1 W=1 L=1 MF='C_COMP' spiceprefix=X}
C {devices/lab_pin.sym} 740 -440 2 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 600 -440 0 0 {name=l18 sig_type=std_logic lab=VSS}
