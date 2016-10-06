#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1a7fc70 .scope module, "FullSubtractor32bit" "FullSubtractor32bit" 2 70;
 .timescale -9 -12;
L_0x1ac38e0/d .functor XOR 1, L_0x1ac35f0, L_0x1ac1040, C4<0>, C4<0>;
L_0x1ac38e0 .delay (30000,30000,30000) L_0x1ac38e0/d;
v0x1aa0de0_0 .net "a", 31 0, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; 0 drivers
v0x1aa0ea0_0 .net "b", 31 0, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; 0 drivers
v0x1aa0f40_0 .net "carryout", 0 0, L_0x1ac35f0; 1 drivers
v0x1aa1010_0 .net "overflow", 0 0, L_0x1ac38e0; 1 drivers
RS_0x2b7da7d6ff58/0/0 .resolv tri, L_0x1ab32f0, L_0x1ab5940, L_0x1ab7f60, L_0x1aba510;
RS_0x2b7da7d6ff58/0/4 .resolv tri, L_0x1abcb90, L_0x1abf140, L_0x1ac1780, L_0x1ac3d30;
RS_0x2b7da7d6ff58 .resolv tri, RS_0x2b7da7d6ff58/0/0, RS_0x2b7da7d6ff58/0/4, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>;
v0x1aa1090_0 .net8 "sum", 31 0, RS_0x2b7da7d6ff58; 8 drivers
v0x1aa1130 .array "temp_cout", 0 6;
v0x1aa1130_0 .net v0x1aa1130 0, 0 0, L_0x1ab2bb0; 1 drivers
v0x1aa1130_1 .net v0x1aa1130 1, 0 0, L_0x1ab5200; 1 drivers
v0x1aa1130_2 .net v0x1aa1130 2, 0 0, L_0x1ab7820; 1 drivers
v0x1aa1130_3 .net v0x1aa1130 3, 0 0, L_0x1ab9dd0; 1 drivers
v0x1aa1130_4 .net v0x1aa1130 4, 0 0, L_0x1abc450; 1 drivers
v0x1aa1130_5 .net v0x1aa1130 5, 0 0, L_0x1abea70; 1 drivers
v0x1aa1130_6 .net v0x1aa1130 6, 0 0, L_0x1ac1040; 1 drivers
RS_0x2b7da7d6fe98 .resolv tri, L_0x1ab13f0, L_0x1ab1c60, L_0x1ab2530, L_0x1ab2d70;
L_0x1ab32f0 .part/pv RS_0x2b7da7d6fe98, 0, 4, 32;
L_0x1ab3390 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 0, 4;
L_0x1ab3430 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 0, 4;
RS_0x2b7da7d6f8c8 .resolv tri, L_0x1ab39b0, L_0x1ab4270, L_0x1ab4b40, L_0x1ab53c0;
L_0x1ab5940 .part/pv RS_0x2b7da7d6f8c8, 4, 4, 32;
L_0x1ab59e0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 4, 4;
L_0x1ab5a80 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 4, 4;
RS_0x2b7da7d6f2f8 .resolv tri, L_0x1ab5fb0, L_0x1ab6870, L_0x1ab7160, L_0x1ab79e0;
L_0x1ab7f60 .part/pv RS_0x2b7da7d6f2f8, 8, 4, 32;
L_0x1ab8000 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 8, 4;
L_0x1ab80a0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 8, 4;
RS_0x2b7da7d6ed28 .resolv tri, L_0x1ab8580, L_0x1ab8e40, L_0x1ab9710, L_0x1ab9f90;
L_0x1aba510 .part/pv RS_0x2b7da7d6ed28, 12, 4, 32;
L_0x1aba640 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 12, 4;
L_0x1aba770 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 12, 4;
RS_0x2b7da7d6e758 .resolv tri, L_0x1abad40, L_0x1abb510, L_0x1abbd90, L_0x1abc610;
L_0x1abcb90 .part/pv RS_0x2b7da7d6e758, 16, 4, 32;
L_0x1abcc30 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 16, 4;
L_0x1abcd50 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 16, 4;
RS_0x2b7da7d6e188 .resolv tri, L_0x1abd220, L_0x1abdae0, L_0x1abe3b0, L_0x1abec30;
L_0x1abf140 .part/pv RS_0x2b7da7d6e188, 20, 4, 32;
L_0x1abf270 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 20, 4;
L_0x1abf310 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 20, 4;
RS_0x2b7da7d6dbb8 .resolv tri, L_0x1abf7f0, L_0x1ac00b0, L_0x1ac0980, L_0x1ac1200;
L_0x1ac1780 .part/pv RS_0x2b7da7d6dbb8, 24, 4, 32;
L_0x1ac1820 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 24, 4;
L_0x1abf3b0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 24, 4;
RS_0x2b7da7d6d5e8 .resolv tri, L_0x1ac1da0, L_0x1ac2660, L_0x1ac2f30, L_0x1ac37b0;
L_0x1ac3d30 .part/pv RS_0x2b7da7d6d5e8, 28, 4, 32;
L_0x1ac18c0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 28, 4;
L_0x1ac40b0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 28, 4;
S_0x1a9eff0 .scope module, "f40" "CompAdder4bit" 2 80, 2 30, S_0x1a7fc70;
 .timescale -9 -12;
v0x1aa0990_0 .net "a", 3 0, L_0x1ab3390; 1 drivers
v0x1aa0a50_0 .net "b", 3 0, L_0x1ab3430; 1 drivers
v0x1aa0af0_0 .net "carryin", 0 0, C4<1>; 1 drivers
v0x1aa0b70_0 .alias "carryout", 0 0, v0x1aa1130_0;
v0x1aa0bf0_0 .net8 "sum", 3 0, RS_0x2b7da7d6fe98; 4 drivers
v0x1aa0c70 .array "temp_cout", 0 2;
v0x1aa0c70_0 .net v0x1aa0c70 0, 0 0, L_0x1ab1320; 1 drivers
v0x1aa0c70_1 .net v0x1aa0c70 1, 0 0, L_0x1ab1af0; 1 drivers
v0x1aa0c70_2 .net v0x1aa0c70 2, 0 0, L_0x1ab23a0; 1 drivers
L_0x1ab13f0 .part/pv L_0x1ab0f20, 0, 1, 4;
L_0x1ab1490 .part L_0x1ab3390, 0, 1;
L_0x1ab15c0 .part L_0x1ab3430, 0, 1;
L_0x1ab1c60 .part/pv L_0x1ab16f0, 1, 1, 4;
L_0x1ab1d50 .part L_0x1ab3390, 1, 1;
L_0x1ab1e80 .part L_0x1ab3430, 1, 1;
L_0x1ab2530 .part/pv L_0x1ab1ff0, 2, 1, 4;
L_0x1ab25d0 .part L_0x1ab3390, 2, 1;
L_0x1ab2700 .part L_0x1ab3430, 2, 1;
L_0x1ab2d70 .part/pv L_0x1ab2830, 3, 1, 4;
L_0x1ab2f00 .part L_0x1ab3390, 3, 1;
L_0x1ab30c0 .part L_0x1ab3430, 3, 1;
S_0x1aa0390 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1a9eff0;
 .timescale -9 -12;
L_0x1ab0f20/d .functor XOR 1, L_0x1ab1490, L_0x1ab15c0, C4<1>, C4<0>;
L_0x1ab0f20 .delay (30000,30000,30000) L_0x1ab0f20/d;
L_0x1ab1080/d .functor AND 1, L_0x1ab1490, L_0x1ab15c0, C4<1>, C4<1>;
L_0x1ab1080 .delay (20000,20000,20000) L_0x1ab1080/d;
L_0x1ab1120/d .functor AND 1, L_0x1ab1490, C4<1>, C4<1>, C4<1>;
L_0x1ab1120 .delay (20000,20000,20000) L_0x1ab1120/d;
L_0x1ab11c0/d .functor AND 1, L_0x1ab15c0, C4<1>, C4<1>, C4<1>;
L_0x1ab11c0 .delay (20000,20000,20000) L_0x1ab11c0/d;
L_0x1ab1320/d .functor OR 1, L_0x1ab1080, L_0x1ab1120, L_0x1ab11c0, C4<0>;
L_0x1ab1320 .delay (20000,20000,20000) L_0x1ab1320/d;
v0x1aa0480_0 .net "AandB", 0 0, L_0x1ab1080; 1 drivers
v0x1aa0540_0 .net "AandC", 0 0, L_0x1ab1120; 1 drivers
v0x1aa05e0_0 .net "BandC", 0 0, L_0x1ab11c0; 1 drivers
v0x1aa0680_0 .net "a", 0 0, L_0x1ab1490; 1 drivers
v0x1aa0700_0 .net "b", 0 0, L_0x1ab15c0; 1 drivers
v0x1aa07a0_0 .alias "carryin", 0 0, v0x1aa0af0_0;
v0x1aa0840_0 .alias "carryout", 0 0, v0x1aa0c70_0;
v0x1aa08c0_0 .net "sum", 0 0, L_0x1ab0f20; 1 drivers
S_0x1a9fd90 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1a9eff0;
 .timescale -9 -12;
L_0x1ab16f0/d .functor XOR 1, L_0x1ab1d50, L_0x1ab1e80, L_0x1ab1320, C4<0>;
L_0x1ab16f0 .delay (30000,30000,30000) L_0x1ab16f0/d;
L_0x1ab18b0/d .functor AND 1, L_0x1ab1d50, L_0x1ab1e80, C4<1>, C4<1>;
L_0x1ab18b0 .delay (20000,20000,20000) L_0x1ab18b0/d;
L_0x1ab1980/d .functor AND 1, L_0x1ab1d50, L_0x1ab1320, C4<1>, C4<1>;
L_0x1ab1980 .delay (20000,20000,20000) L_0x1ab1980/d;
L_0x1ab1a20/d .functor AND 1, L_0x1ab1e80, L_0x1ab1320, C4<1>, C4<1>;
L_0x1ab1a20 .delay (20000,20000,20000) L_0x1ab1a20/d;
L_0x1ab1af0/d .functor OR 1, L_0x1ab18b0, L_0x1ab1980, L_0x1ab1a20, C4<0>;
L_0x1ab1af0 .delay (20000,20000,20000) L_0x1ab1af0/d;
v0x1a9fe80_0 .net "AandB", 0 0, L_0x1ab18b0; 1 drivers
v0x1a9ff40_0 .net "AandC", 0 0, L_0x1ab1980; 1 drivers
v0x1a9ffe0_0 .net "BandC", 0 0, L_0x1ab1a20; 1 drivers
v0x1aa0080_0 .net "a", 0 0, L_0x1ab1d50; 1 drivers
v0x1aa0100_0 .net "b", 0 0, L_0x1ab1e80; 1 drivers
v0x1aa01a0_0 .alias "carryin", 0 0, v0x1aa0c70_0;
v0x1aa0240_0 .alias "carryout", 0 0, v0x1aa0c70_1;
v0x1aa02c0_0 .net "sum", 0 0, L_0x1ab16f0; 1 drivers
S_0x1a9f790 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1a9eff0;
 .timescale -9 -12;
L_0x1ab1ff0/d .functor XOR 1, L_0x1ab25d0, L_0x1ab2700, L_0x1ab1af0, C4<0>;
L_0x1ab1ff0 .delay (30000,30000,30000) L_0x1ab1ff0/d;
L_0x1ab2120/d .functor AND 1, L_0x1ab25d0, L_0x1ab2700, C4<1>, C4<1>;
L_0x1ab2120 .delay (20000,20000,20000) L_0x1ab2120/d;
L_0x1ab2260/d .functor AND 1, L_0x1ab25d0, L_0x1ab1af0, C4<1>, C4<1>;
L_0x1ab2260 .delay (20000,20000,20000) L_0x1ab2260/d;
L_0x1ab2300/d .functor AND 1, L_0x1ab2700, L_0x1ab1af0, C4<1>, C4<1>;
L_0x1ab2300 .delay (20000,20000,20000) L_0x1ab2300/d;
L_0x1ab23a0/d .functor OR 1, L_0x1ab2120, L_0x1ab2260, L_0x1ab2300, C4<0>;
L_0x1ab23a0 .delay (20000,20000,20000) L_0x1ab23a0/d;
v0x1a9f880_0 .net "AandB", 0 0, L_0x1ab2120; 1 drivers
v0x1a9f940_0 .net "AandC", 0 0, L_0x1ab2260; 1 drivers
v0x1a9f9e0_0 .net "BandC", 0 0, L_0x1ab2300; 1 drivers
v0x1a9fa80_0 .net "a", 0 0, L_0x1ab25d0; 1 drivers
v0x1a9fb00_0 .net "b", 0 0, L_0x1ab2700; 1 drivers
v0x1a9fba0_0 .alias "carryin", 0 0, v0x1aa0c70_1;
v0x1a9fc40_0 .alias "carryout", 0 0, v0x1aa0c70_2;
v0x1a9fcc0_0 .net "sum", 0 0, L_0x1ab1ff0; 1 drivers
S_0x1a9f0e0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1a9eff0;
 .timescale -9 -12;
L_0x1ab2830/d .functor XOR 1, L_0x1ab2f00, L_0x1ab30c0, L_0x1ab23a0, C4<0>;
L_0x1ab2830 .delay (30000,30000,30000) L_0x1ab2830/d;
L_0x1ab2920/d .functor AND 1, L_0x1ab2f00, L_0x1ab30c0, C4<1>, C4<1>;
L_0x1ab2920 .delay (20000,20000,20000) L_0x1ab2920/d;
L_0x1ab2a40/d .functor AND 1, L_0x1ab2f00, L_0x1ab23a0, C4<1>, C4<1>;
L_0x1ab2a40 .delay (20000,20000,20000) L_0x1ab2a40/d;
L_0x1ab2ae0/d .functor AND 1, L_0x1ab30c0, L_0x1ab23a0, C4<1>, C4<1>;
L_0x1ab2ae0 .delay (20000,20000,20000) L_0x1ab2ae0/d;
L_0x1ab2bb0/d .functor OR 1, L_0x1ab2920, L_0x1ab2a40, L_0x1ab2ae0, C4<0>;
L_0x1ab2bb0 .delay (20000,20000,20000) L_0x1ab2bb0/d;
v0x1a9f1d0_0 .net "AandB", 0 0, L_0x1ab2920; 1 drivers
v0x1a9f290_0 .net "AandC", 0 0, L_0x1ab2a40; 1 drivers
v0x1a9f330_0 .net "BandC", 0 0, L_0x1ab2ae0; 1 drivers
v0x1a9f3d0_0 .net "a", 0 0, L_0x1ab2f00; 1 drivers
v0x1a9f450_0 .net "b", 0 0, L_0x1ab30c0; 1 drivers
v0x1a9f4f0_0 .alias "carryin", 0 0, v0x1aa0c70_2;
v0x1a9f5d0_0 .alias "carryout", 0 0, v0x1aa1130_0;
v0x1a9f6a0_0 .net "sum", 0 0, L_0x1ab2830; 1 drivers
S_0x1a9d200 .scope module, "f41" "CompAdder4bit" 2 81, 2 30, S_0x1a7fc70;
 .timescale -9 -12;
v0x1a9eba0_0 .net "a", 3 0, L_0x1ab59e0; 1 drivers
v0x1a9ec60_0 .net "b", 3 0, L_0x1ab5a80; 1 drivers
v0x1a9ed00_0 .alias "carryin", 0 0, v0x1aa1130_0;
v0x1a9ed80_0 .alias "carryout", 0 0, v0x1aa1130_1;
v0x1a9ee00_0 .net8 "sum", 3 0, RS_0x2b7da7d6f8c8; 4 drivers
v0x1a9ee80 .array "temp_cout", 0 2;
v0x1a9ee80_0 .net v0x1a9ee80 0, 0 0, L_0x1ab38e0; 1 drivers
v0x1a9ee80_1 .net v0x1a9ee80 1, 0 0, L_0x1ab40b0; 1 drivers
v0x1a9ee80_2 .net v0x1a9ee80 2, 0 0, L_0x1ab49b0; 1 drivers
L_0x1ab39b0 .part/pv L_0x1ab2ea0, 0, 1, 4;
L_0x1ab3a50 .part L_0x1ab59e0, 0, 1;
L_0x1ab3b80 .part L_0x1ab5a80, 0, 1;
L_0x1ab4270 .part/pv L_0x1ab3cb0, 1, 1, 4;
L_0x1ab4360 .part L_0x1ab59e0, 1, 1;
L_0x1ab4490 .part L_0x1ab5a80, 1, 1;
L_0x1ab4b40 .part/pv L_0x1ab4600, 2, 1, 4;
L_0x1ab4be0 .part L_0x1ab59e0, 2, 1;
L_0x1ab4d10 .part L_0x1ab5a80, 2, 1;
L_0x1ab53c0 .part/pv L_0x1ab4e40, 3, 1, 4;
L_0x1ab5550 .part L_0x1ab59e0, 3, 1;
L_0x1ab5710 .part L_0x1ab5a80, 3, 1;
S_0x1a9e5a0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1a9d200;
 .timescale -9 -12;
L_0x1ab2ea0/d .functor XOR 1, L_0x1ab3a50, L_0x1ab3b80, L_0x1ab2bb0, C4<0>;
L_0x1ab2ea0 .delay (30000,30000,30000) L_0x1ab2ea0/d;
L_0x1ab35e0/d .functor AND 1, L_0x1ab3a50, L_0x1ab3b80, C4<1>, C4<1>;
L_0x1ab35e0 .delay (20000,20000,20000) L_0x1ab35e0/d;
L_0x1ab36b0/d .functor AND 1, L_0x1ab3a50, L_0x1ab2bb0, C4<1>, C4<1>;
L_0x1ab36b0 .delay (20000,20000,20000) L_0x1ab36b0/d;
L_0x1ab3750/d .functor AND 1, L_0x1ab3b80, L_0x1ab2bb0, C4<1>, C4<1>;
L_0x1ab3750 .delay (20000,20000,20000) L_0x1ab3750/d;
L_0x1ab38e0/d .functor OR 1, L_0x1ab35e0, L_0x1ab36b0, L_0x1ab3750, C4<0>;
L_0x1ab38e0 .delay (20000,20000,20000) L_0x1ab38e0/d;
v0x1a9e690_0 .net "AandB", 0 0, L_0x1ab35e0; 1 drivers
v0x1a9e750_0 .net "AandC", 0 0, L_0x1ab36b0; 1 drivers
v0x1a9e7f0_0 .net "BandC", 0 0, L_0x1ab3750; 1 drivers
v0x1a9e890_0 .net "a", 0 0, L_0x1ab3a50; 1 drivers
v0x1a9e910_0 .net "b", 0 0, L_0x1ab3b80; 1 drivers
v0x1a9e9b0_0 .alias "carryin", 0 0, v0x1aa1130_0;
v0x1a9ea50_0 .alias "carryout", 0 0, v0x1a9ee80_0;
v0x1a9ead0_0 .net "sum", 0 0, L_0x1ab2ea0; 1 drivers
S_0x1a9dfa0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1a9d200;
 .timescale -9 -12;
L_0x1ab3cb0/d .functor XOR 1, L_0x1ab4360, L_0x1ab4490, L_0x1ab38e0, C4<0>;
L_0x1ab3cb0 .delay (30000,30000,30000) L_0x1ab3cb0/d;
L_0x1ab3e70/d .functor AND 1, L_0x1ab4360, L_0x1ab4490, C4<1>, C4<1>;
L_0x1ab3e70 .delay (20000,20000,20000) L_0x1ab3e70/d;
L_0x1ab3f40/d .functor AND 1, L_0x1ab4360, L_0x1ab38e0, C4<1>, C4<1>;
L_0x1ab3f40 .delay (20000,20000,20000) L_0x1ab3f40/d;
L_0x1ab3fe0/d .functor AND 1, L_0x1ab4490, L_0x1ab38e0, C4<1>, C4<1>;
L_0x1ab3fe0 .delay (20000,20000,20000) L_0x1ab3fe0/d;
L_0x1ab40b0/d .functor OR 1, L_0x1ab3e70, L_0x1ab3f40, L_0x1ab3fe0, C4<0>;
L_0x1ab40b0 .delay (20000,20000,20000) L_0x1ab40b0/d;
v0x1a9e090_0 .net "AandB", 0 0, L_0x1ab3e70; 1 drivers
v0x1a9e150_0 .net "AandC", 0 0, L_0x1ab3f40; 1 drivers
v0x1a9e1f0_0 .net "BandC", 0 0, L_0x1ab3fe0; 1 drivers
v0x1a9e290_0 .net "a", 0 0, L_0x1ab4360; 1 drivers
v0x1a9e310_0 .net "b", 0 0, L_0x1ab4490; 1 drivers
v0x1a9e3b0_0 .alias "carryin", 0 0, v0x1a9ee80_0;
v0x1a9e450_0 .alias "carryout", 0 0, v0x1a9ee80_1;
v0x1a9e4d0_0 .net "sum", 0 0, L_0x1ab3cb0; 1 drivers
S_0x1a9d9a0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1a9d200;
 .timescale -9 -12;
L_0x1ab4600/d .functor XOR 1, L_0x1ab4be0, L_0x1ab4d10, L_0x1ab40b0, C4<0>;
L_0x1ab4600 .delay (30000,30000,30000) L_0x1ab4600/d;
L_0x1ab4730/d .functor AND 1, L_0x1ab4be0, L_0x1ab4d10, C4<1>, C4<1>;
L_0x1ab4730 .delay (20000,20000,20000) L_0x1ab4730/d;
L_0x1ab4870/d .functor AND 1, L_0x1ab4be0, L_0x1ab40b0, C4<1>, C4<1>;
L_0x1ab4870 .delay (20000,20000,20000) L_0x1ab4870/d;
L_0x1ab4910/d .functor AND 1, L_0x1ab4d10, L_0x1ab40b0, C4<1>, C4<1>;
L_0x1ab4910 .delay (20000,20000,20000) L_0x1ab4910/d;
L_0x1ab49b0/d .functor OR 1, L_0x1ab4730, L_0x1ab4870, L_0x1ab4910, C4<0>;
L_0x1ab49b0 .delay (20000,20000,20000) L_0x1ab49b0/d;
v0x1a9da90_0 .net "AandB", 0 0, L_0x1ab4730; 1 drivers
v0x1a9db50_0 .net "AandC", 0 0, L_0x1ab4870; 1 drivers
v0x1a9dbf0_0 .net "BandC", 0 0, L_0x1ab4910; 1 drivers
v0x1a9dc90_0 .net "a", 0 0, L_0x1ab4be0; 1 drivers
v0x1a9dd10_0 .net "b", 0 0, L_0x1ab4d10; 1 drivers
v0x1a9ddb0_0 .alias "carryin", 0 0, v0x1a9ee80_1;
v0x1a9de50_0 .alias "carryout", 0 0, v0x1a9ee80_2;
v0x1a9ded0_0 .net "sum", 0 0, L_0x1ab4600; 1 drivers
S_0x1a9d2f0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1a9d200;
 .timescale -9 -12;
L_0x1ab4e40/d .functor XOR 1, L_0x1ab5550, L_0x1ab5710, L_0x1ab49b0, C4<0>;
L_0x1ab4e40 .delay (30000,30000,30000) L_0x1ab4e40/d;
L_0x1ab4f30/d .functor AND 1, L_0x1ab5550, L_0x1ab5710, C4<1>, C4<1>;
L_0x1ab4f30 .delay (20000,20000,20000) L_0x1ab4f30/d;
L_0x1ab5050/d .functor AND 1, L_0x1ab5550, L_0x1ab49b0, C4<1>, C4<1>;
L_0x1ab5050 .delay (20000,20000,20000) L_0x1ab5050/d;
L_0x1ab5110/d .functor AND 1, L_0x1ab5710, L_0x1ab49b0, C4<1>, C4<1>;
L_0x1ab5110 .delay (20000,20000,20000) L_0x1ab5110/d;
L_0x1ab5200/d .functor OR 1, L_0x1ab4f30, L_0x1ab5050, L_0x1ab5110, C4<0>;
L_0x1ab5200 .delay (20000,20000,20000) L_0x1ab5200/d;
v0x1a9d3e0_0 .net "AandB", 0 0, L_0x1ab4f30; 1 drivers
v0x1a9d4a0_0 .net "AandC", 0 0, L_0x1ab5050; 1 drivers
v0x1a9d540_0 .net "BandC", 0 0, L_0x1ab5110; 1 drivers
v0x1a9d5e0_0 .net "a", 0 0, L_0x1ab5550; 1 drivers
v0x1a9d660_0 .net "b", 0 0, L_0x1ab5710; 1 drivers
v0x1a9d700_0 .alias "carryin", 0 0, v0x1a9ee80_2;
v0x1a9d7e0_0 .alias "carryout", 0 0, v0x1aa1130_1;
v0x1a9d8b0_0 .net "sum", 0 0, L_0x1ab4e40; 1 drivers
S_0x1a9b410 .scope module, "f42" "CompAdder4bit" 2 82, 2 30, S_0x1a7fc70;
 .timescale -9 -12;
v0x1a9cdb0_0 .net "a", 3 0, L_0x1ab8000; 1 drivers
v0x1a9ce70_0 .net "b", 3 0, L_0x1ab80a0; 1 drivers
v0x1a9cf10_0 .alias "carryin", 0 0, v0x1aa1130_1;
v0x1a9cf90_0 .alias "carryout", 0 0, v0x1aa1130_2;
v0x1a9d010_0 .net8 "sum", 3 0, RS_0x2b7da7d6f2f8; 4 drivers
v0x1a9d090 .array "temp_cout", 0 2;
v0x1a9d090_0 .net v0x1a9d090 0, 0 0, L_0x1ab5e70; 1 drivers
v0x1a9d090_1 .net v0x1a9d090 1, 0 0, L_0x1ab66b0; 1 drivers
v0x1a9d090_2 .net v0x1a9d090 2, 0 0, L_0x1ab6fd0; 1 drivers
L_0x1ab5fb0 .part/pv L_0x1ab54f0, 0, 1, 4;
L_0x1ab6050 .part L_0x1ab8000, 0, 1;
L_0x1ab6180 .part L_0x1ab80a0, 0, 1;
L_0x1ab6870 .part/pv L_0x1ab62b0, 1, 1, 4;
L_0x1ab6960 .part L_0x1ab8000, 1, 1;
L_0x1ab6a90 .part L_0x1ab80a0, 1, 1;
L_0x1ab7160 .part/pv L_0x1ab6c00, 2, 1, 4;
L_0x1ab7200 .part L_0x1ab8000, 2, 1;
L_0x1ab7330 .part L_0x1ab80a0, 2, 1;
L_0x1ab79e0 .part/pv L_0x1ab7460, 3, 1, 4;
L_0x1ab7b70 .part L_0x1ab8000, 3, 1;
L_0x1ab7d30 .part L_0x1ab80a0, 3, 1;
S_0x1a9c7b0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1a9b410;
 .timescale -9 -12;
L_0x1ab54f0/d .functor XOR 1, L_0x1ab6050, L_0x1ab6180, L_0x1ab5200, C4<0>;
L_0x1ab54f0 .delay (30000,30000,30000) L_0x1ab54f0/d;
L_0x1ab5ba0/d .functor AND 1, L_0x1ab6050, L_0x1ab6180, C4<1>, C4<1>;
L_0x1ab5ba0 .delay (20000,20000,20000) L_0x1ab5ba0/d;
L_0x1ab5c40/d .functor AND 1, L_0x1ab6050, L_0x1ab5200, C4<1>, C4<1>;
L_0x1ab5c40 .delay (20000,20000,20000) L_0x1ab5c40/d;
L_0x1ab5ce0/d .functor AND 1, L_0x1ab6180, L_0x1ab5200, C4<1>, C4<1>;
L_0x1ab5ce0 .delay (20000,20000,20000) L_0x1ab5ce0/d;
L_0x1ab5e70/d .functor OR 1, L_0x1ab5ba0, L_0x1ab5c40, L_0x1ab5ce0, C4<0>;
L_0x1ab5e70 .delay (20000,20000,20000) L_0x1ab5e70/d;
v0x1a9c8a0_0 .net "AandB", 0 0, L_0x1ab5ba0; 1 drivers
v0x1a9c960_0 .net "AandC", 0 0, L_0x1ab5c40; 1 drivers
v0x1a9ca00_0 .net "BandC", 0 0, L_0x1ab5ce0; 1 drivers
v0x1a9caa0_0 .net "a", 0 0, L_0x1ab6050; 1 drivers
v0x1a9cb20_0 .net "b", 0 0, L_0x1ab6180; 1 drivers
v0x1a9cbc0_0 .alias "carryin", 0 0, v0x1aa1130_1;
v0x1a9cc60_0 .alias "carryout", 0 0, v0x1a9d090_0;
v0x1a9cce0_0 .net "sum", 0 0, L_0x1ab54f0; 1 drivers
S_0x1a9c1b0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1a9b410;
 .timescale -9 -12;
L_0x1ab62b0/d .functor XOR 1, L_0x1ab6960, L_0x1ab6a90, L_0x1ab5e70, C4<0>;
L_0x1ab62b0 .delay (30000,30000,30000) L_0x1ab62b0/d;
L_0x1ab6470/d .functor AND 1, L_0x1ab6960, L_0x1ab6a90, C4<1>, C4<1>;
L_0x1ab6470 .delay (20000,20000,20000) L_0x1ab6470/d;
L_0x1ab6540/d .functor AND 1, L_0x1ab6960, L_0x1ab5e70, C4<1>, C4<1>;
L_0x1ab6540 .delay (20000,20000,20000) L_0x1ab6540/d;
L_0x1ab65e0/d .functor AND 1, L_0x1ab6a90, L_0x1ab5e70, C4<1>, C4<1>;
L_0x1ab65e0 .delay (20000,20000,20000) L_0x1ab65e0/d;
L_0x1ab66b0/d .functor OR 1, L_0x1ab6470, L_0x1ab6540, L_0x1ab65e0, C4<0>;
L_0x1ab66b0 .delay (20000,20000,20000) L_0x1ab66b0/d;
v0x1a9c2a0_0 .net "AandB", 0 0, L_0x1ab6470; 1 drivers
v0x1a9c360_0 .net "AandC", 0 0, L_0x1ab6540; 1 drivers
v0x1a9c400_0 .net "BandC", 0 0, L_0x1ab65e0; 1 drivers
v0x1a9c4a0_0 .net "a", 0 0, L_0x1ab6960; 1 drivers
v0x1a9c520_0 .net "b", 0 0, L_0x1ab6a90; 1 drivers
v0x1a9c5c0_0 .alias "carryin", 0 0, v0x1a9d090_0;
v0x1a9c660_0 .alias "carryout", 0 0, v0x1a9d090_1;
v0x1a9c6e0_0 .net "sum", 0 0, L_0x1ab62b0; 1 drivers
S_0x1a9bbb0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1a9b410;
 .timescale -9 -12;
L_0x1ab6c00/d .functor XOR 1, L_0x1ab7200, L_0x1ab7330, L_0x1ab66b0, C4<0>;
L_0x1ab6c00 .delay (30000,30000,30000) L_0x1ab6c00/d;
L_0x1ab6d30/d .functor AND 1, L_0x1ab7200, L_0x1ab7330, C4<1>, C4<1>;
L_0x1ab6d30 .delay (20000,20000,20000) L_0x1ab6d30/d;
L_0x1ab6e70/d .functor AND 1, L_0x1ab7200, L_0x1ab66b0, C4<1>, C4<1>;
L_0x1ab6e70 .delay (20000,20000,20000) L_0x1ab6e70/d;
L_0x1ab6f10/d .functor AND 1, L_0x1ab7330, L_0x1ab66b0, C4<1>, C4<1>;
L_0x1ab6f10 .delay (20000,20000,20000) L_0x1ab6f10/d;
L_0x1ab6fd0/d .functor OR 1, L_0x1ab6d30, L_0x1ab6e70, L_0x1ab6f10, C4<0>;
L_0x1ab6fd0 .delay (20000,20000,20000) L_0x1ab6fd0/d;
v0x1a9bca0_0 .net "AandB", 0 0, L_0x1ab6d30; 1 drivers
v0x1a9bd60_0 .net "AandC", 0 0, L_0x1ab6e70; 1 drivers
v0x1a9be00_0 .net "BandC", 0 0, L_0x1ab6f10; 1 drivers
v0x1a9bea0_0 .net "a", 0 0, L_0x1ab7200; 1 drivers
v0x1a9bf20_0 .net "b", 0 0, L_0x1ab7330; 1 drivers
v0x1a9bfc0_0 .alias "carryin", 0 0, v0x1a9d090_1;
v0x1a9c060_0 .alias "carryout", 0 0, v0x1a9d090_2;
v0x1a9c0e0_0 .net "sum", 0 0, L_0x1ab6c00; 1 drivers
S_0x1a9b500 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1a9b410;
 .timescale -9 -12;
L_0x1ab7460/d .functor XOR 1, L_0x1ab7b70, L_0x1ab7d30, L_0x1ab6fd0, C4<0>;
L_0x1ab7460 .delay (30000,30000,30000) L_0x1ab7460/d;
L_0x1ab7550/d .functor AND 1, L_0x1ab7b70, L_0x1ab7d30, C4<1>, C4<1>;
L_0x1ab7550 .delay (20000,20000,20000) L_0x1ab7550/d;
L_0x1ab7670/d .functor AND 1, L_0x1ab7b70, L_0x1ab6fd0, C4<1>, C4<1>;
L_0x1ab7670 .delay (20000,20000,20000) L_0x1ab7670/d;
L_0x1ab7730/d .functor AND 1, L_0x1ab7d30, L_0x1ab6fd0, C4<1>, C4<1>;
L_0x1ab7730 .delay (20000,20000,20000) L_0x1ab7730/d;
L_0x1ab7820/d .functor OR 1, L_0x1ab7550, L_0x1ab7670, L_0x1ab7730, C4<0>;
L_0x1ab7820 .delay (20000,20000,20000) L_0x1ab7820/d;
v0x1a9b5f0_0 .net "AandB", 0 0, L_0x1ab7550; 1 drivers
v0x1a9b6b0_0 .net "AandC", 0 0, L_0x1ab7670; 1 drivers
v0x1a9b750_0 .net "BandC", 0 0, L_0x1ab7730; 1 drivers
v0x1a9b7f0_0 .net "a", 0 0, L_0x1ab7b70; 1 drivers
v0x1a9b870_0 .net "b", 0 0, L_0x1ab7d30; 1 drivers
v0x1a9b910_0 .alias "carryin", 0 0, v0x1a9d090_2;
v0x1a9b9f0_0 .alias "carryout", 0 0, v0x1aa1130_2;
v0x1a9bac0_0 .net "sum", 0 0, L_0x1ab7460; 1 drivers
S_0x1a99620 .scope module, "f43" "CompAdder4bit" 2 83, 2 30, S_0x1a7fc70;
 .timescale -9 -12;
v0x1a9afc0_0 .net "a", 3 0, L_0x1aba640; 1 drivers
v0x1a9b080_0 .net "b", 3 0, L_0x1aba770; 1 drivers
v0x1a9b120_0 .alias "carryin", 0 0, v0x1aa1130_2;
v0x1a9b1a0_0 .alias "carryout", 0 0, v0x1aa1130_3;
v0x1a9b220_0 .net8 "sum", 3 0, RS_0x2b7da7d6ed28; 4 drivers
v0x1a9b2a0 .array "temp_cout", 0 2;
v0x1a9b2a0_0 .net v0x1a9b2a0 0, 0 0, L_0x1ab8460; 1 drivers
v0x1a9b2a0_1 .net v0x1a9b2a0 1, 0 0, L_0x1ab8c80; 1 drivers
v0x1a9b2a0_2 .net v0x1a9b2a0 2, 0 0, L_0x1ab9580; 1 drivers
L_0x1ab8580 .part/pv L_0x1ab7b10, 0, 1, 4;
L_0x1ab8620 .part L_0x1aba640, 0, 1;
L_0x1ab8750 .part L_0x1aba770, 0, 1;
L_0x1ab8e40 .part/pv L_0x1ab8880, 1, 1, 4;
L_0x1ab8f30 .part L_0x1aba640, 1, 1;
L_0x1ab9060 .part L_0x1aba770, 1, 1;
L_0x1ab9710 .part/pv L_0x1ab91d0, 2, 1, 4;
L_0x1ab97b0 .part L_0x1aba640, 2, 1;
L_0x1ab98e0 .part L_0x1aba770, 2, 1;
L_0x1ab9f90 .part/pv L_0x1ab9a10, 3, 1, 4;
L_0x1aba120 .part L_0x1aba640, 3, 1;
L_0x1aba2e0 .part L_0x1aba770, 3, 1;
S_0x1a9a9c0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1a99620;
 .timescale -9 -12;
L_0x1ab7b10/d .functor XOR 1, L_0x1ab8620, L_0x1ab8750, L_0x1ab7820, C4<0>;
L_0x1ab7b10 .delay (30000,30000,30000) L_0x1ab7b10/d;
L_0x1ab8140/d .functor AND 1, L_0x1ab8620, L_0x1ab8750, C4<1>, C4<1>;
L_0x1ab8140 .delay (20000,20000,20000) L_0x1ab8140/d;
L_0x1ab8210/d .functor AND 1, L_0x1ab8620, L_0x1ab7820, C4<1>, C4<1>;
L_0x1ab8210 .delay (20000,20000,20000) L_0x1ab8210/d;
L_0x1ab82d0/d .functor AND 1, L_0x1ab8750, L_0x1ab7820, C4<1>, C4<1>;
L_0x1ab82d0 .delay (20000,20000,20000) L_0x1ab82d0/d;
L_0x1ab8460/d .functor OR 1, L_0x1ab8140, L_0x1ab8210, L_0x1ab82d0, C4<0>;
L_0x1ab8460 .delay (20000,20000,20000) L_0x1ab8460/d;
v0x1a9aab0_0 .net "AandB", 0 0, L_0x1ab8140; 1 drivers
v0x1a9ab70_0 .net "AandC", 0 0, L_0x1ab8210; 1 drivers
v0x1a9ac10_0 .net "BandC", 0 0, L_0x1ab82d0; 1 drivers
v0x1a9acb0_0 .net "a", 0 0, L_0x1ab8620; 1 drivers
v0x1a9ad30_0 .net "b", 0 0, L_0x1ab8750; 1 drivers
v0x1a9add0_0 .alias "carryin", 0 0, v0x1aa1130_2;
v0x1a9ae70_0 .alias "carryout", 0 0, v0x1a9b2a0_0;
v0x1a9aef0_0 .net "sum", 0 0, L_0x1ab7b10; 1 drivers
S_0x1a9a3c0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1a99620;
 .timescale -9 -12;
L_0x1ab8880/d .functor XOR 1, L_0x1ab8f30, L_0x1ab9060, L_0x1ab8460, C4<0>;
L_0x1ab8880 .delay (30000,30000,30000) L_0x1ab8880/d;
L_0x1ab8a40/d .functor AND 1, L_0x1ab8f30, L_0x1ab9060, C4<1>, C4<1>;
L_0x1ab8a40 .delay (20000,20000,20000) L_0x1ab8a40/d;
L_0x1ab8b10/d .functor AND 1, L_0x1ab8f30, L_0x1ab8460, C4<1>, C4<1>;
L_0x1ab8b10 .delay (20000,20000,20000) L_0x1ab8b10/d;
L_0x1ab8bb0/d .functor AND 1, L_0x1ab9060, L_0x1ab8460, C4<1>, C4<1>;
L_0x1ab8bb0 .delay (20000,20000,20000) L_0x1ab8bb0/d;
L_0x1ab8c80/d .functor OR 1, L_0x1ab8a40, L_0x1ab8b10, L_0x1ab8bb0, C4<0>;
L_0x1ab8c80 .delay (20000,20000,20000) L_0x1ab8c80/d;
v0x1a9a4b0_0 .net "AandB", 0 0, L_0x1ab8a40; 1 drivers
v0x1a9a570_0 .net "AandC", 0 0, L_0x1ab8b10; 1 drivers
v0x1a9a610_0 .net "BandC", 0 0, L_0x1ab8bb0; 1 drivers
v0x1a9a6b0_0 .net "a", 0 0, L_0x1ab8f30; 1 drivers
v0x1a9a730_0 .net "b", 0 0, L_0x1ab9060; 1 drivers
v0x1a9a7d0_0 .alias "carryin", 0 0, v0x1a9b2a0_0;
v0x1a9a870_0 .alias "carryout", 0 0, v0x1a9b2a0_1;
v0x1a9a8f0_0 .net "sum", 0 0, L_0x1ab8880; 1 drivers
S_0x1a99dc0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1a99620;
 .timescale -9 -12;
L_0x1ab91d0/d .functor XOR 1, L_0x1ab97b0, L_0x1ab98e0, L_0x1ab8c80, C4<0>;
L_0x1ab91d0 .delay (30000,30000,30000) L_0x1ab91d0/d;
L_0x1ab9300/d .functor AND 1, L_0x1ab97b0, L_0x1ab98e0, C4<1>, C4<1>;
L_0x1ab9300 .delay (20000,20000,20000) L_0x1ab9300/d;
L_0x1ab9440/d .functor AND 1, L_0x1ab97b0, L_0x1ab8c80, C4<1>, C4<1>;
L_0x1ab9440 .delay (20000,20000,20000) L_0x1ab9440/d;
L_0x1ab94e0/d .functor AND 1, L_0x1ab98e0, L_0x1ab8c80, C4<1>, C4<1>;
L_0x1ab94e0 .delay (20000,20000,20000) L_0x1ab94e0/d;
L_0x1ab9580/d .functor OR 1, L_0x1ab9300, L_0x1ab9440, L_0x1ab94e0, C4<0>;
L_0x1ab9580 .delay (20000,20000,20000) L_0x1ab9580/d;
v0x1a99eb0_0 .net "AandB", 0 0, L_0x1ab9300; 1 drivers
v0x1a99f70_0 .net "AandC", 0 0, L_0x1ab9440; 1 drivers
v0x1a9a010_0 .net "BandC", 0 0, L_0x1ab94e0; 1 drivers
v0x1a9a0b0_0 .net "a", 0 0, L_0x1ab97b0; 1 drivers
v0x1a9a130_0 .net "b", 0 0, L_0x1ab98e0; 1 drivers
v0x1a9a1d0_0 .alias "carryin", 0 0, v0x1a9b2a0_1;
v0x1a9a270_0 .alias "carryout", 0 0, v0x1a9b2a0_2;
v0x1a9a2f0_0 .net "sum", 0 0, L_0x1ab91d0; 1 drivers
S_0x1a99710 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1a99620;
 .timescale -9 -12;
L_0x1ab9a10/d .functor XOR 1, L_0x1aba120, L_0x1aba2e0, L_0x1ab9580, C4<0>;
L_0x1ab9a10 .delay (30000,30000,30000) L_0x1ab9a10/d;
L_0x1ab9b00/d .functor AND 1, L_0x1aba120, L_0x1aba2e0, C4<1>, C4<1>;
L_0x1ab9b00 .delay (20000,20000,20000) L_0x1ab9b00/d;
L_0x1ab9c20/d .functor AND 1, L_0x1aba120, L_0x1ab9580, C4<1>, C4<1>;
L_0x1ab9c20 .delay (20000,20000,20000) L_0x1ab9c20/d;
L_0x1ab9ce0/d .functor AND 1, L_0x1aba2e0, L_0x1ab9580, C4<1>, C4<1>;
L_0x1ab9ce0 .delay (20000,20000,20000) L_0x1ab9ce0/d;
L_0x1ab9dd0/d .functor OR 1, L_0x1ab9b00, L_0x1ab9c20, L_0x1ab9ce0, C4<0>;
L_0x1ab9dd0 .delay (20000,20000,20000) L_0x1ab9dd0/d;
v0x1a99800_0 .net "AandB", 0 0, L_0x1ab9b00; 1 drivers
v0x1a998c0_0 .net "AandC", 0 0, L_0x1ab9c20; 1 drivers
v0x1a99960_0 .net "BandC", 0 0, L_0x1ab9ce0; 1 drivers
v0x1a99a00_0 .net "a", 0 0, L_0x1aba120; 1 drivers
v0x1a99a80_0 .net "b", 0 0, L_0x1aba2e0; 1 drivers
v0x1a99b20_0 .alias "carryin", 0 0, v0x1a9b2a0_2;
v0x1a99c00_0 .alias "carryout", 0 0, v0x1aa1130_3;
v0x1a99cd0_0 .net "sum", 0 0, L_0x1ab9a10; 1 drivers
S_0x1a97830 .scope module, "f44" "CompAdder4bit" 2 84, 2 30, S_0x1a7fc70;
 .timescale -9 -12;
v0x1a991d0_0 .net "a", 3 0, L_0x1abcc30; 1 drivers
v0x1a99290_0 .net "b", 3 0, L_0x1abcd50; 1 drivers
v0x1a99330_0 .alias "carryin", 0 0, v0x1aa1130_3;
v0x1a993b0_0 .alias "carryout", 0 0, v0x1aa1130_4;
v0x1a99430_0 .net8 "sum", 3 0, RS_0x2b7da7d6e758; 4 drivers
v0x1a994b0 .array "temp_cout", 0 2;
v0x1a994b0_0 .net v0x1a994b0 0, 0 0, L_0x1abac70; 1 drivers
v0x1a994b0_1 .net v0x1a994b0 1, 0 0, L_0x1abb440; 1 drivers
v0x1a994b0_2 .net v0x1a994b0 2, 0 0, L_0x1abbc00; 1 drivers
L_0x1abad40 .part/pv L_0x1aba0c0, 0, 1, 4;
L_0x1abade0 .part L_0x1abcc30, 0, 1;
L_0x1abaf10 .part L_0x1abcd50, 0, 1;
L_0x1abb510 .part/pv L_0x1abb040, 1, 1, 4;
L_0x1abb5b0 .part L_0x1abcc30, 1, 1;
L_0x1abb6e0 .part L_0x1abcd50, 1, 1;
L_0x1abbd90 .part/pv L_0x1abb850, 2, 1, 4;
L_0x1abbe30 .part L_0x1abcc30, 2, 1;
L_0x1abbf60 .part L_0x1abcd50, 2, 1;
L_0x1abc610 .part/pv L_0x1abc090, 3, 1, 4;
L_0x1abc7a0 .part L_0x1abcc30, 3, 1;
L_0x1abc960 .part L_0x1abcd50, 3, 1;
S_0x1a98bd0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1a97830;
 .timescale -9 -12;
L_0x1aba0c0/d .functor XOR 1, L_0x1abade0, L_0x1abaf10, L_0x1ab9dd0, C4<0>;
L_0x1aba0c0 .delay (30000,30000,30000) L_0x1aba0c0/d;
L_0x1aba950/d .functor AND 1, L_0x1abade0, L_0x1abaf10, C4<1>, C4<1>;
L_0x1aba950 .delay (20000,20000,20000) L_0x1aba950/d;
L_0x1abaa20/d .functor AND 1, L_0x1abade0, L_0x1ab9dd0, C4<1>, C4<1>;
L_0x1abaa20 .delay (20000,20000,20000) L_0x1abaa20/d;
L_0x1abaae0/d .functor AND 1, L_0x1abaf10, L_0x1ab9dd0, C4<1>, C4<1>;
L_0x1abaae0 .delay (20000,20000,20000) L_0x1abaae0/d;
L_0x1abac70/d .functor OR 1, L_0x1aba950, L_0x1abaa20, L_0x1abaae0, C4<0>;
L_0x1abac70 .delay (20000,20000,20000) L_0x1abac70/d;
v0x1a98cc0_0 .net "AandB", 0 0, L_0x1aba950; 1 drivers
v0x1a98d80_0 .net "AandC", 0 0, L_0x1abaa20; 1 drivers
v0x1a98e20_0 .net "BandC", 0 0, L_0x1abaae0; 1 drivers
v0x1a98ec0_0 .net "a", 0 0, L_0x1abade0; 1 drivers
v0x1a98f40_0 .net "b", 0 0, L_0x1abaf10; 1 drivers
v0x1a98fe0_0 .alias "carryin", 0 0, v0x1aa1130_3;
v0x1a99080_0 .alias "carryout", 0 0, v0x1a994b0_0;
v0x1a99100_0 .net "sum", 0 0, L_0x1aba0c0; 1 drivers
S_0x1a985d0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1a97830;
 .timescale -9 -12;
L_0x1abb040/d .functor XOR 1, L_0x1abb5b0, L_0x1abb6e0, L_0x1abac70, C4<0>;
L_0x1abb040 .delay (30000,30000,30000) L_0x1abb040/d;
L_0x1abb200/d .functor AND 1, L_0x1abb5b0, L_0x1abb6e0, C4<1>, C4<1>;
L_0x1abb200 .delay (20000,20000,20000) L_0x1abb200/d;
L_0x1abb2d0/d .functor AND 1, L_0x1abb5b0, L_0x1abac70, C4<1>, C4<1>;
L_0x1abb2d0 .delay (20000,20000,20000) L_0x1abb2d0/d;
L_0x1abb370/d .functor AND 1, L_0x1abb6e0, L_0x1abac70, C4<1>, C4<1>;
L_0x1abb370 .delay (20000,20000,20000) L_0x1abb370/d;
L_0x1abb440/d .functor OR 1, L_0x1abb200, L_0x1abb2d0, L_0x1abb370, C4<0>;
L_0x1abb440 .delay (20000,20000,20000) L_0x1abb440/d;
v0x1a986c0_0 .net "AandB", 0 0, L_0x1abb200; 1 drivers
v0x1a98780_0 .net "AandC", 0 0, L_0x1abb2d0; 1 drivers
v0x1a98820_0 .net "BandC", 0 0, L_0x1abb370; 1 drivers
v0x1a988c0_0 .net "a", 0 0, L_0x1abb5b0; 1 drivers
v0x1a98940_0 .net "b", 0 0, L_0x1abb6e0; 1 drivers
v0x1a989e0_0 .alias "carryin", 0 0, v0x1a994b0_0;
v0x1a98a80_0 .alias "carryout", 0 0, v0x1a994b0_1;
v0x1a98b00_0 .net "sum", 0 0, L_0x1abb040; 1 drivers
S_0x1a97fd0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1a97830;
 .timescale -9 -12;
L_0x1abb850/d .functor XOR 1, L_0x1abbe30, L_0x1abbf60, L_0x1abb440, C4<0>;
L_0x1abb850 .delay (30000,30000,30000) L_0x1abb850/d;
L_0x1abb980/d .functor AND 1, L_0x1abbe30, L_0x1abbf60, C4<1>, C4<1>;
L_0x1abb980 .delay (20000,20000,20000) L_0x1abb980/d;
L_0x1abbac0/d .functor AND 1, L_0x1abbe30, L_0x1abb440, C4<1>, C4<1>;
L_0x1abbac0 .delay (20000,20000,20000) L_0x1abbac0/d;
L_0x1abbb60/d .functor AND 1, L_0x1abbf60, L_0x1abb440, C4<1>, C4<1>;
L_0x1abbb60 .delay (20000,20000,20000) L_0x1abbb60/d;
L_0x1abbc00/d .functor OR 1, L_0x1abb980, L_0x1abbac0, L_0x1abbb60, C4<0>;
L_0x1abbc00 .delay (20000,20000,20000) L_0x1abbc00/d;
v0x1a980c0_0 .net "AandB", 0 0, L_0x1abb980; 1 drivers
v0x1a98180_0 .net "AandC", 0 0, L_0x1abbac0; 1 drivers
v0x1a98220_0 .net "BandC", 0 0, L_0x1abbb60; 1 drivers
v0x1a982c0_0 .net "a", 0 0, L_0x1abbe30; 1 drivers
v0x1a98340_0 .net "b", 0 0, L_0x1abbf60; 1 drivers
v0x1a983e0_0 .alias "carryin", 0 0, v0x1a994b0_1;
v0x1a98480_0 .alias "carryout", 0 0, v0x1a994b0_2;
v0x1a98500_0 .net "sum", 0 0, L_0x1abb850; 1 drivers
S_0x1a97920 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1a97830;
 .timescale -9 -12;
L_0x1abc090/d .functor XOR 1, L_0x1abc7a0, L_0x1abc960, L_0x1abbc00, C4<0>;
L_0x1abc090 .delay (30000,30000,30000) L_0x1abc090/d;
L_0x1abc180/d .functor AND 1, L_0x1abc7a0, L_0x1abc960, C4<1>, C4<1>;
L_0x1abc180 .delay (20000,20000,20000) L_0x1abc180/d;
L_0x1abc2a0/d .functor AND 1, L_0x1abc7a0, L_0x1abbc00, C4<1>, C4<1>;
L_0x1abc2a0 .delay (20000,20000,20000) L_0x1abc2a0/d;
L_0x1abc360/d .functor AND 1, L_0x1abc960, L_0x1abbc00, C4<1>, C4<1>;
L_0x1abc360 .delay (20000,20000,20000) L_0x1abc360/d;
L_0x1abc450/d .functor OR 1, L_0x1abc180, L_0x1abc2a0, L_0x1abc360, C4<0>;
L_0x1abc450 .delay (20000,20000,20000) L_0x1abc450/d;
v0x1a97a10_0 .net "AandB", 0 0, L_0x1abc180; 1 drivers
v0x1a97ad0_0 .net "AandC", 0 0, L_0x1abc2a0; 1 drivers
v0x1a97b70_0 .net "BandC", 0 0, L_0x1abc360; 1 drivers
v0x1a97c10_0 .net "a", 0 0, L_0x1abc7a0; 1 drivers
v0x1a97c90_0 .net "b", 0 0, L_0x1abc960; 1 drivers
v0x1a97d30_0 .alias "carryin", 0 0, v0x1a994b0_2;
v0x1a97e10_0 .alias "carryout", 0 0, v0x1aa1130_4;
v0x1a97ee0_0 .net "sum", 0 0, L_0x1abc090; 1 drivers
S_0x1a95a40 .scope module, "f45" "CompAdder4bit" 2 85, 2 30, S_0x1a7fc70;
 .timescale -9 -12;
v0x1a973e0_0 .net "a", 3 0, L_0x1abf270; 1 drivers
v0x1a974a0_0 .net "b", 3 0, L_0x1abf310; 1 drivers
v0x1a97540_0 .alias "carryin", 0 0, v0x1aa1130_4;
v0x1a975c0_0 .alias "carryout", 0 0, v0x1aa1130_5;
v0x1a97640_0 .net8 "sum", 3 0, RS_0x2b7da7d6e188; 4 drivers
v0x1a976c0 .array "temp_cout", 0 2;
v0x1a976c0_0 .net v0x1a976c0 0, 0 0, L_0x1abd150; 1 drivers
v0x1a976c0_1 .net v0x1a976c0 1, 0 0, L_0x1abd920; 1 drivers
v0x1a976c0_2 .net v0x1a976c0 2, 0 0, L_0x1abe220; 1 drivers
L_0x1abd220 .part/pv L_0x1abc740, 0, 1, 4;
L_0x1abd2c0 .part L_0x1abf270, 0, 1;
L_0x1abd3f0 .part L_0x1abf310, 0, 1;
L_0x1abdae0 .part/pv L_0x1abd520, 1, 1, 4;
L_0x1abdbd0 .part L_0x1abf270, 1, 1;
L_0x1abdd00 .part L_0x1abf310, 1, 1;
L_0x1abe3b0 .part/pv L_0x1abde70, 2, 1, 4;
L_0x1abe450 .part L_0x1abf270, 2, 1;
L_0x1abe580 .part L_0x1abf310, 2, 1;
L_0x1abec30 .part/pv L_0x1abe6b0, 3, 1, 4;
L_0x1abedc0 .part L_0x1abf270, 3, 1;
L_0x1abef80 .part L_0x1abf310, 3, 1;
S_0x1a96de0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1a95a40;
 .timescale -9 -12;
L_0x1abc740/d .functor XOR 1, L_0x1abd2c0, L_0x1abd3f0, L_0x1abc450, C4<0>;
L_0x1abc740 .delay (30000,30000,30000) L_0x1abc740/d;
L_0x1abce30/d .functor AND 1, L_0x1abd2c0, L_0x1abd3f0, C4<1>, C4<1>;
L_0x1abce30 .delay (20000,20000,20000) L_0x1abce30/d;
L_0x1abcf00/d .functor AND 1, L_0x1abd2c0, L_0x1abc450, C4<1>, C4<1>;
L_0x1abcf00 .delay (20000,20000,20000) L_0x1abcf00/d;
L_0x1abcfc0/d .functor AND 1, L_0x1abd3f0, L_0x1abc450, C4<1>, C4<1>;
L_0x1abcfc0 .delay (20000,20000,20000) L_0x1abcfc0/d;
L_0x1abd150/d .functor OR 1, L_0x1abce30, L_0x1abcf00, L_0x1abcfc0, C4<0>;
L_0x1abd150 .delay (20000,20000,20000) L_0x1abd150/d;
v0x1a96ed0_0 .net "AandB", 0 0, L_0x1abce30; 1 drivers
v0x1a96f90_0 .net "AandC", 0 0, L_0x1abcf00; 1 drivers
v0x1a97030_0 .net "BandC", 0 0, L_0x1abcfc0; 1 drivers
v0x1a970d0_0 .net "a", 0 0, L_0x1abd2c0; 1 drivers
v0x1a97150_0 .net "b", 0 0, L_0x1abd3f0; 1 drivers
v0x1a971f0_0 .alias "carryin", 0 0, v0x1aa1130_4;
v0x1a97290_0 .alias "carryout", 0 0, v0x1a976c0_0;
v0x1a97310_0 .net "sum", 0 0, L_0x1abc740; 1 drivers
S_0x1a967e0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1a95a40;
 .timescale -9 -12;
L_0x1abd520/d .functor XOR 1, L_0x1abdbd0, L_0x1abdd00, L_0x1abd150, C4<0>;
L_0x1abd520 .delay (30000,30000,30000) L_0x1abd520/d;
L_0x1abd6e0/d .functor AND 1, L_0x1abdbd0, L_0x1abdd00, C4<1>, C4<1>;
L_0x1abd6e0 .delay (20000,20000,20000) L_0x1abd6e0/d;
L_0x1abd7b0/d .functor AND 1, L_0x1abdbd0, L_0x1abd150, C4<1>, C4<1>;
L_0x1abd7b0 .delay (20000,20000,20000) L_0x1abd7b0/d;
L_0x1abd850/d .functor AND 1, L_0x1abdd00, L_0x1abd150, C4<1>, C4<1>;
L_0x1abd850 .delay (20000,20000,20000) L_0x1abd850/d;
L_0x1abd920/d .functor OR 1, L_0x1abd6e0, L_0x1abd7b0, L_0x1abd850, C4<0>;
L_0x1abd920 .delay (20000,20000,20000) L_0x1abd920/d;
v0x1a968d0_0 .net "AandB", 0 0, L_0x1abd6e0; 1 drivers
v0x1a96990_0 .net "AandC", 0 0, L_0x1abd7b0; 1 drivers
v0x1a96a30_0 .net "BandC", 0 0, L_0x1abd850; 1 drivers
v0x1a96ad0_0 .net "a", 0 0, L_0x1abdbd0; 1 drivers
v0x1a96b50_0 .net "b", 0 0, L_0x1abdd00; 1 drivers
v0x1a96bf0_0 .alias "carryin", 0 0, v0x1a976c0_0;
v0x1a96c90_0 .alias "carryout", 0 0, v0x1a976c0_1;
v0x1a96d10_0 .net "sum", 0 0, L_0x1abd520; 1 drivers
S_0x1a961e0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1a95a40;
 .timescale -9 -12;
L_0x1abde70/d .functor XOR 1, L_0x1abe450, L_0x1abe580, L_0x1abd920, C4<0>;
L_0x1abde70 .delay (30000,30000,30000) L_0x1abde70/d;
L_0x1abdfa0/d .functor AND 1, L_0x1abe450, L_0x1abe580, C4<1>, C4<1>;
L_0x1abdfa0 .delay (20000,20000,20000) L_0x1abdfa0/d;
L_0x1abe0e0/d .functor AND 1, L_0x1abe450, L_0x1abd920, C4<1>, C4<1>;
L_0x1abe0e0 .delay (20000,20000,20000) L_0x1abe0e0/d;
L_0x1abe180/d .functor AND 1, L_0x1abe580, L_0x1abd920, C4<1>, C4<1>;
L_0x1abe180 .delay (20000,20000,20000) L_0x1abe180/d;
L_0x1abe220/d .functor OR 1, L_0x1abdfa0, L_0x1abe0e0, L_0x1abe180, C4<0>;
L_0x1abe220 .delay (20000,20000,20000) L_0x1abe220/d;
v0x1a962d0_0 .net "AandB", 0 0, L_0x1abdfa0; 1 drivers
v0x1a96390_0 .net "AandC", 0 0, L_0x1abe0e0; 1 drivers
v0x1a96430_0 .net "BandC", 0 0, L_0x1abe180; 1 drivers
v0x1a964d0_0 .net "a", 0 0, L_0x1abe450; 1 drivers
v0x1a96550_0 .net "b", 0 0, L_0x1abe580; 1 drivers
v0x1a965f0_0 .alias "carryin", 0 0, v0x1a976c0_1;
v0x1a96690_0 .alias "carryout", 0 0, v0x1a976c0_2;
v0x1a96710_0 .net "sum", 0 0, L_0x1abde70; 1 drivers
S_0x1a95b30 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1a95a40;
 .timescale -9 -12;
L_0x1abe6b0/d .functor XOR 1, L_0x1abedc0, L_0x1abef80, L_0x1abe220, C4<0>;
L_0x1abe6b0 .delay (30000,30000,30000) L_0x1abe6b0/d;
L_0x1abe7a0/d .functor AND 1, L_0x1abedc0, L_0x1abef80, C4<1>, C4<1>;
L_0x1abe7a0 .delay (20000,20000,20000) L_0x1abe7a0/d;
L_0x1abe8c0/d .functor AND 1, L_0x1abedc0, L_0x1abe220, C4<1>, C4<1>;
L_0x1abe8c0 .delay (20000,20000,20000) L_0x1abe8c0/d;
L_0x1abe980/d .functor AND 1, L_0x1abef80, L_0x1abe220, C4<1>, C4<1>;
L_0x1abe980 .delay (20000,20000,20000) L_0x1abe980/d;
L_0x1abea70/d .functor OR 1, L_0x1abe7a0, L_0x1abe8c0, L_0x1abe980, C4<0>;
L_0x1abea70 .delay (20000,20000,20000) L_0x1abea70/d;
v0x1a95c20_0 .net "AandB", 0 0, L_0x1abe7a0; 1 drivers
v0x1a95ce0_0 .net "AandC", 0 0, L_0x1abe8c0; 1 drivers
v0x1a95d80_0 .net "BandC", 0 0, L_0x1abe980; 1 drivers
v0x1a95e20_0 .net "a", 0 0, L_0x1abedc0; 1 drivers
v0x1a95ea0_0 .net "b", 0 0, L_0x1abef80; 1 drivers
v0x1a95f40_0 .alias "carryin", 0 0, v0x1a976c0_2;
v0x1a96020_0 .alias "carryout", 0 0, v0x1aa1130_5;
v0x1a960f0_0 .net "sum", 0 0, L_0x1abe6b0; 1 drivers
S_0x1a93c70 .scope module, "f46" "CompAdder4bit" 2 86, 2 30, S_0x1a7fc70;
 .timescale -9 -12;
v0x1a955f0_0 .net "a", 3 0, L_0x1ac1820; 1 drivers
v0x1a956b0_0 .net "b", 3 0, L_0x1abf3b0; 1 drivers
v0x1a95750_0 .alias "carryin", 0 0, v0x1aa1130_5;
v0x1a957d0_0 .alias "carryout", 0 0, v0x1aa1130_6;
v0x1a95850_0 .net8 "sum", 3 0, RS_0x2b7da7d6dbb8; 4 drivers
v0x1a958d0 .array "temp_cout", 0 2;
v0x1a958d0_0 .net v0x1a958d0 0, 0 0, L_0x1abf720; 1 drivers
v0x1a958d0_1 .net v0x1a958d0 1, 0 0, L_0x1abfef0; 1 drivers
v0x1a958d0_2 .net v0x1a958d0 2, 0 0, L_0x1ac07f0; 1 drivers
L_0x1abf7f0 .part/pv L_0x1abed60, 0, 1, 4;
L_0x1abf890 .part L_0x1ac1820, 0, 1;
L_0x1abf9c0 .part L_0x1abf3b0, 0, 1;
L_0x1ac00b0 .part/pv L_0x1abfaf0, 1, 1, 4;
L_0x1ac01a0 .part L_0x1ac1820, 1, 1;
L_0x1ac02d0 .part L_0x1abf3b0, 1, 1;
L_0x1ac0980 .part/pv L_0x1ac0440, 2, 1, 4;
L_0x1ac0a20 .part L_0x1ac1820, 2, 1;
L_0x1ac0b50 .part L_0x1abf3b0, 2, 1;
L_0x1ac1200 .part/pv L_0x1ac0c80, 3, 1, 4;
L_0x1ac1390 .part L_0x1ac1820, 3, 1;
L_0x1ac1550 .part L_0x1abf3b0, 3, 1;
S_0x1a94ff0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1a93c70;
 .timescale -9 -12;
L_0x1abed60/d .functor XOR 1, L_0x1abf890, L_0x1abf9c0, L_0x1abea70, C4<0>;
L_0x1abed60 .delay (30000,30000,30000) L_0x1abed60/d;
L_0x1abf450/d .functor AND 1, L_0x1abf890, L_0x1abf9c0, C4<1>, C4<1>;
L_0x1abf450 .delay (20000,20000,20000) L_0x1abf450/d;
L_0x1abf4f0/d .functor AND 1, L_0x1abf890, L_0x1abea70, C4<1>, C4<1>;
L_0x1abf4f0 .delay (20000,20000,20000) L_0x1abf4f0/d;
L_0x1abf590/d .functor AND 1, L_0x1abf9c0, L_0x1abea70, C4<1>, C4<1>;
L_0x1abf590 .delay (20000,20000,20000) L_0x1abf590/d;
L_0x1abf720/d .functor OR 1, L_0x1abf450, L_0x1abf4f0, L_0x1abf590, C4<0>;
L_0x1abf720 .delay (20000,20000,20000) L_0x1abf720/d;
v0x1a950e0_0 .net "AandB", 0 0, L_0x1abf450; 1 drivers
v0x1a951a0_0 .net "AandC", 0 0, L_0x1abf4f0; 1 drivers
v0x1a95240_0 .net "BandC", 0 0, L_0x1abf590; 1 drivers
v0x1a952e0_0 .net "a", 0 0, L_0x1abf890; 1 drivers
v0x1a95360_0 .net "b", 0 0, L_0x1abf9c0; 1 drivers
v0x1a95400_0 .alias "carryin", 0 0, v0x1aa1130_5;
v0x1a954a0_0 .alias "carryout", 0 0, v0x1a958d0_0;
v0x1a95520_0 .net "sum", 0 0, L_0x1abed60; 1 drivers
S_0x1a949f0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1a93c70;
 .timescale -9 -12;
L_0x1abfaf0/d .functor XOR 1, L_0x1ac01a0, L_0x1ac02d0, L_0x1abf720, C4<0>;
L_0x1abfaf0 .delay (30000,30000,30000) L_0x1abfaf0/d;
L_0x1abfcb0/d .functor AND 1, L_0x1ac01a0, L_0x1ac02d0, C4<1>, C4<1>;
L_0x1abfcb0 .delay (20000,20000,20000) L_0x1abfcb0/d;
L_0x1abfd80/d .functor AND 1, L_0x1ac01a0, L_0x1abf720, C4<1>, C4<1>;
L_0x1abfd80 .delay (20000,20000,20000) L_0x1abfd80/d;
L_0x1abfe20/d .functor AND 1, L_0x1ac02d0, L_0x1abf720, C4<1>, C4<1>;
L_0x1abfe20 .delay (20000,20000,20000) L_0x1abfe20/d;
L_0x1abfef0/d .functor OR 1, L_0x1abfcb0, L_0x1abfd80, L_0x1abfe20, C4<0>;
L_0x1abfef0 .delay (20000,20000,20000) L_0x1abfef0/d;
v0x1a94ae0_0 .net "AandB", 0 0, L_0x1abfcb0; 1 drivers
v0x1a94ba0_0 .net "AandC", 0 0, L_0x1abfd80; 1 drivers
v0x1a94c40_0 .net "BandC", 0 0, L_0x1abfe20; 1 drivers
v0x1a94ce0_0 .net "a", 0 0, L_0x1ac01a0; 1 drivers
v0x1a94d60_0 .net "b", 0 0, L_0x1ac02d0; 1 drivers
v0x1a94e00_0 .alias "carryin", 0 0, v0x1a958d0_0;
v0x1a94ea0_0 .alias "carryout", 0 0, v0x1a958d0_1;
v0x1a94f20_0 .net "sum", 0 0, L_0x1abfaf0; 1 drivers
S_0x1a943f0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1a93c70;
 .timescale -9 -12;
L_0x1ac0440/d .functor XOR 1, L_0x1ac0a20, L_0x1ac0b50, L_0x1abfef0, C4<0>;
L_0x1ac0440 .delay (30000,30000,30000) L_0x1ac0440/d;
L_0x1ac0570/d .functor AND 1, L_0x1ac0a20, L_0x1ac0b50, C4<1>, C4<1>;
L_0x1ac0570 .delay (20000,20000,20000) L_0x1ac0570/d;
L_0x1ac06b0/d .functor AND 1, L_0x1ac0a20, L_0x1abfef0, C4<1>, C4<1>;
L_0x1ac06b0 .delay (20000,20000,20000) L_0x1ac06b0/d;
L_0x1ac0750/d .functor AND 1, L_0x1ac0b50, L_0x1abfef0, C4<1>, C4<1>;
L_0x1ac0750 .delay (20000,20000,20000) L_0x1ac0750/d;
L_0x1ac07f0/d .functor OR 1, L_0x1ac0570, L_0x1ac06b0, L_0x1ac0750, C4<0>;
L_0x1ac07f0 .delay (20000,20000,20000) L_0x1ac07f0/d;
v0x1a944e0_0 .net "AandB", 0 0, L_0x1ac0570; 1 drivers
v0x1a945a0_0 .net "AandC", 0 0, L_0x1ac06b0; 1 drivers
v0x1a94640_0 .net "BandC", 0 0, L_0x1ac0750; 1 drivers
v0x1a946e0_0 .net "a", 0 0, L_0x1ac0a20; 1 drivers
v0x1a94760_0 .net "b", 0 0, L_0x1ac0b50; 1 drivers
v0x1a94800_0 .alias "carryin", 0 0, v0x1a958d0_1;
v0x1a948a0_0 .alias "carryout", 0 0, v0x1a958d0_2;
v0x1a94920_0 .net "sum", 0 0, L_0x1ac0440; 1 drivers
S_0x1a93d60 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1a93c70;
 .timescale -9 -12;
L_0x1ac0c80/d .functor XOR 1, L_0x1ac1390, L_0x1ac1550, L_0x1ac07f0, C4<0>;
L_0x1ac0c80 .delay (30000,30000,30000) L_0x1ac0c80/d;
L_0x1ac0d70/d .functor AND 1, L_0x1ac1390, L_0x1ac1550, C4<1>, C4<1>;
L_0x1ac0d70 .delay (20000,20000,20000) L_0x1ac0d70/d;
L_0x1ac0e90/d .functor AND 1, L_0x1ac1390, L_0x1ac07f0, C4<1>, C4<1>;
L_0x1ac0e90 .delay (20000,20000,20000) L_0x1ac0e90/d;
L_0x1ac0f50/d .functor AND 1, L_0x1ac1550, L_0x1ac07f0, C4<1>, C4<1>;
L_0x1ac0f50 .delay (20000,20000,20000) L_0x1ac0f50/d;
L_0x1ac1040/d .functor OR 1, L_0x1ac0d70, L_0x1ac0e90, L_0x1ac0f50, C4<0>;
L_0x1ac1040 .delay (20000,20000,20000) L_0x1ac1040/d;
v0x1a93e50_0 .net "AandB", 0 0, L_0x1ac0d70; 1 drivers
v0x1a93ef0_0 .net "AandC", 0 0, L_0x1ac0e90; 1 drivers
v0x1a93f90_0 .net "BandC", 0 0, L_0x1ac0f50; 1 drivers
v0x1a94030_0 .net "a", 0 0, L_0x1ac1390; 1 drivers
v0x1a940b0_0 .net "b", 0 0, L_0x1ac1550; 1 drivers
v0x1a94150_0 .alias "carryin", 0 0, v0x1a958d0_2;
v0x1a94230_0 .alias "carryout", 0 0, v0x1aa1130_6;
v0x1a94300_0 .net "sum", 0 0, L_0x1ac0c80; 1 drivers
S_0x1a7a350 .scope module, "f47" "CompAdder4bit" 2 87, 2 30, S_0x1a7fc70;
 .timescale -9 -12;
v0x1a93790_0 .net "a", 3 0, L_0x1ac18c0; 1 drivers
v0x1a93850_0 .net "b", 3 0, L_0x1ac40b0; 1 drivers
v0x1a938f0_0 .alias "carryin", 0 0, v0x1aa1130_6;
v0x1a939a0_0 .alias "carryout", 0 0, v0x1aa0f40_0;
v0x1a93a80_0 .net8 "sum", 3 0, RS_0x2b7da7d6d5e8; 4 drivers
v0x1a93b00 .array "temp_cout", 0 2;
v0x1a93b00_0 .net v0x1a93b00 0, 0 0, L_0x1ac1cd0; 1 drivers
v0x1a93b00_1 .net v0x1a93b00 1, 0 0, L_0x1ac24a0; 1 drivers
v0x1a93b00_2 .net v0x1a93b00 2, 0 0, L_0x1ac2da0; 1 drivers
L_0x1ac1da0 .part/pv L_0x1ac1330, 0, 1, 4;
L_0x1ac1e40 .part L_0x1ac18c0, 0, 1;
L_0x1ac1f70 .part L_0x1ac40b0, 0, 1;
L_0x1ac2660 .part/pv L_0x1ac20a0, 1, 1, 4;
L_0x1ac2750 .part L_0x1ac18c0, 1, 1;
L_0x1ac2880 .part L_0x1ac40b0, 1, 1;
L_0x1ac2f30 .part/pv L_0x1ac29f0, 2, 1, 4;
L_0x1ac2fd0 .part L_0x1ac18c0, 2, 1;
L_0x1ac3100 .part L_0x1ac40b0, 2, 1;
L_0x1ac37b0 .part/pv L_0x1ac3230, 3, 1, 4;
L_0x1ac3940 .part L_0x1ac18c0, 3, 1;
L_0x1ac3b00 .part L_0x1ac40b0, 3, 1;
S_0x1a93160 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1a7a350;
 .timescale -9 -12;
L_0x1ac1330/d .functor XOR 1, L_0x1ac1e40, L_0x1ac1f70, L_0x1ac1040, C4<0>;
L_0x1ac1330 .delay (30000,30000,30000) L_0x1ac1330/d;
L_0x1ac19b0/d .functor AND 1, L_0x1ac1e40, L_0x1ac1f70, C4<1>, C4<1>;
L_0x1ac19b0 .delay (20000,20000,20000) L_0x1ac19b0/d;
L_0x1ac1a80/d .functor AND 1, L_0x1ac1e40, L_0x1ac1040, C4<1>, C4<1>;
L_0x1ac1a80 .delay (20000,20000,20000) L_0x1ac1a80/d;
L_0x1ac1b40/d .functor AND 1, L_0x1ac1f70, L_0x1ac1040, C4<1>, C4<1>;
L_0x1ac1b40 .delay (20000,20000,20000) L_0x1ac1b40/d;
L_0x1ac1cd0/d .functor OR 1, L_0x1ac19b0, L_0x1ac1a80, L_0x1ac1b40, C4<0>;
L_0x1ac1cd0 .delay (20000,20000,20000) L_0x1ac1cd0/d;
v0x1a93250_0 .net "AandB", 0 0, L_0x1ac19b0; 1 drivers
v0x1a93310_0 .net "AandC", 0 0, L_0x1ac1a80; 1 drivers
v0x1a933b0_0 .net "BandC", 0 0, L_0x1ac1b40; 1 drivers
v0x1a93450_0 .net "a", 0 0, L_0x1ac1e40; 1 drivers
v0x1a93500_0 .net "b", 0 0, L_0x1ac1f70; 1 drivers
v0x1a935a0_0 .alias "carryin", 0 0, v0x1aa1130_6;
v0x1a93640_0 .alias "carryout", 0 0, v0x1a93b00_0;
v0x1a936c0_0 .net "sum", 0 0, L_0x1ac1330; 1 drivers
S_0x1a92b30 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1a7a350;
 .timescale -9 -12;
L_0x1ac20a0/d .functor XOR 1, L_0x1ac2750, L_0x1ac2880, L_0x1ac1cd0, C4<0>;
L_0x1ac20a0 .delay (30000,30000,30000) L_0x1ac20a0/d;
L_0x1ac2260/d .functor AND 1, L_0x1ac2750, L_0x1ac2880, C4<1>, C4<1>;
L_0x1ac2260 .delay (20000,20000,20000) L_0x1ac2260/d;
L_0x1ac2330/d .functor AND 1, L_0x1ac2750, L_0x1ac1cd0, C4<1>, C4<1>;
L_0x1ac2330 .delay (20000,20000,20000) L_0x1ac2330/d;
L_0x1ac23d0/d .functor AND 1, L_0x1ac2880, L_0x1ac1cd0, C4<1>, C4<1>;
L_0x1ac23d0 .delay (20000,20000,20000) L_0x1ac23d0/d;
L_0x1ac24a0/d .functor OR 1, L_0x1ac2260, L_0x1ac2330, L_0x1ac23d0, C4<0>;
L_0x1ac24a0 .delay (20000,20000,20000) L_0x1ac24a0/d;
v0x1a92c20_0 .net "AandB", 0 0, L_0x1ac2260; 1 drivers
v0x1a92ce0_0 .net "AandC", 0 0, L_0x1ac2330; 1 drivers
v0x1a92d80_0 .net "BandC", 0 0, L_0x1ac23d0; 1 drivers
v0x1a92e20_0 .net "a", 0 0, L_0x1ac2750; 1 drivers
v0x1a92ed0_0 .net "b", 0 0, L_0x1ac2880; 1 drivers
v0x1a92f70_0 .alias "carryin", 0 0, v0x1a93b00_0;
v0x1a93010_0 .alias "carryout", 0 0, v0x1a93b00_1;
v0x1a93090_0 .net "sum", 0 0, L_0x1ac20a0; 1 drivers
S_0x1a92530 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1a7a350;
 .timescale -9 -12;
L_0x1ac29f0/d .functor XOR 1, L_0x1ac2fd0, L_0x1ac3100, L_0x1ac24a0, C4<0>;
L_0x1ac29f0 .delay (30000,30000,30000) L_0x1ac29f0/d;
L_0x1ac2b20/d .functor AND 1, L_0x1ac2fd0, L_0x1ac3100, C4<1>, C4<1>;
L_0x1ac2b20 .delay (20000,20000,20000) L_0x1ac2b20/d;
L_0x1ac2c60/d .functor AND 1, L_0x1ac2fd0, L_0x1ac24a0, C4<1>, C4<1>;
L_0x1ac2c60 .delay (20000,20000,20000) L_0x1ac2c60/d;
L_0x1ac2d00/d .functor AND 1, L_0x1ac3100, L_0x1ac24a0, C4<1>, C4<1>;
L_0x1ac2d00 .delay (20000,20000,20000) L_0x1ac2d00/d;
L_0x1ac2da0/d .functor OR 1, L_0x1ac2b20, L_0x1ac2c60, L_0x1ac2d00, C4<0>;
L_0x1ac2da0 .delay (20000,20000,20000) L_0x1ac2da0/d;
v0x1a92620_0 .net "AandB", 0 0, L_0x1ac2b20; 1 drivers
v0x1a926e0_0 .net "AandC", 0 0, L_0x1ac2c60; 1 drivers
v0x1a92780_0 .net "BandC", 0 0, L_0x1ac2d00; 1 drivers
v0x1a92820_0 .net "a", 0 0, L_0x1ac2fd0; 1 drivers
v0x1a928a0_0 .net "b", 0 0, L_0x1ac3100; 1 drivers
v0x1a92940_0 .alias "carryin", 0 0, v0x1a93b00_1;
v0x1a929e0_0 .alias "carryout", 0 0, v0x1a93b00_2;
v0x1a92a60_0 .net "sum", 0 0, L_0x1ac29f0; 1 drivers
S_0x1a750f0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1a7a350;
 .timescale -9 -12;
L_0x1ac3230/d .functor XOR 1, L_0x1ac3940, L_0x1ac3b00, L_0x1ac2da0, C4<0>;
L_0x1ac3230 .delay (30000,30000,30000) L_0x1ac3230/d;
L_0x1ac3320/d .functor AND 1, L_0x1ac3940, L_0x1ac3b00, C4<1>, C4<1>;
L_0x1ac3320 .delay (20000,20000,20000) L_0x1ac3320/d;
L_0x1ac3440/d .functor AND 1, L_0x1ac3940, L_0x1ac2da0, C4<1>, C4<1>;
L_0x1ac3440 .delay (20000,20000,20000) L_0x1ac3440/d;
L_0x1ac3500/d .functor AND 1, L_0x1ac3b00, L_0x1ac2da0, C4<1>, C4<1>;
L_0x1ac3500 .delay (20000,20000,20000) L_0x1ac3500/d;
L_0x1ac35f0/d .functor OR 1, L_0x1ac3320, L_0x1ac3440, L_0x1ac3500, C4<0>;
L_0x1ac35f0 .delay (20000,20000,20000) L_0x1ac35f0/d;
v0x1a473d0_0 .net "AandB", 0 0, L_0x1ac3320; 1 drivers
v0x1a92030_0 .net "AandC", 0 0, L_0x1ac3440; 1 drivers
v0x1a920d0_0 .net "BandC", 0 0, L_0x1ac3500; 1 drivers
v0x1a92170_0 .net "a", 0 0, L_0x1ac3940; 1 drivers
v0x1a92220_0 .net "b", 0 0, L_0x1ac3b00; 1 drivers
v0x1a922c0_0 .alias "carryin", 0 0, v0x1a93b00_2;
v0x1a923a0_0 .alias "carryout", 0 0, v0x1aa0f40_0;
v0x1a92440_0 .net "sum", 0 0, L_0x1ac3230; 1 drivers
S_0x1a63ad0 .scope module, "testFullAdder16bit" "testFullAdder16bit" 3 5;
 .timescale -9 -12;
v0x1ab0c80_0 .var "a", 31 0;
v0x1ab0d20_0 .var "b", 31 0;
v0x1ab0da0_0 .net "carryout", 0 0, L_0x1ad69b0; 1 drivers
v0x1ab0e20_0 .net "overflow", 0 0, L_0x1ad6ce0; 1 drivers
RS_0x2b7da7d72ec8/0/0 .resolv tri, L_0x1ac64a0, L_0x1ac8bd0, L_0x1acb180, L_0x1acd7f0;
RS_0x2b7da7d72ec8/0/4 .resolv tri, L_0x1acfdb0, L_0x1ad2360, L_0x1ad49a0, L_0x1ad7130;
RS_0x2b7da7d72ec8 .resolv tri, RS_0x2b7da7d72ec8/0/0, RS_0x2b7da7d72ec8/0/4, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>;
v0x1ab0ea0_0 .net8 "sum", 31 0, RS_0x2b7da7d72ec8; 8 drivers
S_0x1aa1620 .scope module, "fa16b" "FullAdder32bit" 3 11, 2 49, S_0x1a63ad0;
 .timescale -9 -12;
L_0x1ad6ce0/d .functor XOR 1, L_0x1ad69b0, L_0x1ad4260, C4<0>, C4<0>;
L_0x1ad6ce0 .delay (30000,30000,30000) L_0x1ad6ce0/d;
v0x1ab0440_0 .net "a", 31 0, v0x1ab0c80_0; 1 drivers
v0x1ab0500_0 .net "b", 31 0, v0x1ab0d20_0; 1 drivers
v0x1ab05a0_0 .alias "carryout", 0 0, v0x1ab0da0_0;
v0x1ab0670_0 .alias "overflow", 0 0, v0x1ab0e20_0;
v0x1ab06f0_0 .alias "sum", 31 0, v0x1ab0ea0_0;
v0x1ab0790 .array "temp_cout", 0 6;
v0x1ab0790_0 .net v0x1ab0790 0, 0 0, L_0x1ac5e80; 1 drivers
v0x1ab0790_1 .net v0x1ab0790 1, 0 0, L_0x1ac8490; 1 drivers
v0x1ab0790_2 .net v0x1ab0790 2, 0 0, L_0x1acaa40; 1 drivers
v0x1ab0790_3 .net v0x1ab0790 3, 0 0, L_0x1acd0b0; 1 drivers
v0x1ab0790_4 .net v0x1ab0790 4, 0 0, L_0x1acf670; 1 drivers
v0x1ab0790_5 .net v0x1ab0790 5, 0 0, L_0x1ad1c90; 1 drivers
v0x1ab0790_6 .net v0x1ab0790 6, 0 0, L_0x1ad4260; 1 drivers
RS_0x2b7da7d72e08 .resolv tri, L_0x1ac4660, L_0x1ac4ed0, L_0x1ac57c0, L_0x1ac5ff0;
L_0x1ac64a0 .part/pv RS_0x2b7da7d72e08, 0, 4, 32;
L_0x1ac6540 .part v0x1ab0c80_0, 0, 4;
L_0x1ac65e0 .part v0x1ab0d20_0, 0, 4;
RS_0x2b7da7d72838 .resolv tri, L_0x1ac6c40, L_0x1ac7500, L_0x1ac7dd0, L_0x1ac8650;
L_0x1ac8bd0 .part/pv RS_0x2b7da7d72838, 4, 4, 32;
L_0x1ac8c70 .part v0x1ab0c80_0, 4, 4;
L_0x1ac8d10 .part v0x1ab0d20_0, 4, 4;
RS_0x2b7da7d72268 .resolv tri, L_0x1ac91f0, L_0x1ac9ab0, L_0x1aca380, L_0x1acac00;
L_0x1acb180 .part/pv RS_0x2b7da7d72268, 8, 4, 32;
L_0x1acb2b0 .part v0x1ab0c80_0, 8, 4;
L_0x1acb3e0 .part v0x1ab0d20_0, 8, 4;
RS_0x2b7da7d71c98 .resolv tri, L_0x1acb900, L_0x1acc120, L_0x1acc9f0, L_0x1acd270;
L_0x1acd7f0 .part/pv RS_0x2b7da7d71c98, 12, 4, 32;
L_0x1acd890 .part v0x1ab0c80_0, 12, 4;
L_0x1acd930 .part v0x1ab0d20_0, 12, 4;
RS_0x2b7da7d716c8 .resolv tri, L_0x1acde70, L_0x1ace6e0, L_0x1acefb0, L_0x1acf830;
L_0x1acfdb0 .part/pv RS_0x2b7da7d716c8, 16, 4, 32;
L_0x1acfe50 .part v0x1ab0c80_0, 16, 4;
L_0x1acff70 .part v0x1ab0d20_0, 16, 4;
RS_0x2b7da7d710f8 .resolv tri, L_0x1ad0440, L_0x1ad0d00, L_0x1ad15d0, L_0x1ad1e50;
L_0x1ad2360 .part/pv RS_0x2b7da7d710f8, 20, 4, 32;
L_0x1ad2490 .part v0x1ab0c80_0, 20, 4;
L_0x1ad2530 .part v0x1ab0d20_0, 20, 4;
RS_0x2b7da7d70b28 .resolv tri, L_0x1ad2a10, L_0x1ad32d0, L_0x1ad3ba0, L_0x1ad4420;
L_0x1ad49a0 .part/pv RS_0x2b7da7d70b28, 24, 4, 32;
L_0x1ad4b50 .part v0x1ab0c80_0, 24, 4;
L_0x1ad25d0 .part v0x1ab0d20_0, 24, 4;
RS_0x2b7da7d70558 .resolv tri, L_0x1ad5160, L_0x1ad5a20, L_0x1ad62f0, L_0x1ad6bb0;
L_0x1ad7130 .part/pv RS_0x2b7da7d70558, 28, 4, 32;
L_0x1ad4d00 .part v0x1ab0c80_0, 28, 4;
L_0x1ad7290 .part v0x1ab0d20_0, 28, 4;
S_0x1aae650 .scope module, "f40" "CompAdder4bit" 2 59, 2 30, S_0x1aa1620;
 .timescale -9 -12;
v0x1aafff0_0 .net "a", 3 0, L_0x1ac6540; 1 drivers
v0x1ab00b0_0 .net "b", 3 0, L_0x1ac65e0; 1 drivers
v0x1ab0150_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1ab01d0_0 .alias "carryout", 0 0, v0x1ab0790_0;
v0x1ab0250_0 .net8 "sum", 3 0, RS_0x2b7da7d72e08; 4 drivers
v0x1ab02d0 .array "temp_cout", 0 2;
v0x1ab02d0_0 .net v0x1ab02d0 0, 0 0, L_0x1ac4590; 1 drivers
v0x1ab02d0_1 .net v0x1ab02d0 1, 0 0, L_0x1ac4d60; 1 drivers
v0x1ab02d0_2 .net v0x1ab02d0 2, 0 0, L_0x1ac5630; 1 drivers
L_0x1ac4660 .part/pv L_0x1aba810, 0, 1, 4;
L_0x1ac4700 .part L_0x1ac6540, 0, 1;
L_0x1ac4830 .part L_0x1ac65e0, 0, 1;
L_0x1ac4ed0 .part/pv L_0x1ac4960, 1, 1, 4;
L_0x1ac4fc0 .part L_0x1ac6540, 1, 1;
L_0x1ac50f0 .part L_0x1ac65e0, 1, 1;
L_0x1ac57c0 .part/pv L_0x1ac5260, 2, 1, 4;
L_0x1ac5860 .part L_0x1ac6540, 2, 1;
L_0x1ac5990 .part L_0x1ac65e0, 2, 1;
L_0x1ac5ff0 .part/pv L_0x1ac5ac0, 3, 1, 4;
L_0x1ac6120 .part L_0x1ac6540, 3, 1;
L_0x1ac62e0 .part L_0x1ac65e0, 3, 1;
S_0x1aaf9f0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1aae650;
 .timescale -9 -12;
L_0x1aba810/d .functor XOR 1, L_0x1ac4700, L_0x1ac4830, C4<0>, C4<0>;
L_0x1aba810 .delay (30000,30000,30000) L_0x1aba810/d;
L_0x1ac3f20/d .functor AND 1, L_0x1ac4700, L_0x1ac4830, C4<1>, C4<1>;
L_0x1ac3f20 .delay (20000,20000,20000) L_0x1ac3f20/d;
L_0x1ac4370/d .functor AND 1, L_0x1ac4700, C4<0>, C4<1>, C4<1>;
L_0x1ac4370 .delay (20000,20000,20000) L_0x1ac4370/d;
L_0x1ac4410/d .functor AND 1, L_0x1ac4830, C4<0>, C4<1>, C4<1>;
L_0x1ac4410 .delay (20000,20000,20000) L_0x1ac4410/d;
L_0x1ac4590/d .functor OR 1, L_0x1ac3f20, L_0x1ac4370, L_0x1ac4410, C4<0>;
L_0x1ac4590 .delay (20000,20000,20000) L_0x1ac4590/d;
v0x1aafae0_0 .net "AandB", 0 0, L_0x1ac3f20; 1 drivers
v0x1aafba0_0 .net "AandC", 0 0, L_0x1ac4370; 1 drivers
v0x1aafc40_0 .net "BandC", 0 0, L_0x1ac4410; 1 drivers
v0x1aafce0_0 .net "a", 0 0, L_0x1ac4700; 1 drivers
v0x1aafd60_0 .net "b", 0 0, L_0x1ac4830; 1 drivers
v0x1aafe00_0 .alias "carryin", 0 0, v0x1ab0150_0;
v0x1aafea0_0 .alias "carryout", 0 0, v0x1ab02d0_0;
v0x1aaff20_0 .net "sum", 0 0, L_0x1aba810; 1 drivers
S_0x1aaf3f0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1aae650;
 .timescale -9 -12;
L_0x1ac4960/d .functor XOR 1, L_0x1ac4fc0, L_0x1ac50f0, L_0x1ac4590, C4<0>;
L_0x1ac4960 .delay (30000,30000,30000) L_0x1ac4960/d;
L_0x1ac4b20/d .functor AND 1, L_0x1ac4fc0, L_0x1ac50f0, C4<1>, C4<1>;
L_0x1ac4b20 .delay (20000,20000,20000) L_0x1ac4b20/d;
L_0x1ac4bf0/d .functor AND 1, L_0x1ac4fc0, L_0x1ac4590, C4<1>, C4<1>;
L_0x1ac4bf0 .delay (20000,20000,20000) L_0x1ac4bf0/d;
L_0x1ac4c90/d .functor AND 1, L_0x1ac50f0, L_0x1ac4590, C4<1>, C4<1>;
L_0x1ac4c90 .delay (20000,20000,20000) L_0x1ac4c90/d;
L_0x1ac4d60/d .functor OR 1, L_0x1ac4b20, L_0x1ac4bf0, L_0x1ac4c90, C4<0>;
L_0x1ac4d60 .delay (20000,20000,20000) L_0x1ac4d60/d;
v0x1aaf4e0_0 .net "AandB", 0 0, L_0x1ac4b20; 1 drivers
v0x1aaf5a0_0 .net "AandC", 0 0, L_0x1ac4bf0; 1 drivers
v0x1aaf640_0 .net "BandC", 0 0, L_0x1ac4c90; 1 drivers
v0x1aaf6e0_0 .net "a", 0 0, L_0x1ac4fc0; 1 drivers
v0x1aaf760_0 .net "b", 0 0, L_0x1ac50f0; 1 drivers
v0x1aaf800_0 .alias "carryin", 0 0, v0x1ab02d0_0;
v0x1aaf8a0_0 .alias "carryout", 0 0, v0x1ab02d0_1;
v0x1aaf920_0 .net "sum", 0 0, L_0x1ac4960; 1 drivers
S_0x1aaedf0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1aae650;
 .timescale -9 -12;
L_0x1ac5260/d .functor XOR 1, L_0x1ac5860, L_0x1ac5990, L_0x1ac4d60, C4<0>;
L_0x1ac5260 .delay (30000,30000,30000) L_0x1ac5260/d;
L_0x1ac5390/d .functor AND 1, L_0x1ac5860, L_0x1ac5990, C4<1>, C4<1>;
L_0x1ac5390 .delay (20000,20000,20000) L_0x1ac5390/d;
L_0x1ac54d0/d .functor AND 1, L_0x1ac5860, L_0x1ac4d60, C4<1>, C4<1>;
L_0x1ac54d0 .delay (20000,20000,20000) L_0x1ac54d0/d;
L_0x1ac5570/d .functor AND 1, L_0x1ac5990, L_0x1ac4d60, C4<1>, C4<1>;
L_0x1ac5570 .delay (20000,20000,20000) L_0x1ac5570/d;
L_0x1ac5630/d .functor OR 1, L_0x1ac5390, L_0x1ac54d0, L_0x1ac5570, C4<0>;
L_0x1ac5630 .delay (20000,20000,20000) L_0x1ac5630/d;
v0x1aaeee0_0 .net "AandB", 0 0, L_0x1ac5390; 1 drivers
v0x1aaefa0_0 .net "AandC", 0 0, L_0x1ac54d0; 1 drivers
v0x1aaf040_0 .net "BandC", 0 0, L_0x1ac5570; 1 drivers
v0x1aaf0e0_0 .net "a", 0 0, L_0x1ac5860; 1 drivers
v0x1aaf160_0 .net "b", 0 0, L_0x1ac5990; 1 drivers
v0x1aaf200_0 .alias "carryin", 0 0, v0x1ab02d0_1;
v0x1aaf2a0_0 .alias "carryout", 0 0, v0x1ab02d0_2;
v0x1aaf320_0 .net "sum", 0 0, L_0x1ac5260; 1 drivers
S_0x1aae740 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1aae650;
 .timescale -9 -12;
L_0x1ac5ac0/d .functor XOR 1, L_0x1ac6120, L_0x1ac62e0, L_0x1ac5630, C4<0>;
L_0x1ac5ac0 .delay (30000,30000,30000) L_0x1ac5ac0/d;
L_0x1ac5bb0/d .functor AND 1, L_0x1ac6120, L_0x1ac62e0, C4<1>, C4<1>;
L_0x1ac5bb0 .delay (20000,20000,20000) L_0x1ac5bb0/d;
L_0x1ac5cd0/d .functor AND 1, L_0x1ac6120, L_0x1ac5630, C4<1>, C4<1>;
L_0x1ac5cd0 .delay (20000,20000,20000) L_0x1ac5cd0/d;
L_0x1ac5d90/d .functor AND 1, L_0x1ac62e0, L_0x1ac5630, C4<1>, C4<1>;
L_0x1ac5d90 .delay (20000,20000,20000) L_0x1ac5d90/d;
L_0x1ac5e80/d .functor OR 1, L_0x1ac5bb0, L_0x1ac5cd0, L_0x1ac5d90, C4<0>;
L_0x1ac5e80 .delay (20000,20000,20000) L_0x1ac5e80/d;
v0x1aae830_0 .net "AandB", 0 0, L_0x1ac5bb0; 1 drivers
v0x1aae8f0_0 .net "AandC", 0 0, L_0x1ac5cd0; 1 drivers
v0x1aae990_0 .net "BandC", 0 0, L_0x1ac5d90; 1 drivers
v0x1aaea30_0 .net "a", 0 0, L_0x1ac6120; 1 drivers
v0x1aaeab0_0 .net "b", 0 0, L_0x1ac62e0; 1 drivers
v0x1aaeb50_0 .alias "carryin", 0 0, v0x1ab02d0_2;
v0x1aaec30_0 .alias "carryout", 0 0, v0x1ab0790_0;
v0x1aaed00_0 .net "sum", 0 0, L_0x1ac5ac0; 1 drivers
S_0x1aac860 .scope module, "f41" "CompAdder4bit" 2 60, 2 30, S_0x1aa1620;
 .timescale -9 -12;
v0x1aae200_0 .net "a", 3 0, L_0x1ac8c70; 1 drivers
v0x1aae2c0_0 .net "b", 3 0, L_0x1ac8d10; 1 drivers
v0x1aae360_0 .alias "carryin", 0 0, v0x1ab0790_0;
v0x1aae3e0_0 .alias "carryout", 0 0, v0x1ab0790_1;
v0x1aae460_0 .net8 "sum", 3 0, RS_0x2b7da7d72838; 4 drivers
v0x1aae4e0 .array "temp_cout", 0 2;
v0x1aae4e0_0 .net v0x1aae4e0 0, 0 0, L_0x1ac6a80; 1 drivers
v0x1aae4e0_1 .net v0x1aae4e0 1, 0 0, L_0x1ac7340; 1 drivers
v0x1aae4e0_2 .net v0x1aae4e0 2, 0 0, L_0x1ac7c40; 1 drivers
L_0x1ac6c40 .part/pv L_0x1ac66c0, 0, 1, 4;
L_0x1ac6ce0 .part L_0x1ac8c70, 0, 1;
L_0x1ac6e10 .part L_0x1ac8d10, 0, 1;
L_0x1ac7500 .part/pv L_0x1ac6f40, 1, 1, 4;
L_0x1ac75f0 .part L_0x1ac8c70, 1, 1;
L_0x1ac7720 .part L_0x1ac8d10, 1, 1;
L_0x1ac7dd0 .part/pv L_0x1ac7890, 2, 1, 4;
L_0x1ac7e70 .part L_0x1ac8c70, 2, 1;
L_0x1ac7fa0 .part L_0x1ac8d10, 2, 1;
L_0x1ac8650 .part/pv L_0x1ac80d0, 3, 1, 4;
L_0x1ac87e0 .part L_0x1ac8c70, 3, 1;
L_0x1ac89a0 .part L_0x1ac8d10, 3, 1;
S_0x1aadc00 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1aac860;
 .timescale -9 -12;
L_0x1ac66c0/d .functor XOR 1, L_0x1ac6ce0, L_0x1ac6e10, L_0x1ac5e80, C4<0>;
L_0x1ac66c0 .delay (30000,30000,30000) L_0x1ac66c0/d;
L_0x1ac6760/d .functor AND 1, L_0x1ac6ce0, L_0x1ac6e10, C4<1>, C4<1>;
L_0x1ac6760 .delay (20000,20000,20000) L_0x1ac6760/d;
L_0x1ac6850/d .functor AND 1, L_0x1ac6ce0, L_0x1ac5e80, C4<1>, C4<1>;
L_0x1ac6850 .delay (20000,20000,20000) L_0x1ac6850/d;
L_0x1ac68f0/d .functor AND 1, L_0x1ac6e10, L_0x1ac5e80, C4<1>, C4<1>;
L_0x1ac68f0 .delay (20000,20000,20000) L_0x1ac68f0/d;
L_0x1ac6a80/d .functor OR 1, L_0x1ac6760, L_0x1ac6850, L_0x1ac68f0, C4<0>;
L_0x1ac6a80 .delay (20000,20000,20000) L_0x1ac6a80/d;
v0x1aadcf0_0 .net "AandB", 0 0, L_0x1ac6760; 1 drivers
v0x1aaddb0_0 .net "AandC", 0 0, L_0x1ac6850; 1 drivers
v0x1aade50_0 .net "BandC", 0 0, L_0x1ac68f0; 1 drivers
v0x1aadef0_0 .net "a", 0 0, L_0x1ac6ce0; 1 drivers
v0x1aadf70_0 .net "b", 0 0, L_0x1ac6e10; 1 drivers
v0x1aae010_0 .alias "carryin", 0 0, v0x1ab0790_0;
v0x1aae0b0_0 .alias "carryout", 0 0, v0x1aae4e0_0;
v0x1aae130_0 .net "sum", 0 0, L_0x1ac66c0; 1 drivers
S_0x1aad600 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1aac860;
 .timescale -9 -12;
L_0x1ac6f40/d .functor XOR 1, L_0x1ac75f0, L_0x1ac7720, L_0x1ac6a80, C4<0>;
L_0x1ac6f40 .delay (30000,30000,30000) L_0x1ac6f40/d;
L_0x1ac7100/d .functor AND 1, L_0x1ac75f0, L_0x1ac7720, C4<1>, C4<1>;
L_0x1ac7100 .delay (20000,20000,20000) L_0x1ac7100/d;
L_0x1ac71d0/d .functor AND 1, L_0x1ac75f0, L_0x1ac6a80, C4<1>, C4<1>;
L_0x1ac71d0 .delay (20000,20000,20000) L_0x1ac71d0/d;
L_0x1ac7270/d .functor AND 1, L_0x1ac7720, L_0x1ac6a80, C4<1>, C4<1>;
L_0x1ac7270 .delay (20000,20000,20000) L_0x1ac7270/d;
L_0x1ac7340/d .functor OR 1, L_0x1ac7100, L_0x1ac71d0, L_0x1ac7270, C4<0>;
L_0x1ac7340 .delay (20000,20000,20000) L_0x1ac7340/d;
v0x1aad6f0_0 .net "AandB", 0 0, L_0x1ac7100; 1 drivers
v0x1aad7b0_0 .net "AandC", 0 0, L_0x1ac71d0; 1 drivers
v0x1aad850_0 .net "BandC", 0 0, L_0x1ac7270; 1 drivers
v0x1aad8f0_0 .net "a", 0 0, L_0x1ac75f0; 1 drivers
v0x1aad970_0 .net "b", 0 0, L_0x1ac7720; 1 drivers
v0x1aada10_0 .alias "carryin", 0 0, v0x1aae4e0_0;
v0x1aadab0_0 .alias "carryout", 0 0, v0x1aae4e0_1;
v0x1aadb30_0 .net "sum", 0 0, L_0x1ac6f40; 1 drivers
S_0x1aad000 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1aac860;
 .timescale -9 -12;
L_0x1ac7890/d .functor XOR 1, L_0x1ac7e70, L_0x1ac7fa0, L_0x1ac7340, C4<0>;
L_0x1ac7890 .delay (30000,30000,30000) L_0x1ac7890/d;
L_0x1ac79c0/d .functor AND 1, L_0x1ac7e70, L_0x1ac7fa0, C4<1>, C4<1>;
L_0x1ac79c0 .delay (20000,20000,20000) L_0x1ac79c0/d;
L_0x1ac7b00/d .functor AND 1, L_0x1ac7e70, L_0x1ac7340, C4<1>, C4<1>;
L_0x1ac7b00 .delay (20000,20000,20000) L_0x1ac7b00/d;
L_0x1ac7ba0/d .functor AND 1, L_0x1ac7fa0, L_0x1ac7340, C4<1>, C4<1>;
L_0x1ac7ba0 .delay (20000,20000,20000) L_0x1ac7ba0/d;
L_0x1ac7c40/d .functor OR 1, L_0x1ac79c0, L_0x1ac7b00, L_0x1ac7ba0, C4<0>;
L_0x1ac7c40 .delay (20000,20000,20000) L_0x1ac7c40/d;
v0x1aad0f0_0 .net "AandB", 0 0, L_0x1ac79c0; 1 drivers
v0x1aad1b0_0 .net "AandC", 0 0, L_0x1ac7b00; 1 drivers
v0x1aad250_0 .net "BandC", 0 0, L_0x1ac7ba0; 1 drivers
v0x1aad2f0_0 .net "a", 0 0, L_0x1ac7e70; 1 drivers
v0x1aad370_0 .net "b", 0 0, L_0x1ac7fa0; 1 drivers
v0x1aad410_0 .alias "carryin", 0 0, v0x1aae4e0_1;
v0x1aad4b0_0 .alias "carryout", 0 0, v0x1aae4e0_2;
v0x1aad530_0 .net "sum", 0 0, L_0x1ac7890; 1 drivers
S_0x1aac950 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1aac860;
 .timescale -9 -12;
L_0x1ac80d0/d .functor XOR 1, L_0x1ac87e0, L_0x1ac89a0, L_0x1ac7c40, C4<0>;
L_0x1ac80d0 .delay (30000,30000,30000) L_0x1ac80d0/d;
L_0x1ac81c0/d .functor AND 1, L_0x1ac87e0, L_0x1ac89a0, C4<1>, C4<1>;
L_0x1ac81c0 .delay (20000,20000,20000) L_0x1ac81c0/d;
L_0x1ac82e0/d .functor AND 1, L_0x1ac87e0, L_0x1ac7c40, C4<1>, C4<1>;
L_0x1ac82e0 .delay (20000,20000,20000) L_0x1ac82e0/d;
L_0x1ac83a0/d .functor AND 1, L_0x1ac89a0, L_0x1ac7c40, C4<1>, C4<1>;
L_0x1ac83a0 .delay (20000,20000,20000) L_0x1ac83a0/d;
L_0x1ac8490/d .functor OR 1, L_0x1ac81c0, L_0x1ac82e0, L_0x1ac83a0, C4<0>;
L_0x1ac8490 .delay (20000,20000,20000) L_0x1ac8490/d;
v0x1aaca40_0 .net "AandB", 0 0, L_0x1ac81c0; 1 drivers
v0x1aacb00_0 .net "AandC", 0 0, L_0x1ac82e0; 1 drivers
v0x1aacba0_0 .net "BandC", 0 0, L_0x1ac83a0; 1 drivers
v0x1aacc40_0 .net "a", 0 0, L_0x1ac87e0; 1 drivers
v0x1aaccc0_0 .net "b", 0 0, L_0x1ac89a0; 1 drivers
v0x1aacd60_0 .alias "carryin", 0 0, v0x1aae4e0_2;
v0x1aace40_0 .alias "carryout", 0 0, v0x1ab0790_1;
v0x1aacf10_0 .net "sum", 0 0, L_0x1ac80d0; 1 drivers
S_0x1aaaa70 .scope module, "f42" "CompAdder4bit" 2 61, 2 30, S_0x1aa1620;
 .timescale -9 -12;
v0x1aac410_0 .net "a", 3 0, L_0x1acb2b0; 1 drivers
v0x1aac4d0_0 .net "b", 3 0, L_0x1acb3e0; 1 drivers
v0x1aac570_0 .alias "carryin", 0 0, v0x1ab0790_1;
v0x1aac5f0_0 .alias "carryout", 0 0, v0x1ab0790_2;
v0x1aac670_0 .net8 "sum", 3 0, RS_0x2b7da7d72268; 4 drivers
v0x1aac6f0 .array "temp_cout", 0 2;
v0x1aac6f0_0 .net v0x1aac6f0 0, 0 0, L_0x1ac9120; 1 drivers
v0x1aac6f0_1 .net v0x1aac6f0 1, 0 0, L_0x1ac98f0; 1 drivers
v0x1aac6f0_2 .net v0x1aac6f0 2, 0 0, L_0x1aca1f0; 1 drivers
L_0x1ac91f0 .part/pv L_0x1ac8780, 0, 1, 4;
L_0x1ac9290 .part L_0x1acb2b0, 0, 1;
L_0x1ac93c0 .part L_0x1acb3e0, 0, 1;
L_0x1ac9ab0 .part/pv L_0x1ac94f0, 1, 1, 4;
L_0x1ac9ba0 .part L_0x1acb2b0, 1, 1;
L_0x1ac9cd0 .part L_0x1acb3e0, 1, 1;
L_0x1aca380 .part/pv L_0x1ac9e40, 2, 1, 4;
L_0x1aca420 .part L_0x1acb2b0, 2, 1;
L_0x1aca550 .part L_0x1acb3e0, 2, 1;
L_0x1acac00 .part/pv L_0x1aca680, 3, 1, 4;
L_0x1acad90 .part L_0x1acb2b0, 3, 1;
L_0x1acaf50 .part L_0x1acb3e0, 3, 1;
S_0x1aabe10 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1aaaa70;
 .timescale -9 -12;
L_0x1ac8780/d .functor XOR 1, L_0x1ac9290, L_0x1ac93c0, L_0x1ac8490, C4<0>;
L_0x1ac8780 .delay (30000,30000,30000) L_0x1ac8780/d;
L_0x1ac8e30/d .functor AND 1, L_0x1ac9290, L_0x1ac93c0, C4<1>, C4<1>;
L_0x1ac8e30 .delay (20000,20000,20000) L_0x1ac8e30/d;
L_0x1ac8ed0/d .functor AND 1, L_0x1ac9290, L_0x1ac8490, C4<1>, C4<1>;
L_0x1ac8ed0 .delay (20000,20000,20000) L_0x1ac8ed0/d;
L_0x1ac8f90/d .functor AND 1, L_0x1ac93c0, L_0x1ac8490, C4<1>, C4<1>;
L_0x1ac8f90 .delay (20000,20000,20000) L_0x1ac8f90/d;
L_0x1ac9120/d .functor OR 1, L_0x1ac8e30, L_0x1ac8ed0, L_0x1ac8f90, C4<0>;
L_0x1ac9120 .delay (20000,20000,20000) L_0x1ac9120/d;
v0x1aabf00_0 .net "AandB", 0 0, L_0x1ac8e30; 1 drivers
v0x1aabfc0_0 .net "AandC", 0 0, L_0x1ac8ed0; 1 drivers
v0x1aac060_0 .net "BandC", 0 0, L_0x1ac8f90; 1 drivers
v0x1aac100_0 .net "a", 0 0, L_0x1ac9290; 1 drivers
v0x1aac180_0 .net "b", 0 0, L_0x1ac93c0; 1 drivers
v0x1aac220_0 .alias "carryin", 0 0, v0x1ab0790_1;
v0x1aac2c0_0 .alias "carryout", 0 0, v0x1aac6f0_0;
v0x1aac340_0 .net "sum", 0 0, L_0x1ac8780; 1 drivers
S_0x1aab810 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1aaaa70;
 .timescale -9 -12;
L_0x1ac94f0/d .functor XOR 1, L_0x1ac9ba0, L_0x1ac9cd0, L_0x1ac9120, C4<0>;
L_0x1ac94f0 .delay (30000,30000,30000) L_0x1ac94f0/d;
L_0x1ac96b0/d .functor AND 1, L_0x1ac9ba0, L_0x1ac9cd0, C4<1>, C4<1>;
L_0x1ac96b0 .delay (20000,20000,20000) L_0x1ac96b0/d;
L_0x1ac9780/d .functor AND 1, L_0x1ac9ba0, L_0x1ac9120, C4<1>, C4<1>;
L_0x1ac9780 .delay (20000,20000,20000) L_0x1ac9780/d;
L_0x1ac9820/d .functor AND 1, L_0x1ac9cd0, L_0x1ac9120, C4<1>, C4<1>;
L_0x1ac9820 .delay (20000,20000,20000) L_0x1ac9820/d;
L_0x1ac98f0/d .functor OR 1, L_0x1ac96b0, L_0x1ac9780, L_0x1ac9820, C4<0>;
L_0x1ac98f0 .delay (20000,20000,20000) L_0x1ac98f0/d;
v0x1aab900_0 .net "AandB", 0 0, L_0x1ac96b0; 1 drivers
v0x1aab9c0_0 .net "AandC", 0 0, L_0x1ac9780; 1 drivers
v0x1aaba60_0 .net "BandC", 0 0, L_0x1ac9820; 1 drivers
v0x1aabb00_0 .net "a", 0 0, L_0x1ac9ba0; 1 drivers
v0x1aabb80_0 .net "b", 0 0, L_0x1ac9cd0; 1 drivers
v0x1aabc20_0 .alias "carryin", 0 0, v0x1aac6f0_0;
v0x1aabcc0_0 .alias "carryout", 0 0, v0x1aac6f0_1;
v0x1aabd40_0 .net "sum", 0 0, L_0x1ac94f0; 1 drivers
S_0x1aab210 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1aaaa70;
 .timescale -9 -12;
L_0x1ac9e40/d .functor XOR 1, L_0x1aca420, L_0x1aca550, L_0x1ac98f0, C4<0>;
L_0x1ac9e40 .delay (30000,30000,30000) L_0x1ac9e40/d;
L_0x1ac9f70/d .functor AND 1, L_0x1aca420, L_0x1aca550, C4<1>, C4<1>;
L_0x1ac9f70 .delay (20000,20000,20000) L_0x1ac9f70/d;
L_0x1aca0b0/d .functor AND 1, L_0x1aca420, L_0x1ac98f0, C4<1>, C4<1>;
L_0x1aca0b0 .delay (20000,20000,20000) L_0x1aca0b0/d;
L_0x1aca150/d .functor AND 1, L_0x1aca550, L_0x1ac98f0, C4<1>, C4<1>;
L_0x1aca150 .delay (20000,20000,20000) L_0x1aca150/d;
L_0x1aca1f0/d .functor OR 1, L_0x1ac9f70, L_0x1aca0b0, L_0x1aca150, C4<0>;
L_0x1aca1f0 .delay (20000,20000,20000) L_0x1aca1f0/d;
v0x1aab300_0 .net "AandB", 0 0, L_0x1ac9f70; 1 drivers
v0x1aab3c0_0 .net "AandC", 0 0, L_0x1aca0b0; 1 drivers
v0x1aab460_0 .net "BandC", 0 0, L_0x1aca150; 1 drivers
v0x1aab500_0 .net "a", 0 0, L_0x1aca420; 1 drivers
v0x1aab580_0 .net "b", 0 0, L_0x1aca550; 1 drivers
v0x1aab620_0 .alias "carryin", 0 0, v0x1aac6f0_1;
v0x1aab6c0_0 .alias "carryout", 0 0, v0x1aac6f0_2;
v0x1aab740_0 .net "sum", 0 0, L_0x1ac9e40; 1 drivers
S_0x1aaab60 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1aaaa70;
 .timescale -9 -12;
L_0x1aca680/d .functor XOR 1, L_0x1acad90, L_0x1acaf50, L_0x1aca1f0, C4<0>;
L_0x1aca680 .delay (30000,30000,30000) L_0x1aca680/d;
L_0x1aca770/d .functor AND 1, L_0x1acad90, L_0x1acaf50, C4<1>, C4<1>;
L_0x1aca770 .delay (20000,20000,20000) L_0x1aca770/d;
L_0x1aca890/d .functor AND 1, L_0x1acad90, L_0x1aca1f0, C4<1>, C4<1>;
L_0x1aca890 .delay (20000,20000,20000) L_0x1aca890/d;
L_0x1aca950/d .functor AND 1, L_0x1acaf50, L_0x1aca1f0, C4<1>, C4<1>;
L_0x1aca950 .delay (20000,20000,20000) L_0x1aca950/d;
L_0x1acaa40/d .functor OR 1, L_0x1aca770, L_0x1aca890, L_0x1aca950, C4<0>;
L_0x1acaa40 .delay (20000,20000,20000) L_0x1acaa40/d;
v0x1aaac50_0 .net "AandB", 0 0, L_0x1aca770; 1 drivers
v0x1aaad10_0 .net "AandC", 0 0, L_0x1aca890; 1 drivers
v0x1aaadb0_0 .net "BandC", 0 0, L_0x1aca950; 1 drivers
v0x1aaae50_0 .net "a", 0 0, L_0x1acad90; 1 drivers
v0x1aaaed0_0 .net "b", 0 0, L_0x1acaf50; 1 drivers
v0x1aaaf70_0 .alias "carryin", 0 0, v0x1aac6f0_2;
v0x1aab050_0 .alias "carryout", 0 0, v0x1ab0790_2;
v0x1aab120_0 .net "sum", 0 0, L_0x1aca680; 1 drivers
S_0x1aa8c80 .scope module, "f43" "CompAdder4bit" 2 62, 2 30, S_0x1aa1620;
 .timescale -9 -12;
v0x1aaa620_0 .net "a", 3 0, L_0x1acd890; 1 drivers
v0x1aaa6e0_0 .net "b", 3 0, L_0x1acd930; 1 drivers
v0x1aaa780_0 .alias "carryin", 0 0, v0x1ab0790_2;
v0x1aaa800_0 .alias "carryout", 0 0, v0x1ab0790_3;
v0x1aaa880_0 .net8 "sum", 3 0, RS_0x2b7da7d71c98; 4 drivers
v0x1aaa900 .array "temp_cout", 0 2;
v0x1aaa900_0 .net v0x1aaa900 0, 0 0, L_0x1acb830; 1 drivers
v0x1aaa900_1 .net v0x1aaa900 1, 0 0, L_0x1acc000; 1 drivers
v0x1aaa900_2 .net v0x1aaa900 2, 0 0, L_0x1acc860; 1 drivers
L_0x1acb900 .part/pv L_0x1acad30, 0, 1, 4;
L_0x1acb9a0 .part L_0x1acd890, 0, 1;
L_0x1acbad0 .part L_0x1acd930, 0, 1;
L_0x1acc120 .part/pv L_0x1acbc00, 1, 1, 4;
L_0x1acc210 .part L_0x1acd890, 1, 1;
L_0x1acc340 .part L_0x1acd930, 1, 1;
L_0x1acc9f0 .part/pv L_0x1acc4b0, 2, 1, 4;
L_0x1acca90 .part L_0x1acd890, 2, 1;
L_0x1accbc0 .part L_0x1acd930, 2, 1;
L_0x1acd270 .part/pv L_0x1acccf0, 3, 1, 4;
L_0x1acd400 .part L_0x1acd890, 3, 1;
L_0x1acd5c0 .part L_0x1acd930, 3, 1;
S_0x1aaa020 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1aa8c80;
 .timescale -9 -12;
L_0x1acad30/d .functor XOR 1, L_0x1acb9a0, L_0x1acbad0, L_0x1acaa40, C4<0>;
L_0x1acad30 .delay (30000,30000,30000) L_0x1acad30/d;
L_0x1acb510/d .functor AND 1, L_0x1acb9a0, L_0x1acbad0, C4<1>, C4<1>;
L_0x1acb510 .delay (20000,20000,20000) L_0x1acb510/d;
L_0x1acb5e0/d .functor AND 1, L_0x1acb9a0, L_0x1acaa40, C4<1>, C4<1>;
L_0x1acb5e0 .delay (20000,20000,20000) L_0x1acb5e0/d;
L_0x1acb6a0/d .functor AND 1, L_0x1acbad0, L_0x1acaa40, C4<1>, C4<1>;
L_0x1acb6a0 .delay (20000,20000,20000) L_0x1acb6a0/d;
L_0x1acb830/d .functor OR 1, L_0x1acb510, L_0x1acb5e0, L_0x1acb6a0, C4<0>;
L_0x1acb830 .delay (20000,20000,20000) L_0x1acb830/d;
v0x1aaa110_0 .net "AandB", 0 0, L_0x1acb510; 1 drivers
v0x1aaa1d0_0 .net "AandC", 0 0, L_0x1acb5e0; 1 drivers
v0x1aaa270_0 .net "BandC", 0 0, L_0x1acb6a0; 1 drivers
v0x1aaa310_0 .net "a", 0 0, L_0x1acb9a0; 1 drivers
v0x1aaa390_0 .net "b", 0 0, L_0x1acbad0; 1 drivers
v0x1aaa430_0 .alias "carryin", 0 0, v0x1ab0790_2;
v0x1aaa4d0_0 .alias "carryout", 0 0, v0x1aaa900_0;
v0x1aaa550_0 .net "sum", 0 0, L_0x1acad30; 1 drivers
S_0x1aa9a20 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1aa8c80;
 .timescale -9 -12;
L_0x1acbc00/d .functor XOR 1, L_0x1acc210, L_0x1acc340, L_0x1acb830, C4<0>;
L_0x1acbc00 .delay (30000,30000,30000) L_0x1acbc00/d;
L_0x1acbdc0/d .functor AND 1, L_0x1acc210, L_0x1acc340, C4<1>, C4<1>;
L_0x1acbdc0 .delay (20000,20000,20000) L_0x1acbdc0/d;
L_0x1acbe90/d .functor AND 1, L_0x1acc210, L_0x1acb830, C4<1>, C4<1>;
L_0x1acbe90 .delay (20000,20000,20000) L_0x1acbe90/d;
L_0x1acbf30/d .functor AND 1, L_0x1acc340, L_0x1acb830, C4<1>, C4<1>;
L_0x1acbf30 .delay (20000,20000,20000) L_0x1acbf30/d;
L_0x1acc000/d .functor OR 1, L_0x1acbdc0, L_0x1acbe90, L_0x1acbf30, C4<0>;
L_0x1acc000 .delay (20000,20000,20000) L_0x1acc000/d;
v0x1aa9b10_0 .net "AandB", 0 0, L_0x1acbdc0; 1 drivers
v0x1aa9bd0_0 .net "AandC", 0 0, L_0x1acbe90; 1 drivers
v0x1aa9c70_0 .net "BandC", 0 0, L_0x1acbf30; 1 drivers
v0x1aa9d10_0 .net "a", 0 0, L_0x1acc210; 1 drivers
v0x1aa9d90_0 .net "b", 0 0, L_0x1acc340; 1 drivers
v0x1aa9e30_0 .alias "carryin", 0 0, v0x1aaa900_0;
v0x1aa9ed0_0 .alias "carryout", 0 0, v0x1aaa900_1;
v0x1aa9f50_0 .net "sum", 0 0, L_0x1acbc00; 1 drivers
S_0x1aa9420 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1aa8c80;
 .timescale -9 -12;
L_0x1acc4b0/d .functor XOR 1, L_0x1acca90, L_0x1accbc0, L_0x1acc000, C4<0>;
L_0x1acc4b0 .delay (30000,30000,30000) L_0x1acc4b0/d;
L_0x1acc5e0/d .functor AND 1, L_0x1acca90, L_0x1accbc0, C4<1>, C4<1>;
L_0x1acc5e0 .delay (20000,20000,20000) L_0x1acc5e0/d;
L_0x1acc720/d .functor AND 1, L_0x1acca90, L_0x1acc000, C4<1>, C4<1>;
L_0x1acc720 .delay (20000,20000,20000) L_0x1acc720/d;
L_0x1acc7c0/d .functor AND 1, L_0x1accbc0, L_0x1acc000, C4<1>, C4<1>;
L_0x1acc7c0 .delay (20000,20000,20000) L_0x1acc7c0/d;
L_0x1acc860/d .functor OR 1, L_0x1acc5e0, L_0x1acc720, L_0x1acc7c0, C4<0>;
L_0x1acc860 .delay (20000,20000,20000) L_0x1acc860/d;
v0x1aa9510_0 .net "AandB", 0 0, L_0x1acc5e0; 1 drivers
v0x1aa95d0_0 .net "AandC", 0 0, L_0x1acc720; 1 drivers
v0x1aa9670_0 .net "BandC", 0 0, L_0x1acc7c0; 1 drivers
v0x1aa9710_0 .net "a", 0 0, L_0x1acca90; 1 drivers
v0x1aa9790_0 .net "b", 0 0, L_0x1accbc0; 1 drivers
v0x1aa9830_0 .alias "carryin", 0 0, v0x1aaa900_1;
v0x1aa98d0_0 .alias "carryout", 0 0, v0x1aaa900_2;
v0x1aa9950_0 .net "sum", 0 0, L_0x1acc4b0; 1 drivers
S_0x1aa8d70 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1aa8c80;
 .timescale -9 -12;
L_0x1acccf0/d .functor XOR 1, L_0x1acd400, L_0x1acd5c0, L_0x1acc860, C4<0>;
L_0x1acccf0 .delay (30000,30000,30000) L_0x1acccf0/d;
L_0x1accde0/d .functor AND 1, L_0x1acd400, L_0x1acd5c0, C4<1>, C4<1>;
L_0x1accde0 .delay (20000,20000,20000) L_0x1accde0/d;
L_0x1accf00/d .functor AND 1, L_0x1acd400, L_0x1acc860, C4<1>, C4<1>;
L_0x1accf00 .delay (20000,20000,20000) L_0x1accf00/d;
L_0x1accfc0/d .functor AND 1, L_0x1acd5c0, L_0x1acc860, C4<1>, C4<1>;
L_0x1accfc0 .delay (20000,20000,20000) L_0x1accfc0/d;
L_0x1acd0b0/d .functor OR 1, L_0x1accde0, L_0x1accf00, L_0x1accfc0, C4<0>;
L_0x1acd0b0 .delay (20000,20000,20000) L_0x1acd0b0/d;
v0x1aa8e60_0 .net "AandB", 0 0, L_0x1accde0; 1 drivers
v0x1aa8f20_0 .net "AandC", 0 0, L_0x1accf00; 1 drivers
v0x1aa8fc0_0 .net "BandC", 0 0, L_0x1accfc0; 1 drivers
v0x1aa9060_0 .net "a", 0 0, L_0x1acd400; 1 drivers
v0x1aa90e0_0 .net "b", 0 0, L_0x1acd5c0; 1 drivers
v0x1aa9180_0 .alias "carryin", 0 0, v0x1aaa900_2;
v0x1aa9260_0 .alias "carryout", 0 0, v0x1ab0790_3;
v0x1aa9330_0 .net "sum", 0 0, L_0x1acccf0; 1 drivers
S_0x1aa6e90 .scope module, "f44" "CompAdder4bit" 2 63, 2 30, S_0x1aa1620;
 .timescale -9 -12;
v0x1aa8830_0 .net "a", 3 0, L_0x1acfe50; 1 drivers
v0x1aa88f0_0 .net "b", 3 0, L_0x1acff70; 1 drivers
v0x1aa8990_0 .alias "carryin", 0 0, v0x1ab0790_3;
v0x1aa8a10_0 .alias "carryout", 0 0, v0x1ab0790_4;
v0x1aa8a90_0 .net8 "sum", 3 0, RS_0x2b7da7d716c8; 4 drivers
v0x1aa8b10 .array "temp_cout", 0 2;
v0x1aa8b10_0 .net v0x1aa8b10 0, 0 0, L_0x1acdda0; 1 drivers
v0x1aa8b10_1 .net v0x1aa8b10 1, 0 0, L_0x1ace570; 1 drivers
v0x1aa8b10_2 .net v0x1aa8b10 2, 0 0, L_0x1acee20; 1 drivers
L_0x1acde70 .part/pv L_0x1acd3a0, 0, 1, 4;
L_0x1acdf10 .part L_0x1acfe50, 0, 1;
L_0x1ace040 .part L_0x1acff70, 0, 1;
L_0x1ace6e0 .part/pv L_0x1ace170, 1, 1, 4;
L_0x1ace7d0 .part L_0x1acfe50, 1, 1;
L_0x1ace900 .part L_0x1acff70, 1, 1;
L_0x1acefb0 .part/pv L_0x1acea70, 2, 1, 4;
L_0x1acf050 .part L_0x1acfe50, 2, 1;
L_0x1acf180 .part L_0x1acff70, 2, 1;
L_0x1acf830 .part/pv L_0x1acf2b0, 3, 1, 4;
L_0x1acf9c0 .part L_0x1acfe50, 3, 1;
L_0x1acfb80 .part L_0x1acff70, 3, 1;
S_0x1aa8230 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1aa6e90;
 .timescale -9 -12;
L_0x1acd3a0/d .functor XOR 1, L_0x1acdf10, L_0x1ace040, L_0x1acd0b0, C4<0>;
L_0x1acd3a0 .delay (30000,30000,30000) L_0x1acd3a0/d;
L_0x1acda80/d .functor AND 1, L_0x1acdf10, L_0x1ace040, C4<1>, C4<1>;
L_0x1acda80 .delay (20000,20000,20000) L_0x1acda80/d;
L_0x1acdb50/d .functor AND 1, L_0x1acdf10, L_0x1acd0b0, C4<1>, C4<1>;
L_0x1acdb50 .delay (20000,20000,20000) L_0x1acdb50/d;
L_0x1acdc10/d .functor AND 1, L_0x1ace040, L_0x1acd0b0, C4<1>, C4<1>;
L_0x1acdc10 .delay (20000,20000,20000) L_0x1acdc10/d;
L_0x1acdda0/d .functor OR 1, L_0x1acda80, L_0x1acdb50, L_0x1acdc10, C4<0>;
L_0x1acdda0 .delay (20000,20000,20000) L_0x1acdda0/d;
v0x1aa8320_0 .net "AandB", 0 0, L_0x1acda80; 1 drivers
v0x1aa83e0_0 .net "AandC", 0 0, L_0x1acdb50; 1 drivers
v0x1aa8480_0 .net "BandC", 0 0, L_0x1acdc10; 1 drivers
v0x1aa8520_0 .net "a", 0 0, L_0x1acdf10; 1 drivers
v0x1aa85a0_0 .net "b", 0 0, L_0x1ace040; 1 drivers
v0x1aa8640_0 .alias "carryin", 0 0, v0x1ab0790_3;
v0x1aa86e0_0 .alias "carryout", 0 0, v0x1aa8b10_0;
v0x1aa8760_0 .net "sum", 0 0, L_0x1acd3a0; 1 drivers
S_0x1aa7c30 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1aa6e90;
 .timescale -9 -12;
L_0x1ace170/d .functor XOR 1, L_0x1ace7d0, L_0x1ace900, L_0x1acdda0, C4<0>;
L_0x1ace170 .delay (30000,30000,30000) L_0x1ace170/d;
L_0x1ace330/d .functor AND 1, L_0x1ace7d0, L_0x1ace900, C4<1>, C4<1>;
L_0x1ace330 .delay (20000,20000,20000) L_0x1ace330/d;
L_0x1ace400/d .functor AND 1, L_0x1ace7d0, L_0x1acdda0, C4<1>, C4<1>;
L_0x1ace400 .delay (20000,20000,20000) L_0x1ace400/d;
L_0x1ace4a0/d .functor AND 1, L_0x1ace900, L_0x1acdda0, C4<1>, C4<1>;
L_0x1ace4a0 .delay (20000,20000,20000) L_0x1ace4a0/d;
L_0x1ace570/d .functor OR 1, L_0x1ace330, L_0x1ace400, L_0x1ace4a0, C4<0>;
L_0x1ace570 .delay (20000,20000,20000) L_0x1ace570/d;
v0x1aa7d20_0 .net "AandB", 0 0, L_0x1ace330; 1 drivers
v0x1aa7de0_0 .net "AandC", 0 0, L_0x1ace400; 1 drivers
v0x1aa7e80_0 .net "BandC", 0 0, L_0x1ace4a0; 1 drivers
v0x1aa7f20_0 .net "a", 0 0, L_0x1ace7d0; 1 drivers
v0x1aa7fa0_0 .net "b", 0 0, L_0x1ace900; 1 drivers
v0x1aa8040_0 .alias "carryin", 0 0, v0x1aa8b10_0;
v0x1aa80e0_0 .alias "carryout", 0 0, v0x1aa8b10_1;
v0x1aa8160_0 .net "sum", 0 0, L_0x1ace170; 1 drivers
S_0x1aa7630 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1aa6e90;
 .timescale -9 -12;
L_0x1acea70/d .functor XOR 1, L_0x1acf050, L_0x1acf180, L_0x1ace570, C4<0>;
L_0x1acea70 .delay (30000,30000,30000) L_0x1acea70/d;
L_0x1aceba0/d .functor AND 1, L_0x1acf050, L_0x1acf180, C4<1>, C4<1>;
L_0x1aceba0 .delay (20000,20000,20000) L_0x1aceba0/d;
L_0x1acece0/d .functor AND 1, L_0x1acf050, L_0x1ace570, C4<1>, C4<1>;
L_0x1acece0 .delay (20000,20000,20000) L_0x1acece0/d;
L_0x1aced80/d .functor AND 1, L_0x1acf180, L_0x1ace570, C4<1>, C4<1>;
L_0x1aced80 .delay (20000,20000,20000) L_0x1aced80/d;
L_0x1acee20/d .functor OR 1, L_0x1aceba0, L_0x1acece0, L_0x1aced80, C4<0>;
L_0x1acee20 .delay (20000,20000,20000) L_0x1acee20/d;
v0x1aa7720_0 .net "AandB", 0 0, L_0x1aceba0; 1 drivers
v0x1aa77e0_0 .net "AandC", 0 0, L_0x1acece0; 1 drivers
v0x1aa7880_0 .net "BandC", 0 0, L_0x1aced80; 1 drivers
v0x1aa7920_0 .net "a", 0 0, L_0x1acf050; 1 drivers
v0x1aa79a0_0 .net "b", 0 0, L_0x1acf180; 1 drivers
v0x1aa7a40_0 .alias "carryin", 0 0, v0x1aa8b10_1;
v0x1aa7ae0_0 .alias "carryout", 0 0, v0x1aa8b10_2;
v0x1aa7b60_0 .net "sum", 0 0, L_0x1acea70; 1 drivers
S_0x1aa6f80 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1aa6e90;
 .timescale -9 -12;
L_0x1acf2b0/d .functor XOR 1, L_0x1acf9c0, L_0x1acfb80, L_0x1acee20, C4<0>;
L_0x1acf2b0 .delay (30000,30000,30000) L_0x1acf2b0/d;
L_0x1acf3a0/d .functor AND 1, L_0x1acf9c0, L_0x1acfb80, C4<1>, C4<1>;
L_0x1acf3a0 .delay (20000,20000,20000) L_0x1acf3a0/d;
L_0x1acf4c0/d .functor AND 1, L_0x1acf9c0, L_0x1acee20, C4<1>, C4<1>;
L_0x1acf4c0 .delay (20000,20000,20000) L_0x1acf4c0/d;
L_0x1acf580/d .functor AND 1, L_0x1acfb80, L_0x1acee20, C4<1>, C4<1>;
L_0x1acf580 .delay (20000,20000,20000) L_0x1acf580/d;
L_0x1acf670/d .functor OR 1, L_0x1acf3a0, L_0x1acf4c0, L_0x1acf580, C4<0>;
L_0x1acf670 .delay (20000,20000,20000) L_0x1acf670/d;
v0x1aa7070_0 .net "AandB", 0 0, L_0x1acf3a0; 1 drivers
v0x1aa7130_0 .net "AandC", 0 0, L_0x1acf4c0; 1 drivers
v0x1aa71d0_0 .net "BandC", 0 0, L_0x1acf580; 1 drivers
v0x1aa7270_0 .net "a", 0 0, L_0x1acf9c0; 1 drivers
v0x1aa72f0_0 .net "b", 0 0, L_0x1acfb80; 1 drivers
v0x1aa7390_0 .alias "carryin", 0 0, v0x1aa8b10_2;
v0x1aa7470_0 .alias "carryout", 0 0, v0x1ab0790_4;
v0x1aa7540_0 .net "sum", 0 0, L_0x1acf2b0; 1 drivers
S_0x1aa50a0 .scope module, "f45" "CompAdder4bit" 2 64, 2 30, S_0x1aa1620;
 .timescale -9 -12;
v0x1aa6a40_0 .net "a", 3 0, L_0x1ad2490; 1 drivers
v0x1aa6b00_0 .net "b", 3 0, L_0x1ad2530; 1 drivers
v0x1aa6ba0_0 .alias "carryin", 0 0, v0x1ab0790_4;
v0x1aa6c20_0 .alias "carryout", 0 0, v0x1ab0790_5;
v0x1aa6ca0_0 .net8 "sum", 3 0, RS_0x2b7da7d710f8; 4 drivers
v0x1aa6d20 .array "temp_cout", 0 2;
v0x1aa6d20_0 .net v0x1aa6d20 0, 0 0, L_0x1ad0370; 1 drivers
v0x1aa6d20_1 .net v0x1aa6d20 1, 0 0, L_0x1ad0b40; 1 drivers
v0x1aa6d20_2 .net v0x1aa6d20 2, 0 0, L_0x1ad1440; 1 drivers
L_0x1ad0440 .part/pv L_0x1acf960, 0, 1, 4;
L_0x1ad04e0 .part L_0x1ad2490, 0, 1;
L_0x1ad0610 .part L_0x1ad2530, 0, 1;
L_0x1ad0d00 .part/pv L_0x1ad0740, 1, 1, 4;
L_0x1ad0df0 .part L_0x1ad2490, 1, 1;
L_0x1ad0f20 .part L_0x1ad2530, 1, 1;
L_0x1ad15d0 .part/pv L_0x1ad1090, 2, 1, 4;
L_0x1ad1670 .part L_0x1ad2490, 2, 1;
L_0x1ad17a0 .part L_0x1ad2530, 2, 1;
L_0x1ad1e50 .part/pv L_0x1ad18d0, 3, 1, 4;
L_0x1ad1fe0 .part L_0x1ad2490, 3, 1;
L_0x1ad21a0 .part L_0x1ad2530, 3, 1;
S_0x1aa6440 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1aa50a0;
 .timescale -9 -12;
L_0x1acf960/d .functor XOR 1, L_0x1ad04e0, L_0x1ad0610, L_0x1acf670, C4<0>;
L_0x1acf960 .delay (30000,30000,30000) L_0x1acf960/d;
L_0x1ad0050/d .functor AND 1, L_0x1ad04e0, L_0x1ad0610, C4<1>, C4<1>;
L_0x1ad0050 .delay (20000,20000,20000) L_0x1ad0050/d;
L_0x1ad0120/d .functor AND 1, L_0x1ad04e0, L_0x1acf670, C4<1>, C4<1>;
L_0x1ad0120 .delay (20000,20000,20000) L_0x1ad0120/d;
L_0x1ad01e0/d .functor AND 1, L_0x1ad0610, L_0x1acf670, C4<1>, C4<1>;
L_0x1ad01e0 .delay (20000,20000,20000) L_0x1ad01e0/d;
L_0x1ad0370/d .functor OR 1, L_0x1ad0050, L_0x1ad0120, L_0x1ad01e0, C4<0>;
L_0x1ad0370 .delay (20000,20000,20000) L_0x1ad0370/d;
v0x1aa6530_0 .net "AandB", 0 0, L_0x1ad0050; 1 drivers
v0x1aa65f0_0 .net "AandC", 0 0, L_0x1ad0120; 1 drivers
v0x1aa6690_0 .net "BandC", 0 0, L_0x1ad01e0; 1 drivers
v0x1aa6730_0 .net "a", 0 0, L_0x1ad04e0; 1 drivers
v0x1aa67b0_0 .net "b", 0 0, L_0x1ad0610; 1 drivers
v0x1aa6850_0 .alias "carryin", 0 0, v0x1ab0790_4;
v0x1aa68f0_0 .alias "carryout", 0 0, v0x1aa6d20_0;
v0x1aa6970_0 .net "sum", 0 0, L_0x1acf960; 1 drivers
S_0x1aa5e40 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1aa50a0;
 .timescale -9 -12;
L_0x1ad0740/d .functor XOR 1, L_0x1ad0df0, L_0x1ad0f20, L_0x1ad0370, C4<0>;
L_0x1ad0740 .delay (30000,30000,30000) L_0x1ad0740/d;
L_0x1ad0900/d .functor AND 1, L_0x1ad0df0, L_0x1ad0f20, C4<1>, C4<1>;
L_0x1ad0900 .delay (20000,20000,20000) L_0x1ad0900/d;
L_0x1ad09d0/d .functor AND 1, L_0x1ad0df0, L_0x1ad0370, C4<1>, C4<1>;
L_0x1ad09d0 .delay (20000,20000,20000) L_0x1ad09d0/d;
L_0x1ad0a70/d .functor AND 1, L_0x1ad0f20, L_0x1ad0370, C4<1>, C4<1>;
L_0x1ad0a70 .delay (20000,20000,20000) L_0x1ad0a70/d;
L_0x1ad0b40/d .functor OR 1, L_0x1ad0900, L_0x1ad09d0, L_0x1ad0a70, C4<0>;
L_0x1ad0b40 .delay (20000,20000,20000) L_0x1ad0b40/d;
v0x1aa5f30_0 .net "AandB", 0 0, L_0x1ad0900; 1 drivers
v0x1aa5ff0_0 .net "AandC", 0 0, L_0x1ad09d0; 1 drivers
v0x1aa6090_0 .net "BandC", 0 0, L_0x1ad0a70; 1 drivers
v0x1aa6130_0 .net "a", 0 0, L_0x1ad0df0; 1 drivers
v0x1aa61b0_0 .net "b", 0 0, L_0x1ad0f20; 1 drivers
v0x1aa6250_0 .alias "carryin", 0 0, v0x1aa6d20_0;
v0x1aa62f0_0 .alias "carryout", 0 0, v0x1aa6d20_1;
v0x1aa6370_0 .net "sum", 0 0, L_0x1ad0740; 1 drivers
S_0x1aa5840 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1aa50a0;
 .timescale -9 -12;
L_0x1ad1090/d .functor XOR 1, L_0x1ad1670, L_0x1ad17a0, L_0x1ad0b40, C4<0>;
L_0x1ad1090 .delay (30000,30000,30000) L_0x1ad1090/d;
L_0x1ad11c0/d .functor AND 1, L_0x1ad1670, L_0x1ad17a0, C4<1>, C4<1>;
L_0x1ad11c0 .delay (20000,20000,20000) L_0x1ad11c0/d;
L_0x1ad1300/d .functor AND 1, L_0x1ad1670, L_0x1ad0b40, C4<1>, C4<1>;
L_0x1ad1300 .delay (20000,20000,20000) L_0x1ad1300/d;
L_0x1ad13a0/d .functor AND 1, L_0x1ad17a0, L_0x1ad0b40, C4<1>, C4<1>;
L_0x1ad13a0 .delay (20000,20000,20000) L_0x1ad13a0/d;
L_0x1ad1440/d .functor OR 1, L_0x1ad11c0, L_0x1ad1300, L_0x1ad13a0, C4<0>;
L_0x1ad1440 .delay (20000,20000,20000) L_0x1ad1440/d;
v0x1aa5930_0 .net "AandB", 0 0, L_0x1ad11c0; 1 drivers
v0x1aa59f0_0 .net "AandC", 0 0, L_0x1ad1300; 1 drivers
v0x1aa5a90_0 .net "BandC", 0 0, L_0x1ad13a0; 1 drivers
v0x1aa5b30_0 .net "a", 0 0, L_0x1ad1670; 1 drivers
v0x1aa5bb0_0 .net "b", 0 0, L_0x1ad17a0; 1 drivers
v0x1aa5c50_0 .alias "carryin", 0 0, v0x1aa6d20_1;
v0x1aa5cf0_0 .alias "carryout", 0 0, v0x1aa6d20_2;
v0x1aa5d70_0 .net "sum", 0 0, L_0x1ad1090; 1 drivers
S_0x1aa5190 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1aa50a0;
 .timescale -9 -12;
L_0x1ad18d0/d .functor XOR 1, L_0x1ad1fe0, L_0x1ad21a0, L_0x1ad1440, C4<0>;
L_0x1ad18d0 .delay (30000,30000,30000) L_0x1ad18d0/d;
L_0x1ad19c0/d .functor AND 1, L_0x1ad1fe0, L_0x1ad21a0, C4<1>, C4<1>;
L_0x1ad19c0 .delay (20000,20000,20000) L_0x1ad19c0/d;
L_0x1ad1ae0/d .functor AND 1, L_0x1ad1fe0, L_0x1ad1440, C4<1>, C4<1>;
L_0x1ad1ae0 .delay (20000,20000,20000) L_0x1ad1ae0/d;
L_0x1ad1ba0/d .functor AND 1, L_0x1ad21a0, L_0x1ad1440, C4<1>, C4<1>;
L_0x1ad1ba0 .delay (20000,20000,20000) L_0x1ad1ba0/d;
L_0x1ad1c90/d .functor OR 1, L_0x1ad19c0, L_0x1ad1ae0, L_0x1ad1ba0, C4<0>;
L_0x1ad1c90 .delay (20000,20000,20000) L_0x1ad1c90/d;
v0x1aa5280_0 .net "AandB", 0 0, L_0x1ad19c0; 1 drivers
v0x1aa5320_0 .net "AandC", 0 0, L_0x1ad1ae0; 1 drivers
v0x1aa53c0_0 .net "BandC", 0 0, L_0x1ad1ba0; 1 drivers
v0x1aa5460_0 .net "a", 0 0, L_0x1ad1fe0; 1 drivers
v0x1aa5500_0 .net "b", 0 0, L_0x1ad21a0; 1 drivers
v0x1aa55a0_0 .alias "carryin", 0 0, v0x1aa6d20_2;
v0x1aa5680_0 .alias "carryout", 0 0, v0x1ab0790_5;
v0x1aa5750_0 .net "sum", 0 0, L_0x1ad18d0; 1 drivers
S_0x1aa32d0 .scope module, "f46" "CompAdder4bit" 2 65, 2 30, S_0x1aa1620;
 .timescale -9 -12;
v0x1aa4c50_0 .net "a", 3 0, L_0x1ad4b50; 1 drivers
v0x1aa4d10_0 .net "b", 3 0, L_0x1ad25d0; 1 drivers
v0x1aa4db0_0 .alias "carryin", 0 0, v0x1ab0790_5;
v0x1aa4e30_0 .alias "carryout", 0 0, v0x1ab0790_6;
v0x1aa4eb0_0 .net8 "sum", 3 0, RS_0x2b7da7d70b28; 4 drivers
v0x1aa4f30 .array "temp_cout", 0 2;
v0x1aa4f30_0 .net v0x1aa4f30 0, 0 0, L_0x1ad2940; 1 drivers
v0x1aa4f30_1 .net v0x1aa4f30 1, 0 0, L_0x1ad3110; 1 drivers
v0x1aa4f30_2 .net v0x1aa4f30 2, 0 0, L_0x1ad3a10; 1 drivers
L_0x1ad2a10 .part/pv L_0x1ad1f80, 0, 1, 4;
L_0x1ad2ab0 .part L_0x1ad4b50, 0, 1;
L_0x1ad2be0 .part L_0x1ad25d0, 0, 1;
L_0x1ad32d0 .part/pv L_0x1ad2d10, 1, 1, 4;
L_0x1ad33c0 .part L_0x1ad4b50, 1, 1;
L_0x1ad34f0 .part L_0x1ad25d0, 1, 1;
L_0x1ad3ba0 .part/pv L_0x1ad3660, 2, 1, 4;
L_0x1ad3c40 .part L_0x1ad4b50, 2, 1;
L_0x1ad3d70 .part L_0x1ad25d0, 2, 1;
L_0x1ad4420 .part/pv L_0x1ad3ea0, 3, 1, 4;
L_0x1ad45b0 .part L_0x1ad4b50, 3, 1;
L_0x1ad4770 .part L_0x1ad25d0, 3, 1;
S_0x1aa4650 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1aa32d0;
 .timescale -9 -12;
L_0x1ad1f80/d .functor XOR 1, L_0x1ad2ab0, L_0x1ad2be0, L_0x1ad1c90, C4<0>;
L_0x1ad1f80 .delay (30000,30000,30000) L_0x1ad1f80/d;
L_0x1ad2670/d .functor AND 1, L_0x1ad2ab0, L_0x1ad2be0, C4<1>, C4<1>;
L_0x1ad2670 .delay (20000,20000,20000) L_0x1ad2670/d;
L_0x1ad2710/d .functor AND 1, L_0x1ad2ab0, L_0x1ad1c90, C4<1>, C4<1>;
L_0x1ad2710 .delay (20000,20000,20000) L_0x1ad2710/d;
L_0x1ad27b0/d .functor AND 1, L_0x1ad2be0, L_0x1ad1c90, C4<1>, C4<1>;
L_0x1ad27b0 .delay (20000,20000,20000) L_0x1ad27b0/d;
L_0x1ad2940/d .functor OR 1, L_0x1ad2670, L_0x1ad2710, L_0x1ad27b0, C4<0>;
L_0x1ad2940 .delay (20000,20000,20000) L_0x1ad2940/d;
v0x1aa4740_0 .net "AandB", 0 0, L_0x1ad2670; 1 drivers
v0x1aa4800_0 .net "AandC", 0 0, L_0x1ad2710; 1 drivers
v0x1aa48a0_0 .net "BandC", 0 0, L_0x1ad27b0; 1 drivers
v0x1aa4940_0 .net "a", 0 0, L_0x1ad2ab0; 1 drivers
v0x1aa49c0_0 .net "b", 0 0, L_0x1ad2be0; 1 drivers
v0x1aa4a60_0 .alias "carryin", 0 0, v0x1ab0790_5;
v0x1aa4b00_0 .alias "carryout", 0 0, v0x1aa4f30_0;
v0x1aa4b80_0 .net "sum", 0 0, L_0x1ad1f80; 1 drivers
S_0x1aa4050 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1aa32d0;
 .timescale -9 -12;
L_0x1ad2d10/d .functor XOR 1, L_0x1ad33c0, L_0x1ad34f0, L_0x1ad2940, C4<0>;
L_0x1ad2d10 .delay (30000,30000,30000) L_0x1ad2d10/d;
L_0x1ad2ed0/d .functor AND 1, L_0x1ad33c0, L_0x1ad34f0, C4<1>, C4<1>;
L_0x1ad2ed0 .delay (20000,20000,20000) L_0x1ad2ed0/d;
L_0x1ad2fa0/d .functor AND 1, L_0x1ad33c0, L_0x1ad2940, C4<1>, C4<1>;
L_0x1ad2fa0 .delay (20000,20000,20000) L_0x1ad2fa0/d;
L_0x1ad3040/d .functor AND 1, L_0x1ad34f0, L_0x1ad2940, C4<1>, C4<1>;
L_0x1ad3040 .delay (20000,20000,20000) L_0x1ad3040/d;
L_0x1ad3110/d .functor OR 1, L_0x1ad2ed0, L_0x1ad2fa0, L_0x1ad3040, C4<0>;
L_0x1ad3110 .delay (20000,20000,20000) L_0x1ad3110/d;
v0x1aa4140_0 .net "AandB", 0 0, L_0x1ad2ed0; 1 drivers
v0x1aa4200_0 .net "AandC", 0 0, L_0x1ad2fa0; 1 drivers
v0x1aa42a0_0 .net "BandC", 0 0, L_0x1ad3040; 1 drivers
v0x1aa4340_0 .net "a", 0 0, L_0x1ad33c0; 1 drivers
v0x1aa43c0_0 .net "b", 0 0, L_0x1ad34f0; 1 drivers
v0x1aa4460_0 .alias "carryin", 0 0, v0x1aa4f30_0;
v0x1aa4500_0 .alias "carryout", 0 0, v0x1aa4f30_1;
v0x1aa4580_0 .net "sum", 0 0, L_0x1ad2d10; 1 drivers
S_0x1aa3a50 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1aa32d0;
 .timescale -9 -12;
L_0x1ad3660/d .functor XOR 1, L_0x1ad3c40, L_0x1ad3d70, L_0x1ad3110, C4<0>;
L_0x1ad3660 .delay (30000,30000,30000) L_0x1ad3660/d;
L_0x1ad3790/d .functor AND 1, L_0x1ad3c40, L_0x1ad3d70, C4<1>, C4<1>;
L_0x1ad3790 .delay (20000,20000,20000) L_0x1ad3790/d;
L_0x1ad38d0/d .functor AND 1, L_0x1ad3c40, L_0x1ad3110, C4<1>, C4<1>;
L_0x1ad38d0 .delay (20000,20000,20000) L_0x1ad38d0/d;
L_0x1ad3970/d .functor AND 1, L_0x1ad3d70, L_0x1ad3110, C4<1>, C4<1>;
L_0x1ad3970 .delay (20000,20000,20000) L_0x1ad3970/d;
L_0x1ad3a10/d .functor OR 1, L_0x1ad3790, L_0x1ad38d0, L_0x1ad3970, C4<0>;
L_0x1ad3a10 .delay (20000,20000,20000) L_0x1ad3a10/d;
v0x1aa3b40_0 .net "AandB", 0 0, L_0x1ad3790; 1 drivers
v0x1aa3c00_0 .net "AandC", 0 0, L_0x1ad38d0; 1 drivers
v0x1aa3ca0_0 .net "BandC", 0 0, L_0x1ad3970; 1 drivers
v0x1aa3d40_0 .net "a", 0 0, L_0x1ad3c40; 1 drivers
v0x1aa3dc0_0 .net "b", 0 0, L_0x1ad3d70; 1 drivers
v0x1aa3e60_0 .alias "carryin", 0 0, v0x1aa4f30_1;
v0x1aa3f00_0 .alias "carryout", 0 0, v0x1aa4f30_2;
v0x1aa3f80_0 .net "sum", 0 0, L_0x1ad3660; 1 drivers
S_0x1aa33c0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1aa32d0;
 .timescale -9 -12;
L_0x1ad3ea0/d .functor XOR 1, L_0x1ad45b0, L_0x1ad4770, L_0x1ad3a10, C4<0>;
L_0x1ad3ea0 .delay (30000,30000,30000) L_0x1ad3ea0/d;
L_0x1ad3f90/d .functor AND 1, L_0x1ad45b0, L_0x1ad4770, C4<1>, C4<1>;
L_0x1ad3f90 .delay (20000,20000,20000) L_0x1ad3f90/d;
L_0x1ad40b0/d .functor AND 1, L_0x1ad45b0, L_0x1ad3a10, C4<1>, C4<1>;
L_0x1ad40b0 .delay (20000,20000,20000) L_0x1ad40b0/d;
L_0x1ad4170/d .functor AND 1, L_0x1ad4770, L_0x1ad3a10, C4<1>, C4<1>;
L_0x1ad4170 .delay (20000,20000,20000) L_0x1ad4170/d;
L_0x1ad4260/d .functor OR 1, L_0x1ad3f90, L_0x1ad40b0, L_0x1ad4170, C4<0>;
L_0x1ad4260 .delay (20000,20000,20000) L_0x1ad4260/d;
v0x1aa34b0_0 .net "AandB", 0 0, L_0x1ad3f90; 1 drivers
v0x1aa3550_0 .net "AandC", 0 0, L_0x1ad40b0; 1 drivers
v0x1aa35f0_0 .net "BandC", 0 0, L_0x1ad4170; 1 drivers
v0x1aa3690_0 .net "a", 0 0, L_0x1ad45b0; 1 drivers
v0x1aa3710_0 .net "b", 0 0, L_0x1ad4770; 1 drivers
v0x1aa37b0_0 .alias "carryin", 0 0, v0x1aa4f30_2;
v0x1aa3890_0 .alias "carryout", 0 0, v0x1ab0790_6;
v0x1aa3960_0 .net "sum", 0 0, L_0x1ad3ea0; 1 drivers
S_0x1aa1710 .scope module, "f47" "CompAdder4bit" 2 66, 2 30, S_0x1aa1620;
 .timescale -9 -12;
v0x1aa2f40_0 .net "a", 3 0, L_0x1ad4d00; 1 drivers
v0x1aa3000_0 .net "b", 3 0, L_0x1ad7290; 1 drivers
v0x1aa30a0_0 .alias "carryin", 0 0, v0x1ab0790_6;
v0x1aa3120_0 .alias "carryout", 0 0, v0x1ab0da0_0;
v0x1aa31d0_0 .net8 "sum", 3 0, RS_0x2b7da7d70558; 4 drivers
v0x1aa3250 .array "temp_cout", 0 2;
v0x1aa3250_0 .net v0x1aa3250 0, 0 0, L_0x1ad5090; 1 drivers
v0x1aa3250_1 .net v0x1aa3250 1, 0 0, L_0x1ad5860; 1 drivers
v0x1aa3250_2 .net v0x1aa3250 2, 0 0, L_0x1ad6160; 1 drivers
L_0x1ad5160 .part/pv L_0x1ad4550, 0, 1, 4;
L_0x1ad5200 .part L_0x1ad4d00, 0, 1;
L_0x1ad5330 .part L_0x1ad7290, 0, 1;
L_0x1ad5a20 .part/pv L_0x1ad5460, 1, 1, 4;
L_0x1ad5b10 .part L_0x1ad4d00, 1, 1;
L_0x1ad5c40 .part L_0x1ad7290, 1, 1;
L_0x1ad62f0 .part/pv L_0x1ad5db0, 2, 1, 4;
L_0x1ad6390 .part L_0x1ad4d00, 2, 1;
L_0x1ad64c0 .part L_0x1ad7290, 2, 1;
L_0x1ad6bb0 .part/pv L_0x1ad65f0, 3, 1, 4;
L_0x1ad6d40 .part L_0x1ad4d00, 3, 1;
L_0x1ad6f00 .part L_0x1ad7290, 3, 1;
S_0x1aa2990 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x1aa1710;
 .timescale -9 -12;
L_0x1ad4550/d .functor XOR 1, L_0x1ad5200, L_0x1ad5330, L_0x1ad4260, C4<0>;
L_0x1ad4550 .delay (30000,30000,30000) L_0x1ad4550/d;
L_0x1acb350/d .functor AND 1, L_0x1ad5200, L_0x1ad5330, C4<1>, C4<1>;
L_0x1acb350 .delay (20000,20000,20000) L_0x1acb350/d;
L_0x1acb480/d .functor AND 1, L_0x1ad5200, L_0x1ad4260, C4<1>, C4<1>;
L_0x1acb480 .delay (20000,20000,20000) L_0x1acb480/d;
L_0x1ad4f00/d .functor AND 1, L_0x1ad5330, L_0x1ad4260, C4<1>, C4<1>;
L_0x1ad4f00 .delay (20000,20000,20000) L_0x1ad4f00/d;
L_0x1ad5090/d .functor OR 1, L_0x1acb350, L_0x1acb480, L_0x1ad4f00, C4<0>;
L_0x1ad5090 .delay (20000,20000,20000) L_0x1ad5090/d;
v0x1aa2a80_0 .net "AandB", 0 0, L_0x1acb350; 1 drivers
v0x1aa2b40_0 .net "AandC", 0 0, L_0x1acb480; 1 drivers
v0x1aa2be0_0 .net "BandC", 0 0, L_0x1ad4f00; 1 drivers
v0x1aa2c80_0 .net "a", 0 0, L_0x1ad5200; 1 drivers
v0x1aa2d00_0 .net "b", 0 0, L_0x1ad5330; 1 drivers
v0x1aa2da0_0 .alias "carryin", 0 0, v0x1ab0790_6;
v0x1aa2e40_0 .alias "carryout", 0 0, v0x1aa3250_0;
v0x1aa2ec0_0 .net "sum", 0 0, L_0x1ad4550; 1 drivers
S_0x1aa23e0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x1aa1710;
 .timescale -9 -12;
L_0x1ad5460/d .functor XOR 1, L_0x1ad5b10, L_0x1ad5c40, L_0x1ad5090, C4<0>;
L_0x1ad5460 .delay (30000,30000,30000) L_0x1ad5460/d;
L_0x1ad5620/d .functor AND 1, L_0x1ad5b10, L_0x1ad5c40, C4<1>, C4<1>;
L_0x1ad5620 .delay (20000,20000,20000) L_0x1ad5620/d;
L_0x1ad56f0/d .functor AND 1, L_0x1ad5b10, L_0x1ad5090, C4<1>, C4<1>;
L_0x1ad56f0 .delay (20000,20000,20000) L_0x1ad56f0/d;
L_0x1ad5790/d .functor AND 1, L_0x1ad5c40, L_0x1ad5090, C4<1>, C4<1>;
L_0x1ad5790 .delay (20000,20000,20000) L_0x1ad5790/d;
L_0x1ad5860/d .functor OR 1, L_0x1ad5620, L_0x1ad56f0, L_0x1ad5790, C4<0>;
L_0x1ad5860 .delay (20000,20000,20000) L_0x1ad5860/d;
v0x1aa24d0_0 .net "AandB", 0 0, L_0x1ad5620; 1 drivers
v0x1aa2590_0 .net "AandC", 0 0, L_0x1ad56f0; 1 drivers
v0x1aa2630_0 .net "BandC", 0 0, L_0x1ad5790; 1 drivers
v0x1aa26d0_0 .net "a", 0 0, L_0x1ad5b10; 1 drivers
v0x1aa2750_0 .net "b", 0 0, L_0x1ad5c40; 1 drivers
v0x1aa27f0_0 .alias "carryin", 0 0, v0x1aa3250_0;
v0x1aa2890_0 .alias "carryout", 0 0, v0x1aa3250_1;
v0x1aa2910_0 .net "sum", 0 0, L_0x1ad5460; 1 drivers
S_0x1aa1e30 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x1aa1710;
 .timescale -9 -12;
L_0x1ad5db0/d .functor XOR 1, L_0x1ad6390, L_0x1ad64c0, L_0x1ad5860, C4<0>;
L_0x1ad5db0 .delay (30000,30000,30000) L_0x1ad5db0/d;
L_0x1ad5ee0/d .functor AND 1, L_0x1ad6390, L_0x1ad64c0, C4<1>, C4<1>;
L_0x1ad5ee0 .delay (20000,20000,20000) L_0x1ad5ee0/d;
L_0x1ad6020/d .functor AND 1, L_0x1ad6390, L_0x1ad5860, C4<1>, C4<1>;
L_0x1ad6020 .delay (20000,20000,20000) L_0x1ad6020/d;
L_0x1ad60c0/d .functor AND 1, L_0x1ad64c0, L_0x1ad5860, C4<1>, C4<1>;
L_0x1ad60c0 .delay (20000,20000,20000) L_0x1ad60c0/d;
L_0x1ad6160/d .functor OR 1, L_0x1ad5ee0, L_0x1ad6020, L_0x1ad60c0, C4<0>;
L_0x1ad6160 .delay (20000,20000,20000) L_0x1ad6160/d;
v0x1aa1f20_0 .net "AandB", 0 0, L_0x1ad5ee0; 1 drivers
v0x1aa1fe0_0 .net "AandC", 0 0, L_0x1ad6020; 1 drivers
v0x1aa2080_0 .net "BandC", 0 0, L_0x1ad60c0; 1 drivers
v0x1aa2120_0 .net "a", 0 0, L_0x1ad6390; 1 drivers
v0x1aa21a0_0 .net "b", 0 0, L_0x1ad64c0; 1 drivers
v0x1aa2240_0 .alias "carryin", 0 0, v0x1aa3250_1;
v0x1aa22e0_0 .alias "carryout", 0 0, v0x1aa3250_2;
v0x1aa2360_0 .net "sum", 0 0, L_0x1ad5db0; 1 drivers
S_0x1aa1800 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x1aa1710;
 .timescale -9 -12;
L_0x1ad65f0/d .functor XOR 1, L_0x1ad6d40, L_0x1ad6f00, L_0x1ad6160, C4<0>;
L_0x1ad65f0 .delay (30000,30000,30000) L_0x1ad65f0/d;
L_0x1ad66e0/d .functor AND 1, L_0x1ad6d40, L_0x1ad6f00, C4<1>, C4<1>;
L_0x1ad66e0 .delay (20000,20000,20000) L_0x1ad66e0/d;
L_0x1ad6800/d .functor AND 1, L_0x1ad6d40, L_0x1ad6160, C4<1>, C4<1>;
L_0x1ad6800 .delay (20000,20000,20000) L_0x1ad6800/d;
L_0x1ad68c0/d .functor AND 1, L_0x1ad6f00, L_0x1ad6160, C4<1>, C4<1>;
L_0x1ad68c0 .delay (20000,20000,20000) L_0x1ad68c0/d;
L_0x1ad69b0/d .functor OR 1, L_0x1ad66e0, L_0x1ad6800, L_0x1ad68c0, C4<0>;
L_0x1ad69b0 .delay (20000,20000,20000) L_0x1ad69b0/d;
v0x1aa18f0_0 .net "AandB", 0 0, L_0x1ad66e0; 1 drivers
v0x1aa19b0_0 .net "AandC", 0 0, L_0x1ad6800; 1 drivers
v0x1aa1a50_0 .net "BandC", 0 0, L_0x1ad68c0; 1 drivers
v0x1aa1af0_0 .net "a", 0 0, L_0x1ad6d40; 1 drivers
v0x1aa1b70_0 .net "b", 0 0, L_0x1ad6f00; 1 drivers
v0x1aa1c10_0 .alias "carryin", 0 0, v0x1aa3250_2;
v0x1aa1cf0_0 .alias "carryout", 0 0, v0x1ab0da0_0;
v0x1aa1d90_0 .net "sum", 0 0, L_0x1ad65f0; 1 drivers
    .scope S_0x1a63ad0;
T_0 ;
    %vpi_call 3 15 "$display", " a_10   b _10 |overflow carryout   sum ";
    %set/v v0x1ab0c80_0, 0, 32;
    %set/v v0x1ab0d20_0, 0, 32;
    %delay 1000000, 0;
    %vpi_call 3 17 "$display", " 0        0  |   %b        %b       %b", v0x1ab0e20_0, v0x1ab0da0_0, v0x1ab0ea0_0;
    %set/v v0x1ab0c80_0, 1, 32;
    %set/v v0x1ab0d20_0, 1, 32;
    %delay 1000000, 0;
    %vpi_call 3 19 "$display", " -1       -1 |   %b        %b       %b", v0x1ab0e20_0, v0x1ab0da0_0, v0x1ab0ea0_0;
    %movi 8, 268435455, 32;
    %set/v v0x1ab0c80_0, 8, 32;
    %movi 8, 268435455, 32;
    %set/v v0x1ab0d20_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 3 21 "$display", "  max     max|   %b        %b       %b", v0x1ab0e20_0, v0x1ab0da0_0, v0x1ab0ea0_0;
    %movi 8, 4026531855, 32;
    %set/v v0x1ab0c80_0, 8, 32;
    %movi 8, 4026531855, 32;
    %set/v v0x1ab0d20_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 3 23 "$display", " min     min |   %b        %b       %b", v0x1ab0e20_0, v0x1ab0da0_0, v0x1ab0ea0_0;
    %movi 8, 4, 32;
    %set/v v0x1ab0c80_0, 8, 32;
    %movi 8, 4, 32;
    %set/v v0x1ab0d20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 25 "$display", "  4       4  |   %b        %b       %b", v0x1ab0e20_0, v0x1ab0da0_0, v0x1ab0ea0_0;
    %movi 8, 305402420, 32;
    %set/v v0x1ab0c80_0, 8, 32;
    %movi 8, 305402420, 32;
    %set/v v0x1ab0d20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 27 "$display", " ?      ?    |   %b        %b       %b", v0x1ab0e20_0, v0x1ab0da0_0, v0x1ab0ea0_0;
    %set/v v0x1ab0c80_0, 1, 32;
    %movi 8, 1, 32;
    %set/v v0x1ab0d20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 29 "$display", " -1    1     |   %b        %b       %b", v0x1ab0e20_0, v0x1ab0da0_0, v0x1ab0ea0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./math.v";
    "math.t.v";
