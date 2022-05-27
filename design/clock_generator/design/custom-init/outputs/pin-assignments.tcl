# Placing pins clockwise starting from top left

# Pins on the right side, going top to bottom

set pins_right {\
  {B} \
  {B_b} \
  {Bd} \
  {Bd_b} \
  {Ad_b} \
  {Ad} \
  {A_b} \
  {A} \
  {p2} \
  {p2_b} \
  {p2d} \
  {p2d_b} \
  {p1d_b} \
  {p1d} \
  {p1_b} \
  {p1} \
}


# Pins on the left side, going bottom to top

set pins_left {\
  {clk} \
}

editPin -layer met3 -pin $pins_right  -side RIGHT  -spreadType SIDE
editPin -layer met3 -pin $pins_left   -side LEFT   -spreadType CENTER
