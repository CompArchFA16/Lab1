// 1-bit adder testbench
`include "adder.v"
`include "gates.v"
`include "mux.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    adder_1bit adder (sum, carryout, a, b, carryin);

    initial begin
    // Test pattern stimulus
    $display("A B Cin | Cout S  | Expected Output");
    a=0;b=0;carryin=0; #500
    $display("%b %b  %b  |  %b   %b  |  0  0", a, b, carryin, carryout, sum);
    a=0;b=0;carryin=1; #500
    $display("%b %b  %b  |  %b   %b  |  0  1", a, b, carryin, carryout, sum);
    a=0;b=1;carryin=0; #500
    $display("%b %b  %b  |  %b   %b  |  0  1", a, b, carryin, carryout, sum);
    a=0;b=1;carryin=1; #500
    $display("%b %b  %b  |  %b   %b  |  1  0", a, b, carryin, carryout, sum);
    a=1;b=0;carryin=0; #500
    $display("%b %b  %b  |  %b   %b  |  0  1", a, b, carryin, carryout, sum);
    a=1;b=0;carryin=1; #500
    $display("%b %b  %b  |  %b   %b  |  1  0", a, b, carryin, carryout, sum);
    a=1;b=1;carryin=0; #500
    $display("%b %b  %b  |  %b   %b  |  1  0", a, b, carryin, carryout, sum);
    a=1;b=1;carryin=1; #500
    $display("%b %b  %b  |  %b   %b  |  1  1", a, b, carryin, carryout, sum);
    end
endmodule
