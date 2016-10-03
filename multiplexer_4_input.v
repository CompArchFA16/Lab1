`include "multiplexer_2_input.v"
`timescale 1 ns / 1 ps

module Multiplexer4Input
(
  output out,
  input[1:0] addresses,
  input[3:0] inputs
);

  wire outTop, outBottom;

  Multiplexer2Input top(addresses[0], inputs[1:0], outTop);
  Multiplexer2Input bottom(addresses[0], inputs[3:2], outBottom);
  Multiplexer2Input merge(addresses[1], {outTop, outBottom}, out);
endmodule
