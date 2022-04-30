v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 212.5 -127.5 235 -127.5 { lab=#net1}
N 340 -127.5 365 -127.5 { lab=#net2}
N 77.5 -127.5 107.5 -127.5 { lab=in}
C {inv.sym} 155 -127.5 0 0 {name=x1 VDD=VDD VSS=GND N=1 W_N=2 L_N=0.2 W_P=5 L_P=0.2}
C {inv.sym} 282.5 -127.5 0 0 {name=x2 VDD=VDD VSS=GND N=1 W_N=2 L_N=0.2 W_P=5 L_P=0.2}
C {devices/ipin.sym} 77.5 -127.5 0 0 {name=p1 lab=in}
C {devices/opin.sym} 365 -127.5 0 0 {name=p2 lab=out}
