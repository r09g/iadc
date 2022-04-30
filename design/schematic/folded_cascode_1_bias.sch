v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 660 -630 660 -590 { lab=#net1}
N 400 -140 400 -120 { lab=VSS}
N 400 -390 400 -330 { lab=bias_c}
N 340 -660 360 -660 { lab=bias_b}
N 400 -510 400 -470 { lab=bias_b}
N 340 -510 400 -510 { lab=bias_b}
N 340 -660 340 -510 { lab=bias_b}
N 400 -390 460 -390 { lab=bias_c}
N 460 -560 460 -390 { lab=bias_c}
N 920 -630 920 -590 { lab=#net2}
N 920 -350 920 -330 { lab=bias_e}
N 860 -300 880 -300 { lab=bias_e}
N 860 -350 860 -300 { lab=bias_e}
N 860 -350 920 -350 { lab=bias_e}
N 400 -630 400 -590 { lab=#net3}
N 920 -170 920 -120 { lab=VSS}
N 920 -250 920 -220 { lab=VSS}
N 400 -530 400 -510 { lab=bias_b}
N 400 -410 400 -390 { lab=bias_c}
N 440 -560 460 -560 { lab=bias_c}
N 920 -530 920 -350 { lab=bias_e}
N 400 -120 660 -120 { lab=VSS}
N 920 -270 920 -250 { lab=VSS}
N 920 -220 920 -170 { lab=VSS}
N 400 -740 400 -690 { lab=VDD}
N 920 -740 920 -690 { lab=VDD}
N 660 -740 660 -690 { lab=VDD}
N 660 -140 660 -120 { lab=VSS}
N 920 -350 960 -350 { lab=bias_e}
N 600 -560 620 -560 { lab=bias_c}
N 600 -660 620 -660 { lab=bias_b}
N 860 -660 880 -660 { lab=bias_b}
N 860 -560 880 -560 { lab=bias_c}
N 660 -120 660 -100 { lab=VSS}
N 660 -740 920 -740 { lab=VDD}
N 400 -740 660 -740 { lab=VDD}
N 660 -120 920 -120 { lab=VSS}
N 340 -440 360 -440 { lab=bias_b}
N 340 -510 340 -440 { lab=bias_b}
N 400 -330 400 -200 { lab=bias_c}
N 660 -230 660 -200 { lab=#net4}
N 600 -170 620 -170 { lab=bias_a}
N 600 -310 600 -170 { lab=bias_a}
N 600 -310 660 -310 { lab=bias_a}
N 660 -330 660 -290 { lab=bias_a}
N 700 -260 720 -260 { lab=bias_d}
N 720 -410 720 -260 { lab=bias_d}
N 660 -410 720 -410 { lab=bias_d}
N 660 -430 660 -390 { lab=bias_d}
N 660 -530 660 -490 { lab=#net5}
N 600 -460 620 -460 { lab=#net5}
N 600 -460 600 -360 { lab=#net5}
N 600 -360 620 -360 { lab=#net5}
N 600 -510 600 -460 { lab=#net5}
N 600 -510 660 -510 { lab=#net5}
N 720 -410 740 -410 { lab=bias_d}
N 580 -170 600 -170 { lab=bias_a}
N 180 -170 360 -170 { lab=i_bias}
N 140 -140 140 -120 { lab=VSS}
N 140 -120 400 -120 { lab=VSS}
N 140 -440 140 -200 { lab=i_bias}
N 200 -220 200 -170 { lab=i_bias}
N 140 -220 200 -220 { lab=i_bias}
C {sky130_fd_pr/pfet_01v8.sym} 420 -560 0 1 {name=M22
L=1
W=1.25
nf=1
mult=6
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 640 -560 0 0 {name=M26
L=1
W=1.25
nf=1
mult=6
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 900 -560 0 0 {name=M32
L=1
W=1.25
nf=1
mult=6
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 900 -300 0 0 {name=M33
L=1
W=1.25
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
C {devices/vdd.sym} 660 -740 0 0 {name=l45 lab=VDD}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 380 -660 0 0 {name=M21
L=1
W=1.25
nf=1
mult=6
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 640 -660 0 0 {name=M25
L=1
W=1.25
nf=1
mult=6
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 900 -660 0 0 {name=M31
L=1
W=1.25
nf=1
mult=6
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 400 -660 0 1 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 660 -660 0 1 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 660 -560 0 1 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 920 -660 0 1 {name=l6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 920 -560 0 1 {name=l7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 400 -560 0 0 {name=l8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 660 -100 1 1 {name=l11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 920 -300 2 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 960 -350 0 1 {name=l17 sig_type=std_logic lab=bias_e}
C {devices/lab_pin.sym} 460 -560 0 1 {name=l18 sig_type=std_logic lab=bias_c}
C {devices/lab_pin.sym} 600 -560 0 0 {name=l19 sig_type=std_logic lab=bias_c}
C {devices/lab_pin.sym} 340 -660 0 0 {name=l20 sig_type=std_logic lab=bias_b}
C {devices/lab_pin.sym} 600 -660 0 0 {name=l21 sig_type=std_logic lab=bias_b}
C {devices/lab_pin.sym} 860 -660 0 0 {name=l22 sig_type=std_logic lab=bias_b}
C {devices/lab_pin.sym} 860 -560 0 0 {name=l23 sig_type=std_logic lab=bias_c}
C {devices/ngspice_probe.sym} 460 -520 2 1 {name=r2}
C {devices/ngspice_probe.sym} 340 -620 2 1 {name=r3}
C {devices/ngspice_probe.sym} 400 -620 2 1 {name=r4}
C {devices/ngspice_probe.sym} 660 -620 2 1 {name=r5}
C {devices/ngspice_probe.sym} 920 -620 2 1 {name=r6}
C {devices/ngspice_probe.sym} 920 -390 2 1 {name=r8}
C {devices/ngspice_get_value.sym} 660 -700 0 0 {name=r12 node="i(@m.xm25.msky130_fd_pr__pfet_01v8_lvt[id])"
descr="id="}
C {devices/ngspice_get_value.sym} 400 -700 0 0 {name=r13 node="i(@m.xm21.msky130_fd_pr__pfet_01v8_lvt[id])"
descr="id="}
C {devices/ngspice_get_value.sym} 920 -700 0 0 {name=r14 node="i(@m.xm31.msky130_fd_pr__pfet_01v8_lvt[id])"
descr="id="}
C {devices/opin.sym} 1070 -740 0 0 {name=p1 lab=bias_a}
C {devices/opin.sym} 1070 -720 0 0 {name=p2 lab=bias_b}
C {devices/opin.sym} 1070 -700 0 0 {name=p3 lab=bias_c}
C {devices/opin.sym} 1070 -680 0 0 {name=p4 lab=bias_d}
C {devices/opin.sym} 1070 -660 0 0 {name=p5 lab=bias_e}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 380 -440 0 0 {name=M1
L=1
W=1.25
nf=1
mult=56
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 640 -460 0 0 {name=M2
L=1
W=1.25
nf=1
mult=50
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 660 -460 2 0 {name=l1 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 640 -360 0 0 {name=M3
L=1
W=1.25
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 660 -360 2 0 {name=l2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 680 -260 0 1 {name=M4
L=1
W=1.25
nf=1
mult=18
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 660 -260 2 1 {name=l9 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 640 -170 0 0 {name=M5
L=1
W=1.25
nf=1
mult=18
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 660 -170 2 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/ngspice_probe.sym} 660 -520 2 1 {name=r1}
C {devices/lab_pin.sym} 740 -410 0 1 {name=l12 sig_type=std_logic lab=bias_d}
C {devices/lab_pin.sym} 580 -170 0 0 {name=l13 sig_type=std_logic lab=bias_a}
C {devices/ngspice_probe.sym} 720 -390 2 1 {name=r7}
C {devices/ngspice_probe.sym} 660 -220 2 1 {name=r9}
C {devices/ngspice_probe.sym} 580 -170 2 1 {name=r10}
C {devices/lab_pin.sym} 400 -440 2 0 {name=l14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 380 -170 0 0 {name=M6
L=1
W=1.25
nf=1
mult=18
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 400 -170 2 0 {name=l15 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 160 -170 0 1 {name=M7
L=1
W=1.25
nf=1
mult=18
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 140 -170 2 1 {name=l24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 140 -440 3 1 {name=l25 sig_type=std_logic lab=i_bias}
C {devices/ipin.sym} 1080 -630 0 0 {name=p6 lab=i_bias}
C {devices/ngspice_probe.sym} 270 -170 2 1 {name=r11}
C {devices/ngspice_get_value.sym} 140 -220 0 0 {name=r15 node="i(@m.xm7.msky130_fd_pr__nfet_01v8[id])"
descr="id="}
