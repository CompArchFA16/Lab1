//Zero Flag circuit
`define NOR32 nor #320
`define AND and #30

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
    AND gate of two 32-bit numbers results in a 32-bit number
    that has a 1 in the position that the inputs match (high)*/

    (
        input [31:0] a,
        input [31:0] b,
        output [31:0] result
    );

        `AND andgate0(result[0], a[0], b[0]); // for each bit, compare
        `AND andgate1(result[1], a[1], b[1]); //and if both high, let the
        `AND andgate2(result[2], a[2], b[2]); // result bit at that position
        `AND andgate3(result[3], a[3], b[3]); //also be high. 
        `AND andgate4(result[4], a[4], b[4]);
        `AND andgate5(result[5], a[5], b[5]);
        `AND andgate6(result[6], a[6], b[6]);
        `AND andgate7(result[7], a[7], b[7]);
        `AND andgate8(result[8], a[8], b[8]);
        `AND andgate9(result[9], a[9], b[9]);
        `AND andgate10(result[10], a[10], b[10]);
        `AND andgate11(result[11], a[11], b[11]);
        `AND andgate12(result[12], a[12], b[12]);
        `AND andgate13(result[13], a[13], b[13]);
        `AND andgate14(result[14], a[14], b[14]);
        `AND andgate15(result[15], a[15], b[15]);
        `AND andgate16(result[16], a[16], b[16]);
        `AND andgate17(result[17], a[17], b[17]);
        `AND andgate18(result[18], a[18], b[18]);
        `AND andgate19(result[19], a[19], b[19]);
        `AND andgate20(result[20], a[20], b[20]);
        `AND andgate21(result[21], a[21], b[21]);
        `AND andgate22(result[22], a[22], b[22]);
        `AND andgate23(result[23], a[23], b[23]);
        `AND andgate24(result[24], a[24], b[24]);
        `AND andgate25(result[25], a[25], b[25]);
        `AND andgate26(result[26], a[26], b[26]);
        `AND andgate27(result[27], a[27], b[27]);
        `AND andgate28(result[28], a[28], b[28]);
        `AND andgate29(result[29], a[29], b[29]);
        `AND andgate30(result[30], a[30], b[30]);
        `AND andgate31(result[31], a[31], b[31]);

endmodule
