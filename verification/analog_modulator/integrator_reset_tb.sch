v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 420 -190 520 -190 { lab=out}
N 520 -190 640 -190 { lab=out}
N 100 -180 220 -180 { lab=in}
N 280 -180 380 -180 { lab=in2}
N 370 -240 370 -180 { lab=in2}
N 430 -240 430 -190 { lab=out}
N 100 -70 370 -70 { lab=#net1}
N 100 -120 100 -70 { lab=#net1}
N 370 -70 380 -70 { lab=#net1}
N 380 -140 380 -70 { lab=#net1}
N 420 -130 420 -70 { lab=GND}
N 420 -70 520 -70 { lab=GND}
N 520 -130 520 -70 { lab=GND}
N 520 -70 640 -70 { lab=GND}
N 640 -330 720 -330 { lab=GND}
N 350 -350 370 -240 { lab=in2}
N 430 -240 450 -350 { lab=out}
N 280 -270 280 -180 { lab=in2}
N 220 -270 220 -180 { lab=in}
C {devices/vccs.sym} 420 -160 0 0 {name=G1 value=1}
C {devices/res.sym} 520 -160 0 0 {name=R1
value=3k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 100 -150 0 0 {name=V1 value="DC 0 SINE(0 1m 1k)"}
C {devices/capa.sym} 250 -180 3 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 400 -240 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 580 -190 2 0 {name=l5 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 160 -180 2 0 {name=l6 sig_type=std_logic lab=in}
C {devices/code.sym} 950 -440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 960 -270 0 0 {name=STIMULI only_toplevel=false value="
.model SWITCH1 sw vt=0.5 vh=0 ron=1 roff=1e11
.ic v(out)=0
.control
tran 10u 10m uic
save all
write integrator_reset_tb.raw
plot v(out)
.endc
"}
C {devices/vsource.sym} 850 -580 0 0 {name=V2 value="DC 0 PULSE(0 1.8 2m 1n 1n 2m 4m)"}
C {devices/vsource.sym} 370 -40 0 0 {name=V3 value="0.9"}
C {devices/gnd.sym} 370 -10 0 0 {name=l1 lab=GND}
C {transmission_gate.sym} 370 -350 0 0 {name=x2 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/vsource.sym} 640 -360 0 0 {name=V4 value="1.8"}
C {devices/gnd.sym} 640 -330 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 640 -390 2 1 {name=l9 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 720 -360 0 0 {name=V5 value="0"}
C {devices/lab_wire.sym} 720 -390 2 1 {name=l10 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 850 -550 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 850 -610 2 1 {name=l12 sig_type=std_logic lab=en}
C {devices/vsource.sym} 1080 -580 0 0 {name=V6 value="DC 0 PULSE(1.8 0 2m 1n 1n 2m 4m)"}
C {devices/gnd.sym} 1080 -550 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 1080 -610 2 1 {name=l14 sig_type=std_logic lab=en_b}
C {devices/gnd.sym} 420 -70 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 340 -180 2 1 {name=l16 sig_type=std_logic lab=in2}
C {devices/lab_wire.sym} 400 -310 2 1 {name=l2 sig_type=std_logic lab=en}
C {devices/lab_wire.sym} 400 -390 2 1 {name=l3 sig_type=std_logic lab=en_b}
C {devices/res.sym} 250 -270 3 0 {name=R2
value=1e11
footprint=1206
device=resistor
m=1}
