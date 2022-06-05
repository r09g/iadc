module integrator #(
    parameter WIDTH_IN = 9,
    parameter WIDTH_OUT = 18
)
(
    input wire clk,
    input wire rst_n,
    input wire unsigned [WIDTH_IN - 1 : 0] data_in,
    output reg unsigned [WIDTH_OUT - 1 : 0] data_out
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


