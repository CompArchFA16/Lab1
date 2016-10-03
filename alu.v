`define c_ADD  3'd0
`define c_SUB  3'd1
`define c_XOR  3'd2
`define c_SLT  3'd3
`define c_AND  3'd4
`define c_NAND 3'd5
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
  //nor #100 z(zero, result) //100 = (log2(32)*2*10)
    // Your code here
endmodule

module mNAND
(
  output[31:0]    result,
  output reg      carryout = 0,
  output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  genvar i;
  for (i=0; i<32; i = i+1) begin
    `NAND(result[i], operandA[i], operandB[i]);
  end

endmodule


module mAND
(
  output[31:0]    result,
  output reg      carryout = 0,
  output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  wire[31:0]      nresult;
  mNAND mnand(nresult, carryout, overflow, operandA, operandB);

  genvar i;
  for (i=0; i<32; i = i+1) begin
    `NOT(result[i], nresult[i]);
  end

endmodule




module mNOR
(
  output[31:0]    result,
  output reg      carryout = 0,
  output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  genvar i;
  for (i=0; i<32; i = i+1) begin
    `NOR(result[i], operandA[i], operandB[i]);
  end

endmodule


module mOR
(
  output[31:0]    result,
  output reg      carryout = 0,
  output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  wire[31:0]      nresult;
  mNOR mnor(nresult, carryout, overflow, operandA, operandB);

  genvar i;
  for (i=0; i<32; i = i+1) begin
    `NOT(result[i], nresult[i]);
  end

endmodule




module mXOR
(
  output[31:0]    result,
  output reg      carryout = 0,
  output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  genvar i;
  for (i=0; i<32; i = i+1) begin
    `XOR(result[i], operandA[i], operandB[i]);
  end

endmodule




module mXNOR
(
  output[31:0]    result,
  output reg      carryout = 0,
  output reg      overflow = 0,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  genvar i;
  for (i=0; i<32; i = i+1) begin
    `XNOR(result[i], operandA[i], operandB[i]);
  end

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
    or #30 orGate(carryout, AandB, AandC, BandC);

endmodule




module mADD
(
  output[31:0]    result,
  output reg      carryout,
  output reg      overflow,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  wire[32:0] c; // indexing is set to be off by +1
  //c[0] = 0;

  genvar i;
  for (i=0; i<32; i = i+1) begin
    FullAdder fa(result[i], c[i+1], operandA[i], operandB[i], c[i]);
  end

  assign carryout = c[32];
  `XOR xorGate(overflow, c[32], c[31]);

endmodule





module mSUB
(
  output[31:0]    result,
  output reg      carryout,
  output reg      overflow,
  input[31:0]     operandA,
  input[31:0]     operandB
);

  wire[32:0] c; // indexing is set to be off by +1
  //c[0] = 1; //first carry in set as 1

  wire[31:0] nB; 


  genvar i;
  for (i=0; i<32; i = i+1) begin
    `NOT(nB[i], operandB[i]); //inverting B
    FullAdder fa(result[i], c[i+1], operandA[i], nB[i], c[i]);
  end

  assign carryout = c[32];
  `XOR xorGate(overflow, c[32], c[31]);

endmodule

//module mADDSUB
//(
//	output[31:0] result,
//	output reg carryout,
//	output reg overflow,
//	input[31:0] operandA,
//	input[31:0] operandB
//);
//	wire[32:0] c;
//	c[0] = sub;
//endmodule


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

  mSUB msub(subresult, dump_co, dump_of, operandA, operandB);

  //result = 0;
  assign result[0] = subresult[31];

endmodule



//module ALUcontrolLUT
//(
//output reg[2:0]     muxindex,
//output reg  invertB,
//output reg  invertOutput,
//input[2:0]  ALUcommand
//)
//
//  always @(ALUcommand) begin
//    case (ALUcommand)
//      `c_ADD:  begin muxindex = 0; invertB=0; invertOutput = ?; end    
//      `c_SUB:  begin muxindex = 0; invertB=1; invertOutput = ?; end
//      `c_XOR:  begin muxindex = 1; invertB=0; invertOutput = ?; end    
//      `c_SLT:  begin muxindex = 2; invertB=?; invertOutput = ?; end
//      `c_AND:  begin muxindex = 3; invertB=?; invertOutput = ?; end    
//      `c_NAND: begin muxindex = 3; invertB=?; invertOutput = ?; end
//      `c_NOR:  begin muxindex = 4; invertB=?; invertOutput = ?; end    
//      `c_OR:   begin muxindex = 4; invertB=?; invertOutput = ?; end
//    endcase
//  end
//endmodule

