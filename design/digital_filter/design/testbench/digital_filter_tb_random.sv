`timescale 1ns / 1ps
module digital_filter_tb_random;

    reg clk;
    reg rst_n;
    reg unsigned data_in;
    wire unsigned [11:0] data_out;
    wire new_data;
    supply0 VSS;
    supply1 VDD;


    digital_filter df_inst (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .data_out(data_out),
        .new_data(new_data)
        `ifdef USE_POWER_PINS
        ,
        .VSS(VSS),
        .VDD(VDD)
        `endif
    );

    always #10 clk = ~clk;

    initial begin
        clk <= 0;
        rst_n <= 0;
        data_in <= 0;

        #20

        rst_n <= 1;
    end

    integer s1 = 0;
    integer s2 = 0;
    integer count = 0;
    always begin
        #20
        rst_n <= 1;
        data_in <= $random;
        #20
        while(count < 511) begin
            rst_n <= 1;
            data_in <= $random;
            s1 <= s1 + data_in;
            s2 <= s2 + s1;
            count = count + 1;
            #20;
        end
        s1 <= s1 + data_in;
        s2 <= s2 + s1;
        #20
        s2 <= s2 + s1;
        #20
        $display("Expected: %d, Actual: %d", (s2 >> 6), data_out); assert((s2 >> 6) == data_out);
        rst_n <= 0;
        count = 0;
        s1 = 0;
        s2 = 0;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, digital_filter_tb_random);
        #2000000
        $finish(2);
    end

    `ifdef GL
    initial begin
        $sdf_annotate("inputs/design.sdf", digital_filter_tb_random);
    end
    `endif


endmodule