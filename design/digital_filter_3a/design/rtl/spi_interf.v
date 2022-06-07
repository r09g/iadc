// pseudo-async shift register
// timing:
//   - T_sclk/2 after negative edge of cs_n, the first bit is read (positive edge of sclk)
//   - At negative edge of sclk, shift register shifts
//   - sclk run at least at 2 * 120 kHz
module spi_interf (
    input wire clk,
    input wire sclk,
    input wire cs_n,
    input wire load,
    input wire [26:0] data_in,
    output wire serial_out
);

    reg [26:0] data;
    reg [1:0] sclk_r;
    reg [1:0] cs_n_r;
    
    wire sclk_ne = (sclk_r == 2'b10);
    
    always @(posedge clk) begin
        sclk_r <= {sclk_r[0], sclk};
    end

    always @(posedge clk) begin
        if(!cs_n) begin
            if(sclk_ne) begin
                data <= {data[25:0], data[26]};
            end
        end
        else begin
            if(load) begin
                data <= data_in;
            end
        end
    end

    assign serial_out = data[26];

endmodule


