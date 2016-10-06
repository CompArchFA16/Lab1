`include "constants.v"
`timescale 1 ns / 1 ps

module ALU_xor
(
  output result,
  input operandA,
  input operandB
);
	`XOR (result, operandA, operandB);
endmodule
