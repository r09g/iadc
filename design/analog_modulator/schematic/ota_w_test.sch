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
N 640 -260 700 -260 { lab=op}
N 640 -190 700 -190 { lab=cmc}
N 640 -120 700 -120 { lab=on}
N 940 -260 960 -260 { lab=cm}
N 940 -120 960 -120 { lab=bias_a}
N 300 -100 320 -100 { lab=cm}
N 660 -480 660 -260 { lab=op}
N 680 -480 680 -120 { lab=on}
C {devices/lab_wire.sym} 320 -180 0 1 {name=l1 sig_type=std_logic lab=bias_a}
C {devices/lab_wire.sym} 320 -160 0 1 {name=l2 sig_type=std_logic lab=bias_b}
C {devices/lab_wire.sym} 320 -140 0 1 {name=l3 sig_type=std_logic lab=bias_c}
C {devices/lab_wire.sym} 320 -120 0 1 {name=l4 sig_type=std_logic lab=bias_d}
C {devices/lab_pin.sym} 400 -260 0 0 {name=l6 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 400 -240 0 0 {name=l7 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 80 -140 0 0 {name=l8 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 960 -120 0 1 {name=l9 sig_type=std_logic lab=bias_a}
C {devices/lab_wire.sym} 320 -100 0 1 {name=l5 sig_type=std_logic lab=cm}
C {devices/lab_wire.sym} 960 -260 0 1 {name=l10 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 800 -300 1 0 {name=l11 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 850 -300 1 0 {name=l12 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 850 -80 3 0 {name=l13 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 800 -80 3 0 {name=l14 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 660 -480 1 0 {name=l15 sig_type=std_logic lab=op}
C {devices/lab_pin.sym} 680 -480 1 0 {name=l17 sig_type=std_logic lab=on}
C {devices/ipin.sym} 140 -640 0 0 {name=p2 lab=ip}
C {devices/ipin.sym} 140 -620 0 0 {name=p3 lab=in}
C {devices/ipin.sym} 140 -580 0 0 {name=p4 lab=phi1}
C {devices/ipin.sym} 140 -560 0 0 {name=p5 lab=phi1_b}
C {devices/ipin.sym} 140 -540 0 0 {name=p6 lab=phi2}
C {devices/ipin.sym} 140 -520 0 0 {name=p7 lab=phi2_b}
C {devices/opin.sym} 130 -490 0 0 {name=p8 lab=op}
C {devices/opin.sym} 130 -470 0 0 {name=p9 lab=on}
C {devices/lab_wire.sym} 640 -190 0 1 {name=l23 sig_type=std_logic lab=cmc}
C {devices/ipin.sym} 140 -680 0 0 {name=p1 lab=i_bias}
C {folded_cascode_3_bias.sym} 60 -60 0 0 {name=x1 VDD=VDD VSS=VSS}
C {devices/opin.sym} 130 -450 0 0 {name=p10 lab=cm}
C {sc_cmfb.sym} 700 -80 0 0 {name=x3 VDD=VDD VSS=VSS}
C {folded_cascode_3_core.sym} 380 -60 0 0 {name=x2 VDD=VDD VSS=VSS}
C {devices/opin.sym} 130 -410 0 0 {name=p11 lab=bias_a}
C {devices/opin.sym} 130 -390 0 0 {name=p12 lab=bias_b}
C {devices/opin.sym} 130 -370 0 0 {name=p13 lab=bias_c}
C {devices/opin.sym} 130 -350 0 0 {name=p14 lab=bias_d}
C {devices/opin.sym} 130 -310 0 0 {name=p15 lab=cmc}
