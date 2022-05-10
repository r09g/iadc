v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 20 -330 90 -330 { lab=GND}
N 200 -330 270 -330 { lab=GND}
N 270 -330 350 -330 { lab=GND}
N 350 -430 350 -390 { lab=rst_n}
N 670 -190 670 -150 { lab=#net1}
N 670 -190 750 -190 { lab=#net1}
N 750 -260 940 -260 { lab=ip}
N 750 -120 940 -120 { lab=in}
N 90 -330 200 -330 { lab=GND}
N 1030 -350 1030 -310 { lab=#net2}
N 1050 -350 1050 -310 { lab=#net3}
N 1070 -350 1070 -310 { lab=#net4}
N 1090 -350 1090 -310 { lab=#net5}
N 1110 -350 1110 -310 { lab=#net6}
N 1130 -350 1130 -310 { lab=#net7}
N 1150 -350 1150 -310 { lab=#net8}
N 1170 -350 1170 -310 { lab=#net9}
N 1190 -350 1190 -310 { lab=#net10}
N 1210 -350 1210 -310 { lab=#net11}
N 1230 -350 1230 -310 { lab=#net12}
N 1250 -350 1250 -310 { lab=#net13}
N 1270 -350 1270 -310 { lab=#net14}
N 1290 -350 1290 -310 { lab=#net15}
N 1310 -350 1310 -310 { lab=#net16}
N 1330 -350 1330 -310 { lab=#net17}
N 750 -260 750 -250 { lab=ip}
N 750 -130 750 -120 { lab=in}
N 940 -120 960 -120 { lab=in}
N 940 -260 960 -260 { lab=ip}
C {devices/code.sym} 60 -770 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/vsource.sym} 20 -540 0 0 {name=V1 value="DC 0 PULSE(0 1.8 10n 10p 10p '0.5/5.12e6-10p' '1/5.12e6')"}
C {devices/lab_pin.sym} 20 -570 3 1 {name=l121 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 20 -510 1 1 {name=l122 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 20 -360 0 0 {name=V2 value=0}
C {devices/vsource.sym} 90 -360 0 0 {name=V3 value=1.8}
C {devices/isource.sym} 200 -360 2 0 {name=I0 value=30u}
C {devices/gnd.sym} 90 -330 0 0 {name=l125 lab=GND}
C {devices/lab_wire.sym} 200 -390 1 0 {name=l126 sig_type=std_logic lab=i_bias_1}
C {devices/isource.sym} 270 -360 2 0 {name=I1 value=30u}
C {devices/lab_wire.sym} 270 -390 1 0 {name=l127 sig_type=std_logic lab=i_bias_2}
C {devices/lab_wire.sym} 350 -410 3 1 {name=l128 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 430 -430 0 1 {name=l129 sig_type=std_logic lab=rst_n_b}
C {devices/code.sym} 220 -770 0 0 {name=STIMULI only_toplevel=false value="
.control
tran 1u 10m uic
save op
write modulator_tb_ideal_clock.raw v(op) 
.endc
"}
C {devices/vsource.sym} 670 -120 0 0 {name=V5 value=0.9}
C {devices/gnd.sym} 670 -90 0 0 {name=l130 lab=GND}
C {devices/vsource.sym} 750 -220 0 0 {name=V6 value="DC 0 SINE(0 0.5 1e3)"}
C {devices/vsource.sym} 750 -160 0 0 {name=V4 value="DC 0 SINE(0 0.5 1e3)"}
C {sky130_stdcells/inv_1.sym} 390 -430 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/vdd.sym} 90 -390 0 0 {name=l6 lab=VDD}
C {devices/vsource.sym} 350 -360 0 0 {name=V7 value="DC 0 PULSE(0 1.8 '97.64625n' 10p 10p '511.5/5.12e6+10p' '512/5.12e6')" spice_ignore=false}
C {ideal_clock.sym} 1180 -500 3 1 {name=x2 VDD=VDD VSS=VSS td=97.64625n}
C {devices/lab_wire.sym} 940 -260 0 0 {name=l2 sig_type=std_logic lab=ip}
C {devices/lab_wire.sym} 940 -120 0 0 {name=l3 sig_type=std_logic lab=in}
C {devices/vdd.sym} 20 -390 0 0 {name=l39 lab=VSS}
C {modulator.sym} 950 -60 0 0 {name=x1 VDD=VDD VSS=VSS}
C {devices/lab_wire.sym} 1200 -70 3 0 {name=l1 sig_type=std_logic lab=i_bias_1}
C {devices/lab_wire.sym} 1220 -70 3 0 {name=l4 sig_type=std_logic lab=i_bias_2}
C {devices/lab_wire.sym} 1400 -190 0 1 {name=l5 sig_type=std_logic lab=op}
C {devices/lab_wire.sym} 1140 -70 3 0 {name=l7 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 1160 -70 3 0 {name=l8 sig_type=std_logic lab=rst_n_b}
