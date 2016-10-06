`define c_ADD  3'd0
`define c_SUB  3'd1
`define c_SLT  3'd2
`define c_XOR  3'd3
`define c_NAND 3'd4
`define c_AND  3'd5
`define c_NOR  3'd6
`define c_OR   3'd7

`include "modules.v"
`include "muxnbit.v"

//gate delay are assumed to be proportional to the number of inputs
//10 units per input
`define NOT not #10
`define NAND nand #20
`define AND and #30
`define NOR nor #20
`define OR or #30
`define XNOR xnor #50
`define XOR xor #50

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
//
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
      `c_SLT:  begin muxindex = 3'b001; invertB=1; invertOutput = 0; end // invert B to subtract subtract
      `c_XOR:  begin muxindex = 3'b010; invertB=0; invertOutput = 0; end    
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

wire [31:0] results [4:0];

wire [2:0] muxindex;
wire invertB;
wire invertOutput;

ALUcontrolLUT lut(muxindex, invertB, invertOutput, command);

mADDSUB _addsub(results[0],carryouts, overflow, operandA, operandB, invertB);
mSLT _slt(results[1],operandA, operandB);
mXOR _xor(results[2],operandA,operandB); 
mNAND _nand(results[3],operandA,operandB); 
mNOR _nor(results[4],operandA,operandB); 

generate
  genvar i;
  for (i=0; i<32; i = i+1) begin: subgenblk
		muxnbit #(.n(3)) mnb(result[i],{results[0][i],results[1][i],results[2][i],results[3][i],results[4][i],results[4][i], results[4][i], results[4][i]},muxindex); //out, data, sel
  end
endgenerate

`NOR z(zero, result); //100 = (log2(32)*2*10)

endmodule
