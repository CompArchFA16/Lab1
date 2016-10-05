`include "constants.v"
`timescale 1 ns / 1 ps

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

    wire  B_compl;
    wire B;
    wire abSum;
    wire abXor;
    wire abCinXor;

    `NOT notgate(B_compl, operandB);
    Multiplexer2Input mux(B, ifsub, {operandB, B_compl});
    `AND andgate(abSum, operandA, B);
    `XOR xorgate(abXor, operandA, B);
    `AND andgate2(abCinXor, abXor, carryin);
    `OR orgate(carryout, abSum, abCinXor);
    `XOR xorgate2(result, abXor, carryin);
endmodule
