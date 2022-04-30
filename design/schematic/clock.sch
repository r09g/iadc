v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -440 200 -440 { lab=clk}
N 200 -440 320 -440 { lab=clk}
N 440 -420 480 -420 { lab=#net1}
N 560 -420 600 -420 { lab=phi2}
N 680 -420 720 -420 { lab=phi2_b}
N 800 -420 840 -420 { lab=#net2}
N 920 -420 960 -420 { lab=phi2d}
N 940 -460 940 -420 { lab=phi2d}
N 940 -460 1120 -460 { lab=phi2d}
N 1040 -420 1120 -420 { lab=phi2d_b}
N 700 -500 700 -420 { lab=phi2_b}
N 700 -500 1120 -500 { lab=phi2_b}
N 580 -540 580 -420 { lab=phi2}
N 580 -540 1120 -540 { lab=phi2}
N 200 -260 200 -160 { lab=#net3}
N 200 -160 320 -160 { lab=#net3}
N 200 -440 200 -340 { lab=clk}
N 440 -180 480 -180 { lab=#net4}
N 560 -180 600 -180 { lab=phi1}
N 680 -180 720 -180 { lab=phi1_b}
N 800 -180 840 -180 { lab=#net5}
N 920 -180 960 -180 { lab=phi1d}
N 940 -180 940 -140 { lab=phi1d}
N 940 -140 1120 -140 { lab=phi1d}
N 1040 -180 1120 -180 { lab=phi1d_b}
N 700 -180 700 -100 { lab=phi1_b}
N 700 -100 1120 -100 { lab=phi1_b}
N 580 -180 580 -60 { lab=phi1}
N 580 -60 1120 -60 { lab=phi1}
N 300 -260 720 -260 { lab=#net6}
N 300 -260 300 -200 { lab=#net6}
N 300 -200 320 -200 { lab=#net6}
N 1020 -260 1060 -420 { lab=phi2d_b}
N 800 -260 1020 -260 { lab=phi2d_b}
N 1020 -340 1060 -180 { lab=phi1d_b}
N 800 -340 1020 -340 { lab=phi1d_b}
N 300 -400 300 -340 { lab=#net7}
N 300 -400 320 -400 { lab=#net7}
N 300 -340 420 -340 { lab=#net7}
N 500 -340 720 -340 { lab=#net7}
N 420 -340 500 -340 { lab=#net7}
C {devices/ipin.sym} 80 -440 0 0 {name=p1 lab=clk}
C {sky130_stdcells/nand2_1.sym} 380 -420 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 380 -180 2 1 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} 520 -420 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} 640 -420 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} 760 -420 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_4.sym} 1000 -420 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 1120 -420 0 0 {name=p2 lab=phi2d_b}
C {devices/opin.sym} 1120 -460 0 0 {name=p3 lab=phi2d}
C {devices/opin.sym} 1120 -500 0 0 {name=p4 lab=phi2_b}
C {devices/opin.sym} 1120 -540 0 0 {name=p5 lab=phi2}
C {sky130_stdcells/clkinv_1.sym} 520 -180 2 1 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} 640 -180 2 1 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} 760 -180 2 1 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_4.sym} 1000 -180 2 1 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 1120 -180 2 1 {name=p6 lab=phi1d_b}
C {devices/opin.sym} 1120 -140 2 1 {name=p7 lab=phi1d}
C {devices/opin.sym} 1120 -100 2 1 {name=p8 lab=phi1_b}
C {devices/opin.sym} 1120 -60 2 1 {name=p9 lab=phi1}
C {sky130_stdcells/clkinv_1.sym} 200 -300 1 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 880 -420 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 760 -340 0 1 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 760 -260 0 1 {name=x14 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 880 -180 0 0 {name=x15 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
