`default_nettype none
`define MPRJ_IO_PADS 38

module user_proj_example #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wire wb_clk_i,
    input wire wb_rst_i,
    input wire wbs_stb_i,
    input wire wbs_cyc_i,
    input wire wbs_we_i,
    input wire [3:0] wbs_sel_i,
    input wire [31:0] wbs_dat_i,
    input wire [31:0] wbs_adr_i,
    output wire wbs_ack_o,
    output wire [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  wire [127:0] la_data_in,
    output wire [127:0] la_data_out,
    input  wire [127:0] la_oenb,

    // IOs
    input  wire [`MPRJ_IO_PADS-1:0] io_in,
    output wire [`MPRJ_IO_PADS-1:0] io_out,
    output wire [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout wire [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input wire user_clock2,

    // User maskable interrupt signals
    output wire [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/
  wire [15:0] resp_msg;
  assign io_out = 38'd0;
  assign io_oeb = 32'd0;
  assign user_irq = 3'd0;
  assign la_data_out = 128'd0;

  wire gcd_req_rdy;
  wire gcd_resp_rdy;
  wire enq;
  wire deq;
  reg ack;

  assign enq = wbs_cyc_i && wbs_stb_i && wbs_we_i && gcd_req_rdy;
  assign deq = wbs_cyc_i && wbs_stb_i && (!wbs_we_i) && gcd_resp_rdy;
  assign wbs_dat_o[31:16] = 16'h0000;
  assign wbs_dat_o[15:0] = resp_msg[15:0];
  
  GcdUnit GcdUnit_inst
  (
    .clk(wb_clk_i),
    .req_msg(wbs_dat_i),
    .req_rdy(gcd_req_rdy),
    .req_val(enq),
    .reset(wb_rst_i),
    .resp_msg(resp_msg),
    .resp_rdy(deq),
    .resp_val(gcd_resp_rdy)
  );

  always @ (posedge wb_clk_i) begin
    if (wb_rst_i) begin
      ack <= 1'b0;
    end else begin
      ack <= enq || deq;
    end
  end
  
  assign wbs_ack_o = ack;

endmodule

`default_nettype wire
