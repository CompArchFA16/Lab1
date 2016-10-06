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

//make all result wire buses
wire [31:0]resultand;
wire [31:0]resultor;
wire [31:0]resultxor;
wire [31:0]resultsub;
wire [31:0]resultadd;
wire [31:0]resultslt;
wire [31:0]resultnor;
wire [31:0]resultnand;

wire [31:0]out0;
wire [31:0]out1;
wire [31:0]out2;
wire [31:0]out3;
wire [31:0]out4;
wire [31:0]out5;
wire [31:0]out6;
wire [31:0]out7;

wire nS0;
wire nS1;
wire nS2;

//Call all modules to get all results
Adder32bit adder(overflow, carryout, zero, resultadd, a, b, 0,0); //ADD MODULE
Adder32bit subtractor(overflow, carryout, zero, resultsub, a, b, 1,1); //SUBTRACT MODULE
XORfunction xorer(resultxor, a, b); //XOR MODULE
SLTfunction slter(resultslt, a, b); //SLT MODULE
ANDfunction ander(resultand, a, b); //AND MODULE
NANDfunction nander(resultnand, a, b); //NAND MODULE
NORfunction norer(resultnor, a, b); //NOR MODULE
ORfunction orer(resultor, a, b); //OR MODULE

//loop through bit by bit
genvar i;
generate
for (i=0; i < 32; i=i+1)
begin : ALUMUX

// //generate wires each time
// wire out0;
// wire out1;
// wire out2;
// wire out3;
// wire out4;
// wire out5;
// wire out6;
// wire out7;
// wire nS0;
// wire nS1;
// wire nS2;

//to make all possible inputs 000-111
`NOT S0inv(nS0, command[0]);
`NOT S1inv(nS1, command[1]);
`NOT S2inv(nS2, command[2]);

//multiplexer with 3 select - therefore 8 4 input AND gates
`AND4 andgate0(out0[i], resultadd[i], nS2, nS1, nS0);  //000
`AND4 andgate1(out1[i], resultsub[i], nS2, nS1, command[0]);//001
`AND4 andgate2(out2[i], resultxor[i], nS2, command[1], nS0); //010
`AND4 andgate3(out3[i], resultslt[i], nS2, command[1], command[0]); //011
`AND4 andgate4(out4[i], resultand[i], command[2], nS1, nS0); //100
`AND4 andgate5(out5[i], resultnand[i], command[2], nS1, command[0]);//101
`AND4 andgate6(out6[i], resultnor[i],command[2], command[1], nS0);//110
`AND4 andgate7(out7[i], resultor[i], command[2], command[1], command[0]);//111

`OR8 orgate8(result[i], out0[i], out1[i], out2[i], out3[i], out4[i], out5[i], out6[i], out7[i]);
//`OR orgate(result[i], resultsub[i], 0);

end
endgenerate
endmodule
