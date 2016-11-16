`ifdef _aluAsLibrary
  `include "alu/alu_bitslice.v"
  `include "alu/alu_lut.v"
  `include "alu/alu_32_and_sad.v"

`else
  `include "alu_bitslice.v"
  `include "alu_lut.v"
  `include "alu_32_and_sad.v"
`endif

// `timescale 1 ns / 1 ps
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

  wire[31:0] internalResult;
  wire[32:0] internalCarryouts;
  wire[32:0] internalZeros;
  wire[32:0] internalOverflows;

  // HACK: We shouldn't use this bulky multiplexer here.
  wire ifSub;
  Multiplexer8Input ifSubbing(ifSub, command, 8'd2);

  wire isSlt;
  wire[2:0] muxCommand;
  ALUcontrolLUT aluLut(muxCommand, isSlt, command);

  ALUBitslice aluSliceNDice2(
    internalResult[0],
    internalCarryouts[1],
    internalZeros[1],
    internalOverflows[1],
    operandA[0],
    operandB[0],
    ifSub,
    muxCommand);

  genvar i;
  generate
    for (i=1; i < 32; i=i+1)
    begin:ALUBitslice32
      // TODO: Chain the ALUs to each other for carryout, zero??, and overflow??
      ALUBitslice aluSliceNDice(
        internalResult[i],
        internalCarryouts[i+1],
        internalZeros[i+1],
        internalOverflows[i+1],
        operandA[i],
        operandB[i],
        internalCarryouts[i],
        muxCommand);
    end
  endgenerate

  // If isSlt, then return 32'h1 if SLT or 0 if not
  Multiplexer2Input isSltMux(result[0], isSlt, {internalResult[31], internalResult[0]});

  genvar j;
  generate
    for (j=1; j < 32; j=j+1)
    begin:CheatingSLT32
      Multiplexer2Input isSltMuxLoop(result[j], isSlt, {1'b0, internalResult[j]});
    end
  endgenerate

  // HACK: Figure out how to rename wires properly.
  wire carryout_n, zero_n, overflow_n;

  not (carryout_n, internalCarryouts[32]);
  not (carryout, carryout_n);

  ALU32AndSad alu32AndSad(zero, carryout, result);

  not (overflow_n, internalOverflows[32]);
  not (overflow, overflow_n);
endmodule
