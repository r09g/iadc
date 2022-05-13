module shift_register (
    input wire clk,
    input wire load_data,
    input wire shift,
    input wire [11:0] data_in,
    output wire serial_data_out
);

    reg [11:0] data;
    
    always @(posedge clk) begin
        if(load_data == 1) begin
            data <= data_in;
        end
        else begin
            if(shift == 1) begin
                data <= {data[10:0], data[11]};
            end
        end
    end

    assign serial_data_out = data[11];

endmodule


