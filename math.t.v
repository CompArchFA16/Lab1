// FullAdder4bit testbench
`timescale 1 ns / 1 ps
`include "math.v"

module testFullAdder16bit ();

    wire [31:0] sum; // Only wire [3:0] are used for sum, a, b
    reg [31:0] a, b; // Extra bit for making sure that a, b reaches max value in the "for" loop and it doesn't become an infinte loop
    wire carryout, overflow;

    FullMath32bit fa16b(sum, carryout, overflow, a, b, 1);

    initial begin

    $display(" a_10   b _10 |overflow carryout   sum ");
        a=32'h0; b=32'h0; #10000;
        $display(" 0        0  |   %b        %b       %b",  overflow, carryout, sum);
        a=32'hffffffff; b=32'hffffffff; #10000;
        $display(" -1       -1 |   %b        %b       %b",  overflow, carryout, sum);
        a=32'h0fffffff; b=32'h0fffffff; #10000;
        $display("  max     max|   %b        %b       %b",  overflow, carryout, sum);
        a=32'hf000000f; b=32'hf000000f; #10000;
        $display(" min     min |   %b        %b       %b",  overflow, carryout, sum);
        a=32'h00000004; b=32'h00000004; #10000;
        $display("  4       4  |   %b        %b       %b",  overflow, carryout, sum);
        a=32'h12341234; b=32'h12341234; #10000;
        $display(" ?      ?    |   %b        %b       %b",  overflow, carryout, sum);
        a=32'hffffffff; b=32'h00000001; #10000;
        $display(" -1    1     |   %b        %b       %b",  overflow, carryout, sum);
    end

endmodule