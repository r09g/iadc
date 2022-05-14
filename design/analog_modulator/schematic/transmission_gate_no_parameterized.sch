v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 90 -280 90 -130 { lab=in}
N 250 -280 250 -130 { lab=out}
N 250 -210 290 -210 { lab=out}
N 50 -210 90 -210 { lab=in

}
N 170 -410 170 -380 { lab=en}
N 170 -50 170 -20 { lab=en_b}
N 90 -340 140 -340 { lab=in}
N 90 -90 140 -90 { lab=in}
N 200 -340 250 -340 { lab=out}
N 200 -90 250 -90 { lab=out}
N 250 -130 250 -90 { lab=out}
N 90 -130 90 -90 { lab=in}
N 250 -340 250 -280 { lab=out}
N 90 -340 90 -280 { lab=in}
N 170 -160 170 -90 { lab=VDD}
N 170 -340 170 -270 { lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 170 -360 1 0 {name=M1
L=0.15
W=5.3
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
C {devices/iopin.sym} -50 -410 0 0 {name=p1 lab=in
}
C {devices/iopin.sym} -50 -390 0 0 {name=p2 lab=out
}
C {devices/ipin.sym} -30 -370 0 0 {name=p3 lab=en
}
C {devices/ipin.sym} -30 -350 0 0 {name=p4 lab=en_b}
C {devices/lab_pin.sym} 50 -210 0 0 {name=l1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 170 -410 0 0 {name=l2 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 170 -20 0 0 {name=l3 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 290 -210 2 0 {name=l4 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 170 -160 1 0 {name=l6 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/pfet_01v8.sym} 170 -70 3 0 {name=M2
L=0.15
W=13.7
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
C {devices/lab_pin.sym} 170 -270 1 1 {name=l5 sig_type=std_logic lab=VSS
}
