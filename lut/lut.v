`define NOT not #10
`define NAND nand #20
`define AND and #30
`define NOR nor #20
`define OR or #30
`define XNOR xnor #50
`define XOR xor #50

// LUT Implementation of Bitwise Operations

module mux // multiplexer 
(
    output out,
    input address0, address1,
	input [3:0] mem // 00 ~ 11
);
	wire na1,na0;
	wire o0, o1, o2, o3;

	`NOT(na0,address0);
	`NOT(na1,address1);
	`AND(o0, mem[0], na1, na0);
	`AND(o1, mem[1], na1, address0);
	`AND(o2, mem[2], address1, na0);
	`AND(o3, mem[3], address1, address0);
	`OR(out, o0,o1,o2,o3);
endmodule

module l_NAND //LUT implementation of Bit-Level NAND
(
	output o,
	input i_0,
	input i_1
);
reg [3:0] mem = 4'b0111;
mux m1(o, i_0, i_1, mem);
endmodule

module l_AND
(
	output o,
	input i_0,
	input i_1
);
reg [3:0] mem = 4'b1110;
mux m1(o, i_0, i_1, mem);
endmodule

module l_NOR
(
	output o,
	input i_0,
	input i_1
);

reg [3:0] mem = 4'b0001
mux m1(o, i_0, i_1, mem);
endmodule

module l_OR
(
	output o,
	input i_0,
	input i_1
);

reg [3:0] mem = 4'b1110
mux m1(o, i_0, i_1, mem);
endmodule

module l_ADD //regular module that doesn't care about overflow flags
(
	output sum,
	output carryout,
	input a,
	input b,
	input carryin
);


endmodule

