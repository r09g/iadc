v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 880 -940 880 -930 { lab=GND}
N 880 -930 980 -930 { lab=GND}
N 980 -940 980 -930 { lab=GND}
N 620 -570 620 -530 { lab=#net1}
N 360 -90 360 -60 { lab=VSS}
N 360 -330 360 -150 { lab=bias_c}
N 300 -600 320 -600 { lab=bias_b}
N 360 -450 360 -410 { lab=bias_b}
N 300 -450 360 -450 { lab=bias_b}
N 300 -600 300 -450 { lab=bias_b}
N 360 -330 420 -330 { lab=bias_c}
N 420 -500 420 -330 { lab=bias_c}
N 880 -570 880 -530 { lab=#net2}
N 880 -290 880 -270 { lab=bias_e}
N 820 -240 840 -240 { lab=bias_e}
N 820 -290 820 -240 { lab=bias_e}
N 820 -290 880 -290 { lab=bias_e}
N 360 -570 360 -530 { lab=#net3}
N 360 -470 360 -450 { lab=bias_b}
N 360 -350 360 -330 { lab=bias_c}
N 400 -500 420 -500 { lab=bias_c}
N 880 -470 880 -290 { lab=bias_e}
N 360 -60 620 -60 { lab=VSS}
N 880 -210 880 -60 { lab=VSS}
N 360 -680 360 -630 { lab=VDD}
N 880 -680 880 -630 { lab=VDD}
N 620 -680 620 -630 { lab=VDD}
N 620 -80 620 -60 { lab=VSS}
N 880 -290 920 -290 { lab=bias_e}
N 560 -500 580 -500 { lab=bias_c}
N 560 -600 580 -600 { lab=bias_b}
N 820 -600 840 -600 { lab=bias_b}
N 820 -500 840 -500 { lab=bias_c}
N 620 -60 620 -40 { lab=VSS}
N 620 -680 880 -680 { lab=VDD}
N 360 -680 620 -680 { lab=VDD}
N 620 -60 880 -60 { lab=VSS}
N 300 -380 320 -380 { lab=bias_b}
N 300 -450 300 -380 { lab=bias_b}
N 620 -170 620 -140 { lab=#net4}
N 560 -110 580 -110 { lab=bias_a}
N 560 -250 560 -110 { lab=bias_a}
N 560 -250 620 -250 { lab=bias_a}
N 620 -250 620 -230 { lab=bias_a}
N 660 -200 680 -200 { lab=bias_d}
N 680 -350 680 -200 { lab=bias_d}
N 620 -350 680 -350 { lab=bias_d}
N 620 -350 620 -330 { lab=bias_d}
N 620 -450 620 -430 { lab=#net5}
N 560 -400 580 -400 { lab=#net5}
N 560 -400 560 -300 { lab=#net5}
N 560 -300 580 -300 { lab=#net5}
N 560 -450 560 -400 { lab=#net5}
N 560 -450 620 -450 { lab=#net5}
N 680 -350 700 -350 { lab=bias_d}
N 540 -110 560 -110 { lab=bias_a}
N 140 -120 320 -120 { lab=GND}
N 80 -90 80 -60 { lab=VSS}
N 80 -60 360 -60 { lab=VSS}
N 80 -170 80 -150 { lab=GND}
N 80 -170 140 -170 { lab=GND}
N 140 -170 140 -120 { lab=GND}
N 620 -270 620 -250 { lab=bias_a}
N 620 -370 620 -350 { lab=bias_d}
N 620 -470 620 -450 { lab=#net5}
N 80 -380 80 -170 { lab=GND}
N 120 -120 140 -120 { lab=GND}
C {devices/code.sym} 255 -1065 0 0 {name=TT_MODELS
only_toplevel=true 
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/vsource.sym} 880 -970 0 0 {name=V6 value=0}
C {devices/vsource.sym} 980 -970 0 0 {name=V7 value=1.8}
C {devices/vdd.sym} 980 -1000 0 0 {name=l35 lab=VDD}
C {devices/code_shown.sym} 430 -1060 0 0 {name=STIMULI only_toplevel=false value="
.options savecurrents
.control
op
save all
write folded_cascode_bias_tb.raw

*ac dec 20 1 1e10
*plot vdb(op,on)
*plot 180/PI*vp(op,on)

*tran 100n 5u
*plot v(op,on)
.endc
"}
C {devices/launcher.sym} 260 -900 0 0 {name=h1
descr=Annotate 
tclcommand="ngspice::annotate"}
C {sky130_fd_pr/pfet_01v8.sym} 380 -500 0 1 {name=M22
L=0.6
W=1.4
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
C {sky130_fd_pr/pfet_01v8.sym} 600 -500 0 0 {name=M26
L=0.6
W=1.4
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
C {sky130_fd_pr/pfet_01v8.sym} 860 -500 0 0 {name=M32
L=0.6
W=1.4
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
C {sky130_fd_pr/nfet_01v8.sym} 860 -240 0 0 {name=M33
L=0.6
W=1.4
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
C {devices/vdd.sym} 620 -680 0 0 {name=l45 lab=VDD}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 340 -600 0 0 {name=M21
L=0.6
W=1.4
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 600 -600 0 0 {name=M25
L=0.6
W=1.4
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 860 -600 0 0 {name=M31
L=0.6
W=1.4
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
C {devices/lab_pin.sym} 360 -600 0 1 {name=l34 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 620 -600 0 1 {name=l41 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 620 -500 0 1 {name=l42 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 880 -600 0 1 {name=l43 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 880 -500 0 1 {name=l44 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -500 0 0 {name=l46 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 620 -40 1 1 {name=l47 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 880 -240 2 0 {name=l48 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 920 -290 0 1 {name=l49 sig_type=std_logic lab=bias_e}
C {devices/lab_pin.sym} 420 -500 0 1 {name=l50 sig_type=std_logic lab=bias_c}
C {devices/lab_pin.sym} 560 -500 0 0 {name=l51 sig_type=std_logic lab=bias_c}
C {devices/lab_pin.sym} 300 -600 0 0 {name=l52 sig_type=std_logic lab=bias_b}
C {devices/lab_pin.sym} 560 -600 0 0 {name=l53 sig_type=std_logic lab=bias_b}
C {devices/lab_pin.sym} 820 -600 0 0 {name=l54 sig_type=std_logic lab=bias_b}
C {devices/lab_pin.sym} 820 -500 0 0 {name=l55 sig_type=std_logic lab=bias_c}
C {devices/ngspice_probe.sym} 420 -460 2 1 {name=r17}
C {devices/ngspice_probe.sym} 300 -560 2 1 {name=r18}
C {devices/ngspice_probe.sym} 360 -560 2 1 {name=r19}
C {devices/ngspice_probe.sym} 620 -560 2 1 {name=r20}
C {devices/ngspice_probe.sym} 880 -560 2 1 {name=r21}
C {devices/ngspice_probe.sym} 880 -330 2 1 {name=r22}
C {devices/ngspice_get_value.sym} 620 -640 0 0 {name=r23 node="i(@m.xm25.msky130_fd_pr__pfet_01v8_lvt[id])"
descr="id="}
C {devices/ngspice_get_value.sym} 360 -640 0 0 {name=r24 node="i(@m.xm21.msky130_fd_pr__pfet_01v8_lvt[id])"
descr="id="}
C {devices/ngspice_get_value.sym} 880 -640 0 0 {name=r25 node="i(@m.xm31.msky130_fd_pr__pfet_01v8_lvt[id])"
descr="id="}
C {sky130_fd_pr/nfet_01v8.sym} 600 -400 0 0 {name=M3
L=0.6
W=1.4
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
C {devices/lab_pin.sym} 620 -400 2 0 {name=l56 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 600 -300 0 0 {name=M4
L=0.6
W=1.4
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
C {devices/lab_pin.sym} 620 -300 2 0 {name=l57 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 640 -200 0 1 {name=M5
L=0.6
W=1.4
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
C {devices/lab_pin.sym} 620 -200 2 1 {name=l58 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 600 -110 0 0 {name=M14
L=0.6
W=1.4
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
C {devices/lab_pin.sym} 620 -110 2 0 {name=l59 sig_type=std_logic lab=VSS}
C {devices/ngspice_probe.sym} 620 -460 2 1 {name=r26}
C {devices/lab_pin.sym} 700 -350 0 1 {name=l60 sig_type=std_logic lab=bias_d}
C {devices/lab_pin.sym} 540 -110 0 0 {name=l61 sig_type=std_logic lab=bias_a}
C {devices/ngspice_probe.sym} 680 -330 2 1 {name=r27}
C {devices/ngspice_probe.sym} 620 -160 2 1 {name=r28}
C {devices/ngspice_probe.sym} 540 -110 2 1 {name=r29}
C {devices/lab_pin.sym} 360 -380 2 0 {name=l62 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 340 -380 0 0 {name=M15
L=0.6
W=1.4
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
C {devices/gnd.sym} 930 -930 0 0 {name=l66 lab=GND}
C {devices/lab_pin.sym} 360 -120 2 0 {name=l69 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 340 -120 0 0 {name=M10
L=0.6
W=1.4
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
C {sky130_fd_pr/nfet_01v8.sym} 100 -120 0 1 {name=M13
L=0.6
W=1.4
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
C {devices/lab_pin.sym} 80 -120 2 1 {name=l70 sig_type=std_logic lab=VSS}
C {devices/ngspice_probe.sym} 140 -170 2 1 {name=r31}
C {devices/gnd.sym} 80 -380 2 0 {name=l7 lab=GND}
C {devices/vdd.sym} 880 -1000 0 0 {name=l4 lab=VSS}
