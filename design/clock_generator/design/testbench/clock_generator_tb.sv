`timescale 1ns / 100fs
`define T_CLK 195.3125
module clock_generator_tb;

    reg clk;
    reg rst_n;
    reg sclk;
    reg cs_n;
    reg unsigned data_in;
    wire unsigned [11:0] data_out;
    wire new_data;
    wire s_data_out;
    wire p2d_b;
    wire p2d;
    wire p2_b;
    wire p2;
    wire p1d_b;
    wire p1d;
    wire p1_b;
    wire p1;
    wire Ad_b;
    wire Ad;
    wire A_b;
    wire A;
    wire Bd_b;
    wire Bd;
    wire B_b;
    wire B;
    supply0 VSS;
    supply1 VDD;


    digital_top clk_gen_inst (
        .clk(clk),
        .p2d_b(p2d_b),
        .p2d(p2d),
        .p2_b(p2_b),
        .p2(p2),
        .p1d_b(p1d_b),
        .p1d(p1d),
        .p1_b(p1_b),
        .p1(p1),
        .Ad_b(Ad_b),
        .Ad(Ad),
        .A_b(A_b),
        .A(A),
        .Bd_b(Bd_b),
        .Bd(Bd),
        .B_b(B_b),
        .B(B)
        `ifdef USE_POWER_PINS
        ,
        .VSS(VSS),
        .VDD(VDD)
        `endif
    );

    always #(`T_CLK/2) clk = ~clk;

    initial begin
        $dumpfile("run.vcd");
        $dumpvars(0, digital_top_tb);
        #(500000*`T_CLK)
        $display("\033[0;32mPassed!\033[0m");
        $finish(2);
    end

    `ifdef GL
    initial begin
        $sdf_annotate("inputs/design.sdf", digital_top_inst);
    end
    `endif


endmodule


