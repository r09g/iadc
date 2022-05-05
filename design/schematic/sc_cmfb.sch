v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1180 -560 1340 -560 { lab=#net1}
N 1340 -560 1500 -560 { lab=#net1}
N 1180 -340 1500 -340 { lab=#net2}
N 1340 -420 1340 -340 { lab=#net2}
N 1340 -560 1340 -480 { lab=#net1}
N 1340 -200 1340 -120 { lab=#net3}
N 1340 -340 1340 -260 { lab=#net2}
N 1180 -120 1500 -120 { lab=#net3}
N 760 -560 920 -560 { lab=op}
N 920 -560 1080 -560 { lab=op}
N 760 -340 1080 -340 { lab=cmc}
N 920 -420 920 -340 { lab=cmc}
N 920 -560 920 -480 { lab=op}
N 920 -200 920 -120 { lab=on}
N 920 -340 920 -260 { lab=cmc}
N 760 -120 1080 -120 { lab=on}
N 1600 -560 1760 -560 { lab=cm}
N 1600 -340 1760 -340 { lab=bias_a}
N 1600 -120 1760 -120 { lab=cm}
N 340 -560 500 -560 { lab=#net4}
N 500 -560 660 -560 { lab=#net4}
N 340 -340 660 -340 { lab=#net5}
N 500 -420 500 -340 { lab=#net5}
N 500 -560 500 -480 { lab=#net4}
N 500 -200 500 -120 { lab=#net6}
N 500 -340 500 -260 { lab=#net5}
N 340 -120 660 -120 { lab=#net6}
N 80 -560 240 -560 { lab=cm}
N 80 -340 240 -340 { lab=bias_a}
N 80 -120 240 -120 { lab=cm}
N 920 -340 960 -380 { lab=cmc}
N 920 -560 960 -600 { lab=op}
N 920 -120 960 -160 { lab=on}
C {sky130_fd_pr/cap_mim_m3_1.sym} 920 -450 0 0 {name=C3 model=cap_mim_m3_1 W=4.8 L=4.8 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 920 -230 2 1 {name=C4 model=cap_mim_m3_1 W=4.8 L=4.8 MF=4 spiceprefix=X}
C {devices/lab_wire.sym} 960 -600 0 1 {name=l1 sig_type=std_logic lab=op}
C {devices/lab_wire.sym} 960 -160 0 1 {name=l2 sig_type=std_logic lab=on}
C {devices/lab_wire.sym} 960 -380 0 1 {name=l3 sig_type=std_logic lab=cmc}
C {devices/lab_pin.sym} 1760 -560 0 1 {name=l4 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 1760 -340 0 1 {name=l6 sig_type=std_logic lab=bias_a}
C {devices/lab_pin.sym} 1760 -120 0 1 {name=l5 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 1550 -600 3 1 {name=l7 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 1550 -520 3 0 {name=l8 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1550 -380 3 1 {name=l9 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 1550 -300 3 0 {name=l10 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1550 -160 3 1 {name=l11 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 1550 -80 3 0 {name=l12 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1130 -160 3 1 {name=l13 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 1130 -80 3 0 {name=l14 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1130 -380 3 1 {name=l15 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 1130 -300 3 0 {name=l16 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1130 -600 3 1 {name=l17 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 1130 -520 3 0 {name=l18 sig_type=std_logic lab=phi2}
C {devices/ipin.sym} 1950 -460 0 0 {name=p1 lab=on}
C {devices/ipin.sym} 1950 -440 0 0 {name=p2 lab=cm}
C {devices/ipin.sym} 1950 -420 0 0 {name=p3 lab=bias_a}
C {devices/ipin.sym} 1950 -480 0 0 {name=p4 lab=op}
C {devices/opin.sym} 1940 -390 0 0 {name=p5 lab=cmc}
C {devices/ipin.sym} 1950 -500 0 0 {name=p6 lab=phi2_b}
C {devices/ipin.sym} 1950 -520 0 0 {name=p7 lab=phi2}
C {devices/ipin.sym} 1950 -540 0 0 {name=p8 lab=phi1_b}
C {devices/ipin.sym} 1950 -560 0 0 {name=p9 lab=phi1}
C {transmission_gate.sym} 1160 -560 0 1 {name=x1 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 1160 -340 0 1 {name=x2 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 1160 -120 0 1 {name=x3 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 1580 -560 0 1 {name=x4 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 1580 -340 0 1 {name=x5 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 1580 -120 0 1 {name=x6 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {sky130_fd_pr/cap_mim_m3_1.sym} 500 -450 0 0 {name=C5 model=cap_mim_m3_1 W=4.8 L=4.8 MF=2 spiceprefix=X}
C {devices/lab_pin.sym} 710 -600 3 1 {name=l19 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 710 -520 3 0 {name=l20 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 710 -380 3 1 {name=l21 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 710 -300 3 0 {name=l22 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 710 -160 3 1 {name=l23 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 710 -80 3 0 {name=l24 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 290 -160 3 1 {name=l25 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 290 -80 3 0 {name=l26 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 290 -380 3 1 {name=l27 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 290 -300 3 0 {name=l28 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 290 -600 3 1 {name=l29 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 290 -520 3 0 {name=l30 sig_type=std_logic lab=phi2}
C {transmission_gate.sym} 680 -560 0 0 {name=x7 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 680 -340 0 0 {name=x8 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 680 -120 0 0 {name=x9 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 260 -560 0 0 {name=x10 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 260 -340 0 0 {name=x11 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 260 -120 0 0 {name=x12 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/lab_pin.sym} 80 -560 0 0 {name=l31 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 80 -340 0 0 {name=l32 sig_type=std_logic lab=bias_a}
C {devices/lab_pin.sym} 80 -120 0 0 {name=l33 sig_type=std_logic lab=cm}
C {sky130_fd_pr/cap_mim_m3_1.sym} 500 -230 2 0 {name=C6 model=cap_mim_m3_1 W=4.8 L=4.8 MF=2 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1340 -450 0 0 {name=C1 model=cap_mim_m3_1 W=4.8 L=4.8 MF=2 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1340 -230 2 0 {name=C2 model=cap_mim_m3_1 W=4.8 L=4.8 MF=2 spiceprefix=X}
