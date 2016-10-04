`define XOR xor #320 // FIXME: What is the delay?

module ALU_xor
(
  output result,
  input operandA,
  input operandB
);

	`XOR (result, operandA, operandB);

endmodule