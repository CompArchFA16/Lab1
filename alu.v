`include "alu_bitslice.v"

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

  genvar i;
  generate
    for (i=0; i < 32; i=i+1)
    begin:ALUBitslice32
      // TODO: Chain the ALUs to each other for carryout, zero??, and overflow??
      // ALUBitslice (
      //   result[i],
      //   <TODO: carryout>,
      //   <TODO: zero>,
      //   <TODO: overflow>,
      //   operandA[i],
      //   operandB[i],
      //   command);
    end
  endgenerate
endmodule
