`include "constants.v"
`timescale 1 ns / 1 ps

module ALU_nand
(
  output result,
  input operandA,
  input operandB
);
	`NAND (result, operandA, operandB);
endmodule
