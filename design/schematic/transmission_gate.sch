v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -10 -70 -10 80 { lab=in}
N 150 -70 150 80 { lab=out}
N 150 0 190 0 { lab=out}
N -50 0 -10 0 { lab=in

}
N 70 -200 70 -170 { lab=en}
N 70 160 70 190 { lab=en_b}
N -10 -130 40 -130 { lab=in}
N -10 120 40 120 { lab=in}
N 100 -130 150 -130 { lab=out}
N 100 120 150 120 { lab=out}
N 150 80 150 120 { lab=out}
N -10 80 -10 120 { lab=in}
N 150 -130 150 -70 { lab=out}
N -10 -130 -10 -70 { lab=in}
N 70 -130 70 -60 { lab=VSS}
N 70 50 70 120 { lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 70 -150 1 0 {name=M1
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
C {devices/iopin.sym} -150 -200 0 0 {name=p1 lab=in
}
C {devices/iopin.sym} -150 -180 0 0 {name=p2 lab=out
}
C {devices/ipin.sym} -130 -160 0 0 {name=p3 lab=en
}
C {devices/ipin.sym} -130 -140 0 0 {name=p4 lab=en_b}
C {devices/lab_pin.sym} -50 0 0 0 {name=l1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 70 -200 0 0 {name=l2 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 70 190 0 0 {name=l3 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 190 0 2 0 {name=l4 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 70 50 1 0 {name=l6 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 70 -60 3 0 {name=l7 sig_type=std_logic lab=VSS

}
C {sky130_fd_pr/pfet_01v8.sym} 70 140 3 0 {name=M2
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
