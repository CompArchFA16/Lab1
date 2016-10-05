`include "constants.v"
`timescale 1 ns / 1 ps

module ALU_and
(
  output result,
  input operandA,
  input operandB
);
	`AND (result, operandA, operandB);
endmodule
