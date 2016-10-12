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
		command = 0000; operandA = 32'h00000001; operandB = 32'h00000001; #100000 //add
		$display("    %b      |  %b     ", command[2:0], result); //need to show flags
		command = 0001; operandA = 32'h00000001; operandB = 32'h00000001; #100000 //sub
		$display("    %b      |  %b     ", command[2:0], result);
		command = 0010; operandA = 32'h00000001; operandB = 32'h00000001; #100000 //xor
		$display("    %b      |  %b     ", command[2:0], result);
		command = 0011; operandA = 32'h00000001; operandB = 32'h00000001; #100000 //slt
		$display("    %b      |  %b     ", command[2:0], result);
		command = 0100; operandA = 32'h00000001; operandB = 32'h00000001; #100000 //and
		$display("    %b      |  %b     ", command[2:0], result);
		command = 0101; operandA = 32'h00000001; operandB = 32'h00000001; #100000 //nand
		$display("    %b      |  %b     ", command[2:0], result);
		command = 0110; operandA = 32'h00000001; operandB = 32'h00000001; #100000 //nor
		$display("    %b      |  %b     ", command[2:0], result);
		command = 0111; operandA = 32'h00000001; operandB = 32'h00000001; #100000 //or
		$display("    %b      |  %b     ", command[2:0], result);
	end
endmodule