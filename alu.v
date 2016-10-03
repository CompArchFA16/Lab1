`include adder.v

`define ADD  3'd0
`define SUB  3'd1
`define XOR  3'd2
`define SLT  3'd3
`define AND  3'd4
`define NAND 3'd5
`define NOR  3'd6
`define OR   3'd7

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

/*        output overflow,
        output carryout,
        output flagzero,
        output [31:0] sum,
        input[31:0] a,
        input[31:0] b,
        input carryin
    Adder32bit addersub32(overflow,carryout,flagzero,sum,a,b, carryin);*/


endmodule
