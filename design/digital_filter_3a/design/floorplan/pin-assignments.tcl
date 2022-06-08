# Placing pins clockwise starting from top left

# Pins on the top side, going left to right

set pins_top {\
  {new_data} \
  {serial_data_out} \
}

# Pins on the right side, going top to bottom

set pins_right {\
  {data_out[0]} \
  {data_out[1]} \
  {data_out[2]} \
  {data_out[3]} \
  {data_out[4]} \
  {data_out[5]} \
  {data_out[6]} \
  {data_out[7]} \
  {data_out[8]} \
  {data_out[9]} \
  {data_out[10]} \
  {data_out[11]} \
}

# Pins on the bottom side, going right to left

set pins_bottom {\
  {clk} \
  {rst_n} \
  {sclk} \
  {cs_n} \
}

# Pins on the left side, going bottom to top

set pins_left {\
  {data_in} \
}

editPin -layer met2 -pin $pins_top    -side TOP    -spreadType SIDE
editPin -layer met3 -pin $pins_right  -side RIGHT  -spreadType SIDE
editPin -layer met2 -pin $pins_bottom -side BOTTOM -spreadType SIDE
editPin -layer met3 -pin $pins_left   -side LEFT   -spreadType CENTER
