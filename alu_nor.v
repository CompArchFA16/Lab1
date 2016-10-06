`include "constants.v"
`timescale 1 ns / 1 ps

module ALU_nor
(
  output result,
  input operandA,
  input operandB
);
	`NOR (result, operandA, operandB);
endmodule
