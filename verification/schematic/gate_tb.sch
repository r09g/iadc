v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 200 -260 260 -260 { lab=in}
C {devices/code.sym} 680 -390 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/vsource.sym} 200 -230 0 0 {name=V1 value="DC 0 PULSE(0 1.8 1n 1p 1p 1n 2n)"}
C {devices/gnd.sym} 200 -200 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 240 -260 1 0 {name=l2 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 340 -260 1 0 {name=l3 sig_type=std_logic lab=n1}
C {devices/lab_pin.sym} 420 -260 1 0 {name=l4 sig_type=std_logic lab=n2}
C {devices/lab_pin.sym} 500 -260 1 0 {name=l5 sig_type=std_logic lab=n3}
C {devices/lab_pin.sym} 580 -260 2 0 {name=l6 sig_type=std_logic lab=n4}
C {devices/capa.sym} 580 -230 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 580 -200 0 0 {name=l7 lab=GND}
C {devices/code_shown.sym} 690 -220 0 0 {name=s1 only_toplevel=false value="
.control
tran 1p 3n
save all
write gate_tb.raw
plot v(in) v(n1) v(n2) v(n3)
.endc
"}
C {devices/vdd.sym} 120 -260 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 120 -230 0 0 {name=V2 value="1.8"}
C {devices/gnd.sym} 120 -200 0 0 {name=l9 lab=GND}
C {sky130_stdcells/clkinv_1.sym} 300 -260 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} 460 -260 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_1.sym} 540 -260 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s15_1.sym} 380 -260 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
