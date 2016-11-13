`include "muxnbit.v"

module muxnbit_test();

// testing n-bit mux
wire out;
reg [7:0] data = 8'b01010101;
reg [3:0] sel;

muxnbit #(.n(3)) mnb(out,data,sel[2:0]);

initial begin
	$display(" o | d | s ");

	for(sel=0; sel<8; sel = sel+1) begin
		#1000
		$display("%b | %b | %b", out, data, sel[2:0]);
	end
end

endmodule
