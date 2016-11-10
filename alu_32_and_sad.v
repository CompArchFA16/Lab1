`ifdef _aluAsLibrary
  `include "alu/constants.v"
`else
  `include "constants.v"
`endif
// `timescale 1 ns / 1 ps


module ALU32AndSad
(
  output      zero,
  input       carryout,
  input[31:0] result
);

  wire[15:0] andsRound1;

  genvar i;
  generate
    for (i = 0; i < 32; i = i + 2)
    begin:andsRound1Loop
      `OR (andsRound1[i/2], result[i], result[i+1]);
    end
  endgenerate

  wire[7:0] andsRound2;

  genvar j;
  generate
    for (j = 0; j < 16; j = j + 2)
    begin:andsRound2Loop
      `OR (andsRound2[j/2], andsRound1[j], andsRound1[j+1]);
    end
  endgenerate

  wire[3:0] andsRound3;

  genvar k;
  generate
    for (k = 0; k < 8; k = k + 2)
    begin:andsRound3Loop
      `OR (andsRound3[k/2], andsRound2[k], andsRound2[k+1]);
    end
  endgenerate

  wire[1:0] andsRound4;

  genvar l;
  generate
    for (l = 0; l < 4; l = l + 2)
    begin:andsRound4Loop
      `OR (andsRound4[l/2], andsRound3[l], andsRound3[l+1]);
    end
  endgenerate

  wire resultAnds;
  `OR (resultAnds, andsRound4[0], andsRound4[1]);

  wire zero;
  `NOT (zero, resultAnds);
endmodule
