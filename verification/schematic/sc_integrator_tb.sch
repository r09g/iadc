v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1690 -740 1750 -740 { lab=#net1}
N 1410 -740 1490 -740 { lab=#net2}
N 1410 -140 1490 -140 { lab=#net3}
N 1690 -140 1750 -140 { lab=#net4}
N 1850 -740 1930 -740 { lab=#net1}
N 1930 -540 1930 -470 { lab=#net1}
N 1850 -140 1930 -140 { lab=#net4}
N 1930 -340 1930 -140 { lab=#net4}
N 1290 -740 1410 -740 { lab=#net2}
N 1290 -140 1410 -140 { lab=#net3}
N 1150 -740 1230 -740 { lab=#net5}
N 1150 -140 1230 -140 { lab=#net6}
N 850 -740 970 -740 { lab=ip}
N 850 -140 970 -140 { lab=in}
N 1930 -410 1930 -340 { lab=#net4}
N 1930 -410 2010 -410 { lab=#net4}
N 1930 -470 2010 -470 { lab=#net1}
N 2130 -410 2210 -410 { lab=on}
N 2130 -470 2210 -470 { lab=op}
N 1930 -740 1930 -540 { lab=#net1}
N 1490 -140 1550 -140 { lab=#net3}
N 1070 -740 1150 -740 { lab=#net5}
N 1070 -140 1150 -140 { lab=#net6}
N 1590 -740 1690 -740 { lab=#net1}
N 1650 -140 1690 -140 { lab=#net4}
N 130 -450 200 -450 { lab=GND}
N 200 -450 300 -450 { lab=GND}
N 1840 -440 2010 -440 { lab=cm}
N 1410 -210 1410 -140 { lab=#net3}
N 1410 -340 1410 -310 { lab=GND}
N 1410 -740 1410 -650 { lab=#net2}
N 1410 -550 1410 -520 { lab=GND}
N 1150 -550 1150 -520 { lab=GND}
N 1150 -340 1150 -310 { lab=GND}
N 1150 -740 1150 -650 { lab=#net5}
N 1150 -210 1150 -140 { lab=#net6}
N 1750 -740 1850 -740 { lab=#net1}
N 1750 -140 1850 -140 { lab=#net4}
N 1930 -740 2080 -740 { lab=#net1}
N 2140 -740 2200 -740 { lab=op}
N 2200 -740 2300 -740 { lab=op}
N 2300 -740 2300 -470 { lab=op}
N 2210 -470 2300 -470 { lab=op}
N 1930 -140 2090 -140 { lab=#net4}
N 2210 -410 2300 -410 { lab=on}
N 2300 -410 2300 -140 { lab=on}
N 2150 -140 2300 -140 { lab=on}
N 2300 -470 2360 -470 { lab=op}
N 2300 -410 2360 -410 { lab=on}
N 440 -520 540 -520 { lab=cm}
N 540 -460 660 -460 { lab=in}
N 540 -580 660 -580 { lab=ip}
C {devices/code.sym} 120 -1350 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {ota.sym} 2010 -520 2 1 {name=x1 C_CMFB=50 C_COMP=350 VDD=VDD VSS=VSS}
C {transmission_gate.sym} 1510 -740 0 0 {name=x4 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 1630 -140 2 0 {name=x5 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 1410 -630 1 0 {name=x2 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {transmission_gate.sym} 1410 -230 1 1 {name=x3 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/capa.sym} 1260 -740 3 0 {name=C1
m=1
value=320f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1260 -140 3 1 {name=C2
m=1
value=320f
footprint=1206
device="ceramic capacitor"}
C {transmission_gate.sym} 990 -740 0 0 {name=x10 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/lab_pin.sym} 850 -740 0 0 {name=l1 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 850 -140 0 0 {name=l2 sig_type=std_logic lab=in}
C {transmission_gate.sym} 990 -140 2 1 {name=x14 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/capa.sym} 2110 -740 3 0 {name=C3
m=1
value=1599f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2120 -140 3 1 {name=C4
m=1
value=1599f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1840 -440 0 0 {name=l21 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 1020 -700 1 1 {name=l29 sig_type=std_logic lab=p1d}
C {devices/lab_pin.sym} 1020 -780 3 1 {name=l30 sig_type=std_logic lab=p1d_b}
C {devices/lab_pin.sym} 1370 -600 2 1 {name=l35 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 1450 -600 0 1 {name=l36 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 1370 -260 2 1 {name=l37 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 1450 -260 0 1 {name=l38 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 1540 -700 1 1 {name=l39 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 1540 -780 3 1 {name=l40 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 1600 -180 3 1 {name=l41 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 1600 -100 1 1 {name=l42 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 2070 -360 3 0 {name=l53 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 2090 -360 3 0 {name=l54 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 2060 -520 3 1 {name=l55 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 2080 -520 3 1 {name=l56 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 2050 -360 3 0 {name=l57 sig_type=std_logic lab=i_bias_1}
C {clock.sym} 260 -970 0 0 {name=x39 VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 410 -920 2 0 {name=l104 sig_type=std_logic lab=p1d}
C {devices/lab_pin.sym} 410 -940 2 0 {name=l105 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 410 -960 2 0 {name=l106 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 410 -900 2 0 {name=l107 sig_type=std_logic lab=p1d_b}
C {devices/lab_pin.sym} 410 -840 2 0 {name=l108 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 410 -860 2 0 {name=l109 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 410 -880 2 0 {name=l110 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 410 -820 2 0 {name=l111 sig_type=std_logic lab=p2d_b}
C {devices/lab_pin.sym} 410 -1080 2 0 {name=l112 sig_type=std_logic lab=Ad}
C {devices/lab_pin.sym} 410 -1100 2 0 {name=l113 sig_type=std_logic lab=A_b}
C {devices/lab_pin.sym} 410 -1120 2 0 {name=l114 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 410 -1060 2 0 {name=l115 sig_type=std_logic lab=Ad_b}
C {devices/lab_pin.sym} 410 -1000 2 0 {name=l116 sig_type=std_logic lab=Bd}
C {devices/lab_pin.sym} 410 -1020 2 0 {name=l117 sig_type=std_logic lab=B_b}
C {devices/lab_pin.sym} 410 -1040 2 0 {name=l118 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 410 -980 2 0 {name=l119 sig_type=std_logic lab=Bd_b}
C {devices/lab_pin.sym} 110 -970 2 1 {name=l120 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 130 -660 0 0 {name=V1 value="DC 0 PULSE(0 1.8 10n 10p 10p '0.5/5.12e6' '1/5.12e6')"}
C {devices/lab_pin.sym} 130 -690 3 1 {name=l121 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 130 -630 1 1 {name=l122 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 130 -480 0 0 {name=V2 value=0}
C {devices/vsource.sym} 200 -480 0 0 {name=V3 value=1.8}
C {devices/lab_pin.sym} 130 -510 3 1 {name=l123 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -510 3 1 {name=l124 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 300 -480 2 0 {name=I0 value=30u}
C {devices/gnd.sym} 200 -450 0 0 {name=l125 lab=GND}
C {devices/lab_pin.sym} 300 -510 1 0 {name=l126 sig_type=std_logic lab=i_bias_1}
C {devices/lab_pin.sym} 1020 -180 3 1 {name=l3 sig_type=std_logic lab=p1d}
C {devices/lab_pin.sym} 1020 -100 1 1 {name=l4 sig_type=std_logic lab=p1d_b}
C {devices/gnd.sym} 1410 -520 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1410 -340 2 1 {name=l6 lab=GND}
C {transmission_gate.sym} 1150 -630 1 0 {name=x6 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/lab_pin.sym} 1110 -600 2 1 {name=l7 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 1190 -600 0 1 {name=l8 sig_type=std_logic lab=p2d_b}
C {devices/gnd.sym} 1150 -520 0 0 {name=l9 lab=GND}
C {transmission_gate.sym} 1150 -230 1 1 {name=x7 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/lab_pin.sym} 1110 -260 2 1 {name=l10 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 1190 -260 0 1 {name=l11 sig_type=std_logic lab=p2d_b}
C {devices/gnd.sym} 1150 -340 2 1 {name=l12 lab=GND}
C {devices/lab_pin.sym} 2360 -470 0 1 {name=l13 sig_type=std_logic lab=op}
C {devices/lab_pin.sym} 2360 -410 0 1 {name=l14 sig_type=std_logic lab=on}
C {devices/vsource.sym} 540 -550 0 0 {name=V10 value="DC 0 PULSE(0 5m 10n 10p 10p '5/5.12e6' '10/5.12e6')"}
C {devices/lab_pin.sym} 660 -580 0 1 {name=l16 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 660 -460 0 1 {name=l17 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 440 -520 0 0 {name=l18 sig_type=std_logic lab=cm}
C {devices/code_shown.sym} 110 -350 0 0 {name=STIMULI only_toplevel=false value="
.options savecurrents
.save all
.control
tran 10p 2.5u
write sc_integrator_tb.raw
.endc
"}
C {devices/vsource.sym} 540 -490 0 0 {name=V4 value="DC 0 PULSE(0 -5m 10n 10p 10p '5/5.12e6' '10/5.12e6')"}
