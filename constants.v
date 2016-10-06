// Controls.
`define COMMAND_ADD  3'd0
`define COMMAND_SUB  3'd1
`define COMMAND_XOR  3'd2
`define COMMAND_SLT  3'd3
`define COMMAND_AND  3'd4
`define COMMAND_NAND 3'd5
`define COMMAND_NOR  3'd6
`define COMMAND_OR   3'd7

// Delays.
// TODO: Get these delays updated.
`define NOT not #10
`define XOR xor #320 // FIXME: What is the delay?
`define AND and #330
`define NAND nand #320
`define NOR nor #320
`define OR or #330
