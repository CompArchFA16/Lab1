module array2d();

reg [31:0] array [7:0];
wire [31:0] results [7:0];

reg [4:0] it;

generate
	genvar i;
	for(i=0;i<8; i=i+1) begin: testarr2d
		assign results[i] = i;
		//and(results[i], array[i]);
	end
endgenerate

initial begin
	for(it=0;it<8;it=it+1) begin
		$display("results[%d] : %b", it, results[it]);
	end
end


endmodule
