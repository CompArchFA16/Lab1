//This module is an implementation of the OR operation. 
//It takes two inputs, operandA and operandB, and "ORs" them with
//an or gate to output the result.


`ifdef _aluAsLibrary
	`include "alu/alu_commands.v"
`else
	`include "alu_commands.v"
`endif
// `timescale 1 ns / 1 ps

module ALU_or
(
  output result,
  input operandA,
  input operandB
);
	`OR (result, operandA, operandB);
endmodule
