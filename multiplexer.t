#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xb02b10 .scope module, "ALUmultiplexer" "ALUmultiplexer" 2 41;
 .timescale -9 -12;
L_0xb3c5e0/d .functor AND 1, L_0xb3c680, C4<z>, C4<1>, C4<1>;
L_0xb3c5e0 .delay (50000,50000,50000) L_0xb3c5e0/d;
L_0xb3c720/d .functor NOT 1, L_0xb3c7c0, C4<0>, C4<0>, C4<0>;
L_0xb3c720 .delay (50000,50000,50000) L_0xb3c720/d;
L_0xb3c8f0/d .functor AND 1, L_0xb3c720, L_0xb3c150, C4<1>, C4<1>;
L_0xb3c8f0 .delay (50000,50000,50000) L_0xb3c8f0/d;
L_0xb3c9e0/d .functor OR 1, L_0xb3c5e0, L_0xb3c8f0, C4<0>, C4<0>;
L_0xb3c9e0 .delay (50000,50000,50000) L_0xb3c9e0/d;
v0xb39cf0_0 .net "ANDNAD", 0 0, C4<z>; 0 drivers
v0xb39d90_0 .net "ANDNAND", 0 0, C4<z>; 0 drivers
v0xb39e10_0 .net "ORNOR", 0 0, C4<z>; 0 drivers
v0xb39eb0_0 .net "SLT", 0 0, C4<z>; 0 drivers
v0xb39f90_0 .net "XOR", 0 0, C4<z>; 0 drivers
v0xb3a040_0 .net *"_s5", 0 0, L_0xb3c680; 1 drivers
v0xb3a0c0_0 .net *"_s7", 0 0, L_0xb3c7c0; 1 drivers
v0xb3a140_0 .net "addsub", 0 0, C4<z>; 0 drivers
v0xb3a1c0_0 .net "bit1", 0 0, L_0xb3c5e0; 1 drivers
v0xb3a240_0 .net "bit2", 0 0, L_0xb3c720; 1 drivers
v0xb3a2c0_0 .net "bit3", 0 0, L_0xb3c8f0; 1 drivers
v0xb3a360_0 .net "muxindex", 2 0, C4<zzz>; 0 drivers
v0xb3a470_0 .net "out", 0 0, L_0xb3c9e0; 1 drivers
v0xb3a510_0 .net "tempout", 0 0, L_0xb3c150; 1 drivers
L_0xb3c380 .part C4<zzz>, 0, 1;
L_0xb3c4b0 .part C4<zzz>, 1, 1;
L_0xb3c680 .part C4<zzz>, 2, 1;
L_0xb3c7c0 .part C4<zzz>, 2, 1;
S_0xb01300 .scope module, "mux1" "structuralMultiplexer" 2 50, 2 20, S_0xb02b10;
 .timescale -9 -12;
L_0xb39a20/d .functor NOT 1, L_0xb3c380, C4<0>, C4<0>, C4<0>;
L_0xb39a20 .delay (50000,50000,50000) L_0xb39a20/d;
L_0xb3bab0/d .functor NOT 1, L_0xb3c4b0, C4<0>, C4<0>, C4<0>;
L_0xb3bab0 .delay (50000,50000,50000) L_0xb3bab0/d;
L_0xb3bbb0/d .functor AND 1, L_0xb39a20, L_0xb3bab0, C4<z>, C4<1>;
L_0xb3bbb0 .delay (50000,50000,50000) L_0xb3bbb0/d;
L_0xb3bda0/d .functor AND 1, L_0xb3c380, L_0xb3bab0, C4<z>, C4<1>;
L_0xb3bda0 .delay (50000,50000,50000) L_0xb3bda0/d;
L_0xb3bee0/d .functor AND 1, L_0xb39a20, L_0xb3c4b0, C4<z>, C4<1>;
L_0xb3bee0 .delay (50000,50000,50000) L_0xb3bee0/d;
L_0xb3c020/d .functor AND 1, L_0xb3c380, L_0xb3c4b0, C4<z>, C4<1>;
L_0xb3c020 .delay (50000,50000,50000) L_0xb3c020/d;
L_0xb3c150/d .functor OR 1, L_0xb3c020, L_0xb3bee0, L_0xb3bda0, L_0xb3bbb0;
L_0xb3c150 .delay (50000,50000,50000) L_0xb3c150/d;
v0xb11a30_0 .net "address0", 0 0, L_0xb3c380; 1 drivers
v0xb39400_0 .net "address1", 0 0, L_0xb3c4b0; 1 drivers
v0xb394a0_0 .alias "in0", 0 0, v0xb3a140_0;
v0xb39540_0 .alias "in1", 0 0, v0xb39f90_0;
v0xb395f0_0 .alias "in2", 0 0, v0xb39eb0_0;
v0xb39690_0 .alias "in3", 0 0, v0xb39cf0_0;
v0xb39770_0 .net "inter0", 0 0, L_0xb3bbb0; 1 drivers
v0xb39810_0 .net "inter1", 0 0, L_0xb3bda0; 1 drivers
v0xb39900_0 .net "inter2", 0 0, L_0xb3bee0; 1 drivers
v0xb399a0_0 .net "inter3", 0 0, L_0xb3c020; 1 drivers
v0xb39aa0_0 .net "nadd0", 0 0, L_0xb39a20; 1 drivers
v0xb39b40_0 .net "nadd1", 0 0, L_0xb3bab0; 1 drivers
v0xb39c50_0 .alias "out", 0 0, v0xb3a510_0;
S_0xb02600 .scope module, "behavioralMultiplexer" "behavioralMultiplexer" 2 7;
 .timescale -9 -12;
v0xb3a640_0 .net "address", 1 0, L_0xb3cc80; 1 drivers
v0xb3a6e0_0 .net "address0", 0 0, C4<z>; 0 drivers
v0xb3a780_0 .net "address1", 0 0, C4<z>; 0 drivers
v0xb3a820_0 .net "in0", 0 0, C4<z>; 0 drivers
v0xb3a8d0_0 .net "in1", 0 0, C4<z>; 0 drivers
v0xb3a970_0 .net "in2", 0 0, C4<z>; 0 drivers
v0xb3aa10_0 .net "in3", 0 0, C4<z>; 0 drivers
v0xb3aab0_0 .net "inputs", 3 0, L_0xb3cb20; 1 drivers
v0xb3ab50_0 .net "out", 0 0, L_0xb3cdb0; 1 drivers
L_0xb3cb20 .concat [ 1 1 1 1], C4<z>, C4<z>, C4<z>, C4<z>;
L_0xb3cc80 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0xb3cdb0 .part/v L_0xb3cb20, L_0xb3cc80, 1;
S_0xb01f40 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0xb3b550_0 .var "addr0", 0 0;
v0xb3b5f0_0 .var "addr1", 0 0;
v0xb3b6a0_0 .var "in0", 0 0;
v0xb3b750_0 .var "in1", 0 0;
v0xb3b830_0 .var "in2", 0 0;
v0xb3b8e0_0 .var "in3", 0 0;
v0xb3b960_0 .net "out", 0 0, L_0xb3d6d0; 1 drivers
S_0xb3abf0 .scope module, "multiplexer" "structuralMultiplexer" 3 12, 2 20, S_0xb01f40;
 .timescale -9 -12;
L_0xb3ced0/d .functor NOT 1, v0xb3b550_0, C4<0>, C4<0>, C4<0>;
L_0xb3ced0 .delay (50000,50000,50000) L_0xb3ced0/d;
L_0xb3d010/d .functor NOT 1, v0xb3b5f0_0, C4<0>, C4<0>, C4<0>;
L_0xb3d010 .delay (50000,50000,50000) L_0xb3d010/d;
L_0xb3d100/d .functor AND 1, L_0xb3ced0, L_0xb3d010, v0xb3b6a0_0, C4<1>;
L_0xb3d100 .delay (50000,50000,50000) L_0xb3d100/d;
L_0xb3d290/d .functor AND 1, v0xb3b550_0, L_0xb3d010, v0xb3b750_0, C4<1>;
L_0xb3d290 .delay (50000,50000,50000) L_0xb3d290/d;
L_0xb3d380/d .functor AND 1, L_0xb3ced0, v0xb3b5f0_0, v0xb3b830_0, C4<1>;
L_0xb3d380 .delay (50000,50000,50000) L_0xb3d380/d;
L_0xb3d4a0/d .functor AND 1, v0xb3b550_0, v0xb3b5f0_0, v0xb3b8e0_0, C4<1>;
L_0xb3d4a0 .delay (50000,50000,50000) L_0xb3d4a0/d;
L_0xb3d6d0/d .functor OR 1, L_0xb3d4a0, L_0xb3d380, L_0xb3d290, L_0xb3d100;
L_0xb3d6d0 .delay (50000,50000,50000) L_0xb3d6d0/d;
v0xb3ace0_0 .net "address0", 0 0, v0xb3b550_0; 1 drivers
v0xb3ada0_0 .net "address1", 0 0, v0xb3b5f0_0; 1 drivers
v0xb3ae40_0 .net "in0", 0 0, v0xb3b6a0_0; 1 drivers
v0xb3aee0_0 .net "in1", 0 0, v0xb3b750_0; 1 drivers
v0xb3af60_0 .net "in2", 0 0, v0xb3b830_0; 1 drivers
v0xb3b000_0 .net "in3", 0 0, v0xb3b8e0_0; 1 drivers
v0xb3b0a0_0 .net "inter0", 0 0, L_0xb3d100; 1 drivers
v0xb3b140_0 .net "inter1", 0 0, L_0xb3d290; 1 drivers
v0xb3b230_0 .net "inter2", 0 0, L_0xb3d380; 1 drivers
v0xb3b2d0_0 .net "inter3", 0 0, L_0xb3d4a0; 1 drivers
v0xb3b370_0 .net "nadd0", 0 0, L_0xb3ced0; 1 drivers
v0xb3b410_0 .net "nadd1", 0 0, L_0xb3d010; 1 drivers
v0xb3b4b0_0 .alias "out", 0 0, v0xb3b960_0;
    .scope S_0xb01f40;
T_0 ;
    %vpi_call 3 15 "$dumpfile", "multiplexer.vcd";
    %vpi_call 3 16 "$dumpvars";
    %vpi_call 3 18 "$display", "A0 A1| I0 I1 I2 I3 |  O | Expected Output";
    %set/v v0xb3b550_0, 0, 1;
    %set/v v0xb3b5f0_0, 0, 1;
    %set/v v0xb3b6a0_0, 0, 1;
    %set/v v0xb3b750_0, 2, 1;
    %set/v v0xb3b830_0, 2, 1;
    %set/v v0xb3b8e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0xb3b550_0, v0xb3b5f0_0, v0xb3b6a0_0, v0xb3b750_0, v0xb3b830_0, v0xb3b8e0_0, v0xb3b960_0;
    %set/v v0xb3b550_0, 0, 1;
    %set/v v0xb3b5f0_0, 0, 1;
    %set/v v0xb3b6a0_0, 1, 1;
    %set/v v0xb3b750_0, 2, 1;
    %set/v v0xb3b830_0, 2, 1;
    %set/v v0xb3b8e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0xb3b550_0, v0xb3b5f0_0, v0xb3b6a0_0, v0xb3b750_0, v0xb3b830_0, v0xb3b8e0_0, v0xb3b960_0;
    %set/v v0xb3b550_0, 1, 1;
    %set/v v0xb3b5f0_0, 0, 1;
    %set/v v0xb3b6a0_0, 2, 1;
    %set/v v0xb3b750_0, 0, 1;
    %set/v v0xb3b830_0, 2, 1;
    %set/v v0xb3b8e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0xb3b550_0, v0xb3b5f0_0, v0xb3b6a0_0, v0xb3b750_0, v0xb3b830_0, v0xb3b8e0_0, v0xb3b960_0;
    %set/v v0xb3b550_0, 1, 1;
    %set/v v0xb3b5f0_0, 0, 1;
    %set/v v0xb3b6a0_0, 2, 1;
    %set/v v0xb3b750_0, 1, 1;
    %set/v v0xb3b830_0, 2, 1;
    %set/v v0xb3b8e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0xb3b550_0, v0xb3b5f0_0, v0xb3b6a0_0, v0xb3b750_0, v0xb3b830_0, v0xb3b8e0_0, v0xb3b960_0;
    %set/v v0xb3b550_0, 0, 1;
    %set/v v0xb3b5f0_0, 1, 1;
    %set/v v0xb3b6a0_0, 2, 1;
    %set/v v0xb3b750_0, 2, 1;
    %set/v v0xb3b830_0, 0, 1;
    %set/v v0xb3b8e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0xb3b550_0, v0xb3b5f0_0, v0xb3b6a0_0, v0xb3b750_0, v0xb3b830_0, v0xb3b8e0_0, v0xb3b960_0;
    %set/v v0xb3b550_0, 0, 1;
    %set/v v0xb3b5f0_0, 1, 1;
    %set/v v0xb3b6a0_0, 2, 1;
    %set/v v0xb3b750_0, 2, 1;
    %set/v v0xb3b830_0, 1, 1;
    %set/v v0xb3b8e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0xb3b550_0, v0xb3b5f0_0, v0xb3b6a0_0, v0xb3b750_0, v0xb3b830_0, v0xb3b8e0_0, v0xb3b960_0;
    %set/v v0xb3b550_0, 1, 1;
    %set/v v0xb3b5f0_0, 1, 1;
    %set/v v0xb3b6a0_0, 2, 1;
    %set/v v0xb3b750_0, 2, 1;
    %set/v v0xb3b830_0, 2, 1;
    %set/v v0xb3b8e0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0xb3b550_0, v0xb3b5f0_0, v0xb3b6a0_0, v0xb3b750_0, v0xb3b830_0, v0xb3b8e0_0, v0xb3b960_0;
    %set/v v0xb3b550_0, 1, 1;
    %set/v v0xb3b5f0_0, 1, 1;
    %set/v v0xb3b6a0_0, 2, 1;
    %set/v v0xb3b750_0, 2, 1;
    %set/v v0xb3b830_0, 2, 1;
    %set/v v0xb3b8e0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0xb3b550_0, v0xb3b5f0_0, v0xb3b6a0_0, v0xb3b750_0, v0xb3b830_0, v0xb3b8e0_0, v0xb3b960_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
