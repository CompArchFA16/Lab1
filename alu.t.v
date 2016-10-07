`include "alu.v"
`define DISP(exp) $display("%d & %d & %d & %d & %b &  %b  &  %b & ", operandA, operandB, command, result, carryout, zero, overflow, exp)
`define TEST(aValue,bValue) operandA= aValue; operandB  = bValue; #10000
module alu_test();
  wire signed [31:0] result;
  wire carryout;
  wire zero;
  wire overflow;
  reg signed [31:0] operandA;
  reg signed [31:0] operandB;
  reg [31:0]      command;

ALU #(.n(32)) alu(result,carryout,zero,overflow,operandA,operandB,command[2:0]);

initial begin
	$dumpfile("alu_4.vcd");
	$dumpvars;

	$display("A B CMD | RES C_OUT ZERO OVERFLOW");

	command = 4;
	operandA = 0; operandB = 0; #10000;
	
	operandA = 0; operandB = -1; #10000;

//	for(operandA=-7; operandA<7; operandA=operandA+1) begin
//		for(operandB=-7; operandB<7; operandB=operandB+1) begin
//			for(command=0; command<1; command=command+1) begin
//				#10000;
//				$display("%b %b %d | %b %b %b %b |", operandA, operandB, //command[2:0], result, carryout, zero, overflow);//
//			end//
//		end
//	end
//	
//	// ADD Module Test
//	command=0;
//	$display("Testing ADD:");
//	`TEST(4'b1011,4'b1010);
//	`DISP();
//	`TEST(4'b0110,4'b0100);
//	`DISP();
//    `TEST(4'b1111,4'b1010);
//	`DISP();
//    `TEST(4'b0001,4'b0101);
//	`DISP();
//	`TEST(32'd2**32-1,1);
//	`DISP();
//
//	// SUB Module Test
//	command=1;
//	$display("Testing SUB:");
//	`TEST(4'b1011,4'b0100);
//	`DISP();
//	`TEST(4'b1111,4'b0010);
//	`DISP();
//    `TEST(4'b0111,4'b1010);
//	`DISP();
//    `TEST(4'b0101,4'b0110);
//	`DISP();
//	`TEST(32'd2**32-1,4'b1111);
//	`DISP(); 
//
//	// SLT Module Test
//	command=2;
//	$display("Testing SLT:");
//	`TEST(4'b0111,4'b0010);
//	`DISP();
//	`TEST(4'b0001,4'b0100);
//	`DISP();
//    `TEST(4'b1100,4'b1001);
//	`DISP();
//    `TEST(4'b1010,4'b1101);
//	`DISP();
//	`TEST(32'd2**32-1,32'd2**32-1); 
//	`DISP(); 
//
//	// XOR, NAND, AND, NOR, OR Module Test
//	$display("Testing XOR, NAND, AND, NOR, OR:");
//	for(command = 3; command < 8; command = command + 1) begin
//		#10000;
//		$display(" A  B CMD | RES C_OUT ZERO OVERFLOW");
//		`TEST(32'd2**32-1,32'd2**32-1); 
//		`DISP();
//		`TEST(32'd2**32-1, 0); 
//		`DISP();
//		`TEST(0,32'd2**32-1); 
//		`DISP();
//		`TEST(0,0); 
//		`DISP();
//	end
end

endmodule
