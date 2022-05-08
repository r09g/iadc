module digital_filter_tb_ngspice;

    reg clk;
    reg rst_n;
    reg unsigned data_in;
    wire unsigned [11:0] data_out;
    wire new_data;

    digital_filter dut (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .data_out(data_out),
        .new_data(new_data)
    );

    reg mod_out [5145:0];
    integer f;

    always #10 clk = ~clk;

    initial begin
        $readmemb("./verification/data/mod_out_ngspice_sine.txt", mod_out);
        f = $fopen("./verification/data/digital_out_vcs_sine.txt", "w");

        clk <= 0;
        rst_n <= 0;
        data_in <= 0;

        #20

        rst_n <= 1;
    end

    always begin
        #20
        @(negedge new_data) $fwrite(f, "%d\n", data_out);
    end

    integer addr = 0;
    integer count = 0;
    always begin
        #20
        rst_n <= 1;
        data_in <= mod_out[addr]; 
        addr <= addr + 1;
        count <= count + 1;
        if(count == 512) begin
            count <= 0;
            rst_n <= 0;
        end
        if(addr > 5145) begin
            $fclose(f);
            $finish(2);
        end
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, digital_filter_tb_ngspice);

    end

endmodule