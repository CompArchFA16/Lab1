
`define NOTgate not #10 //fundamental, one input
`define NANDgate nand #20 //fundamental, 2 input
`define NORgate nor #20 //fundamental, 2 input
`define ANDgate and #30 //made from inverter and NAND
`define ORgate or #30 // made from inverter and OR
`define XORgate xor #60 //worst case three and gates

`define ADD  3'd0
`define SUB  3'd1
`define XOR  3'd2
`define SLT  3'd3
`define AND  3'd4
`define NAND 3'd5
`define NOR  3'd6
`define OR   3'd7


/*behavioral verilog done for test bench crafting/checking*/
module behavioraladder32(
   // Outputs
   result,
   // Inputs
   a, b
   );
   input[31:0] a;
   input[31:0] b;
   output [31:0] result;
   wire [32:0] sum = {1'b0,a} + {1'b0,b};
   assign      result = sum[32] ? sum[32:1]: sum[31:0];
endmodule // adder32

module behavioralsubtract32(
   // Outputs
   result,
   // Inputs
   a, b
   );
   input[31:0] a;
   input[31:0] b;
   output [31:0] result;
   wire [32:0] sum = {1'b0,a} - {1'b0,b};
   assign      result = sum[32] ? sum[32:1]: sum[31:0];
endmodule // adder32

module nand32
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
      `NANDgate(andResult[i],operandA[i],operandB[i]);
    end
  endgenerate
endmodule

module nor32
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
      `NORgate(andResult[i],operandA[i],operandB[i]);
    end
  endgenerate
endmodule


module andnand32 //Works for AND, NAND : For AND, M = 0. For NAND, M = 1.
(
output reg carryout=0,
output reg overflow=0,
output[31:0] andResult,
input [31:0] operandA,
input [31:0] operandB,
input M
);
wire [31:0] midResult;
genvar i;
  generate
  //ands all 32 bits
    for (i = 0; i < 32; i = i+1)
    begin : gen1
      `ANDgate(midResult[i],operandA[i],operandB[i]);
      `XORgate(andResult[i],midResult[i],M);
    end
  endgenerate
endmodule

module ornor32 //Works for OR, NOR : For OR, M = 0. For NOR, M = 1.
(
output reg carryout=0,
output reg overflow=0,
output[31:0] andResult,
input [31:0] operandA,
input [31:0] operandB,
input M
);
wire [31:0] midResult;
genvar i;
  generate
  //ands all 32 bits
    for (i = 0; i < 32; i = i+1)
    begin : gen1
      `ORgate(midResult[i],operandA[i],operandB[i]);
      `XORgate(andResult[i],midResult[i],M);
    end
  endgenerate
endmodule


/*'''Our real code starts here'''*/

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

endmodule


module and32 //Works for AND, NAND : For AND, M = 0. For NAND, M = 1.
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
      `ANDgate(andResult[i],operandA[i],operandB[i]);
    end
  endgenerate
endmodule

module or32 //Works for OR, NOR : For OR, M = 0. For NOR, M = 1.
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
      `ORgate(andResult[i],operandA[i],operandB[i]);
    end
  endgenerate
endmodule

module SLT32 //returns 1 if operandA is less than operandB
(
output result,
input [31:0] operandA,
input [31:0] operandB
  );
wire [31:0] subResult;
add32 myALU (carryout, overflow, subResult, operandA, operandB, 1);
`XORgate(result,subResult[31],overflow);


endmodule



module xor32 //xors two 32bits
(
output[31:0] andResult,
input [31:0] operandA,
input [31:0] operandB
);
genvar i;
  generate
  //ands all 32 bits
    for (i = 0; i < 32; i = i+1)
    begin : gen1
      `XORgate(andResult[i],operandA[i],operandB[i]);
    end
  endgenerate
endmodule

module xor1a32  //xors a 32bit with a 1bit
(
output[31:0] andResult,
input [31:0] operandA,
input operandB
);
genvar i;
  generate
  //ands all 32 bits
    for (i = 0; i < 32; i = i+1)
    begin : gen1
      `XORgate(andResult[i],operandA[i],operandB);
    end
  endgenerate
endmodule

module structuralFullAdder
(
  // This is the unit module which the FullAdder4bit runs 4 times
    output sum,
    output carryout,
    input a,
    input b,
    input carryin
);
wire AxorB, AxorBandcarryin, AandB;
// XOR gate is true only if one of the two inputs is true, not both
`XORgate xorgate1(AxorB, a, b);
`XORgate xorgate2(sum, AxorB, carryin);
// AND gate is true only if both inputs are true
`ANDgate andgate1(AxorBandcarryin, AxorB, carryin);
`ANDgate andgate2(AandB, a, b);
/// OR gate is true if either or both of the inputs are true
`ORgate orgate(carryout, AxorBandcarryin, AandB);
endmodule

module add32
(
output carryout,
output overflow,
output[31:0] andResult,
input [31:0] operandA,
input [31:0] operandB,
input M

);
wire[30:0] carryoutin;
wire[31:0] MxorB;
wire carryout;
wire overflow;
/*wire[31:0] carryoutin;*/
xor1a32 myxor(MxorB,operandB, M);
structuralFullAdder add0(andResult[0], carryoutin[0], operandA[0],MxorB[0], M);
genvar i;
  generate
  //ands all 32 bits
    for (i = 1; i < 31; i = i+1)
    begin : gen1
      structuralFullAdder addgates(andResult[i], carryoutin[i], operandA[i],MxorB[i], carryoutin[i-1]);
    end
  endgenerate
structuralFullAdder add31(andResult[31], carryout, operandA[31],MxorB[31], carryoutin[30]);

  `XORgate overflowgate(overflow,carryoutin[30],carryout);
endmodule




module structuralMultiplexer
(
    output out,
    input [3:0] muxindex,
    input invertB,
    input in0, in1, in2, in3, in4, in5, in6, in7
);
    wire na0;
    wire na1;
    wire mid0;
    wire mid1;
    wire mid2;
    wire mid3;
    `NOTgate adinv(na0,address0);
    `NOTgate adinv(na1,address1);
    `ANDgate andgate(mid0,na0,na1,in0);
    `ANDgate andgate(mid1,na1,address0,in1);
    `ANDgate andgate(mid2,address1,na0,in2);
    `ANDgate andgate(mid3,address0,address1,in3);
    `ORgate orgate(out,mid0,mid1,mid2,mid3);
endmodule



module ALUcontrolLUT
(
output reg[3:0] muxindex,
output reg  invertB,
input[2:0]  ALUcommand
)

  always @(ALUcommand) begin
    case (ALUcommand)
      `ADD:  begin muxindex = 0; invertB=0;  end    
      `SUB:  begin muxindex = 0; invertB=1;  end
      `XOR:  begin muxindex = 1; invertB=0;  end    
      `SLT:  begin muxindex = 2; invertB=0;  end
      `AND:  begin muxindex = 3; invertB=0;  end    
      `NAND: begin muxindex = 3; invertB=1;  end
      `NOR:  begin muxindex = 4; invertB=1;  end    
      `OR:   begin muxindex = 4; invertB=0;  end
    endcase
  end
endmodule