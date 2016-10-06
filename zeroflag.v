//Zero Flag circuit
`define NOR32 nor #320
`define AND and #30 //2 input AND
`define OR or #30 //2 input OR
`define OR32 or #320 //32 input OR
`define AND32 and #320 //32 input AND
`define XOR32 xor #320 //32 input XOR


module FlagZero
    /*This module figures out if a bit string is equal to 0, and raises a flag */

    (
        input [31:0] a,
        output zeroFlag
    );
    `NOR32 (zeroFlag, a);

endmodule


module ANDfunction

    /* This module is the 32-bit AND functionality of the ALU
    AND gate. Two 32-bit numbers results in a 32-bit number
    that has a 1 in the position that the inputs match (high)*/

    (
        output [31:0] result,
        input [31:0] a,
        input [31:0] b
    );

    genvar i;
    generate
    for (i=0; i < 32; i=i+1)
    begin : AND32
        `AND _andgate(result[i], a[i], b[i]);
         end
    endgenerate

endmodule

module XORfunction

/*This module is the 32-bit XOR functionality of the ALU XOR gate.
Two 32-bit numbers result in a 32-bit number that is high if there is
an odd number of 1's between two positions (01 or 10, not 11)*/
(
    output [31:0] result,
    input [31:0] a,
    input [31:0] b

);

genvar i;
generate
  for (i=0; i < 32; i=i+1)
  begin:XOR32
    `XOR32 _xorgate(result[i], a[i], b[i]);
  end
endgenerate

endmodule


module ORfunction

/*This module is the 32-bit OR functionality of the ALU OR gate.
Two 32-bit numbers result in a 32-bit number that is high if there is
an one or two 1's being compared (01, 10, 11, but not 00)*/

(
    output [31:0] result,
    input [31:0] a,
    input [31:0] b

);

genvar i;
generate
  for (i=0; i < 32; i=i+1)
  begin:OR32
    `OR _orgate(result[i], a[i], b[i]);
  end
endgenerate

endmodule
