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

    // Our code here.
  end
endmodule
