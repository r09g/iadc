v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 320 -220 480 -220 { lab=#net1}
N 400 -220 400 -140 { lab=#net1}
C {transmission_gate.sym} 240 -220 0 0 {name=x1 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 500 -220 0 0 {name=x2 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {sky130_fd_pr/nfet_01v8.sym} 380 -110 0 0 {name=M1
L=0.15
W=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 400 -80 3 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 -110 2 0 {name=l2 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 70 -320 0 0 {name=p1 lab=in}
C {devices/iopin.sym} 70 -300 0 0 {name=p2 lab=out}
C {devices/ipin.sym} 90 -280 0 0 {name=p3 lab=en}
C {devices/lab_pin.sym} 220 -220 0 0 {name=l3 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 580 -220 0 1 {name=l4 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 270 -180 3 0 {name=l5 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 530 -180 3 0 {name=l6 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 360 -110 0 0 {name=l7 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 270 -260 1 0 {name=l8 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 530 -260 1 0 {name=l9 sig_type=std_logic lab=en_b}
C {devices/ipin.sym} 90 -260 0 0 {name=p4 lab=en_b}
