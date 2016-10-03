// ALU testbench
`timescale 1 ns / 1 ps
`include "alu.v"

// Define ALU command codes
`define CMD_ADD  3'd0
`define CMD_SUB  3'd1
`define CMD_XOR  3'd2
`define CMD_SLT  3'd3
`define CMD_AND  3'd4
`define CMD_NAND 3'd5
`define CMD_NOR  3'd6
`define CMD_OR   3'd7

module testALU();
  reg[31:0] a, b;       // Stored inputs to adder
  reg[2:0] cmd;         // Command for ALU
  wire[31:0] res;       // Output display options
  wire cout;            // Carry out from ALU
  wire ofl;             // Overflow from ALU
  wire zero;            // Whether the result is zero

  ALU alu(
    .res    (res),
    .cout   (cout),
    .ofl    (ofl),
    .zero   (zero),
    .a      (a),
    .b      (b),
    .cmd    (cmd)
  );

  initial begin
    $dumpfile("testALU.vcd");
    $dumpvars(0, testALU);

    $display("--------------------------------------------------------------------------------------");
    $display("TESTS FOR ADD");
    $display("--------------------------------------------------------------------------------------");
    cmd=`CMD_ADD;

    a=0; b=0; #2000;
    $display("ADD   | A: %b %b %b %b  B: %b %b %b %b", a[31:24], a[23:16], a[15:8], a[7:0], b[31:24], b[23:16], b[15:8], b[7:0]);
    $display("  ACT | R: %b %b %b %b  C: %b  O: %b  Z: %b", res[31:24], res[23:16], res[15:8], res[7:0], cout, ofl, zero);
    $display("  EXP | R: 00000000 00000000 00000000 00000000  C: 0  O: 0  Z: 0");

    a=72738; b=-125; #2000;
    $display("ADD   | A: %b %b %b %b  B: %b %b %b %b", a[31:24], a[23:16], a[15:8], a[7:0], b[31:24], b[23:16], b[15:8], b[7:0]);
    $display("  ACT | R: %b %b %b %b  C: %b  O: %b  Z: %b", res[31:24], res[23:16], res[15:8], res[7:0], cout, ofl, zero);
    $display("  EXP | R: 00000000 00000001 00011011 10100101  C: 0  O: 0  Z: 0");

    $display("--------------------------------------------------------------------------------------");
    $display("TESTS FOR SUB");
    $display("--------------------------------------------------------------------------------------");
    cmd=`CMD_SUB;

    a=2; b=1; #2000;
    $display("SUB   | A: %b %b %b %b  B: %b %b %b %b", a[31:24], a[23:16], a[15:8], a[7:0], b[31:24], b[23:16], b[15:8], b[7:0]);
    $display("  ACT | R: %b %b %b %b  C: %b  O: %b  Z: %b", res[31:24], res[23:16], res[15:8], res[7:0], cout, ofl, zero);
    $display("  EXP | R: 00000000 00000000 00000000 00000001  C: 0  O: 0  Z: 0");
  end

endmodule
