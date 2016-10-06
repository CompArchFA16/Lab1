`timescale 1 ns / 1 ps
`include "alu.v"

module testALU();
	
	wire[31:0]    result;
	wire          carryout;
	wire          zero;
	wire          overflow;
	reg[31:0]     operandA;
	reg[31:0]     operandB;
	reg[3:0]      command;

	ALU alu(result, carryout, zero, overflow, operandA, operandB, command[2:0]);

	initial begin

	$display("  ALUCommand  | result ");
		command = 0000; operandA = 32'h00000001; operandB = 32'h00000001; #100000
		$display("    %b      |  %b     ", command, result);
	end
endmodule