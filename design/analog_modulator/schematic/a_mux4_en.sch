v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 640 -790 740 -790 { lab=#net1}
N 640 -590 860 -590 { lab=#net2}
N 640 -390 980 -390 { lab=#net3}
N 640 -190 1100 -190 { lab=#net4}
N 860 -790 1280 -790 { lab=out}
N 1280 -790 1280 -190 { lab=out}
N 1220 -190 1280 -190 { lab=out}
N 1100 -390 1280 -390 { lab=out}
N 980 -590 1280 -590 { lab=out}
N 1280 -790 1480 -790 { lab=out}
N 640 -1540 640 -1240 { lab=s0}
N 660 -1540 660 -1240 { lab=s1}
N 640 -1520 840 -1520 { lab=s0}
N 840 -1540 840 -1240 { lab=s0}
N 660 -1500 860 -1500 { lab=s1}
N 860 -1540 860 -1240 { lab=s1}
N 640 -1460 720 -1460 { lab=s0}
N 660 -1400 720 -1400 { lab=s1}
N 800 -1460 880 -1460 { lab=s0_b}
N 800 -1400 900 -1400 { lab=s1_b}
N 880 -1540 880 -1240 { lab=s0_b}
N 900 -1540 900 -1240 { lab=s1_b}
N 640 -1240 640 -1080 { lab=s0}
N 660 -1240 660 -1080 { lab=s1}
N 840 -1240 840 -1080 { lab=s0}
N 860 -1240 860 -1080 { lab=s1}
N 880 -1240 880 -1080 { lab=s0_b}
N 900 -1240 900 -1080 { lab=s1_b}
N 900 -1380 940 -1380 { lab=s1_b}
N 880 -1340 940 -1340 { lab=s0_b}
N 880 -1260 940 -1260 { lab=s0_b}
N 860 -1300 940 -1300 { lab=s1}
N 840 -1220 940 -1220 { lab=s0}
N 900 -1180 940 -1180 { lab=s1_b}
N 840 -1140 940 -1140 { lab=s0}
N 860 -1100 940 -1100 { lab=s1}
N 560 -790 640 -790 { lab=#net1}
N 560 -590 640 -590 { lab=#net2}
N 560 -390 640 -390 { lab=#net3}
N 560 -190 640 -190 { lab=#net4}
N 470 -1520 470 -1500 { lab=en}
N 470 -1520 510 -1520 { lab=en}
N 510 -1540 510 -1420 { lab=en}
N 400 -790 460 -790 { lab=in0}
N 400 -590 460 -590 { lab=in1}
N 400 -390 460 -390 { lab=in2}
N 400 -190 460 -190 { lab=in3}
C {switch_5t.sym} 1090 -240 2 1 {name=x1 VDD=VDD VSS=VSS}
C {switch_5t.sym} 970 -440 2 1 {name=x2 VDD=VDD VSS=VSS}
C {switch_5t.sym} 850 -640 2 1 {name=x3 VDD=VDD VSS=VSS}
C {switch_5t.sym} 730 -840 2 1 {name=x4 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 1160 -270 1 0 {name=x5 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 1040 -470 1 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 920 -670 1 0 {name=x7 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 800 -870 1 0 {name=x8 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 800 -910 1 0 {name=l1 sig_type=std_logic lab=en0_b}
C {devices/lab_pin.sym} 800 -750 3 0 {name=l2 sig_type=std_logic lab=en0_b}
C {devices/lab_pin.sym} 920 -710 1 0 {name=l3 sig_type=std_logic lab=en1_b}
C {devices/lab_pin.sym} 920 -550 3 0 {name=l4 sig_type=std_logic lab=en1_b}
C {devices/lab_pin.sym} 1040 -510 1 0 {name=l5 sig_type=std_logic lab=en2_b}
C {devices/lab_pin.sym} 1040 -350 3 0 {name=l6 sig_type=std_logic lab=en2_b}
C {devices/lab_pin.sym} 1160 -310 1 0 {name=l7 sig_type=std_logic lab=en3_b}
C {devices/lab_pin.sym} 1160 -150 3 0 {name=l8 sig_type=std_logic lab=en3_b}
C {devices/lab_pin.sym} 1480 -790 0 1 {name=l13 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 1060 -1360 0 1 {name=l14 sig_type=std_logic lab=en0_b}
C {devices/lab_pin.sym} 1060 -1280 2 0 {name=l15 sig_type=std_logic lab=en1_b}
C {devices/lab_pin.sym} 1060 -1200 2 0 {name=l16 sig_type=std_logic lab=en2_b}
C {devices/lab_pin.sym} 1060 -1120 2 0 {name=l17 sig_type=std_logic lab=en3_b}
C {sky130_stdcells/inv_1.sym} 760 -1460 0 0 {name=x13 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 640 -1540 1 0 {name=l18 sig_type=std_logic lab=s0}
C {devices/lab_pin.sym} 660 -1540 1 0 {name=l19 sig_type=std_logic lab=s1}
C {sky130_stdcells/inv_1.sym} 760 -1400 0 0 {name=x14 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 -1540 1 0 {name=l20 sig_type=std_logic lab=s0}
C {devices/lab_pin.sym} 860 -1540 1 0 {name=l21 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 880 -1540 1 0 {name=l22 sig_type=std_logic lab=s0_b}
C {devices/lab_pin.sym} 900 -1540 1 0 {name=l23 sig_type=std_logic lab=s1_b}
C {sky130_stdcells/nand2_1.sym} 1000 -1360 0 0 {name=x9 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 1000 -1280 0 0 {name=x10 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 1000 -1200 0 0 {name=x11 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 1000 -1120 0 0 {name=x12 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {transmission_gate.sym} 480 -790 0 0 {name=x15 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 480 -590 0 0 {name=x16 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 480 -390 0 0 {name=x17 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 480 -190 0 0 {name=x18 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {sky130_stdcells/inv_1.sym} 470 -1460 1 0 {name=x19 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 510 -1540 1 0 {name=l28 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 470 -1420 3 0 {name=l29 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 510 -1420 3 0 {name=l30 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 400 -790 0 0 {name=l39 sig_type=std_logic lab=in0}
C {devices/lab_pin.sym} 400 -590 0 0 {name=l9 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 400 -390 0 0 {name=l10 sig_type=std_logic lab=in2}
C {devices/lab_pin.sym} 400 -190 0 0 {name=l11 sig_type=std_logic lab=in3}
C {devices/ipin.sym} 100 -830 0 0 {name=p6 lab=en}
C {devices/ipin.sym} 100 -850 0 0 {name=p7 lab=s1}
C {devices/ipin.sym} 100 -870 0 0 {name=p8 lab=s0}
C {devices/ipin.sym} 100 -790 0 0 {name=p1 lab=in0}
C {devices/ipin.sym} 100 -770 0 0 {name=p2 lab=in1}
C {devices/ipin.sym} 100 -750 0 0 {name=p3 lab=in2}
C {devices/ipin.sym} 100 -730 0 0 {name=p4 lab=in3}
C {devices/opin.sym} 90 -700 0 0 {name=p5 lab=out}
C {devices/lab_pin.sym} 510 -830 1 0 {name=l12 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 510 -750 3 0 {name=l24 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 510 -630 1 0 {name=l25 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 510 -550 3 0 {name=l26 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 510 -430 1 0 {name=l27 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 510 -350 3 0 {name=l31 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 510 -230 1 0 {name=l32 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 510 -150 3 0 {name=l33 sig_type=std_logic lab=en}
