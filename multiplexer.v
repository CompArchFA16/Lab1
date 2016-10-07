// Multiplexer circuit

`define AND and #50
`define OR or #50
`define NOT not #50

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    wire nadd0, nadd1;
    wire inter0, inter1, inter2, inter3;

    `NOT invAdd0(nadd0, address0);
    `NOT invAdd1(nadd1, address1);

    `AND andGate0(inter0, nadd0, nadd1, in0);
    `AND andGate1(inter1, address0, nadd1, in1);
    `AND andGate2(inter2, nadd0, address1, in2);
    `AND andGate3(inter3, address0, address1, in3);

    `OR orGate(out, inter3, inter2, inter1, inter0);

endmodule

module twoBitMultiplexer
(
    output out,
    input choice,
    input in0, in1
);
    wire nChoice;
    `NOT invChoice(nChoice, choice);

    wire and1, and2;
    `AND andgate1(and1, choice, in1);
    `AND andgate2(and2, nChoice, in0);

    `OR orgate(out, and1, and2);

endmodule

module fourBitMultiplexer
(
    output out,
    input choice0, choice1,
    input in0, in1, in2, in3
);
    wire tempout0, tempout1;

    twoBitMultiplexer mux0(tempout0, choice0, in0, in1);
    twoBitMultiplexer mux2(tempout1, choice0, in2, in3);

    twoBitMultiplexer mux3(out, choice1, tempout0, tempout1);

endmodule

module ALUmultiplexer
(
    output [31:0] out,
    input [2:0] muxindex,
    input [31:0] addsub, resXOR, resSLT, resAND, resNAND, resOR, resNOR
);
    wire [31:0] tempout1;
    wire [31:0] tempout2;
    
    generate
    genvar i;

      for (i = 0; i<32; i = i + 1) begin: mux
			  fourBitMultiplexer mux0(tempout1[i], muxindex[0], muxindex[1], addsub[i], resXOR[i], resSLT[i], resAND[i]);
        fourBitMultiplexer mux1(tempout2[i], muxindex[0], muxindex[1], resNAND[i], resNOR[i], resOR[i], 32'b0);
        twoBitMultiplexer mux2(out[i], muxindex[2], tempout1[i], tempout2[i]);
		  end
    endgenerate

endmodule


