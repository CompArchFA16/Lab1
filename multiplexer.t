#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x229cb10 .scope module, "ALUmultiplexer" "ALUmultiplexer" 2 41;
 .timescale -9 -12;
L_0x22d65e0/d .functor AND 1, L_0x22d6680, C4<z>, C4<1>, C4<1>;
L_0x22d65e0 .delay (50000,50000,50000) L_0x22d65e0/d;
L_0x22d6720/d .functor NOT 1, L_0x22d67c0, C4<0>, C4<0>, C4<0>;
L_0x22d6720 .delay (50000,50000,50000) L_0x22d6720/d;
L_0x22d68f0/d .functor AND 1, L_0x22d6720, L_0x22d6150, C4<1>, C4<1>;
L_0x22d68f0 .delay (50000,50000,50000) L_0x22d68f0/d;
L_0x22d69e0/d .functor OR 1, L_0x22d65e0, L_0x22d68f0, C4<0>, C4<0>;
L_0x22d69e0 .delay (50000,50000,50000) L_0x22d69e0/d;
v0x22d3cf0_0 .net "ANDNAD", 0 0, C4<z>; 0 drivers
v0x22d3d90_0 .net "ANDNAND", 0 0, C4<z>; 0 drivers
v0x22d3e10_0 .net "ORNOR", 0 0, C4<z>; 0 drivers
v0x22d3eb0_0 .net "SLT", 0 0, C4<z>; 0 drivers
v0x22d3f90_0 .net "XOR", 0 0, C4<z>; 0 drivers
v0x22d4040_0 .net *"_s5", 0 0, L_0x22d6680; 1 drivers
v0x22d40c0_0 .net *"_s7", 0 0, L_0x22d67c0; 1 drivers
v0x22d4140_0 .net "addsub", 0 0, C4<z>; 0 drivers
v0x22d41c0_0 .net "bit1", 0 0, L_0x22d65e0; 1 drivers
v0x22d4240_0 .net "bit2", 0 0, L_0x22d6720; 1 drivers
v0x22d42c0_0 .net "bit3", 0 0, L_0x22d68f0; 1 drivers
v0x22d4360_0 .net "muxindex", 2 0, C4<zzz>; 0 drivers
v0x22d4470_0 .net "out", 0 0, L_0x22d69e0; 1 drivers
v0x22d4510_0 .net "tempout", 0 0, L_0x22d6150; 1 drivers
L_0x22d6380 .part C4<zzz>, 0, 1;
L_0x22d64b0 .part C4<zzz>, 1, 1;
L_0x22d6680 .part C4<zzz>, 2, 1;
L_0x22d67c0 .part C4<zzz>, 2, 1;
S_0x229b300 .scope module, "mux1" "structuralMultiplexer" 2 50, 2 20, S_0x229cb10;
 .timescale -9 -12;
L_0x22d3a20/d .functor NOT 1, L_0x22d6380, C4<0>, C4<0>, C4<0>;
L_0x22d3a20 .delay (50000,50000,50000) L_0x22d3a20/d;
L_0x22d5ab0/d .functor NOT 1, L_0x22d64b0, C4<0>, C4<0>, C4<0>;
L_0x22d5ab0 .delay (50000,50000,50000) L_0x22d5ab0/d;
L_0x22d5bb0/d .functor AND 1, L_0x22d3a20, L_0x22d5ab0, C4<z>, C4<1>;
L_0x22d5bb0 .delay (50000,50000,50000) L_0x22d5bb0/d;
L_0x22d5da0/d .functor AND 1, L_0x22d6380, L_0x22d5ab0, C4<z>, C4<1>;
L_0x22d5da0 .delay (50000,50000,50000) L_0x22d5da0/d;
L_0x22d5ee0/d .functor AND 1, L_0x22d3a20, L_0x22d64b0, C4<z>, C4<1>;
L_0x22d5ee0 .delay (50000,50000,50000) L_0x22d5ee0/d;
L_0x22d6020/d .functor AND 1, L_0x22d6380, L_0x22d64b0, C4<z>, C4<1>;
L_0x22d6020 .delay (50000,50000,50000) L_0x22d6020/d;
L_0x22d6150/d .functor OR 1, L_0x22d6020, L_0x22d5ee0, L_0x22d5da0, L_0x22d5bb0;
L_0x22d6150 .delay (50000,50000,50000) L_0x22d6150/d;
v0x22aba30_0 .net "address0", 0 0, L_0x22d6380; 1 drivers
v0x22d3400_0 .net "address1", 0 0, L_0x22d64b0; 1 drivers
v0x22d34a0_0 .alias "in0", 0 0, v0x22d4140_0;
v0x22d3540_0 .alias "in1", 0 0, v0x22d3f90_0;
v0x22d35f0_0 .alias "in2", 0 0, v0x22d3eb0_0;
v0x22d3690_0 .alias "in3", 0 0, v0x22d3cf0_0;
v0x22d3770_0 .net "inter0", 0 0, L_0x22d5bb0; 1 drivers
v0x22d3810_0 .net "inter1", 0 0, L_0x22d5da0; 1 drivers
v0x22d3900_0 .net "inter2", 0 0, L_0x22d5ee0; 1 drivers
v0x22d39a0_0 .net "inter3", 0 0, L_0x22d6020; 1 drivers
v0x22d3aa0_0 .net "nadd0", 0 0, L_0x22d3a20; 1 drivers
v0x22d3b40_0 .net "nadd1", 0 0, L_0x22d5ab0; 1 drivers
v0x22d3c50_0 .alias "out", 0 0, v0x22d4510_0;
S_0x229c600 .scope module, "behavioralMultiplexer" "behavioralMultiplexer" 2 7;
 .timescale -9 -12;
v0x22d4640_0 .net "address", 1 0, L_0x22d6c80; 1 drivers
v0x22d46e0_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x22d4780_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x22d4820_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x22d48d0_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x22d4970_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x22d4a10_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x22d4ab0_0 .net "inputs", 3 0, L_0x22d6b20; 1 drivers
v0x22d4b50_0 .net "out", 0 0, L_0x22d6db0; 1 drivers
L_0x22d6b20 .concat [ 1 1 1 1], C4<z>, C4<z>, C4<z>, C4<z>;
L_0x22d6c80 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0x22d6db0 .part/v L_0x22d6b20, L_0x22d6c80, 1;
S_0x229bf40 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x22d5550_0 .var "addr0", 0 0;
v0x22d55f0_0 .var "addr1", 0 0;
v0x22d56a0_0 .var "in0", 0 0;
v0x22d5750_0 .var "in1", 0 0;
v0x22d5830_0 .var "in2", 0 0;
v0x22d58e0_0 .var "in3", 0 0;
v0x22d5960_0 .net "out", 0 0, L_0x22d76d0; 1 drivers
S_0x22d4bf0 .scope module, "multiplexer" "structuralMultiplexer" 3 12, 2 20, S_0x229bf40;
 .timescale -9 -12;
L_0x22d6ed0/d .functor NOT 1, v0x22d5550_0, C4<0>, C4<0>, C4<0>;
L_0x22d6ed0 .delay (50000,50000,50000) L_0x22d6ed0/d;
L_0x22d7010/d .functor NOT 1, v0x22d55f0_0, C4<0>, C4<0>, C4<0>;
L_0x22d7010 .delay (50000,50000,50000) L_0x22d7010/d;
L_0x22d7100/d .functor AND 1, L_0x22d6ed0, L_0x22d7010, v0x22d56a0_0, C4<1>;
L_0x22d7100 .delay (50000,50000,50000) L_0x22d7100/d;
L_0x22d7290/d .functor AND 1, v0x22d5550_0, L_0x22d7010, v0x22d5750_0, C4<1>;
L_0x22d7290 .delay (50000,50000,50000) L_0x22d7290/d;
L_0x22d7380/d .functor AND 1, L_0x22d6ed0, v0x22d55f0_0, v0x22d5830_0, C4<1>;
L_0x22d7380 .delay (50000,50000,50000) L_0x22d7380/d;
L_0x22d74a0/d .functor AND 1, v0x22d5550_0, v0x22d55f0_0, v0x22d58e0_0, C4<1>;
L_0x22d74a0 .delay (50000,50000,50000) L_0x22d74a0/d;
L_0x22d76d0/d .functor OR 1, L_0x22d74a0, L_0x22d7380, L_0x22d7290, L_0x22d7100;
L_0x22d76d0 .delay (50000,50000,50000) L_0x22d76d0/d;
v0x22d4ce0_0 .net "address0", 0 0, v0x22d5550_0; 1 drivers
v0x22d4da0_0 .net "address1", 0 0, v0x22d55f0_0; 1 drivers
v0x22d4e40_0 .net "in0", 0 0, v0x22d56a0_0; 1 drivers
v0x22d4ee0_0 .net "in1", 0 0, v0x22d5750_0; 1 drivers
v0x22d4f60_0 .net "in2", 0 0, v0x22d5830_0; 1 drivers
v0x22d5000_0 .net "in3", 0 0, v0x22d58e0_0; 1 drivers
v0x22d50a0_0 .net "inter0", 0 0, L_0x22d7100; 1 drivers
v0x22d5140_0 .net "inter1", 0 0, L_0x22d7290; 1 drivers
v0x22d5230_0 .net "inter2", 0 0, L_0x22d7380; 1 drivers
v0x22d52d0_0 .net "inter3", 0 0, L_0x22d74a0; 1 drivers
v0x22d5370_0 .net "nadd0", 0 0, L_0x22d6ed0; 1 drivers
v0x22d5410_0 .net "nadd1", 0 0, L_0x22d7010; 1 drivers
v0x22d54b0_0 .alias "out", 0 0, v0x22d5960_0;
    .scope S_0x229bf40;
T_0 ;
    %vpi_call 3 15 "$dumpfile", "multiplexer.vcd";
    %vpi_call 3 16 "$dumpvars";
    %vpi_call 3 18 "$display", "A0 A1| I0 I1 I2 I3 |  O | Expected Output";
    %set/v v0x22d5550_0, 0, 1;
    %set/v v0x22d55f0_0, 0, 1;
    %set/v v0x22d56a0_0, 0, 1;
    %set/v v0x22d5750_0, 2, 1;
    %set/v v0x22d5830_0, 2, 1;
    %set/v v0x22d58e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x22d5550_0, v0x22d55f0_0, v0x22d56a0_0, v0x22d5750_0, v0x22d5830_0, v0x22d58e0_0, v0x22d5960_0;
    %set/v v0x22d5550_0, 0, 1;
    %set/v v0x22d55f0_0, 0, 1;
    %set/v v0x22d56a0_0, 1, 1;
    %set/v v0x22d5750_0, 2, 1;
    %set/v v0x22d5830_0, 2, 1;
    %set/v v0x22d58e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x22d5550_0, v0x22d55f0_0, v0x22d56a0_0, v0x22d5750_0, v0x22d5830_0, v0x22d58e0_0, v0x22d5960_0;
    %set/v v0x22d5550_0, 1, 1;
    %set/v v0x22d55f0_0, 0, 1;
    %set/v v0x22d56a0_0, 2, 1;
    %set/v v0x22d5750_0, 0, 1;
    %set/v v0x22d5830_0, 2, 1;
    %set/v v0x22d58e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x22d5550_0, v0x22d55f0_0, v0x22d56a0_0, v0x22d5750_0, v0x22d5830_0, v0x22d58e0_0, v0x22d5960_0;
    %set/v v0x22d5550_0, 1, 1;
    %set/v v0x22d55f0_0, 0, 1;
    %set/v v0x22d56a0_0, 2, 1;
    %set/v v0x22d5750_0, 1, 1;
    %set/v v0x22d5830_0, 2, 1;
    %set/v v0x22d58e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x22d5550_0, v0x22d55f0_0, v0x22d56a0_0, v0x22d5750_0, v0x22d5830_0, v0x22d58e0_0, v0x22d5960_0;
    %set/v v0x22d5550_0, 0, 1;
    %set/v v0x22d55f0_0, 1, 1;
    %set/v v0x22d56a0_0, 2, 1;
    %set/v v0x22d5750_0, 2, 1;
    %set/v v0x22d5830_0, 0, 1;
    %set/v v0x22d58e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x22d5550_0, v0x22d55f0_0, v0x22d56a0_0, v0x22d5750_0, v0x22d5830_0, v0x22d58e0_0, v0x22d5960_0;
    %set/v v0x22d5550_0, 0, 1;
    %set/v v0x22d55f0_0, 1, 1;
    %set/v v0x22d56a0_0, 2, 1;
    %set/v v0x22d5750_0, 2, 1;
    %set/v v0x22d5830_0, 1, 1;
    %set/v v0x22d58e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x22d5550_0, v0x22d55f0_0, v0x22d56a0_0, v0x22d5750_0, v0x22d5830_0, v0x22d58e0_0, v0x22d5960_0;
    %set/v v0x22d5550_0, 1, 1;
    %set/v v0x22d55f0_0, 1, 1;
    %set/v v0x22d56a0_0, 2, 1;
    %set/v v0x22d5750_0, 2, 1;
    %set/v v0x22d5830_0, 2, 1;
    %set/v v0x22d58e0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x22d5550_0, v0x22d55f0_0, v0x22d56a0_0, v0x22d5750_0, v0x22d5830_0, v0x22d58e0_0, v0x22d5960_0;
    %set/v v0x22d5550_0, 1, 1;
    %set/v v0x22d55f0_0, 1, 1;
    %set/v v0x22d56a0_0, 2, 1;
    %set/v v0x22d5750_0, 2, 1;
    %set/v v0x22d5830_0, 2, 1;
    %set/v v0x22d58e0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x22d5550_0, v0x22d55f0_0, v0x22d56a0_0, v0x22d5750_0, v0x22d5830_0, v0x22d58e0_0, v0x22d5960_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
