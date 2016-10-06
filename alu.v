/*
~~~~~~~~Shruti & Ian ~~~~~~~~~~~
Main ALU module. Used for the actual arithmetic
*/
`include "ALUcontrol.v"
`include "math.v"
`include "32bitGates.v"

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

	ALUcontrolLUT alucontrol(muxindex, invertB, setFlag, secondaryOperation, command);

	FullAdder32bit addtest(result, carryout, overflow, operandA, operandB);

endmodule
