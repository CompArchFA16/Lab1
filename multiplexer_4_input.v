`include "multiplexer_2_input.v"

module Multiplexer4Input
(
  output out,
  input[1:0] addresses,
  input[3:0] inputs
);

  wire outTop, outBottom;

  Multiplexer2Input top(addresses[0], inputs[0], inputs[1], outTop);
  Multiplexer2Input bottom(addresses[0], inputs[2], inputs[3], outBottom);
  Multiplexer2Input merge(addresses[1], outTop, outBottom, out);
endmodule
