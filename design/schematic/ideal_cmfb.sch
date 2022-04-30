v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 100 -200 100 -160 { lab=#net1}
C {devices/vcvs.sym} 100 -70 0 0 {name=E1 value=1}
C {devices/vcvs.sym} 100 -130 0 0 {name=E2 value=1}
C {devices/vcvs.sym} 80 -240 1 1 {name=E3 value=1}
C {devices/lab_pin.sym} 60 -200 3 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 60 -150 0 0 {name=l2 sig_type=std_logic lab=op}
C {devices/lab_pin.sym} 60 -90 0 0 {name=l3 sig_type=std_logic lab=on}
C {devices/lab_pin.sym} 60 -110 0 0 {name=l4 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 60 -50 0 0 {name=l5 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 100 -40 3 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 50 -240 0 0 {name=l7 sig_type=std_logic lab=bias}
C {devices/lab_pin.sym} 110 -240 2 0 {name=l8 sig_type=std_logic lab=cmc}
C {devices/ipin.sym} 260 -240 0 0 {name=p1 lab=bias}
C {devices/ipin.sym} 260 -220 0 0 {name=p2 lab=op}
C {devices/ipin.sym} 260 -200 0 0 {name=p3 lab=on}
C {devices/ipin.sym} 260 -180 0 0 {name=p4 lab=cm}
C {devices/opin.sym} 250 -150 0 0 {name=p5 lab=cmc}
