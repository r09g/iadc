`default_nettype none
module decimator (
    input wire clk,
    input wire rst_n,
    input wire unsigned [11:0] data_in,
    output reg unsigned [11:0] data_out
);
    
    reg unsigned [8:0] counter;
    
    always @(posedge clk) begin
        if(!rst_n) begin
            data_out <= 0;
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
            if(counter == 511) begin
                data_out <= data_in;
            end   
        end
    end

endmodule
