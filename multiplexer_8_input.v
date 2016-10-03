`include "multiplexer_2_input.v"
`include "multiplexer_4_input.v"

module Multiplexer4Input
(
  output out,
  input[2:0] addresses,
  input[7:0] inputs
);
  wire outTop, outBottom;
  Multiplexer4Input top(outTop, addresses[1:0], inputs[3:0]);
  Multiplexer4Input bottom(outBottom, addresses[1:0], inputs[7:3]);
  Multiplexer2Input merge(addresses[2], outTop, outBottom, out);
endmodule
