module integrator_1 (
    input wire clk,
    input wire rst_n,
    input wire unsigned data_in,
    output reg unsigned [8:0] data_out
);

    always @(posedge clk) begin
        if(!rst_n) begin
            data_out <= 0;
        end
        else begin
            data_out <= data_out + data_in;    
        end
    end

endmodule
