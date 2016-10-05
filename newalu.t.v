`timescale 1 ns / 1 ps
`include "newalu.v"
/*include "genvartest.v"*/


module testmux();

    //tests the mux: MUX WORKS!
    wire [31:0] result;
    reg [2:0] muxindex;
    reg [31:0] andResult, orResult, xorResult, addResult;
    reg sltResult;


    structuralMultiplexer mymux(result, muxindex, andResult, orResult, xorResult, addResult, sltResult);
    initial begin
    muxindex = 0; andResult=32'd1; orResult=32'd1; xorResult=32'd3; addResult=32'd4; sltResult=1; #1000000000
    $display(" %h  ", result);
    end




endmodule
