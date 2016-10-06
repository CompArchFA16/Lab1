// Multiplexer testbench
`include "alu.v"
`include "mux.v"
`include "adder.v"
`include "gates.v"

module test_alu_4bit ();
    reg[3:0] operandA, operandB;
    reg[2:0] command;
    wire[3:0] result;
    wire carryout, zero, overflow;

    ALU_4bit test(result, carryout, zero, overflow, operandA, operandB, command);

    initial begin
    $dumpfile("alu_4bit.vcd");
    $dumpvars;

    // Test pattern stimulus
    $display(" Cm  |    A     B |  Out | Cout  OF | Case");

    // Value of selected bit = 1
    $display("----------------------------------------------------");
    operandA= 4'b1010; operandB = 4'b1100; command = `NAND; #1000
    $display(" %b | %b  %b | %b |    %b   %b | NAND", command, operandA, operandB, result, carryout, overflow);
    operandA= 4'b1010; operandB = 4'b1100; command = `AND; #1000
    $display(" %b | %b  %b | %b |    %b   %b | AND", command, operandA, operandB, result, carryout, overflow);
    operandA= 4'b1010; operandB = 4'b1100; command = `NOR; #1000
    $display(" %b | %b  %b | %b |    %b   %b | NOR", command, operandA, operandB, result, carryout, overflow);
    operandA= 4'b1010; operandB = 4'b1100; command = `OR; #1000
    $display(" %b | %b  %b | %b |    %b   %b | OR", command, operandA, operandB, result, carryout, overflow);
    operandA= 4'b1010; operandB = 4'b1100; command = `XOR; #1000
    $display(" %b | %b  %b | %b |    %b   %b | XOR", command, operandA, operandB, result, carryout, overflow);

    $display("------------------------------------------------------------------------");
    $display(" Cm  |    A     B |  Out | Cout  OF | Case");
    operandA=4'b1111; operandB=4'b1111; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1011; operandB=4'b1011; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1110; operandB=4'b1100; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1111; operandB=4'b1000; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0011; operandB=4'b0011; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0101; operandB=4'b0101; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0001; operandB=4'b0010; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0111; operandB=4'b0010; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0001; operandB=4'b1000; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0001; operandB=4'b1111; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0111; operandB=4'b1001; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0000; operandB=4'b0000; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0000; operandB=4'b1111; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0000; operandB=4'b0111; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1111; operandB=4'b0000; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0111; operandB=4'b0000; command = `ADD; #1000
    $display(" %b | %b  %b | %b |    %b   %b | ADD", command, operandA, operandB, result, carryout, overflow);

    // subtraction
    $display("------------------------------------------------------------------------");
    $display(" Cm  |    A     B |  Out | Cout  OF | Case");
    operandA=4'b1111; operandB=4'b0001; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1011; operandB=4'b0101; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1110; operandB=4'b0100; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1111; operandB=4'b1000; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0011; operandB=4'b1101; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0101; operandB=4'b1011; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0001; operandB=4'b1110; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0111; operandB=4'b1110; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0001; operandB=4'b1000; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0001; operandB=4'b0001; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0111; operandB=4'b0111; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0000; operandB=4'b0000; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0000; operandB=4'b0001; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0000; operandB=4'b1001; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1111; operandB=4'b0000; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0111; operandB=4'b0000; command = `SUB; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SUB", command, operandA, operandB, result, carryout, overflow);

    // slt
    $display("------------------------------------------------------------------------");
    $display(" Cm  |    A     B |  Out | Cout  OF | Case");
    operandA=4'b0001; operandB=4'b0011; command = `SLT; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SLT", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1011; operandB=4'b0010; command = `SLT; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SLT", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1100; operandB=4'b1111; command = `SLT; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SLT", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0101; operandB=4'b0011; command = `SLT; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SLT", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0010; operandB=4'b1101; command = `SLT; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SLT", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1111; operandB=4'b1010; command = `SLT; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SLT", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b1100; operandB=4'b0101; command = `SLT; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SLT", command, operandA, operandB, result, carryout, overflow);
    operandA=4'b0101; operandB=4'b1100; command = `SLT; #1000
    $display(" %b | %b  %b | %b |    %b   %b | SLT", command, operandA, operandB, result, carryout, overflow);

    // Tests the zero functionality
    $display("----------------------------------------------------");
    $display(" Cm  |    A     B | A - B | Zero | Case");
    operandA= 4'b1111; operandB = 4'b1111; command = `SUB; #1000
    $display(" %b | %b  %b |  %b |    %b | A-B==0", command, operandA, operandB, result, zero);
    operandA= 4'b1111; operandB = 4'b0000; command = `SUB; #1000
    $display(" %b | %b  %b |  %b |    %b | A-B!=0", command, operandA, operandB, result, zero);
    end

endmodule
