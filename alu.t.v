`timescale 1 ns / 1 ps
`include "alu.v"
/*include "genvartest.v"*/

/*module testALU();
    reg[31:0] operandA, operandB;
    reg[2:0] command;
    wire[31:0] result;
    wire carryout, zero, overflow;

    ALU myALU (result, carryout, zero, overflow, operandA, operandB, command);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, testALU);

    $display("   operandA   operandB   |  command   ||  zero   carryout   overflow  | result ||   Exp zero   Exp carryout   Exp overflow   |   Exp result");
    
    $display("Adder Test:");

    // this is our test bench
    operandA=32'b11;operandB=32'b101; #1000
    $display(" %b %b |  %b      ||      %b    %b    %b    %b   |     %b     ||     0     0     0     |   0 ", operandA, operandB, command, zero, carryout, overflow, result);

    $display("Control Test:");
    operandA=32'b11;operandB=32'b101; #1000
    $display(" %b %b |  %b      ||      %b    %b    %b    %b   |     %b     ||     0     0     0     |   0 ", operandA, operandB, command, zero, carryout, overflow, result);
    end
endmodule*/


/*module testadd();
    reg[31:0] a, b;
    wire[31:0] result;


    adder32 myALU (result, a, b);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, testadd);


    
    $display("Adder Test:");
    $display("     a          b     |   result   ||   Exp result");

    a='h0;b='h0; #1000
    $display(" %h   %h  |  %h  ||    00000000", a, b, result);
    a='h0;b='h1; #1000
    $display(" %h   %h  |  %h  ||    00000001", a, b, result);
    a='h1;b='h1; #1000
    $display(" %h   %h  |  %h  ||    00000002", a, b, result);
    a='h1100010;b='h0101010; #1000
    $display(" %h   %h  |  %h  ||    01201020", a, b, result);
    a='h11111111;b='h1; #1000
    $display(" %h   %h  |  %h  ||    11111112", a, b, result);
    a='h92946327;b='h90997372; #1000
    $display(" %h   %h  |  %h  ||    9196eb4c", a, b, result);


    end
endmodule*/

/*'''Completed, working'''*/
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
    operandA='hffffffff;operandB='hcccccccc; #1000
    $display(" %h   %h  | %h ||    cccccccc", operandA,operandB,  andResult);
    end
endmodule*/
/*
module testor();
    wire carryout;
    wire overflow;
    wire[31:0] andResult;
    reg [31:0] operandA;
    reg [31:0] operandB;


    or32 myALU (carryout, overflow, andResult, operandA, operandB);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, testor);
    $display(" operandA   operandB  |  result  ||   Exp result");

    operandA='h0;operandB='h0; #1000
    $display(" %h   %h  | %h ||    00000000", operandA,operandB,  andResult);
    operandA='h181;operandB='h263; #1000
    $display(" %h   %h  | %h ||    000003e3", operandA,operandB,  andResult);
    operandA='h161;operandB='h161; #1000
    $display(" %h   %h  | %h ||    00000161", operandA,operandB,  andResult);
    operandA='hffffffff;operandB='hf00f001; #1000
    $display(" %h   %h  | %h ||    ffffffff", operandA,operandB,  andResult);
    operandA='hffffffff;operandB='hcccccccc; #1000
    $display(" %h   %h  | %h ||    ffffffff", operandA,operandB,  andResult);
    end
endmodule*/

/*
module testnor();
    wire carryout;
    wire overflow;
    wire[31:0] andResult;
    reg [31:0] operandA;
    reg [31:0] operandB;


    nor32 myALU (carryout, overflow, andResult, operandA, operandB);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, testnor);
    $display(" operandA   operandB  |  result  ||   Exp result");

    operandA='h0;operandB='h0; #1000
    $display(" %h   %h  | %h ||    ffffffff", operandA,operandB,  andResult);
    operandA='h181;operandB='h263; #1000
    $display(" %h   %h  | %h ||    fffffc1c", operandA,operandB,  andResult);
    operandA='h161;operandB='h161; #1000
    $display(" %h   %h  | %h ||    fffffe9e", operandA,operandB,  andResult);
    operandA='hffffffff;operandB='hf00f001; #1000
    $display(" %h   %h  | %h ||    00000000", operandA,operandB,  andResult);
    operandA='hffffffff;operandB='hcccccccc; #1000
    $display(" %h   %h  | %h ||    00000000", operandA,operandB,  andResult);
    end
endmodule*/


/*
module testnand();
    wire carryout;
    wire overflow;
    wire[31:0] andResult;
    reg [31:0] operandA;
    reg [31:0] operandB;


    nand32 myALU (carryout, overflow, andResult, operandA, operandB);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, testnand);
    $display(" operandA   operandB  |  result  ||   Exp result");

    operandA='h0;operandB='h0; #1000
    $display(" %h   %h  | %h ||    ffffffff", operandA,operandB,  andResult);
    operandA='h181;operandB='h263; #1000
    $display(" %h   %h  | %h ||    fffffffe", operandA,operandB,  andResult);
    operandA='h161;operandB='h161; #1000
    $display(" %h   %h  | %h ||    fffffe9e", operandA,operandB,  andResult);
    operandA='hffffffff;operandB='hf00f001; #1000
    $display(" %h   %h  | %h ||    f0ff0ffe", operandA,operandB,  andResult);
    operandA='hffffffff;operandB='hcccccccc; #1000
    $display(" %h   %h  | %h ||    33333333", operandA,operandB,  andResult);
    end
endmodule*/
/*
module testadd();
    wire carryout;
    wire overflow;
    wire[31:0] andResult;
    reg [31:0] operandA;
    reg [31:0] operandB;

    add32 myALU (carryout, overflow, andResult, operandA, operandB);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, testadd);
    $display("     a          b     | overflow   carryout |  result  ||   Exp result");

    operandA='h0;operandB='h0; #1000
    $display(" %h   %h  |     %h         %h     | %h ||    00000000", operandA,operandB,  overflow, carryout, andResult);
    operandA='h181;operandB='h263; #1000
    $display(" %h   %h  |     %h         %h     | %h ||    000003e4", operandA,operandB,  overflow, carryout, andResult);
    operandA='h161;operandB='h161; #1000
    $display(" %h   %h  |     %h         %h     | %h ||    000002c2", operandA,operandB,  overflow, carryout, andResult);
    operandA='hffffffff;operandB='hf00f001; #1000
    $display(" %h   %h  |     %h         %h     | %h ||    0f00f000", operandA,operandB,  overflow, carryout, andResult);
    operandA='hffffffff;operandB='hcccccccc; #1000
    $display(" %h   %h  |     %h         %h     | %h ||    cccccccb", operandA,operandB,  overflow, carryout, andResult);
    operandA='hffffffff;operandB='hffffffff; #1000
    $display(" %h   %h  |     %h         %h     | %h ||    fffffffe", operandA,operandB,  overflow, carryout, andResult);
    operandA='hc0000000;operandB='h80000000; #1000
    $display(" %h   %h  |     %h         %h     | %h ||    40000000", operandA,operandB,  overflow, carryout, andResult);
    end
endmodule
*/
/*
module testsubtract();
    wire carryout;
    wire overflow;
    wire[31:0] andResult;
    reg [31:0] operandA;
    reg [31:0] operandB;
    reg M;

    add32 myALU (carryout, overflow, andResult, operandA, operandB, M);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, testsubtract);
    $display("     a          b      M  | overflow   carryout |  result  ||   Exp result");

    operandA='h01;operandB='h0;M=1; #1000
    $display(" %h   %h   %h  |     %h         %h     | %h ||    00000000", operandA,operandB, M, overflow, carryout, andResult);

    end
endmodule
*/



/*'''test skeleton'''*/
module testadd();
    wire carryout;
    wire overflow;
    wire[31:0] andResult;
    reg [31:0] operandA;
    reg [31:0] operandB;
    reg M;
    wire[31:0] MxorB;


    add32 myALU (carryout, overflow, andResult, operandA, operandB, M, MxorB);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("alu.vcd");
    $dumpvars(0, testadd);
    $display("     a          b        M      MxorB    | overflow   carryout |  result  ||   Exp result");

    operandA='h1111;operandB='h1;M=1; #1000
    $display(" %h   %h     %h        %h     |     %h         %h     | %h ||    00000000", operandA,operandB, M, MxorB, overflow, carryout, andResult);
    /*operandA='h181;operandB='h263; #1000
    $display(" %h   %h  |     %h         %h     | %h ||    00000001", operandA,operandB,  overflow, carryout, andResult);
    operandA='h161;operandB='h161; #1000
    $display(" %h   %h  |     %h         %h     | %h ||    00000161", operandA,operandB,  overflow, carryout, andResult);
    operandA='hffffffff;operandB='hf00f001; #1000
    $display(" %h   %h  |     %h         %h     | %h ||    0f00f001", operandA,operandB,  overflow, carryout, andResult);
    operandA='hffffffff;operandB='hcccccccc; #1000
    $display(" %h   %h  |     %h         %h     | %h ||    cccccccc", operandA,operandB,  overflow, carryout, andResult);*/
    end
endmodule

/*module testsubtract();
    reg[31:0] a, b;
    wire[31:0] result;


    subtract32 myALU (result, a, b);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("sub.vcd");
    $dumpvars(0, testsubtract);


    
    $display("Subtract Test:");
    $display("     a          b     |   result   ||   Exp result");

    a='h111;b='h101; #1000
    $display(" %h    %h |  %h  ", a, b, result);


    end
endmodule*/

/*module testsubtract();
    reg[31:0] a, b;
    wire[31:0] result;


    subtract32 myALU (result, a, b);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("sub.vcd");
    $dumpvars(0, testsubtract);


    
    $display("Subtract Test:");
    $display("     a          b     |   result   ||   Exp result");

    a='h111;b='h101; #1000
    $display(" %h    %h |  %h  ", a, b, result);


    end
endmodule*/

/*module testxor();
    reg[31:0] a, b;
    wire[31:0] result;


    xor32 myALU (result, a, b);

    initial begin
    //dump to vcd file so we can look at waveform
    $dumpfile("xor.vcd");
    $dumpvars(0, testxor);


    
    $display("Subtract Test:");
    $display("     a          b     |   result   ||   Exp result");

    a='h111;b='h101; #1000
    $display(" %h    %h |  %h  ", a, b, result);


    end
endmodule*/

/*module testFullAdder() ;
    reg a, b, carryin, M;
    wire sum, carryout;

    structuralFullAdder adder (sum, carryout, a, b, carryin);


    initial begin
    $dumpfile("adder.vcd");
    $dumpvars(0, testFullAdder);

    $display("A B     M   | Sum Carryout | Expected Output");
    a=1;b=0;carryin=0;M=1; #1000
    $display("%b %b    %b    |    %b     %b   | 1  0", a, b, M, sum, carryout);
    a=1;b=1;carryin=0;M=1; #1000
    $display("%b %b    %b    |    %b     %b   | 0  0", a, b, M, sum, carryout);
    a=0;b=1;carryin=0; #1000
    $display("%b %b    %b    |    %b     %b   | 1  0", a, b, carryin, sum, carryout);
    a=0;b=1;carryin=1; #1000
    $display("%b %b    %b    |    %b     %b   | 0  1", a, b, carryin, sum, carryout);
    a=1;b=0;carryin=0; #1000
    $display("%b %b    %b    |    %b     %b   | 1  0", a, b, carryin, sum, carryout);
    a=1;b=0;carryin=1; #1000
    $display("%b %b    %b    |    %b     %b   | 0  1", a, b, carryin, sum, carryout);
    a=1;b=1;carryin=0; #1000
    $display("%b %b    %b    |    %b     %b   | 0  1", a, b, carryin, sum, carryout);
    a=1;b=1;carryin=1; #1000
    $display("%b %b    %b    |    %b     %b   | 1  1", a, b, carryin, sum, carryout);
    end
endmodule*/