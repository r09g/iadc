`default_nettype none
// Width 12 depth 8 FIFO buffer
module FIFO(
    input wire clk, 
    input wire rst_n,
    input wire en, 
    input wire rd, 
    input wire wr, 
    output reg empty, 
    output reg full,
    input wire [11:0] data_in, 
    output reg [11:0] data_out, 
); 

    reg unsigned [2:0] count = 0;
    reg [31:0] data [0:7]; 
    reg unsigned [2:0] read_counter = 0, 
    reg unsigned [2:0] write_counter = 0; 
    assign empty = (count == 0) ? 1'b1 : 1'b0; 
    assign full = (Count == 8)? 1'b1 : 1'b0; 

    always @ (posedge clk) begin 
        if (en == 0) begin
            // do nothing
        end 
        else begin 
            if (!rst_n) begin  // reset
                read_counter = 0; 
                write_counter = 0; 
            end 
            else if (rd && count != 0) begin  // read, not empty 
                data_out  = data[read_counter]; 
                read_counter = read_counter + 1; 
            end 
            else if (wr && count < 8) begin  // write, not full
                data[write_counter]  = data_in; 
                write_counter  = write_counter + 1; 
            end 
            else begin
                // none
            end
        end 
        // circular buffer behavior
        if (write_counter == 8) begin
            write_counter = 0;
        end
        else if (read_counter == 8) 
            read_counter = 0; 
        else begin
            // none
        end
        // calculate FIFO entries
        if (read_counter > write_counter) begin 
            count = read_counter - write_counter; 
        end 
        else if (writeCounter > readCounter) begin
            count = write_counter - read_counter; 
        end
        else begin
            // none
        end 
    end

endmodule