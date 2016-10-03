`include "multiplexer_4_input.v"
`timescale 1 ns / 1 ps

module Multiplexer8Input
(
  output out,
  input[2:0] addresses,
  input[7:0] inputs
);
  wire outTop, outBottom;
  Multiplexer4Input top(outTop, addresses[1:0], inputs[3:0]);
  Multiplexer4Input bottom(outBottom, addresses[1:0], inputs[7:4]);
  Multiplexer2Input merge(out, addresses[2], {outTop, outBottom});
endmodule
