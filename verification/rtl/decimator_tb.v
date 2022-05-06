module decimator_tb;

    reg clk;
    reg rst_n;
    reg unsigned [11:0] data_in;
    wire unsigned [11:0] data_out;
    wire new_data;

    decimator dut (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .data_out(data_out),
        .new_data(new_data)
    );

    always #10 clk = ~clk;

    initial begin
        clk <= 0;
        rst_n <= 0;
        data_in <= 12'd0;

        #20

        rst_n <= 1;
    end

    always begin
        #20 data_in <= data_in + 1;
    end
    
    integer count = 0;
    initial begin
        while(count < 512) begin
            #20 count <= count + 1; 
        end
        $display("Expected: %d, Actual: %d", count, data_out);
        while(count < 2*512) begin
            #20 count <= count + 1;
        end
        $display("Expected: %d, Actual: %d", count, data_out);
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, decimator_tb);
        #800000
        $finish(2);
    end

endmodule