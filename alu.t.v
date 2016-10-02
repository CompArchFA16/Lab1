`timescale 1 ns / 1 ps
`include "alu.v"

/*module testALU();
    reg[31:0] operandA, operandB;
    reg[2:0] command;
    wire[31:0] result;
    wire carryout, zero, overflow;

    ALU myALU (result, carryout, zero, overflow, operandA, operandB, command);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, testALU);

    $display("   operandA   operandB   |  command   ||  zero   carryout   overflow  | result ||   Exp zero   Exp carryout   Exp overflow   |   Exp result");
    
    $display("Adder Test:");

    // this is our test bench
    operandA=32'b11;operandB=32'b101; #1000
    $display(" %b %b |  %b      ||      %b    %b    %b    %b   |     %b     ||     0     0     0     |   0 ", operandA, operandB, command, zero, carryout, overflow, result);

    $display("Control Test:");
    operandA=32'b11;operandB=32'b101; #1000
    $display(" %b %b |  %b      ||      %b    %b    %b    %b   |     %b     ||     0     0     0     |   0 ", operandA, operandB, command, zero, carryout, overflow, result);
    end
endmodule*/


module testadd();
    reg[31:0] a, b;
    wire[31:0] result;


    adder32 myALU (result, a, b);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, testadd);


    
    $display("Adder Test:");
    $display("     a          b     |   result   ||   Exp result");

    a='h0;b='h0; #1000
    $display(" %h   %h  |  %h  ||    00000000", a, b, result);
    a='h0;b='h1; #1000
    $display(" %h   %h  |  %h  ||    00000001", a, b, result);
    a='h1;b='h1; #1000
    $display(" %h   %h  |  %h  ||    00000002", a, b, result);
    a='h1100010;b='h0101010; #1000
    $display(" %h   %h  |  %h  ||    01201020", a, b, result);
    a='h11111111;b='h1; #1000
    $display(" %h   %h  |  %h  ||    11111112", a, b, result);
    a='h92946327;b='h90997372; #1000
    $display(" %h   %h  |  %h  ||    9196eb4c", a, b, result);


    end
endmodule

/*module testsubtract();
    reg[31:0] a, b;
    wire[31:0] result;


    subtract32 myALU (result, a, b);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("sub.vcd");
    $dumpvars(0, testsubtract);


    
    $display("Subtract Test:");
    $display("     a          b     |   result   ||   Exp result");

    a='h111;b='h101; #1000
    $display(" %h    %h |  %h  ", a, b, result);


    end
endmodule*/

/*module testsubtract();
    reg[31:0] a, b;
    wire[31:0] result;


    subtract32 myALU (result, a, b);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("sub.vcd");
    $dumpvars(0, testsubtract);


    
    $display("Subtract Test:");
    $display("     a          b     |   result   ||   Exp result");

    a='h111;b='h101; #1000
    $display(" %h    %h |  %h  ", a, b, result);


    end
endmodule*/

/*module testxor();
    reg[31:0] a, b;
    wire[31:0] result;


    xor32 myALU (result, a, b);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("xor.vcd");
    $dumpvars(0, testxor);


    
    $display("Subtract Test:");
    $display("     a          b     |   result   ||   Exp result");

    a='h111;b='h101; #1000
    $display(" %h    %h |  %h  ", a, b, result);


    end
endmodule*/