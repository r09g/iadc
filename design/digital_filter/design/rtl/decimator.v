module decimator (
    input wire clk,
    input wire rst_n,
    input wire unsigned [11:0] data_in,
    output reg unsigned [11:0] data_out,
    output reg new_data
);
    
    reg unsigned [8:0] counter;

    always @(posedge clk) begin
        if(!rst_n) begin
            data_out <= data_out;
            counter <= 0;
            new_data <= 0;
        end
        else begin
            counter <= counter + 1;
            new_data <= 0;
            if(counter == 511) begin
                data_out <= data_in;
                new_data <= 1;
            end   
        end
    end

endmodule


