`define NOR nor #320

module ALU_nor
(
  output result,
  input operandA,
  input operandB
);

	`NOR (result, operandA, operandB);

endmodule