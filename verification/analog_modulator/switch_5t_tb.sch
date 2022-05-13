v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 -220 160 -190 { lab=clk}
N 240 -220 240 -190 { lab=in}
N 80 -200 80 -190 { lab=VDD}
N 800 -150 940 -150 { lab=out}
N 940 -150 1020 -150 { lab=out}
N 560 -150 680 -150 { lab=#net1}
C {devices/lab_wire.sym} 160 -220 0 0 {name=l1 sig_type=std_logic lab=clk}
C {devices/gnd.sym} 160 -130 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 80 -160 0 0 {name=V2 value="1.8"}
C {devices/gnd.sym} 80 -130 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 160 -160 0 0 {name=V3 value="1.8"}
C {devices/lab_wire.sym} 240 -220 0 0 {name=l10 sig_type=std_logic lab=in
}
C {devices/gnd.sym} 240 -130 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 80 -200 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 240 -160 0 0 {name=V1 value="dc 0 ac 1"}
C {devices/code_shown.sym} 1390 -210 0 0 {name=NGSPICE1 only_toplevel=false value="
.options savecurrents
.control
ac dec 20 1 1e12
plot vdb(out)
write switch_5t_tb.raw
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
C {switch_5t.sym} 670 -100 0 0 {name=x1 VDD=VDD VSS=GND}
C {devices/lab_wire.sym} 460 -150 0 0 {name=l2 sig_type=std_logic lab=in
}
C {devices/capa.sym} 1020 -120 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1020 -90 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 890 -150 0 0 {name=l7 sig_type=std_logic lab=out}
C {transmission_gate.sym} 480 -150 0 0 {name=x2 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {devices/vdd.sym} 510 -110 2 0 {name=l6 lab=VDD}
C {devices/vdd.sym} 740 -110 2 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 510 -190 2 0 {name=l12 lab=GND}
C {devices/gnd.sym} 740 -190 2 0 {name=l13 lab=GND}
