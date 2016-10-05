`timescale 1 ns / 1 ps
`include "32bitGates.v"

module test32bitGates ();

  wire [31:0] AnandB;
  wire [31:0] AnorB;
  wire [31:0] AandB;
  wire [31:0] AorB;
  wire [31:0] AxorB; 
  reg [31:0] A, B;
 
  nand32 testnand32(AnandB, A, B);
  nor32 testnor2(AnorB, A, B);
  and32 testand32(AandB, A, B);
  or32 testor32(AorB, A, B);
  xor32 testxor32(AxorB, A, B);

    initial begin
    $display("                A                                      B                     |                   out      ");
    // NAND
    A=4'b0000; B=4'b0000; #1000
    $display("NAND %b  %b  |  %b ", A, B, AnandB);
    A=4'b1111; B=4'b1111; #1000
    $display("NAND %b  %b  |  %b ", A, B, AnandB);
    A=4'b0000; B=4'b1111; #1000
    $display("NAND %b  %b  |  %b ", A, B, AnandB);
    A=4'b0101; B=4'b1011; #1000
    $display("NAND %b  %b  |  %b ", A, B, AnandB);
    
    // NOR
    A=4'b0000; B=4'b0000; #1000
    $display("NOR  %b  %b  |  %b ", A, B, AnorB);
    A=4'b1111; B=4'b1111; #1000
    $display("NOR  %b  %b  |  %b ", A, B, AnorB);
    A=4'b0000; B=4'b1111; #1000
    $display("NOR  %b  %b  |  %b ", A, B, AnorB);
    A=4'b0101; B=4'b1011; #1000
    $display("NOR  %b  %b  |  %b ", A, B, AnorB);
    
    // AND
    A=4'b0000; B=4'b0000; #1000
    $display("AND  %b  %b  |  %b ", A, B, AandB);
    A=4'b1111; B=4'b1111; #1000
    $display("AND  %b  %b  |  %b ", A, B, AandB);
		A=4'b0000; B=4'b1111; #1000
    $display("AND  %b  %b  |  %b ", A, B, AandB);
    A=4'b0101; B=4'b1011; #1000
    $display("AND  %b  %b  |  %b ", A, B, AandB);

    // OR
    A=4'b0000; B=4'b0000; #1000
    $display("OR   %b  %b  |  %b ", A, B, AorB);
    A=4'b1111; B=4'b1111; #1000
    $display("OR   %b  %b  |  %b ", A, B, AorB);
    A=4'b0000; B=4'b1111; #1000
    $display("OR   %b  %b  |  %b ", A, B, AorB);
    A=4'b0101; B=4'b1011; #1000
    $display("OR   %b  %b  |  %b ", A, B, AorB);
    
    // XOR
    A=4'b0000; B=4'b0000; #1000
    $display("XOR  %b  %b  |  %b ", A, B, AxorB);
    A=4'b1111; B=4'b1111; #1000
    $display("XOR  %b  %b  |  %b ", A, B, AxorB);
    A=4'b0000; B=4'b1111; #1000
    $display("XOR  %b  %b  |  %b ", A, B, AxorB);
    A=4'b0101; B=4'b1011; #1000
    $display("XOR  %b  %b  |  %b ", A, B, AxorB);
    end

endmodule
