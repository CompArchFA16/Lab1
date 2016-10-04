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

module 32_bit_slt // set less than
(
  output result,
  input overflow,
  input carryout,
  input A, B
  ):

  wire w0, w1, w2, w3, w4, w5, w6, w7, w8;

  not inv0(w0, overflow) #10;
  not inv1(w1, carryout) #10;
  not inv2(w2, w6) #10;
  not inv3(w4, w7) #10;
  not inv4(result, w5) #10;
  not inv5(w8, B[31]) #10;

  nand nand0(w6, w0, w1, w3) #30;
  nand nand1(w7, carryout, w8, A[31]) #30;
  nor nor0(w5, w2, w4) #20;
  Xor_1bit(w3, A[31], B[31]);
endmodule

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

module Nor_32bit  // Can compute or and nor
(
    output result[31:0],
    input a[31:0],
    input b[31:0],
    input othercontrolsignal
);

    genvar i;
    generate
      for (i=0; i < 32; i=i+1) begin : NOR32
        Nor_1bit _nor(result[i], a[i], b[i], othercontrolsignal);
      end
    endgenerate
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

module Nand_32bit  // Can compute and and nand
(
    output result[31:0],
    input a[31:0],
    input b[31:0],
    input othercontrolsignal
);

    genvar i;
    generate
      for (i=0; i < 32; i=i+1) begin : NAND32
        Nand_1bit _nand(result[i], a[i], b[i], othercontrolsignal);
      end
    endgenerate
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

module Xor_32bit  // Can compute xor
(
    output result[31:0],
    input a[31:0],
    input b[31:0]
);

    genvar i;
    generate
      for (i=0; i < 32; i=i+1) begin : XOR32
        Xor_1bit _xor(result[i], a[i], b[i]);
      end
    endgenerate
endmodule

module Adder_1bit // add and "subtract"
(
    output sum,       // 1 bit sum of a and b and carryin
    output carryout,  // Carry out of the summation of a and b and carryin
    input a,          // 1 bit input a
    input b,          // 1 bit input b
    input carryin,    // 1 bit input carryin
    input invertB     // Subtraction
);
    // Your adder code here

    wire not_b, true_b, Xor_AB, Nand_AB, And_AB, Nand_XorAB_C, And_XorAB_C, nco; // Intermediate Wires

    // inputs and intermediate wires are put through gates to find sum and carryout\
    not not0(nb, b) #10;
    1_bit_mux mux_1(true_b, not_b, b, invertB);

    Xor_1bit Xor_1(Xor_AB, a, true_b);                 
    Xor_1bit Xor_2(sum, Xor_AB, carryin);
    nand nand_1(Nand_AB, a, true_b) #20;
    not not1(And_AB, Nand_AB) #10;
    nand nand_2(Nand_XorAB_C, carryin, Xor_AB) #20;
    not not2(And_XorAB_C, Nand_XorAB_C) #10;
    nor nor_1(nco, And_XorAB_C, And_AB) #20;
    not not_3(carryout, nco) #10;
endmodule

module Adder_32bit  // 32-bit adder/subtracter
(
  output[31:0] sum,  // 2's complement sum of a and b (and maybe previous carryin)
  output carryout,  // Carry out of the summation of a and b
  output overflow,  // True if the calculation resulted in an overflow
  input[31:0] a,     // First operand in 2's complement format
  input[31:0] b      // Second operand in 2's complement format
);

    genvar i;
    generate
      for (i=0; i < 32; i=i+1) begin : XOR32
        Xor_1bit _xor(result[i], a[i], b[i]);
      end
    endgenerate
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