v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -320 150 -320 { lab=GND}
N 260 -320 330 -320 { lab=GND}
N 330 -320 410 -320 { lab=GND}
N 410 -420 410 -380 { lab=rst_n}
N 460 -180 460 -140 { lab=#net1}
N 460 -180 540 -180 { lab=#net1}
N 810 -400 810 -300 { lab=A}
N 830 -400 830 -300 { lab=A_b}
N 850 -400 850 -300 { lab=Ad}
N 870 -400 870 -300 { lab=Ad_b}
N 890 -400 890 -300 { lab=B}
N 910 -400 910 -300 { lab=B_b}
N 930 -400 930 -300 { lab=Bd}
N 950 -400 950 -300 { lab=Bd_b}
N 970 -400 970 -300 { lab=p1}
N 990 -400 990 -300 { lab=p1_b}
N 1010 -400 1010 -300 { lab=p1d}
N 1030 -400 1030 -300 { lab=p1d_b}
N 1050 -400 1050 -300 { lab=p2}
N 1070 -400 1070 -300 { lab=p2_b}
N 1090 -400 1090 -300 { lab=p2d}
N 1110 -400 1110 -300 { lab=p2d_b}
N 540 -240 740 -240 { lab=ip}
N 540 -120 740 -120 { lab=in}
N 150 -320 260 -320 { lab=GND}
C {devices/code.sym} 60 -770 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/lab_wire.sym} 1010 -370 1 1 {name=l104 sig_type=std_logic lab=p1d}
C {devices/lab_wire.sym} 990 -370 1 1 {name=l105 sig_type=std_logic lab=p1_b}
C {devices/lab_wire.sym} 970 -370 1 1 {name=l106 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 1030 -370 1 1 {name=l107 sig_type=std_logic lab=p1d_b}
C {devices/lab_wire.sym} 1090 -370 1 1 {name=l108 sig_type=std_logic lab=p2d}
C {devices/lab_wire.sym} 1070 -370 1 1 {name=l109 sig_type=std_logic lab=p2_b}
C {devices/lab_wire.sym} 1050 -370 1 1 {name=l110 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 1110 -370 1 1 {name=l111 sig_type=std_logic lab=p2d_b}
C {devices/lab_wire.sym} 850 -370 1 1 {name=l112 sig_type=std_logic lab=Ad}
C {devices/lab_wire.sym} 830 -370 1 1 {name=l113 sig_type=std_logic lab=A_b}
C {devices/lab_wire.sym} 810 -370 1 1 {name=l114 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 870 -370 1 1 {name=l115 sig_type=std_logic lab=Ad_b}
C {devices/lab_wire.sym} 930 -370 1 1 {name=l116 sig_type=std_logic lab=Bd}
C {devices/lab_wire.sym} 910 -370 1 1 {name=l117 sig_type=std_logic lab=B_b}
C {devices/lab_wire.sym} 890 -370 1 1 {name=l118 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 950 -370 1 1 {name=l119 sig_type=std_logic lab=Bd_b}
C {devices/vsource.sym} 80 -530 0 0 {name=V1 value="DC 0 PULSE(0 1.8 10n 10p 10p '0.5/5.12e6-10p' '1/5.12e6')"}
C {devices/lab_pin.sym} 80 -560 3 1 {name=l121 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 80 -500 1 1 {name=l122 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 80 -350 0 0 {name=V2 value=0}
C {devices/vsource.sym} 150 -350 0 0 {name=V3 value=1.8}
C {devices/lab_pin.sym} 80 -380 3 1 {name=l123 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 150 -380 3 1 {name=l124 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 260 -350 2 0 {name=I0 value=30u}
C {devices/gnd.sym} 150 -320 0 0 {name=l125 lab=GND}
C {devices/lab_wire.sym} 260 -380 1 0 {name=l126 sig_type=std_logic lab=i_bias_1}
C {devices/isource.sym} 330 -350 2 0 {name=I1 value=30u}
C {devices/lab_wire.sym} 330 -380 1 0 {name=l127 sig_type=std_logic lab=i_bias_2}
C {devices/vsource.sym} 410 -350 0 0 {name=V4 value=1.8}
C {devices/lab_wire.sym} 410 -400 3 1 {name=l128 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 490 -420 0 1 {name=l129 sig_type=std_logic lab=rst_n_b}
C {devices/code.sym} 220 -770 0 0 {name=STIMULI only_toplevel=false value="
.control
tran 10n 1010u
*let i_diff = v(ip) - v(in)
*let vc1 = v(c1l) - v(c1r)
*let i1_diff = v(ip1) - v(in1)
*let o1_diff = v(op1) - v(on1)
*let vc3 = v(c3l) - v(c3r)
*let vc4 = v(c4l) - v(c3r)
*let i2_diff = v(ip2) - v(in2)
*let o2_diff = v(op2) - v(on2)
save ip in op
write modulator_tb_ideal_clock_mavg.raw v(ip) v(in) v(op) 
.endc
"}
C {devices/vsource.sym} 460 -110 0 0 {name=V5 value=0.9}
C {devices/gnd.sym} 460 -80 0 0 {name=l130 lab=GND}
C {devices/vsource.sym} 540 -210 0 0 {name=V6 value="DC 0"}
C {devices/vsource.sym} 540 -150 0 0 {name=V7 value="DC 0"}
C {devices/lab_wire.sym} 640 -120 0 1 {name=l131 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} 640 -240 0 1 {name=l132 sig_type=std_logic lab=ip}
C {devices/vsource.sym} 150 -600 0 0 {name=V8 value="DC 0 PULSE(0 1.8 '10u+97.64625n' 10p 10p '511.5/5.12e6+10p' '512/5.12e6')" spice_ignore=true}
C {modulator.sym} 730 -50 0 0 {name=x1 VDD=VDD VSS=VSS}
C {devices/lab_wire.sym} 980 -60 3 0 {name=l1 sig_type=std_logic lab=i_bias_1}
C {devices/lab_wire.sym} 1000 -60 3 0 {name=l2 sig_type=std_logic lab=i_bias_2}
C {devices/lab_wire.sym} 920 -60 3 0 {name=l3 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 940 -60 3 0 {name=l4 sig_type=std_logic lab=rst_n_b}
C {ideal_clock.sym} 960 -550 3 1 {name=x2 td=10u VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 450 -420 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
