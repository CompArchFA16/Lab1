`include "constants.v"
`timescale 1 ns / 1 ps

module ALU_or
(
  output result,
  input operandA,
  input operandB
);
	`OR (result, operandA, operandB);
endmodule
