v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 240 -300 240 -160 { lab=#net1}
N 240 -230 320 -230 { lab=#net1}
C {transmission_gate.sym} 240 -380 1 0 {name=x1 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 240 -80 3 0 {name=x2 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/ipin.sym} 140 -260 0 0 {name=p1 lab=v_hi}
C {devices/ipin.sym} 140 -240 0 0 {name=p2 lab=v_lo}
C {devices/ipin.sym} 140 -220 0 0 {name=p3 lab=v}
C {devices/ipin.sym} 140 -200 0 0 {name=p4 lab=v_b}
C {devices/lab_pin.sym} 280 -350 0 1 {name=l2 sig_type=std_logic lab=v_b}
C {devices/lab_pin.sym} 200 -350 0 0 {name=l1 sig_type=std_logic lab=v}
C {devices/lab_pin.sym} 280 -110 0 1 {name=l3 sig_type=std_logic lab=v_b}
C {devices/lab_pin.sym} 200 -110 0 0 {name=l4 sig_type=std_logic lab=v}
C {devices/lab_pin.sym} 240 -400 1 0 {name=l5 sig_type=std_logic lab=v_hi}
C {devices/lab_pin.sym} 240 -60 3 0 {name=l6 sig_type=std_logic lab=v_lo}
C {devices/opin.sym} 320 -230 0 0 {name=p7 lab=out}
