v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 260 -500 260 -490 { lab=GND}
N 260 -490 360 -490 { lab=GND}
N 360 -500 360 -490 { lab=GND}
N 760 -620 760 -580 { lab=cm}
N 760 -620 860 -620 { lab=cm}
N 860 -560 980 -560 { lab=inn}
N 860 -680 980 -680 { lab=inp}
N 1240 -750 1240 -700 { lab=#net1}
N 1160 -680 1160 -650 { lab=#net2}
N 1160 -650 1200 -650 { lab=#net2}
N 1160 -590 1160 -560 { lab=#net3}
N 1160 -590 1200 -590 { lab=#net3}
N 980 -680 1030 -680 { lab=inp}
N 1090 -680 1160 -680 { lab=#net2}
N 980 -560 1030 -560 { lab=inn}
N 1090 -560 1160 -560 { lab=#net3}
N 1240 -900 1240 -750 { lab=#net1}
N 1120 -560 1120 -520 { lab=#net3}
N 1120 -720 1120 -680 { lab=#net2}
N 1120 -800 1120 -780 { lab=opp}
N 1120 -800 1380 -800 { lab=opp}
N 1380 -800 1380 -650 { lab=opp}
N 1320 -650 1380 -650 { lab=opp}
N 1320 -590 1380 -590 { lab=opn}
N 1120 -460 1120 -440 { lab=opn}
N 1120 -440 1380 -440 { lab=opn}
N 1380 -590 1380 -440 { lab=opn}
N 1380 -650 1440 -650 { lab=opp}
N 1380 -590 1440 -590 { lab=opn}
N 1440 -650 1500 -650 { lab=opp}
N 1440 -590 1500 -590 { lab=opn}
C {devices/code.sym} 255 -1065 0 0 {name=TT_MODELS
only_toplevel=true 
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/lab_pin.sym} 260 -560 1 0 {name=l29 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 260 -530 0 0 {name=V6 value=0}
C {devices/vsource.sym} 360 -530 0 0 {name=V7 value=1.8}
C {devices/vdd.sym} 360 -560 0 0 {name=l35 lab=VDD}
C {devices/vsource.sym} 760 -550 0 0 {name=V8 value=0.9}
C {devices/lab_pin.sym} 760 -520 3 0 {name=l37 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 860 -650 0 0 {name=V10 value="DC 0 SINE(0 1 1k)"}
C {devices/vsource.sym} 860 -590 0 0 {name=V1 value="DC 0 SINE(0 1 1k)"}
C {devices/lab_pin.sym} 760 -620 0 0 {name=l40 sig_type=std_logic lab=cm}
C {devices/code_shown.sym} 430 -1060 0 0 {name=STIMULI only_toplevel=false value="
.options savecurrents
.save all
.control
tran 10u 6m
write integrator_tb_tran.raw
.endc
"}
C {devices/launcher.sym} 260 -900 0 0 {name=h1
descr=Annotate 
tclcommand="ngspice::annotate"}
C {devices/gnd.sym} 310 -490 0 0 {name=l66 lab=GND}
C {devices/vsource.sym} 260 -790 0 0 {name=V2 value="DC 0 PULSE(0 1.8 2n 2n 2n 91.5n 195n)"}
C {devices/vsource.sym} 260 -690 0 0 {name=V3 value="DC 0 PULSE(0 1.8 99.5n 2n 2n 91.5n 195n)"}
C {devices/lab_pin.sym} 260 -760 0 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 -660 0 0 {name=l22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 -820 0 1 {name=l23 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 260 -720 0 1 {name=l24 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 560 -790 0 0 {name=V4 value="DC 0 PULSE(1.8 0 2n 2n 2n 91.5n 195n)"}
C {devices/vsource.sym} 560 -700 0 0 {name=V5 value="DC 0 PULSE(1.8 0 2n 2n 2n 91.5n 195n)"}
C {devices/lab_pin.sym} 560 -820 0 1 {name=l2 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 560 -730 0 1 {name=l3 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 560 -760 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -670 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {ota.sym} 1200 -540 0 0 {name=x2 C_CMFB=50 C_COMP=350 VDD=VDD VSS=VSS}
C {devices/vdd.sym} 1240 -960 0 0 {name=l6 lab=VDD}
C {devices/isource.sym} 1240 -930 0 0 {name=I1 value=15u}
C {devices/lab_pin.sym} 1260 -700 3 1 {name=l7 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1280 -700 3 1 {name=l8 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1250 -540 1 1 {name=l10 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 1270 -540 1 1 {name=l11 sig_type=std_logic lab=phi2_b}
C {devices/lab_wire.sym} 1500 -650 2 0 {name=l13 sig_type=std_logic lab=opp}
C {devices/lab_wire.sym} 1500 -590 2 0 {name=l14 sig_type=std_logic lab=opn}
C {devices/lab_wire.sym} 980 -680 0 0 {name=l1 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 980 -560 0 0 {name=l9 sig_type=std_logic lab=inn}
C {devices/capa.sym} 1060 -680 3 0 {name=C1
m=1
value=320f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1060 -560 3 0 {name=C2
m=1
value=320f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1120 -750 2 0 {name=C3
m=1
value=1.6p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1120 -490 0 0 {name=C4
m=1
value=1.6p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1440 -680 2 0 {name=C5
m=1
value=19f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1440 -710 1 0 {name=l12 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 1440 -560 0 0 {name=C6
m=1
value=19f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1440 -530 3 0 {name=l15 sig_type=std_logic lab=VSS}
