v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 60 -160 60 -120 { lab=cm}
N 60 -160 100 -160 { lab=cm}
N 100 -190 100 -160 { lab=cm}
N 100 -190 120 -190 { lab=cm}
N 100 -160 100 -130 { lab=cm}
N 100 -130 120 -130 { lab=cm}
N 260 -130 300 -130 { lab=in}
N 250 -130 260 -130 { lab=in}
N 230 -370 230 -350 { lab=clk}
N 190 -190 300 -190 { lab=ip}
N 120 -130 190 -130 { lab=cm}
N 120 -190 130 -190 { lab=cm}
N 420 -130 480 -130 { lab=outn}
N 480 -130 480 -120 { lab=outn}
N 420 -190 560 -190 { lab=outp}
N 560 -190 560 -160 { lab=outp}
C {comparator.sym} 300 -90 0 0 {name=x1 VDD=VDD VSS=GND}
C {devices/vsource.sym} 60 -90 0 0 {name=V1 value=0.9}
C {devices/gnd.sym} 60 -60 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 60 -160 0 0 {name=l2 sig_type=std_logic lab=cm}
C {devices/vsource.sym} 150 -320 0 0 {name=V4 value=1.8}
C {devices/gnd.sym} 150 -290 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 290 -190 0 0 {name=l4 sig_type=std_logic lab=ip}
C {devices/lab_wire.sym} 290 -130 0 0 {name=l5 sig_type=std_logic lab=in}
C {devices/vdd.sym} 150 -350 0 0 {name=l6 lab=VDD}
C {devices/vsource.sym} 230 -320 0 0 {name=V5 value="DC 0 PULSE(0 1.8 1n 0.1n 0.1n 4.9n 10n)"}
C {devices/gnd.sym} 230 -290 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 230 -370 0 0 {name=l8 sig_type=std_logic lab=clk}
C {devices/capa.sym} 560 -130 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 560 -100 0 0 {name=l10 lab=GND}
C {devices/code.sym} 680 -390 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code_shown.sym} 690 -220 0 0 {name=STIMULI only_toplevel=false value="
.ic v(x1.r_b)=0 v(x1.s_b)=0
.control
TRAN 1p 25n uic
save all
write comparator_tb_tran.raw 
.endc

"}
C {devices/lab_wire.sym} 560 -190 0 1 {name=l11 sig_type=std_logic lab=outp}
C {devices/param.sym} 1000 -220 0 0 {name=s1 value="vin_pp=-1u"}
C {devices/capa.sym} 480 -90 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 480 -60 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 480 -130 0 1 {name=l13 sig_type=std_logic lab=outn}
C {devices/vsource.sym} 160 -190 1 0 {name=V2 value="DC 0 PWL(0 '-vin_pp/2' 8n '-vin_pp/2' 8.5n 'vin_pp/2' 18n 'vin_pp/2' 18.5n '-vin_pp/2')"}
C {devices/vsource.sym} 220 -130 3 1 {name=V3 value="DC 0 PWL(0 '-vin_pp/2' 8n '-vin_pp/2' 8.5n 'vin_pp/2' 18n 'vin_pp/2' 18.5n '-vin_pp/2')"}
C {devices/lab_pin.sym} 360 -90 3 0 {name=l9 sig_type=std_logic lab=clk}
