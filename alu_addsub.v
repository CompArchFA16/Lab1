//This module implements both the addition and subtraction
//operations. It takes four inputs: operandA, operandB, carryin,
//and ifsub. For regular addition, it performs addition the same way
//our one-bit adder performed it and with the regular operandB
//input. Subtraction is performed when ifsub is 1. For subtraction,
//it uses the complement of operandB.
`ifdef _aluAsLibrary
  `include "alu/alu_commands.v"
  `include "alu/gates.v"
`else
  `include "alu_commands.v"
  `include "gates.v"
`endif
// `timescale 1 ns / 1 ps

module ALUAddSub
(
  output          result,
  output          carryout,
  output          zero,
  output          overflow,

  input           operandA,
  input           operandB,
  input           carryin,
  input           ifsub
);

    wire B_compl;
    wire B;
    wire abSum;
    wire abXor;
    wire abCinXor;

    `NOT notgate(B_compl, operandB);
    Multiplexer2Input mux(B, ifsub, {B_compl, operandB});
    `AND andgate(abSum, operandA, B);
    `XOR xorgate(abXor, operandA, B);
    `AND andgate2(abCinXor, abXor, carryin);
    `OR orgate(carryout, abSum, abCinXor);
    `XOR xorgate2(result, abXor, carryin);

    `NOR isZero(zero, result, carryout); //The result is zero if the "NOR" of the result and the carryout is 1.
    `XOR hasOverflown(overflow, carryout, carryin); //There is overflow if the "XOR" of carryout and carryin is 1.
endmodule
