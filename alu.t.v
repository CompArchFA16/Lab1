// ALU test bench

//The test bench should:
//Instantiate a copy of the device it is testing (Device Under Test = DUT)
//Show what the truth table should be
//Show what the truth table is

// Adder testbench
//`timescale 1 ns / 1 ps
`include "adder.v"
//`include "alu.v"
//`include "slt.v"

module testFullAdder();
    reg[31:0] a, b;
    reg[2:0] command;
    wire[31:0] result;
    wire carryout, overflow, zero;

    //toggle between these to test different modules found in adder.v
    //behavioralFullAdder adder(sum, carryout, a, b, carryin);
    //structuralFullAdder adder (sum, carryout, a, b, carryin);
    //Adder32bit adder(overflow, carryout, zero, result, a, b, 0,0);
    //SLTfunction slt(result, a, b);

    initial begin
    //$dumpfile("alu.vcd"); //for gtkwave waveform analysis
    //$dumpvars;

    //Test cases
    $display("A        B        Command | Result   Carryout Zero Overflow | Expected Output(hex)");
    $display("----------------------------------------------------------------------------------");

    $display("Adder");
    $display("pos+pos, no overflow");
    a=32'h00000111;b=32'h00000001;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 
    a=32'h00123456;b=32'h01234567;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 

    $display("pos+neg, no overflow");
    // In hex, a number is negative if the most significant bit is 8 or above
    a=32'h00110011;b=32'h80011010;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 
    a=32'h0fff1234;b=32'h988abcde;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 

    $display("neg+neg, no overflow");
    // In hex, a number is negative if the most significant bit is 8 or above
    a=32'hf0000001;b=32'hf0110001;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 
    a=32'hd2849bdf;b=32'heabfe284;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 

    $display("overflow");
    a=32'h79836472;b=32'h394820db;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 
    a=32'he928bdc3;b=32'h882ba9de;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 

    $display("zero");
    a=32'h00000000;b=32'h00000000;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 
    a=32'h00000001;b=32'hffffffff;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a+b); 

    $display("----------------------------------------------------------------------------------");
    $display("Subtraction");
    $display("pos-pos, no overflow");
    a=32'h00001111;b=32'h00000001;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 
    a=32'h59db28ea;b=32'h01234567;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 

    $display("neg-neg, no overflow");
    // In hex, a number is negative if the most significant bit is 8 or above
    a=32'hf829eba6;b=32'he83ba7ed;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 
    a=32'hf0101010;b=32'hf0000001;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 

    $display("pos-neg, no overflow");
    // In hex, a number is negative if the most significant bit is 8 or above
    a=32'h00000001;b=32'hf0110001;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 
    a=32'h10ab38de;b=32'he27dbe82;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 

    $display("neg-pos, no overflow");
    a=32'hf28d9b38;b=32'h394820db;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 
    a=32'he928bdc3;b=32'h282ba9de;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 

    $display("pos-neg, overflow");
    // In hex, a number is negative if the most significant bit is 8 or above
    a=32'h7fffffff;b=32'h80000000;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 
    a=32'h58294726;b=32'hf9274928;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 

    $display("neg-pos, overflow");
    a=32'h80000000;b=32'h7fffffff;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 
    a=32'hf9274928;b=32'h58294726;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 

    $display("zero");
    a=32'h00000000;b=32'h00000000;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 
    a=32'h00000001;b=32'h00000001;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 
    a=32'hffffffff;b=32'hffffffff;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a-b); 

    $display("----------------------------------------------------------------------------------");
    $display("XOR");
    $display("zero");
    a=32'h00000000;b=32'h00000000;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a^b);
    $display("other");
    a=32'h01011111;b=32'h10101100;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a^b);
    a=32'h11110000;b=32'h10101010;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a^b);

    $display("----------------------------------------------------------------------------------");
    $display("SLT");
    $display("A>B");
    a=32'h00000001;b=32'h00000000;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, 0);
    $display("other");
    a=32'h31011111;b=32'h10101100;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, 0);

    $display("A<B");
    a=32'h00000000;b=32'h00000001;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, 1);
    $display("other");
    a=32'h01011111;b=32'h10101100;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, 1);

    $display("A=B");
    a=32'h00000000;b=32'h00000000;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, 0);
    $display("other");
    a=32'h01011111;b=32'h01011111;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, 0);
    
    
    $display("----------------------------------------------------------------------------------");
    $display("AND");
    $display("zero");
    a=32'h00000000;b=32'h00000000;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a&b);
    $display("other");
    a=32'h01011111;b=32'h10101100;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a&b);
    a=32'h11110000;b=32'h10101010;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a&b);


    $display("----------------------------------------------------------------------------------");
    $display("NAND");
    $display("zero");
    a=32'h00000000;b=32'h00000000;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, ~(a&b));
    $display("other");
    a=32'h01011111;b=32'h10101100;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, ~(a&b));
    a=32'h11110000;b=32'h10101010;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, ~(a&b));


    $display("----------------------------------------------------------------------------------");
    $display("NOR");
    $display("zero");
    a=32'h00000000;b=32'h00000000;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, ~(a|b));
    $display("other");
    a=32'h01011111;b=32'h10101100;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, ~(a|b));
    a=32'h11110000;b=32'h10101010;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, ~(a|b));


    $display("----------------------------------------------------------------------------------");
    $display("OR");
    $display("zero");
    a=32'h00000000;b=32'h00000000;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a|b);
    $display("other");
    a=32'h01011111;b=32'h10101100;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a|b);
    a=32'h11110000;b=32'h10101010;command=3'b000; #10000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a|b);


    end

endmodule
