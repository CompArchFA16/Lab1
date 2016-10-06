/*
~~~~~~~~Shruti & Ian ~~~~~~~~~~~
Main ALU module. Used for the actual arithmetic
*/
`include "ALUcontrol.v"
`include "math.v"
`include "32bitGates.v"
`include "multiplexer.v"

module ALU
(
output[31:0]    result,
output          carryout,
output          zero,
output          overflow,
input[31:0]     operandA,
input[31:0]     operandB,
input[2:0]      command
);

	wire [2:0] muxindex;
	wire invertB;
	wire setFlag;
	wire secondaryOperation;
	wire[31:0] addResult, subResult, xorResult, sltResult ,andResult, nandResult, orResult, norResult;

	ALUcontrolLUT alucontrol(muxindex, invertB, setFlag, secondaryOperation, command);

	FullAdder32bit addtest(addResult, carryout, overflow, operandA, operandB, invertB);
	//xor
	//slt
	//and/nand
	//or/nor

	ALUmultiplexer final(result, addResult, muxindex, xorResult, sltResult, andResult, orResult);

endmodule
