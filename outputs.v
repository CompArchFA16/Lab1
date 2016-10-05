`include "mux.v"

// Computes NOR or OR
module nor_or_1bit
(
    output result,
    input a,
    input b,
    input othercontrolsignal
);

    wire nor_ab, or_ab;  // intermediate wires

    nor #20 nor_1(nor_ab, a, b);
    not #10 not_1(or_ab, nor_ab);
    mux_1bit mux_1(result, nor_ab, or_ab);
endmodule

// Computes NAND or AND
module nand_and_1bit
(
    output result,
    input a,
    input b,
    input othercontrolsignal
);

    wire nand_ab, and_ab;  // intermediate wires

    nand #20 nand_1(nand_ab, a, b);
    not #10 not_1(and_ab, nand_ab);
    mux_1bit mux_1(result, nand_ab, and_ab);
endmodule

// Computes XOR
module xor_1bit
(
    output result,
    input a,
    input b
);

    wire nand_ab, nor_ab, or_ab, nxor_ab;

    nand #20 nand1(nand_ab, a, b);
    nor  #20 nor1(nor_ab, a, b);
    not  #10 not1(or_ab, nor_ab);
    nand #20 nand2(nxor_ab, or_ab, nand_ab);
    not  #10 not2(result, nxor_ab);
endmodule

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
