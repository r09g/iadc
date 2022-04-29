v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 400 -210 450 -210 { lab=s_b}
N 400 -130 450 -130 { lab=r_b}
N 530 -210 600 -210 { lab=s_b_buf}
N 600 -210 600 -190 { lab=s_b_buf}
N 600 -190 630 -190 { lab=s_b_buf}
N 600 -150 630 -150 { lab=r_b_buf}
N 600 -150 600 -130 { lab=r_b_buf}
N 530 -130 600 -130 { lab=r_b_buf}
N 380 -200 400 -200 { lab=s_b}
N 400 -210 400 -200 { lab=s_b}
N 380 -140 400 -140 { lab=r_b}
N 400 -140 400 -130 { lab=r_b}
C {devices/ipin.sym} 90 -160 0 0 {name=p1 lab=clk}
C {devices/ipin.sym} 90 -140 0 0 {name=p2 lab=inp}
C {devices/ipin.sym} 90 -120 0 0 {name=p3 lab=inn
}
C {devices/opin.sym} 80 -100 0 0 {name=p4 lab=outp}
C {devices/opin.sym} 80 -80 0 0 {name=p5 lab=outn}
C {comparator_core_small.sym} 260 -100 0 0 {name=x1 VDD=VDD VSS=GND}
C {sky130_stdcells/buf_2.sym} 490 -210 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_2.sym} 490 -130 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 260 -140 0 0 {name=l1 sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 260 -200 0 0 {name=l2 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 435 -210 0 0 {name=l4 sig_type=std_logic lab=s_b}
C {devices/lab_wire.sym} 435 -130 0 0 {name=l5 sig_type=std_logic lab=r_b}
C {devices/lab_wire.sym} 600 -210 0 0 {name=l6 sig_type=std_logic lab=s_b_buf}
C {devices/lab_wire.sym} 600 -130 0 0 {name=l7 sig_type=std_logic lab=r_b_buf}
C {devices/lab_pin.sym} 730 -190 2 0 {name=l8 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 730 -150 2 0 {name=l9 sig_type=std_logic lab=outn}
C {rs_b_latch.sym} 680 -150 0 0 {name=x4 VDD=VDD VSS=GND}
C {devices/lab_pin.sym} 320 -100 3 0 {name=l3 sig_type=std_logic lab=clk}
