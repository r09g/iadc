v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 30 -220 30 -180 { lab=cm}
N 30 -220 70 -220 { lab=cm}
N 70 -250 70 -220 { lab=cm}
N 70 -250 100 -250 { lab=cm}
N 70 -220 70 -190 { lab=cm}
N 70 -190 160 -190 { lab=cm}
N 220 -190 270 -190 { lab=inn}
N 200 -480 200 -460 { lab=clk}
N 330 -175 330 -150 { lab=clk}
N 390 -250 580 -250 { lab=outn}
N 160 -250 270 -250 { lab=inp}
N 390 -190 500 -190 { lab=outp}
C {devices/vsource.sym} 30 -150 0 0 {name=V1 value=0.9}
C {devices/gnd.sym} 30 -120 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 120 -430 0 0 {name=V4 value=1.8}
C {devices/gnd.sym} 120 -400 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 260 -250 0 0 {name=l4 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 260 -190 0 0 {name=l5 sig_type=std_logic lab=inn}
C {devices/vdd.sym} 120 -460 0 0 {name=l6 lab=VDD}
C {devices/vsource.sym} 200 -430 0 0 {name=V5 value="DC 0 PULSE(0 1.8 1n 0.1n 0.1n 4.9n 10n)"}
C {devices/gnd.sym} 200 -400 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 200 -480 0 0 {name=l8 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 330 -150 3 0 {name=l9 sig_type=std_logic lab=clk}
C {devices/code.sym} 720 -450 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt_mm
"}
C {devices/code_shown.sym} 730 -280 0 0 {name=STIMULI only_toplevel=false value="
.ic v(outp)=0 v(outn)=0
.control

wrdata /home/users/rhyang/.xschem/simulations/comparator_mc.txt 0
set appendwrite

let mc_run = 1
let mc_runs = 50

while mc_run <= mc_runs
  let ramp_run = 1
  let ramp_runs = 200
  let prev_res = 0
  let v_step = 0.05m
  let v_ctrl = -5m
  while ramp_run <= ramp_runs
    alter V2 v_ctrl
    alter V3 v_ctrl
    TRAN 0.1n 3n uic
    meas TRAN res FIND v(outp) WHEN time=2.9n
    if (res - prev_res > 1)
      wrdata /home/users/rhyang/.xschem/simulations/comparator_mc.txt v_ctrl
      let ramp_run = ramp_runs + 1  
    else
      let ramp_run = ramp_run + 1
      let v_ctrl = v_ctrl + v_step
    endif
  end
  let mc_run = mc_run + 1
  reset
end
.endc

"}
C {devices/lab_wire.sym} 430 -190 0 1 {name=l11 sig_type=std_logic lab=outp}
C {devices/lab_wire.sym} 480 -250 0 1 {name=l13 sig_type=std_logic lab=outn}
C {devices/vsource.sym} 130 -250 1 0 {name=V2 value="1m"}
C {devices/vsource.sym} 190 -190 3 0 {name=V3 value=1m}
C {devices/lab_wire.sym} 30 -220 0 0 {name=l2 sig_type=std_logic lab=cm}
C {comparator_core_large.sym} 270 -150 0 0 {name=x1 VDD=VDD VSS=GND}
