module digital_top (
    input wire clk,
    input wire rst_n,
    input wire sclk,
    input wire cs_n,
    input wire unsigned data_in,
    output reg [11:0] data_out,
    output reg new_data,
    output reg serial_data_out,
    output wire p2d_b,
    output wire p2d,
    output wire p2_b,
    output wire p2,
    output wire p1d_b,
    output wire p1d,
    output wire p1_b,
    output wire p1,
    output wire Ad_b,
    output wire Ad,
    output wire A_b,
    output wire A,
    output wire Bd_b,
    output wire Bd,
    output wire B_b,
    output wire B
);

    digital_filter df_inst (
        .clk(clk),
        .rst_n(rst_n),
        .sclk(sclk),
        .cs_n(cs_n),
        .data_in(data_in),
        .data_out(data_out),
        .new_data(new_data),
        .serial_data_out(serial_data_out)
    );

    clock_generator clk_gen_inst (
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
        .B(B),
        .clk(clk)
    );

endmodule

