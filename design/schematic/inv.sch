v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 130 -160 130 -130 { lab=out}
N 130 -260 130 -220 { lab=VDD}
N 90 -190 90 -100 { lab=in}
N 50 -150 90 -150 { lab=in}
N 130 -150 180 -150 { lab=out}
N 130 -190 150 -190 { lab=VDD}
N 150 -240 150 -190 { lab=VDD}
N 130 -240 150 -240 { lab=VDD}
N 130 -100 150 -100 { lab=VSS}
N 150 -100 150 -70 { lab=VSS}
N 130 -70 130 -60 { lab=VSS}
N 150 -70 150 -60 { lab=VSS}
N 130 -60 150 -60 { lab=VSS}
N 130 -60 130 -50 { lab=VSS}
N 130 -50 130 -40 { lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 110 -100 0 0 {name=M2
L=L_N
W=W_N
nf=1
mult=N
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -55 -160 0 0 {name=p1 lab=in}
C {devices/opin.sym} -70 -140 0 0 {name=p3 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 110 -190 0 0 {name=M1
L=L_P
W=W_P
nf=1
mult=N
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 130 -40 3 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 130 -260 1 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -150 2 0 {name=l3 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 50 -150 0 0 {name=l4 sig_type=std_logic lab=in}
