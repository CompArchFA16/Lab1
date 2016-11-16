`include "alu_commands.v"
`include "alu.v"
// `timescale 1 ns / 1 ps

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
    $display("name         | command A B | result carryout zero overflow | EResult ECarryout EZero EOverflow");

    // ALU_CMD_ADD =============================================================

    // ALU_CMD_ADD #1: 1 + 2 = 3
    command = `ALU_CMD_ADD; operandA = 32'd1; operandB = 32'd2; #500000
    $display("ALU_CMD_ADD  | %h   %h %h | %h %b %b %b | 3 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_ADD #2: -1 + (-4) = -5
    command = `ALU_CMD_ADD; operandA = 32'hFF; operandB = 32'hF9; #500000
    $display("ALU_CMD_ADD  | %h   %h %h | %h %b %b %b | h1F8 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_ADD #3: -1 + 2 = 1
    command = `ALU_CMD_ADD; operandA = 32'hFF; operandB = 32'h02; #500000
    $display("ALU_CMD_ADD  | %h   %h %h | %h %b %b %b | 101 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_ADD #4: h40000001 + h40000001 = h80000002
    command = `ALU_CMD_ADD; operandA = 32'h80000001; operandB = 32'h80000001; #500000
    $display("ALU_CMD_ADD  | %h   %h %h | %h %b %b %b | h80000002 1 0 1", command, operandA, operandB, result, carryout, zero, overflow);

     // ALU_CMD_ADD #5: 0 + 0 = 0
    command = `ALU_CMD_ADD; operandA = 32'b0; operandB = 32'b0; #500000
    $display("ALU_CMD_ADD  | %h   %h %h | %h %b %b %b | 0 0 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_ADD #4: -1 + 1 = 0
    command = `ALU_CMD_ADD; operandA = 32'h0; operandB = 32'h0; #500000
    command = `ALU_CMD_ADD; operandA = 32'hffffffff; operandB = 32'h1; #500000
    $display("ALU_CMD_ADD  | %h   %h %h | %h %b %b %b | h0 1 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_SUB =============================================================
    $display(, ,) ;
    // ALU_CMD_SUB #1: 3 - 2 = 1
    command = `ALU_CMD_SUB; operandA = 32'd3; operandB = 32'd2; #500000
    $display("ALU_CMD_SUB  | %h   %h %h | %h %b %b %b | 1 1 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_SUB #2: hFFFFFFFE - 3 = FFFFFFFB
    command = `ALU_CMD_SUB; operandA = 32'hFFFFFFFE; operandB = 32'd3; #500000
    $display("ALU_CMD_SUB  | %h   %h %h | %h %b %b %b | FFFFFFFB 1 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_SUB #3: 3 - 3 = 0
    command = `ALU_CMD_SUB; operandA = 32'd3; operandB = 32'd3; #500000
    $display("ALU_CMD_SUB  | %h   %h %h | %h %b %b %b | 0 1 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_SUB #4: -5 - (-5) = 0
    command = `ALU_CMD_SUB; operandA = 32'hFFFFFFFC; operandB = 32'hFFFFFFFC; #500000
    $display("ALU_CMD_SUB  | %h   %h %h | %h %b %b %b | 0 1 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_SUB #4: h80000001 - h00000001 = h80000002
    command = `ALU_CMD_SUB; operandA = 32'h80000001; operandB = 32'h00000001; #500000
    $display("ALU_CMD_SUB  | %h   %h %h | %h %b %b %b | h80000000 1 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_SUB #4: h80000001 - h00000001 = h80000002
    command = `ALU_CMD_SUB; operandA = 32'b1; operandB = 32'b1; #500000
    $display("ALU_CMD_SUB  | %h   %h %h | %h %b %b %b | 0 1 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_ADD #4: 1 - 1 = 0
    command = `ALU_CMD_ADD; operandA = 32'h0; operandB = 32'h0; #500000
    command = `ALU_CMD_SUB; operandA = 32'h1; operandB = 32'h1; #500000
    $display("ALU_CMD_ADD  | %h   %h %h | %h %b %b %b | h0 1 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_XOR =============================================================
    $display(, ,) ;
    // ALU_CMD_XOR #1: 0 ALU_CMD_XOR 0 = 0
    command = `ALU_CMD_XOR; operandA = 32'b0; operandB = 32'b0; #500000
    $display("ALU_CMD_XOR  | %h   %h %h | %h %b %b %b | 0 0 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_XOR #2: 0 ALU_CMD_XOR 1 = 1
    command = `ALU_CMD_XOR; operandA = 32'b0; operandB = 32'b1; #500000
    $display("ALU_CMD_XOR  | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_XOR #3: 1 ALU_CMD_XOR 0 = 1
    command = `ALU_CMD_XOR; operandA = 32'b1; operandB = 32'b0; #500000
    $display("ALU_CMD_XOR  | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_XOR #4: 1 ALU_CMD_XOR 1 = 0
    command = `ALU_CMD_XOR; operandA = 32'b1; operandB = 32'b1; #500000
    $display("ALU_CMD_XOR  | %h   %h %h | %h %b %b %b | 0 0 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_SLT =============================================================
    $display(, ,) ;
    // ALU_CMD_SLT #1: 2 < 3 = 1
    command = `ALU_CMD_SLT; operandA = 32'd2; operandB = 32'd3; #500000
    $display("ALU_CMD_SLT  | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_SLT #2: 3 < 2 = 0
    command = `ALU_CMD_SLT; operandA = 32'd3; operandB = 32'd2; #500000
    $display("ALU_CMD_SLT  | %h   %h %h | %h %b %b %b | 0 1 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_SLT #3: -1 < 1 = 1
    command = `ALU_CMD_SLT; operandA = 32'hFF; operandB = 32'h01; #500000
    $display("ALU_CMD_SLT  | %h   %h %h | %h %b %b %b | 0 1 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_SLT #4: 1 < -1 = 0
    command = `ALU_CMD_SLT; operandA = 32'h01; operandB = 32'hFF; #500000
    $display("ALU_CMD_SLT  | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_AND =============================================================
    $display(, ,) ;
    //AND #1: 0 & 0 = 0
    command = `ALU_CMD_AND; operandA = 32'd0; operandB = 32'd0; #500000
    $display("ALU_CMD_AND  | %h   %h %h | %h %b %b %b | 0 0 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    //AND #1: 0 & 1 = 0
    command = `ALU_CMD_AND; operandA = 32'd0; operandB = 32'd1; #500000
    $display("ALU_CMD_AND  | %h   %h %h | %h %b %b %b | 0 0 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    //AND #1: 1 & 0 = 0
    command = `ALU_CMD_AND; operandA = 32'd1; operandB = 32'd0; #500000
    $display("ALU_CMD_AND  | %h   %h %h | %h %b %b %b | 0 0 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    //AND #1: 1 & 1 = 1
    command = `ALU_CMD_AND; operandA = 32'd1; operandB = 32'd1; #500000
    $display("ALU_CMD_AND  | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_NAND ============================================================
    $display(, ,) ;
    //ALU_CMD_NAND #1: 0 & 0 = 1
    command = `ALU_CMD_NAND; operandA = 32'h0; operandB = 32'h0; #500000
    $display("ALU_CMD_NAND | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    //ALU_CMD_NAND #1: 0 & 1 = 1
    command = `ALU_CMD_NAND; operandA = 32'h0; operandB = 32'hFFFFFFFF; #500000
    $display("ALU_CMD_NAND | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    //ALU_CMD_NAND #1: 1 & 0 = 1
    command = `ALU_CMD_NAND; operandA = 32'hFFFFFFFF; operandB = 32'h0; #500000
    $display("ALU_CMD_NAND | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    //ALU_CMD_NAND #1: 1 & 1 = 0
    command = `ALU_CMD_NAND; operandA = 32'hFFFFFFFF; operandB = 32'hFFFFFFFF; #500000
    $display("ALU_CMD_NAND | %h   %h %h | %h %b %b %b | 0 0 1 0", command, operandA, operandB, result, carryout, zero, overflow);


    // ALU_CMD_NOR =============================================================
    $display(, ,) ;
    // ALU_CMD_NOR #1: 0 ALU_CMD_NOR 0 = 0
    command = `ALU_CMD_NOR; operandA = 32'h0; operandB = 32'h0; #500000
    $display("ALU_CMD_NOR  | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_NOR #2: 0 ALU_CMD_NOR 1 = 1
    command = `ALU_CMD_NOR; operandA = 32'h0; operandB = 32'hFFFFFFFF; #500000
    $display("ALU_CMD_NOR  | %h   %h %h | %h %b %b %b | 0 0 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_NOR #3: 1 ALU_CMD_NOR 0 = 1
    command = `ALU_CMD_NOR; operandA = 32'hFFFFFFFF; operandB = 32'h0; #500000
    $display("ALU_CMD_NOR  | %h   %h %h | %h %b %b %b | 0 0 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_NOR #4: 1 ALU_CMD_NOR 1 = 1
    command = `ALU_CMD_NOR; operandA = 32'hFFFFFFFF; operandB = 32'hFFFFFFFF; #500000
    $display("ALU_CMD_NOR  | %h   %h %h | %h %b %b %b | 0 0 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // ALU_CMD_OR ==============================================================
    $display(, ,) ;
    // OR #1: 0 OR 0 = 0
    command = `ALU_CMD_OR; operandA = 32'b0; operandB = 32'b0; #500000
    $display("ALU_CMD_OR   | %h   %h %h | %h %b %b %b | 0 0 1 0", command, operandA, operandB, result, carryout, zero, overflow);

    // OR #2: 0 OR 1 = 1
    command = `ALU_CMD_OR; operandA = 32'b0; operandB = 32'b1; #500000
    $display("ALU_CMD_OR   | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // OR #3: 1 OR 0 = 1
    command = `ALU_CMD_OR; operandA = 32'b1; operandB = 32'b0; #500000
    $display("ALU_CMD_OR   | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);

    // OR #4: 1 OR 1 = 1
    command = `ALU_CMD_OR; operandA = 32'b1; operandB = 32'b1; #500000
    $display("ALU_CMD_OR   | %h   %h %h | %h %b %b %b | 1 0 0 0", command, operandA, operandB, result, carryout, zero, overflow);
  end
endmodule
