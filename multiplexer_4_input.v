`ifdef _aluAsLibrary
	`include "alu/multiplexer_2_input.v"
`else 
	`include "multiplexer_2_input.v"
`endif
// `timescale 1 ns / 1 ps

module Multiplexer4Input
(
  output out,
  input[1:0] addresses,
  input[3:0] inputs
);

  wire outTop, outBottom;

  Multiplexer2Input top(outTop, addresses[0], inputs[3:2]);
  Multiplexer2Input bottom(outBottom, addresses[0], inputs[1:0]);
  Multiplexer2Input merge(out, addresses[1], {outTop, outBottom});
endmodule
