// MUX components for the ALU

module mux_1bit // 2:1 MUX
(
    output result,
    input sel0,
    input in0,
    input in1
);
    // Intermediate wires
    wire nand_in1com, and_in1com, ncom, nand_in0ncom, and_in0ncom, nor_wire;

    nand #20 nand_1(nand_in1com, in1, sel0);
    not  #10 not_1(and_in1com, nand_in1com);
    not  #10 not_2(ncom, sel0);
    nand #20 nand_2(nand_in0ncom, in0, ncom);
    not  #10 not_3(and_in0ncom, nand_in0ncom);
    nor  #20 nor_1(nor_wire, and_in0ncom, and_in1com);
    not  #10 not_4(result, nor_wire);
endmodule

module mux_alu // 5:1 MUX (for picking the correct operation)
(
    output result,
    input sel0,
    input sel1,
    input sel2,
    input in0,
    input in1,
    input in2,
    input in3,
    input in4
);

    wire w0, w1, w2;

    mux_1bit mux00(w0, sel0, in0, in1);
    mux_1bit mux01(w1, sel0, in2, in3);
    mux_1bit mux1(w2, sel1, w0, w1);
    mux_1bit mux2(result, sel2, w2, in4);
endmodule
