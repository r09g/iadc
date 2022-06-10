`define CLK_PERIOD 10
`define ASSIGNMENT_DELAY 1
`define FINISH_TIME 2000000
`define NUM_TEST_VECTORS 100

module GcdUnitWrapperTb;
  
  localparam ADDR_WIDTH = $clog2(`NUM_TEST_VECTORS);
 
  reg clk;
  reg reset;
  reg [1:0] state_r;
  reg [ADDR_WIDTH - 1 : 0] a_b_addr_r;
  reg [ADDR_WIDTH - 1 : 0] c_addr_r;
  wire [31 : 0] c_w;
  wire enq;
  wire deq;
  wire ack;

  supply0 vssd1;
  supply1 vccd1;

  reg [16 + 16 + 16 - 1 : 0] test_vectors [`NUM_TEST_VECTORS - 1 : 0];

  always #(`CLK_PERIOD/2) clk =~clk;
 
  user_proj_example #( .BITS(32) ) GcdUnitWrapper_inst (
    `ifdef USE_POWER_PINS
    .vccd1(vccd1),	// User area 1 1.8V supply
    .vssd1(vssd1),	// User area 1 digital ground
    `endif

    // Wishbone signals
    .wb_clk_i(clk),
    .wb_rst_i(reset),
    .wbs_stb_i(enq || deq),
    .wbs_cyc_i(enq || deq),
    .wbs_we_i(enq),
    .wbs_sel_i(4'b1111),
    .wbs_dat_i(test_vectors[a_b_addr_r][31:0]),
    .wbs_adr_i(32'b0),
    .wbs_ack_o(ack),
    .wbs_dat_o(c_w),

    // Logic analyzer signals
    .la_data_in(),
    .la_data_out(),
    .la_oenb(),

    // IOs
    .io_in(),
    .io_out(),
    .io_oeb(),

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    .analog_io(),

    .user_clock2(clk),
    .user_irq()
);


  initial begin
    $readmemh("inputs/test_vectors.txt", test_vectors);
    clk <= 0;
    reset <= 1;
    state_r <= 0;
    a_b_addr_r <= 0;
    c_addr_r <= 0;
    #(10*`CLK_PERIOD) reset <= 0;
  end
    
  assign enq = ((state_r == 2'b00) || (state_r == 2'b01)) && (!reset);
  assign deq = ((state_r == 2'b10) || (state_r == 2'b11)) && (!reset);

  always @ (posedge clk) begin
    if (!reset) begin
      if(state_r == 2'b00) begin
        //$display("In state 00 and sent a write");
        state_r <= 2'b01;
      end else if (state_r == 2'b01) begin
        if (ack) begin
          //$display("In state 01 and received ack");
          a_b_addr_r <= # `ASSIGNMENT_DELAY (a_b_addr_r + 1); // Don't change the inputs right after the clock edge because that will cause problems in gate level simulation
          state_r <= 2'b10;
        end else begin
          //$display("In state 01 and waiting for ack");
          state_r <= 2'b01;
        end
      end else if (state_r == 2'b10) begin
        //$display("In state 10 and sent a read");
        state_r <= 2'b11;
      end else begin
        if (ack) begin 
          //$display("In state 11 and received an ack, now checking result");
          $display("Checking vector %d: received c = %d, expected c = %d", c_addr_r, c_w[15:0], test_vectors[c_addr_r][48 - 1 : 32]);
          assert(c_w[15:0] == test_vectors[c_addr_r][48 - 1 : 32]);
          c_addr_r <= c_addr_r + 1;
          if (c_addr_r == `NUM_TEST_VECTORS - 1) $finish;
          state_r <= 2'b00;
        end else begin
          //$display("In state 11 and waiting for ack");
          state_r <= 2'b11;
        end
      end 
    end else begin
      state_r <= 0;
      a_b_addr_r <= 0;
      c_addr_r <= 0;
    end
  end

  initial begin
    $dumpfile("run.vcd");
    $dumpvars(0, GcdUnitWrapperTb);
    #(`FINISH_TIME);
    $finish(2);
  end

  `ifdef GL
  initial begin
    $sdf_annotate("inputs/design.sdf", GcdUnitWrapper_inst);
  end
  `endif

endmodule 
