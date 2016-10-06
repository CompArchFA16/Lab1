`include "adder.v"
`define OR or #30

// SLT definition
// if A<B, R=0
// else, R=1

module SLTfunction
(
    output [31:0] result,
    input [31:0] a,
    input [31:0] b

);

	// How to find the SLT:
	// Find A-B
	// R = the most significant bit of (A-B)
	wire overflow;
	wire carryout;
	wire zero;
	wire[31:0] resultadd;

	Adder32bit intermediateadder(overflow, carryout, zero, resultadd, a, b, 1, 1);
	// set the lest
	`OR orgate(result[0], resultadd[31], 0);  

endmodule