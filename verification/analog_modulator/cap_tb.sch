v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {W=2.1 L=2.1 MF=1 C=10.18fF
W=4.8 L=4.8 MF=1 C=49.2fF
W=6.9 L=6.9 MF=1 C=99.7fF
W=8.8 L=8.8 MF=1 C=160.6fF
W=11.6 L=11.6 MF=1 C=276fF} 830 -290 0 0 0.4 0.4 {}
N 580 -110 620 -110 { lab=out}
N 680 -110 720 -110 { lab=GND}
N 580 -260 580 -110 { lab=out}
N 720 -260 720 -110 { lab=GND}
N 580 -260 620 -260 { lab=out}
N 680 -260 720 -260 { lab=GND}
C {devices/code.sym} -140 -210 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/gnd.sym} 580 -50 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 20 -200 0 0 {name=s1 only_toplevel=false value="

.control
ac dec 20 1e8 1e15
meas ac freq FIND frequency WHEN v(out)=500
let Cap = 1/1000/2/PI/freq
print Cap
save all
write cap_tb.raw
.endc

"}
C {devices/isource.sym} 580 -80 2 0 {name=I0 value="DC 0 AC 1"}
C {devices/gnd.sym} 720 -110 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 580 -110 0 0 {name=l3 sig_type=std_logic lab=out}
C {devices/res.sym} 650 -260 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 650 -110 3 0 {name=C1 model=cap_mim_m3_1 W=11.6 L=11.6 MF=1 spiceprefix=X}
