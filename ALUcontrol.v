`define ADD  3'b000
`define SUB  3'b001
`define XOR  3'b010
`define SLT  3'b011
`define AND  3'b100
`define NAND 3'b101
`define NOR  3'b110
`define OR   3'b111

module ALUcontrolLUT
(
output reg[2:0]     muxindex,
output reg  invertB,
output reg  setFlag,
output reg  secondaryOperation,
input[2:0]  ALUcommand
)

  always @(ALUcommand) begin
    case (ALUcommand)
      `ADD:  begin muxindex = 3'b000; invertB=0; setFlag = 1; secondaryOperation = 0; end    
      `SUB:  begin muxindex = 3'b000; invertB=1; setFlag = 1; secondaryOperation = 1; end
      `XOR:  begin muxindex = 3'b001; invertB=0; setFlag = 0; secondaryOperation = 0; end    
      `SLT:  begin muxindex = 3'b010; invertB=1; setFlag = 0; secondaryOperation = 0; end
      `AND:  begin muxindex = 3'b011; invertB=0; setFlag = 0; secondaryOperation = 0; end    
      `NAND: begin muxindex = 3'b011; invertB=0; setFlag = 0; secondaryOperation = 1; end
      `NOR:  begin muxindex = 3'b100; invertB=0; setFlag = 0; secondaryOperation = 1; end    
      `OR:   begin muxindex = 3'b100; invertB=0; setFlag = 0; secondaryOperation = 0; end
    endcase
  end
endmodule