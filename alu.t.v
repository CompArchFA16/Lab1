`include "alu.v"

module alu_test();
  wire [31:0] result,
  wire carryout,
  wire zero,
  wire overflow,
  reg [31:0]     operandA,
  reg [31:0]     operandB,
  reg [2:0]      command

ALU alu(result,carryout,zero,overflow,operandA,operandB,command)

initial begin
	// commented pseudocode
	// for(each_module) begin
	// for(each_test_cases) begin
	$display("A B CMD | RES C_OUT ZERO OVERFLOW")
	$display("Expected : %d %b %b %b |"
	//	end
	//	end
end

endmodule
