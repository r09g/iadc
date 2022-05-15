v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 140 -160 140 -100 { lab=#net1}
N 140 -70 160 -70 { lab=VSS}
N 160 -70 160 -20 { lab=VSS}
N 140 -20 160 -20 { lab=VSS}
N 140 -40 140 -20 { lab=VSS}
N 140 -190 160 -190 { lab=VDD}
N 160 -240 160 -190 { lab=VDD}
N 140 -240 160 -240 { lab=VDD}
N 140 -240 140 -220 { lab=VDD}
N 80 -190 100 -190 { lab=VDD}
N 80 -240 80 -200 { lab=VDD}
N 80 -240 140 -240 { lab=VDD}
N 80 -200 80 -190 { lab=VDD}
N 80 -70 100 -70 { lab=VSS}
N 80 -70 80 -20 { lab=VSS}
N 80 -20 140 -20 { lab=VSS}
N 80 -130 140 -130 {}
C {devices/iopin.sym} 80 -130 0 1 {name=p1 lab=esd}
C {devices/lab_wire.sym} 80 -20 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 120 -70 0 0 {name=M1
L=0.5
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 120 -190 0 0 {name=M2
L=0.5
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 80 -240 0 0 {name=l1 sig_type=std_logic lab=VDD}
