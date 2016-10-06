// Multiplexer testbench
`include "alu.v"
`include "mux.v"
`include "adder.v"
`include "gates.v"

module test_alu_32bit ();
    reg[31:0] operandA, operandB;
    reg[2:0] command;
    wire[31:0] result;
    wire carryout, zero, overflow;

    ALU test(result, carryout, zero, overflow, operandA, operandB, command);

    initial begin
    $dumpfile("alu_32bit.vcd");
    $dumpvars;

    // Test pattern stimulus
    $display(" Cm  |        A         B |      Out | Cout  OF | Case");

    $display("------------------------------------------------------");
    operandA= 32'haaaaaaaa; operandB = 32'hcccccccc; command = `NAND; #1000
    $display(" %b | %h  %h | %h |    %h   %h | NAND", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'haaaaaaaa; operandB = 32'hcccccccc; command = `AND; #1000
    $display(" %b | %h  %h | %h |    %h   %h | AND", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'haaaaaaaa; operandB = 32'hcccccccc; command = `NOR; #1000
    $display(" %b | %h  %h | %h |    %h   %h | NOR", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'haaaaaaaa; operandB = 32'hcccccccc; command = `OR; #1000
    $display(" %b | %h  %h | %h |    %h   %h | OR", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'haaaaaaaa; operandB = 32'hcccccccc; command = `XOR; #1000
    $display(" %b | %h  %h | %h |    %h   %h | XOR", command, operandA, operandB, result, carryout, overflow);

    $display("------------------------------------------------------");
    operandA= 32'h10000000; operandB = 32'h20000000; command = `ADD; #5000
    $display(" %b | %h  %h | %h |    %h   %h | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'he0000000; operandB = 32'hc0000000; command = `ADD; #5000
    $display(" %b | %h  %h | %h |    %h   %h | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'h70000000; operandB = 32'h20000000; command = `ADD; #5000
    $display(" %b | %h  %h | %h |    %h   %h | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'hf0000000; operandB = 32'h80000000; command = `ADD; #5000
    $display(" %b | %h  %h | %h |    %h   %h | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'h10000000; operandB = 32'hf0000000; command = `ADD; #5000
    $display(" %b | %h  %h | %h |    %h   %h | ADD", command, operandA, operandB, result, carryout, overflow);

    $display("------------------------------------------------------");
    operandA= 32'h10000000; operandB = 32'he0000000; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'he0000000; operandB = 32'h40000000; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'h70000000; operandB = 32'he0000000; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'hf0000000; operandB = 32'h80000000; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'h10000000; operandB = 32'h80000000; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SUB", command, operandA, operandB, result, carryout, overflow);
    end
endmodule
