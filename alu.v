
`define NOT not #10 //fundamental, one input
`define NAND nand #20 //fundamental, 2 input
`define NOR nor #20 //fundamental, 2 input
`define AND and #30 //made from inverter and NAND
`define OR or #30 // made from inverter and OR
`define XOR xor #60 //worst case three and gates 



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


module or32
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
      `OR(andResult[i],operandA[i],operandB[i]);
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
      `NOR(andResult[i],operandA[i],operandB[i]);
    end
  endgenerate
endmodule

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
      `NAND(andResult[i],operandA[i],operandB[i]);
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
`XOR xorgate1(AxorB, a, b);
`XOR xorgate2(sum, AxorB, carryin);
// AND gate is true only if both inputs are true
`AND andgate1(AxorBandcarryin, AxorB, carryin);
`AND andgate2(AandB, a, b);
/// OR gate is true if either or both of the inputs are true
`OR orgate(carryout, AxorBandcarryin, AandB);
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
wire[31:0] carryoutin;
wire[31:0] MxorB;
`XOR xorgate0(MxorB, operandB, M);
structuralFullAdder add0(andResult[0], carryoutin[0], operandA[0],MxorB[0], 0);  
genvar i;
  generate
  //ands all 32 bits
    for (i = 1; i < 31; i = i+1)
    begin : gen1
      /*`XOR xorgatei(MxorB[i], operandB[i], M);*/
      `XOR xorgatei(MxorB, operandB[i], M);
      structuralFullAdder addi(andResult[i], carryoutin[i], operandA[i],MxorB, carryoutin[i-1]);  
    end
  endgenerate
`XOR xorgatei(MxorB, operandB[31], M);
structuralFullAdder add31(andResult[31], carryout, operandA[31],MxorB, carryoutin[30]);  

  `XOR overflowgate(overflow,carryoutin[30],carryout);
endmodule

