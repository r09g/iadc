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
N 4390 -420 4420 -420 { lab=phi2d_b}
N 4500 -420 4580 -420 { lab=phi2d_b}
N 580 -580 580 -420 { lab=phi2}
N 580 -580 4580 -580 { lab=phi2}
N 200 -260 200 -160 { lab=#net2}
N 200 -160 320 -160 { lab=#net2}
N 200 -440 200 -340 { lab=clk}
N 440 -180 480 -180 { lab=#net3}
N 560 -180 600 -180 { lab=phi1}
N 4380 -180 4420 -180 { lab=phi1d_b}
N 4500 -180 4580 -180 { lab=phi1d_b}
N 580 -180 580 -20 { lab=phi1}
N 580 -20 4580 -20 { lab=phi1}
N 300 -260 300 -200 { lab=#net4}
N 300 -200 320 -200 { lab=#net4}
N 300 -400 300 -340 { lab=#net5}
N 300 -400 320 -400 { lab=#net5}
N 300 -260 680 -260 { lab=#net4}
N 300 -340 680 -340 { lab=#net5}
N 2120 -420 4390 -420 { lab=phi2d_b}
N 2120 -180 4380 -180 { lab=phi1d_b}
N 460 -470 460 -420 { lab=#net1}
N 4270 -460 4270 -420 { lab=phi2d_b}
N 4270 -460 4290 -460 { lab=phi2d_b}
N 460 -500 4290 -500 { lab=#net1}
N 460 -500 460 -470 { lab=#net1}
N 460 -180 460 -100 { lab=#net3}
N 460 -100 4290 -100 { lab=#net3}
N 4410 -120 4580 -120 { lab=phi1d}
N 4270 -140 4290 -140 { lab=phi1d_b}
N 4420 -420 4500 -420 { lab=phi2d_b}
N 4420 -180 4500 -180 { lab=phi1d_b}
N 4540 -60 4580 -60 { lab=phi1_b}
N 4540 -540 4580 -540 { lab=phi2_b}
N 4440 -580 4440 -540 { lab=phi2}
N 4440 -540 4460 -540 { lab=phi2}
N 4440 -60 4440 -20 { lab=phi1}
N 4440 -60 4460 -60 { lab=phi1}
N 1960 -180 2120 -180 { lab=phi1d_b}
N 1960 -420 2120 -420 { lab=phi2d_b}
N 4410 -480 4580 -480 { lab=phi2d}
N 4270 -180 4270 -140 { lab=phi1d_b}
N 4360 -340 4380 -340 { lab=phi1d_b}
N 4380 -340 4440 -220 { lab=phi1d_b}
N 4440 -220 4440 -180 { lab=phi1d_b}
N 4360 -260 4380 -260 { lab=phi2d_b}
N 4380 -260 4440 -380 { lab=phi2d_b}
N 4440 -420 4440 -380 { lab=phi2d_b}
N 1560 -420 1960 -420 { lab=phi2d_b}
N 1560 -180 1960 -180 { lab=phi1d_b}
N 1240 -180 1560 -180 {}
N 1240 -420 1560 -420 {}
N 1000 -420 1240 -420 {}
N 1000 -180 1240 -180 {}
C {devices/ipin.sym} 80 -440 0 0 {name=p1 lab=clk}
C {sky130_stdcells/nand2_1.sym} 380 -420 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 380 -180 2 1 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_4.sym} 520 -420 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} 640 -420 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 4580 -420 0 0 {name=p2 lab=phi2d_b}
C {devices/opin.sym} 4580 -480 0 0 {name=p3 lab=phi2d}
C {devices/opin.sym} 4580 -540 0 0 {name=p4 lab=phi2_b}
C {devices/opin.sym} 4580 -580 0 0 {name=p5 lab=phi2}
C {sky130_stdcells/clkinv_4.sym} 520 -180 2 1 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} 640 -180 2 1 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 4580 -180 2 1 {name=p6 lab=phi1d_b}
C {devices/opin.sym} 4580 -120 2 1 {name=p7 lab=phi1d}
C {devices/opin.sym} 4580 -60 2 1 {name=p8 lab=phi1_b}
C {devices/opin.sym} 4580 -20 2 1 {name=p9 lab=phi1}
C {sky130_stdcells/clkinv_1.sym} 200 -300 1 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 720 -340 0 1 {name=x20 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 720 -260 0 1 {name=x21 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 720 -420 0 0 {name=x22 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 720 -180 0 0 {name=x25 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 800 -340 0 1 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 800 -260 0 1 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 800 -420 0 0 {name=x14 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 800 -180 0 0 {name=x15 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 880 -340 0 1 {name=x16 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 880 -260 0 1 {name=x17 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 880 -420 0 0 {name=x18 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 880 -180 0 0 {name=x19 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 960 -340 0 1 {name=x23 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 960 -260 0 1 {name=x24 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 960 -420 0 0 {name=x26 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 960 -180 0 0 {name=x27 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1040 -340 0 1 {name=x28 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1040 -260 0 1 {name=x29 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1120 -340 0 1 {name=x32 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1120 -260 0 1 {name=x33 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1200 -340 0 1 {name=x36 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1200 -260 0 1 {name=x37 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1280 -340 0 1 {name=x40 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1280 -260 0 1 {name=x41 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1360 -340 0 1 {name=x44 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1360 -260 0 1 {name=x45 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1440 -340 0 1 {name=x48 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1440 -260 0 1 {name=x49 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1520 -340 0 1 {name=x52 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1520 -260 0 1 {name=x53 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1600 -340 0 1 {name=x56 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1600 -260 0 1 {name=x57 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1680 -340 0 1 {name=x60 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1680 -260 0 1 {name=x61 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1760 -340 0 1 {name=x64 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1760 -260 0 1 {name=x65 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1840 -340 0 1 {name=x68 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1840 -260 0 1 {name=x69 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1920 -340 0 1 {name=x72 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1920 -260 0 1 {name=x73 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2000 -340 0 1 {name=x76 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2000 -260 0 1 {name=x77 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2080 -340 0 1 {name=x80 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2080 -260 0 1 {name=x81 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2160 -340 0 1 {name=x84 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2160 -260 0 1 {name=x85 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2240 -340 0 1 {name=x86 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2240 -260 0 1 {name=x87 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2320 -340 0 1 {name=x88 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2320 -260 0 1 {name=x89 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2400 -340 0 1 {name=x90 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2400 -260 0 1 {name=x91 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2480 -340 0 1 {name=x92 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2480 -260 0 1 {name=x93 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2560 -340 0 1 {name=x94 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2560 -260 0 1 {name=x95 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2640 -340 0 1 {name=x96 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2640 -260 0 1 {name=x97 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2720 -340 0 1 {name=x98 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2720 -260 0 1 {name=x99 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2800 -340 0 1 {name=x100 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2800 -260 0 1 {name=x101 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2880 -340 0 1 {name=x102 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2880 -260 0 1 {name=x103 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2960 -340 0 1 {name=x104 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 2960 -260 0 1 {name=x105 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3040 -340 0 1 {name=x106 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3040 -260 0 1 {name=x107 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3120 -340 0 1 {name=x108 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3120 -260 0 1 {name=x109 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3200 -340 0 1 {name=x110 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3200 -260 0 1 {name=x111 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3280 -340 0 1 {name=x112 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3280 -260 0 1 {name=x113 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3360 -340 0 1 {name=x114 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3360 -260 0 1 {name=x115 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_4.sym} 4350 -480 0 0 {name=x116 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} 4500 -540 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} 4500 -60 0 0 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_4.sym} 4350 -120 2 1 {name=x117 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3440 -340 0 1 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3440 -260 0 1 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3520 -340 0 1 {name=x118 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3520 -260 0 1 {name=x119 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3600 -340 0 1 {name=x120 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3600 -260 0 1 {name=x121 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3680 -340 0 1 {name=x122 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3680 -260 0 1 {name=x123 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3760 -340 0 1 {name=x124 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3760 -260 0 1 {name=x125 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3840 -340 0 1 {name=x126 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3840 -260 0 1 {name=x127 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3920 -340 0 1 {name=x128 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 3920 -260 0 1 {name=x129 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 4320 -340 0 1 {name=x130 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 4320 -260 0 1 {name=x131 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 4000 -340 0 1 {name=x78 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 4000 -260 0 1 {name=x79 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 4080 -340 0 1 {name=x82 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 4080 -260 0 1 {name=x83 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 4160 -340 0 1 {name=x132 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 4160 -260 0 1 {name=x133 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 4240 -340 0 1 {name=x134 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} 4240 -260 0 1 {name=x135 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
