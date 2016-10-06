`include "adder.v"
`include "nandnor.v"
`include "zeroflag.v"

`define AND and #30 //2 input AND
`define AND4 and #50 //4 input AND
`define OR or #30 //2 input OR
`define OR8 or #90 //8 input OR
`define NOT not #10

module ALU
(
output[31:0]    result,
output          carryout,
output          zero,
output          overflow,
input[31:0]     a,
input[31:0]     b,
input[2:0]      command
);

wire [31:0]resultand;
wire [31:0]resultor;
wire [31:0]resultxor;
wire [31:0]resultsub;
wire [31:0]resultadd;
wire [31:0]resultslt;
wire [31:0]resultnor;
wire [31:0]resultnand;

Adder32bit adder(overflow, carryout, zero, resultadd, a, b, 0,0); //ADD MODULE
Adder32bit subtractor(overflow, carryout, zero, resultsub, a, b, 1,1); //SUBTRACT MODULE
XORfunction xorer(resultxor, a, b); //XOR MODULE
//SLT
ANDfunction ander(resultand, a, b); //AND MODULE
NANDfunction nander(resultnand, a, b); //NAND MODULE
NORfunction norer(resultnor, a, b); //NOR MODULE
ORfunction orer(resultor, a, b); //OR MODULE

genvar i;
generate
for (i=0; i < 32; i=i+1)
begin : ALUMUX

wire out0;
wire out1;
wire out2;
wire out3;
wire out4;
wire out5;
wire out6;
wire out7;

wire nS0;
wire nS1;
wire nS2;

`NOT S0inv(nS0, command[0]);
`NOT S1inv(nS1, command[1]);
`NOT S2inv(nS2, command[2]);

`AND4 andgate0(out0, resultadd[i], nS0, nS1, nS2);
`AND4 andgate1(out1, resultsub[i], nS0, nS1, command[2]);
`AND4 andgate2(out2, resultxor[i], nS0, command[1], nS2);
`AND4 andgate3(out3, resultslt[i], nS0, command[1], command[2]);
`AND4 andgate4(out4, resultand[i], command[0], nS1, nS2);
`AND4 andgate5(out5, resultnand[i], command[0], nS2, command[2]);
`AND4 andgate6(out6, resultnor[i],command[0], command[1], nS2);
`AND4 andgate7(out7, resultor[i], command[0], command[1], command[2]);

`OR8 orgate(result[i], out0, out1, out2, out3, out4, out5, out6, out7);

end
endgenerate
endmodule
