v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 810 -570 810 -560 { lab=#net1}
N 810 -560 910 -560 { lab=#net1}
N 910 -570 910 -560 { lab=#net1}
N 1050 -690 1050 -650 { lab=cm}
N 1050 -690 1150 -690 { lab=cm}
N 1150 -630 1210 -630 { lab=inn}
N 1150 -750 1210 -750 { lab=inp}
N 1500 -660 1500 -610 { lab=#net2}
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
C {devices/vsource.sym} 1050 -620 0 0 {name=V8 value=0.9}
C {devices/lab_pin.sym} 1050 -590 3 0 {name=l37 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1150 -720 0 0 {name=V10 value="DC 0 PULSE(0 0.5m 1n 0.1n 0.1n 1 1)"}
C {devices/lab_pin.sym} 1050 -690 0 0 {name=l40 sig_type=std_logic lab=cm}
C {devices/code_shown.sym} 800 -1130 0 0 {name=STIMULI only_toplevel=false value="
.options savecurrents
.save all
.ic v(cmc)=0 v(opp)=0 v(opn)=0
.tran 0.1n 500n uic
.control
run
plot v(opp) v(opn)
write ota_tb_tran.raw
.endc
"}
C {devices/launcher.sym} 630 -970 0 0 {name=h1
descr=Annotate 
tclcommand="ngspice::annotate"}
C {devices/gnd.sym} 1160 -710 0 0 {name=l66 lab=GND}
C {devices/vsource.sym} 800 -440 0 0 {name=V1 value="DC 0 PULSE(0 1.8 2n 2n 2n 91.5n 195n)"}
C {devices/vsource.sym} 800 -340 0 0 {name=V2 value="DC 0 PULSE(0 1.8 99.5n 2n 2n 91.5n 195n)"}
C {devices/lab_pin.sym} 800 -410 0 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 -310 0 0 {name=l22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 -470 0 1 {name=l23 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 800 -370 0 1 {name=l24 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 1150 -660 0 0 {name=V3 value="DC 0 PULSE(0 0.5m 1n 0.1n 0.1n 1 1)"}
C {devices/lab_pin.sym} 1210 -750 0 1 {name=l12 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1210 -630 0 1 {name=l15 sig_type=std_logic lab=inn}
C {devices/vsource.sym} 1100 -440 0 0 {name=V4 value="DC 0 PULSE(1.8 0 2n 2n 2n 91.5n 195n)"}
C {devices/vsource.sym} 1100 -350 0 0 {name=V5 value="DC 0 PULSE(1.8 0 2n 2n 2n 91.5n 195n)"}
C {devices/lab_pin.sym} 1100 -470 0 1 {name=l1 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 1100 -380 0 1 {name=l2 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 1100 -410 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1100 -320 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {ota.sym} 1460 -450 0 0 {name=x1 C_CMFB=50 C_COMP=350 VDD=VDD VSS=VSS}
C {devices/vdd.sym} 1500 -720 0 0 {name=l5 lab=VDD}
C {devices/isource.sym} 1500 -690 0 0 {name=I0 value=15u}
C {devices/lab_pin.sym} 1520 -610 3 1 {name=l6 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1540 -610 3 1 {name=l7 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1510 -450 1 1 {name=l10 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 1530 -450 1 1 {name=l11 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 1460 -560 2 1 {name=l8 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1460 -500 2 1 {name=l9 sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 1580 -560 2 0 {name=l13 sig_type=std_logic lab=opp}
C {devices/lab_pin.sym} 1580 -500 2 0 {name=l14 sig_type=std_logic lab=opn}
