// From HW2.
`include "constants.v"
`timescale 1 ns / 1 ps

module Multiplexer2Input
(
  output out,
  input address,
  input[1:0] inputs
);

  wire address_n;
  `NOT (address_n, address);

  wire in0AndNotAddress, in1AndAddress;
  `AND (in0AndNotAddress, inputs[0], address_n);
  `AND (in1AndAddress, inputs[1], address);

  `OR (out, in0AndNotAddress, in1AndAddress);
endmodule
