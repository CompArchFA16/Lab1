`include "alu.v"

module addsub ();

	#(parameter n=3)

	wire[n-1:0] result;
	wire       carryout;
	wire       overflow;
	reg[n-1:0]  a;
	reg[n-1:0]  b;
	reg        sub; // 1 for sub, 0 for add

	mADDSUB as(result, carryout, overflow, a, b, sub);


	initial begin
		sub = 0;
    	$display("  a    b  |overflow carryout   sum ");
    	for(a=4'b0000; a<=4'b1111; a=a+1) begin
            for (b=4'b0000; b<=4'b1111; b=b+1) begin
            	#1000
            	$display("%b%b%b%b %b%b%b%b |   %b        %b       %b%b%b%b", a[3], a[2], a[1], a[0], b[3], b[2], b[1], b[0], overflow, carryout, sum[3], sum[2], sum[1], sum[0]);
            end
        end
    end


endmodule