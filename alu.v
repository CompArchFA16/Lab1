// Notation Simplification for ALU Commands
`define ADD  3'd0
`define SUB  3'd1
`define XOR  3'd2
`define SLT  3'd3
`define AND  3'd4
`define NAND 3'd5
`define NOR  3'd6
`define OR   3'd7

// // Setting Delays
// `define NANDg nand #20 //delay of 50 units
// `define NOTg not #10
// `define NORg nor #20


// module Adder_1bit
// (

//   );


// endmodule

// module ALU_1bit
// (

//   );


// endmodule

module 1_bit_mux //used for processing different functions
(
    output result, 
    input command,
    input in0,
    input in1
  );
    wire nand_in1com, and_in1com, ncom, nand_in0ncom, and_in0ncom, nor_wire;  // nor_wire is noring the 2 of last 3 wires here   
    NAND nand_1(nand_in1com, in1, command) #20;
    not  not_1(and_in1com, nand_in1com) #10;
    not  not_2(ncom, command) #10;
    nand nand_2(nand_in0ncom, in0, ncom) #20;
    not  not_3(and_in0ncom, nand_in0ncom) #10;
    nor  nor_1(nor_wire, and_in0ncom, and_in1com) #20;
    not  not_4(result, nor_wire) #10;
endmodule


module Nor_1bit  // Can compute or and nor
(
    output result,
    input a,
    input b,
    input othercontrolsignal
);

    wire nor_ab, or_ab;  // intermediate wires

    nor nor_1(nor_ab, a, b) #20;
    not not_1(or_ab, nor_ab) #10;
    1_bit_mux mux_1(result, nor_ab, or_ab);
endmodule

module Nand_1bit  // Can compute and and nand
(
    output result,
    input a,
    input b,
    input othercontrolsignal
);

    wire nand_ab, and_ab;  // intermediate wires

    nand nand_1(nand_ab, a, b) #20;
    not not_1(and_ab, nand_ab) #10;
    1_bit_mux mux_1(result, nand_ab, and_ab);
endmodule

module Xor_1bit
(
    output result,
    input a,
    input b
);
    wire nand_ab, nor_ab, or_ab, nxor_ab;
    nand nand1(nand_ab, a, b) #20;
    nor  nor1(nor_ab, a, b) #20;
    not  not1(or_ab, nor_ab) #10;
    nand nand2(nxor_ab, or_ab, nand_ab) #20;
    not  not2(result, nxor_ab) #10;
endmodule


module ALU // 32bit
(
    output[31:0]    result,
    output          carryout,
    output          zero,
    output          overflow,
    input[31:0]     operandA,
    input[31:0]     operandB,
    input[2:0]      command
);
    // Your code here


endmodule

module ALUcontrolLUT
(
    output reg[2:0]     muxindex,
    output reg  invertB,
    output reg  othercontrolsignal,
    // Extra input/output here (...)
    input[2:0]  ALUcommand
)

    always @(ALUcommand) begin
      case (ALUcommand)
        `ADD:  begin muxindex = 0; invertB=0; othercontrolsignal = 0; end    
        `SUB:  begin muxindex = 0; invertB=1; othercontrolsignal = 0; end
        `XOR:  begin muxindex = 1; invertB=0; othercontrolsignal = 0; end    
        `SLT:  begin muxindex = 2; invertB=1; othercontrolsignal = 0; end
        `NAND: begin muxindex = 3; invertB=0; othercontrolsignal = 0; end
        `AND:  begin muxindex = 3; invertB=0; othercontrolsignal = 1; end    
        `NOR:  begin muxindex = 4; invertB=0; othercontrolsignal = 0; end    
        `OR:   begin muxindex = 4; invertB=0; othercontrolsignal = 1; end
      endcase
    end
endmodule