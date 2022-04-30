v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 30 -220 30 -180 { lab=cm}
N 30 -220 70 -220 { lab=cm}
N 70 -250 70 -220 { lab=cm}
N 70 -250 90 -250 { lab=cm}
N 70 -220 70 -190 { lab=cm}
N 70 -190 90 -190 { lab=cm}
N 230 -190 270 -190 { lab=in}
N 220 -190 230 -190 { lab=in}
N 200 -480 200 -460 { lab=clk}
N 350 -150 350 -125 { lab=clk}
N 410 -250 440 -250 { lab=outp}
N 440 -250 550 -250 { lab=outp}
N 160 -250 270 -250 { lab=ip}
N 90 -190 160 -190 { lab=cm}
N 90 -250 100 -250 { lab=cm}
N 410 -190 470 -190 { lab=outn}
N 270 -250 290 -250 { lab=ip}
N 270 -190 290 -190 { lab=in}
C {comparator.sym} 290 -150 0 0 {name=x1 VDD=VDD VSS=GND}
C {devices/vsource.sym} 30 -150 0 0 {name=V1 value=0.9}
C {devices/gnd.sym} 30 -120 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 30 -220 0 0 {name=l2 sig_type=std_logic lab=cm}
C {devices/vsource.sym} 120 -430 0 0 {name=V4 value=1.8}
C {devices/gnd.sym} 120 -400 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 270 -250 0 0 {name=l4 sig_type=std_logic lab=ip}
C {devices/lab_wire.sym} 270 -190 0 0 {name=l5 sig_type=std_logic lab=in}
C {devices/vdd.sym} 120 -460 0 0 {name=l6 lab=VDD}
C {devices/vsource.sym} 200 -430 0 0 {name=V5 value="DC 0 PULSE(0 1.8 1n 0.1n 0.1n 4.9n 10n)"}
C {devices/gnd.sym} 200 -400 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 200 -480 0 0 {name=l8 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 350 -125 3 0 {name=l9 sig_type=std_logic lab=clk}
C {devices/code.sym} 720 -450 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 730 -280 0 0 {name=STIMULI only_toplevel=false value="
.ic v(x1.r_b)=0 v(x1.s_b)=0
.control
TRAN 10p 1000n uic
let in = ip - in
plot v(outp) vs in
save all
write comparator_tb_offset.raw
.endc

"}
C {devices/lab_wire.sym} 550 -250 0 1 {name=l11 sig_type=std_logic lab=outp}
C {devices/param.sym} 1040 -280 0 0 {name=s1 value="vin_pp=1u"}
C {devices/lab_wire.sym} 470 -190 0 1 {name=l13 sig_type=std_logic lab=outn}
C {devices/vsource_arith.sym} 130 -250 1 0 {name=E1 VOL="time/(1u)*('vin_pp')-('vin_pp/2')"}
C {devices/vsource_arith.sym} 190 -190 3 1 {name=E2 VOL="time/(1u)*('vin_pp')-('vin_pp/2')"}
