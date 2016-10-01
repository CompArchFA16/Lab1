`include "alu.v"

`define ADD  3'd0 // Together
`define SUB  3'd1 // David
`define XOR  3'd2 // Bonnie
`define SLT  3'd3 // Bonnie
`define AND  3'd4 // Zarin
`define NAND 3'd5 // Zarin
`define NOR  3'd6 // David
`define OR   3'd7 // Bonnie

module testAlu();

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
    $dumpfile("alu.vcd");
    $dumpvars;
    $display("name | command operandA operandB | result carryout zero overflow | EResult ECarryout EZero EOverflow");

    // ADD =====================================================================

    // ADD #1: 1 + 2 = 3
    command = `ADD; operandA = 32'd1; operandB = 32'd2;
    $display("ADD | %h %h %h | %d %b %b %b | 3 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ADD #2: -1 + (-4) = -5
    command = `ADD; operandA = 32'hFF; operandB = 32'hF9;
    $display("ADD | %h %h %h | %d %b %b %b | hF8 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ADD #3: -1 + 2 = 1
    command = `ADD; operandA = 32'hFF; operandB = 32'h02;
    $display("ADD | %h %h %h | %d %b %b %b | 2 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ADD #4: h40000001 + h40000001 = h80000002
    command = `ADD; operandA = 32'h80000001; operandB = 32'h80000001;
    $display("ADD | %h %h %h | %d %b %b %b | h80000002 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // SUB =====================================================================

    // SUB #1: 3 - 2 = 1

    // SUB #2: -2 - 3 = -5

    // SUB #3: 3 - 3 = 0

    // SUB #4: -5 - (-5) = 0

    // SUB #4: h80000001 - h00000001 = h80000002

    // XOR =====================================================================

    // SLT =====================================================================

    // AND =====================================================================
    $display("name| command operandA operandB | result | EResult");
    
    //AND #1: 0 & 0 = 0
    command = `AND; operandA = 32'd0; operandB = 32'd0;
    $display("AND | %h %h %h | %d 0 ", command, operandA, operandB, result);

    //AND #1: 0 & 1 = 0
    command = `AND; operandA = 32'd0; operandB = 32'd1;
    $display("AND | %h %h %h | %d 0 ", command, operandA, operandB, result);

    //AND #1: 1 & 0 = 0
    command = `AND; operandA = 32'd1; operandB = 32'd0;
    $display("AND | %h %h %h | %d 0 ", command, operandA, operandB, result);

    //AND #1: 1 & 1 = 1
    command = `AND; operandA = 32'd1; operandB = 32'd1;
    $display("AND | %h %h %h | %d 1 ", command, operandA, operandB, result);

    // NAND ====================================================================

    //AND #1: 0 & 0 = 0
    command = `NAND; operandA = 32'd0; operandB = 32'd0;
    $display("NAND| %h %h %h | %d 1 ", command, operandA, operandB, result);

    //AND #1: 0 & 1 = 0
    command = `NAND; operandA = 32'd0; operandB = 32'd1;
    $display("NAND| %h %h %h | %d 1 ", command, operandA, operandB, result);

    //AND #1: 1 & 0 = 0
    command = `NAND; operandA = 32'd1; operandB = 32'd0;
    $display("NAND| %h %h %h | %d 1 ", command, operandA, operandB, result);

    //AND #1: 1 & 1 = 1
    command = `NAND; operandA = 32'd1; operandB = 32'd1;
    $display("NAND| %h %h %h | %d 0 ", command, operandA, operandB, result);
    

    // NOR =====================================================================

    // OR ======================================================================
  end
endmodule
