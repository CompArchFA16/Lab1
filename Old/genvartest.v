`define AND and #20
module and32
(
output reg carryout=0,
output reg overflow=0,
output[31:0] andResult,
input [31:0] operandA,
input [31:0] operandB
);
genvar i;
  generate
  //ands all 32 bits
    for (i = 0; i < 32; i = i+1)
    begin : gen1
      `AND(andResult[i],operandA[i],operandB[i]);
    end
  endgenerate
endmodule
