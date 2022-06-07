v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 -390 190 -390 { lab=a_probe_3}
N 160 -410 190 -410 { lab=a_probe_2}
N 160 -430 190 -430 { lab=a_probe_1}
N 160 -450 190 -450 { lab=a_probe_0}
N 200 -620 220 -620 { lab=debug}
N 200 -640 220 -640 { lab=a_mod_grp_ctrl_1}
N 200 -660 220 -660 { lab=a_mod_grp_ctrl_0}
N 200 -690 220 -690 { lab=i_bias_2}
N 200 -710 220 -710 { lab=i_bias_1}
N 200 -730 220 -730 { lab=rst_n}
N 200 -750 220 -750 { lab=in}
N 200 -770 220 -770 { lab=ip}
N 200 -810 220 -810 { lab=clk}
N 200 -560 220 -560 { lab=d_clk_grp_1_ctrl_1}
N 200 -580 220 -580 { lab=d_clk_grp_1_ctrl_0}
N 200 -520 220 -520 { lab=d_clk_grp_2_ctrl_1}
N 200 -540 220 -540 { lab=d_clk_grp_2_ctrl_0}
C {modulator_w_test.sym} 440 -140 0 0 {name=x1 VDD=VDD VSS=VSS}
C {a_mux4_en.sym} 1270 -360 0 0 {name=x2 VDD=VDD VSS=VSS}
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
C {devices/lab_pin.sym} 1290 -660 0 0 {name=l16 sig_type=std_logic lab=a_mod_grp_ctrl_1}
C {devices/lab_pin.sym} 1290 -480 2 1 {name=l17 sig_type=std_logic lab=cmc}
C {devices/lab_pin.sym} 1290 -520 2 1 {name=l18 sig_type=std_logic lab=bias_b}
C {devices/lab_pin.sym} 1290 -560 2 1 {name=l19 sig_type=std_logic lab=cm1}
C {devices/noconn.sym} 1290 -440 0 0 {name=l20}
C {devices/lab_pin.sym} 1290 -640 0 0 {name=l21 sig_type=std_logic lab=a_mod_grp_ctrl_0}
C {devices/lab_pin.sym} 1290 -620 0 0 {name=l22 sig_type=std_logic lab=debug}
C {devices/lab_pin.sym} 1430 -1110 2 0 {name=l23 sig_type=std_logic lab=a_probe_0}
C {a_mux4_en.sym} 1270 -40 0 0 {name=x3 VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 1290 -340 0 0 {name=l24 sig_type=std_logic lab=a_mod_grp_ctrl_1}
C {devices/lab_pin.sym} 1290 -200 2 1 {name=l25 sig_type=std_logic lab=bias_c}
C {devices/lab_pin.sym} 1290 -160 2 1 {name=l26 sig_type=std_logic lab=bias_d}
C {devices/lab_pin.sym} 1290 -240 2 1 {name=l27 sig_type=std_logic lab=bias_a}
C {devices/noconn.sym} 1290 -120 0 0 {name=l28}
C {devices/lab_pin.sym} 1290 -320 0 0 {name=l29 sig_type=std_logic lab=a_mod_grp_ctrl_0}
C {devices/lab_pin.sym} 1290 -300 0 0 {name=l30 sig_type=std_logic lab=debug}
C {devices/lab_pin.sym} 1430 -820 2 0 {name=l31 sig_type=std_logic lab=a_probe_1}
C {a_mux2_en.sym} 1250 -970 0 0 {name=x4 VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 1290 -1250 0 0 {name=l32 sig_type=std_logic lab=a_mod_grp_ctrl_0}
C {devices/lab_pin.sym} 1290 -1230 0 0 {name=l33 sig_type=std_logic lab=debug}
C {devices/lab_pin.sym} 1290 -1170 0 0 {name=l34 sig_type=std_logic lab=op1}
C {devices/lab_pin.sym} 1290 -1050 0 0 {name=l35 sig_type=std_logic lab=on1}
C {a_mux2_en.sym} 1250 -680 0 0 {name=x5 VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 1290 -960 0 0 {name=l36 sig_type=std_logic lab=a_mod_grp_ctrl_0}
C {devices/lab_pin.sym} 1290 -940 0 0 {name=l37 sig_type=std_logic lab=debug}
C {devices/lab_pin.sym} 1290 -880 0 0 {name=l38 sig_type=std_logic lab=op2}
C {devices/lab_pin.sym} 1290 -760 0 0 {name=l39 sig_type=std_logic lab=on2}
C {devices/lab_pin.sym} 1430 -500 2 0 {name=l40 sig_type=std_logic lab=a_probe_2}
C {devices/lab_pin.sym} 1430 -180 2 0 {name=l41 sig_type=std_logic lab=a_probe_3}
C {devices/lab_pin.sym} 460 -220 0 0 {name=l42 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 460 -360 0 0 {name=l43 sig_type=std_logic lab=ip}
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
C {devices/opin.sym} 190 -480 0 0 {name=p9 lab=op}
C {devices/opin.sym} 190 -450 0 0 {name=p10 lab=a_probe_0}
C {devices/opin.sym} 190 -430 0 0 {name=p11 lab=a_probe_1}
C {devices/opin.sym} 190 -410 0 0 {name=p12 lab=a_probe_2}
C {devices/opin.sym} 190 -390 0 0 {name=p13 lab=a_probe_3}
C {esd_cell.sym} 170 -430 3 0 {name=x8 VDD=VDD VSS=VSS}
C {esd_cell.sym} 170 -410 3 0 {name=x9 VDD=VDD VSS=VSS}
C {esd_cell.sym} 170 -390 3 0 {name=x10 VDD=VDD VSS=VSS}
C {esd_cell.sym} 170 -370 3 0 {name=x11 VDD=VDD VSS=VSS}
C {esd_cell.sym} 210 -690 1 1 {name=x12 VDD=VDD VSS=VSS}
C {esd_cell.sym} 210 -670 1 1 {name=x13 VDD=VDD VSS=VSS}
C {esd_cell.sym} 210 -750 1 1 {name=x14 VDD=VDD VSS=VSS}
C {esd_cell.sym} 210 -730 1 1 {name=x15 VDD=VDD VSS=VSS}
C {clock_v2.sym} 660 -700 0 0 {name=x6 VDD=VDD VSS=VSS}
C {devices/lab_pin.sym} 810 -850 0 1 {name=l46 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 810 -830 0 1 {name=l47 sig_type=std_logic lab=A_b}
C {devices/lab_pin.sym} 810 -810 0 1 {name=l48 sig_type=std_logic lab=Ad}
C {devices/lab_pin.sym} 810 -790 0 1 {name=l49 sig_type=std_logic lab=Ad_b}
C {devices/lab_pin.sym} 810 -770 0 1 {name=l50 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 810 -750 0 1 {name=l51 sig_type=std_logic lab=B_b}
C {devices/lab_pin.sym} 810 -730 0 1 {name=l52 sig_type=std_logic lab=Bd}
C {devices/lab_pin.sym} 810 -710 0 1 {name=l53 sig_type=std_logic lab=Bd_b}
C {devices/lab_pin.sym} 810 -690 0 1 {name=l54 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 810 -670 0 1 {name=l55 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 810 -650 0 1 {name=l56 sig_type=std_logic lab=p1d}
C {devices/lab_pin.sym} 810 -630 0 1 {name=l57 sig_type=std_logic lab=p1d_b}
C {devices/lab_pin.sym} 810 -610 0 1 {name=l58 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 810 -590 0 1 {name=l59 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 810 -570 0 1 {name=l60 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 810 -550 0 1 {name=l61 sig_type=std_logic lab=p2d_b}
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
C {devices/lab_pin.sym} 510 -700 0 0 {name=l78 sig_type=std_logic lab=clk}
C {devices/ipin.sym} 200 -810 0 0 {name=p14 lab=clk}
C {sky130_stdcells/mux4_1.sym} 230 -1470 0 0 {name=x16 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 190 -1530 0 0 {name=l79 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 190 -1490 0 0 {name=l80 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 190 -1450 0 0 {name=l81 sig_type=std_logic lab=p1_b}
C {devices/lab_pin.sym} 190 -1410 0 0 {name=l82 sig_type=std_logic lab=A_b}
C {devices/lab_pin.sym} 190 -1370 0 0 {name=l83 sig_type=std_logic lab=d_clk_grp_1_ctrl_0}
C {devices/lab_pin.sym} 190 -1340 0 0 {name=l84 sig_type=std_logic lab=d_clk_grp_1_ctrl_1}
C {devices/lab_pin.sym} 430 -1470 0 1 {name=l85 sig_type=std_logic lab=d_probe_0}
C {devices/lab_pin.sym} 770 -1530 0 0 {name=l86 sig_type=std_logic lab=p2}
C {devices/lab_pin.sym} 770 -1490 0 0 {name=l87 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 770 -1450 0 0 {name=l88 sig_type=std_logic lab=p2_b}
C {devices/lab_pin.sym} 770 -1410 0 0 {name=l89 sig_type=std_logic lab=B_b}
C {devices/lab_pin.sym} 770 -1370 0 0 {name=l90 sig_type=std_logic lab=d_clk_grp_1_ctrl_0}
C {devices/lab_pin.sym} 770 -1340 0 0 {name=l91 sig_type=std_logic lab=d_clk_grp_1_ctrl_1}
C {devices/lab_pin.sym} 1010 -1470 0 1 {name=l92 sig_type=std_logic lab=d_probe_1}
C {sky130_stdcells/mux4_1.sym} 810 -1470 0 0 {name=x17 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/mux4_1.sym} 230 -1190 0 0 {name=x18 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 190 -1250 0 0 {name=l93 sig_type=std_logic lab=p1d}
C {devices/lab_pin.sym} 190 -1210 0 0 {name=l94 sig_type=std_logic lab=Ad}
C {devices/lab_pin.sym} 190 -1170 0 0 {name=l95 sig_type=std_logic lab=p1d_b}
C {devices/lab_pin.sym} 190 -1130 0 0 {name=l96 sig_type=std_logic lab=Ad_b}
C {devices/lab_pin.sym} 190 -1090 0 0 {name=l97 sig_type=std_logic lab=d_clk_grp_2_ctrl_0}
C {devices/lab_pin.sym} 190 -1060 0 0 {name=l98 sig_type=std_logic lab=d_clk_grp_2_ctrl_1}
C {devices/lab_pin.sym} 430 -1190 0 1 {name=l99 sig_type=std_logic lab=d_probe_2}
C {devices/lab_pin.sym} 770 -1250 0 0 {name=l100 sig_type=std_logic lab=p2d}
C {devices/lab_pin.sym} 770 -1210 0 0 {name=l101 sig_type=std_logic lab=Bd}
C {devices/lab_pin.sym} 770 -1170 0 0 {name=l102 sig_type=std_logic lab=p2d_b}
C {devices/lab_pin.sym} 770 -1130 0 0 {name=l103 sig_type=std_logic lab=Bd_b}
C {devices/lab_pin.sym} 770 -1090 0 0 {name=l104 sig_type=std_logic lab=d_clk_grp_2_ctrl_0}
C {devices/lab_pin.sym} 770 -1060 0 0 {name=l105 sig_type=std_logic lab=d_clk_grp_2_ctrl_1}
C {devices/lab_pin.sym} 1010 -1190 0 1 {name=l106 sig_type=std_logic lab=d_probe_3}
C {sky130_stdcells/mux4_1.sym} 810 -1190 0 0 {name=x19 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_4.sym} 310 -1470 0 0 {name=x20 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_16.sym} 390 -1470 0 0 {name=x21 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_4.sym} 890 -1470 0 0 {name=x22 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_16.sym} 970 -1470 0 0 {name=x23 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_4.sym} 310 -1190 0 0 {name=x24 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_16.sym} 390 -1190 0 0 {name=x25 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_4.sym} 890 -1190 0 0 {name=x26 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_16.sym} 970 -1190 0 0 {name=x27 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/opin.sym} 190 -350 0 0 {name=p15 lab=d_probe_0}
C {devices/opin.sym} 190 -330 0 0 {name=p16 lab=d_probe_1}
C {devices/opin.sym} 190 -310 0 0 {name=p17 lab=d_probe_2}
C {devices/opin.sym} 190 -290 0 0 {name=p18 lab=d_probe_3}
C {devices/ipin.sym} 200 -580 0 0 {name=p19 lab=d_clk_grp_1_ctrl_0}
C {devices/ipin.sym} 200 -560 0 0 {name=p20 lab=d_clk_grp_1_ctrl_1}
C {devices/ipin.sym} 200 -540 0 0 {name=p21 lab=d_clk_grp_2_ctrl_0}
C {devices/ipin.sym} 200 -520 0 0 {name=p22 lab=d_clk_grp_2_ctrl_1}
C {sky130_stdcells/clkinv_4.sym} 620 -60 0 0 {name=x7 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
