`include "multiplexer_8_input.v"
`timescale 1 ns / 1 ps

module testMultiplexer8Input();

  wire out;
  reg[2:0] addresses;
  reg[7:0] inputs;

  Multiplexer8Input dut(out, addresses, inputs);

  initial begin
    $dumpfile("multiplexer_8_input.vcd");
    $dumpvars;

    $display("addresses inputs   | out | EOut");
    addresses = 3'b0; inputs = 8'bXXXXXXX0; #1000
    $display("%b       %b | %b   | 0", addresses, inputs, out);
    addresses = 3'b0; inputs = 8'bXXXXXXX1; #1000
    $display("%b       %b | %b   | 1", addresses, inputs, out);
  end
endmodule
