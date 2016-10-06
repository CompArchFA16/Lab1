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

  // HACK: We shouldn't use this bulky multiplexer here.
  wire ifSub;
  Multiplexer8Input ifSubbing(ifSub, command, 8'd2);

  ALUBitslice aluSliceNDice2(
    result[0],
    internalCarryouts[1],
    internalZeros[1],
    internalOverflows[1],
    operandA[0],
    operandB[0],
    ifSub,
    command);

  genvar i;
  generate
    for (i=1; i < 32; i=i+1)
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

  // HACK: Figure out how to rename wires properly.
  wire carryout_n, zero_n, overflow_n;

  not (carryout_n, internalCarryouts[31]);
  not (carryout, carryout_n);

  not (zero_n, internalZeros[31]);
  not (zero, zero_n);

  not (overflow_n, internalOverflows[31]);
  not (overflow, overflow_n);
endmodule
