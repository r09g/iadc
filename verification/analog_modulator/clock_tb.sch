v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 -560 240 -560 { lab=GND}
N 240 -560 330 -560 { lab=GND}
N 350 -180 370 -180 { lab=phi2d_b}
N 370 -180 370 -160 { lab=phi2d_b}
N 350 -200 430 -200 { lab=phi2d}
N 430 -200 430 -160 { lab=phi2d}
N 350 -220 490 -220 { lab=phi2_b}
N 490 -220 490 -160 { lab=phi2_b}
N 350 -240 550 -240 { lab=phi2}
N 550 -240 550 -160 { lab=phi2}
N 350 -260 610 -260 { lab=phi1d_b}
N 610 -260 610 -160 { lab=phi1d_b}
N 350 -280 670 -280 { lab=phi1d}
N 670 -280 670 -160 { lab=phi1d}
N 350 -300 730 -300 { lab=phi1_b}
N 730 -300 730 -160 { lab=phi1_b}
N 350 -320 790 -320 { lab=phi1}
N 790 -320 790 -160 { lab=phi1}
N 370 -100 370 -50 { lab=VSS}
N 430 -100 430 -50 { lab=VSS}
N 490 -100 490 -50 { lab=VSS}
N 550 -100 550 -50 { lab=VSS}
N 610 -100 610 -50 { lab=VSS}
N 670 -100 670 -50 { lab=VSS}
N 730 -100 730 -50 { lab=VSS}
N 790 -100 790 -50 { lab=VSS}
N 850 -340 850 -160 { lab=Bd_b}
N 910 -360 910 -160 { lab=Bd}
N 970 -380 970 -160 { lab=B_b}
N 1030 -400 1030 -160 { lab=B}
N 1090 -420 1090 -160 { lab=Ad_b}
N 1150 -440 1150 -160 { lab=Ad}
N 1210 -460 1210 -160 { lab=A_b}
N 1270 -480 1270 -160 { lab=A}
N 850 -100 850 -50 { lab=VSS}
N 910 -100 910 -50 { lab=VSS}
N 970 -100 970 -50 { lab=VSS}
N 1030 -100 1030 -50 { lab=VSS}
N 1090 -100 1090 -50 { lab=VSS}
N 1150 -100 1150 -50 { lab=VSS}
N 1210 -100 1210 -50 { lab=VSS}
N 1270 -100 1270 -50 { lab=VSS}
N 350 -340 850 -340 { lab=Bd_b}
N 350 -360 910 -360 { lab=Bd}
N 350 -380 970 -380 { lab=B_b}
N 350 -400 1030 -400 { lab=B}
N 350 -420 1090 -420 { lab=Ad_b}
N 350 -440 1150 -440 { lab=Ad}
N 350 -460 1210 -460 { lab=A_b}
N 350 -480 1270 -480 { lab=A}
C {clock.sym} 200 -330 0 0 {name=x1 VDD=VDD VSS=VSS}
C {devices/gnd.sym} 240 -560 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 160 -590 0 0 {name=V1 value=0}
C {devices/vsource.sym} 240 -590 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 330 -590 0 0 {name=V3 value="DC 0 PULSE(0 1.8 1n 0.1n 0.1n 97.55625n 195.3125n)"}
C {devices/vdd.sym} 240 -620 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 160 -620 1 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 -620 1 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 50 -330 0 0 {name=l5 sig_type=std_logic lab=clk}
C {devices/capa.sym} 370 -130 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 430 -130 0 0 {name=C2
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 490 -130 0 0 {name=C3
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 550 -130 0 0 {name=C4
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 610 -130 0 0 {name=C5
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 670 -130 0 0 {name=C6
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 730 -130 0 0 {name=C7
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 790 -130 0 0 {name=C8
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 370 -180 0 1 {name=l6 sig_type=std_logic lab=phi2d_b}
C {devices/lab_wire.sym} 610 -260 0 1 {name=l7 sig_type=std_logic lab=phi1d_b}
C {devices/lab_wire.sym} 490 -220 0 1 {name=l8 sig_type=std_logic lab=phi2_b}
C {devices/lab_wire.sym} 730 -300 0 1 {name=l9 sig_type=std_logic lab=phi1_b}
C {devices/lab_wire.sym} 430 -200 0 1 {name=l10 sig_type=std_logic lab=phi2d}
C {devices/lab_wire.sym} 670 -280 0 1 {name=l11 sig_type=std_logic lab=phi1d}
C {devices/lab_wire.sym} 550 -240 0 1 {name=l12 sig_type=std_logic lab=phi2}
C {devices/lab_wire.sym} 790 -320 0 1 {name=l13 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 370 -50 3 0 {name=l14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 430 -50 3 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 490 -50 3 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 550 -50 3 0 {name=l17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 -50 3 0 {name=l18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 670 -50 3 0 {name=l19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 730 -50 3 0 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 790 -50 3 0 {name=l21 sig_type=std_logic lab=VSS}
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
tran 0.5n 0.8u
save all
write clock_tb.raw
plot v(phi1) v(phi2) v(phi1d) v(phi2d) v(A) v(Ad) v(B) v(Bd)
.endc
"}
C {devices/capa.sym} 850 -130 0 0 {name=C9
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 910 -130 0 0 {name=C10
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 970 -130 0 0 {name=C11
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1030 -130 0 0 {name=C12
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1090 -130 0 0 {name=C13
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1150 -130 0 0 {name=C14
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1210 -130 0 0 {name=C15
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1270 -130 0 0 {name=C16
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 850 -340 0 1 {name=l22 sig_type=std_logic lab=Bd_b}
C {devices/lab_wire.sym} 1090 -420 0 1 {name=l23 sig_type=std_logic lab=Ad_b}
C {devices/lab_wire.sym} 970 -380 0 1 {name=l24 sig_type=std_logic lab=B_b}
C {devices/lab_wire.sym} 1210 -460 0 1 {name=l25 sig_type=std_logic lab=A_b}
C {devices/lab_wire.sym} 910 -360 0 1 {name=l26 sig_type=std_logic lab=Bd}
C {devices/lab_wire.sym} 1150 -440 0 1 {name=l27 sig_type=std_logic lab=Ad}
C {devices/lab_wire.sym} 1030 -400 0 1 {name=l28 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 1270 -480 0 1 {name=l29 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 850 -50 3 0 {name=l30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 910 -50 3 0 {name=l31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 970 -50 3 0 {name=l32 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1030 -50 3 0 {name=l33 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1090 -50 3 0 {name=l34 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1150 -50 3 0 {name=l35 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1210 -50 3 0 {name=l36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1270 -50 3 0 {name=l37 sig_type=std_logic lab=VSS}
