`include "alu_commands.v"
`include "alu_2bit.v"
// `timescale 1 ns / 1 ps

module testALU2Bit();

  // Outputs.
  wire[1:0] result;
  wire      carryout;
  wire      zero;
  wire      overflow;

  // Inputs.
  reg[1:0] operandA;
  reg[1:0] operandB;
  reg[2:0] command;

  ALU2Bit dut(result, carryout, zero, overflow, operandA, operandB, command);

  initial begin
    $dumpfile("alu_2bit.vcd");
    $dumpvars;
    $display("name         | command operandA operandB | result carryout zero overflow | EResult ECarryout EZero EOverflow");

    // ALU_CMD_ADD #1: 1 + 2 = 3
    command = `ALU_CMD_ADD; operandA = 2'd1; operandB = 2'd2; #500000
    $display("ALU_CMD_ADD  | %b       %b %b | %b %b %b %b | 11 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_ADD #2: -1 + (-2) = -5
    command = `ALU_CMD_ADD; operandA = 2'b11; operandB = 2'b10; #500000
    $display("ALU_CMD_ADD  | %b       %b %b | %b %b %b %b | 01 1 0 1", command, operandA, operandB, result, carryout, zero, overflow);
  end
endmodule
