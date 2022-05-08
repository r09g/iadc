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
N 1010 -410 1010 -310 { lab=A}
N 1030 -410 1030 -310 { lab=A_b}
N 1050 -410 1050 -310 { lab=Ad}
N 1070 -410 1070 -310 { lab=Ad_b}
N 1090 -410 1090 -310 { lab=B}
N 1110 -410 1110 -310 { lab=B_b}
N 1130 -410 1130 -310 { lab=Bd}
N 1150 -410 1150 -310 { lab=Bd_b}
N 1170 -410 1170 -310 { lab=p1}
N 1190 -410 1190 -310 { lab=p1_b}
N 1210 -410 1210 -310 { lab=p1d}
N 1230 -410 1230 -310 { lab=p1d_b}
N 1250 -410 1250 -310 { lab=p2}
N 1270 -410 1270 -310 { lab=p2_b}
N 1290 -410 1290 -310 { lab=p2d}
N 1310 -410 1310 -310 { lab=p2d_b}
N 750 -250 940 -250 { lab=ip}
N 750 -130 940 -130 { lab=in}
N 90 -330 200 -330 { lab=GND}
C {devices/code.sym} 60 -770 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/lab_wire.sym} 1210 -380 1 1 {name=l104 sig_type=std_logic lab=p1d}
C {devices/lab_wire.sym} 1190 -380 1 1 {name=l105 sig_type=std_logic lab=p1_b}
C {devices/lab_wire.sym} 1170 -380 1 1 {name=l106 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 1230 -380 1 1 {name=l107 sig_type=std_logic lab=p1d_b}
C {devices/lab_wire.sym} 1290 -380 1 1 {name=l108 sig_type=std_logic lab=p2d}
C {devices/lab_wire.sym} 1270 -380 1 1 {name=l109 sig_type=std_logic lab=p2_b}
C {devices/lab_wire.sym} 1250 -380 1 1 {name=l110 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 1310 -380 1 1 {name=l111 sig_type=std_logic lab=p2d_b}
C {devices/lab_wire.sym} 1050 -380 1 1 {name=l112 sig_type=std_logic lab=Ad}
C {devices/lab_wire.sym} 1030 -380 1 1 {name=l113 sig_type=std_logic lab=A_b}
C {devices/lab_wire.sym} 1010 -380 1 1 {name=l114 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 1070 -380 1 1 {name=l115 sig_type=std_logic lab=Ad_b}
C {devices/lab_wire.sym} 1130 -380 1 1 {name=l116 sig_type=std_logic lab=Bd}
C {devices/lab_wire.sym} 1110 -380 1 1 {name=l117 sig_type=std_logic lab=B_b}
C {devices/lab_wire.sym} 1090 -380 1 1 {name=l118 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 1150 -380 1 1 {name=l119 sig_type=std_logic lab=Bd_b}
C {devices/vsource.sym} 20 -540 0 0 {name=V1 value="DC 0 PULSE(0 1.8 10n 10p 10p '0.5/5.12e6-10p' '1/5.12e6')"}
C {devices/lab_pin.sym} 20 -570 3 1 {name=l121 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 20 -510 1 1 {name=l122 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 20 -360 0 0 {name=V2 value=0}
C {devices/vsource.sym} 90 -360 0 0 {name=V3 value=1.8}
C {devices/lab_pin.sym} 20 -390 3 1 {name=l123 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 200 -360 2 0 {name=I0 value=30u}
C {devices/gnd.sym} 90 -330 0 0 {name=l125 lab=GND}
C {devices/lab_wire.sym} 200 -390 1 0 {name=l126 sig_type=std_logic lab=i_bias_1}
C {devices/isource.sym} 270 -360 2 0 {name=I1 value=30u}
C {devices/lab_wire.sym} 270 -390 1 0 {name=l127 sig_type=std_logic lab=i_bias_2}
C {devices/lab_wire.sym} 350 -410 3 1 {name=l128 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 430 -430 0 1 {name=l129 sig_type=std_logic lab=rst_n_b}
C {devices/code.sym} 220 -770 0 0 {name=STIMULI only_toplevel=false value="
.control
tran 10n 10m
*let i_diff = v(ip) - v(in)
*let vc1 = v(c1l) - v(c1r)
*let i1_diff = v(ip1) - v(in1)
*let o1_diff = v(op1) - v(on1)
*let vc3 = v(c3l) - v(c3r)
*let vc4 = v(c4l) - v(c3r)
*let i2_diff = v(ip2) - v(in2)
*let o2_diff = v(op2) - v(on2)
save op
write modulator_tb_ideal_clock_mavg.raw v(op) 
.endc
"}
C {devices/vsource.sym} 670 -120 0 0 {name=V5 value=0.9}
C {devices/gnd.sym} 670 -90 0 0 {name=l130 lab=GND}
C {devices/vsource.sym} 750 -220 0 0 {name=V6 value="DC 0 SINE(0 0.5 1e3)"}
C {devices/vsource.sym} 750 -160 0 0 {name=V4 value="DC 0 SINE(0 0.5 1e3)"}
C {devices/lab_wire.sym} 850 -130 0 1 {name=l131 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} 850 -250 0 1 {name=l132 sig_type=std_logic lab=ip}
C {modulator.sym} 930 -60 0 0 {name=x1 VDD=VDD VSS=VSS}
C {devices/lab_wire.sym} 1180 -70 3 0 {name=l1 sig_type=std_logic lab=i_bias_1}
C {devices/lab_wire.sym} 1200 -70 3 0 {name=l2 sig_type=std_logic lab=i_bias_2}
C {devices/lab_wire.sym} 1120 -70 3 0 {name=l3 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 1140 -70 3 0 {name=l4 sig_type=std_logic lab=rst_n_b}
C {ideal_clock.sym} 1160 -560 3 1 {name=x2 td=97.64625n VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 390 -430 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 1380 -190 0 1 {name=l5 sig_type=std_logic lab=op}
C {devices/vdd.sym} 90 -390 0 0 {name=l6 lab=VDD}
C {devices/vsource.sym} 350 -360 0 0 {name=V7 value="DC 0 PULSE(0 1.8 '97.64625n' 10p 10p '511.5/5.12e6+10p' '512/5.12e6')" spice_ignore=true}
