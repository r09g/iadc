v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 240 -220 240 -190 { lab=in}
N 80 -200 80 -190 { lab=VDD}
N 820 -70 960 -70 { lab=out4}
N 820 -160 960 -160 { lab=out2}
N 820 -250 960 -250 { lab=out1}
N 820 -350 960 -350 { lab=out0}
N 820 -460 960 -460 { lab=out}
C {devices/vsource.sym} 80 -160 0 0 {name=V2 value="1.8"}
C {devices/gnd.sym} 80 -130 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 240 -220 0 0 {name=l10 sig_type=std_logic lab=in
}
C {devices/gnd.sym} 240 -130 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 80 -200 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 240 -160 0 0 {name=V1 value="dc 0 pulse(0 1.8 1n 10p 10p 1 1)"}
C {devices/code_shown.sym} 1390 -210 0 0 {name=NGSPICE1 only_toplevel=false value="
.options savecurrents
.control
tran 0.1n 20n
plot v(out5) v(out) v(in)
write gate_drive_strength_tb.raw
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
C {devices/capa.sym} 960 -40 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 960 -10 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 960 -70 0 1 {name=l8 sig_type=std_logic lab=out4
}
C {sky130_stdcells/and2_0.sym} 760 -350 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} 760 -250 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_2.sym} 760 -160 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_4.sym} 760 -70 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/capa.sym} 960 -130 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 960 -100 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 960 -160 0 1 {name=l6 sig_type=std_logic lab=out2
}
C {devices/capa.sym} 960 -220 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 960 -190 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 960 -250 0 1 {name=l12 sig_type=std_logic lab=out1
}
C {devices/capa.sym} 960 -320 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 960 -290 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 960 -350 0 1 {name=l14 sig_type=std_logic lab=out0
}
C {devices/vdd.sym} 700 -330 3 0 {name=l1 lab=VDD}
C {devices/vdd.sym} 700 -230 3 0 {name=l3 lab=VDD}
C {devices/vdd.sym} 700 -140 3 0 {name=l15 lab=VDD}
C {devices/vdd.sym} 700 -50 3 0 {name=l16 lab=VDD}
C {devices/lab_wire.sym} 700 -370 0 0 {name=l17 sig_type=std_logic lab=in
}
C {devices/lab_wire.sym} 700 -270 0 0 {name=l18 sig_type=std_logic lab=in
}
C {devices/lab_wire.sym} 700 -180 0 0 {name=l19 sig_type=std_logic lab=in
}
C {devices/lab_wire.sym} 700 -90 0 0 {name=l20 sig_type=std_logic lab=in
}
C {sky130_stdcells/and2_0.sym} 760 -460 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/vdd.sym} 700 -440 3 0 {name=l21 lab=VDD}
C {devices/lab_wire.sym} 700 -480 0 0 {name=l22 sig_type=std_logic lab=in
}
C {sky130_stdcells/and2_4.sym} 1020 -440 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/vdd.sym} 960 -420 3 0 {name=l23 lab=VDD}
C {devices/lab_wire.sym} 900 -460 0 1 {name=l24 sig_type=std_logic lab=out
}
C {devices/capa.sym} 1080 -410 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1080 -380 0 0 {name=l25 lab=GND}
C {devices/lab_wire.sym} 1080 -440 0 1 {name=l26 sig_type=std_logic lab=out5
}
