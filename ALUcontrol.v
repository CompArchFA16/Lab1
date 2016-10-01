/* 
Decoder for the ALU. Takes in 3 bit binary control,
outputs the mux index for the function, if b should be inverted,
if flags are needed, and if it's the secondary operation on the mux. 
*/

//Define the ALU commands as english words
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
output reg[2:0] muxindex, // Which function of the mux should be used
output reg      invertB, // Use -b in the next operation
output reg      setFlag, // Allow output flags
output reg      secondaryOperation, //use the secondary function of that muxindex
input[2:0]      ALUcommand
);

  // switch statement to select function from ALU command
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
