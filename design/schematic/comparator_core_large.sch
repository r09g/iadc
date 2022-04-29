v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 530 -100 530 -80 { lab=VSS}
N 530 -180 530 -160 { lab=#net1}
N 410 -200 410 -180 { lab=#net1}
N 650 -200 650 -180 { lab=#net1}
N 410 -300 410 -260 { lab=p}
N 650 -300 650 -260 { lab=q}
N 410 -440 410 -360 { lab=s_b}
N 650 -440 650 -360 { lab=r_b}
N 410 -540 410 -500 { lab=VDD}
N 650 -540 650 -500 { lab=VDD}
N 250 -540 250 -500 { lab=VDD}
N 230 -540 410 -540 { lab=VDD}
N 650 -540 830 -540 { lab=VDD}
N 810 -540 810 -500 { lab=VDD}
N 810 -440 810 -410 { lab=r_b}
N 250 -440 250 -390 { lab=s_b}
N 410 -180 650 -180 { lab=#net1}
N 450 -470 490 -470 { lab=r_b}
N 490 -470 490 -330 { lab=r_b}
N 450 -330 490 -330 { lab=r_b}
N 570 -330 610 -330 { lab=s_b}
N 570 -470 570 -330 { lab=s_b}
N 570 -470 610 -470 { lab=s_b}
N 410 -390 570 -390 { lab=s_b}
N 490 -410 650 -410 { lab=r_b}
N 410 -540 650 -540 { lab=VDD}
N 90 -540 90 -500 { lab=VDD}
N 90 -440 90 -390 { lab=p}
N 90 -540 230 -540 { lab=VDD}
N 90 -390 90 -280 { lab=p}
N 250 -390 410 -390 { lab=s_b}
N 970 -540 970 -500 { lab=VDD}
N 970 -440 970 -410 { lab=q}
N 830 -540 970 -540 { lab=VDD}
N 650 -410 810 -410 { lab=r_b}
N 970 -410 970 -280 { lab=q}
N 90 -280 410 -280 { lab=p}
N 650 -280 970 -280 { lab=q}
C {devices/lab_pin.sym} 490 -130 0 0 {name=l3 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 690 -230 2 0 {name=l5 sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 370 -230 0 0 {name=l4 sig_type=std_logic lab=inp}
C {sky130_fd_pr/nfet_01v8.sym} 510 -130 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=32
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 390 -230 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=160
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 670 -230 0 1 {name=M3
L=0.15
W=1
nf=1 
mult=160
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 430 -330 0 1 {name=M4
L=0.15
W=1
nf=1 
mult=80
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 630 -330 0 0 {name=M5
L=0.15
W=1
nf=1 
mult=80
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 430 -470 0 1 {name=M6
L=0.15
W=1
nf=1
mult=40
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 630 -470 0 0 {name=M7
L=0.15
W=1
nf=1
mult=40
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 230 -470 0 0 {name=M8
L=0.15
W=1
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 830 -470 0 1 {name=M9
L=0.15
W=1
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 530 -130 0 1 {name=l2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 -230 0 1 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 -230 0 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 -330 0 0 {name=l8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 -330 0 1 {name=l9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 -470 0 1 {name=l10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 410 -470 0 0 {name=l11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 650 -470 0 1 {name=l12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 810 -470 0 0 {name=l13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 210 -470 0 0 {name=l14 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 850 -470 0 1 {name=l15 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 810 -410 0 1 {name=l16 sig_type=std_logic lab=r_b}
C {devices/lab_wire.sym} 250 -390 0 0 {name=l17 sig_type=std_logic lab=s_b}
C {devices/vdd.sym} 530 -540 0 0 {name=l18 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 70 -470 0 0 {name=M10
L=0.15
W=1
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 90 -470 0 1 {name=l19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 50 -470 0 0 {name=l20 sig_type=std_logic lab=clk}
C {sky130_fd_pr/pfet_01v8.sym} 990 -470 0 1 {name=M11
L=0.15
W=1
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 970 -470 0 0 {name=l21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1010 -470 0 1 {name=l22 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 530 -80 0 1 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 90 -280 0 0 {name=l23 sig_type=std_logic lab=p}
C {devices/lab_wire.sym} 970 -280 0 1 {name=l24 sig_type=std_logic lab=q}
C {devices/ipin.sym} 90 -160 0 0 {name=p1 lab=clk}
C {devices/ipin.sym} 90 -140 0 0 {name=p2 lab=inp}
C {devices/ipin.sym} 90 -120 0 0 {name=p3 lab=inn
}
C {devices/opin.sym} 80 -100 0 0 {name=p4 lab=s_b}
C {devices/opin.sym} 80 -80 0 0 {name=p5 lab=r_b}
