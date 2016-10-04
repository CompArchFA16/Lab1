`define OR or #330

module ALU_or
(
  output result,
  input operandA,
  input operandB
);

	`OR (result, operandA, operandB);

endmodule