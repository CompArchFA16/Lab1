`define c_ADD  3'd0
`define c_SUB  3'd1
`define c_XOR  3'd2
`define c_SLT  3'd3
`define c_NAND 3'd4
`define c_AND  3'd5
`define c_NOR  3'd6
`define c_OR   3'd7

//gate delay are assumed to be proportional to the number of inputs
//10 units per input
`define NOT not #10
`define NAND nand #20
`define AND and #30
`define NOR nor #20
`define OR or #30
`define XNOR xnor #50
`define XOR xor #50


module mux // multiplexer 
(
    output out,
    input address0, address1,
	input [3:0] mem // 00 ~ 11
);
	wire na1,na0;
	wire o0, o1, o2, o3;

	`NOT(na0,address0);
	`NOT(na1,address1);
	`AND(o0, mem[0], na1, na0);
	`AND(o1, mem[1], na1, address0);
	`AND(o2, mem[2], address1, na0);
	`AND(o3, mem[3], address1, address0);
	`OR(out, o0,o1,o2,o3);
endmodule

module demux
(

);

endmodule

module ALUcontrolLUT
(
output reg[2:0]     muxindex,
output reg  invertB,
output reg  invertOutput,
input[2:0]  ALUcommand
);

  always @(ALUcommand) begin
    case (ALUcommand)
      `c_ADD:  begin muxindex = 3'b000; invertB=0; invertOutput = 0; end    
      `c_SUB:  begin muxindex = 3'b000; invertB=1; invertOutput = 0; end
      `c_XOR:  begin muxindex = 3'b001; invertB=0; invertOutput = 0; end    
      `c_SLT:  begin muxindex = 3'b010; invertB=1; invertOutput = 0; end // invert B to subtract subtract
      `c_NAND: begin muxindex = 3'b011; invertB=0; invertOutput = 0; end
      `c_AND:  begin muxindex = 3'b011; invertB=0; invertOutput = 1; end    
      `c_NOR:  begin muxindex = 3'b100; invertB=0; invertOutput = 0; end    
      `c_OR:   begin muxindex = 3'b100; invertB=0; invertOutput = 1; end
    endcase
  end
endmodule


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

reg [31:0] results [7:0];

wire [2:0] muxindex;
wire invertB;
wire invertOutput;

ALUcontrolLUT lut(muxindex, invertB, invertOutput, command);

  //nor #100 z(zero, result) //100 = (log2(32)*2*10)
    // Your code here
endmodule


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


module mAND
(
  output[31:0]    result,
  //output reg      carryout = 0,
  //output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);
  
  //wire dump_co, dump_of;
  wire[31:0]      nresult;
  
  //mNAND mnand(nresult, dump_co, dump_of, operandA, operandB);
  mNAND mnand(nresult, operandA, operandB);
  mINV mnandinv(result, nresult);

endmodule




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


module mOR
(
  output[31:0]    result,
  //output reg      carryout = 0,
  //output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  wire[31:0]      nresult;
  //mNOR mnor(nresult, carryout, overflow, operandA, operandB);
  mNOR mnor(nresult, operandA, operandB);
  mINV mnnorinv(result, nresult);

endmodule




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




//module mADD
//(
//  output[31:0]    result,
//  output reg      carryout,
//  output reg      overflow,
//  input[31:0]     operandA,
//  input[31:0]     operandB
//);
//
//  wire[32:0] c; // indexing is set to be off by +1
//  //c[0] = 0;
//
//  generate
//    genvar i;
//      for (i=0; i<32; i = i+1) begin: addgenblk
//        FullAdder fa(result[i], c[i+1], operandA[i], operandB[i], c[i]);
//      end
//  endgenerate
//
//  assign carryout = c[32];
//  `XOR xorGate(overflow, c[32], c[31]);
//
//endmodule
//
//
//module mSUB
//(
//  output[31:0]    result,
//  output reg      carryout,
//  output reg      overflow,
//  input[31:0]     operandA,
//  input[31:0]     operandB
//);
//
//  wire[32:0] c; // indexing is set to be off by +1
//  //c[0] = 1; //first carry in set as 1
//
//  wire[31:0] nB; 
//
//
//  generate
//    genvar i;
//    for (i=0; i<32; i = i+1) begin: subgenblk
//      `NOT notsub(nB[i], operandB[i]); //inverting B
//      FullAdder fa(result[i], c[i+1], operandA[i], nB[i], c[i]);
//    end
//  endgenerate
//
//  assign carryout = c[32];
//  `XOR xorGate(overflow, c[32], c[31]);
//
//endmodule


module mADDSUB
(
	output[31:0] result,
	output       carryout,
	output       overflow,
	input[31:0]  operandA,
	input[31:0]  operandB,
  input        addsub //1 for sub, 0 for add
);
	wire[32:0] c;
  wire[31:0] xorB;
	assign c[0] = addsub;

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



module mSLT
(
  output[31:0]    result,
  output reg      carryout = 0,
  output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);
  wire[31:0]      subresult;
  wire            dump_co, dump_of;

  mADDSUB msub(subresult, dump_co, dump_of, operandA, operandB, 1);

  //result = 0;
  assign result[0] = subresult[31];

endmodule




