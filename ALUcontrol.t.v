`timescale 1 ns / 1 ps
`include "ALUcontrol.v"

module testALUControlLUT();
	
	reg [3:0] ALUCommand;

	wire [2:0] muxindex;
	wire invertB;
	wire setFlag;
	wire secondaryOperation;

	ALUcontrolLUT alucontrol(muxindex, invertB, setFlag, secondaryOperation, ALUCommand);

	initial begin

	$display("  ALUCommand  | muxindex invertB setFlag secondaryOperation");
	for(ALUCommand=3'b0000; ALUCommand<=3'b1111; ALUCommand=ALUCommand+1) begin
		#1000
		$display("    %b%b%b    |  %b%b%b   %b   %b   %b", ALUCommand[2], ALUCommand[1], ALUCommand[0], muxindex[2], muxindex[1], muxindex[0], invertB, setFlag, secondaryOperation);
  end
	end
endmodule
