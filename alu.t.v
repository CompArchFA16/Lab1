`include "alu.v"

`define ADD  3'd0
`define SUB  3'd1
`define XOR  3'd2
`define SLT  3'd3
`define AND  3'd4
`define NAND 3'd5
`define NOR  3'd6
`define OR   3'd7

module testAluAdd();

  // Inputs.
  reg[31:0] operandA;
  reg[31:0] operandB;
  reg[2:0]  command;

  // Outputs.
  wire[31:0] result;
  wire       carryout;
  wire       zero;
  wire       overflow;

  ALU dut(result, carryout, zero, overflow, operandA, operandB, command);

  initial begin
    $dumpfile("alu_add.vcd");
    $dumpvars;
    $display("name | command operandA operandB | result carryout zero overflow | EResult ECarryout EZero EOverflow");

    // ADD #1:
    command = `ADD;
    operandA = 32'd1;
    operandB = 32'd2;
    $display("ADD | %h %h %h | %d %b %b %b | 3 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);
  end
endmodule
