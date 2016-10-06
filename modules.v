`define NOT not #10
`define NAND nand #20
`define AND and #30
`define NOR nor #20
`define OR or #30
`define XNOR xnor #50
`define XOR xor #50


// -----------------------------------------------
// Full Adder 
// -----------------------------------------------
module FullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    wire AandB, AandC, BandC;

    xor #30 xorGate(sum, a, b, carryin);

    `AND and0(AandB, a, b);
    `AND and1(AandC, a, carryin);
    `AND and2(BandC, b, carryin);
    or #40 orGate(carryout, AandB, AandC, BandC);

endmodule


// -----------------------------------------------
// INV
// -----------------------------------------------
module mINV
(
  output[31:0] out,
  input[31:0] in
);

  generate
    genvar i;
    for (i=0; i<32; i = i+1) begin: invgenblk
        not findinv(out[i], in[i]);
      end
  endgenerate

endmodule


// -----------------------------------------------
// NAND
// -----------------------------------------------

module mNAND
(
  output[31:0]    result,
  //output reg      carryout = 0,
  //output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  generate
    genvar i;
    for (i=0; i<32; i = i+1) begin: nandgenblk
      `NAND findnand(result[i], operandA[i], operandB[i]);
    end
  endgenerate

endmodule

// -----------------------------------------------
// NOR
// -----------------------------------------------

module mNOR
(
  output[31:0]    result,
  //output reg      carryout = 0,
  //output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  generate
    genvar i;
    for (i=0; i<32; i = i+1) begin: norgenblk
      `NOR findnor(result[i], operandA[i], operandB[i]);
    end
  endgenerate

endmodule


// -----------------------------------------------
// XOR
// -----------------------------------------------
module mXOR
(
  output[31:0]    result,
  //output reg      carryout = 0,
  //output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  generate
    genvar i;
    for (i=0; i<32; i = i+1) begin: xorgenblk
      `XOR findxor(result[i], operandA[i], operandB[i]);
    end
  endgenerate

endmodule

// -----------------------------------------------
// XNOR
// -----------------------------------------------
module mXNOR
(
  output[31:0]    result,
  //output reg      carryout = 0,
  //output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  generate
    genvar i;
    for (i=0; i<32; i = i+1) begin: xnorgenblk
      `XNOR findxnor(result[i], operandA[i], operandB[i]);
    end
  endgenerate

endmodule


// -----------------------------------------------
// ADDSUB
// -----------------------------------------------
module mADDSUB
(
	output[31:0] result,
	output       carryout,
	output       overflow,
	input[31:0]  operandA,
	input[31:0]  operandB,
	input        sub // 1 for sub, 0 for add
);
	wire[32:0] c;
  wire[31:0] xorB;
	assign c[0] = sub;

  generate
    genvar i;
    for (i=0; i<32; i = i+1) begin: addsubgenblk
      `XOR xoraddsub(xorB[i], operand[i], addsub);
      FullAdder fa(result[i], c[i+1], operandA[i], xorB[i], c[i]);
    end
  endgenerate

  assign carryout = c[32];
  `XOR xorGate(overflow, c[32], c[31]);

endmodule


// -----------------------------------------------
// SLT
// -----------------------------------------------

module mSLT
(
  output[31:0]    result,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  wire[31:0]      subresult;
  wire            dump_co, dump_of;

  mADDSUB msub(subresult, dump_co, dump_of, operandA, operandB, 1);

  assign result[0] = subresult[31]; // MSB
endmodule
