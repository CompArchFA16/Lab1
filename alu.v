`include "alu_bitslice.v"
`timescale 1 ns / 1 ps

module ALU
(
  output[31:0]    result,
  output          carryout,
  output          zero,
  output          overflow,

  input[31:0]     operandA,
  input[31:0]     operandB,
  input[2:0]      command
);

  wire[32:0] internalCarryouts;
  wire[32:0] internalZeros;
  wire[32:0] internalOverflows;

  genvar i;
  generate
    for (i=0; i < 32; i=i+1)
    begin:ALUBitslice32
      // TODO: Chain the ALUs to each other for carryout, zero??, and overflow??
      ALUBitslice aluSliceNDice(
        result[i],
        internalCarryouts[i+1],
        internalZeros[i+1],
        internalOverflows[i+1],
        operandA[i],
        operandB[i],
        internalCarryouts[i],
        command);
    end
  endgenerate
endmodule
