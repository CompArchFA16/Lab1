`timescale 1 ns / 1 ps
`include "zeroflag.v"

module testZero();
    reg [31:0] a;
    wire zeroFlag;

     FlagZero flagzero(zeroFlag, a);

     initial begin
     $display("----------------------------------------------------------------------------------");
     $display("Zero flag");
     $display("zero");
     a=32'h00000000;  #100000
     $display("   %h      |    %h      |    %h     ", a, zeroFlag, 1);
     $display("other");
     a=32'h01011111; #100000
     $display("   %h      |    %h      |    %h     ", a, zeroFlag, 0);
     a=32'h11110000; #100000
     $display("   %h      |    %h      |    %h     ", a, zeroFlag, 0);
     a=32'h10010111; #100000
     $display("   %h      |    %h      |    %h     ", a, zeroFlag, 0);

end
endmodule
