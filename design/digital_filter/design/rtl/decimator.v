module decimator (
    input wire clk,
    input wire rst_n,
    input wire unsigned [11:0] data_in,
    output reg unsigned [11:0] data_out,
    output wire new_data
);
    
    reg unsigned [8:0] counter;
    reg data_rdy;
    
    always @(posedge clk) begin
        if(!rst_n) begin
            data_out <= data_out;
            counter <= 0;
            data_rdy <= 0;
        end
        else begin
            counter <= counter + 1;
            data_rdy <= 0;
            if(counter == 511) begin
                data_out <= data_in;
                data_rdy <= 1;
            end   
        end
    end

    assign new_data = data_rdy && clk;

endmodule
