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
    addresses = 3'd0; inputs = 8'bXXXXXXX0; #10000
    $display("%b       %b | %b   | 0", addresses, inputs, out);
    addresses = 3'd0; inputs = 8'bXXXXXXX1; #10000
    $display("%b       %b | %b   | 1", addresses, inputs, out);
    addresses = 3'd1; inputs = 8'bXXXXXX0X; #10000
    $display("%b       %b | %b   | 0", addresses, inputs, out);
    addresses = 3'd1; inputs = 8'bXXXXXX1X; #10000
    $display("%b       %b | %b   | 1", addresses, inputs, out);
    addresses = 3'd2; inputs = 8'bXXXXX0XX; #10000
    $display("%b       %b | %b   | 0", addresses, inputs, out);
    addresses = 3'd2; inputs = 8'bXXXXX1XX; #10000
    $display("%b       %b | %b   | 1", addresses, inputs, out);
    addresses = 3'd3; inputs = 8'bXXXX0XXX; #10000
    $display("%b       %b | %b   | 0", addresses, inputs, out);
    addresses = 3'd3; inputs = 8'bXXXX1XXX; #10000
    $display("%b       %b | %b   | 1", addresses, inputs, out);
    addresses = 3'd4; inputs = 8'bXXX0XXXX; #10000
    $display("%b       %b | %b   | 0", addresses, inputs, out);
    addresses = 3'd4; inputs = 8'bXXX1XXXX; #10000
    $display("%b       %b | %b   | 1", addresses, inputs, out);
    addresses = 3'd5; inputs = 8'bXX0XXXXX; #10000
    $display("%b       %b | %b   | 0", addresses, inputs, out);
    addresses = 3'd5; inputs = 8'bXX1XXXXX; #10000
    $display("%b       %b | %b   | 1", addresses, inputs, out);
    addresses = 3'd6; inputs = 8'bX0XXXXXX; #10000
    $display("%b       %b | %b   | 0", addresses, inputs, out);
    addresses = 3'd6; inputs = 8'bX1XXXXXX; #10000
    $display("%b       %b | %b   | 1", addresses, inputs, out);
    addresses = 3'd7; inputs = 8'b0XXXXXXX; #10000
    $display("%b       %b | %b   | 0", addresses, inputs, out);
    addresses = 3'd7; inputs = 8'b1XXXXXXX; #10000
    $display("%b       %b | %b   | 1", addresses, inputs, out);
  end
endmodule
