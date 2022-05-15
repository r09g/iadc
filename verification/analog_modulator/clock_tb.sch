v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 -560 240 -560 { lab=GND}
N 240 -560 330 -560 { lab=GND}
N 350 -180 370 -180 { lab=#net1}
N 370 -180 370 -140 { lab=#net1}
N 350 -200 430 -200 { lab=#net2}
N 430 -200 430 -140 { lab=#net2}
N 350 -220 490 -220 { lab=#net3}
N 490 -220 490 -140 { lab=#net3}
N 350 -240 550 -240 { lab=#net4}
N 550 -240 550 -140 { lab=#net4}
N 350 -260 610 -260 { lab=#net5}
N 610 -260 610 -140 { lab=#net5}
N 350 -280 670 -280 { lab=#net6}
N 670 -280 670 -140 { lab=#net6}
N 350 -300 730 -300 { lab=#net7}
N 730 -300 730 -140 { lab=#net7}
N 350 -320 790 -320 { lab=#net8}
N 790 -320 790 -140 { lab=#net8}
N 370 90 370 120 { lab=VSS}
N 430 90 430 120 { lab=VSS}
N 490 90 490 120 { lab=VSS}
N 550 90 550 120 { lab=VSS}
N 610 90 610 120 { lab=VSS}
N 670 90 670 120 { lab=VSS}
N 730 90 730 120 { lab=VSS}
N 790 90 790 120 { lab=VSS}
N 850 -340 850 -140 { lab=#net9}
N 910 -360 910 -140 { lab=#net10}
N 970 -380 970 -140 { lab=#net11}
N 1030 -400 1030 -140 { lab=#net12}
N 1090 -420 1090 -140 { lab=#net13}
N 1150 -440 1150 -140 { lab=#net14}
N 1210 -460 1210 -140 { lab=#net15}
N 1270 -480 1270 -140 { lab=#net16}
N 850 90 850 120 { lab=VSS}
N 910 90 910 120 { lab=VSS}
N 970 90 970 120 { lab=VSS}
N 1030 90 1030 120 { lab=VSS}
N 1090 90 1090 120 { lab=VSS}
N 1150 90 1150 120 { lab=VSS}
N 1210 90 1210 120 { lab=VSS}
N 1270 90 1270 120 { lab=VSS}
N 350 -340 850 -340 { lab=#net9}
N 350 -360 910 -360 { lab=#net10}
N 350 -380 970 -380 { lab=#net11}
N 350 -400 1030 -400 { lab=#net12}
N 350 -420 1090 -420 { lab=#net13}
N 350 -440 1150 -440 { lab=#net14}
N 350 -460 1210 -460 { lab=#net15}
N 350 -480 1270 -480 { lab=#net16}
N 370 -60 370 30 { lab=phi2d_b}
N 430 -60 430 30 { lab=phi2d}
N 490 -60 490 30 { lab=phi2_b}
N 550 -60 550 30 { lab=phi2}
N 610 -60 610 30 { lab=phi1d_b}
N 670 -60 670 30 { lab=phi1d}
N 730 -60 730 30 { lab=phi1_b}
N 790 -60 790 30 { lab=phi1}
N 850 -60 850 30 { lab=Bd_b}
N 910 -60 910 30 { lab=Bd}
N 970 -60 970 30 { lab=B_b}
N 1030 -60 1030 30 { lab=B}
N 1090 -60 1090 30 { lab=Ad_b}
N 1150 -60 1150 30 { lab=Ad}
N 1210 -60 1210 30 { lab=A_b}
N 1270 -60 1270 30 { lab=A}
C {clock.sym} 200 -330 0 0 {name=x1 VDD=VDD VSS=VSS}
C {devices/gnd.sym} 240 -560 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 160 -590 0 0 {name=V1 value=0}
C {devices/vsource.sym} 240 -590 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 330 -590 0 0 {name=V3 value="DC 0 PULSE(0 1.8 1n 0.1n 0.1n 97.55625n 195.3125n)"}
C {devices/vdd.sym} 240 -620 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 160 -620 1 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 -620 1 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 50 -330 0 0 {name=l5 sig_type=std_logic lab=clk}
C {devices/capa.sym} 370 60 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 430 60 0 0 {name=C2
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 490 60 0 0 {name=C3
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 550 60 0 0 {name=C4
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 610 60 0 0 {name=C5
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 670 60 0 0 {name=C6
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 730 60 0 0 {name=C7
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 790 60 0 0 {name=C8
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 370 120 3 0 {name=l14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 430 120 3 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 490 120 3 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 550 120 3 0 {name=l17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 120 3 0 {name=l18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 670 120 3 0 {name=l19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 730 120 3 0 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 790 120 3 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/code.sym} 940 -830 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 960 -660 0 0 {name=STIMULI only_toplevel=false value="
.control
tran 0.5n 0.8u uic
save all
write clock_tb.raw
plot v(phi1) v(phi2) v(phi1d) v(phi2d) v(A) v(Ad) v(B) v(Bd)
.endc
"}
C {devices/capa.sym} 850 60 0 0 {name=C9
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 910 60 0 0 {name=C10
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 970 60 0 0 {name=C11
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1030 60 0 0 {name=C12
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1090 60 0 0 {name=C13
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1150 60 0 0 {name=C14
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1210 60 0 0 {name=C15
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1270 60 0 0 {name=C16
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 850 120 3 0 {name=l30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 910 120 3 0 {name=l31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 970 120 3 0 {name=l32 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1030 120 3 0 {name=l33 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1090 120 3 0 {name=l34 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1150 120 3 0 {name=l35 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1210 120 3 0 {name=l36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1270 120 3 0 {name=l37 sig_type=std_logic lab=VSS}
C {sky130_stdcells/clkbuf_16.sym} 370 -100 1 0 {name=x228 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 430 -100 1 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 490 -100 1 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 550 -100 1 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 610 -100 1 0 {name=x5 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 670 -100 1 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 730 -100 1 0 {name=x7 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 790 -100 1 0 {name=x8 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 850 -100 1 0 {name=x9 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 910 -100 1 0 {name=x10 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 970 -100 1 0 {name=x11 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 1030 -100 1 0 {name=x12 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 1090 -100 1 0 {name=x13 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 1150 -100 1 0 {name=x14 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 1210 -100 1 0 {name=x15 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkbuf_16.sym} 1270 -100 1 0 {name=x16 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 370 -20 0 1 {name=l38 sig_type=std_logic lab=phi2d_b}
C {devices/lab_wire.sym} 610 -20 0 1 {name=l39 sig_type=std_logic lab=phi1d_b}
C {devices/lab_wire.sym} 490 -20 0 1 {name=l40 sig_type=std_logic lab=phi2_b}
C {devices/lab_wire.sym} 730 -20 0 1 {name=l41 sig_type=std_logic lab=phi1_b}
C {devices/lab_wire.sym} 430 -20 0 1 {name=l42 sig_type=std_logic lab=phi2d}
C {devices/lab_wire.sym} 670 -20 0 1 {name=l43 sig_type=std_logic lab=phi1d}
C {devices/lab_wire.sym} 550 -20 0 1 {name=l44 sig_type=std_logic lab=phi2}
C {devices/lab_wire.sym} 790 -20 0 1 {name=l45 sig_type=std_logic lab=phi1}
C {devices/lab_wire.sym} 850 -20 0 1 {name=l46 sig_type=std_logic lab=Bd_b}
C {devices/lab_wire.sym} 1090 -20 0 1 {name=l47 sig_type=std_logic lab=Ad_b}
C {devices/lab_wire.sym} 970 -20 0 1 {name=l48 sig_type=std_logic lab=B_b}
C {devices/lab_wire.sym} 1210 -20 0 1 {name=l49 sig_type=std_logic lab=A_b}
C {devices/lab_wire.sym} 910 -20 0 1 {name=l50 sig_type=std_logic lab=Bd}
C {devices/lab_wire.sym} 1150 -20 0 1 {name=l51 sig_type=std_logic lab=Ad}
C {devices/lab_wire.sym} 1030 -20 0 1 {name=l52 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 1270 -20 0 1 {name=l53 sig_type=std_logic lab=A}
