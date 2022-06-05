`timescale 1ns / 100fs
`define T_CLK 195.3125
module digital_filter_tb_random;

    reg clk;
    reg rst_n;
    reg sclk;
    reg cs_n;
    reg unsigned data_in;
    wire unsigned [11:0] data_out;
    wire new_data;
    wire s_data_out;
    supply0 VSS;
    supply1 VDD;


    digital_filter df_inst (
        .clk(clk),
        .rst_n(rst_n),
        .sclk(sclk),
        .cs_n(cs_n),
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

    always #(`T_CLK/2) clk = ~clk;

    initial begin
        clk <= 0;
        rst_n <= 0;
        sclk <= 0;
        cs_n <= 0;
        data_in <= 0;

        #`T_CLK
        rst_n <= 1;
        cs_n <= 1;
    end

    integer s1 = 0;
    integer s2 = 0;
    integer count = 0;
    reg unsigned [31:0] adc_out = 0;
    always begin
        #`T_CLK
        rst_n <= 1;
        data_in <= $random;
        if($realtime > `T_CLK*2.5) assert(new_data == 0) else $fatal("\033[0;31mERROR\033[0m");
        #`T_CLK
        while(count < 511) begin
            rst_n <= 1;
            data_in <= $random;
            s1 <= s1 + data_in;
            s2 <= s2 + s1;
            count = count + 1;
            if($realtime > `T_CLK*2.5) assert(new_data == 0) else $fatal("\033[0;31mERROR\033[0m");
            #`T_CLK;
        end
        s1 <= s1 + data_in;
        s2 <= s2 + s1;
        #`T_CLK
        s2 <= s2 + s1;
        #`T_CLK
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
        if($realtime > 10*`T_CLK) begin
            #(4.5*`T_CLK);
            cs_n <= 0;
            #(5*`T_CLK);
            dut_serial_out = 0;
            for(int pos = 0; pos < 12; pos++) begin
                dut_serial_out[11-pos] = s_data_out;
                sclk <= 1;
                #(5*`T_CLK);
                sclk <= 0;
                #(5*`T_CLK);
            end
            sclk <= 0;
            $display("Serial Output Expected: %b, Actual: %b", adc_out[11:0], dut_serial_out); 
            assert(adc_out[11:0] == dut_serial_out) else $fatal("\033[0;31mERROR\033[0m");
            #(5*`T_CLK);
            cs_n <= 1;
        end
    end

    initial begin
        $dumpfile("run.vcd");
        $dumpvars(0, digital_filter_tb_random);
        #(500000*`T_CLK)
        $display("\033[0;32mPassed!\033[0m");
        $finish(2);
    end

    `ifdef GL
    initial begin
        $sdf_annotate("inputs/design.sdf", df_inst);
    end
    `endif


endmodule


