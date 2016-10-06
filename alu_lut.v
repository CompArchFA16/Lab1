`include "constants.v"
`timescale 1 ns / 1 ps


module ALUcontrolLUT
(
output reg[2:0] muxindex,
output reg      isSlt,
input[2:0]      ALUcommand
);
  always @(ALUcommand) begin
    case (ALUcommand)
      `COMMAND_ADD:  begin muxindex = `COMMAND_ADD;  isSlt = 1'b0; end
      `COMMAND_SUB:  begin muxindex = `COMMAND_SUB;  isSlt = 1'b0; end
      `COMMAND_XOR:  begin muxindex = `COMMAND_XOR;  isSlt = 1'b0; end
      `COMMAND_SLT:  begin muxindex = `COMMAND_SUB;  isSlt = 1'b1; end
      `COMMAND_AND:  begin muxindex = `COMMAND_AND;  isSlt = 1'b0; end
      `COMMAND_NAND: begin muxindex = `COMMAND_NAND; isSlt = 1'b0; end
      `COMMAND_NOR:  begin muxindex = `COMMAND_NOR;  isSlt = 1'b0; end
      `COMMAND_OR:   begin muxindex = `COMMAND_OR;   isSlt = 1'b0; end
    endcase
  end
endmodule
