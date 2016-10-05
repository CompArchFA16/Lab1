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
input[31:0]     operandB
//input[2:0]      command
);

	wire [2:0] muxindex;
	wire invertB;
	wire setFlag;
	wire secondaryOperation;
	reg[2:0] command1;

	ALUcontrolLUT alucontrol(muxindex, invertB, setFlag, secondaryOperation, command1);

	initial begin
	command1 = 3'b111; #100000;
	$display("%b", muxindex);
	end
endmodule
