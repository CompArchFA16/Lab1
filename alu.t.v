`include "alu.v"

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
    $display("name | command operandA operandB | result carryout zero overflow | EResult ECarryout EZero EOverflow")

    // ADD #1:
    command = 3'b000; operandA = ...; operandB = ...;
    $display("ADD | %b %b %b | %b %b %b %b | [TODO]", command, operandA, operandB, result, carryout, zero, overflow);
  end
endmodule
