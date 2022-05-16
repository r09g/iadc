v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 -280 220 -130 { lab=in}
N 380 -280 380 -130 { lab=out}
N 380 -210 420 -210 { lab=out}
N 180 -210 220 -210 { lab=in

}
N 300 -410 300 -380 { lab=en}
N 300 -50 300 -20 { lab=en_b}
N 220 -340 270 -340 { lab=in}
N 220 -90 270 -90 { lab=in}
N 330 -340 380 -340 { lab=out}
N 330 -90 380 -90 { lab=out}
N 380 -130 380 -90 { lab=out}
N 220 -130 220 -90 { lab=in}
N 380 -340 380 -280 { lab=out}
N 220 -340 220 -280 { lab=in}
N 300 -160 300 -90 { lab=VDD}
N 300 -340 300 -270 { lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 300 -360 1 0 {name=M1
L='L_N'
W='W_N'
nf=10 
mult='N'
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 80 -410 0 0 {name=p1 lab=in
}
C {devices/iopin.sym} 80 -390 0 0 {name=p2 lab=out
}
C {devices/ipin.sym} 100 -370 0 0 {name=p3 lab=en
}
C {devices/ipin.sym} 100 -350 0 0 {name=p4 lab=en_b}
C {devices/lab_pin.sym} 180 -210 0 0 {name=l1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 300 -410 0 0 {name=l2 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 300 -20 0 0 {name=l3 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 420 -210 2 0 {name=l4 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 300 -160 1 0 {name=l6 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/pfet_01v8.sym} 300 -70 3 0 {name=M2
L='L_P'
W='W_P'
nf=10
mult='N'
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 300 -270 1 1 {name=l5 sig_type=std_logic lab=VSS
}
