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

    `XOR xorGate(sum, a, b, carryin);
    `AND and0(AandB, a, b);
    `AND and1(AandC, a, carryin);
    `AND and2(BandC, b, carryin);
    `OR orGate(carryout, AandB, AandC, BandC);

endmodule


// -----------------------------------------------
// INV
// -----------------------------------------------
module mINV
#(parameter n=32)
(
  output[n-1:0] out,
  input[n-1:0] in
);

  generate
    genvar i;
    for (i=0; i<n; i = i+1) begin: invgenblk
        not findinv(out[i], in[i]);
      end
  endgenerate

endmodule


// -----------------------------------------------
// NAND
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
      xor findxor(result[i], operandA[i], operandB[i]);
    end
  endgenerate

endmodule

// -----------------------------------------------
// XNOR
// -----------------------------------------------
module mXNOR
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
    for (i=0; i<n; i = i+1) begin: xnorgenblk
      `XNOR findxnor(result[i], operandA[i], operandB[i]);
    end
  endgenerate

endmodule


// -----------------------------------------------
// ADDSUB
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
	wire[n:0] c;
	wire[n-1:0] xorB;
	assign c[0] = sub;

  generate
    genvar i;
    for (i=0; i<n; i = i+1) begin: addsubgenblk
      `XOR xoraddsub(xorB[i], operandB[i], sub);
      FullAdder fa(result[i], c[i+1], operandA[i], xorB[i], c[i]);
    end
  endgenerate

  assign carryout = c[n];
  `XOR xorGate(overflow, c[n], c[n-1]);

endmodule


// -----------------------------------------------
// SLT
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

  mADDSUB #(.n(n)) msub(subresult, dump_co, dump_of, operandA, operandB, 1'b1);

  assign result[0] = subresult[n-1]; // MSB
endmodule
