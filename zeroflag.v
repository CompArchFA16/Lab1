//Zero Flag circuit
`define NOR and #320

module FlagZero
    /*This module figures out if a bit string is equal to 0, and raises a flag */

    (
        input [31:0] a,
        output zeroFlag
    );

    `NOR (zeroFlag, a);

endmodule
