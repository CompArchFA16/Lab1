`timescale 1 ns / 1 ps
`include "zeroflag.v"

module testAND();

    reg[31:0] a, b;
    reg[2:0] command;
    wire[31:0] result;
    wire carryout, overflow, zero;

    ANDfunction AND_alu(result, a, b);

    initial begin
    $display("----------------------------------------------------------------------------------");
    $display("AND");
    $display("zero");
    a=32'h00000000;b=32'h00000000;command=3'b000; #1000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a&b);
    $display("other");
    a=32'h01011111;b=32'h10101100;command=3'b000; #1000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a&b);
    a=32'h11110000;b=32'h10101010;command=3'b000; #1000
    $display("%h %h %b     | %h %b        %b    %b        | %h", a, b, command, result, carryout, zero, overflow, a&b);

end
endmodule
