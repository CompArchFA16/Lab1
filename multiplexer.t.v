// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
    reg choice0, choice1;
    reg in0, in1, in2, in3;
    wire out;

    // twoBitMultiplexer multiplexer0(out, choice, in0, in1);
    // initial begin
    // $display("C | I0 I1 | O | Expected Output");
    // choice=0; in0=1'b0 ; in1=1'bx; #10000
    // $display("%b | %b  %b  | %b | 0", choice, in0, in1, out);
    // choice=1; in0=1'bx ; in1=1'b1; #10000
    // $display("%b | %b  %b  | %b | 0", choice, in0, in1, out);
    // end

    fourBitMultiplexer multiplexer1(out, choice0, choice1, in0, in1, in2, in3);

    initial begin
    $display("A0 A1| I0 I1 I2 I3 |  O | Expected Output");
    choice0=0;choice1=0; in0=1'b0 ; in1=1'bx ; in2=1'bx ; in3=1'bx ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 0", choice0, choice1, in0, in1, in2, in3, out);
    choice0=0;choice1=0; in0=1'b1 ; in1=1'bx ; in2=1'bx ; in3=1'bx ;#1000
    $display("%b  %b |  %b  %b  %b  %b |  %b | 1", choice0, choice1, in0, in1, in2, in3, out);
    choice0=1;choice1=0; in0=1'bx ; in1=1'b0 ; in2=1'bx ; in3=1'bx ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 0", choice0, choice1, in0, in1, in2, in3, out);
    choice0=1;choice1=0; in0=1'bx ; in1=1'b1 ; in2=1'bx ; in3=1'bx ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 1", choice0, choice1, in0, in1, in2, in3, out);
    choice0=0;choice1=1; in0=1'bx ; in1=1'bx ; in2=1'b0 ; in3=1'bx ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 0",  choice0, choice1, in0, in1, in2, in3, out);
    choice0=0;choice1=1; in0=1'bx ; in1=1'bx ; in2=1'b1 ; in3=1'bx ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 1", choice0, choice1, in0, in1, in2, in3, out);
    choice0=1;choice1=1; in0=1'bx ; in1=1'bx ; in2=1'bx ; in3=1'b0 ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 0", choice0, choice1, in0, in1, in2, in3, out);
    choice0=1;choice1=1; in0=1'bx ; in1=1'bx ; in2=1'bx ; in3=1'b1 ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 1", choice0, choice1, in0, in1, in2, in3, out);
    end

endmodule
