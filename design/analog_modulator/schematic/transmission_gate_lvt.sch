v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 250 -310 250 -160 { lab=in}
N 410 -310 410 -160 { lab=out}
N 410 -240 450 -240 { lab=out}
N 210 -240 250 -240 { lab=in

}
N 330 -440 330 -410 { lab=en}
N 330 -80 330 -50 { lab=en_b}
N 250 -370 300 -370 { lab=in}
N 250 -120 300 -120 { lab=in}
N 360 -370 410 -370 { lab=out}
N 360 -120 410 -120 { lab=out}
N 410 -160 410 -120 { lab=out}
N 250 -160 250 -120 { lab=in}
N 410 -370 410 -310 { lab=out}
N 250 -370 250 -310 { lab=in}
N 330 -370 330 -300 { lab=VSS}
N 330 -190 330 -120 { lab=VDD}
C {devices/iopin.sym} 110 -440 0 0 {name=p1 lab=in
}
C {devices/iopin.sym} 110 -420 0 0 {name=p2 lab=out
}
C {devices/ipin.sym} 130 -400 0 0 {name=p3 lab=en
}
C {devices/ipin.sym} 130 -380 0 0 {name=p4 lab=en_b}
C {devices/lab_pin.sym} 210 -240 0 0 {name=l1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 330 -440 0 0 {name=l2 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 330 -50 0 0 {name=l3 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 450 -240 2 0 {name=l4 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 330 -190 1 0 {name=l6 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 330 -300 3 0 {name=l7 sig_type=std_logic lab=VSS

}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 330 -390 1 0 {name=M3
L='L_N'
W='W_N'
nf=1
mult='N'
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 330 -100 3 0 {name=M1
L='L_P'
W='W_P'
nf=1
mult='N'
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
