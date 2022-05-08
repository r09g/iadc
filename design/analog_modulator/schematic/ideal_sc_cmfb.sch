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
N 60 -600 220 -600 { lab=op}
N 220 -600 380 -600 { lab=op}
N 60 -380 380 -380 { lab=cmc}
N 220 -460 220 -380 { lab=cmc}
N 220 -600 220 -520 { lab=op}
N 220 -240 220 -160 { lab=on}
N 220 -380 220 -300 { lab=cmc}
N 60 -160 380 -160 { lab=on}
N 900 -600 1060 -600 { lab=cm}
N 900 -380 1060 -380 { lab=bias_a}
N 900 -160 1060 -160 { lab=cm}
N 380 -600 400 -600 { lab=op}
N 460 -600 480 -600 { lab=#net1}
N 380 -380 400 -380 { lab=cmc}
N 460 -380 480 -380 { lab=#net2}
N 380 -160 400 -160 { lab=on}
N 460 -160 480 -160 { lab=#net3}
N 800 -600 820 -600 { lab=#net1}
N 880 -600 900 -600 { lab=cm}
N 800 -380 820 -380 { lab=#net2}
N 880 -380 900 -380 { lab=bias_a}
N 800 -160 820 -160 { lab=#net3}
N 880 -160 900 -160 { lab=cm}
C {devices/lab_pin.sym} 60 -600 0 0 {name=l1 sig_type=std_logic lab=op}
C {devices/lab_pin.sym} 60 -160 0 0 {name=l2 sig_type=std_logic lab=on}
C {devices/lab_pin.sym} 60 -380 0 0 {name=l3 sig_type=std_logic lab=cmc}
C {devices/lab_pin.sym} 1060 -600 0 1 {name=l4 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 1060 -380 0 1 {name=l6 sig_type=std_logic lab=bias_a}
C {devices/lab_pin.sym} 1060 -160 0 1 {name=l5 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 850 -560 3 0 {name=l8 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 850 -340 3 0 {name=l10 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 850 -120 3 0 {name=l12 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 430 -560 3 0 {name=l18 sig_type=std_logic lab=phi2}
C {devices/ipin.sym} 1300 -510 0 0 {name=p1 lab=on}
C {devices/ipin.sym} 1300 -490 0 0 {name=p2 lab=cm}
C {devices/ipin.sym} 1300 -470 0 0 {name=p3 lab=bias_a}
C {devices/ipin.sym} 1300 -530 0 0 {name=p4 lab=op}
C {devices/opin.sym} 1290 -440 0 0 {name=p5 lab=cmc}
C {devices/ipin.sym} 1300 -550 0 0 {name=p6 lab=phi2_b}
C {devices/ipin.sym} 1300 -570 0 0 {name=p7 lab=phi2}
C {devices/ipin.sym} 1300 -590 0 0 {name=p8 lab=phi1_b}
C {devices/ipin.sym} 1300 -610 0 0 {name=p9 lab=phi1}
C {devices/capa.sym} 220 -490 0 0 {name=C1
m=1
value='MF*2f'
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 220 -270 0 0 {name=C2
m=1
value='MF*2f'
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 640 -490 0 0 {name=C3
m=1
value='MF*1f'
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 640 -270 0 0 {name=C4
m=1
value='MF*1f'
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} 430 -600 3 0 {name=S1 model=SWITCH1}
C {devices/lab_pin.sym} 430 -340 3 0 {name=l7 sig_type=std_logic lab=phi2}
C {devices/switch_ngspice.sym} 430 -380 3 0 {name=S2 model=SWITCH1}
C {devices/lab_pin.sym} 430 -120 3 0 {name=l9 sig_type=std_logic lab=phi2}
C {devices/switch_ngspice.sym} 430 -160 3 0 {name=S3 model=SWITCH1}
C {devices/switch_ngspice.sym} 850 -600 3 0 {name=S4 model=SWITCH1}
C {devices/switch_ngspice.sym} 850 -380 3 0 {name=S5 model=SWITCH1}
C {devices/switch_ngspice.sym} 850 -160 3 0 {name=S6 model=SWITCH1}
C {devices/gnd.sym} 450 -560 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 450 -340 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 450 -120 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 870 -560 0 0 {name=l15 lab=GND}
C {devices/gnd.sym} 870 -340 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 870 -120 0 0 {name=l17 lab=GND}
