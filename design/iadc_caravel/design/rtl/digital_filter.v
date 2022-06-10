module decimator (
    input wire clk,
    input wire rst_n,
    input wire unsigned [26:0] data_in,
    output reg unsigned [26:0] data_out,
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


// digital filter top
module digital_filter (
    input wire clk,
    input wire rst_n,
    input wire sclk,
    input wire cs_n,
    input wire unsigned data_in,
    output reg [11:0] data_out,
    output reg new_data,
    output reg serial_data_out
);
    
    wire unsigned [8:0] int_1_out;
    wire unsigned [17:0] int_2_out;
    wire unsigned [26:0] int_3_out;
    wire [26:0] decim_out;
    reg rst_n_d1, rst_n_d2, rst_n_d3;

    assign data_out = decim_out[26:15];

    always @(posedge clk) begin
        rst_n_d1 <= rst_n;
        rst_n_d2 <= rst_n_d1;
        rst_n_d3 <= rst_n_d2;
    end

    integrator #(
        .WIDTH_IN(1),
        .WIDTH_OUT(9)
    ) int_1 (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .data_out(int_1_out)
    );

    integrator #(
        .WIDTH_IN(9),
        .WIDTH_OUT(18)
    ) int_2 (
        .clk(clk),
        .rst_n(rst_n_d1),
        .data_in(int_1_out),
        .data_out(int_2_out)
    );

    integrator #(
        .WIDTH_IN(18),
        .WIDTH_OUT(27)
    ) int_3 (
        .clk(clk),
        .rst_n(rst_n_d2),
        .data_in(int_2_out),
        .data_out(int_3_out)
    );

    decimator decim (
        .clk(clk),
        .rst_n(rst_n_d3),
        .data_in(int_3_out),
        .data_out(decim_out),
        .new_data(new_data)
    );
    
    spi_interf serial_tx (
        .clk(clk),
        .sclk(sclk),
        .cs_n(cs_n),
        .load(new_data),
        .data_in(decim_out),
        .serial_out(serial_data_out)
    );

endmodule


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


