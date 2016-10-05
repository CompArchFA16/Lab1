`include "multiplexer_2_input.v"
`include "alu_addsub.v"
`timescale 1 ns / 1 ps

module testALUAddSub();

  reg operandA, operandB, carryin, ifsub;
  wire result, carryout, zero, overflow;

  ALUAddSub dut(result, carryout, zero, overflow, operandA, operandB, carryin, ifsub);

  initial begin
    $dumpfile("alu_addsub.vcd");
    $dumpvars;
    $display("operandA operandB carryin ifsub | result carryout zero overflow | eResult eCarryout eZero eOverflow");

    operandA = 1'b1; operandB = 1'b1; carryin = 1'b0; ifsub = 1'b0; #10000
    $display("%b %b %b %b | %b %b %b %b | 0 1 0 1", operandA, operandB, carryin, ifsub, result, carryout, zero, overflow);
  end
endmodule
