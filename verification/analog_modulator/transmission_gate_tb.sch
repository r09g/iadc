v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 -220 160 -190 { lab=clk}
N 750 -140 750 -110 { lab=clk}
N 560 -110 750 -110 { lab=clk}
N 750 -240 750 -220 { lab=#net1}
N 560 -240 750 -240 { lab=#net1}
N 560 -240 560 -210 { lab=#net1}
N 560 -130 560 -110 { lab=clk}
N 500 -110 560 -110 { lab=clk}
N 660 -180 700 -180 { lab=in}
N 240 -220 240 -190 { lab=in}
N 800 -180 840 -180 { lab=#net2}
N 80 -200 80 -190 { lab=VDD}
N 840 -180 860 -180 { lab=#net2}
C {devices/code_shown.sym} 1090 -200 0 0 {name=NGSPICE only_toplevel=false value="
.options savecurrents
.control
op
print i(V1)
write transmission_gate_tb.raw
.endc
"}
C {devices/code.sym} 1080 -360 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/lab_wire.sym} 160 -220 0 0 {name=l1 sig_type=std_logic lab=clk}
C {devices/gnd.sym} 160 -130 0 0 {name=l3 lab=GND}
C {sky130_stdcells/inv_4.sym} 560 -170 3 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 500 -110 0 0 {name=l4 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 660 -180 0 0 {name=l7 sig_type=std_logic lab=in
}
C {devices/vsource.sym} 80 -160 0 0 {name=V2 value="1.8"}
C {devices/gnd.sym} 80 -130 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 160 -160 0 0 {name=V3 value="1.8"}
C {devices/lab_wire.sym} 240 -220 0 0 {name=l10 sig_type=std_logic lab=in
}
C {devices/gnd.sym} 240 -130 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 80 -200 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 240 -160 0 0 {name=V1 value="DC 1"}
C {transmission_gate.sym} 720 -180 0 0 {name=x1 VDD=VDD VSS=VSS N=1 W_N=0.5 L_N=0.15 W_P=1.3 L_P=0.15}
C {devices/gnd.sym} 920 -180 0 0 {name=l6 lab=GND}
C {devices/res.sym} 890 -180 3 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
