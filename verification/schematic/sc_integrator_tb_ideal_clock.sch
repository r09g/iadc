v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1660 -800 1720 -800 { lab=c3_left}
N 1380 -800 1460 -800 { lab=c1_right}
N 1380 -200 1460 -200 { lab=c2_right}
N 1660 -200 1720 -200 { lab=c4_left}
N 1820 -800 1900 -800 { lab=c3_left}
N 1900 -600 1900 -530 { lab=c3_left}
N 1820 -200 1900 -200 { lab=c4_left}
N 1900 -400 1900 -200 { lab=c4_left}
N 1260 -800 1380 -800 { lab=c1_right}
N 1260 -200 1380 -200 { lab=c2_right}
N 1120 -800 1200 -800 { lab=c1_left}
N 1120 -200 1200 -200 { lab=c2_left}
N 820 -800 940 -800 { lab=ip}
N 820 -200 940 -200 { lab=in}
N 1900 -470 1900 -400 { lab=c4_left}
N 1900 -470 1980 -470 { lab=c4_left}
N 1900 -530 1980 -530 { lab=c3_left}
N 2100 -470 2180 -470 { lab=op}
N 2100 -530 2180 -530 { lab=on}
N 1900 -800 1900 -600 { lab=c3_left}
N 1460 -200 1520 -200 { lab=c2_right}
N 1040 -800 1120 -800 { lab=c1_left}
N 1040 -200 1120 -200 { lab=c2_left}
N 1560 -800 1660 -800 { lab=c3_left}
N 1620 -200 1660 -200 { lab=c4_left}
N 100 -510 170 -510 { lab=GND}
N 1380 -270 1380 -200 { lab=c2_right}
N 1380 -400 1380 -370 { lab=GND}
N 1380 -800 1380 -710 { lab=c1_right}
N 1380 -610 1380 -580 { lab=GND}
N 1120 -610 1120 -580 { lab=GND}
N 1120 -400 1120 -370 { lab=GND}
N 1120 -800 1120 -710 { lab=c1_left}
N 1120 -270 1120 -200 { lab=c2_left}
N 1720 -800 1820 -800 { lab=c3_left}
N 1720 -200 1820 -200 { lab=c4_left}
N 1900 -800 2050 -800 { lab=c3_left}
N 2110 -800 2170 -800 { lab=on}
N 2170 -800 2270 -800 { lab=on}
N 2270 -800 2270 -530 { lab=on}
N 2180 -530 2270 -530 { lab=on}
N 1900 -200 2060 -200 { lab=c4_left}
N 2180 -470 2270 -470 { lab=op}
N 2270 -470 2270 -200 { lab=op}
N 2120 -200 2270 -200 { lab=op}
N 2270 -530 2330 -530 { lab=on}
N 2270 -470 2330 -470 { lab=op}
N 2330 -530 2490 -530 { lab=on}
N 2330 -470 2490 -470 { lab=op}
N 440 -530 440 -500 { lab=in}
N 440 -530 530 -530 { lab=in}
N 440 -560 440 -530 { lab=in}
N 440 -650 440 -620 { lab=ip}
N 440 -650 590 -650 { lab=ip}
N 530 -530 590 -530 { lab=in}
C {devices/code.sym} 90 -1410 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {ota.sym} 1980 -420 0 0 {name=x1 C_CMFB=50 C_COMP=350 VDD=VDD VSS=VSS}
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
C {devices/lab_pin.sym} 2040 -580 1 0 {name=l53 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 2060 -580 1 0 {name=l54 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 2050 -420 1 1 {name=l56 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 2020 -580 1 0 {name=l57 sig_type=std_logic lab=i_bias_1}
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
C {devices/gnd.sym} 1120 -580 0 0 {name=l9 lab=GND}
C {transmission_gate.sym} 1120 -290 1 1 {name=x7 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/lab_pin.sym} 1080 -320 2 1 {name=l10 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 1160 -320 0 1 {name=l11 sig_type=std_logic lab=p2d_b}
C {devices/gnd.sym} 1120 -400 2 1 {name=l12 lab=GND}
C {devices/lab_pin.sym} 2290 -470 0 1 {name=l13 sig_type=std_logic lab=op}
C {devices/lab_pin.sym} 2290 -530 0 1 {name=l14 sig_type=std_logic lab=on}
C {devices/code_shown.sym} 80 -410 0 0 {name=STIMULI only_toplevel=false value="
.options savecurrents
.save all
.control
tran 1u 1m
plot v(op,on)
plot v(op) v(on)
plot v(ip,in)
write sc_integrator_tb_ideal_clock_yqx.raw
.endc
"}
C {devices/lab_wire.sym} 1380 -800 0 1 {name=l21 sig_type=std_logic lab=c1_right}
C {devices/lab_wire.sym} 1120 -800 0 1 {name=l22 sig_type=std_logic lab=c1_left}
C {devices/lab_wire.sym} 1900 -800 0 1 {name=l23 sig_type=std_logic lab=c3_left}
C {devices/lab_wire.sym} 1120 -200 0 1 {name=l24 sig_type=std_logic lab=c2_left}
C {devices/lab_wire.sym} 1380 -200 0 1 {name=l25 sig_type=std_logic lab=c2_right}
C {devices/lab_wire.sym} 1900 -200 0 1 {name=l26 sig_type=std_logic lab=c4_left}
C {devices/lab_pin.sym} 2030 -420 1 1 {name=l27 sig_type=std_logic lab=p1_b}
C {devices/vdd.sym} 280 -600 0 0 {name=l6 lab=VDD}
C {devices/isource.sym} 280 -570 0 0 {name=I0 value=30u}
C {devices/lab_pin.sym} 280 -540 1 1 {name=l55 sig_type=std_logic lab=i_bias_1}
C {devices/gnd.sym} 1380 -580 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1380 -400 2 1 {name=l58 lab=GND}
C {devices/vsource.sym} 440 -470 0 0 {name=V9 value=0.9}
C {devices/gnd.sym} 440 -440 0 0 {name=l59 lab=GND}
C {devices/vsource.sym} 440 -590 0 0 {name=V15 value="DC 0 SINE(0 0.1 1k)"}
C {devices/lab_pin.sym} 590 -650 0 1 {name=l60 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 590 -530 0 1 {name=l61 sig_type=std_logic lab=in}
C {ideal_clock.sym} 210 -1040 0 0 {name=x8 td=10u VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 360 -990 0 1 {name=l15 sig_type=std_logic lab=p1d}
C {devices/lab_pin.sym} 360 -1030 0 1 {name=l16 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 360 -950 0 1 {name=l17 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 360 -1010 0 1 {name=l18 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 360 -970 0 1 {name=l19 sig_type=std_logic lab=p1d_b}
C {devices/lab_pin.sym} 360 -930 0 1 {name=l20 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 360 -910 0 1 {name=l28 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 360 -890 0 1 {name=l31 sig_type=std_logic lab=p2d_b}
