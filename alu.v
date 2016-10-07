/*
~~~~~~~~Shruti & Ian ~~~~~~~~~~~
Main ALU module. Used for the actual arithmetic
*/
`include "ALUcontrol.v"
`include "math.v"
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
	wire[31:0] addSubResult, xorResult ,andResult, nandResult, orResult, norResult;
	wire sltResult;

	ALUcontrolLUT alucontrol(muxindex, invertB, setFlag, secondaryOperation, command);

	FullMath32bit addsub(addSubResult, carryout, overflow, operandA, operandB, invertB);
	xor32    xor32(xorResult, operandA, operandB);
	FullSLT  slt(sltResult, operandA, operandB);
	and32    and32(andResult, operandA, operandB);
	nand32   nand32(nandResult, operandA, operandB);
	or32     or32(orResult, operandA, operandB);
	nor32    nor32(norResult, operandA, operandB);


	ALUmultiplexer final(result, muxindex, addSubResult, xorResult, sltResult, andResult, nandResult, orResult, norResult);
	

endmodule
