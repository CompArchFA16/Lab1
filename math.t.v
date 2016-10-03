// FullAdder4bit testbench
`timescale 1 ns / 1 ps
`include "math.v"

// module testCompAdder4bit ();

//     wire [3:0] sum; // Only wire [3:0] are used for sum, a, b
//     reg [3:0] a, b; // Extra bit for making sure that a, b reaches max value in the "for" loop and it doesn't become an infinte loop
//     wire carryout, overflow;

//     CompAdder4bit fa4b(sum, carryout, a, b, 0);

// 	initial begin

// 	$display("  a      b   |overflow carryout   sum ");
//         a=4'b0000; b=4'b0000; #1000;
//     	$display("%b   %b  |   %b        %b       %b", a, b, overflow, carryout, sum);
//         a=4'b1111; b=4'b1111; #1000;
//         $display("%b   %b  |   %b        %b       %b", a, b, overflow, carryout, sum);
//         a=4'b0011; b=4'b0011; #1000;
//         $display("%b   %b  |   %b        %b       %b", a, b, overflow, carryout, sum);
//         a=4'b1001; b=4'b1111; #1000;
//         $display("%b   %b  |   %b        %b       %b", a, b, overflow, carryout, sum);
//         a=4'b0111; b=4'b0111; #1000;
//         $display("%b   %b  |   %b        %b       %b", a, b, overflow, carryout, sum);
//         a=4'b1001; b=4'b1001; #1000;
//         $display("%b   %b  |   %b        %b       %b", a, b, overflow, carryout, sum);
//     end

// endmodule

module testFullAdder16bit ();

    wire [31:0] sum; // Only wire [3:0] are used for sum, a, b
    reg [31:0] a, b; // Extra bit for making sure that a, b reaches max value in the "for" loop and it doesn't become an infinte loop
    wire carryout, overflow;

    FullAdder32bit fa16b(sum, carryout, overflow, a, b);

    initial begin

    $display("  a      b   |overflow carryout   sum ");
        a=4'b0000; b=4'b0000; #1000;
        $display("a and b = 0  |   %b        %b       %b",  overflow, carryout, sum);
        a=4'b1111; b=4'b1111; #1000;
        $display("a and b = -1 |   %b        %b       %b",  overflow, carryout, sum);
        a=4'b0011; b=4'b0011; #1000;
        $display("a and b =3   |   %b        %b       %b",  overflow, carryout, sum);
        a=4'b1001; b=4'b1111; #1000;
        $display("a = -7, b=-1 |   %b        %b       %b",  overflow, carryout, sum);
        a=4'b0111; b=4'b0111; #1000;
        $display("a and b = 7  |   %b        %b       %b",  overflow, carryout, sum);
        a=4'b1001; b=4'b1001; #1000;
        $display("a and b = -7 |   %b        %b       %b",  overflow, carryout, sum);
    end

endmodule