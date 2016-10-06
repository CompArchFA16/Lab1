// NAND and NOR modules
// (basic modules, with delay)
`define NOR32 nor #320
`define AND and #30
`define OR or #30 //2 input OR
`define NAND nand #20 // 2 input nand, no hidden inverters
`define NOR nor #20 // 2 input nor, no hidden inverters

module NANDfunction
(
    output [31:0] result,
    input [31:0] a,
    input [31:0] b

);

	genvar i;
	generate
	  for (i=0; i < 32; i=i+1)
	  begin:NAND32
	    `NAND _nandgate(result[i], a[i], b[i]);
	  end
	endgenerate

endmodule

module NORfunction
(
    output [31:0] result,
    input [31:0] a,
    input [31:0] b

);

	genvar i;
	generate
	  for (i=0; i < 32; i=i+1)
	  begin:NOR32gate
	    `NOR _norgate(result[i], a[i], b[i]);
	  end
	endgenerate

endmodule