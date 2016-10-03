// ALU test bench

//The test bench should:
//Instantiate a copy of the device it is testing (Device Under Test = DUT)
//Show what the truth table should be
//Show what the truth table is

// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"
`include "alu.v"

module testFullAdder();
    reg[31:0] a, b;
    reg[2:0] command;
    wire[31:0] result;
    wire carryout, overflow, zero;

    //toggle between these to test different modules found in adder.v
    //behavioralFullAdder adder(sum, carryout, a, b, carryin);
    //structuralFullAdder adder (sum, carryout, a, b, carryin);
    Adder32bit adder(overflow, carryout, zero, result, a, b, 0);

    initial begin
    //$dumpfile("alu.vcd"); //for gtkwave waveform analysis
    //$dumpvars;

    //Test cases
    $display("A        B        Command | Result   Carryout Zero Overflow | Expected Output(hex)");
    $display("----------------------------------------------------------------------------------");

    $display("Adder");
    $display("pos+pos, no overflow");
    a=32'h00000111;b=32'h00000001;command=3'b000; #1000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 
    a=32'h00123456;b=32'h01234567;command=3'b000; #1000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 

    $display("pos+neg, no overflow");
    // In hex, a number is negative if the most significant bit is 8 or above
    a=32'h00110011;b=32'h80011010;command=3'b000; #1000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 
    a=32'h0fff1234;b=32'h988abcde;command=3'b000; #1000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 

    $display("neg+neg, no overflow");
    // In hex, a number is negative if the most significant bit is 8 or above
    a=32'hf0000001;b=32'hf0110001;command=3'b000; #1000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 
    a=32'hd2849bdf;b=32'heabfe284;command=3'b000; #1000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 

    $display("overflow");
    a=32'h79836472;b=32'h394820db;command=3'b000; #1000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 
    a=32'he928bdc3;b=32'h882ba9de;command=3'b000; #1000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 

    $display("----------------------------------------------------------------------------------");
    $display("Subtraction");

    end

endmodule
