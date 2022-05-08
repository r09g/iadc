module integrator_1_tb;

    reg clk;
    reg rst_n;
    reg unsigned data_in;
    wire unsigned [8:0] data_out;

    integrator_1 dut (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .data_out(data_out)
    );

    always #10 clk = ~clk;

    initial begin
        clk <= 0;
        rst_n <= 0;
        data_in <= 0;

        #20

        rst_n <= 1;
    end

    integer gold;
    initial gold = 0;
    always begin
        #20 gold <= gold + 1;
        #20;
    end

    always begin
        #20 data_in <= ~data_in;
        $display("Expected: %d, Actual: %d", gold, data_out); assert(gold == data_out);
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, integrator_1_tb);
        #200
        $finish(2);
    end

endmodule