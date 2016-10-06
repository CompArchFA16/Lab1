// 32-bit ALU testbench
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

    // Basic Gates (NAND, AND, NOR, OR, XOR)
    operandA= 32'haaaaaaaa; operandB = 32'hcccccccc; command = `NAND; #1000
    $display(" %b | %h  %h | %h |    %h   %h | NAND (all cases)", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'haaaaaaaa; operandB = 32'hcccccccc; command = `AND; #1000
    $display(" %b | %h  %h | %h |    %h   %h | AND (all cases)", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'haaaaaaaa; operandB = 32'hcccccccc; command = `NOR; #1000
    $display(" %b | %h  %h | %h |    %h   %h | NOR (all cases)", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'haaaaaaaa; operandB = 32'hcccccccc; command = `OR; #1000
    $display(" %b | %h  %h | %h |    %h   %h | OR (all cases)", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'haaaaaaaa; operandB = 32'hcccccccc; command = `XOR; #1000
    $display(" %b | %h  %h | %h |    %h   %h | XOR (all cases)", command, operandA, operandB, result, carryout, overflow);

    // Addition (ADD)
    $display("------------------------------------------------------");
    $display(" Cm  |        A         B |      Out | Cout  OF | Case");
    operandA= 32'h10000000; operandB = 32'h20000000; command = `ADD; #5000
    $display(" %b | %h  %h | %h |    %h   %h | ADD ++, ~CO*~OF", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'he0000000; operandB = 32'hc0000000; command = `ADD; #5000
    $display(" %b | %h  %h | %h |    %h   %h | ADD --, CO*~OF, ", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'h70000000; operandB = 32'h20000000; command = `ADD; #5000
    $display(" %b | %h  %h | %h |    %h   %h | ADD ++, CO*~OF", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'hf0000000; operandB = 32'h80000000; command = `ADD; #5000
    $display(" %b | %h  %h | %h |    %h   %h | ADD --, CO*OF", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'h10000000; operandB = 32'hf0000000; command = `ADD; #5000
    $display(" %b | %h  %h | %h |    %h   %h | ADD +-, CO*~OF", command, operandA, operandB, result, carryout, overflow);

    // Subtraction (SUB)
    $display("------------------------------------------------------");
    $display(" Cm  |        A         B |      Out | Cout  OF | Case");
    operandA= 32'h10000000; operandB = 32'he0000000; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SUB ++, ~CO*~OF", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'he0000000; operandB = 32'h40000000; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SUB --, CO*~OF", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'h70000000; operandB = 32'he0000000; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SUB ++, ~CO*OF", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'hf0000000; operandB = 32'h80000000; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SUB --, CO*OF", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'h10000000; operandB = 32'h80000000; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SUB +-, CO*~OF", command, operandA, operandB, result, carryout, overflow);

    // Set if less than (SLT)
    $display("------------------------------------------------------");
    $display(" Cm  |        A         B |      Out | Cout  OF | Case");
    operandA= 32'h80000000; operandB = 32'hffffffff; command = `SLT; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SLT --, A<B", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'hffffffff; operandB = 32'h80000000; command = `SLT; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SLT --, A>B", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'h01111111; operandB = 32'h0fffffff; command = `SLT; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SLT ++, A<B", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'h0fffffff; operandB = 32'h01111111; command = `SLT; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SLT ++, A>B", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'hf0000000; operandB = 32'h0fffffff; command = `SLT; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SLT -+, A<B", command, operandA, operandB, result, carryout, overflow);
    operandA= 32'h0fffffff; operandB = 32'hf0000000; command = `SLT; #5000
    $display(" %b | %h  %h | %h |    %h   %h | SLT +-, A>B", command, operandA, operandB, result, carryout, overflow);

    // Zero flag
    $display("------------------------------------------------------");
    $display(" Cm  |        A         B |      Out | Zero | Case");
    operandA= 32'h1234abcd; operandB = 32'h1234abcd; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %b | A-B==0", command, operandA, operandB, result, zero);
    operandA= 32'h1234abcd; operandB = 32'habcd1234; command = `SUB; #5000
    $display(" %b | %h  %h | %h |    %b | A-B!=0", command, operandA, operandB, result, zero);
    end
endmodule
