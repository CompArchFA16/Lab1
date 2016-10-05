// Multiplexer testbench
`include "mux.v"

module testMultiplexer_alu ();
    reg sel0, sel1, sel2;
    reg in0, in1, in2, in3, in4;
    wire out;

    mux_alu mux (out, sel0, sel1, sel2, in0, in1, in2, in3, in4);

    initial begin
    // Test pattern stimulus
    $display("I0 I1 I2 I3 I4 | S0 S1 S2 | O | Expected Output");

    // Value of selected bit = 1
    $display("----------------------------------------------------");
    in0=1'b1; in1=1'bX; in2=1'bX; in3=1'bX; in4=1'bX; sel0=0; sel1=0; sel2=0; #500
    $display(" %b  %b  %b  %b  %b |  %b  %b  %b | %b | Selects in0", in0, in1, in2, in3, in4, sel0, sel1, sel2, out);
    in0=1'bX; in1=1'b1; in2=1'bX; in3=1'bX; in4=1'bX; sel0=1; sel1=0; sel2=0; #500
    $display(" %b  %b  %b  %b  %b |  %b  %b  %b | %b | Selects in1", in0, in1, in2, in3, in4, sel0, sel1, sel2, out);
    in0=1'bX; in1=1'bX; in2=1'b1; in3=1'bX; in4=1'bX; sel0=0; sel1=1; sel2=0; #500
    $display(" %b  %b  %b  %b  %b |  %b  %b  %b | %b | Selects in2", in0, in1, in2, in3, in4, sel0, sel1, sel2, out);
    in0=1'bX; in1=1'bX; in2=1'bX; in3=1'b1; in4=1'bX; sel0=1; sel1=1; sel2=0; #500
    $display(" %b  %b  %b  %b  %b |  %b  %b  %b | %b | Selects in3", in0, in1, in2, in3, in4, sel0, sel1, sel2, out);
    in0=1'bX; in1=1'bX; in2=1'bX; in3=1'bX; in4=1'b1; sel0=0; sel1=0; sel2=1; #500
    $display(" %b  %b  %b  %b  %b |  %b  %b  %b | %b | Selects in4", in0, in1, in2, in3, in4, sel0, sel1, sel2, out);

    // Value of selected bit = 0
    $display("----------------------------------------------------");
    in0=1'b0; in1=1'bX; in2=1'bX; in3=1'bX; in4=1'bX; sel0=0; sel1=0; sel2=0; #500
    $display(" %b  %b  %b  %b  %b |  %b  %b  %b | %b | Selects in0", in0, in1, in2, in3, in4, sel0, sel1, sel2, out);
    in0=1'bX; in1=1'b0; in2=1'bX; in3=1'bX; in4=1'bX; sel0=1; sel1=0; sel2=0; #500
    $display(" %b  %b  %b  %b  %b |  %b  %b  %b | %b | Selects in1", in0, in1, in2, in3, in4, sel0, sel1, sel2, out);
    in0=1'bX; in1=1'bX; in2=1'b0; in3=1'bX; in4=1'bX; sel0=0; sel1=1; sel2=0; #500
    $display(" %b  %b  %b  %b  %b |  %b  %b  %b | %b | Selects in2", in0, in1, in2, in3, in4, sel0, sel1, sel2, out);
    in0=1'bX; in1=1'bX; in2=1'bX; in3=1'b0; in4=1'bX; sel0=1; sel1=1; sel2=0; #500
    $display(" %b  %b  %b  %b  %b |  %b  %b  %b | %b | Selects in3", in0, in1, in2, in3, in4, sel0, sel1, sel2, out);
    in0=1'bX; in1=1'bX; in2=1'bX; in3=1'bX; in4=1'b0; sel0=0; sel1=0; sel2=1; #500
    $display(" %b  %b  %b  %b  %b |  %b  %b  %b | %b | Selects in4", in0, in1, in2, in3, in4, sel0, sel1, sel2, out);
    end
endmodule
