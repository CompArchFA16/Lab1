`define OR or #30
`define NOT not #10
//`include "adder32.v"
// SLT definition
// if A<B, R=0
// else, R=1

module SLTfunction
(
    output [31:0] result,
    input [31:0] a,
    input [31:0] b

);
	genvar i;
	generate
	  for (i=1; i < 32; i=i+1)
	  begin:NOR32gate
	    `NOT _notgate(result[i], 1); // set all bits of result to 0
	  end
	endgenerate

	// How to find the SLT:
	// Find A-B
	// R = the most significant bit of (A-B)
	wire overflow;
	wire carryout;
	wire zero;
	wire[31:0] resultsub;

	Full32Add intermediateadder(overflow, carryout, zero, resultsub, a, b, 1, 1);
	// set the lest
	`OR orgate(result[0], resultsub[31], 0);

endmodule
