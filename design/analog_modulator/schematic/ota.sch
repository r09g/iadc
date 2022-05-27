v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -180 400 -180 { lab=bias_a}
N 300 -160 400 -160 { lab=bias_b}
N 300 -140 400 -140 { lab=bias_c}
N 300 -120 400 -120 { lab=bias_d}
N 640 -260 700 -260 { lab=op}
N 640 -190 700 -190 { lab=cmc}
N 640 -120 700 -120 { lab=on}
N 940 -260 960 -260 { lab=cm}
N 940 -120 960 -120 { lab=bias_a}
N 300 -100 320 -100 { lab=cm}
N 660 -480 660 -260 { lab=op}
N 680 -480 680 -120 { lab=on}
N 1300 -300 1320 -300 { lab=VDD}
N 1320 -330 1320 -300 { lab=VDD}
N 1300 -270 1300 -250 { lab=VDD}
N 1300 -250 1320 -250 { lab=VDD}
N 1320 -300 1320 -250 { lab=VDD}
N 1240 -250 1300 -250 { lab=VDD}
N 1240 -330 1240 -250 { lab=VDD}
N 1240 -300 1260 -300 { lab=VDD}
N 1140 -300 1160 -300 { lab=VDD}
N 1160 -330 1160 -300 { lab=VDD}
N 1140 -270 1140 -250 { lab=VDD}
N 1140 -250 1160 -250 { lab=VDD}
N 1160 -300 1160 -250 { lab=VDD}
N 1080 -250 1140 -250 { lab=VDD}
N 1080 -330 1080 -250 { lab=VDD}
N 1080 -300 1100 -300 { lab=VDD}
N 1080 -350 1080 -330 { lab=VDD}
N 1080 -350 1140 -350 { lab=VDD}
N 1140 -350 1140 -330 { lab=VDD}
N 1140 -370 1140 -350 { lab=VDD}
N 1140 -350 1160 -350 { lab=VDD}
N 1160 -350 1160 -330 { lab=VDD}
N 1240 -350 1240 -330 { lab=VDD}
N 1240 -350 1300 -350 { lab=VDD}
N 1300 -350 1300 -330 { lab=VDD}
N 1300 -350 1320 -350 { lab=VDD}
N 1320 -350 1320 -330 { lab=VDD}
N 1300 -370 1300 -350 { lab=VDD}
N 1080 -160 1100 -160 { lab=VSS}
N 1080 -210 1080 -160 { lab=VSS}
N 1080 -210 1140 -210 { lab=VSS}
N 1140 -210 1140 -190 { lab=VSS}
N 1080 -160 1080 -120 { lab=VSS}
N 1080 -120 1080 -110 { lab=VSS}
N 1080 -110 1140 -110 { lab=VSS}
N 1140 -130 1140 -110 { lab=VSS}
N 1140 -160 1160 -160 { lab=VSS}
N 1160 -160 1160 -110 { lab=VSS}
N 1140 -110 1160 -110 { lab=VSS}
N 1140 -110 1140 -80 { lab=VSS}
C {devices/lab_wire.sym} 320 -180 0 1 {name=l1 sig_type=std_logic lab=bias_a}
C {devices/lab_wire.sym} 320 -160 0 1 {name=l2 sig_type=std_logic lab=bias_b}
C {devices/lab_wire.sym} 320 -140 0 1 {name=l3 sig_type=std_logic lab=bias_c}
C {devices/lab_wire.sym} 320 -120 0 1 {name=l4 sig_type=std_logic lab=bias_d}
C {devices/lab_pin.sym} 400 -260 0 0 {name=l6 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 400 -240 0 0 {name=l7 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 80 -140 0 0 {name=l8 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 960 -120 0 1 {name=l9 sig_type=std_logic lab=bias_a}
C {devices/lab_wire.sym} 320 -100 0 1 {name=l5 sig_type=std_logic lab=cm}
C {devices/lab_wire.sym} 960 -260 0 1 {name=l10 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 800 -300 1 0 {name=l11 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 850 -300 1 0 {name=l12 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 850 -80 3 0 {name=l13 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 800 -80 3 0 {name=l14 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 660 -480 1 0 {name=l15 sig_type=std_logic lab=op}
C {devices/lab_pin.sym} 680 -480 1 0 {name=l17 sig_type=std_logic lab=on}
C {devices/ipin.sym} 140 -460 0 0 {name=p2 lab=ip}
C {devices/ipin.sym} 140 -440 0 0 {name=p3 lab=in}
C {devices/ipin.sym} 140 -400 0 0 {name=p4 lab=phi1}
C {devices/ipin.sym} 140 -380 0 0 {name=p5 lab=phi1_b}
C {devices/ipin.sym} 140 -360 0 0 {name=p6 lab=phi2}
C {devices/ipin.sym} 140 -340 0 0 {name=p7 lab=phi2_b}
C {devices/opin.sym} 130 -310 0 0 {name=p8 lab=op}
C {devices/opin.sym} 130 -290 0 0 {name=p9 lab=on}
C {devices/lab_wire.sym} 640 -190 0 1 {name=l23 sig_type=std_logic lab=cmc}
C {devices/ipin.sym} 140 -500 0 0 {name=p1 lab=i_bias}
C {folded_cascode_3_bias.sym} 60 -60 0 0 {name=x1 VDD=VDD VSS=VSS}
C {devices/opin.sym} 130 -270 0 0 {name=p10 lab=cm}
C {sc_cmfb.sym} 700 -80 0 0 {name=x3 VDD=VDD VSS=VSS}
C {folded_cascode_3_core.sym} 380 -60 0 0 {name=x2 VDD=VDD VSS=VSS}
C {devices/vdd.sym} 1300 -370 0 0 {name=l67 lab=VDD}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1280 -300 0 0 {name=M43
L=0.6
W=1.4
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1120 -300 0 0 {name=M45
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
C {devices/vdd.sym} 1140 -370 0 0 {name=l47 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1120 -160 0 0 {name=M9
L=0.6
W=1.4
nf=1
mult=23
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1140 -80 1 1 {name=l46 sig_type=std_logic lab=VSS}
