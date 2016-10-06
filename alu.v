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
#(parameter n=32)
(
  output[n-1:0]    result,
  output          carryout,
  output          zero,
  output          overflow,
  input[n-1:0]     operandA,
  input[n-1:0]     operandB,
  input[2:0]      command
);

wire [n-1:0] result_t;
wire [n-1:0] results [4:0];

wire carryout_t, overflow_t;

wire [2:0] muxindex;
wire invertB;
wire invertOutput;

ALUcontrolLUT lut(muxindex, invertB, invertOutput, command);

mADDSUB #(.n(n)) _addsub(results[0],carryout_t, overflow_t, operandA, operandB, invertB);
mSLT #(.n(n)) _slt(results[1],operandA, operandB);
mXOR #(.n(n)) _xor(results[2],operandA,operandB); 
mNAND #(.n(n)) _nand(results[3],operandA,operandB); 
mNOR #(.n(n)) _nor(results[4],operandA,operandB); 

and billsfavoriteandgate(carryout, carryout_t, ~muxindex[0], ~muxindex[1], ~muxindex[2]);

and billssecondfavoriteandgate(overflow, overflow_t, ~muxindex[0], ~muxindex[1], ~muxindex[2]);

generate
  genvar i;
  for (i=0; i<n; i = i+1) begin: subgenblk
		muxnbit #(.n(3)) mnb(result_t[i],{1'b0, 1'b0, 1'b0, results[4][i],results[3][i],results[2][i],results[1][i],results[0][i]},muxindex); //out, data, sel
		`XOR (result[i], result_t[i], invertOutput);
  end
endgenerate

//assign result = results[0];

`NOR z(zero, result); //100 = (log2(n)*2*10)

endmodule
