//This module is an implementation of the XOR operation. 
//It takes two inputs, operandA and operandB, and "XORs" them with
//an xor gate to output the result.

`ifdef _aluAsLibrary
	`include "alu/constants.v"
`else
	`include "constants.v"
`endif
// `timescale 1 ns / 1 ps

module ALU_xor
(
  output result,
  input operandA,
  input operandB
);
	`XOR (result, operandA, operandB);
endmodule
