v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1660 -800 1720 -800 { lab=in1}
N 1380 -800 1460 -800 { lab=c1r}
N 1380 -200 1460 -200 { lab=c2r}
N 1660 -200 1720 -200 { lab=ip1}
N 1820 -800 1900 -800 { lab=in1}
N 1900 -600 1900 -530 { lab=in1}
N 1820 -200 1900 -200 { lab=ip1}
N 1900 -400 1900 -200 { lab=ip1}
N 1260 -800 1380 -800 { lab=c1r}
N 1260 -200 1380 -200 { lab=c2r}
N 1120 -800 1200 -800 { lab=c1l}
N 1120 -200 1200 -200 { lab=c2l}
N 820 -800 940 -800 { lab=ip}
N 820 -200 940 -200 { lab=in}
N 1900 -470 1900 -400 { lab=ip1}
N 1900 -470 1980 -470 { lab=ip1}
N 1900 -530 1980 -530 { lab=in1}
N 2100 -470 2180 -470 { lab=on1}
N 2100 -530 2180 -530 { lab=op1}
N 1900 -800 1900 -600 { lab=in1}
N 1460 -200 1520 -200 { lab=c2r}
N 1040 -800 1120 -800 { lab=c1l}
N 1040 -200 1120 -200 { lab=c2l}
N 1560 -800 1660 -800 { lab=in1}
N 1620 -200 1660 -200 { lab=ip1}
N 100 -510 170 -510 { lab=GND}
N 1380 -270 1380 -200 { lab=c2r}
N 1380 -400 1380 -370 { lab=cm}
N 1380 -800 1380 -710 { lab=c1r}
N 1380 -610 1380 -580 { lab=cm}
N 1120 -610 1120 -580 { lab=icm}
N 1120 -400 1120 -370 { lab=icm}
N 1120 -800 1120 -710 { lab=c1l}
N 1120 -270 1120 -200 { lab=c2l}
N 1720 -800 1820 -800 { lab=in1}
N 1720 -200 1820 -200 { lab=ip1}
N 1900 -800 2050 -800 { lab=in1}
N 2110 -800 2170 -800 { lab=op1}
N 2170 -800 2270 -800 { lab=op1}
N 2270 -800 2270 -530 { lab=op1}
N 2180 -530 2270 -530 { lab=op1}
N 1900 -200 2060 -200 { lab=ip1}
N 2180 -470 2270 -470 { lab=on1}
N 2270 -470 2270 -200 { lab=on1}
N 2120 -200 2270 -200 { lab=on1}
N 2270 -530 2330 -530 { lab=op1}
N 2270 -470 2330 -470 { lab=on1}
N 2330 -530 2490 -530 { lab=op1}
N 2330 -470 2490 -470 { lab=on1}
N 1380 -580 1380 -400 { lab=cm}
N 1380 -500 1980 -500 { lab=cm}
N 170 -510 240 -510 { lab=GND}
N 240 -510 270 -510 { lab=GND}
N 430 -590 430 -550 { lab=icm}
N 430 -590 510 -590 { lab=icm}
N 510 -530 610 -530 { lab=in}
N 510 -650 610 -650 { lab=ip}
N 1120 -580 1120 -400 { lab=icm}
C {devices/code.sym} 90 -1410 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {transmission_gate.sym} 1480 -800 0 0 {name=x4 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 1600 -200 2 0 {name=x5 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 1380 -690 1 0 {name=x2 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 1380 -290 1 1 {name=x3 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/capa.sym} 1230 -800 3 0 {name=C1
m=1
value=320f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1230 -200 3 1 {name=C2
m=1
value=320f
footprint=1206
device="ceramic capacitor"}
C {transmission_gate.sym} 960 -800 0 0 {name=x10 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/lab_pin.sym} 820 -800 0 0 {name=l1 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 820 -200 0 0 {name=l2 sig_type=std_logic lab=in}
C {transmission_gate.sym} 960 -200 2 1 {name=x14 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/capa.sym} 2080 -800 3 0 {name=C3
m=1
value=1599f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2090 -200 3 1 {name=C4
m=1
value=1599f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 990 -760 1 1 {name=l29 sig_type=std_logic lab=p1d}
C {devices/lab_pin.sym} 990 -840 3 1 {name=l30 sig_type=std_logic lab=p1d_b}
C {devices/lab_pin.sym} 1340 -660 2 1 {name=l35 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 1420 -660 0 1 {name=l36 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 1340 -320 2 1 {name=l37 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 1420 -320 0 1 {name=l38 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 1510 -760 1 1 {name=l39 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 1510 -840 3 1 {name=l40 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 1570 -240 3 1 {name=l41 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 1570 -160 1 1 {name=l42 sig_type=std_logic lab=p2_b}
C {devices/vsource.sym} 100 -540 0 0 {name=V2 value=0}
C {devices/vsource.sym} 170 -540 0 0 {name=V3 value=1.8}
C {devices/lab_pin.sym} 100 -570 3 1 {name=l123 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 -570 3 1 {name=l124 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 170 -510 0 0 {name=l125 lab=GND}
C {devices/lab_pin.sym} 990 -240 3 1 {name=l3 sig_type=std_logic lab=p1d}
C {devices/lab_pin.sym} 990 -160 1 1 {name=l4 sig_type=std_logic lab=p1d_b}
C {transmission_gate.sym} 1120 -690 1 0 {name=x6 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/lab_pin.sym} 1080 -660 2 1 {name=l7 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 1160 -660 0 1 {name=l8 sig_type=std_logic lab=p2d_b}
C {transmission_gate.sym} 1120 -290 1 1 {name=x7 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/lab_pin.sym} 1080 -320 2 1 {name=l10 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 1160 -320 0 1 {name=l11 sig_type=std_logic lab=p2d_b}
C {devices/code_shown.sym} 80 -410 0 0 {name=STIMULI only_toplevel=false value="
.options savecurrents
.save all
.control
tran 0.1u 25u
plot v(op1,on1)
plot v(op1) v(on1)
plot v(ip,in)
write sc_integrator_tb_ideal_clock.raw
.endc
"}
C {devices/lab_wire.sym} 1380 -800 0 1 {name=l21 sig_type=std_logic lab=c1r}
C {devices/lab_wire.sym} 1120 -800 0 1 {name=l22 sig_type=std_logic lab=c1l}
C {devices/lab_wire.sym} 1120 -200 0 1 {name=l24 sig_type=std_logic lab=c2l}
C {devices/lab_wire.sym} 1380 -200 0 1 {name=l25 sig_type=std_logic lab=c2r}
C {ideal_clock.sym} 210 -1040 0 0 {name=x8 td=10u VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 360 -990 0 1 {name=l15 sig_type=std_logic lab=p1d}
C {devices/lab_pin.sym} 360 -1030 0 1 {name=l16 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 360 -950 0 1 {name=l17 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 360 -1010 0 1 {name=l18 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 360 -970 0 1 {name=l19 sig_type=std_logic lab=p1d_b}
C {devices/lab_pin.sym} 360 -930 0 1 {name=l20 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 360 -910 0 1 {name=l28 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 360 -890 0 1 {name=l31 sig_type=std_logic lab=p2d_b}
C {devices/lab_pin.sym} 1380 -500 0 1 {name=l5 sig_type=std_logic lab=cm}
C {ota.sym} 1980 -580 2 1 {name=x1 C_CMFB=50 C_COMP=350 VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 2040 -420 3 0 {name=l53 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 2060 -420 3 0 {name=l54 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 2030 -580 3 1 {name=l12 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 2050 -580 3 1 {name=l56 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 2020 -420 3 0 {name=l57 sig_type=std_logic lab=i_bias_1}
C {devices/lab_wire.sym} 1940 -530 0 1 {name=l138 sig_type=std_logic lab=in1}
C {devices/lab_wire.sym} 1940 -470 0 1 {name=l139 sig_type=std_logic lab=ip1}
C {devices/lab_wire.sym} 2120 -530 0 1 {name=l140 sig_type=std_logic lab=op1}
C {devices/lab_wire.sym} 2120 -470 0 1 {name=l141 sig_type=std_logic lab=on1}
C {devices/isource.sym} 270 -540 2 0 {name=I0 value=30u}
C {devices/lab_pin.sym} 270 -570 1 0 {name=l126 sig_type=std_logic lab=i_bias_1}
C {devices/capa.sym} 2490 -560 2 0 {name=C5
m=1
value=19f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2490 -590 1 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 2490 -440 0 0 {name=C6
m=1
value=19f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2490 -410 3 0 {name=l13 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 430 -520 0 0 {name=V5 value=0.9}
C {devices/gnd.sym} 430 -490 0 0 {name=l130 lab=GND}
C {devices/vsource.sym} 510 -620 0 0 {name=V6 value="DC 0 SINE(0 0.5 1e3 10u)"}
C {devices/vsource.sym} 510 -560 0 0 {name=V7 value="DC 0 SINE(0 0.5 1e3 10u)"}
C {devices/lab_pin.sym} 610 -530 0 1 {name=l131 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 610 -650 0 1 {name=l132 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 1120 -500 0 1 {name=l9 sig_type=std_logic lab=icm}
C {devices/lab_pin.sym} 430 -590 0 0 {name=l14 sig_type=std_logic lab=icm}
