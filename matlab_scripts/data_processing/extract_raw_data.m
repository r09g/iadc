
% dsm nodes
v_dsm_ip = data.v_x1_ip;
v_dsm_in = data.v_x1_in;
v_dsm_ip1 = data.v_x1_ip1;
v_dsm_in1 = data.v_x1_in1;
v_dsm_op = data.v_x1_op;
v_dsm_on = data.v_x1_on;
v_dsm_op1 = data.v_x1_op1;
v_dsm_on1 = data.v_x1_on1;
v_dsm_ip2 = data.v_x1_ip2;
v_dsm_in2 = data.v_x1_in2;
v_dsm_op2 = data.v_x1_op2;
v_dsm_on2 = data.v_x1_on2;
v_dsm_dac_p = data.v_x1_dac_p;
v_dsm_dac_n = data.v_x1_dac_n;


% clocking
t = data.time;
v_clk_a = data.v_a;
v_clk_ad = data.v_ad;
v_clk_b = data.v_b;
v_clk_bd = data.v_bd;
v_clk_p1 = data.v_p1;
v_clk_p1d = data.v_p1d;
v_clk_p2 = data.v_p2;
v_clk_p2d = data.v_p2d;
v_clk_rst_n = data.v_rst_n;
 
save dsm_nodes.mat v_dsm*
save clocks.mat v_clk* t
