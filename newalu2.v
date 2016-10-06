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

module and32 //this gate is a nor gate if both inputs are inverted
(
output[31:0] andResult,
input [31:0] operandA,
input [31:0] operandB
);
genvar i;
  generate
  //ands all 32 bits
    for (i = 0; i < 32; i = i+1)
    begin : genand
      `ANDgate myand(andResult[i],operandA[i],operandB[i]);
    end
  endgenerate
endmodule

module or32 //this gate is an nand gate if both inputs are inverted
(
output[31:0] orResult,
input [31:0] operandA,
input [31:0] operandB
);
genvar i;
  generate
    for (i = 0; i < 32; i = i+1)
    begin : gen1
      `ORgate myor(orResult[i],operandA[i],operandB[i]);
    end
  endgenerate
endmodule


module slt32 //returns 1 if operandA is less than operandB
(
output sltResult,
input [31:0] operandA,
input [31:0] operandB
);
wire [31:0] subResult;
add32 myALU (carryout, overflow, subResult, operandA, operandB, 1);
`XORgate(sltResult,subResult[31],overflow);
endmodule


module xor32 //xors two 32bits
(
output[31:0] xorResult,
input [31:0] operandA,
input [31:0] operandB
);
genvar i;
  generate
    for (i = 0; i < 32; i = i+1)
    begin : gen1
      `XORgate myxor(xorResult[i],operandA[i],operandB[i]);
    end
  endgenerate
endmodule


module xor1a32  //xors a 32bit with a 1bit
(
output[31:0] xorResult,
input [31:0] operandA,
input operandB
);
genvar i;
  generate
    for (i = 0; i < 32; i = i+1)
    begin : gen1
      `XORgate myxor(xorResult[i],operandA[i],operandB);
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
output[31:0] addResult,
input [31:0] operandA,
input [31:0] operandB,
input M

);
wire[30:0] carryoutin;
wire[31:0] MxorB;
wire carryout;
wire overflow;
//xor1a32 myxor(MxorB,operandB, M);
structuralFullAdder add0(addResult[0], carryoutin[0], operandA[0],operandB[0], M);
genvar i;
  generate
  //ands all 32 bits
    for (i = 1; i < 31; i = i+1)
    begin : gen1
      structuralFullAdder addgates(addResult[i], carryoutin[i], operandA[i],operandB[i], carryoutin[i-1]);
    end
  endgenerate
structuralFullAdder add31(addResult[31], carryout, operandA[31],operandB[31], carryoutin[30]);
`XORgate overflowgate(overflow,carryoutin[30],carryout);
endmodule

//and LUT is working, and module is working, so it must be the mux that is broken
module structuralMultiplexer
(
    output [31:0] result,
    input [2:0] muxindex,
    input [31:0] andResult, orResult, xorResult, addResult,
    input [31:0] sltResult
);

    wire [2:0] notCommand;
    wire[31:0] doAnd, doOr, doXor, doAdd;
    wire doSlt;

    generate
    genvar i;
      for (i=0; i<3; i=i+1)
        begin: gen1
        `NOTgate notgate(notCommand[i], muxindex[i]);
      end
    endgenerate


    `ANDgate andSlt(doSlt, sltResult, notCommand[0], muxindex[1], notCommand[2]);

    generate
    genvar j;
    for (j = 0; j<32; j=j+1)
    	begin: gen2
      `ANDgate andAnd(doAnd[j], andResult[j], muxindex[0], muxindex[1], notCommand[2]);
      `ANDgate andOr(doOr[j], orResult[j], notCommand[0], notCommand[1], muxindex[2]);
      `ANDgate andXor(doXor[j], xorResult[j], muxindex[0], notCommand[1], notCommand[2]);
      `ANDgate andAdd(doAdd[j], addResult[j], notCommand[0], notCommand[1], notCommand[2]);

      `ORgate orOut(result[j], doAnd[j], doOr[j], doXor[j], doAdd[j], doSlt); //only one should by high
    	end
    endgenerate

endmodule



module ALUcontrolLUT
(
output reg[2:0] muxindex,
output reg invertA,
output reg invertB,
output reg enableOverflow,
output reg carryin,
input[2:0] ALUcommand
);


//in the lab it mentions we need a way to stop oveflow from counting for the slt...it seems like a control flag kind of thing
always @(ALUcommand) begin
    case (ALUcommand)
      `ADD:  begin muxindex = 0; invertA=0; invertB=0; enableOverflow=1; carryin=0; end //work
      `SUB:  begin muxindex = 0; invertA=0; invertB=0; enableOverflow=1; carryin=1; end //work
      `XOR:  begin muxindex = 1; invertA=0; invertB=0; enableOverflow=1; carryin=0; end //work
      `SLT:  begin muxindex = 2; invertA=0; invertB=1; enableOverflow=0; carryin=1; end //work
      `AND:  begin muxindex = 3; invertA=0; invertB=0; enableOverflow=1; carryin=0; end //broke
      `NAND: begin muxindex = 4; invertA=1; invertB=1; enableOverflow=1; carryin=0; end //work
      `NOR:  begin muxindex = 3; invertA=1; invertB=1; enableOverflow=1; carryin=0; end //broke
      `OR:   begin muxindex = 4; invertA=0; invertB=0; enableOverflow=1; carryin=0; end //work
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

wire invertA, invertB, carryin, enableOverflow;
wire[2:0] muxindex; //address
wire[31:0] operandA, operandB;
wire[31:0] flipA, flipB;
wire[31:0] andResult, orResult, addResult, xorResult;
wire sltResult;
wire[31:0] sltResult32 = 0;
wire sltCheck1;
wire sltCheck2;

ALUcontrolLUT myLUT(muxindex, invertA, invertB, enableOverflow, carryin, command);


//invert relevant inputs if the invert control signal is high
generate
genvar i;
for (i=0; i<32; i=i+1)
  begin: gen1
    `XORgate AxorInvert(flipA[i], operandA[i], invertA);
    `XORgate BxorInvert(flipB[i], operandB[i], invertB);
  end
endgenerate

//run all the calculations
and32 myand(andResult, flipA, flipB);
or32 myor(orResult, flipA, flipB);
xor32 myxor(xorResult, flipA, flipB);
add32 myadd(carryout, adderoverflow, addResult, operandA, operandB, carryin);
slt32 myslt(sltResult, operandA, operandB);
`ANDgate andoverflow(overflow, enableOverflow, adderoverflow);
`ORgate sltor(sltResult32[31],sltResult, 0);

structuralMultiplexer mymux(result, muxindex, andResult, orResult, xorResult, addResult, sltResult32);


// zero
// the old zero approach had issues with certain things (when msb = 1)
// in the waveform turning out with the inverted slt signals both being 1


wire[30:0] high;

//or the first one separately because you need to have something to compare against for the loop
`ORgate orgate0(high[0], result[0], result[1]);
//genvar version of zero to check if there are any ones in the result
genvar j;
generate
  for(j=1; j<31; j = j + 1)
  begin: gen2
    `ORgate orgatej(high[j], high[j - 1], result[j + 1]);
  end
endgenerate
//not it to have it result in 1 if there are no 1s in the result
`NOTgate notgate(zero, high[30]);

// genvar j;
// generate
//   for(j=0; j<31; j = j + 1)
//   begin: gen2
//     `ORgate orgatej(high[j], high[j], result[j + 2]);
//   end
// endgenerate

endmodule
