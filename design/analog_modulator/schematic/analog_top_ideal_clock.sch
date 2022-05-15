v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 -500 190 -500 { lab=a_probe_3}
N 160 -520 190 -520 { lab=a_probe_2}
N 160 -540 190 -540 { lab=a_probe_1}
N 160 -560 190 -560 { lab=a_probe_0}
N 200 -620 220 -620 { lab=debug}
N 200 -640 220 -640 { lab=a_mod_grp_ctrl_1}
N 200 -660 220 -660 { lab=a_mod_grp_ctrl_0}
N 200 -690 220 -690 { lab=i_bias_2}
N 200 -710 220 -710 { lab=i_bias_1}
N 200 -730 220 -730 { lab=rst_n}
N 200 -750 220 -750 { lab=in}
N 200 -770 220 -770 { lab=ip}
C {modulator_w_test.sym} 440 -140 0 0 {name=x1 VDD=VDD VSS=VSS}
C {a_mux4_en.sym} 1220 -360 0 0 {name=x2 VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 900 -350 0 1 {name=l1 sig_type=std_logic lab=op2}
C {devices/lab_pin.sym} 900 -330 0 1 {name=l2 sig_type=std_logic lab=op1}
C {devices/lab_pin.sym} 900 -290 0 1 {name=l3 sig_type=std_logic lab=op}
C {devices/lab_pin.sym} 900 -250 0 1 {name=l4 sig_type=std_logic lab=on1}
C {devices/lab_pin.sym} 900 -230 0 1 {name=l5 sig_type=std_logic lab=on2}
C {devices/lab_pin.sym} 640 -170 1 1 {name=l6 sig_type=std_logic lab=rst_n}
C {devices/lab_pin.sym} 660 -170 1 1 {name=l7 sig_type=std_logic lab=rst_n_b}
C {devices/lab_pin.sym} 700 -170 1 1 {name=l8 sig_type=std_logic lab=i_bias_1}
C {devices/lab_pin.sym} 720 -170 1 1 {name=l9 sig_type=std_logic lab=i_bias_2}
C {devices/lab_pin.sym} 760 -170 1 1 {name=l10 sig_type=std_logic lab=bias_a}
C {devices/lab_pin.sym} 780 -170 1 1 {name=l11 sig_type=std_logic lab=bias_b}
C {devices/lab_pin.sym} 800 -170 1 1 {name=l12 sig_type=std_logic lab=bias_c}
C {devices/lab_pin.sym} 820 -170 1 1 {name=l13 sig_type=std_logic lab=bias_d}
C {devices/lab_pin.sym} 840 -170 1 1 {name=l14 sig_type=std_logic lab=cm1}
C {devices/lab_pin.sym} 860 -170 1 1 {name=l15 sig_type=std_logic lab=cmc}
C {devices/lab_pin.sym} 1240 -660 0 0 {name=l16 sig_type=std_logic lab=a_mod_grp_ctrl_1}
C {devices/lab_pin.sym} 1240 -560 2 1 {name=l17 sig_type=std_logic lab=bias_a}
C {devices/lab_pin.sym} 1240 -520 2 1 {name=l18 sig_type=std_logic lab=bias_b}
C {devices/lab_pin.sym} 1240 -480 2 1 {name=l19 sig_type=std_logic lab=cm1}
C {devices/noconn.sym} 1240 -440 0 0 {name=l20}
C {devices/lab_pin.sym} 1240 -640 0 0 {name=l21 sig_type=std_logic lab=a_mod_grp_ctrl_0}
C {devices/lab_pin.sym} 1240 -620 0 0 {name=l22 sig_type=std_logic lab=debug}
C {devices/lab_pin.sym} 1380 -1110 2 0 {name=l23 sig_type=std_logic lab=a_probe_0}
C {a_mux4_en.sym} 1220 -40 0 0 {name=x3 VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 1240 -340 0 0 {name=l24 sig_type=std_logic lab=a_mod_grp_ctrl_1}
C {devices/lab_pin.sym} 1240 -240 2 1 {name=l25 sig_type=std_logic lab=bias_c}
C {devices/lab_pin.sym} 1240 -200 2 1 {name=l26 sig_type=std_logic lab=bias_d}
C {devices/lab_pin.sym} 1240 -160 2 1 {name=l27 sig_type=std_logic lab=cmc}
C {devices/noconn.sym} 1240 -120 0 0 {name=l28}
C {devices/lab_pin.sym} 1240 -320 0 0 {name=l29 sig_type=std_logic lab=a_mod_grp_ctrl_0}
C {devices/lab_pin.sym} 1240 -300 0 0 {name=l30 sig_type=std_logic lab=debug}
C {devices/lab_pin.sym} 1380 -820 2 0 {name=l31 sig_type=std_logic lab=a_probe_1}
C {a_mux2_en.sym} 1200 -970 0 0 {name=x4 VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 1240 -1250 0 0 {name=l32 sig_type=std_logic lab=a_mod_grp_ctrl_0}
C {devices/lab_pin.sym} 1240 -1230 0 0 {name=l33 sig_type=std_logic lab=debug}
C {devices/lab_pin.sym} 1240 -1170 0 0 {name=l34 sig_type=std_logic lab=op1}
C {devices/lab_pin.sym} 1240 -1050 0 0 {name=l35 sig_type=std_logic lab=on1}
C {a_mux2_en.sym} 1200 -680 0 0 {name=x5 VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 1240 -960 0 0 {name=l36 sig_type=std_logic lab=a_mod_grp_ctrl_0}
C {devices/lab_pin.sym} 1240 -940 0 0 {name=l37 sig_type=std_logic lab=debug}
C {devices/lab_pin.sym} 1240 -880 0 0 {name=l38 sig_type=std_logic lab=op2}
C {devices/lab_pin.sym} 1240 -760 0 0 {name=l39 sig_type=std_logic lab=on2}
C {devices/lab_pin.sym} 1380 -500 2 0 {name=l40 sig_type=std_logic lab=a_probe_2}
C {devices/lab_pin.sym} 1380 -180 2 0 {name=l41 sig_type=std_logic lab=a_probe_3}
C {devices/lab_pin.sym} 460 -220 0 0 {name=l42 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 460 -360 0 0 {name=l43 sig_type=std_logic lab=ip}
C {sky130_stdcells/clkinv_1.sym} 620 -60 0 0 {name=x7 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 580 -60 0 0 {name=l44 sig_type=std_logic lab=rst_n}
C {devices/lab_pin.sym} 660 -60 2 0 {name=l45 sig_type=std_logic lab=rst_n_b}
C {devices/ipin.sym} 200 -770 0 0 {name=p1 lab=ip}
C {devices/ipin.sym} 200 -750 0 0 {name=p2 lab=in}
C {devices/ipin.sym} 200 -730 0 0 {name=p3 lab=rst_n}
C {devices/ipin.sym} 200 -710 0 0 {name=p4 lab=i_bias_1}
C {devices/ipin.sym} 200 -690 0 0 {name=p5 lab=i_bias_2}
C {devices/ipin.sym} 200 -660 0 0 {name=p6 lab=a_mod_grp_ctrl_0}
C {devices/ipin.sym} 200 -640 0 0 {name=p7 lab=a_mod_grp_ctrl_1}
C {devices/ipin.sym} 200 -620 0 0 {name=p8 lab=debug}
C {devices/opin.sym} 190 -590 0 0 {name=p9 lab=op}
C {devices/opin.sym} 190 -560 0 0 {name=p10 lab=a_probe_0}
C {devices/opin.sym} 190 -540 0 0 {name=p11 lab=a_probe_1}
C {devices/opin.sym} 190 -520 0 0 {name=p12 lab=a_probe_2}
C {devices/opin.sym} 190 -500 0 0 {name=p13 lab=a_probe_3}
C {esd_cell.sym} 170 -540 3 0 {name=x8 VDD=VDD VSS=VSS}
C {esd_cell.sym} 170 -520 3 0 {name=x9 VDD=VDD VSS=VSS}
C {esd_cell.sym} 170 -500 3 0 {name=x10 VDD=VDD VSS=VSS}
C {esd_cell.sym} 170 -480 3 0 {name=x11 VDD=VDD VSS=VSS}
C {esd_cell.sym} 210 -690 1 1 {name=x12 VDD=VDD VSS=VSS}
C {esd_cell.sym} 210 -670 1 1 {name=x13 VDD=VDD VSS=VSS}
C {esd_cell.sym} 210 -750 1 1 {name=x14 VDD=VDD VSS=VSS}
C {esd_cell.sym} 210 -730 1 1 {name=x15 VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 760 -830 0 1 {name=l46 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 760 -810 0 1 {name=l47 sig_type=std_logic lab=A_b}
C {devices/lab_pin.sym} 760 -790 0 1 {name=l48 sig_type=std_logic lab=Ad}
C {devices/lab_pin.sym} 760 -770 0 1 {name=l49 sig_type=std_logic lab=Ad_b}
C {devices/lab_pin.sym} 760 -750 0 1 {name=l50 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 760 -730 0 1 {name=l51 sig_type=std_logic lab=B_b}
C {devices/lab_pin.sym} 760 -710 0 1 {name=l52 sig_type=std_logic lab=Bd}
C {devices/lab_pin.sym} 760 -690 0 1 {name=l53 sig_type=std_logic lab=Bd_b}
C {devices/lab_pin.sym} 760 -670 0 1 {name=l54 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 760 -650 0 1 {name=l55 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 760 -630 0 1 {name=l56 sig_type=std_logic lab=p1d}
C {devices/lab_pin.sym} 760 -610 0 1 {name=l57 sig_type=std_logic lab=p1d_b}
C {devices/lab_pin.sym} 760 -590 0 1 {name=l58 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 760 -570 0 1 {name=l59 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 760 -550 0 1 {name=l60 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 760 -530 0 1 {name=l61 sig_type=std_logic lab=p2d_b}
C {devices/lab_pin.sym} 530 -410 3 1 {name=l62 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 550 -410 3 1 {name=l63 sig_type=std_logic lab=A_b}
C {devices/lab_pin.sym} 570 -410 3 1 {name=l64 sig_type=std_logic lab=Ad}
C {devices/lab_pin.sym} 590 -410 3 1 {name=l65 sig_type=std_logic lab=Ad_b}
C {devices/lab_pin.sym} 610 -410 3 1 {name=l66 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 630 -410 3 1 {name=l67 sig_type=std_logic lab=B_b}
C {devices/lab_pin.sym} 650 -410 3 1 {name=l68 sig_type=std_logic lab=Bd}
C {devices/lab_pin.sym} 670 -410 3 1 {name=l69 sig_type=std_logic lab=Bd_b}
C {devices/lab_pin.sym} 690 -410 3 1 {name=l70 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 710 -410 3 1 {name=l71 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 730 -410 3 1 {name=l72 sig_type=std_logic lab=p1d}
C {devices/lab_pin.sym} 750 -410 3 1 {name=l73 sig_type=std_logic lab=p1d_b}
C {devices/lab_pin.sym} 770 -410 3 1 {name=l74 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 790 -410 3 1 {name=l75 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 810 -410 3 1 {name=l76 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 830 -410 3 1 {name=l77 sig_type=std_logic lab=p2d_b}
C {ideal_clock.sym} 610 -680 0 0 {name=x6 VDD=VDD VSS=VSS td=0}
