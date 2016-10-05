// 2:1 Multiplexer
module mux_1bit
(
    output result,
    input command,
    input in0,
    input in1
);
    // Intermediate wires
    wire nand_in1com, and_in1com, ncom, nand_in0ncom, and_in0ncom, nor_wire;

    nand #20 nand_1(nand_in1com, in1, command);
    not  #10 not_1(and_in1com, nand_in1com);
    not  #10 not_2(ncom, command);
    nand #20 nand_2(nand_in0ncom, in0, ncom);
    not  #10 not_3(and_in0ncom, nand_in0ncom);
    nor  #20 nor_1(nor_wire, and_in0ncom, and_in1com);
    not  #10 not_4(result, nor_wire);
endmodule
