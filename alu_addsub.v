`include "multiplexer_2_input.v"
`define AND and #330
`define OR or #320
`define NOT not #10
`define XOR xor #320 //for now

module ALUAddSub
(
  output          result,
  output          carryout,
  output          zero,
  output          overflow,

  input           operandA,
  input           operandB,
  input           carryin,
  input           ifsub
  //input[2:0]      command
);

    wire  B_compl;
    wire B;
    wire abSum;
    wire abXor;
    wire abCinXor;

    `NOT notgate(B_compl, operandB);
    Multiplexer2Input(B, ifsub, {operandB, B_compl})
    `AND andgate(abSum, operandA, B); 
    `XOR xorgate(abXor, operandA, B); 
    `AND andgate2(abCinXor, abXor, carryin); 
    `OR orgate(carryout, abSum, abCinXor); 
    `XOR xorgate2(sum, abXor, carryin);

    //subtraction



endmodule