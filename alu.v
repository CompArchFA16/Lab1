// Notation Simplification for ALU Commands
`define ADD  3'd0
`define SUB  3'd1
`define XOR  3'd2
`define SLT  3'd3
`define AND  3'd4
`define NAND 3'd5
`define NOR  3'd6
`define OR   3'd7

// `include "mux.v"
// `include "adder.v"
// `include "gates.v"
// `include "slt.v"

module ALU_1bit // 1bit
(
    output      result,
    output      carryout,
    input       operandA,
    input       operandB,
    input[2:0]  muxIndex,

    input       carryin,
    input       invertB,
    input       othercontrolsignal
);

    wire notB, trueB;
    not #10 not0(notB, operandB);
    mux_1bit mux_invertB(trueB, invertB, operandB, notB);

    wire wAddSub, wXor, wNandAnd, wNorOr;
    adder_1bit adder(wAddSub, carryout, operandA, trueB, carryin);
    xor_1bit xor_gate(wXor, operandA, operandB);
    nand_and_1bit nand_and_gate(wNandAnd, operandA, operandB, othercontrolsignal);
    nor_or_1bit nor_or_gate(wNorOr, operandA, operandB, othercontrolsignal);

    mux_alu mainMux(result, muxIndex[0], muxIndex[1], muxIndex[2], wAddSub, wXor, wNandAnd, wNorOr, 0);
endmodule

// module ALU // 32bit
// (
//     output[31:0]    result,
//     output          carryout,
//     output          zero,
//     output          overflow,
//     input[31:0]     operandA,
//     input[31:0]     operandB,
//     input[2:0]      command
// );

//     // Instantiates the control LUT
//     wire[2:0] muxIndex;
//     wire invertB, othercontrolsignal;
//     ALUcontrolLUT controlLUT(muxIndex, invertB, othercontrolsignal, command);

//     // Rightmost bit of the ALU
//     wire[30:0] int_carryout;
//     wire resultFirst;
//     ALU_1bit aluFirst(resultFirst, int_carryout[0], operandA[0], operandB[0], muxIndex, invertB, invertB, othercontrolsignal);

//     genvar i;
//     generate
//       for (i=1; i < 31; i=i+1) begin : ALU32
//         ALU_1bit _alu(result[i], int_carryout[i], operandA[i], operandB[i], muxIndex, int_carryout[i-1], invertB, othercontrolsignal);
//       end
//     endgenerate

//     // Leftmost bit of the ALU
//     ALU_1bit aluLast(result[31], carryout, operandA[31], operandB[31], muxIndex, int_carryout[30], invertB, othercontrolsignal);

//     // Calculates overflow
//     xor_1bit xor_overflow(overflow, int_carryout[30], carryout);

//     // Calculates SLT
//     wire sltValue;
//     slt_32bit sltALU32(sltValue, overflow, carryout, operandA[31], operandB[31]);
//     mux_1bit sltOut(result[0], resultFirst, sltValue, command[2]);
// endmodule

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

    // Instantiates the control LUT
    wire[2:0] muxIndex;
    wire invertB, othercontrolsignal;
    ALUcontrolLUT controlLUT(muxIndex, invertB, othercontrolsignal, command);

    // Rightmost bit of the ALU
    wire[30:0] int_carryout;
    wire resultFirst;
    ALU_1bit aluFirst(resultFirst, int_carryout[0], operandA[0], operandB[0], muxIndex, invertB, invertB, othercontrolsignal);
    // ALU_1bit aluFirst(result[0], int_carryout[0], operandA[0], operandB[0], muxIndex, invertB, invertB, othercontrolsignal);


    genvar i;
    generate
      for (i=1; i < 31; i=i+1) begin : ALU4
        ALU_1bit _alu(result[i], int_carryout[i], operandA[i], operandB[i], muxIndex, int_carryout[i-1], invertB, othercontrolsignal);
      end
    endgenerate

    wire sub_sumleft;
    // Leftmost bit of the ALU
    ALU_1bit aluLast(result[31], carryout, operandA[31], operandB[31], muxIndex, int_carryout[30], invertB, othercontrolsignal);
    ALU_1bit aluSub(sub_sumleft, carryout, operandA[31], operandB[31], 0, int_carryout[30], 1, othercontrolsignal);

    // Calculates overflow
    xor_1bit xor_overflow(overflow, int_carryout[30], carryout);

    // Calculates SLT
    wire sltValue;
    // xor_1bit xor_slt(sltValue, result[31], overflow);
    xor_1bit xor_slt(sltValue, sub_sumleft, overflow);
    mux_1bit sltOut(result[0], muxIndex[2], resultFirst, sltValue);
endmodule

module ALU_4bit // 4bit
(
    output[3:0]    result,
    output          carryout,
    output          zero,
    output          overflow,
    input[3:0]     operandA,
    input[3:0]     operandB,
    input[2:0]      command
);

    // Instantiates the control LUT
    wire[2:0] muxIndex;
    wire invertB, othercontrolsignal;
    ALUcontrolLUT controlLUT(muxIndex, invertB, othercontrolsignal, command);

    // Rightmost bit of the ALU
    wire[2:0] int_carryout;
    wire resultFirst;
    ALU_1bit aluFirst(resultFirst, int_carryout[0], operandA[0], operandB[0], muxIndex, invertB, invertB, othercontrolsignal);

    genvar i;
    generate
      for (i=1; i < 3; i=i+1) begin : ALU4
        ALU_1bit _alu(result[i], int_carryout[i], operandA[i], operandB[i], muxIndex, int_carryout[i-1], invertB, othercontrolsignal);
      end
    endgenerate

    // Leftmost bit of the ALU
    wire resultLast;
    wire sub_sumleft, carryout_s;
    ALU_1bit aluLast(result[3], carryout, operandA[3], operandB[3], muxIndex, int_carryout[2], invertB, othercontrolsignal);
    // ALU_1bit aluSub(sub_sumleft, carryout_s, operandA[3], operandB[3], 0, int_carryout[2], invertB, othercontrolsignal);

    wire sub_b;
    not gen_sub_b(sub_b, operandB[3]);
    adder_1bit aluSub(sub_sumleft, carryout_s, operandA[3], sub_b, int_carryout[2]);

    // Calculates overflow
    xor_1bit xor_overflow(overflow, int_carryout[2], carryout);

    // Calculates SLT
    wire sltValue;
    // xor_1bit xor_slt(sltValue, resultLast, overflow);
    xor_1bit xor_slt(sltValue, sub_sumleft, overflow);
    mux_1bit sltOut(result[0], muxIndex[2], resultFirst, sltValue);
endmodule

module ALUcontrolLUT
(
    output reg[2:0]     muxindex,
    output reg  invertB,
    output reg  othercontrolsignal,
    // Extra input/output here (...)
    input[2:0]  ALUcommand
);

    always @(ALUcommand) begin
      case (ALUcommand)
        `ADD:  begin muxindex = 0; invertB=0; othercontrolsignal = 0; end
        `SUB:  begin muxindex = 0; invertB=1; othercontrolsignal = 0; end
        `XOR:  begin muxindex = 1; invertB=0; othercontrolsignal = 0; end
        `NAND: begin muxindex = 2; invertB=0; othercontrolsignal = 0; end
        `AND:  begin muxindex = 2; invertB=0; othercontrolsignal = 1; end
        `NOR:  begin muxindex = 3; invertB=0; othercontrolsignal = 0; end
        `OR:   begin muxindex = 3; invertB=0; othercontrolsignal = 1; end
        `SLT:  begin muxindex = 4; invertB=1; othercontrolsignal = 0; end
      endcase
    end
endmodule
