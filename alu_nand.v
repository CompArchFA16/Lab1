`define NAND nand #320

module ALU_nand
(
  output result,
  input operandA,
  input operandB
);

	`NAND (result, operandA, operandB);

endmodule
