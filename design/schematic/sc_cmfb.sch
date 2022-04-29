v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 480 -600 640 -600 { lab=#net1}
N 640 -600 800 -600 { lab=#net1}
N 480 -380 800 -380 { lab=#net2}
N 640 -460 640 -380 { lab=#net2}
N 640 -600 640 -520 { lab=#net1}
N 640 -240 640 -160 { lab=#net3}
N 640 -380 640 -300 { lab=#net2}
N 480 -160 800 -160 { lab=#net3}
N 60 -600 220 -600 { lab=opp}
N 220 -600 380 -600 { lab=opp}
N 60 -380 380 -380 { lab=cmc}
N 220 -460 220 -380 { lab=cmc}
N 220 -600 220 -520 { lab=opp}
N 220 -240 220 -160 { lab=opn}
N 220 -380 220 -300 { lab=cmc}
N 60 -160 380 -160 { lab=opn}
N 900 -600 1060 -600 { lab=cm}
N 900 -380 1060 -380 { lab=bias_a}
N 900 -160 1060 -160 { lab=cm}
C {transmission_gate.sym} 820 -600 0 0 {name=x1 VDD=VDD VSS=GND W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 820 -380 0 0 {name=x2 VDD=VDD VSS=GND W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 820 -160 0 0 {name=x3 VDD=VDD VSS=GND W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 400 -600 0 0 {name=x4 VDD=VDD VSS=GND W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 400 -380 0 0 {name=x5 VDD=VDD VSS=GND W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 400 -160 0 0 {name=x6 VDD=VDD VSS=GND W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {sky130_fd_pr/cap_mim_m3_1.sym} 640 -490 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF='MF' spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 640 -270 0 0 {name=C2 model=cap_mim_m3_1 W=1 L=1 MF='MF' spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 220 -490 0 0 {name=C3 model=cap_mim_m3_1 W=1 L=1 MF='MF' spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 220 -270 0 0 {name=C4 model=cap_mim_m3_1 W=1 L=1 MF='MF' spiceprefix=X}
C {devices/lab_pin.sym} 60 -600 0 0 {name=l1 sig_type=std_logic lab=opp}
C {devices/lab_pin.sym} 60 -160 0 0 {name=l2 sig_type=std_logic lab=opn}
C {devices/lab_pin.sym} 60 -380 0 0 {name=l3 sig_type=std_logic lab=cmc}
C {devices/lab_pin.sym} 1060 -600 0 1 {name=l4 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 1060 -380 0 1 {name=l6 sig_type=std_logic lab=bias_a}
C {devices/lab_pin.sym} 1060 -160 0 1 {name=l5 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 850 -640 3 1 {name=l7 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 850 -560 3 0 {name=l8 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 850 -420 3 1 {name=l9 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 850 -340 3 0 {name=l10 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 850 -200 3 1 {name=l11 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 850 -120 3 0 {name=l12 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 430 -200 3 1 {name=l13 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 430 -120 3 0 {name=l14 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 430 -420 3 1 {name=l15 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 430 -340 3 0 {name=l16 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 430 -640 3 1 {name=l17 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 430 -560 3 0 {name=l18 sig_type=std_logic lab=phi2}
C {devices/ipin.sym} 1300 -510 0 0 {name=p1 lab=opn}
C {devices/ipin.sym} 1300 -490 0 0 {name=p2 lab=cm}
C {devices/ipin.sym} 1300 -470 0 0 {name=p3 lab=bias_a}
C {devices/ipin.sym} 1300 -530 0 0 {name=p4 lab=opp}
C {devices/opin.sym} 1290 -440 0 0 {name=p5 lab=cmc}
C {devices/ipin.sym} 1300 -550 0 0 {name=p6 lab=phi2_b}
C {devices/ipin.sym} 1300 -570 0 0 {name=p7 lab=phi2}
C {devices/ipin.sym} 1300 -590 0 0 {name=p8 lab=phi1_b}
C {devices/ipin.sym} 1300 -610 0 0 {name=p9 lab=phi1}
