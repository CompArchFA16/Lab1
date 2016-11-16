`include "multiplexer_2_input.v"
// `timescale 1 ns / 1 ps

module testMultiplexer2Input();

  wire out;
  reg address;
  reg[1:0] inputs;

  Multiplexer2Input dut(out, address, inputs);

  initial begin
    $dumpfile("multiplexer_2_input.vcd");
    $dumpvars;

    inputs = 2'b01;

    $display("%b", inputs[0]);
    $display("%b", inputs[1]);

    $display("address inputs | out | EOut");
    address = 1'b0; inputs = 2'bX0; #10000
    $display("%b       %b     | %b   | 0", address, inputs, out);
    address = 1'b0; inputs = 2'bX1; #10000
    $display("%b       %b     | %b   | 1", address, inputs, out);
    address = 1'b1; inputs = 2'b0X; #10000
    $display("%b       %b     | %b   | 0", address, inputs, out);
    address = 1'b1; inputs = 2'b1X; #10000
    $display("%b       %b     | %b   | 1", address, inputs, out);
  end
endmodule
