// Notation Simplification for ALU Commands
`define ADD  3'd0
`define SUB  3'd1
`define XOR  3'd2
`define SLT  3'd3
`define AND  3'd4
`define NAND 3'd5
`define NOR  3'd6
`define OR   3'd7

`include "mux.v"
`include "adder.v"

// module Adder_32bit  // 32-bit adder/subtracter
// (
//   output[31:0] sum,  // 2's complement sum of a and b (and maybe previous carryin)
//   output carryout,  // Carry out of the summation of a and b
//   output overflow,  // True if the calculation resulted in an overflow
//   input[31:0] a,     // First operand in 2's complement format
//   input[31:0] b      // Second operand in 2's complement format
// );
//
//     genvar i;
//     generate
//       for (i=0; i < 32; i=i+1) begin : XOR32
//         Xor_1bit _xor(result[i], a[i], b[i]);
//       end
//     endgenerate
// endmodule

module ALU // 32bit
(
    output[31:0]    result,
    output          carryout,
    output          zero,
    output          overflow,
    input[31:0]     operandA,
    input[31:0]     operandB,
    input[2:0]      command
);
    // Your code here
endmodule

module ALUcontrolLUT
(
    output reg[2:0]     muxindex,
    output reg  invertB,
    output reg  othercontrolsignal,
    // Extra input/output here (...)
    input[2:0]  ALUcommand
)

    always @(ALUcommand) begin
      case (ALUcommand)
        `ADD:  begin muxindex = 0; invertB=0; othercontrolsignal = 0; end
        `SUB:  begin muxindex = 0; invertB=1; othercontrolsignal = 0; end
        `XOR:  begin muxindex = 1; invertB=0; othercontrolsignal = 0; end
        `SLT:  begin muxindex = 2; invertB=1; othercontrolsignal = 0; end
        `NAND: begin muxindex = 3; invertB=0; othercontrolsignal = 0; end
        `AND:  begin muxindex = 3; invertB=0; othercontrolsignal = 1; end
        `NOR:  begin muxindex = 4; invertB=0; othercontrolsignal = 0; end
        `OR:   begin muxindex = 4; invertB=0; othercontrolsignal = 1; end
      endcase
    end
endmodule
