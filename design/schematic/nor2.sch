v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -80 80 -60 { lab=VSS}
N 230 -80 230 -60 { lab=VSS}
N 80 -160 80 -140 { lab=out}
N 80 -160 230 -160 { lab=out}
N 230 -160 230 -140 { lab=out}
N 160 -190 160 -160 { lab=out}
N 160 -290 160 -250 { lab=#net1}
N 160 -380 160 -350 { lab=VDD}
N 230 -160 310 -160 { lab=out}
N 90 -320 120 -320 { lab=in_1}
N -30 -110 40 -110 { lab=in_1}
N 160 -110 190 -110 { lab=in_2}
N 160 -320 170 -320 { lab=VDD}
N 160 -220 170 -220 { lab=VDD}
N 80 -110 90 -110 { lab=VSS}
N 230 -110 240 -110 { lab=VSS}
N 160 -30 160 -10 { lab=VSS}
N 160 -390 160 -380 { lab=VDD}
N 30 -320 90 -320 { lab=in_1}
N 30 -320 30 -110 { lab=in_1}
N 110 -220 120 -220 { lab=in_2}
N -30 -70 110 -70 { lab=in_2}
N 80 -60 80 -30 { lab=VSS}
N 80 -30 230 -30 { lab=VSS}
N 230 -60 230 -30 { lab=VSS}
N -0 -220 110 -220 { lab=in_2}
N -0 -220 -0 -70 { lab=in_2}
N 110 -70 160 -70 { lab=in_2}
N 160 -110 160 -70 { lab=in_2}
C {sky130_fd_pr/nfet_01v8.sym} 210 -110 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 60 -110 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 140 -220 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 140 -320 0 0 {name=M4
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
C {devices/ipin.sym} -180 -190 0 0 {name=p1 lab=in_1}
C {devices/ipin.sym} -180 -170 0 0 {name=p4 lab=in_2}
C {devices/opin.sym} -195 -150 0 0 {name=p7 lab=out}
C {devices/lab_pin.sym} 160 -390 1 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 310 -160 2 0 {name=l2 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} -30 -110 0 0 {name=l3 sig_type=std_logic lab=in_1}
C {devices/lab_pin.sym} -30 -70 0 0 {name=l4 sig_type=std_logic lab=in_2}
C {devices/lab_pin.sym} 160 -10 3 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 -320 2 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 170 -220 2 0 {name=l7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 90 -110 2 0 {name=l8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -110 2 0 {name=l9 sig_type=std_logic lab=VSS}
