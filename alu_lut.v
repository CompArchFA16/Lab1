`ifdef _aluAsLibrary
  `include "alu/alu_commands.v"
`else
  `include "alu_commands.v"
`endif
// `timescale 1 ns / 1 ps


module ALUcontrolLUT
(
output reg[2:0] muxindex,
output reg      isSlt,
input[2:0]      ALUcommand
);
  always @(ALUcommand) begin
    case (ALUcommand)
      `ALU_CMD_ADD:  begin muxindex = `ALU_CMD_ADD;  isSlt = 1'b0; end
      `ALU_CMD_SUB:  begin muxindex = `ALU_CMD_SUB;  isSlt = 1'b0; end
      `ALU_CMD_XOR:  begin muxindex = `ALU_CMD_XOR;  isSlt = 1'b0; end
      `ALU_CMD_SLT:  begin muxindex = `ALU_CMD_SUB;  isSlt = 1'b1; end
      `ALU_CMD_AND:  begin muxindex = `ALU_CMD_AND;  isSlt = 1'b0; end
      `ALU_CMD_NAND: begin muxindex = `ALU_CMD_NAND; isSlt = 1'b0; end
      `ALU_CMD_NOR:  begin muxindex = `ALU_CMD_NOR;  isSlt = 1'b0; end
      `ALU_CMD_OR:   begin muxindex = `ALU_CMD_OR;   isSlt = 1'b0; end
    endcase
  end
endmodule
