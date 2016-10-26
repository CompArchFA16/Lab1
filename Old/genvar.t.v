`include "genvartest.v"

module and_test();

  // Instantiate device/module under test
  wire carryout, overflow;
  wire [31:0] andResult; // Test outputs
  reg [31:0] operandA, operandB;                // Primary test inputs

  and32 mytest(carryout, overflow, andResult, operandA, operandB);  // Module to be tested

    // Run sequence of test stimuli
  initial begin
    $display("operandA operandB | andResult | overflow | carryout ");            // Prints header for truth table
    operandA=32'b11;operandB=32'b1100; #1000                                // Set A and B, wait for update (#1)
    $display("%b %b |  %b  %b |    %b  ", operandA,operandB, andResult, overflow, carryout);
    operandA=32'b11;operandB=32'b11; #1000                                // Set A and B, wait for update (#1)
    $display("%b %b |  %b  %b |    %b  ", operandA,operandB, andResult, overflow, carryout);
  end
endmodule
