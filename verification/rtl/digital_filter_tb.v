module digital_filter_tb;

    reg clk;
    reg rst_n;
    reg unsigned data_in;
    wire unsigned [11:0] data_out;

    digital_filter dut (
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
        $display("Expected: %d, Actual: %d", (s2 >> 6), data_out);
        rst_n <= 0;
        count = 0;
        s1 = 0;
        s2 = 0;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, digital_filter_tb);
        #200000
        $finish(2);
    end

endmodule