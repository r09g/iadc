
`timescale 1ns / 1ps
module digital_filter_tb_random;

    reg clk;
    reg shift;
    reg rst_n;
    reg unsigned data_in;
    wire unsigned [11:0] data_out;
    wire new_data;
    wire s_data_out;
    supply0 VSS;
    supply1 VDD;


    digital_filter df_inst (
        .clk(clk),
        .shift(shift),
        .rst_n(rst_n),
        .data_in(data_in),
        .data_out(data_out),
        .new_data(new_data),
        .serial_data_out(s_data_out)
        `ifdef USE_POWER_PINS
        ,
        .VSS(VSS),
        .VDD(VDD)
        `endif
    );

    always #10 clk = ~clk;

    initial begin
        clk <= 0;
        shift <= 0;
        rst_n <= 0;
        data_in <= 0;

        #20
        rst_n <= 1;
    end

    integer s1 = 0;
    integer s2 = 0;
    integer count = 0;
    reg unsigned [31:0] adc_out = 0;
    always begin
        #20
        rst_n <= 1;
        data_in <= $random;
        if($realtime > 50) assert(new_data == 0) else $fatal("\033[0;31mERROR\033[0m");
        #20
        while(count < 511) begin
            rst_n <= 1;
            data_in <= $random;
            s1 <= s1 + data_in;
            s2 <= s2 + s1;
            count = count + 1;
            if($realtime > 50) assert(new_data == 0) else $fatal("\033[0;31mERROR\033[0m");
            #20;
        end
        s1 <= s1 + data_in;
        s2 <= s2 + s1;
        #20
        s2 <= s2 + s1;
        #20
        $display("Filter Output Expected: %d, Actual: %d", (s2 >> 6), data_out); 
        assert((s2 >> 6) == data_out) else $fatal("\033[0;31mERROR\033[0m"); 
        assert(new_data == 1) else $fatal("\033[0;31mERROR\033[0m");
        rst_n <= 0;
        adc_out = (s2 >> 6);
        count = 0;
        s1 = 0;
        s2 = 0;
    end

    reg unsigned [11:0] dut_serial_out;
    always begin
    @(negedge new_data)
        #10;
        if($realtime > 100) begin
            dut_serial_out = 0;
            for(int pos = 0; pos < 12; pos++) begin
                dut_serial_out[11-pos] = s_data_out;
                shift <= 1;
                #20;
            end
            shift <= 0;
            $display("Serial Output Expected: %b, Actual: %b", adc_out[11:0], dut_serial_out); 
            assert(adc_out[11:0] == dut_serial_out) else $fatal("\033[0;31mERROR\033[0m");
        end
    end

    initial begin
        $dumpfile("run.vcd");
        $dumpvars(0, digital_filter_tb_random);
        #2000000
        $display("\033[0;32mPassed!\033[0m");
        $finish(2);
    end

    `ifdef GL
    initial begin
        $sdf_annotate("inputs/design.sdf", df_inst);
    end
    `endif


endmodule


