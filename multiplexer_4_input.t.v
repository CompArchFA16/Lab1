`include "multiplexer_4_input.v"
`timescale 1 ns / 1 ps

module testMultiplexer4Input();
  wire out;
  reg[1:0] addresses;
  reg[3:0] inputs;

  Multiplexer4Input dut(out, addresses, inputs);

  initial begin
    $dumpfile("multiplexer_4_input.vcd");
    $dumpvars;

    $display("addresses inputs | out | EOut");
    addresses = 2'd0; inputs = 4'bXXX0; #10000
    $display("%b        %b   | %b   | 0", addresses, inputs, out);
    addresses = 2'd0; inputs = 4'bXXX1; #10000
    $display("%b        %b   | %b   | 1", addresses, inputs, out);
    addresses = 2'd1; inputs = 4'bXX0X; #10000
    $display("%b        %b   | %b   | 0", addresses, inputs, out);
    addresses = 2'd1; inputs = 4'bXX1X; #10000
    $display("%b        %b   | %b   | 1", addresses, inputs, out);
    addresses = 2'd2; inputs = 4'bX0XX; #10000
    $display("%b        %b   | %b   | 0", addresses, inputs, out);
    addresses = 2'd2; inputs = 4'bX1XX; #10000
    $display("%b        %b   | %b   | 1", addresses, inputs, out);
    addresses = 2'd3; inputs = 4'b0XXX; #10000
    $display("%b        %b   | %b   | 0", addresses, inputs, out);
    addresses = 2'd3; inputs = 4'b1XXX; #10000
    $display("%b        %b   | %b   | 1", addresses, inputs, out);
  end
endmodule
