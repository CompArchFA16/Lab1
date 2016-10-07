//This module is an implementation of the AND operation. 
//It takes two inputs, operandA and operandB, and "ANDs" them with
//an and gate to output the result.

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
