`include "multiplexer_8_input.v"
`timescale 1 ns / 1 ps

module ALUBitslice
(
  output     result,
  output     carryout,
  output     zero,
  output     overflow,

  input      operandA,
  input      operandB,
  input[2:0] command
);

  // Modules.
  // All calculations are done regardless?
  // TODO: Do add.
  // TODO: Do subtract.
  // TODO: Do XOR.
  // TODO: Do SLT.
  // TODO: Do AND.
  // TODO: Do NAND.
  // TODO: Do NOR.
  // TODO: Do OR.

  // Choice.
  Multiplexer8Input(result, command, {
    aluOutAdd,
    aluOutSub,
    aluOutXor,
    aluOutSlt,
    aluOutAnd,
    aluOutNand,
    aluOutNor,
    aluOutOr});
endmodule
