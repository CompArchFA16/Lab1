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
    input carryin
);
    // Your adder code here
    // Create the wires
    wire AxorB;
    wire AandB;
    wire AxorBandCin;

    // calculate the sum
    `XOR xorgate1(AxorB, a, b);
    `XOR xorgate2(sum, AxorB, carryin);

    // calculate the carryout
    `AND andgate1(AandB, a, b);
    `AND andgate2(AxorBandCin, AxorB, carryin);
    `OR orgate(carryout, AandB, AxorBandCin);

endmodule

module FullAdderSub4bit
(
    output[3:0] sum,  // 2's complement sum of a and b
    output carryout,  // Carry out of the summation of a and b
    output overflow,  // True if the calculation resulted in an overflow
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

    // figure out if overflow according to 2's complement
    // Overflow happens when the most significant bit of the sum
    // is different than the most significant bits of inputs A and B
    wire nA3;
    wire nB3;
    wire nS3;
    wire andtop;
    wire andbottom;

    `NOT notgatea(nA3, a[3]);
    `NOT notgateb(nB3, b[3]);
    `NOT notgates(nS3, sum[3]);

    // Check if A and B are negative, and sum is positive
    `AND3 andgate1(andtop, nA3, nB3, sum[3]);
    // Check if A and B are positive, and sum is negative
    `AND3 andgate2(andbottom, a[3], b[3], nS3);

    // If either of the above conditions are true, then there is overflow
    `OR orgate(overflow, andtop, andbottom);

endmodule

module Adder32bit
    /*This module combines 8 4bit Full Adders or Subtractors to get a 32-bit addition or subtraction functionality. */

    (
        output overflow,
        output carryout,
        output flagzero,
        input carryin //Addition or Subtraction, also known as the first carryin
    );

    FullAdderSub4bit adder0(sum, carryout0, overflow, a, b, carryin); // If carryin = 1 then it subtracts.
    FullAdderSub4bit adder1(sum, carryout1, overflow, a, b, carryout0); //link carry
    
endmodule
