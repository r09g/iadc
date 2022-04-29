v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 250 -200 270 -200 { lab=q_b}
N 250 -200 250 -180 { lab=q_b}
N 250 -100 270 -100 { lab=q}
N 250 -120 250 -100 { lab=q}
N 250 -180 250 -170 { lab=q_b}
N 250 -170 310 -170 { lab=q_b}
N 250 -130 250 -120 { lab=q}
N 250 -130 310 -130 { lab=q}
N 310 -130 350 -170 { lab=q}
N 310 -170 350 -130 { lab=q_b}
N 350 -130 410 -130 { lab=q_b}
N 410 -130 410 -80 { lab=q_b}
N 390 -80 410 -80 { lab=q_b}
N 350 -170 410 -170 { lab=q}
N 410 -220 410 -170 { lab=q}
N 390 -220 400 -220 { lab=q}
N 400 -220 410 -220 { lab=q}
N 210 -240 270 -240 { lab=s_b}
N 210 -60 270 -60 { lab=r_b}
N 410 -220 450 -220 { lab=q}
N 410 -80 450 -80 { lab=q_b}
C {devices/ipin.sym} 80 -180 0 0 {name=p2 lab=s_b}
C {devices/ipin.sym} 80 -160 0 0 {name=p3 lab=r_b
}
C {devices/opin.sym} 70 -140 0 0 {name=p4 lab=q}
C {devices/lab_wire.sym} 450 -220 0 1 {name=l27 sig_type=std_logic lab=q}
C {devices/lab_wire.sym} 450 -80 0 1 {name=l28 sig_type=std_logic lab=q_b}
C {devices/opin.sym} 70 -120 0 0 {name=p5 lab=q_b}
C {sky130_stdcells/nand2_4.sym} 330 -220 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_4.sym} 330 -80 2 1 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 210 -240 0 0 {name=l31 sig_type=std_logic lab=s_b}
C {devices/lab_wire.sym} 210 -60 0 0 {name=l32 sig_type=std_logic lab=r_b}
