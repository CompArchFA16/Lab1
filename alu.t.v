`include "alu.v"
`define DISP(exp) $display("%d %d %d | %d %b %b %b |", operandA, operandB, command, result, carryout, zero, overflow, exp);
`define TEST(aValue,bValue) operandA[31:28] = aValue; operandB[31:28] = bValue; #1000
module alu_test();
  wire signed [3:0] result;
  wire carryout;
  wire zero;
  wire overflow;
  reg signed [3:0] operandA;
  reg signed [3:0] operandB;
  reg [3:0]      command;

ALU #(.n(4)) alu(result,carryout,zero,overflow,operandA,operandB,command[2:0]);

initial begin

	$display("A B CMD | RES C_OUT ZERO OVERFLOW");

	for(operandA=-1; operandA<2; operandA=operandA+1) begin
		for(operandB=-1; operandB<2; operandB=operandB+1) begin
			for(command=0; command<1; command=command+1) begin
				#10000;
				$display("%b %b %d | %b %b %b %b |", operandA, operandB, command[2:0], result, carryout, zero, overflow);
			end
		end
	end
	
	// ADD Module Test
	command=0;
	$display("Testing ADD:");
	`TEST(4'b1011,4'b1010);
	`DISP(-9);
	`TEST(4'b0110,4'b0100);
	`DISP();
    `TEST(4'b1111,4'b1010);
	`DISP();
    `TEST(4'b0001,4'b0101);
	`DISP();
	operandA=32'd2**32-1;operandB=1;
	`DISP(); #1000

	// SUB Module Test
	command=1;
	$display("Testing SUB:");
	`TEST(4'b1011,4'b0100);
	`DISP();
	`TEST(4'b1111,4'b0010);
	`DISP();
    `TEST(4'b0111,4'b1010);
	`DISP();
    `TEST(4'b0101,4'b0110);
	`DISP();
	operandA=32'd2**32-1;operandB=-1;
	`DISP(); #1000

	// SLT Module Test
	command=2;
	$display("Testing SLT:");
	`TEST(4'b0111,4'b0010);
	`DISP();
	`TEST(4'b0001,4'b0100);
	`DISP();
    `TEST(4'b1100,4'b1001);
	`DISP();
    `TEST(4'b1010,4'b1101);
	`DISP();
	operandA=32'd2**32-1;operandB=32'd2**32-1;
	`DISP(); #1000



	for(command = 3; command < 7; command = command + 1) begin
		#1000;
		$display("A B CMD | RES C_OUT ZERO OVERFLOW");
		$display("Expected : %d %b %b %b |");
		operandA=32'd2**32-32'd2**16; operandB=32'd2**32-1;
		`DISP();
		operandA=32'd2**32-32'd2**10; operandB=0;
		`DISP();
		operandA=0;operandB=32'd2*32-1;
		`DISP();
		operandA=0;operandB=0;
		`DISP();
	end
	//	end
end

endmodule
