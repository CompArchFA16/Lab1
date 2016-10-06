// Multiplexer testbench
`include "alu.v"
`include "mux.v"
`include "adder.v"
`include "gates.v"
`include "slt.v"

module test_alu_4bit ();
    reg[3:0] operandA, operandB;
    reg[2:0] command;
    wire[3:0] result;
    wire carryout, zero, overflow;

    ALU_4bit test(result, carryout, zero, overflow, operandA, operandB, command);

    initial begin
    // Test pattern stimulus
    $display(" Cm  |    A     B |  Out | Cout  OF | Case");

    // Value of selected bit = 1
    $display("----------------------------------------------------");
    operandA= 4'b1010; operandB = 4'b1100; command = `NAND; #5000
    $display(" %b | %b  %b | %b |    %b   %b | NAND", command, operandA, operandB, result, carryout, overflow);
    operandA= 4'b1010; operandB = 4'b1100; command = `AND; #5000
    $display(" %b | %b  %b | %b |    %b   %b | AND", command, operandA, operandB, result, carryout, overflow);
    operandA= 4'b1010; operandB = 4'b1100; command = `NOR; #5000
    $display(" %b | %b  %b | %b |    %b   %b | NOR", command, operandA, operandB, result, carryout, overflow);
    operandA= 4'b1010; operandB = 4'b1100; command = `OR; #5000
    $display(" %b | %b  %b | %b |    %b   %b | OR", command, operandA, operandB, result, carryout, overflow);
    operandA= 4'b1010; operandB = 4'b1100; command = `XOR; #5000
    $display(" %b | %b  %b | %b |    %b   %b | XOR", command, operandA, operandB, result, carryout, overflow);
    end
endmodule
