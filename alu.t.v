//Test cases for ALU

`include "cmd.v"
`include "alu.v"

`define DISP(exp) $display("%d & %d & %d & %d & %b &  %b  &  %b & %s", operandA, operandB, command, result, carryout, zero, overflow, ((result == exp)? "PASS" : "FAIL"))
`define TEST(aValue,bValue) operandA= aValue; operandB  = bValue; #10000

`define TESTCHECK(a,b,res) `TEST(a,b); `DISP(res)

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

	//create gtkwavefile
	$dumpfile("alu.vcd");
	$dumpvars;

	// 4-bit exhaustive test cases
	// Loop through all cases
	//	for(operandA=-7; operandA<7; operandA=operandA+1) begin
	//		for(operandB=-7; operandB<7; operandB=operandB+1) begin
	//			for(command=0; command<1; command=command+1) begin
	//				#10000;
	//				$display("%b %b %d | %b %b %b %b |", operandA, operandB, //command[2:0], result, carryout, zero, overflow);//
	//			end//
	//		end
	//	end


	// Worst case Propagation Delay
	// Since there is no good way to determine the worst propagation delay,
	// open alu.vcd with gtkwave and examine the time it takes for the final
	// output to change values
	
	// ADD
	command = `c_ADD;
	operandA = -1; operandB = 0; #10000;
	operandA = -1; operandB = 1; #10000;

	// SUB / SLT, equivalent
	command = `c_SUB;
	operandA = -1; operandB = 0; #10000;
	operandA = -1; operandB = -1; #10000; 
	
	// AND
	command = `c_AND;
	operandA = -1; operandB = 0; #10000;	
	operandA = -1; operandB = -1; #10000;

	// 4 bit test Cases
	command=0;
	$display("Testing ADD:");
	`TEST(32'b1011,32'b1010);
	`DISP(32'b1011 + 32'b1010);
	`TEST(32'b0110,32'b0100);
	`DISP(32'b0110 + 32'b0100);
	`TEST(32'b1111,32'b1010);
	`DISP(32'b1111 + 32'b1010);
	`TEST(32'b0001,32'b0101);
	`DISP(32'b0001 + 32'b0101);
	`TEST(~(32'd0),1);
	`DISP(0);

//	// SUB Module Test
//	command=1;
//	$display("Testing SUB:");
//	`TEST(32'b1011,32'b0100);
//	`DISP();
//	`TEST(32'b1111,32'b0010);
//	`DISP();
//	`TEST(32'b0111,32'b1010);
//	`DISP();
//	`TEST(32'b0101,32'b0110);
//	`DISP();
//	`TEST(32'd2**32-1,32'b1111);
//	`DISP(); 
//
//	// SLT Module Test
//	command=2;
//	$display("Testing SLT:");
//	`TEST(32'b0111,32'b0010);
//	`DISP();
//	`TEST(32'b0001,32'b0100);
//	`DISP();
//	`TEST(32'b1100,32'b1001);
//	`DISP();
//	`TEST(32'b1010,32'b1101);
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
