v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 810 -740 810 -730 { lab=GND}
N 810 -730 910 -730 { lab=GND}
N 910 -740 910 -730 { lab=GND}
N 1050 -860 1050 -820 { lab=cm}
N 1050 -860 1150 -860 { lab=cm}
N 1150 -800 1210 -800 { lab=inn}
N 1150 -920 1210 -920 { lab=inp}
N 1500 -830 1500 -780 { lab=#net1}
N 530 -592.5 530 -570 { lab=clk}
N 797.5 -502.5 852.5 -502.5 { lab=clk}
N 1152.5 -492.5 1182.5 -492.5 { lab=phi1}
N 1152.5 -412.5 1182.5 -412.5 { lab=phi2}
N 1152.5 -472.5 1182.5 -472.5 { lab=phi1_b}
N 1152.5 -392.5 1182.5 -392.5 { lab=phi2_b}
N 1152.5 -432.5 1182.5 -432.5 { lab=phi1d_b}
N 1152.5 -372.5 1182.5 -372.5 { lab=phi2d}
N 1152.5 -452.5 1182.5 -452.5 { lab=phi1d}
N 1152.5 -352.5 1182.5 -352.5 { lab=phi2d_b}
C {devices/code.sym} 625 -1135 0 0 {name=TT_MODELS
only_toplevel=true 
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/lab_pin.sym} 810 -800 1 0 {name=l29 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 810 -770 0 0 {name=V6 value=0}
C {devices/vsource.sym} 910 -770 0 0 {name=V7 value=1.8}
C {devices/vdd.sym} 910 -800 0 0 {name=l35 lab=VDD}
C {devices/vsource.sym} 1050 -790 0 0 {name=V8 value=0.9}
C {devices/lab_pin.sym} 1050 -760 3 0 {name=l37 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1150 -890 0 0 {name=V10 value=0}
C {devices/lab_pin.sym} 1050 -860 0 0 {name=l40 sig_type=std_logic lab=cm}
C {devices/code_shown.sym} 800 -1130 0 0 {name=STIMULI only_toplevel=false value="
.options savecurrents
.save all
.ic v(cmc)=0 v(opp)=0 v(opn)=0
.tran 0.1n 5u uic
.control
run
plot v(opp) v(opn)
plot v(phi1) v(phi1d) v(phi2) v(phi2d)
write ota_tb_tran_clock_gen.raw
.endc
"}
C {devices/launcher.sym} 630 -970 0 0 {name=h1
descr=Annotate 
tclcommand="ngspice::annotate"}
C {devices/vsource.sym} 1150 -830 0 0 {name=V3 value=0}
C {devices/lab_pin.sym} 1210 -920 0 1 {name=l12 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1210 -800 0 1 {name=l15 sig_type=std_logic lab=inn}
C {ota.sym} 1460 -620 0 0 {name=x1 C_CMFB=50 C_COMP=350 VDD=VDD VSS=VSS}
C {devices/vdd.sym} 1500 -890 0 0 {name=l5 lab=VDD}
C {devices/isource.sym} 1500 -860 0 0 {name=I0 value=30u}
C {devices/lab_pin.sym} 1520 -780 3 1 {name=l6 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1540 -780 3 1 {name=l7 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1510 -620 1 1 {name=l10 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 1530 -620 1 1 {name=l11 sig_type=std_logic lab=phi2_b}
C {devices/lab_pin.sym} 1460 -730 2 1 {name=l8 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1460 -670 2 1 {name=l9 sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} 1580 -730 2 0 {name=l13 sig_type=std_logic lab=opp}
C {devices/lab_pin.sym} 1580 -670 2 0 {name=l14 sig_type=std_logic lab=opn}
C {clock.sym} 1002.5 -502.5 0 0 {name=x2}
C {devices/vsource.sym} 530 -540 0 0 {name=V2 value="DC 0 PULSE(0 1.8 2n 10p 10p 97.65n 195.3n)"}
C {devices/gnd.sym} 530 -510 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} 530 -592.5 0 1 {name=l1 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 797.5 -502.5 0 0 {name=l2 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1182.5 -492.5 0 1 {name=l3 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1182.5 -472.5 0 1 {name=l4 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 1182.5 -412.5 0 1 {name=l16 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1182.5 -392.5 0 1 {name=l18 sig_type=std_logic lab=phi2_b}
C {devices/gnd.sym} 857.5 -730 0 0 {name=l66 lab=GND}
C {devices/lab_pin.sym} 1182.5 -372.5 0 1 {name=l17 sig_type=std_logic lab=phi2d}
C {devices/lab_pin.sym} 1182.5 -432.5 0 1 {name=l19 sig_type=std_logic lab=phi1d_b}
C {devices/lab_pin.sym} 1182.5 -452.5 0 1 {name=l20 sig_type=std_logic lab=phi1d}
C {devices/lab_pin.sym} 1182.5 -352.5 0 1 {name=l21 sig_type=std_logic lab=phi2d_b}
