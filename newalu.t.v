`timescale 1 ns / 1 ps
`include "newalu2.v"
/*include "genvartest.v"*/


/*module testmux();

    //tests the mux: MUX WORKS!
    wire [31:0] result;
    reg [2:0] muxindex;
    reg [31:0] andResult, orResult, xorResult, addResult;
    reg sltResult;


    structuralMultiplexer mymux(result, muxindex, andResult, orResult, xorResult, addResult, sltResult);
    initial begin
    muxindex = 4; andResult=32'd1; orResult=32'd1; xorResult=32'd3; addResult=32'd4; sltResult=1; #1000000000
    $display(" %h  ", result);
    end
*/

/*module testlut();

    //tests the mux: MUX WORKS!
    wire[2:0] muxindex;
    wire invertA;
    wire invertB;
    wire enableOverflow;
    wire carryin;
    reg[2:0] ALUcommand;


    ALUcontrolLUT myLUT(muxindex, invertA, invertB, enableOverflow, carryin, ALUcommand);
    initial begin
    $display(" muxindex invertA invertB enableOverflow carryin ALUcommand ");
    ALUcommand=3'b000; #1000000000
    $display("     %h       %h       %h           %h           %h        %h  ", muxindex, invertA, invertB, enableOverflow, carryin, ALUcommand);
    ALUcommand=3'b001; #1000000000
    $display("     %h       %h       %h           %h           %h        %h  ", muxindex, invertA, invertB, enableOverflow, carryin, ALUcommand);
    ALUcommand=3'b010; #1000000000
    $display("     %h       %h       %h           %h           %h        %h  ", muxindex, invertA, invertB, enableOverflow, carryin, ALUcommand);
    ALUcommand=3'b011; #1000000000
    $display("     %h       %h       %h           %h           %h        %h  ", muxindex, invertA, invertB, enableOverflow, carryin, ALUcommand);
    ALUcommand=3'b100; #1000000000
    $display("     %h       %h       %h           %h           %h        %h  ", muxindex, invertA, invertB, enableOverflow, carryin, ALUcommand);
    ALUcommand=3'b101; #1000000000
    $display("     %h       %h       %h           %h           %h        %h  ", muxindex, invertA, invertB, enableOverflow, carryin, ALUcommand);
    ALUcommand=3'b110; #1000000000
    $display("     %h       %h       %h           %h           %h        %h  ", muxindex, invertA, invertB, enableOverflow, carryin, ALUcommand);
    ALUcommand=3'b111; #1000000000
    $display("     %h       %h       %h           %h           %h        %h  ", muxindex, invertA, invertB, enableOverflow, carryin, ALUcommand);
    end

*/



module testalu();

    //tests the mux: MUX WORKS!
    wire[31:0]    result;
    wire          carryout;
    wire          zero;
    wire          overflow;
    reg[31:0]     operandA;
    reg[31:0]     operandB;
    reg[2:0]      command;


    ALU myALU( result, carryout, zero, overflow, operandA, operandB, command);
    initial begin
    $display("command  operandA  operandB |  result  carryout zero overflow ");
    command=3'b000; operandA=32'h1; operandB=32'h2; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b001; operandA=32'h1; operandB=32'h2; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b010; operandA=32'h1; operandB=32'h2; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b011; operandA=32'h1; operandB=32'h2; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b100; operandA=32'h1; operandB=32'h2; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b101; operandA=32'h3; operandB=32'h2; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b110; operandA=32'h1; operandB=32'h2; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b111; operandA=32'h1; operandB=32'h2; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    $display("command  operandA  operandB |  result  carryout zero overflow ");
    command=3'b000; operandA=32'h8; operandB=32'h9; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b001; operandA=32'h10; operandB=32'h9; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b010; operandA=32'h8; operandB=32'h9; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b011; operandA=32'h1; operandB=32'h1; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b100; operandA=32'h1; operandB=32'h1; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b101; operandA=32'h8; operandB=32'h9; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b110; operandA=32'h8; operandB=32'h9; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    command=3'b111; operandA=32'h8; operandB=32'h9; #100000000000
    $display("   %h     %h  %h | %h     %h      %h     %h", command, operandA, operandB, result, carryout, zero, overflow);
    end


endmodule

/*module testand();
    wire carryout;
    wire overflow;
    wire[31:0] andResult;
    reg [31:0] operandA;
    reg [31:0] operandB;


    and32 myALU (carryout, overflow, andResult, operandA, operandB);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, testand);
    $display(" operandA   operandB  |  result  ||   Exp result");

    operandA='h0;operandB='h0; #1000
    $display(" %h   %h  | %h ||    00000000", operandA,operandB,  andResult);
    operandA='h181;operandB='h263; #1000
    $display(" %h   %h  | %h ||    00000001", operandA,operandB,  andResult);
    operandA='h161;operandB='h161; #1000
    $display(" %h   %h  | %h ||    00000161", operandA,operandB,  andResult);
    operandA='hffffffff;operandB='hf00f001; #1000
    $display(" %h   %h  | %h ||    0f00f001", operandA,operandB,  andResult);
    operandA='hffff0fff;operandB='hffffffff; #1000
    $display(" %h   %h  | %h ||    cccccccc", operandA,operandB,  andResult);
    end
endmodule*/