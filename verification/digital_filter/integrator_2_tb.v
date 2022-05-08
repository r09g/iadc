module integrator_2_tb;

    reg clk;
    reg rst_n;
    reg unsigned [8:0] data_in;
    wire unsigned [17:0] data_out;

    integrator_2 dut (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .data_out(data_out)
    );

    always #10 clk = ~clk;

    initial begin
        clk <= 0;
        rst_n <= 0;
        data_in <= 9'd0;

        #20

        rst_n <= 1;
    end

    integer gold;
    initial begin
        gold = 0;
        #20 gold <= gold + 1;
        #20 gold <= gold + 1;
        #20 gold <= gold + 2;
        #20 gold <= gold + 3;
        #20 gold <= gold + 4;
        #20 gold <= gold + 5;
        #20 gold <= gold + 6;
        #20 gold <= gold + 6;
        #20 gold <= gold + 6;
        #20 gold <= gold + 6;
        #20 gold <= gold + 7;
        #20 gold <= gold + 8;
    end

    initial begin
        #20 data_in <= 9'd1;
        #20 data_in <= 9'd1;
        #20 data_in <= 9'd2;
        #20 data_in <= 9'd3;
        #20 data_in <= 9'd4;
        #20 data_in <= 9'd5;
        #20 data_in <= 9'd6;
        #20 data_in <= 9'd6;
        #20 data_in <= 9'd6;
        #20 data_in <= 9'd6;
        #20 data_in <= 9'd7;
        #20 data_in <= 9'd8;
    end

    always begin
        #20 $display("Expected: %d, Actual: %d", gold, data_out); assert(gold == data_out);
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, integrator_2_tb);
        #200
        $finish(2);
    end

endmodule