`ifndef _aluCommands
`define _aluCommands

// Controls.
`define ALU_CMD_ADD  3'd0
`define ALU_CMD_SUB  3'd1
`define ALU_CMD_XOR  3'd2
`define ALU_CMD_SLT  3'd3
`define ALU_CMD_AND  3'd4
`define ALU_CMD_NAND 3'd5
`define ALU_CMD_NOR  3'd6
`define ALU_CMD_OR   3'd7

`endif

// Delays.
// TODO: Get these delays updated.
// `define NOT not #10
// `define XOR xor #320 // FIXME: What is the delay?
// `define AND and #330
// `define NAND nand #320
// `define NOR nor #320
// `define OR or #330

// `define NOT not
// `define XOR xor
// `define AND and
// `define NAND nand
// `define NOR nor
// `define OR or
