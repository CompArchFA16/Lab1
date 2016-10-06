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
    mux_1bit mux_1(result, othercontrolsignal, nor_ab, or_ab);
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
    mux_1bit mux_1(result, othercontrolsignal, nand_ab, and_ab);
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
