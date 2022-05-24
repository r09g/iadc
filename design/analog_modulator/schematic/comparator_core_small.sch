v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 580 -470 580 -450 { lab=VSS}
N 580 -550 580 -530 { lab=tail_d}
N 460 -570 460 -550 { lab=tail_d}
N 700 -570 700 -550 { lab=tail_d}
N 460 -670 460 -630 { lab=p}
N 700 -670 700 -630 { lab=q}
N 460 -810 460 -730 { lab=s_b}
N 700 -810 700 -730 { lab=r_b}
N 460 -910 460 -870 { lab=VDD}
N 700 -910 700 -870 { lab=VDD}
N 300 -910 300 -870 { lab=VDD}
N 280 -910 460 -910 { lab=VDD}
N 700 -910 880 -910 { lab=VDD}
N 860 -910 860 -870 { lab=VDD}
N 860 -810 860 -780 { lab=r_b}
N 300 -810 300 -760 { lab=s_b}
N 460 -550 700 -550 { lab=tail_d}
N 500 -840 540 -840 { lab=r_b}
N 540 -840 540 -700 { lab=r_b}
N 500 -700 540 -700 { lab=r_b}
N 620 -700 660 -700 { lab=s_b}
N 620 -840 620 -700 { lab=s_b}
N 620 -840 660 -840 { lab=s_b}
N 460 -760 620 -760 { lab=s_b}
N 540 -780 700 -780 { lab=r_b}
N 460 -910 700 -910 { lab=VDD}
N 140 -910 140 -870 { lab=VDD}
N 140 -810 140 -760 { lab=p}
N 140 -910 280 -910 { lab=VDD}
N 140 -760 140 -650 { lab=p}
N 300 -760 460 -760 { lab=s_b}
N 1020 -910 1020 -870 { lab=VDD}
N 1020 -810 1020 -780 { lab=q}
N 880 -910 1020 -910 { lab=VDD}
N 700 -780 860 -780 { lab=r_b}
N 1020 -780 1020 -650 { lab=q}
N 140 -650 460 -650 { lab=p}
N 700 -650 1020 -650 { lab=q}
N 330 -150 330 -130 { lab=tail_d}
N 270 -100 290 -100 { lab=VSS}
N 270 -100 270 -50 { lab=VSS}
N 270 -50 330 -50 { lab=VSS}
N 330 -70 330 -50 { lab=VSS}
N 330 -100 350 -100 { lab=VSS}
N 350 -100 350 -50 { lab=VSS}
N 330 -50 350 -50 { lab=VSS}
N 520 -150 520 -130 { lab=p}
N 460 -100 480 -100 { lab=VSS}
N 460 -100 460 -50 { lab=VSS}
N 460 -50 520 -50 { lab=VSS}
N 520 -70 520 -50 { lab=VSS}
N 520 -100 540 -100 { lab=VSS}
N 540 -100 540 -50 { lab=VSS}
N 520 -50 540 -50 { lab=VSS}
N 680 -150 680 -130 { lab=q}
N 620 -100 640 -100 { lab=VSS}
N 620 -100 620 -50 { lab=VSS}
N 620 -50 680 -50 { lab=VSS}
N 680 -70 680 -50 { lab=VSS}
N 680 -100 700 -100 { lab=VSS}
N 700 -100 700 -50 { lab=VSS}
N 680 -50 700 -50 { lab=VSS}
N 840 -150 840 -130 { lab=VSS}
N 780 -100 800 -100 { lab=VSS}
N 780 -100 780 -50 { lab=VSS}
N 780 -50 840 -50 { lab=VSS}
N 840 -70 840 -50 { lab=VSS}
N 840 -100 860 -100 { lab=VSS}
N 860 -100 860 -50 { lab=VSS}
N 840 -50 860 -50 { lab=VSS}
N 780 -150 840 -150 { lab=VSS}
N 780 -150 780 -100 { lab=VSS}
N 520 -300 520 -280 { lab=VDD}
N 520 -220 520 -200 { lab=s_b}
N 460 -250 480 -250 { lab=VDD}
N 460 -300 460 -250 { lab=VDD}
N 460 -300 520 -300 { lab=VDD}
N 520 -250 540 -250 { lab=VDD}
N 540 -300 540 -250 { lab=VDD}
N 520 -300 530 -300 { lab=VDD}
N 530 -300 540 -300 { lab=VDD}
N 680 -300 680 -280 { lab=VDD}
N 680 -220 680 -200 { lab=r_b}
N 620 -250 640 -250 { lab=VDD}
N 620 -300 620 -250 { lab=VDD}
N 620 -300 680 -300 { lab=VDD}
N 680 -250 700 -250 { lab=VDD}
N 700 -300 700 -250 { lab=VDD}
N 680 -300 690 -300 { lab=VDD}
N 690 -300 700 -300 { lab=VDD}
C {devices/lab_pin.sym} 540 -500 0 0 {name=l3 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 740 -600 2 0 {name=l5 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 420 -600 0 0 {name=l4 sig_type=std_logic lab=ip}
C {sky130_fd_pr/nfet_01v8.sym} 560 -500 0 0 {name=M1
L=0.15
W=4
nf=8
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
C {sky130_fd_pr/nfet_01v8.sym} 440 -600 0 0 {name=M2
L=0.15
W=2
nf=4
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
C {sky130_fd_pr/nfet_01v8.sym} 720 -600 0 1 {name=M3
L=0.15
W=2
nf=4 
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
C {sky130_fd_pr/nfet_01v8.sym} 480 -700 0 1 {name=M4
L=0.15
W=1
nf=2 
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
C {sky130_fd_pr/nfet_01v8.sym} 680 -700 0 0 {name=M5
L=0.15
W=1
nf=2 
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
C {sky130_fd_pr/pfet_01v8.sym} 480 -840 0 1 {name=M6
L=0.15
W=2
nf=4
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
C {sky130_fd_pr/pfet_01v8.sym} 680 -840 0 0 {name=M7
L=0.15
W=2
nf=4
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
C {sky130_fd_pr/pfet_01v8.sym} 280 -840 0 0 {name=M8
L=0.15
W=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 880 -840 0 1 {name=M9
L=0.15
W=0.5
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
C {devices/lab_pin.sym} 580 -500 0 1 {name=l2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 -600 0 1 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 700 -600 0 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 -700 0 0 {name=l8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 700 -700 0 1 {name=l9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 300 -840 0 1 {name=l10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 460 -840 0 0 {name=l11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 700 -840 0 1 {name=l12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 860 -840 0 0 {name=l13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -840 0 0 {name=l14 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 900 -840 0 1 {name=l15 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 860 -780 0 1 {name=l16 sig_type=std_logic lab=r_b}
C {devices/lab_wire.sym} 300 -760 0 0 {name=l17 sig_type=std_logic lab=s_b}
C {devices/vdd.sym} 580 -910 0 0 {name=l18 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 120 -840 0 0 {name=M10
L=0.15
W=0.5
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
C {devices/lab_pin.sym} 140 -840 0 1 {name=l19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 100 -840 0 0 {name=l20 sig_type=std_logic lab=clk}
C {sky130_fd_pr/pfet_01v8.sym} 1040 -840 0 1 {name=M11
L=0.15
W=0.5
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
C {devices/lab_pin.sym} 1020 -840 0 0 {name=l21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1060 -840 0 1 {name=l22 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 580 -450 0 1 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 140 -650 0 0 {name=l23 sig_type=std_logic lab=p}
C {devices/lab_wire.sym} 1020 -650 0 1 {name=l24 sig_type=std_logic lab=q}
C {devices/ipin.sym} 140 -530 0 0 {name=p1 lab=clk}
C {devices/ipin.sym} 140 -510 0 0 {name=p2 lab=ip}
C {devices/ipin.sym} 140 -490 0 0 {name=p3 lab=in
}
C {devices/opin.sym} 130 -470 0 0 {name=p4 lab=s_b}
C {devices/opin.sym} 130 -450 0 0 {name=p5 lab=r_b}
C {sky130_fd_pr/nfet_01v8.sym} 310 -100 0 0 {name=M12
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
C {devices/lab_pin.sym} 270 -50 0 0 {name=l25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 700 -550 2 0 {name=l26 sig_type=std_logic lab=tail_d}
C {devices/lab_pin.sym} 330 -150 2 0 {name=l27 sig_type=std_logic lab=tail_d}
C {sky130_fd_pr/nfet_01v8.sym} 500 -100 0 0 {name=M13
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
C {devices/lab_pin.sym} 460 -50 0 0 {name=l28 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -150 2 0 {name=l29 sig_type=std_logic lab=p}
C {sky130_fd_pr/nfet_01v8.sym} 660 -100 0 0 {name=M14
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
C {devices/lab_pin.sym} 620 -50 0 0 {name=l30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 680 -150 2 0 {name=l31 sig_type=std_logic lab=q}
C {sky130_fd_pr/nfet_01v8.sym} 820 -100 0 0 {name=M15
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
C {devices/lab_pin.sym} 780 -50 0 0 {name=l32 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 500 -250 0 0 {name=M16
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
C {devices/lab_wire.sym} 520 -300 0 0 {name=l33 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 520 -200 0 0 {name=l34 sig_type=std_logic lab=s_b}
C {sky130_fd_pr/pfet_01v8.sym} 660 -250 0 0 {name=M17
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
C {devices/lab_wire.sym} 680 -300 0 0 {name=l35 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 680 -200 0 0 {name=l36 sig_type=std_logic lab=r_b}
