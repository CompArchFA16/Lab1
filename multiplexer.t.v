// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
    reg choice0, choice1;
    reg in0, in1, in2, in3;
    wire out;
    
    reg [2:0] muxindex;
    reg [31:0] addsub, resXOR, resSLT, resAND, resNAND, resOR, resNOR;
    wire [31:0] outALUmux;
    
    ALUmultiplexer alumux(outALUmux, muxindex, addsub, resXOR, resSLT, resAND, resNAND, resOR, resNOR);

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

    $display("operation| muxindex |  Actual Output  | Expected");
    muxindex=3'b000; addsub=32'hffffff12; resXOR=32'h00000034; resSLT=32'hfffff345; resAND=32'h00012343; resNAND=32'h00015983; resOR=32'h00000000; resNOR=32'h1001200; #1000 
    $display(" ADDSUB  | %b | %b | %b", muxindex, outALUmux, addsub);
    muxindex=3'b001; #1000 
    $display("   XOR   | %b | %b | %b", muxindex, outALUmux, resXOR);
    muxindex=3'b010; #1000 
    $display("   SLT   | %b | %b | %b", muxindex, outALUmux, resSLT);
    muxindex=3'b011; #1000 
    $display("   AND   | %b | %b | %b", muxindex, outALUmux, resAND);
    muxindex=3'b100; #1000 
    $display("  NAND   | %b | %b | %b", muxindex, outALUmux, resNAND);
    muxindex=3'b101; #1000 
    $display("  NOR   | %b | %b | %b", muxindex, outALUmux, resNOR);
    muxindex=3'b110; #1000 
    $display("  OR    | %b | %b | %b", muxindex, outALUmux, resOR);
    end

    
endmodule
