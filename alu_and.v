`define AND nand #330

module ALU_and
(
  output result,
  input operandA,
  input operandB
);

	`AND (result, operandA, operandB);

endmodule