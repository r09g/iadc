v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -70 40 80 { lab=in}
N 100 -70 100 80 { lab=out}
N 100 0 140 -0 { lab=out}
N -0 -0 40 0 { lab=in

}
N 70 -140 70 -110 { lab=en}
N 70 120 70 150 { lab=en_b}
N 70 -70 70 -60 { lab=vss}
N 70 70 70 80 { lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} 70 -90 3 1 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 70 100 3 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} -130 -140 0 0 {name=p1 lab=in
}
C {devices/iopin.sym} -130 -120 0 0 {name=p2 lab=out
}
C {devices/ipin.sym} -110 -100 0 0 {name=p3 lab=en
}
C {devices/ipin.sym} -110 -80 0 0 {name=p4 lab=en_b}
C {devices/lab_pin.sym} 0 0 0 0 {name=l1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 70 -140 0 0 {name=l2 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 70 150 0 0 {name=l3 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 140 0 2 0 {name=l4 sig_type=std_logic lab=out}
C {devices/iopin.sym} -130 -60 0 0 {name=p5 lab=vdd
}
C {devices/iopin.sym} -130 -40 0 0 {name=p6 lab=vss
}
C {devices/lab_pin.sym} 70 -60 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 70 70 1 0 {name=l6 sig_type=std_logic lab=vdd}
