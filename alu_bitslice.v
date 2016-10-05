`include "alu_addsub.v"
`include "alu_xor.v"
`include "alu_and.v"
`include "alu_nand.v"
`include "alu_nor.v"
`include "alu_or.v"
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
  input      carryin,
  input[2:0] command
);

  wire aluOutAdd, aluOutSub, aluOutSlt;
  wire aluOutXor, aluOutAnd, aluOutNand;
  wire aluOutNor, aluOutOr;

  // Modules.
  ALUAddSub aluAdd(aluOutAdd, carryout, zero, overflow, operandA, operandB, carryin, 1'b0);
  ALUAddSub aluSub(aluOutSub, carryout, zero, overflow, operandA, operandB, carryin, 1'b1);
  ALU_xor aluXor(aluOutXor, operandA, operandB);
  // TODO: Do SLT.
  ALU_and aluAnd(aluOutAnd, operandA, operandB);
  ALU_nand aluNand(aluOutNand, operandA, operandB);
  ALU_nor aluNor(aluOutNor, operandA, operandB);
  ALU_or aluOr(aluOutOr, operandA, operandB);

  // Choice.
  Multiplexer8Input mux8Input(result, command, {
    aluOutAdd,
    aluOutSub,
    aluOutXor,
    aluOutSlt,
    aluOutAnd,
    aluOutNand,
    aluOutNor,
    aluOutOr});
endmodule
