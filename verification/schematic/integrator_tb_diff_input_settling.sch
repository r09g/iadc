v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Performance Summary:
sc-cmfb set up ready around 6us
10mV differential step input (v(ip,in) = 10mV) settling around 10 ns, settling at v(op,on) = 2mV

C_load = 19fF} 1420 -900 0 0 0.3 0.3 {}
N 810 -570 810 -560 { lab=GND}
N 810 -560 910 -560 { lab=GND}
N 910 -570 910 -560 { lab=GND}
N 1870 -560 1990 -560 { lab=on}
N 1870 -500 1990 -500 { lab=op}
N 1480 -560 1560 -560 { lab=ip}
N 1480 -500 1560 -500 { lab=in}
N 1620 -560 1750 -560 { lab=c1_left}
N 1620 -500 1750 -500 { lab=c1_left}
N 1720 -720 1780 -720 { lab=c1_left}
N 1720 -720 1720 -560 { lab=c1_left}
N 1840 -720 1900 -720 { lab=on}
N 1900 -720 1900 -560 { lab=on}
N 1720 -340 1780 -340 { lab=c1_left}
N 1840 -340 1900 -340 { lab=op}
N 1720 -500 1720 -340 { lab=c1_left}
N 1900 -500 1900 -340 { lab=op}
N 1520 -650 1520 -560 { lab=ip}
N 1520 -650 1560 -650 { lab=ip}
N 1620 -650 1650 -650 { lab=c1_left}
N 1650 -650 1650 -560 { lab=c1_left}
N 1520 -500 1520 -420 { lab=in}
N 1520 -420 1560 -420 { lab=in}
N 1620 -420 1650 -420 { lab=c1_left}
N 1650 -500 1650 -420 { lab=c1_left}
N 1070 -670 1150 -670 { lab=#net1}
N 1150 -610 1230 -610 { lab=in}
N 1150 -730 1220 -730 { lab=ip}
N 1220 -730 1230 -730 { lab=ip}
C {devices/code.sym} 625 -1135 0 0 {name=TT_MODELS
only_toplevel=true 
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/lab_pin.sym} 810 -630 1 0 {name=l29 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 810 -600 0 0 {name=V6 value=0}
C {devices/vsource.sym} 910 -600 0 0 {name=V7 value=1.8}
C {devices/vdd.sym} 910 -630 0 0 {name=l35 lab=VDD}
C {devices/code_shown.sym} 800 -1130 0 0 {name=STIMULI only_toplevel=false value="
.options savecurrents
.model SWITCH1 sw vt=0.9 vh=0 ron=500 roff=1e11
.save all
.control
TRAN 1n 10u
plot v(op,on)
plot v(op) v(on)
plot v(ip,in)
write integrator_tb_tran.raw
.endc
"}
C {devices/launcher.sym} 630 -970 0 0 {name=h1
descr=Annotate 
tclcommand="ngspice::annotate"}
C {devices/vsource.sym} 800 -440 0 0 {name=V1 value="DC 0 PULSE(0 1.8 10n 2n 2n 83.5n 195n)"}
C {devices/vsource.sym} 800 -340 0 0 {name=V2 value="DC 0 PULSE(0 1.8 107.5n 2n 2n 83.5n 195n)"}
C {devices/lab_pin.sym} 800 -410 0 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 -310 0 0 {name=l22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 -470 0 1 {name=l23 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 800 -370 0 1 {name=l24 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 1100 -440 0 0 {name=V4 value="DC 0 PULSE(1.8 0 10n 2n 2n 83.5n 195n)"}
C {devices/vsource.sym} 1100 -350 0 0 {name=V5 value="DC 0 PULSE(1.8 0 107.5n 2n 2n 83.5n 195n)"}
C {devices/lab_pin.sym} 1100 -470 0 1 {name=l1 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 1100 -380 0 1 {name=l2 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 1100 -410 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1100 -320 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {ota.sym} 1750 -450 0 0 {name=x1 C_CMFB=50 C_COMP=350 VDD=VDD VSS=VSS}
C {devices/vdd.sym} 860 -840 0 0 {name=l5 lab=VDD}
C {devices/isource.sym} 860 -810 0 0 {name=I0 value=30u}
C {devices/lab_pin.sym} 1810 -610 3 1 {name=l6 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1830 -610 3 1 {name=l7 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1800 -450 1 1 {name=l10 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 1820 -450 1 1 {name=l11 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 1480 -560 2 1 {name=l8 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 1480 -500 2 1 {name=l9 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} 1870 -560 2 0 {name=l13 sig_type=std_logic lab=on}
C {devices/lab_wire.sym} 1870 -500 2 0 {name=l14 sig_type=std_logic lab=op}
C {devices/gnd.sym} 860 -560 0 0 {name=l18 lab=GND}
C {devices/capa.sym} 1590 -560 3 0 {name=C3
m=1
value=320f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1590 -500 3 1 {name=C4
m=1
value=320f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1790 -610 3 1 {name=l16 sig_type=std_logic lab=i_bias}
C {devices/lab_pin.sym} 860 -780 1 1 {name=l17 sig_type=std_logic lab=i_bias}
C {devices/capa.sym} 1810 -720 3 0 {name=C1
m=1
value=1599f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1810 -340 3 1 {name=C2
m=1
value=1599f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1970 -590 2 0 {name=C5
m=1
value=19f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1970 -470 0 1 {name=C6
m=1
value=19f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1970 -620 1 0 {name=l19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1970 -440 3 0 {name=l20 sig_type=std_logic lab=VSS}
C {devices/res.sym} 1590 -650 1 0 {name=R1
value=100g
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1590 -420 1 0 {name=R2
value=100g
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 1070 -640 0 0 {name=V3 value=1.1}
C {devices/gnd.sym} 1070 -610 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 1150 -700 0 0 {name=V8 value="DC 0 PULSE(0 5m 6u 10p 10p 2m 4m)"}
C {devices/lab_pin.sym} 1230 -730 2 0 {name=l15 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 1230 -610 2 0 {name=l25 sig_type=std_logic lab=in}
C {devices/vsource.sym} 1150 -640 0 0 {name=V9 value="DC 0 PULSE(0 5m 6u 10p 10p 2m 4m)"}
C {devices/lab_wire.sym} 1720 -560 2 1 {name=l26 sig_type=std_logic lab=c1_left}
C {devices/lab_wire.sym} 1720 -500 0 0 {name=l27 sig_type=std_logic lab=c2_left}
