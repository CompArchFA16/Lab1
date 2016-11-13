`include "lut_example.v"

module lut_test();
reg a,b;
wire o;

l_NAND l(o,a,b);

initial begin
	$display("a b | o");
	a=0;b=0; #1000
	$display("%b %b | %b", a,b,o);
	a=0;b=1; #1000
	$display("%b %b | %b", a,b,o);
	a=1;b=0; #1000
	$display("%b %b | %b", a,b,o);
	a=1;b=1; #1000
	$display("%b %b | %b", a,b,o);
end

endmodule
