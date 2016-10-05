// Set output to true, if A < B
module slt_32bit
(
  output result,
  input overflow,
  input carryout,
  input A, B
);

  wire w0, w1, w2, w3, w4, w5, w6, w7, w8;

  not #10 inv0(w0, overflow);
  not #10 inv1(w1, carryout);
  not #10 inv2(w2, w6);
  not #10 inv3(w4, w7);
  not #10 inv4(result, w5);
  not #10 inv5(w8, B);

  nand #30 nand0(w6, w0, w1, w3);
  nand #30 nand1(w7, carryout, w8, A);
  nor #20 nor0(w5, w2, w4);
  Xor_1bit(w3, A, B);
endmodule
