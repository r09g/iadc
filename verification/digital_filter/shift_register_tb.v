module shift_register_tb;

    reg load_data;
    reg shift;
    reg [11:0] data_in;
    wire serial_data_out;

    shift_register dut (
        .load_data(load_data),
        .shift(shift),
        .data_in(data_in),
        .serial_data_out(serial_data_out)
    );
    
    initial begin
        load_data <= 0;
        shift <= 0;
        data_in <= 0;
        
        #20 
        
        load_data <= 1;
        data_in <= 12'b000000000001;
        
        #20
        
        $display("Expected: %d, Actual: %d", 0, serial_data_out); assert(serial_data_out == 0);
        load_data <= 0;
        shift <= 1;
        
        #20
        
        $display("Expected: %d, Actual: %d", 0, serial_data_out); assert(serial_data_out == 0);
        shift <= 0;
        
        #20
        
        shift <= 1;
        
        #20
        
        $display("Expected: %d, Actual: %d", 0, serial_data_out); assert(serial_data_out == 0);
        shift <= 0;
        
        #20
        
        shift <= 1;
        
        #20
        
        $display("Expected: %d, Actual: %d", 0, serial_data_out); assert(serial_data_out == 0);
        shift <= 0;

        #20
        
        shift <= 1;
        
        #20
        
        $display("Expected: %d, Actual: %d", 0, serial_data_out); assert(serial_data_out == 0);
        shift <= 0;

        #20
        
        shift <= 1;
        
        #20
        
        $display("Expected: %d, Actual: %d", 0, serial_data_out); assert(serial_data_out == 0);
        shift <= 0;
        
        #20
        
        shift <= 1;
        
        #20
        
        $display("Expected: %d, Actual: %d", 0, serial_data_out); assert(serial_data_out == 0);
        shift <= 0;

        #20
        
        shift <= 1;
        
        #20
        
        $display("Expected: %d, Actual: %d", 0, serial_data_out); assert(serial_data_out == 0);
        shift <= 0;

        #20
        
        shift <= 1;
        
        #20
        
        $display("Expected: %d, Actual: %d", 0, serial_data_out); assert(serial_data_out == 0);
        shift <= 0;

        #20
        
        shift <= 1;
        
        #20
        
        $display("Expected: %d, Actual: %d", 0, serial_data_out); assert(serial_data_out == 0);
        shift <= 0;
        
        #20
        
        shift <= 1;
        
        #20
        
        $display("Expected: %d, Actual: %d", 0, serial_data_out); assert(serial_data_out == 0);
        shift <= 0;
        
        #20
        
        shift <= 1;
        
        #20
        
        $display("Expected: %d, Actual: %d", 1, serial_data_out); assert(serial_data_out == 0);
        shift <= 0;
                
    end

    initial begin
        $dumpfile("run.vcd");
        $dumpvars(0, shift_register_tb);
        #1000
        $finish(2);
    end

endmodule
