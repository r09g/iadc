v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Performance Summary:
A0 = 73.5 dB
PM = 69 deg
fu = 52 MHz
f3db = 11.5 KHz

C_load = 1.5 pF} 1060 -300 0 0 0.3 0.3 {}
N 180 -330 180 -290 { lab=#net1}
N 440 -330 440 -290 { lab=#net1}
N 120 -360 140 -360 { lab=inp}
N 480 -360 500 -360 { lab=inn}
N 400 -290 400 -240 { lab=#net1}
N 220 -180 220 -160 { lab=VSS}
N 400 -180 400 -160 { lab=VSS}
N 160 -210 180 -210 { lab=cmc}
N 440 -210 460 -210 { lab=bias_a}
N 180 -290 440 -290 { lab=#net1}
N 220 -290 220 -240 { lab=#net1}
N 660 -760 660 -720 { lab=VDD}
N 660 -760 840 -760 { lab=VDD}
N 840 -760 840 -720 { lab=VDD}
N 600 -690 620 -690 { lab=bias_b}
N 880 -690 900 -690 { lab=bias_b}
N 600 -510 620 -510 { lab=bias_c}
N 880 -510 900 -510 { lab=bias_c}
N 180 -620 660 -620 { lab=#net2}
N 180 -620 180 -390 { lab=#net2}
N 440 -580 840 -580 { lab=#net3}
N 840 -640 840 -560 { lab=#net3}
N 660 -640 660 -560 { lab=#net2}
N 440 -580 440 -390 { lab=#net3}
N 660 -660 660 -640 { lab=#net2}
N 840 -660 840 -640 { lab=#net3}
N 840 -560 840 -540 { lab=#net3}
N 660 -560 660 -540 { lab=#net2}
N 600 -330 620 -330 { lab=bias_d}
N 880 -330 900 -330 { lab=bias_d}
N 660 -480 660 -360 { lab=opn}
N 840 -480 840 -360 { lab=opp}
N 600 -210 620 -210 { lab=bias_a}
N 880 -210 900 -210 { lab=bias_a}
N 660 -300 660 -240 { lab=#net4}
N 840 -300 840 -240 { lab=#net5}
N 660 -180 660 -160 { lab=VSS}
N 840 -180 840 -160 { lab=VSS}
N 220 -160 840 -160 { lab=VSS}
N 530 -160 530 -140 { lab=VSS}
N 660 -440 980 -440 { lab=opn}
N 840 -400 980 -400 { lab=opp}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 160 -360 0 0 {name=M1
L=0.2
W=1.2
nf=1 
mult=18
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 460 -360 0 1 {name=M2
L=0.2
W=1.2
nf=1 
mult=18
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 200 -210 0 0 {name=M6
L=1
W=1.25
nf=1 
mult=48
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 420 -210 0 1 {name=M5
L=1
W=1.25
nf=1 
mult=48
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 640 -690 0 0 {name=M11
L=1
W=1.25
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 860 -690 0 1 {name=M12
L=1
W=1.25
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 640 -510 0 0 {name=M1A
L=1
W=1.25
nf=1
mult=36
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 860 -510 0 1 {name=M2A
L=1
W=1.25
nf=1
mult=36
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 640 -330 0 0 {name=M3A
L=1
W=1.25
nf=1 
mult=36
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 860 -330 0 1 {name=M4A
L=1
W=1.25
nf=1 
mult=36
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 640 -210 0 0 {name=M3
L=1
W=1.25
nf=1 
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 860 -210 0 1 {name=M4
L=1
W=1.25
nf=1 
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 750 -760 0 0 {name=l1 lab=VDD}
C {devices/lab_pin.sym} 530 -140 3 0 {name=l2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 120 -360 0 0 {name=l3 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 500 -360 0 1 {name=l4 sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 160 -210 0 0 {name=l5 sig_type=std_logic lab=cmc}
C {devices/lab_pin.sym} 460 -210 0 1 {name=l6 sig_type=std_logic lab=bias_a}
C {devices/lab_pin.sym} 600 -210 0 0 {name=l7 sig_type=std_logic lab=bias_a}
C {devices/lab_pin.sym} 900 -210 0 1 {name=l8 sig_type=std_logic lab=bias_a}
C {devices/lab_pin.sym} 900 -330 0 1 {name=l9 sig_type=std_logic lab=bias_d}
C {devices/lab_pin.sym} 600 -330 0 0 {name=l10 sig_type=std_logic lab=bias_d}
C {devices/lab_pin.sym} 900 -510 0 1 {name=l11 sig_type=std_logic lab=bias_c}
C {devices/lab_pin.sym} 600 -510 0 0 {name=l12 sig_type=std_logic lab=bias_c}
C {devices/lab_pin.sym} 980 -440 0 1 {name=l13 sig_type=std_logic lab=opn}
C {devices/lab_pin.sym} 980 -400 0 1 {name=l14 sig_type=std_logic lab=opp}
C {devices/lab_pin.sym} 600 -690 0 0 {name=l15 sig_type=std_logic lab=bias_b}
C {devices/lab_pin.sym} 900 -690 0 1 {name=l16 sig_type=std_logic lab=bias_b}
C {devices/lab_pin.sym} 220 -210 2 0 {name=l17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -360 2 0 {name=l18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 -210 2 1 {name=l19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 440 -360 2 1 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 -330 2 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 -210 2 0 {name=l22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 -210 2 1 {name=l23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 -330 2 1 {name=l24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 -510 2 1 {name=l25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 660 -510 2 0 {name=l26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 660 -690 2 0 {name=l27 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 840 -690 2 1 {name=l28 sig_type=std_logic lab=VDD}
C {devices/ngspice_probe.sym} 660 -620 0 0 {name=r1}
C {devices/ngspice_probe.sym} 840 -580 0 0 {name=r2}
C {devices/ngspice_get_value.sym} 660 -720 0 0 {name=r25 node="i(@m.xm11.msky130_fd_pr__pfet_01v8_lvt[id])"
descr="id="}
C {devices/ngspice_get_value.sym} 840 -720 0 0 {name=r3 node="i(@m.xm12.msky130_fd_pr__pfet_01v8_lvt[id])"
descr="id="}
C {devices/ngspice_get_value.sym} 660 -540 0 0 {name=r4 node="i(@m.xm1a.msky130_fd_pr__pfet_01v8[id])"
descr="id="}
C {devices/ngspice_get_value.sym} 840 -540 0 0 {name=r5 node="i(@m.xm2a.msky130_fd_pr__pfet_01v8[id])"
descr="id="}
C {devices/ngspice_get_value.sym} 180 -390 0 0 {name=r6 node="i(@m.xm1a.msky130_fd_pr__nfet_01v8_lvt[id])"
descr="id="}
C {devices/ngspice_get_value.sym} 440 -390 0 0 {name=r7 node="i(@m.xm1a.msky130_fd_pr__nfet_01v8_lvt[id])"
descr="id="}
C {devices/ngspice_get_value.sym} 220 -240 0 0 {name=r8 node="i(@m.xm6.msky130_fd_pr__nfet_01v8[id])"
descr="id="}
C {devices/ngspice_get_value.sym} 400 -240 0 0 {name=r9 node="i(@m.xm6.msky130_fd_pr__nfet_01v8[id])"
descr="id="}
C {devices/ngspice_probe.sym} 310 -290 0 0 {name=r10}
C {devices/ngspice_probe.sym} 660 -260 0 0 {name=r11}
C {devices/ngspice_probe.sym} 840 -260 0 0 {name=r12}
C {devices/ngspice_probe.sym} 660 -440 0 0 {name=r13}
C {devices/ngspice_probe.sym} 840 -400 0 0 {name=r14}
C {devices/ipin.sym} 1130 -740 0 0 {name=p1 lab=cmc}
C {devices/ipin.sym} 1130 -700 0 0 {name=p2 lab=inp}
C {devices/ipin.sym} 1130 -680 0 0 {name=p3 lab=inn}
C {devices/ipin.sym} 1130 -640 0 0 {name=p4 lab=bias_a}
C {devices/ipin.sym} 1130 -620 0 0 {name=p5 lab=bias_b}
C {devices/ipin.sym} 1130 -600 0 0 {name=p6 lab=bias_c}
C {devices/ipin.sym} 1130 -580 0 0 {name=p7 lab=bias_d}
C {devices/opin.sym} 1120 -540 0 0 {name=p9 lab=opp}
C {devices/opin.sym} 1120 -520 0 0 {name=p10 lab=opn}
