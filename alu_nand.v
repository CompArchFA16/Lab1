//This module is an implementation of the NAND operation. 
//It takes two inputs, operandA and operandB, and "NANDs" them with
//a nand gate to output the result.


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
