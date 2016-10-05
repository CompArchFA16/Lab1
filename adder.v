// 1-bit Adder Circuit
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
    mux_1bit mux_1(true_b, not_b, b, invertB);

    Xor_1bit Xor_1(Xor_AB, a, true_b);
    Xor_1bit Xor_2(sum, Xor_AB, carryin);
    nand nand_1(Nand_AB, a, true_b) #20;
    not not1(And_AB, Nand_AB) #10;
    nand nand_2(Nand_XorAB_C, carryin, Xor_AB) #20;
    not not2(And_XorAB_C, Nand_XorAB_C) #10;
    nor nor_1(nco, And_XorAB_C, And_AB) #20;
    not not_3(carryout, nco) #10;
endmodule
