v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -260 80 -250 { lab=VDD}
N 160 -260 160 -250 { lab=s0}
N 160 -380 160 -370 { lab=s1}
N 80 -130 80 -120 { lab=in0}
N 150 -130 150 -120 { lab=in1}
N 220 -130 220 -120 { lab=in2}
N 290 -130 290 -120 { lab=in3}
C {devices/vsource.sym} 80 -220 0 0 {name=V2 value="1.8"}
C {devices/gnd.sym} 80 -190 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} 80 -260 0 0 {name=l5 lab=VDD}
C {devices/code_shown.sym} 1390 -210 0 0 {name=NGSPICE1 only_toplevel=false value="
.options savecurrents
.control
tran 0.1n 30n
write a_mux_tb.raw
.endc
"}
C {devices/code.sym} 1380 -370 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/vsource.sym} 160 -220 0 0 {name=V1 value="dc 0 pulse(0 1.8 10n 10p 10p 1 1)"}
C {devices/gnd.sym} 160 -190 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 160 -260 0 0 {name=l2 sig_type=std_logic lab=s0}
C {devices/lab_wire.sym} 500 -340 0 0 {name=l3 sig_type=std_logic lab=s0}
C {devices/vsource.sym} 160 -340 0 0 {name=V3 value="dc 0 pulse(1.8 0 5n 10p 10p 5n 10n)"}
C {devices/gnd.sym} 160 -310 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 160 -380 0 0 {name=l6 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 500 -320 0 0 {name=l7 sig_type=std_logic lab=s1}
C {devices/vdd.sym} 500 -300 3 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 80 -90 0 0 {name=V4 value=0.2}
C {devices/gnd.sym} 80 -60 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 80 -130 0 0 {name=l11 sig_type=std_logic lab=in0}
C {devices/vsource.sym} 150 -90 0 0 {name=V5 value=0.4}
C {devices/gnd.sym} 150 -60 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 150 -130 0 0 {name=l13 sig_type=std_logic lab=in1}
C {devices/vsource.sym} 220 -90 0 0 {name=V6 value=0.6}
C {devices/gnd.sym} 220 -60 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 220 -130 0 0 {name=l15 sig_type=std_logic lab=in2}
C {devices/vsource.sym} 290 -90 0 0 {name=V7 value=0.8}
C {devices/gnd.sym} 290 -60 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 290 -130 0 0 {name=l17 sig_type=std_logic lab=in3}
C {devices/lab_wire.sym} 500 -240 0 0 {name=l18 sig_type=std_logic lab=in0}
C {devices/lab_wire.sym} 500 -200 0 0 {name=l19 sig_type=std_logic lab=in1}
C {devices/lab_wire.sym} 500 -160 0 0 {name=l20 sig_type=std_logic lab=in2}
C {devices/lab_wire.sym} 500 -120 0 0 {name=l21 sig_type=std_logic lab=in3}
C {devices/gnd.sym} 1040 -140 0 0 {name=l23 lab=GND}
C {devices/res.sym} 1040 -170 0 0 {name=R1
value=1e9
footprint=1206
device=resistor
m=1}
C {a_mux4_en.sym} 480 -40 0 0 {name=x1 VDD=VDD VSS=GND}
C {a_mux2_en.sym} 860 -60 0 0 {name=x2 VDD=VDD VSS=VSS}
C {devices/lab_wire.sym} 900 -260 0 0 {name=l24 sig_type=std_logic lab=in0}
C {devices/lab_wire.sym} 900 -140 0 0 {name=l25 sig_type=std_logic lab=in3}
C {devices/lab_wire.sym} 900 -340 0 0 {name=l26 sig_type=std_logic lab=s0}
C {devices/vdd.sym} 900 -320 3 0 {name=l27 lab=VDD}
C {devices/lab_wire.sym} 1040 -200 0 1 {name=l28 sig_type=std_logic lab=out2}
C {devices/gnd.sym} 640 -120 0 0 {name=l22 lab=GND}
C {devices/res.sym} 640 -150 0 0 {name=R2
value=1e9
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 640 -180 0 1 {name=l29 sig_type=std_logic lab=out4}
