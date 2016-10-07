`define NOR nor #50
module bus_test();

reg [4:0] a;

wire n_1, n_2;

assign n_1 = 0;
generate
    genvar i;
    for (i=0; i<4; i = i+1) begin: norgenblk
      `NOR (n_1, a[i], n_1);
    end
  endgenerate


//assign n_1 = ~|a;
//`NOR nor1(n_1,a[3:0]);
`NOR nor2(n_2,a[0],a[1],a[2],a[3]);

initial begin
	$display("a_3 a_2 a_1 a_0 | n_1 n_2");
	for(a = 0; a < 8; a = a + 1) begin
		#1000
		$display(" %b   %b   %b   %b  |  %b   %b", a[3], a[2], a[1], a[0], n_1, n_2);
	end
end

endmodule
