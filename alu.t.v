`include "alu.v"

module alu_test();
  wire signed [31:0] result;
  wire carryout;
  wire zero;
  wire overflow;
  reg signed [31:0]     operandA;
  reg signed [31:0]     operandB;
  reg [3:0]      command;

ALU alu(result,carryout,zero,overflow,operandA,operandB,command[2:0]);

initial begin

	$display("A B CMD | RES C_OUT ZERO OVERFLOW");

	// sanity test
	for(operandA=0; operandA<2; operandA=operandA+1) begin
		for(operandB=0; operandB<2; operandB=operandB+1) begin
			for(command=0; command<8; command=command+1) begin
				#10000;
				$display("%d %d %d | %d %b %b %b |", operandA, operandB, command[2:0], result, carryout, zero, overflow);
			end
		end
	end
	// commented pseudocode
	//$display("A B CMD | RES C_OUT ZERO OVERFLOW");
	// for(each_module) begin
	// for(each_test_cases) begin
	//$display("Expected : %d %b %b %b |");
	//	end
	//	end
end

endmodule
