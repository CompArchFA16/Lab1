`timescale 1 ns / 1 ps
`include "ALUcontrol.v"

module testALUControlLUT();
	
	reg [3:0] ALUCommand;

	wire [2:0] muxindex;
	wire invertB;
	wire setFlag;
	wire secondaryOperation;

	ALUcontrolLUT alucontrol(muxindex, invertB, setFlag, secondaryOperation, ALUCommand[2:0]);

	initial begin

	$display("  ALUCommand  | muxindex invertB setFlag secondaryOperation");
	for(ALUCommand=3'b000; ALUCommand<=3'b111; ALUCommand=ALUCommand+1) begin
		#1000
		$display("    %b      |  %b         %b      %b        %b", ALUCommand, muxindex, invertB, setFlag, secondaryOperation);
  end
	end
endmodule
