v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -370 160 -370 { lab=GND}
N 160 -370 250 -370 { lab=GND}
N 340 -120 360 -120 { lab=phi2d_b}
N 360 -120 360 -100 { lab=phi2d_b}
N 340 -140 420 -140 { lab=phi1d_b}
N 420 -140 420 -100 { lab=phi1d_b}
N 340 -160 480 -160 { lab=phi2_b}
N 480 -160 480 -100 { lab=phi2_b}
N 340 -180 540 -180 { lab=phi1_b}
N 540 -180 540 -100 { lab=phi1_b}
N 340 -200 600 -200 { lab=phi2d}
N 600 -200 600 -100 { lab=phi2d}
N 340 -220 660 -220 { lab=phi1d}
N 660 -220 660 -100 { lab=phi1d}
N 340 -240 720 -240 { lab=phi2}
N 720 -240 720 -100 { lab=phi2}
N 340 -260 780 -260 { lab=phi1}
N 780 -260 780 -100 { lab=phi1}
C {clock.sym} 200 -190 0 0 {name=x1 VDD=VDD VSS=VSS}
C {devices/gnd.sym} 160 -370 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 80 -400 0 0 {name=V1 value=0}
C {devices/vsource.sym} 160 -400 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 250 -400 0 0 {name=V3 value="DC 0 PULSE(0 1.8 1n 0.1n 0.1n 97.55625n 195.3125n)"}
C {devices/vdd.sym} 160 -430 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 80 -430 1 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 -430 1 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 60 -190 0 0 {name=l5 sig_type=std_logic lab=clk}
C {devices/capa.sym} 360 -70 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 420 -70 0 0 {name=C2
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 480 -70 0 0 {name=C3
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 540 -70 0 0 {name=C4
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 600 -70 0 0 {name=C5
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 660 -70 0 0 {name=C6
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 720 -70 0 0 {name=C7
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 780 -70 0 0 {name=C8
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 360 -120 0 1 {name=l6 sig_type=std_logic lab=phi2d_b}
C {devices/lab_wire.sym} 420 -140 0 1 {name=l7 sig_type=std_logic lab=phi1d_b}
C {devices/lab_wire.sym} 480 -160 0 1 {name=l8 sig_type=std_logic lab=phi2_b}
C {devices/lab_wire.sym} 540 -180 0 1 {name=l9 sig_type=std_logic lab=phi1_b}
C {devices/lab_wire.sym} 600 -200 0 1 {name=l10 sig_type=std_logic lab=phi2d}
C {devices/lab_wire.sym} 660 -220 0 1 {name=l11 sig_type=std_logic lab=phi1d}
C {devices/lab_wire.sym} 720 -240 0 1 {name=l12 sig_type=std_logic lab=phi2}
C {devices/lab_wire.sym} 780 -260 0 1 {name=l13 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 360 -40 3 0 {name=l14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 -40 3 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 480 -40 3 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 540 -40 3 0 {name=l17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 600 -40 3 0 {name=l18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 -40 3 0 {name=l19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 720 -40 3 0 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 780 -40 3 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/code.sym} 960 -430 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 980 -260 0 0 {name=STIMULI only_toplevel=false value="
.control
tran 10n 10u
save all
write clock_tb.raw
plot v(phi1) v(phi2) v(phi1d) v(phi2d)
.endc
"}
