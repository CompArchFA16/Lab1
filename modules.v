`define NOT not #10
`define NAND nand #20
`define AND and #30
`define NOR nor #20
`define OR or #30
`define XOR xor #50
`define XNOR xor #50


// -----------------------------------------------
// Full Adder 
// delay: 90
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

    `XOR xorGate(sum, a, b, carryin);
    `AND and0(AandB, a, b);
    `AND and1(AandC, a, carryin);
    `AND and2(BandC, b, carryin);
    or #60 orGate(carryout, AandB, AandC, BandC);

endmodule


// -----------------------------------------------
// NAND
// delay: 20
// -----------------------------------------------

module mNAND
#(parameter n=32)
(
  output[n-1:0]    result,
  //output reg      carryout = 0,
  //output reg      overflow = 0,
  input[n-1:0]     operandA,
  input[n-1:0]     operandB
);

  generate
    genvar i;
    for (i=0; i<n; i = i+1) begin: nandgenblk
      `NAND findnand(result[i], operandA[i], operandB[i]);
    end
  endgenerate

endmodule

// -----------------------------------------------
// NOR
// delay: 20
// -----------------------------------------------

module mNOR
#(parameter n=32)
(
  output[n-1:0]    result,
  //output reg      carryout = 0,
  //output reg      overflow = 0,
  input[n-1:0]     operandA,
  input[n-1:0]     operandB
);

  generate
    genvar i;
    for (i=0; i<n; i = i+1) begin: norgenblk
      `NOR findnor(result[i], operandA[i], operandB[i]);
    end
  endgenerate

endmodule


// -----------------------------------------------
// XOR
// delay: 50
// -----------------------------------------------
module mXOR
#(parameter n=32)
(
  output[n-1:0]    result,
  //output reg      carryout = 0,
  //output reg      overflow = 0,
  input[n-1:0]     operandA,
  input[n-1:0]     operandB
);

  generate
    genvar i;
    for (i=0; i<n; i = i+1) begin: xorgenblk
      `XOR findxor(result[i], operandA[i], operandB[i]);
    end
  endgenerate

endmodule


// -----------------------------------------------
// ADDSUB
// delay: 90n + 100
// -----------------------------------------------
module mADDSUB
#(parameter n=32)
(
	output[n-1:0] result,
	output       carryout,
	output       overflow,
	input[n-1:0]  operandA,
	input[n-1:0]  operandB,
	input        sub // 1 for sub, 0 for add
);
	wire[n:0] c; //carryout, shifted by +1 bit
	wire[n-1:0] xorB;
	assign c[0] = sub; //carry in is 1 if SUB or SLT, and 0 if ADD

  generate
    genvar i;
    for (i=0; i<n; i = i+1) begin: addsubgenblk
      `XOR xoraddsub(xorB[i], operandB[i], sub); //for inverting the bits if SUB/SLT
      FullAdder fa(result[i], c[i+1], operandA[i], xorB[i], c[i]);
    end
  endgenerate

  assign carryout = c[n];
  `XOR xorGate(overflow, c[n], c[n-1]);

endmodule


// -----------------------------------------------
// SLT
// delay: 90n + 100
// -----------------------------------------------

module mSLT
#(parameter n=32)
(
  output[n-1:0]    result,
  input[n-1:0]     operandA,
  input[n-1:0]     operandB
);

  wire[n-1:0]      subresult;
  wire            dump_co, dump_of;

  assign result[n-1:1] = {n-1{1'b0}}; // setting all but the least significant bit to 0 for concatenation

  mADDSUB #(.n(n)) msub(subresult, dump_co, dump_of, operandA, operandB, 1'b1);

  assign result[0] = subresult[n-1]; // most significant bit of the substitution (1 if A<B and 0 if A>B) is set as the least significant bit of the result
endmodule
