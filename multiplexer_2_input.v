// From HW2.
`include "constants.v"
`timescale 1 ns / 1 ps

module Multiplexer2Input
(
  input address,
  input[1:0] inputs,
  output out
);

  wire address_n;
  `NOT (address_n, address);

  wire in0AndNotAddress0, in1AndAddress0;
  `AND (in0AndNotAddress0, inputs[0], address_n);
  `AND (in1AndAddress0, inputs[1], address);

  `OR (out, in0AndNotAddress0, in1AndAddress0);
endmodule
