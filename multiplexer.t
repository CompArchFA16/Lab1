#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1816bb0 .scope module, "ALUmultiplexer" "ALUmultiplexer" 2 76;
 .timescale -9 -12;
v0x1836ca0_0 .net "ANDNAND", 0 0, C4<z>; 0 drivers
v0x1836d70_0 .net "ORNOR", 0 0, C4<z>; 0 drivers
v0x1836df0_0 .net "SLT", 0 0, C4<z>; 0 drivers
v0x1836ec0_0 .net "XOR", 0 0, C4<z>; 0 drivers
v0x1836f90_0 .net "addsub", 0 0, C4<z>; 0 drivers
v0x1837060_0 .net "muxindex", 2 0, C4<zzz>; 0 drivers
v0x18370e0_0 .net "out", 0 0, L_0x183aed0; 1 drivers
RS_0x7f0e359260a8 .resolv tri, L_0x183a820, C4<0>, C4<z>, C4<z>;
v0x1837160_0 .net8 "tempout", 0 0, RS_0x7f0e359260a8; 2 drivers
L_0x183a9d0 .part C4<zzz>, 0, 1;
L_0x183aa70 .part C4<zzz>, 1, 1;
L_0x183b0a0 .part C4<zzz>, 2, 1;
S_0x1835440 .scope module, "mux0" "fourBitMultiplexer" 2 84, 2 58, S_0x1816bb0;
 .timescale -9 -12;
v0x1836590_0 .net "choice0", 0 0, L_0x183a9d0; 1 drivers
v0x1836660_0 .net "choice1", 0 0, L_0x183aa70; 1 drivers
v0x18366e0_0 .alias "in0", 0 0, v0x1836f90_0;
v0x1836790_0 .alias "in1", 0 0, v0x1836ec0_0;
v0x1836870_0 .alias "in2", 0 0, v0x1836df0_0;
v0x1836920_0 .alias "in3", 0 0, v0x1836ca0_0;
v0x18369e0_0 .alias "out", 0 0, v0x1837160_0;
v0x1836ab0_0 .net "tempout0", 0 0, L_0x1839f40; 1 drivers
v0x1836bd0_0 .net "tempout1", 0 0, L_0x183a2f0; 1 drivers
S_0x1836020 .scope module, "mux0" "twoBitMultiplexer" 2 66, 2 41, S_0x1835440;
 .timescale -9 -12;
L_0x1837db0/d .functor NOT 1, L_0x183a9d0, C4<0>, C4<0>, C4<0>;
L_0x1837db0 .delay (50000,50000,50000) L_0x1837db0/d;
L_0x1839d70/d .functor AND 1, L_0x183a9d0, C4<z>, C4<1>, C4<1>;
L_0x1839d70 .delay (50000,50000,50000) L_0x1839d70/d;
L_0x1839ea0/d .functor AND 1, L_0x1837db0, C4<z>, C4<1>, C4<1>;
L_0x1839ea0 .delay (50000,50000,50000) L_0x1839ea0/d;
L_0x1839f40/d .functor OR 1, L_0x1839d70, L_0x1839ea0, C4<0>, C4<0>;
L_0x1839f40 .delay (50000,50000,50000) L_0x1839f40/d;
v0x1836110_0 .net "and1", 0 0, L_0x1839d70; 1 drivers
v0x18361b0_0 .net "and2", 0 0, L_0x1839ea0; 1 drivers
v0x1836250_0 .alias "choice", 0 0, v0x1836590_0;
v0x1836300_0 .alias "in0", 0 0, v0x1836f90_0;
v0x18363b0_0 .alias "in1", 0 0, v0x1836ec0_0;
v0x1836430_0 .net "nChoice", 0 0, L_0x1837db0; 1 drivers
v0x1836510_0 .alias "out", 0 0, v0x1836ab0_0;
S_0x1835aa0 .scope module, "mux2" "twoBitMultiplexer" 2 67, 2 41, S_0x1835440;
 .timescale -9 -12;
L_0x183a080/d .functor NOT 1, L_0x183a9d0, C4<0>, C4<0>, C4<0>;
L_0x183a080 .delay (50000,50000,50000) L_0x183a080/d;
L_0x183a120/d .functor AND 1, L_0x183a9d0, C4<z>, C4<1>, C4<1>;
L_0x183a120 .delay (50000,50000,50000) L_0x183a120/d;
L_0x183a1e0/d .functor AND 1, L_0x183a080, C4<z>, C4<1>, C4<1>;
L_0x183a1e0 .delay (50000,50000,50000) L_0x183a1e0/d;
L_0x183a2f0/d .functor OR 1, L_0x183a120, L_0x183a1e0, C4<0>, C4<0>;
L_0x183a2f0 .delay (50000,50000,50000) L_0x183a2f0/d;
v0x1835b90_0 .net "and1", 0 0, L_0x183a120; 1 drivers
v0x1835c30_0 .net "and2", 0 0, L_0x183a1e0; 1 drivers
v0x1835cd0_0 .alias "choice", 0 0, v0x1836590_0;
v0x1835d70_0 .alias "in0", 0 0, v0x1836df0_0;
v0x1835e20_0 .alias "in1", 0 0, v0x1836ca0_0;
v0x1835ec0_0 .net "nChoice", 0 0, L_0x183a080; 1 drivers
v0x1835fa0_0 .alias "out", 0 0, v0x1836bd0_0;
S_0x1835530 .scope module, "mux3" "twoBitMultiplexer" 2 69, 2 41, S_0x1835440;
 .timescale -9 -12;
L_0x183a470/d .functor NOT 1, L_0x183aa70, C4<0>, C4<0>, C4<0>;
L_0x183a470 .delay (50000,50000,50000) L_0x183a470/d;
L_0x183a580/d .functor AND 1, L_0x183aa70, L_0x183a2f0, C4<1>, C4<1>;
L_0x183a580 .delay (50000,50000,50000) L_0x183a580/d;
L_0x183a6d0/d .functor AND 1, L_0x183a470, L_0x1839f40, C4<1>, C4<1>;
L_0x183a6d0 .delay (50000,50000,50000) L_0x183a6d0/d;
L_0x183a820/d .functor OR 1, L_0x183a580, L_0x183a6d0, C4<0>, C4<0>;
L_0x183a820 .delay (50000,50000,50000) L_0x183a820/d;
v0x1835620_0 .net "and1", 0 0, L_0x183a580; 1 drivers
v0x18356e0_0 .net "and2", 0 0, L_0x183a6d0; 1 drivers
v0x1835780_0 .alias "choice", 0 0, v0x1836660_0;
v0x1835820_0 .alias "in0", 0 0, v0x1836ab0_0;
v0x18358a0_0 .alias "in1", 0 0, v0x1836bd0_0;
v0x1835940_0 .net "nChoice", 0 0, L_0x183a470; 1 drivers
v0x1835a20_0 .alias "out", 0 0, v0x1837160_0;
S_0x17fac80 .scope module, "mux1" "twoBitMultiplexer" 2 85, 2 41, S_0x1816bb0;
 .timescale -9 -12;
L_0x183aba0/d .functor NOT 1, L_0x183b0a0, C4<0>, C4<0>, C4<0>;
L_0x183aba0 .delay (50000,50000,50000) L_0x183aba0/d;
L_0x183ac60/d .functor AND 1, L_0x183b0a0, C4<z>, C4<1>, C4<1>;
L_0x183ac60 .delay (50000,50000,50000) L_0x183ac60/d;
L_0x183adc0/d .functor AND 1, L_0x183aba0, RS_0x7f0e359260a8, C4<1>, C4<1>;
L_0x183adc0 .delay (50000,50000,50000) L_0x183adc0/d;
L_0x183aed0/d .functor OR 1, L_0x183ac60, L_0x183adc0, C4<0>, C4<0>;
L_0x183aed0 .delay (50000,50000,50000) L_0x183aed0/d;
v0x1804a30_0 .net "and1", 0 0, L_0x183ac60; 1 drivers
v0x1835030_0 .net "and2", 0 0, L_0x183adc0; 1 drivers
v0x18350d0_0 .net "choice", 0 0, L_0x183b0a0; 1 drivers
v0x1835170_0 .alias "in0", 0 0, v0x1837160_0;
v0x1835220_0 .alias "in1", 0 0, v0x1836d70_0;
v0x18352c0_0 .net "nChoice", 0 0, L_0x183aba0; 1 drivers
v0x18353a0_0 .alias "out", 0 0, v0x18370e0_0;
S_0x17fb8a0 .scope module, "behavioralMultiplexer" "behavioralMultiplexer" 2 7;
 .timescale -9 -12;
v0x1837230_0 .net "address", 1 0, L_0x183b1e0; 1 drivers
v0x18372b0_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x1837330_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x18373b0_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x1837430_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x18374b0_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x1837530_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x18375b0_0 .net "inputs", 3 0, L_0x183b140; 1 drivers
v0x18376a0_0 .net "out", 0 0, L_0x183b2e0; 1 drivers
L_0x183b140 .concat [ 1 1 1 1], C4<z>, C4<z>, C4<z>, C4<z>;
L_0x183b1e0 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0x183b2e0 .part/v L_0x183b140, L_0x183b1e0, 1;
S_0x17fb390 .scope module, "structuralMultiplexer" "structuralMultiplexer" 2 20;
 .timescale -9 -12;
L_0x183b400/d .functor NOT 1, C4<z>, C4<0>, C4<0>, C4<0>;
L_0x183b400 .delay (50000,50000,50000) L_0x183b400/d;
L_0x183b4f0/d .functor NOT 1, C4<z>, C4<0>, C4<0>, C4<0>;
L_0x183b4f0 .delay (50000,50000,50000) L_0x183b4f0/d;
L_0x183b5f0/d .functor AND 1, L_0x183b400, L_0x183b4f0, C4<z>, C4<1>;
L_0x183b5f0 .delay (50000,50000,50000) L_0x183b5f0/d;
L_0x183b790/d .functor AND 1, C4<z>, L_0x183b4f0, C4<z>, C4<1>;
L_0x183b790 .delay (50000,50000,50000) L_0x183b790/d;
L_0x183b8e0/d .functor AND 1, L_0x183b400, C4<z>, C4<z>, C4<1>;
L_0x183b8e0 .delay (50000,50000,50000) L_0x183b8e0/d;
L_0x183ba30/d .functor AND 1, C4<z>, C4<z>, C4<z>, C4<1>;
L_0x183ba30 .delay (50000,50000,50000) L_0x183ba30/d;
L_0x183bba0/d .functor OR 1, L_0x183ba30, L_0x183b8e0, L_0x183b790, L_0x183b5f0;
L_0x183bba0 .delay (50000,50000,50000) L_0x183bba0/d;
v0x1837740_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x1837800_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x18378a0_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x1837940_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x18379c0_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x1837a60_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x1837b00_0 .net "inter0", 0 0, L_0x183b5f0; 1 drivers
v0x1837ba0_0 .net "inter1", 0 0, L_0x183b790; 1 drivers
v0x1837c90_0 .net "inter2", 0 0, L_0x183b8e0; 1 drivers
v0x1837d30_0 .net "inter3", 0 0, L_0x183ba30; 1 drivers
v0x1837e30_0 .net "nadd0", 0 0, L_0x183b400; 1 drivers
v0x1837ed0_0 .net "nadd1", 0 0, L_0x183b4f0; 1 drivers
v0x1837fe0_0 .net "out", 0 0, L_0x183bba0; 1 drivers
S_0x17fafc0 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x1839780_0 .var "choice0", 0 0;
v0x1839800_0 .var "choice1", 0 0;
v0x18398d0_0 .var "in0", 0 0;
v0x18399a0_0 .var "in1", 0 0;
v0x1839a70_0 .var "in2", 0 0;
v0x1839b40_0 .var "in3", 0 0;
RS_0x7f0e35926a08 .resolv tri, L_0x183c8d0, C4<0>, C4<z>, C4<z>;
v0x1839c10_0 .net8 "out", 0 0, RS_0x7f0e35926a08; 2 drivers
S_0x1838080 .scope module, "multiplexer1" "fourBitMultiplexer" 3 19, 2 58, S_0x17fafc0;
 .timescale -9 -12;
v0x1839140_0 .net "choice0", 0 0, v0x1839780_0; 1 drivers
v0x18391c0_0 .net "choice1", 0 0, v0x1839800_0; 1 drivers
v0x1839240_0 .net "in0", 0 0, v0x18398d0_0; 1 drivers
v0x18392c0_0 .net "in1", 0 0, v0x18399a0_0; 1 drivers
v0x1839370_0 .net "in2", 0 0, v0x1839a70_0; 1 drivers
v0x1839420_0 .net "in3", 0 0, v0x1839b40_0; 1 drivers
v0x18394e0_0 .alias "out", 0 0, v0x1839c10_0;
v0x1839590_0 .net "tempout0", 0 0, L_0x183c020; 1 drivers
v0x18396b0_0 .net "tempout1", 0 0, L_0x183c390; 1 drivers
S_0x1838c30 .scope module, "mux0" "twoBitMultiplexer" 2 66, 2 41, S_0x1838080;
 .timescale -9 -12;
L_0x183bdb0/d .functor NOT 1, v0x1839780_0, C4<0>, C4<0>, C4<0>;
L_0x183bdb0 .delay (50000,50000,50000) L_0x183bdb0/d;
L_0x183bee0/d .functor AND 1, v0x1839780_0, v0x18399a0_0, C4<1>, C4<1>;
L_0x183bee0 .delay (50000,50000,50000) L_0x183bee0/d;
L_0x183bf80/d .functor AND 1, L_0x183bdb0, v0x18398d0_0, C4<1>, C4<1>;
L_0x183bf80 .delay (50000,50000,50000) L_0x183bf80/d;
L_0x183c020/d .functor OR 1, L_0x183bee0, L_0x183bf80, C4<0>, C4<0>;
L_0x183c020 .delay (50000,50000,50000) L_0x183c020/d;
v0x1838d20_0 .net "and1", 0 0, L_0x183bee0; 1 drivers
v0x1838dc0_0 .net "and2", 0 0, L_0x183bf80; 1 drivers
v0x1838e60_0 .alias "choice", 0 0, v0x1839140_0;
v0x1838ee0_0 .alias "in0", 0 0, v0x1839240_0;
v0x1838f60_0 .alias "in1", 0 0, v0x18392c0_0;
v0x1838fe0_0 .net "nChoice", 0 0, L_0x183bdb0; 1 drivers
v0x18390c0_0 .alias "out", 0 0, v0x1839590_0;
S_0x18386c0 .scope module, "mux2" "twoBitMultiplexer" 2 67, 2 41, S_0x1838080;
 .timescale -9 -12;
L_0x183c160/d .functor NOT 1, v0x1839780_0, C4<0>, C4<0>, C4<0>;
L_0x183c160 .delay (50000,50000,50000) L_0x183c160/d;
L_0x183c200/d .functor AND 1, v0x1839780_0, v0x1839b40_0, C4<1>, C4<1>;
L_0x183c200 .delay (50000,50000,50000) L_0x183c200/d;
L_0x183c2a0/d .functor AND 1, L_0x183c160, v0x1839a70_0, C4<1>, C4<1>;
L_0x183c2a0 .delay (50000,50000,50000) L_0x183c2a0/d;
L_0x183c390/d .functor OR 1, L_0x183c200, L_0x183c2a0, C4<0>, C4<0>;
L_0x183c390 .delay (50000,50000,50000) L_0x183c390/d;
v0x18387b0_0 .net "and1", 0 0, L_0x183c200; 1 drivers
v0x1838870_0 .net "and2", 0 0, L_0x183c2a0; 1 drivers
v0x1838910_0 .alias "choice", 0 0, v0x1839140_0;
v0x18389b0_0 .alias "in0", 0 0, v0x1839370_0;
v0x1838a30_0 .alias "in1", 0 0, v0x1839420_0;
v0x1838ad0_0 .net "nChoice", 0 0, L_0x183c160; 1 drivers
v0x1838bb0_0 .alias "out", 0 0, v0x18396b0_0;
S_0x1838170 .scope module, "mux3" "twoBitMultiplexer" 2 69, 2 41, S_0x1838080;
 .timescale -9 -12;
L_0x183c4d0/d .functor NOT 1, v0x1839800_0, C4<0>, C4<0>, C4<0>;
L_0x183c4d0 .delay (50000,50000,50000) L_0x183c4d0/d;
L_0x183c570/d .functor AND 1, v0x1839800_0, L_0x183c390, C4<1>, C4<1>;
L_0x183c570 .delay (50000,50000,50000) L_0x183c570/d;
L_0x183c750/d .functor AND 1, L_0x183c4d0, L_0x183c020, C4<1>, C4<1>;
L_0x183c750 .delay (50000,50000,50000) L_0x183c750/d;
L_0x183c8d0/d .functor OR 1, L_0x183c570, L_0x183c750, C4<0>, C4<0>;
L_0x183c8d0 .delay (50000,50000,50000) L_0x183c8d0/d;
v0x1838260_0 .net "and1", 0 0, L_0x183c570; 1 drivers
v0x1838320_0 .net "and2", 0 0, L_0x183c750; 1 drivers
v0x18383c0_0 .alias "choice", 0 0, v0x18391c0_0;
v0x1838460_0 .alias "in0", 0 0, v0x1839590_0;
v0x18384e0_0 .alias "in1", 0 0, v0x18396b0_0;
v0x1838580_0 .net "nChoice", 0 0, L_0x183c4d0; 1 drivers
v0x1838620_0 .alias "out", 0 0, v0x1839c10_0;
    .scope S_0x17fafc0;
T_0 ;
    %vpi_call 3 22 "$display", "A0 A1| I0 I1 I2 I3 |  O | Expected Output";
    %set/v v0x1839780_0, 0, 1;
    %set/v v0x1839800_0, 0, 1;
    %set/v v0x18398d0_0, 0, 1;
    %set/v v0x18399a0_0, 2, 1;
    %set/v v0x1839a70_0, 2, 1;
    %set/v v0x1839b40_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1839780_0, v0x1839800_0, v0x18398d0_0, v0x18399a0_0, v0x1839a70_0, v0x1839b40_0, v0x1839c10_0;
    %set/v v0x1839780_0, 0, 1;
    %set/v v0x1839800_0, 0, 1;
    %set/v v0x18398d0_0, 1, 1;
    %set/v v0x18399a0_0, 2, 1;
    %set/v v0x1839a70_0, 2, 1;
    %set/v v0x1839b40_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1839780_0, v0x1839800_0, v0x18398d0_0, v0x18399a0_0, v0x1839a70_0, v0x1839b40_0, v0x1839c10_0;
    %set/v v0x1839780_0, 1, 1;
    %set/v v0x1839800_0, 0, 1;
    %set/v v0x18398d0_0, 2, 1;
    %set/v v0x18399a0_0, 0, 1;
    %set/v v0x1839a70_0, 2, 1;
    %set/v v0x1839b40_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1839780_0, v0x1839800_0, v0x18398d0_0, v0x18399a0_0, v0x1839a70_0, v0x1839b40_0, v0x1839c10_0;
    %set/v v0x1839780_0, 1, 1;
    %set/v v0x1839800_0, 0, 1;
    %set/v v0x18398d0_0, 2, 1;
    %set/v v0x18399a0_0, 1, 1;
    %set/v v0x1839a70_0, 2, 1;
    %set/v v0x1839b40_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1839780_0, v0x1839800_0, v0x18398d0_0, v0x18399a0_0, v0x1839a70_0, v0x1839b40_0, v0x1839c10_0;
    %set/v v0x1839780_0, 0, 1;
    %set/v v0x1839800_0, 1, 1;
    %set/v v0x18398d0_0, 2, 1;
    %set/v v0x18399a0_0, 2, 1;
    %set/v v0x1839a70_0, 0, 1;
    %set/v v0x1839b40_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1839780_0, v0x1839800_0, v0x18398d0_0, v0x18399a0_0, v0x1839a70_0, v0x1839b40_0, v0x1839c10_0;
    %set/v v0x1839780_0, 0, 1;
    %set/v v0x1839800_0, 1, 1;
    %set/v v0x18398d0_0, 2, 1;
    %set/v v0x18399a0_0, 2, 1;
    %set/v v0x1839a70_0, 1, 1;
    %set/v v0x1839b40_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1839780_0, v0x1839800_0, v0x18398d0_0, v0x18399a0_0, v0x1839a70_0, v0x1839b40_0, v0x1839c10_0;
    %set/v v0x1839780_0, 1, 1;
    %set/v v0x1839800_0, 1, 1;
    %set/v v0x18398d0_0, 2, 1;
    %set/v v0x18399a0_0, 2, 1;
    %set/v v0x1839a70_0, 2, 1;
    %set/v v0x1839b40_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 36 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1839780_0, v0x1839800_0, v0x18398d0_0, v0x18399a0_0, v0x1839a70_0, v0x1839b40_0, v0x1839c10_0;
    %set/v v0x1839780_0, 1, 1;
    %set/v v0x1839800_0, 1, 1;
    %set/v v0x18398d0_0, 2, 1;
    %set/v v0x18399a0_0, 2, 1;
    %set/v v0x1839a70_0, 2, 1;
    %set/v v0x1839b40_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 38 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1839780_0, v0x1839800_0, v0x18398d0_0, v0x18399a0_0, v0x1839a70_0, v0x1839b40_0, v0x1839c10_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
