// Multiplexer testbench
`include "mux.v"

module testMultiplexer ();
    reg sel0;
    reg in0, in1;
    wire out;

    //behavioralMultiplexer multiplexer (out,addr0,addr1,in0,in1,in2,in3);
    mux_1bit mux (out, sel0, in0, in1);

    initial begin
    // Test pattern stimulus
    $display("I0 I1 | S0 | O | Expected Output");

    // Value of selected bit = 1
    $display("---------------------------------------");
    in0=1'b1;in1=1'bX;sel0=0; #500
    $display(" %b  %b |  %b | %b | Selects in0", in0, in1, sel0, out);
    in0=1'bX;in1=1'b1;sel0=1; #500
    $display(" %b  %b |  %b | %b | Selects in1", in0, in1, sel0, out);

    // Value of selected bit = 0
    $display("---------------------------------------");
    in0=1'b0;in1=1'bX;sel0=0; #500
    $display(" %b  %b |  %b | %b | Selects in0", in0, in1, sel0, out);
    in0=1'bX;in1=1'b0;sel0=1; #500
    $display(" %b  %b |  %b | %b | Selects in1", in0, in1, sel0, out);
    end
endmodule
