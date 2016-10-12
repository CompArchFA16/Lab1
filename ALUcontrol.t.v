`timescale 1 ns / 1 ps
`include "ALUcontrol.v"

module testALUControlLUT();
	
	reg [3:0] ALUCommand; //input command

	wire [2:0] muxindex; //what operation is the command reffering to
	wire invertB; //does b need to be inverted for the operation
	wire setFlag; // do we need overflow and carry out lines
	wire secondaryOperation; // are we performing the secondary operation of that mux index

	ALUcontrolLUT alucontrol(muxindex, invertB, setFlag, secondaryOperation, ALUCommand[2:0]);

	initial begin

	$display("  ALUCommand  | muxindex invertB setFlag secondaryOperation");
	for(ALUCommand=3'b000; ALUCommand<=3'b111; ALUCommand=ALUCommand+1) begin // Iterate through all possible commands
		#1000
		$display("    %b      |  %b         %b      %b        %b", ALUCommand, muxindex, invertB, setFlag, secondaryOperation);
  end
	end
endmodule
