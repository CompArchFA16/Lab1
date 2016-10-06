`timescale 1 ns / 1 ps
`include "zeroflag.v"

module testXOR();
     reg[31:0] a;
     wire zeroFlag;

     FlagZero flagzero(a, zeroFlag);

     initial begin
     $display("----------------------------------------------------------------------------------");
     $display("Zero flag");
     $display("zero");
     a=32'h00000000;  #1000
     $display("   %h      |    %h      |    %h     ", a, zeroFlag, 1);
     $display("other");
     a=32'h01011111; #1000
     $display("   %h      |    %h      |    %h     ", a, zeroFlag, 1);
     a=32'h11110000; #1000
     $display("   %h      |    %h      |    %h     ", a, zeroFlag, 1);

end
endmodule
