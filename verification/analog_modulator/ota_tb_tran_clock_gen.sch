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
N 795 -500 850 -500 { lab=clk}
N 1150 -490 1180 -490 { lab=phi1}
N 1150 -410 1180 -410 { lab=phi2}
N 1150 -470 1180 -470 { lab=phi1_b}
N 1150 -390 1180 -390 { lab=phi2_b}
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
.tran 1n 20u uic
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
C {devices/vsource.sym} 530 -540 0 0 {name=V2 value="DC 0 PULSE(0 1.8 2n 10p 10p 97.65n 195.3n)"}
C {devices/gnd.sym} 530 -510 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} 530 -592.5 0 1 {name=l1 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 795 -500 0 0 {name=l2 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1180 -490 0 1 {name=l3 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1180 -470 0 1 {name=l4 sig_type=std_logic lab=phi1_b}
C {devices/lab_pin.sym} 1180 -410 0 1 {name=l16 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1180 -390 0 1 {name=l18 sig_type=std_logic lab=phi2_b}
C {devices/gnd.sym} 857.5 -730 0 0 {name=l66 lab=GND}
C {clock.sym} 1000 -500 0 0 {name=x2 VDD=VDD VSS=VSS}
C {ota.sym} 1460 -620 0 0 {name=x1 C_CMFB=50 C_COMP=350 VDD=VDD VSS=VSS}
C {devices/noconn.sym} 1150 -650 2 0 {name=l22}
C {devices/noconn.sym} 1150 -630 2 0 {name=l23}
C {devices/noconn.sym} 1150 -610 2 0 {name=l24}
C {devices/noconn.sym} 1150 -590 2 0 {name=l25}
C {devices/noconn.sym} 1150 -570 2 0 {name=l26}
C {devices/noconn.sym} 1150 -550 2 0 {name=l27}
C {devices/noconn.sym} 1150 -530 2 0 {name=l30}
C {devices/noconn.sym} 1150 -510 2 0 {name=l31}
C {devices/noconn.sym} 1150 -450 2 0 {name=l17}
C {devices/noconn.sym} 1150 -430 2 0 {name=l19}
C {devices/noconn.sym} 1150 -370 2 0 {name=l20}
C {devices/noconn.sym} 1150 -350 2 0 {name=l21}
