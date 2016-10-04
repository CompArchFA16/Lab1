// Adder circuit
`define AND and #30 //2 input AND with unit 10 per input
`define AND3 and #40 //3 input AND with unit 10 per input
`define OR or #30 //2 input OR
`define NOT not #10 //1 input INV
`define XOR xor #50 //Check Piazza for conclusive answer

module structuralFullAdder
(
    output sum,
    output carryout,
    input a,
    input b,
    input carryin,
    input subtract
);
    // Your adder code here
    // Create the wires
    wire AxorB;
    wire AandB;
    wire AxorBandCin;
    wire BorSub;

    // calculate the sum
    `XOR xorgate1(AxorB, a, BorSub);
    `XOR xorgate2(sum, AxorB, carryin);
    `XOR xorgate3( bos0, subtract, b);

    // calculate the carryout
    `AND andgate1(AandB, a, BorSub);
    `AND andgate2(AxorBandCin, AxorB, carryin);
    `OR orgate(carryout, AandB, AxorBandCin);

endmodule

module FullAdderSub4bit
(
    output[3:0] sum,  // 2's complement sum of a and b
    output carryout,  // Carry out of the summation of a and b
    //output overflow,  // True if the calculation resulted in an overflow
    input[3:0] a,     // First operand in 2's complement format
    input[3:0] b,      // Second operand in 2's complement format
    input carryin      // Carry in to discern ADD from SUB functionality
);

    // define wires for the carryouts between the different adders
    wire carryout0;
    wire carryout1;
    wire carryout2;

    // Create 4 different adders for each of the bits
    structuralFullAdder adder0(sum[0], carryout0, a[0], b[0], carryin); // carryin=0 for first bit
    structuralFullAdder adder1(sum[1], carryout1, a[1], b[1], carryout0); // carryin=0 for first bit
    structuralFullAdder adder2(sum[2], carryout2, a[2], b[2], carryout1); // carryin=0 for first bit
    structuralFullAdder adder3(sum[3], carryout, a[3], b[3], carryout2); // carryin=0 for first bit

endmodule

module Adder32bit
    /*This module combines 8 4bit Full Adders or Subtractors to get a 32-bit addition or subtraction functionality. */

    (
        output overflow,
        output carryout,
        output flagzero,
        output [31:0] sum,
        input[31:0] a,
        input[31:0] b,
        input carryin //Addition or Subtraction, also known as the first carryin
    );

    wire carryout0;
    wire carryout1;
    wire carryout2;
    wire carryout3;
    wire carryout4;
    wire carryout5;
    wire carryout6;
    wire carryout7;



    FullAdderSub4bit adder0(sum[3:0], carryout0, a[3:0], b[3:0], carryin); // If carryin = 1 then it subtracts. first 4 bits
    FullAdderSub4bit adder1(sum[7:4], carryout1, a[7:4], b[7:4], carryout0); //link carry, 2nd 4 bits
    FullAdderSub4bit adder2(sum[11:8], carryout2, a[11:8], b[11:8], carryout1); //link carry, 3rd 4 bits
    FullAdderSub4bit adder3(sum[15:12], carryout3, a[15:12], b[15:12], carryout2); //link carry, 4th 4 bits
    FullAdderSub4bit adder4(sum[19:16], carryout4, a[19:16], b[19:16], carryout3); //link carry, 5th 4 bits
    FullAdderSub4bit adder5(sum[23:20], carryout5, a[23:20], b[23:20], carryout4); //link carry, 6th 4 bits
    FullAdderSub4bit adder6(sum[27:24], carryout6, a[27:24], b[27:24], carryout5); //link carry, 7th 4 bits
    FullAdderSub4bit adder7(sum[31:28], carryout, a[31:28], b[31:28], carryout6); //link carry, 8th 4 bits

    // figure out if overflow according to 2's complement
    // Overflow happens when the most significant bit of the sum
    // is different than the most significant bits of inputs A and B
    wire nA31;
    wire nB31;
    wire nS31;
    wire andtop;
    wire andbottom;

    `NOT notgatea(nA31, a[31]);
    `NOT notgateb(nB31, b[31]);
    `NOT notgates(nS31, sum[31]);

    // Check if A and B are negative, and sum is positive
    `AND3 andgate1(andtop, nA31, nB31, sum[31]);
    // Check if A and B are positive, and sum is negative
    `AND3 andgate2(andbottom, a[31], b[31], nS31);

    // If either of the above conditions are true, then there is overflow
    `OR orgate(overflow, andtop, andbottom);


endmodule
