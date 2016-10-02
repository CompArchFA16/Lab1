module ALU
(
output[31:0]    result,
output          carryout,
output          zero,
output          overflow,
input[31:0]     operandA,
input[31:0]     operandB,
input[2:0]      command

);
    
endmodule

module adder32(
   // Outputs
   result, 
   // Inputs
   a, b
   );
   input[31:0] a;
   input[31:0] b;
   output [31:0] result;
   wire [32:0] sum = {1'b0,a} + {1'b0,b};
   assign      result = sum[32] ? sum[32:1]: sum[31:0];
endmodule // adder32

module subtract32(
   // Outputs
   result, 
   // Inputs
   a, b
   );
   input[31:0] a;
   input[31:0] b;
   output [31:0] result;
   wire [32:0] sum = {1'b0,a} - {1'b0,b};
   assign      result = sum[32] ? sum[32:1]: sum[31:0];
endmodule // adder32

/*module xor32(
   // Outputs
   result, 
   // Inputs
   a, b
   );
   input[31:0] a;
   input[31:0] b;
   output [31:0] result;
   wire [32:0] sum;
   xor xorgate(sum, {1'b0,a}, {1'b0,b})
   assign      result = sum[32] ? sum[32:1]: sum[31:0];
endmodule // adder32
*/