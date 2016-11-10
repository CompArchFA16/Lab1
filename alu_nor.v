//This module is an implementation of the NOR operation. 
//It takes two inputs, operandA and operandB, and "NORs" them with
//a nor gate to output the result.


`ifdef _aluAsLibrary
	`include "alu/constants.v"
`else
	`include "constants.v"
`endif
// `timescale 1 ns / 1 ps

module ALU_nor
(
  output result,
  input operandA,
  input operandB
);
	`NOR (result, operandA, operandB);
endmodule
