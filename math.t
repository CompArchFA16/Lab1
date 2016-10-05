#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x25e8c70 .scope module, "FullSubtractor32bit" "FullSubtractor32bit" 2 70;
 .timescale -9 -12;
L_0x262c8e0/d .functor XOR 1, L_0x262c5f0, L_0x262a040, C4<0>, C4<0>;
L_0x262c8e0 .delay (30000,30000,30000) L_0x262c8e0/d;
v0x2609de0_0 .net "a", 31 0, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; 0 drivers
v0x2609ea0_0 .net "b", 31 0, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; 0 drivers
v0x2609f40_0 .net "carryout", 0 0, L_0x262c5f0; 1 drivers
v0x260a010_0 .net "overflow", 0 0, L_0x262c8e0; 1 drivers
RS_0x2b6fffbcef58/0/0 .resolv tri, L_0x261c2f0, L_0x261e940, L_0x2620f60, L_0x2623510;
RS_0x2b6fffbcef58/0/4 .resolv tri, L_0x2625b90, L_0x2628140, L_0x262a780, L_0x262cd30;
RS_0x2b6fffbcef58 .resolv tri, RS_0x2b6fffbcef58/0/0, RS_0x2b6fffbcef58/0/4, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>;
v0x260a090_0 .net8 "sum", 31 0, RS_0x2b6fffbcef58; 8 drivers
v0x260a130 .array "temp_cout", 0 6;
v0x260a130_0 .net v0x260a130 0, 0 0, L_0x261bbb0; 1 drivers
v0x260a130_1 .net v0x260a130 1, 0 0, L_0x261e200; 1 drivers
v0x260a130_2 .net v0x260a130 2, 0 0, L_0x2620820; 1 drivers
v0x260a130_3 .net v0x260a130 3, 0 0, L_0x2622dd0; 1 drivers
v0x260a130_4 .net v0x260a130 4, 0 0, L_0x2625450; 1 drivers
v0x260a130_5 .net v0x260a130 5, 0 0, L_0x2627a70; 1 drivers
v0x260a130_6 .net v0x260a130 6, 0 0, L_0x262a040; 1 drivers
RS_0x2b6fffbcee98 .resolv tri, L_0x261a3f0, L_0x261ac60, L_0x261b530, L_0x261bd70;
L_0x261c2f0 .part/pv RS_0x2b6fffbcee98, 0, 4, 32;
L_0x261c390 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 0, 4;
L_0x261c430 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 0, 4;
RS_0x2b6fffbce8c8 .resolv tri, L_0x261c9b0, L_0x261d270, L_0x261db40, L_0x261e3c0;
L_0x261e940 .part/pv RS_0x2b6fffbce8c8, 4, 4, 32;
L_0x261e9e0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 4, 4;
L_0x261ea80 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 4, 4;
RS_0x2b6fffbce2f8 .resolv tri, L_0x261efb0, L_0x261f870, L_0x2620160, L_0x26209e0;
L_0x2620f60 .part/pv RS_0x2b6fffbce2f8, 8, 4, 32;
L_0x2621000 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 8, 4;
L_0x26210a0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 8, 4;
RS_0x2b6fffbcdd28 .resolv tri, L_0x2621580, L_0x2621e40, L_0x2622710, L_0x2622f90;
L_0x2623510 .part/pv RS_0x2b6fffbcdd28, 12, 4, 32;
L_0x2623640 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 12, 4;
L_0x2623770 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 12, 4;
RS_0x2b6fffbcd758 .resolv tri, L_0x2623d40, L_0x2624510, L_0x2624d90, L_0x2625610;
L_0x2625b90 .part/pv RS_0x2b6fffbcd758, 16, 4, 32;
L_0x2625c30 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 16, 4;
L_0x2625d50 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 16, 4;
RS_0x2b6fffbcd188 .resolv tri, L_0x2626220, L_0x2626ae0, L_0x26273b0, L_0x2627c30;
L_0x2628140 .part/pv RS_0x2b6fffbcd188, 20, 4, 32;
L_0x2628270 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 20, 4;
L_0x2628310 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 20, 4;
RS_0x2b6fffbccbb8 .resolv tri, L_0x26287f0, L_0x26290b0, L_0x2629980, L_0x262a200;
L_0x262a780 .part/pv RS_0x2b6fffbccbb8, 24, 4, 32;
L_0x262a820 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 24, 4;
L_0x26283b0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 24, 4;
RS_0x2b6fffbcc5e8 .resolv tri, L_0x262ada0, L_0x262b660, L_0x262bf30, L_0x262c7b0;
L_0x262cd30 .part/pv RS_0x2b6fffbcc5e8, 28, 4, 32;
L_0x262a8c0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 28, 4;
L_0x262d0b0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 28, 4;
S_0x2607ff0 .scope module, "f40" "CompAdder4bit" 2 80, 2 30, S_0x25e8c70;
 .timescale -9 -12;
v0x2609990_0 .net "a", 3 0, L_0x261c390; 1 drivers
v0x2609a50_0 .net "b", 3 0, L_0x261c430; 1 drivers
v0x2609af0_0 .net "carryin", 0 0, C4<1>; 1 drivers
v0x2609b70_0 .alias "carryout", 0 0, v0x260a130_0;
v0x2609bf0_0 .net8 "sum", 3 0, RS_0x2b6fffbcee98; 4 drivers
v0x2609c70 .array "temp_cout", 0 2;
v0x2609c70_0 .net v0x2609c70 0, 0 0, L_0x261a320; 1 drivers
v0x2609c70_1 .net v0x2609c70 1, 0 0, L_0x261aaf0; 1 drivers
v0x2609c70_2 .net v0x2609c70 2, 0 0, L_0x261b3a0; 1 drivers
L_0x261a3f0 .part/pv L_0x2619f20, 0, 1, 4;
L_0x261a490 .part L_0x261c390, 0, 1;
L_0x261a5c0 .part L_0x261c430, 0, 1;
L_0x261ac60 .part/pv L_0x261a6f0, 1, 1, 4;
L_0x261ad50 .part L_0x261c390, 1, 1;
L_0x261ae80 .part L_0x261c430, 1, 1;
L_0x261b530 .part/pv L_0x261aff0, 2, 1, 4;
L_0x261b5d0 .part L_0x261c390, 2, 1;
L_0x261b700 .part L_0x261c430, 2, 1;
L_0x261bd70 .part/pv L_0x261b830, 3, 1, 4;
L_0x261bf00 .part L_0x261c390, 3, 1;
L_0x261c0c0 .part L_0x261c430, 3, 1;
S_0x2609390 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x2607ff0;
 .timescale -9 -12;
L_0x2619f20/d .functor XOR 1, L_0x261a490, L_0x261a5c0, C4<1>, C4<0>;
L_0x2619f20 .delay (30000,30000,30000) L_0x2619f20/d;
L_0x261a080/d .functor AND 1, L_0x261a490, L_0x261a5c0, C4<1>, C4<1>;
L_0x261a080 .delay (20000,20000,20000) L_0x261a080/d;
L_0x261a120/d .functor AND 1, L_0x261a490, C4<1>, C4<1>, C4<1>;
L_0x261a120 .delay (20000,20000,20000) L_0x261a120/d;
L_0x261a1c0/d .functor AND 1, L_0x261a5c0, C4<1>, C4<1>, C4<1>;
L_0x261a1c0 .delay (20000,20000,20000) L_0x261a1c0/d;
L_0x261a320/d .functor OR 1, L_0x261a080, L_0x261a120, L_0x261a1c0, C4<0>;
L_0x261a320 .delay (20000,20000,20000) L_0x261a320/d;
v0x2609480_0 .net "AandB", 0 0, L_0x261a080; 1 drivers
v0x2609540_0 .net "AandC", 0 0, L_0x261a120; 1 drivers
v0x26095e0_0 .net "BandC", 0 0, L_0x261a1c0; 1 drivers
v0x2609680_0 .net "a", 0 0, L_0x261a490; 1 drivers
v0x2609700_0 .net "b", 0 0, L_0x261a5c0; 1 drivers
v0x26097a0_0 .alias "carryin", 0 0, v0x2609af0_0;
v0x2609840_0 .alias "carryout", 0 0, v0x2609c70_0;
v0x26098c0_0 .net "sum", 0 0, L_0x2619f20; 1 drivers
S_0x2608d90 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x2607ff0;
 .timescale -9 -12;
L_0x261a6f0/d .functor XOR 1, L_0x261ad50, L_0x261ae80, L_0x261a320, C4<0>;
L_0x261a6f0 .delay (30000,30000,30000) L_0x261a6f0/d;
L_0x261a8b0/d .functor AND 1, L_0x261ad50, L_0x261ae80, C4<1>, C4<1>;
L_0x261a8b0 .delay (20000,20000,20000) L_0x261a8b0/d;
L_0x261a980/d .functor AND 1, L_0x261ad50, L_0x261a320, C4<1>, C4<1>;
L_0x261a980 .delay (20000,20000,20000) L_0x261a980/d;
L_0x261aa20/d .functor AND 1, L_0x261ae80, L_0x261a320, C4<1>, C4<1>;
L_0x261aa20 .delay (20000,20000,20000) L_0x261aa20/d;
L_0x261aaf0/d .functor OR 1, L_0x261a8b0, L_0x261a980, L_0x261aa20, C4<0>;
L_0x261aaf0 .delay (20000,20000,20000) L_0x261aaf0/d;
v0x2608e80_0 .net "AandB", 0 0, L_0x261a8b0; 1 drivers
v0x2608f40_0 .net "AandC", 0 0, L_0x261a980; 1 drivers
v0x2608fe0_0 .net "BandC", 0 0, L_0x261aa20; 1 drivers
v0x2609080_0 .net "a", 0 0, L_0x261ad50; 1 drivers
v0x2609100_0 .net "b", 0 0, L_0x261ae80; 1 drivers
v0x26091a0_0 .alias "carryin", 0 0, v0x2609c70_0;
v0x2609240_0 .alias "carryout", 0 0, v0x2609c70_1;
v0x26092c0_0 .net "sum", 0 0, L_0x261a6f0; 1 drivers
S_0x2608790 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x2607ff0;
 .timescale -9 -12;
L_0x261aff0/d .functor XOR 1, L_0x261b5d0, L_0x261b700, L_0x261aaf0, C4<0>;
L_0x261aff0 .delay (30000,30000,30000) L_0x261aff0/d;
L_0x261b120/d .functor AND 1, L_0x261b5d0, L_0x261b700, C4<1>, C4<1>;
L_0x261b120 .delay (20000,20000,20000) L_0x261b120/d;
L_0x261b260/d .functor AND 1, L_0x261b5d0, L_0x261aaf0, C4<1>, C4<1>;
L_0x261b260 .delay (20000,20000,20000) L_0x261b260/d;
L_0x261b300/d .functor AND 1, L_0x261b700, L_0x261aaf0, C4<1>, C4<1>;
L_0x261b300 .delay (20000,20000,20000) L_0x261b300/d;
L_0x261b3a0/d .functor OR 1, L_0x261b120, L_0x261b260, L_0x261b300, C4<0>;
L_0x261b3a0 .delay (20000,20000,20000) L_0x261b3a0/d;
v0x2608880_0 .net "AandB", 0 0, L_0x261b120; 1 drivers
v0x2608940_0 .net "AandC", 0 0, L_0x261b260; 1 drivers
v0x26089e0_0 .net "BandC", 0 0, L_0x261b300; 1 drivers
v0x2608a80_0 .net "a", 0 0, L_0x261b5d0; 1 drivers
v0x2608b00_0 .net "b", 0 0, L_0x261b700; 1 drivers
v0x2608ba0_0 .alias "carryin", 0 0, v0x2609c70_1;
v0x2608c40_0 .alias "carryout", 0 0, v0x2609c70_2;
v0x2608cc0_0 .net "sum", 0 0, L_0x261aff0; 1 drivers
S_0x26080e0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x2607ff0;
 .timescale -9 -12;
L_0x261b830/d .functor XOR 1, L_0x261bf00, L_0x261c0c0, L_0x261b3a0, C4<0>;
L_0x261b830 .delay (30000,30000,30000) L_0x261b830/d;
L_0x261b920/d .functor AND 1, L_0x261bf00, L_0x261c0c0, C4<1>, C4<1>;
L_0x261b920 .delay (20000,20000,20000) L_0x261b920/d;
L_0x261ba40/d .functor AND 1, L_0x261bf00, L_0x261b3a0, C4<1>, C4<1>;
L_0x261ba40 .delay (20000,20000,20000) L_0x261ba40/d;
L_0x261bae0/d .functor AND 1, L_0x261c0c0, L_0x261b3a0, C4<1>, C4<1>;
L_0x261bae0 .delay (20000,20000,20000) L_0x261bae0/d;
L_0x261bbb0/d .functor OR 1, L_0x261b920, L_0x261ba40, L_0x261bae0, C4<0>;
L_0x261bbb0 .delay (20000,20000,20000) L_0x261bbb0/d;
v0x26081d0_0 .net "AandB", 0 0, L_0x261b920; 1 drivers
v0x2608290_0 .net "AandC", 0 0, L_0x261ba40; 1 drivers
v0x2608330_0 .net "BandC", 0 0, L_0x261bae0; 1 drivers
v0x26083d0_0 .net "a", 0 0, L_0x261bf00; 1 drivers
v0x2608450_0 .net "b", 0 0, L_0x261c0c0; 1 drivers
v0x26084f0_0 .alias "carryin", 0 0, v0x2609c70_2;
v0x26085d0_0 .alias "carryout", 0 0, v0x260a130_0;
v0x26086a0_0 .net "sum", 0 0, L_0x261b830; 1 drivers
S_0x2606200 .scope module, "f41" "CompAdder4bit" 2 81, 2 30, S_0x25e8c70;
 .timescale -9 -12;
v0x2607ba0_0 .net "a", 3 0, L_0x261e9e0; 1 drivers
v0x2607c60_0 .net "b", 3 0, L_0x261ea80; 1 drivers
v0x2607d00_0 .alias "carryin", 0 0, v0x260a130_0;
v0x2607d80_0 .alias "carryout", 0 0, v0x260a130_1;
v0x2607e00_0 .net8 "sum", 3 0, RS_0x2b6fffbce8c8; 4 drivers
v0x2607e80 .array "temp_cout", 0 2;
v0x2607e80_0 .net v0x2607e80 0, 0 0, L_0x261c8e0; 1 drivers
v0x2607e80_1 .net v0x2607e80 1, 0 0, L_0x261d0b0; 1 drivers
v0x2607e80_2 .net v0x2607e80 2, 0 0, L_0x261d9b0; 1 drivers
L_0x261c9b0 .part/pv L_0x261bea0, 0, 1, 4;
L_0x261ca50 .part L_0x261e9e0, 0, 1;
L_0x261cb80 .part L_0x261ea80, 0, 1;
L_0x261d270 .part/pv L_0x261ccb0, 1, 1, 4;
L_0x261d360 .part L_0x261e9e0, 1, 1;
L_0x261d490 .part L_0x261ea80, 1, 1;
L_0x261db40 .part/pv L_0x261d600, 2, 1, 4;
L_0x261dbe0 .part L_0x261e9e0, 2, 1;
L_0x261dd10 .part L_0x261ea80, 2, 1;
L_0x261e3c0 .part/pv L_0x261de40, 3, 1, 4;
L_0x261e550 .part L_0x261e9e0, 3, 1;
L_0x261e710 .part L_0x261ea80, 3, 1;
S_0x26075a0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x2606200;
 .timescale -9 -12;
L_0x261bea0/d .functor XOR 1, L_0x261ca50, L_0x261cb80, L_0x261bbb0, C4<0>;
L_0x261bea0 .delay (30000,30000,30000) L_0x261bea0/d;
L_0x261c5e0/d .functor AND 1, L_0x261ca50, L_0x261cb80, C4<1>, C4<1>;
L_0x261c5e0 .delay (20000,20000,20000) L_0x261c5e0/d;
L_0x261c6b0/d .functor AND 1, L_0x261ca50, L_0x261bbb0, C4<1>, C4<1>;
L_0x261c6b0 .delay (20000,20000,20000) L_0x261c6b0/d;
L_0x261c750/d .functor AND 1, L_0x261cb80, L_0x261bbb0, C4<1>, C4<1>;
L_0x261c750 .delay (20000,20000,20000) L_0x261c750/d;
L_0x261c8e0/d .functor OR 1, L_0x261c5e0, L_0x261c6b0, L_0x261c750, C4<0>;
L_0x261c8e0 .delay (20000,20000,20000) L_0x261c8e0/d;
v0x2607690_0 .net "AandB", 0 0, L_0x261c5e0; 1 drivers
v0x2607750_0 .net "AandC", 0 0, L_0x261c6b0; 1 drivers
v0x26077f0_0 .net "BandC", 0 0, L_0x261c750; 1 drivers
v0x2607890_0 .net "a", 0 0, L_0x261ca50; 1 drivers
v0x2607910_0 .net "b", 0 0, L_0x261cb80; 1 drivers
v0x26079b0_0 .alias "carryin", 0 0, v0x260a130_0;
v0x2607a50_0 .alias "carryout", 0 0, v0x2607e80_0;
v0x2607ad0_0 .net "sum", 0 0, L_0x261bea0; 1 drivers
S_0x2606fa0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x2606200;
 .timescale -9 -12;
L_0x261ccb0/d .functor XOR 1, L_0x261d360, L_0x261d490, L_0x261c8e0, C4<0>;
L_0x261ccb0 .delay (30000,30000,30000) L_0x261ccb0/d;
L_0x261ce70/d .functor AND 1, L_0x261d360, L_0x261d490, C4<1>, C4<1>;
L_0x261ce70 .delay (20000,20000,20000) L_0x261ce70/d;
L_0x261cf40/d .functor AND 1, L_0x261d360, L_0x261c8e0, C4<1>, C4<1>;
L_0x261cf40 .delay (20000,20000,20000) L_0x261cf40/d;
L_0x261cfe0/d .functor AND 1, L_0x261d490, L_0x261c8e0, C4<1>, C4<1>;
L_0x261cfe0 .delay (20000,20000,20000) L_0x261cfe0/d;
L_0x261d0b0/d .functor OR 1, L_0x261ce70, L_0x261cf40, L_0x261cfe0, C4<0>;
L_0x261d0b0 .delay (20000,20000,20000) L_0x261d0b0/d;
v0x2607090_0 .net "AandB", 0 0, L_0x261ce70; 1 drivers
v0x2607150_0 .net "AandC", 0 0, L_0x261cf40; 1 drivers
v0x26071f0_0 .net "BandC", 0 0, L_0x261cfe0; 1 drivers
v0x2607290_0 .net "a", 0 0, L_0x261d360; 1 drivers
v0x2607310_0 .net "b", 0 0, L_0x261d490; 1 drivers
v0x26073b0_0 .alias "carryin", 0 0, v0x2607e80_0;
v0x2607450_0 .alias "carryout", 0 0, v0x2607e80_1;
v0x26074d0_0 .net "sum", 0 0, L_0x261ccb0; 1 drivers
S_0x26069a0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x2606200;
 .timescale -9 -12;
L_0x261d600/d .functor XOR 1, L_0x261dbe0, L_0x261dd10, L_0x261d0b0, C4<0>;
L_0x261d600 .delay (30000,30000,30000) L_0x261d600/d;
L_0x261d730/d .functor AND 1, L_0x261dbe0, L_0x261dd10, C4<1>, C4<1>;
L_0x261d730 .delay (20000,20000,20000) L_0x261d730/d;
L_0x261d870/d .functor AND 1, L_0x261dbe0, L_0x261d0b0, C4<1>, C4<1>;
L_0x261d870 .delay (20000,20000,20000) L_0x261d870/d;
L_0x261d910/d .functor AND 1, L_0x261dd10, L_0x261d0b0, C4<1>, C4<1>;
L_0x261d910 .delay (20000,20000,20000) L_0x261d910/d;
L_0x261d9b0/d .functor OR 1, L_0x261d730, L_0x261d870, L_0x261d910, C4<0>;
L_0x261d9b0 .delay (20000,20000,20000) L_0x261d9b0/d;
v0x2606a90_0 .net "AandB", 0 0, L_0x261d730; 1 drivers
v0x2606b50_0 .net "AandC", 0 0, L_0x261d870; 1 drivers
v0x2606bf0_0 .net "BandC", 0 0, L_0x261d910; 1 drivers
v0x2606c90_0 .net "a", 0 0, L_0x261dbe0; 1 drivers
v0x2606d10_0 .net "b", 0 0, L_0x261dd10; 1 drivers
v0x2606db0_0 .alias "carryin", 0 0, v0x2607e80_1;
v0x2606e50_0 .alias "carryout", 0 0, v0x2607e80_2;
v0x2606ed0_0 .net "sum", 0 0, L_0x261d600; 1 drivers
S_0x26062f0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x2606200;
 .timescale -9 -12;
L_0x261de40/d .functor XOR 1, L_0x261e550, L_0x261e710, L_0x261d9b0, C4<0>;
L_0x261de40 .delay (30000,30000,30000) L_0x261de40/d;
L_0x261df30/d .functor AND 1, L_0x261e550, L_0x261e710, C4<1>, C4<1>;
L_0x261df30 .delay (20000,20000,20000) L_0x261df30/d;
L_0x261e050/d .functor AND 1, L_0x261e550, L_0x261d9b0, C4<1>, C4<1>;
L_0x261e050 .delay (20000,20000,20000) L_0x261e050/d;
L_0x261e110/d .functor AND 1, L_0x261e710, L_0x261d9b0, C4<1>, C4<1>;
L_0x261e110 .delay (20000,20000,20000) L_0x261e110/d;
L_0x261e200/d .functor OR 1, L_0x261df30, L_0x261e050, L_0x261e110, C4<0>;
L_0x261e200 .delay (20000,20000,20000) L_0x261e200/d;
v0x26063e0_0 .net "AandB", 0 0, L_0x261df30; 1 drivers
v0x26064a0_0 .net "AandC", 0 0, L_0x261e050; 1 drivers
v0x2606540_0 .net "BandC", 0 0, L_0x261e110; 1 drivers
v0x26065e0_0 .net "a", 0 0, L_0x261e550; 1 drivers
v0x2606660_0 .net "b", 0 0, L_0x261e710; 1 drivers
v0x2606700_0 .alias "carryin", 0 0, v0x2607e80_2;
v0x26067e0_0 .alias "carryout", 0 0, v0x260a130_1;
v0x26068b0_0 .net "sum", 0 0, L_0x261de40; 1 drivers
S_0x2604410 .scope module, "f42" "CompAdder4bit" 2 82, 2 30, S_0x25e8c70;
 .timescale -9 -12;
v0x2605db0_0 .net "a", 3 0, L_0x2621000; 1 drivers
v0x2605e70_0 .net "b", 3 0, L_0x26210a0; 1 drivers
v0x2605f10_0 .alias "carryin", 0 0, v0x260a130_1;
v0x2605f90_0 .alias "carryout", 0 0, v0x260a130_2;
v0x2606010_0 .net8 "sum", 3 0, RS_0x2b6fffbce2f8; 4 drivers
v0x2606090 .array "temp_cout", 0 2;
v0x2606090_0 .net v0x2606090 0, 0 0, L_0x261ee70; 1 drivers
v0x2606090_1 .net v0x2606090 1, 0 0, L_0x261f6b0; 1 drivers
v0x2606090_2 .net v0x2606090 2, 0 0, L_0x261ffd0; 1 drivers
L_0x261efb0 .part/pv L_0x261e4f0, 0, 1, 4;
L_0x261f050 .part L_0x2621000, 0, 1;
L_0x261f180 .part L_0x26210a0, 0, 1;
L_0x261f870 .part/pv L_0x261f2b0, 1, 1, 4;
L_0x261f960 .part L_0x2621000, 1, 1;
L_0x261fa90 .part L_0x26210a0, 1, 1;
L_0x2620160 .part/pv L_0x261fc00, 2, 1, 4;
L_0x2620200 .part L_0x2621000, 2, 1;
L_0x2620330 .part L_0x26210a0, 2, 1;
L_0x26209e0 .part/pv L_0x2620460, 3, 1, 4;
L_0x2620b70 .part L_0x2621000, 3, 1;
L_0x2620d30 .part L_0x26210a0, 3, 1;
S_0x26057b0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x2604410;
 .timescale -9 -12;
L_0x261e4f0/d .functor XOR 1, L_0x261f050, L_0x261f180, L_0x261e200, C4<0>;
L_0x261e4f0 .delay (30000,30000,30000) L_0x261e4f0/d;
L_0x261eba0/d .functor AND 1, L_0x261f050, L_0x261f180, C4<1>, C4<1>;
L_0x261eba0 .delay (20000,20000,20000) L_0x261eba0/d;
L_0x261ec40/d .functor AND 1, L_0x261f050, L_0x261e200, C4<1>, C4<1>;
L_0x261ec40 .delay (20000,20000,20000) L_0x261ec40/d;
L_0x261ece0/d .functor AND 1, L_0x261f180, L_0x261e200, C4<1>, C4<1>;
L_0x261ece0 .delay (20000,20000,20000) L_0x261ece0/d;
L_0x261ee70/d .functor OR 1, L_0x261eba0, L_0x261ec40, L_0x261ece0, C4<0>;
L_0x261ee70 .delay (20000,20000,20000) L_0x261ee70/d;
v0x26058a0_0 .net "AandB", 0 0, L_0x261eba0; 1 drivers
v0x2605960_0 .net "AandC", 0 0, L_0x261ec40; 1 drivers
v0x2605a00_0 .net "BandC", 0 0, L_0x261ece0; 1 drivers
v0x2605aa0_0 .net "a", 0 0, L_0x261f050; 1 drivers
v0x2605b20_0 .net "b", 0 0, L_0x261f180; 1 drivers
v0x2605bc0_0 .alias "carryin", 0 0, v0x260a130_1;
v0x2605c60_0 .alias "carryout", 0 0, v0x2606090_0;
v0x2605ce0_0 .net "sum", 0 0, L_0x261e4f0; 1 drivers
S_0x26051b0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x2604410;
 .timescale -9 -12;
L_0x261f2b0/d .functor XOR 1, L_0x261f960, L_0x261fa90, L_0x261ee70, C4<0>;
L_0x261f2b0 .delay (30000,30000,30000) L_0x261f2b0/d;
L_0x261f470/d .functor AND 1, L_0x261f960, L_0x261fa90, C4<1>, C4<1>;
L_0x261f470 .delay (20000,20000,20000) L_0x261f470/d;
L_0x261f540/d .functor AND 1, L_0x261f960, L_0x261ee70, C4<1>, C4<1>;
L_0x261f540 .delay (20000,20000,20000) L_0x261f540/d;
L_0x261f5e0/d .functor AND 1, L_0x261fa90, L_0x261ee70, C4<1>, C4<1>;
L_0x261f5e0 .delay (20000,20000,20000) L_0x261f5e0/d;
L_0x261f6b0/d .functor OR 1, L_0x261f470, L_0x261f540, L_0x261f5e0, C4<0>;
L_0x261f6b0 .delay (20000,20000,20000) L_0x261f6b0/d;
v0x26052a0_0 .net "AandB", 0 0, L_0x261f470; 1 drivers
v0x2605360_0 .net "AandC", 0 0, L_0x261f540; 1 drivers
v0x2605400_0 .net "BandC", 0 0, L_0x261f5e0; 1 drivers
v0x26054a0_0 .net "a", 0 0, L_0x261f960; 1 drivers
v0x2605520_0 .net "b", 0 0, L_0x261fa90; 1 drivers
v0x26055c0_0 .alias "carryin", 0 0, v0x2606090_0;
v0x2605660_0 .alias "carryout", 0 0, v0x2606090_1;
v0x26056e0_0 .net "sum", 0 0, L_0x261f2b0; 1 drivers
S_0x2604bb0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x2604410;
 .timescale -9 -12;
L_0x261fc00/d .functor XOR 1, L_0x2620200, L_0x2620330, L_0x261f6b0, C4<0>;
L_0x261fc00 .delay (30000,30000,30000) L_0x261fc00/d;
L_0x261fd30/d .functor AND 1, L_0x2620200, L_0x2620330, C4<1>, C4<1>;
L_0x261fd30 .delay (20000,20000,20000) L_0x261fd30/d;
L_0x261fe70/d .functor AND 1, L_0x2620200, L_0x261f6b0, C4<1>, C4<1>;
L_0x261fe70 .delay (20000,20000,20000) L_0x261fe70/d;
L_0x261ff10/d .functor AND 1, L_0x2620330, L_0x261f6b0, C4<1>, C4<1>;
L_0x261ff10 .delay (20000,20000,20000) L_0x261ff10/d;
L_0x261ffd0/d .functor OR 1, L_0x261fd30, L_0x261fe70, L_0x261ff10, C4<0>;
L_0x261ffd0 .delay (20000,20000,20000) L_0x261ffd0/d;
v0x2604ca0_0 .net "AandB", 0 0, L_0x261fd30; 1 drivers
v0x2604d60_0 .net "AandC", 0 0, L_0x261fe70; 1 drivers
v0x2604e00_0 .net "BandC", 0 0, L_0x261ff10; 1 drivers
v0x2604ea0_0 .net "a", 0 0, L_0x2620200; 1 drivers
v0x2604f20_0 .net "b", 0 0, L_0x2620330; 1 drivers
v0x2604fc0_0 .alias "carryin", 0 0, v0x2606090_1;
v0x2605060_0 .alias "carryout", 0 0, v0x2606090_2;
v0x26050e0_0 .net "sum", 0 0, L_0x261fc00; 1 drivers
S_0x2604500 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x2604410;
 .timescale -9 -12;
L_0x2620460/d .functor XOR 1, L_0x2620b70, L_0x2620d30, L_0x261ffd0, C4<0>;
L_0x2620460 .delay (30000,30000,30000) L_0x2620460/d;
L_0x2620550/d .functor AND 1, L_0x2620b70, L_0x2620d30, C4<1>, C4<1>;
L_0x2620550 .delay (20000,20000,20000) L_0x2620550/d;
L_0x2620670/d .functor AND 1, L_0x2620b70, L_0x261ffd0, C4<1>, C4<1>;
L_0x2620670 .delay (20000,20000,20000) L_0x2620670/d;
L_0x2620730/d .functor AND 1, L_0x2620d30, L_0x261ffd0, C4<1>, C4<1>;
L_0x2620730 .delay (20000,20000,20000) L_0x2620730/d;
L_0x2620820/d .functor OR 1, L_0x2620550, L_0x2620670, L_0x2620730, C4<0>;
L_0x2620820 .delay (20000,20000,20000) L_0x2620820/d;
v0x26045f0_0 .net "AandB", 0 0, L_0x2620550; 1 drivers
v0x26046b0_0 .net "AandC", 0 0, L_0x2620670; 1 drivers
v0x2604750_0 .net "BandC", 0 0, L_0x2620730; 1 drivers
v0x26047f0_0 .net "a", 0 0, L_0x2620b70; 1 drivers
v0x2604870_0 .net "b", 0 0, L_0x2620d30; 1 drivers
v0x2604910_0 .alias "carryin", 0 0, v0x2606090_2;
v0x26049f0_0 .alias "carryout", 0 0, v0x260a130_2;
v0x2604ac0_0 .net "sum", 0 0, L_0x2620460; 1 drivers
S_0x2602620 .scope module, "f43" "CompAdder4bit" 2 83, 2 30, S_0x25e8c70;
 .timescale -9 -12;
v0x2603fc0_0 .net "a", 3 0, L_0x2623640; 1 drivers
v0x2604080_0 .net "b", 3 0, L_0x2623770; 1 drivers
v0x2604120_0 .alias "carryin", 0 0, v0x260a130_2;
v0x26041a0_0 .alias "carryout", 0 0, v0x260a130_3;
v0x2604220_0 .net8 "sum", 3 0, RS_0x2b6fffbcdd28; 4 drivers
v0x26042a0 .array "temp_cout", 0 2;
v0x26042a0_0 .net v0x26042a0 0, 0 0, L_0x2621460; 1 drivers
v0x26042a0_1 .net v0x26042a0 1, 0 0, L_0x2621c80; 1 drivers
v0x26042a0_2 .net v0x26042a0 2, 0 0, L_0x2622580; 1 drivers
L_0x2621580 .part/pv L_0x2620b10, 0, 1, 4;
L_0x2621620 .part L_0x2623640, 0, 1;
L_0x2621750 .part L_0x2623770, 0, 1;
L_0x2621e40 .part/pv L_0x2621880, 1, 1, 4;
L_0x2621f30 .part L_0x2623640, 1, 1;
L_0x2622060 .part L_0x2623770, 1, 1;
L_0x2622710 .part/pv L_0x26221d0, 2, 1, 4;
L_0x26227b0 .part L_0x2623640, 2, 1;
L_0x26228e0 .part L_0x2623770, 2, 1;
L_0x2622f90 .part/pv L_0x2622a10, 3, 1, 4;
L_0x2623120 .part L_0x2623640, 3, 1;
L_0x26232e0 .part L_0x2623770, 3, 1;
S_0x26039c0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x2602620;
 .timescale -9 -12;
L_0x2620b10/d .functor XOR 1, L_0x2621620, L_0x2621750, L_0x2620820, C4<0>;
L_0x2620b10 .delay (30000,30000,30000) L_0x2620b10/d;
L_0x2621140/d .functor AND 1, L_0x2621620, L_0x2621750, C4<1>, C4<1>;
L_0x2621140 .delay (20000,20000,20000) L_0x2621140/d;
L_0x2621210/d .functor AND 1, L_0x2621620, L_0x2620820, C4<1>, C4<1>;
L_0x2621210 .delay (20000,20000,20000) L_0x2621210/d;
L_0x26212d0/d .functor AND 1, L_0x2621750, L_0x2620820, C4<1>, C4<1>;
L_0x26212d0 .delay (20000,20000,20000) L_0x26212d0/d;
L_0x2621460/d .functor OR 1, L_0x2621140, L_0x2621210, L_0x26212d0, C4<0>;
L_0x2621460 .delay (20000,20000,20000) L_0x2621460/d;
v0x2603ab0_0 .net "AandB", 0 0, L_0x2621140; 1 drivers
v0x2603b70_0 .net "AandC", 0 0, L_0x2621210; 1 drivers
v0x2603c10_0 .net "BandC", 0 0, L_0x26212d0; 1 drivers
v0x2603cb0_0 .net "a", 0 0, L_0x2621620; 1 drivers
v0x2603d30_0 .net "b", 0 0, L_0x2621750; 1 drivers
v0x2603dd0_0 .alias "carryin", 0 0, v0x260a130_2;
v0x2603e70_0 .alias "carryout", 0 0, v0x26042a0_0;
v0x2603ef0_0 .net "sum", 0 0, L_0x2620b10; 1 drivers
S_0x26033c0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x2602620;
 .timescale -9 -12;
L_0x2621880/d .functor XOR 1, L_0x2621f30, L_0x2622060, L_0x2621460, C4<0>;
L_0x2621880 .delay (30000,30000,30000) L_0x2621880/d;
L_0x2621a40/d .functor AND 1, L_0x2621f30, L_0x2622060, C4<1>, C4<1>;
L_0x2621a40 .delay (20000,20000,20000) L_0x2621a40/d;
L_0x2621b10/d .functor AND 1, L_0x2621f30, L_0x2621460, C4<1>, C4<1>;
L_0x2621b10 .delay (20000,20000,20000) L_0x2621b10/d;
L_0x2621bb0/d .functor AND 1, L_0x2622060, L_0x2621460, C4<1>, C4<1>;
L_0x2621bb0 .delay (20000,20000,20000) L_0x2621bb0/d;
L_0x2621c80/d .functor OR 1, L_0x2621a40, L_0x2621b10, L_0x2621bb0, C4<0>;
L_0x2621c80 .delay (20000,20000,20000) L_0x2621c80/d;
v0x26034b0_0 .net "AandB", 0 0, L_0x2621a40; 1 drivers
v0x2603570_0 .net "AandC", 0 0, L_0x2621b10; 1 drivers
v0x2603610_0 .net "BandC", 0 0, L_0x2621bb0; 1 drivers
v0x26036b0_0 .net "a", 0 0, L_0x2621f30; 1 drivers
v0x2603730_0 .net "b", 0 0, L_0x2622060; 1 drivers
v0x26037d0_0 .alias "carryin", 0 0, v0x26042a0_0;
v0x2603870_0 .alias "carryout", 0 0, v0x26042a0_1;
v0x26038f0_0 .net "sum", 0 0, L_0x2621880; 1 drivers
S_0x2602dc0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x2602620;
 .timescale -9 -12;
L_0x26221d0/d .functor XOR 1, L_0x26227b0, L_0x26228e0, L_0x2621c80, C4<0>;
L_0x26221d0 .delay (30000,30000,30000) L_0x26221d0/d;
L_0x2622300/d .functor AND 1, L_0x26227b0, L_0x26228e0, C4<1>, C4<1>;
L_0x2622300 .delay (20000,20000,20000) L_0x2622300/d;
L_0x2622440/d .functor AND 1, L_0x26227b0, L_0x2621c80, C4<1>, C4<1>;
L_0x2622440 .delay (20000,20000,20000) L_0x2622440/d;
L_0x26224e0/d .functor AND 1, L_0x26228e0, L_0x2621c80, C4<1>, C4<1>;
L_0x26224e0 .delay (20000,20000,20000) L_0x26224e0/d;
L_0x2622580/d .functor OR 1, L_0x2622300, L_0x2622440, L_0x26224e0, C4<0>;
L_0x2622580 .delay (20000,20000,20000) L_0x2622580/d;
v0x2602eb0_0 .net "AandB", 0 0, L_0x2622300; 1 drivers
v0x2602f70_0 .net "AandC", 0 0, L_0x2622440; 1 drivers
v0x2603010_0 .net "BandC", 0 0, L_0x26224e0; 1 drivers
v0x26030b0_0 .net "a", 0 0, L_0x26227b0; 1 drivers
v0x2603130_0 .net "b", 0 0, L_0x26228e0; 1 drivers
v0x26031d0_0 .alias "carryin", 0 0, v0x26042a0_1;
v0x2603270_0 .alias "carryout", 0 0, v0x26042a0_2;
v0x26032f0_0 .net "sum", 0 0, L_0x26221d0; 1 drivers
S_0x2602710 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x2602620;
 .timescale -9 -12;
L_0x2622a10/d .functor XOR 1, L_0x2623120, L_0x26232e0, L_0x2622580, C4<0>;
L_0x2622a10 .delay (30000,30000,30000) L_0x2622a10/d;
L_0x2622b00/d .functor AND 1, L_0x2623120, L_0x26232e0, C4<1>, C4<1>;
L_0x2622b00 .delay (20000,20000,20000) L_0x2622b00/d;
L_0x2622c20/d .functor AND 1, L_0x2623120, L_0x2622580, C4<1>, C4<1>;
L_0x2622c20 .delay (20000,20000,20000) L_0x2622c20/d;
L_0x2622ce0/d .functor AND 1, L_0x26232e0, L_0x2622580, C4<1>, C4<1>;
L_0x2622ce0 .delay (20000,20000,20000) L_0x2622ce0/d;
L_0x2622dd0/d .functor OR 1, L_0x2622b00, L_0x2622c20, L_0x2622ce0, C4<0>;
L_0x2622dd0 .delay (20000,20000,20000) L_0x2622dd0/d;
v0x2602800_0 .net "AandB", 0 0, L_0x2622b00; 1 drivers
v0x26028c0_0 .net "AandC", 0 0, L_0x2622c20; 1 drivers
v0x2602960_0 .net "BandC", 0 0, L_0x2622ce0; 1 drivers
v0x2602a00_0 .net "a", 0 0, L_0x2623120; 1 drivers
v0x2602a80_0 .net "b", 0 0, L_0x26232e0; 1 drivers
v0x2602b20_0 .alias "carryin", 0 0, v0x26042a0_2;
v0x2602c00_0 .alias "carryout", 0 0, v0x260a130_3;
v0x2602cd0_0 .net "sum", 0 0, L_0x2622a10; 1 drivers
S_0x2600830 .scope module, "f44" "CompAdder4bit" 2 84, 2 30, S_0x25e8c70;
 .timescale -9 -12;
v0x26021d0_0 .net "a", 3 0, L_0x2625c30; 1 drivers
v0x2602290_0 .net "b", 3 0, L_0x2625d50; 1 drivers
v0x2602330_0 .alias "carryin", 0 0, v0x260a130_3;
v0x26023b0_0 .alias "carryout", 0 0, v0x260a130_4;
v0x2602430_0 .net8 "sum", 3 0, RS_0x2b6fffbcd758; 4 drivers
v0x26024b0 .array "temp_cout", 0 2;
v0x26024b0_0 .net v0x26024b0 0, 0 0, L_0x2623c70; 1 drivers
v0x26024b0_1 .net v0x26024b0 1, 0 0, L_0x2624440; 1 drivers
v0x26024b0_2 .net v0x26024b0 2, 0 0, L_0x2624c00; 1 drivers
L_0x2623d40 .part/pv L_0x26230c0, 0, 1, 4;
L_0x2623de0 .part L_0x2625c30, 0, 1;
L_0x2623f10 .part L_0x2625d50, 0, 1;
L_0x2624510 .part/pv L_0x2624040, 1, 1, 4;
L_0x26245b0 .part L_0x2625c30, 1, 1;
L_0x26246e0 .part L_0x2625d50, 1, 1;
L_0x2624d90 .part/pv L_0x2624850, 2, 1, 4;
L_0x2624e30 .part L_0x2625c30, 2, 1;
L_0x2624f60 .part L_0x2625d50, 2, 1;
L_0x2625610 .part/pv L_0x2625090, 3, 1, 4;
L_0x26257a0 .part L_0x2625c30, 3, 1;
L_0x2625960 .part L_0x2625d50, 3, 1;
S_0x2601bd0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x2600830;
 .timescale -9 -12;
L_0x26230c0/d .functor XOR 1, L_0x2623de0, L_0x2623f10, L_0x2622dd0, C4<0>;
L_0x26230c0 .delay (30000,30000,30000) L_0x26230c0/d;
L_0x2623950/d .functor AND 1, L_0x2623de0, L_0x2623f10, C4<1>, C4<1>;
L_0x2623950 .delay (20000,20000,20000) L_0x2623950/d;
L_0x2623a20/d .functor AND 1, L_0x2623de0, L_0x2622dd0, C4<1>, C4<1>;
L_0x2623a20 .delay (20000,20000,20000) L_0x2623a20/d;
L_0x2623ae0/d .functor AND 1, L_0x2623f10, L_0x2622dd0, C4<1>, C4<1>;
L_0x2623ae0 .delay (20000,20000,20000) L_0x2623ae0/d;
L_0x2623c70/d .functor OR 1, L_0x2623950, L_0x2623a20, L_0x2623ae0, C4<0>;
L_0x2623c70 .delay (20000,20000,20000) L_0x2623c70/d;
v0x2601cc0_0 .net "AandB", 0 0, L_0x2623950; 1 drivers
v0x2601d80_0 .net "AandC", 0 0, L_0x2623a20; 1 drivers
v0x2601e20_0 .net "BandC", 0 0, L_0x2623ae0; 1 drivers
v0x2601ec0_0 .net "a", 0 0, L_0x2623de0; 1 drivers
v0x2601f40_0 .net "b", 0 0, L_0x2623f10; 1 drivers
v0x2601fe0_0 .alias "carryin", 0 0, v0x260a130_3;
v0x2602080_0 .alias "carryout", 0 0, v0x26024b0_0;
v0x2602100_0 .net "sum", 0 0, L_0x26230c0; 1 drivers
S_0x26015d0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x2600830;
 .timescale -9 -12;
L_0x2624040/d .functor XOR 1, L_0x26245b0, L_0x26246e0, L_0x2623c70, C4<0>;
L_0x2624040 .delay (30000,30000,30000) L_0x2624040/d;
L_0x2624200/d .functor AND 1, L_0x26245b0, L_0x26246e0, C4<1>, C4<1>;
L_0x2624200 .delay (20000,20000,20000) L_0x2624200/d;
L_0x26242d0/d .functor AND 1, L_0x26245b0, L_0x2623c70, C4<1>, C4<1>;
L_0x26242d0 .delay (20000,20000,20000) L_0x26242d0/d;
L_0x2624370/d .functor AND 1, L_0x26246e0, L_0x2623c70, C4<1>, C4<1>;
L_0x2624370 .delay (20000,20000,20000) L_0x2624370/d;
L_0x2624440/d .functor OR 1, L_0x2624200, L_0x26242d0, L_0x2624370, C4<0>;
L_0x2624440 .delay (20000,20000,20000) L_0x2624440/d;
v0x26016c0_0 .net "AandB", 0 0, L_0x2624200; 1 drivers
v0x2601780_0 .net "AandC", 0 0, L_0x26242d0; 1 drivers
v0x2601820_0 .net "BandC", 0 0, L_0x2624370; 1 drivers
v0x26018c0_0 .net "a", 0 0, L_0x26245b0; 1 drivers
v0x2601940_0 .net "b", 0 0, L_0x26246e0; 1 drivers
v0x26019e0_0 .alias "carryin", 0 0, v0x26024b0_0;
v0x2601a80_0 .alias "carryout", 0 0, v0x26024b0_1;
v0x2601b00_0 .net "sum", 0 0, L_0x2624040; 1 drivers
S_0x2600fd0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x2600830;
 .timescale -9 -12;
L_0x2624850/d .functor XOR 1, L_0x2624e30, L_0x2624f60, L_0x2624440, C4<0>;
L_0x2624850 .delay (30000,30000,30000) L_0x2624850/d;
L_0x2624980/d .functor AND 1, L_0x2624e30, L_0x2624f60, C4<1>, C4<1>;
L_0x2624980 .delay (20000,20000,20000) L_0x2624980/d;
L_0x2624ac0/d .functor AND 1, L_0x2624e30, L_0x2624440, C4<1>, C4<1>;
L_0x2624ac0 .delay (20000,20000,20000) L_0x2624ac0/d;
L_0x2624b60/d .functor AND 1, L_0x2624f60, L_0x2624440, C4<1>, C4<1>;
L_0x2624b60 .delay (20000,20000,20000) L_0x2624b60/d;
L_0x2624c00/d .functor OR 1, L_0x2624980, L_0x2624ac0, L_0x2624b60, C4<0>;
L_0x2624c00 .delay (20000,20000,20000) L_0x2624c00/d;
v0x26010c0_0 .net "AandB", 0 0, L_0x2624980; 1 drivers
v0x2601180_0 .net "AandC", 0 0, L_0x2624ac0; 1 drivers
v0x2601220_0 .net "BandC", 0 0, L_0x2624b60; 1 drivers
v0x26012c0_0 .net "a", 0 0, L_0x2624e30; 1 drivers
v0x2601340_0 .net "b", 0 0, L_0x2624f60; 1 drivers
v0x26013e0_0 .alias "carryin", 0 0, v0x26024b0_1;
v0x2601480_0 .alias "carryout", 0 0, v0x26024b0_2;
v0x2601500_0 .net "sum", 0 0, L_0x2624850; 1 drivers
S_0x2600920 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x2600830;
 .timescale -9 -12;
L_0x2625090/d .functor XOR 1, L_0x26257a0, L_0x2625960, L_0x2624c00, C4<0>;
L_0x2625090 .delay (30000,30000,30000) L_0x2625090/d;
L_0x2625180/d .functor AND 1, L_0x26257a0, L_0x2625960, C4<1>, C4<1>;
L_0x2625180 .delay (20000,20000,20000) L_0x2625180/d;
L_0x26252a0/d .functor AND 1, L_0x26257a0, L_0x2624c00, C4<1>, C4<1>;
L_0x26252a0 .delay (20000,20000,20000) L_0x26252a0/d;
L_0x2625360/d .functor AND 1, L_0x2625960, L_0x2624c00, C4<1>, C4<1>;
L_0x2625360 .delay (20000,20000,20000) L_0x2625360/d;
L_0x2625450/d .functor OR 1, L_0x2625180, L_0x26252a0, L_0x2625360, C4<0>;
L_0x2625450 .delay (20000,20000,20000) L_0x2625450/d;
v0x2600a10_0 .net "AandB", 0 0, L_0x2625180; 1 drivers
v0x2600ad0_0 .net "AandC", 0 0, L_0x26252a0; 1 drivers
v0x2600b70_0 .net "BandC", 0 0, L_0x2625360; 1 drivers
v0x2600c10_0 .net "a", 0 0, L_0x26257a0; 1 drivers
v0x2600c90_0 .net "b", 0 0, L_0x2625960; 1 drivers
v0x2600d30_0 .alias "carryin", 0 0, v0x26024b0_2;
v0x2600e10_0 .alias "carryout", 0 0, v0x260a130_4;
v0x2600ee0_0 .net "sum", 0 0, L_0x2625090; 1 drivers
S_0x25fea40 .scope module, "f45" "CompAdder4bit" 2 85, 2 30, S_0x25e8c70;
 .timescale -9 -12;
v0x26003e0_0 .net "a", 3 0, L_0x2628270; 1 drivers
v0x26004a0_0 .net "b", 3 0, L_0x2628310; 1 drivers
v0x2600540_0 .alias "carryin", 0 0, v0x260a130_4;
v0x26005c0_0 .alias "carryout", 0 0, v0x260a130_5;
v0x2600640_0 .net8 "sum", 3 0, RS_0x2b6fffbcd188; 4 drivers
v0x26006c0 .array "temp_cout", 0 2;
v0x26006c0_0 .net v0x26006c0 0, 0 0, L_0x2626150; 1 drivers
v0x26006c0_1 .net v0x26006c0 1, 0 0, L_0x2626920; 1 drivers
v0x26006c0_2 .net v0x26006c0 2, 0 0, L_0x2627220; 1 drivers
L_0x2626220 .part/pv L_0x2625740, 0, 1, 4;
L_0x26262c0 .part L_0x2628270, 0, 1;
L_0x26263f0 .part L_0x2628310, 0, 1;
L_0x2626ae0 .part/pv L_0x2626520, 1, 1, 4;
L_0x2626bd0 .part L_0x2628270, 1, 1;
L_0x2626d00 .part L_0x2628310, 1, 1;
L_0x26273b0 .part/pv L_0x2626e70, 2, 1, 4;
L_0x2627450 .part L_0x2628270, 2, 1;
L_0x2627580 .part L_0x2628310, 2, 1;
L_0x2627c30 .part/pv L_0x26276b0, 3, 1, 4;
L_0x2627dc0 .part L_0x2628270, 3, 1;
L_0x2627f80 .part L_0x2628310, 3, 1;
S_0x25ffde0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x25fea40;
 .timescale -9 -12;
L_0x2625740/d .functor XOR 1, L_0x26262c0, L_0x26263f0, L_0x2625450, C4<0>;
L_0x2625740 .delay (30000,30000,30000) L_0x2625740/d;
L_0x2625e30/d .functor AND 1, L_0x26262c0, L_0x26263f0, C4<1>, C4<1>;
L_0x2625e30 .delay (20000,20000,20000) L_0x2625e30/d;
L_0x2625f00/d .functor AND 1, L_0x26262c0, L_0x2625450, C4<1>, C4<1>;
L_0x2625f00 .delay (20000,20000,20000) L_0x2625f00/d;
L_0x2625fc0/d .functor AND 1, L_0x26263f0, L_0x2625450, C4<1>, C4<1>;
L_0x2625fc0 .delay (20000,20000,20000) L_0x2625fc0/d;
L_0x2626150/d .functor OR 1, L_0x2625e30, L_0x2625f00, L_0x2625fc0, C4<0>;
L_0x2626150 .delay (20000,20000,20000) L_0x2626150/d;
v0x25ffed0_0 .net "AandB", 0 0, L_0x2625e30; 1 drivers
v0x25fff90_0 .net "AandC", 0 0, L_0x2625f00; 1 drivers
v0x2600030_0 .net "BandC", 0 0, L_0x2625fc0; 1 drivers
v0x26000d0_0 .net "a", 0 0, L_0x26262c0; 1 drivers
v0x2600150_0 .net "b", 0 0, L_0x26263f0; 1 drivers
v0x26001f0_0 .alias "carryin", 0 0, v0x260a130_4;
v0x2600290_0 .alias "carryout", 0 0, v0x26006c0_0;
v0x2600310_0 .net "sum", 0 0, L_0x2625740; 1 drivers
S_0x25ff7e0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x25fea40;
 .timescale -9 -12;
L_0x2626520/d .functor XOR 1, L_0x2626bd0, L_0x2626d00, L_0x2626150, C4<0>;
L_0x2626520 .delay (30000,30000,30000) L_0x2626520/d;
L_0x26266e0/d .functor AND 1, L_0x2626bd0, L_0x2626d00, C4<1>, C4<1>;
L_0x26266e0 .delay (20000,20000,20000) L_0x26266e0/d;
L_0x26267b0/d .functor AND 1, L_0x2626bd0, L_0x2626150, C4<1>, C4<1>;
L_0x26267b0 .delay (20000,20000,20000) L_0x26267b0/d;
L_0x2626850/d .functor AND 1, L_0x2626d00, L_0x2626150, C4<1>, C4<1>;
L_0x2626850 .delay (20000,20000,20000) L_0x2626850/d;
L_0x2626920/d .functor OR 1, L_0x26266e0, L_0x26267b0, L_0x2626850, C4<0>;
L_0x2626920 .delay (20000,20000,20000) L_0x2626920/d;
v0x25ff8d0_0 .net "AandB", 0 0, L_0x26266e0; 1 drivers
v0x25ff990_0 .net "AandC", 0 0, L_0x26267b0; 1 drivers
v0x25ffa30_0 .net "BandC", 0 0, L_0x2626850; 1 drivers
v0x25ffad0_0 .net "a", 0 0, L_0x2626bd0; 1 drivers
v0x25ffb50_0 .net "b", 0 0, L_0x2626d00; 1 drivers
v0x25ffbf0_0 .alias "carryin", 0 0, v0x26006c0_0;
v0x25ffc90_0 .alias "carryout", 0 0, v0x26006c0_1;
v0x25ffd10_0 .net "sum", 0 0, L_0x2626520; 1 drivers
S_0x25ff1e0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x25fea40;
 .timescale -9 -12;
L_0x2626e70/d .functor XOR 1, L_0x2627450, L_0x2627580, L_0x2626920, C4<0>;
L_0x2626e70 .delay (30000,30000,30000) L_0x2626e70/d;
L_0x2626fa0/d .functor AND 1, L_0x2627450, L_0x2627580, C4<1>, C4<1>;
L_0x2626fa0 .delay (20000,20000,20000) L_0x2626fa0/d;
L_0x26270e0/d .functor AND 1, L_0x2627450, L_0x2626920, C4<1>, C4<1>;
L_0x26270e0 .delay (20000,20000,20000) L_0x26270e0/d;
L_0x2627180/d .functor AND 1, L_0x2627580, L_0x2626920, C4<1>, C4<1>;
L_0x2627180 .delay (20000,20000,20000) L_0x2627180/d;
L_0x2627220/d .functor OR 1, L_0x2626fa0, L_0x26270e0, L_0x2627180, C4<0>;
L_0x2627220 .delay (20000,20000,20000) L_0x2627220/d;
v0x25ff2d0_0 .net "AandB", 0 0, L_0x2626fa0; 1 drivers
v0x25ff390_0 .net "AandC", 0 0, L_0x26270e0; 1 drivers
v0x25ff430_0 .net "BandC", 0 0, L_0x2627180; 1 drivers
v0x25ff4d0_0 .net "a", 0 0, L_0x2627450; 1 drivers
v0x25ff550_0 .net "b", 0 0, L_0x2627580; 1 drivers
v0x25ff5f0_0 .alias "carryin", 0 0, v0x26006c0_1;
v0x25ff690_0 .alias "carryout", 0 0, v0x26006c0_2;
v0x25ff710_0 .net "sum", 0 0, L_0x2626e70; 1 drivers
S_0x25feb30 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x25fea40;
 .timescale -9 -12;
L_0x26276b0/d .functor XOR 1, L_0x2627dc0, L_0x2627f80, L_0x2627220, C4<0>;
L_0x26276b0 .delay (30000,30000,30000) L_0x26276b0/d;
L_0x26277a0/d .functor AND 1, L_0x2627dc0, L_0x2627f80, C4<1>, C4<1>;
L_0x26277a0 .delay (20000,20000,20000) L_0x26277a0/d;
L_0x26278c0/d .functor AND 1, L_0x2627dc0, L_0x2627220, C4<1>, C4<1>;
L_0x26278c0 .delay (20000,20000,20000) L_0x26278c0/d;
L_0x2627980/d .functor AND 1, L_0x2627f80, L_0x2627220, C4<1>, C4<1>;
L_0x2627980 .delay (20000,20000,20000) L_0x2627980/d;
L_0x2627a70/d .functor OR 1, L_0x26277a0, L_0x26278c0, L_0x2627980, C4<0>;
L_0x2627a70 .delay (20000,20000,20000) L_0x2627a70/d;
v0x25fec20_0 .net "AandB", 0 0, L_0x26277a0; 1 drivers
v0x25fece0_0 .net "AandC", 0 0, L_0x26278c0; 1 drivers
v0x25fed80_0 .net "BandC", 0 0, L_0x2627980; 1 drivers
v0x25fee20_0 .net "a", 0 0, L_0x2627dc0; 1 drivers
v0x25feea0_0 .net "b", 0 0, L_0x2627f80; 1 drivers
v0x25fef40_0 .alias "carryin", 0 0, v0x26006c0_2;
v0x25ff020_0 .alias "carryout", 0 0, v0x260a130_5;
v0x25ff0f0_0 .net "sum", 0 0, L_0x26276b0; 1 drivers
S_0x25fcc70 .scope module, "f46" "CompAdder4bit" 2 86, 2 30, S_0x25e8c70;
 .timescale -9 -12;
v0x25fe5f0_0 .net "a", 3 0, L_0x262a820; 1 drivers
v0x25fe6b0_0 .net "b", 3 0, L_0x26283b0; 1 drivers
v0x25fe750_0 .alias "carryin", 0 0, v0x260a130_5;
v0x25fe7d0_0 .alias "carryout", 0 0, v0x260a130_6;
v0x25fe850_0 .net8 "sum", 3 0, RS_0x2b6fffbccbb8; 4 drivers
v0x25fe8d0 .array "temp_cout", 0 2;
v0x25fe8d0_0 .net v0x25fe8d0 0, 0 0, L_0x2628720; 1 drivers
v0x25fe8d0_1 .net v0x25fe8d0 1, 0 0, L_0x2628ef0; 1 drivers
v0x25fe8d0_2 .net v0x25fe8d0 2, 0 0, L_0x26297f0; 1 drivers
L_0x26287f0 .part/pv L_0x2627d60, 0, 1, 4;
L_0x2628890 .part L_0x262a820, 0, 1;
L_0x26289c0 .part L_0x26283b0, 0, 1;
L_0x26290b0 .part/pv L_0x2628af0, 1, 1, 4;
L_0x26291a0 .part L_0x262a820, 1, 1;
L_0x26292d0 .part L_0x26283b0, 1, 1;
L_0x2629980 .part/pv L_0x2629440, 2, 1, 4;
L_0x2629a20 .part L_0x262a820, 2, 1;
L_0x2629b50 .part L_0x26283b0, 2, 1;
L_0x262a200 .part/pv L_0x2629c80, 3, 1, 4;
L_0x262a390 .part L_0x262a820, 3, 1;
L_0x262a550 .part L_0x26283b0, 3, 1;
S_0x25fdff0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x25fcc70;
 .timescale -9 -12;
L_0x2627d60/d .functor XOR 1, L_0x2628890, L_0x26289c0, L_0x2627a70, C4<0>;
L_0x2627d60 .delay (30000,30000,30000) L_0x2627d60/d;
L_0x2628450/d .functor AND 1, L_0x2628890, L_0x26289c0, C4<1>, C4<1>;
L_0x2628450 .delay (20000,20000,20000) L_0x2628450/d;
L_0x26284f0/d .functor AND 1, L_0x2628890, L_0x2627a70, C4<1>, C4<1>;
L_0x26284f0 .delay (20000,20000,20000) L_0x26284f0/d;
L_0x2628590/d .functor AND 1, L_0x26289c0, L_0x2627a70, C4<1>, C4<1>;
L_0x2628590 .delay (20000,20000,20000) L_0x2628590/d;
L_0x2628720/d .functor OR 1, L_0x2628450, L_0x26284f0, L_0x2628590, C4<0>;
L_0x2628720 .delay (20000,20000,20000) L_0x2628720/d;
v0x25fe0e0_0 .net "AandB", 0 0, L_0x2628450; 1 drivers
v0x25fe1a0_0 .net "AandC", 0 0, L_0x26284f0; 1 drivers
v0x25fe240_0 .net "BandC", 0 0, L_0x2628590; 1 drivers
v0x25fe2e0_0 .net "a", 0 0, L_0x2628890; 1 drivers
v0x25fe360_0 .net "b", 0 0, L_0x26289c0; 1 drivers
v0x25fe400_0 .alias "carryin", 0 0, v0x260a130_5;
v0x25fe4a0_0 .alias "carryout", 0 0, v0x25fe8d0_0;
v0x25fe520_0 .net "sum", 0 0, L_0x2627d60; 1 drivers
S_0x25fd9f0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x25fcc70;
 .timescale -9 -12;
L_0x2628af0/d .functor XOR 1, L_0x26291a0, L_0x26292d0, L_0x2628720, C4<0>;
L_0x2628af0 .delay (30000,30000,30000) L_0x2628af0/d;
L_0x2628cb0/d .functor AND 1, L_0x26291a0, L_0x26292d0, C4<1>, C4<1>;
L_0x2628cb0 .delay (20000,20000,20000) L_0x2628cb0/d;
L_0x2628d80/d .functor AND 1, L_0x26291a0, L_0x2628720, C4<1>, C4<1>;
L_0x2628d80 .delay (20000,20000,20000) L_0x2628d80/d;
L_0x2628e20/d .functor AND 1, L_0x26292d0, L_0x2628720, C4<1>, C4<1>;
L_0x2628e20 .delay (20000,20000,20000) L_0x2628e20/d;
L_0x2628ef0/d .functor OR 1, L_0x2628cb0, L_0x2628d80, L_0x2628e20, C4<0>;
L_0x2628ef0 .delay (20000,20000,20000) L_0x2628ef0/d;
v0x25fdae0_0 .net "AandB", 0 0, L_0x2628cb0; 1 drivers
v0x25fdba0_0 .net "AandC", 0 0, L_0x2628d80; 1 drivers
v0x25fdc40_0 .net "BandC", 0 0, L_0x2628e20; 1 drivers
v0x25fdce0_0 .net "a", 0 0, L_0x26291a0; 1 drivers
v0x25fdd60_0 .net "b", 0 0, L_0x26292d0; 1 drivers
v0x25fde00_0 .alias "carryin", 0 0, v0x25fe8d0_0;
v0x25fdea0_0 .alias "carryout", 0 0, v0x25fe8d0_1;
v0x25fdf20_0 .net "sum", 0 0, L_0x2628af0; 1 drivers
S_0x25fd3f0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x25fcc70;
 .timescale -9 -12;
L_0x2629440/d .functor XOR 1, L_0x2629a20, L_0x2629b50, L_0x2628ef0, C4<0>;
L_0x2629440 .delay (30000,30000,30000) L_0x2629440/d;
L_0x2629570/d .functor AND 1, L_0x2629a20, L_0x2629b50, C4<1>, C4<1>;
L_0x2629570 .delay (20000,20000,20000) L_0x2629570/d;
L_0x26296b0/d .functor AND 1, L_0x2629a20, L_0x2628ef0, C4<1>, C4<1>;
L_0x26296b0 .delay (20000,20000,20000) L_0x26296b0/d;
L_0x2629750/d .functor AND 1, L_0x2629b50, L_0x2628ef0, C4<1>, C4<1>;
L_0x2629750 .delay (20000,20000,20000) L_0x2629750/d;
L_0x26297f0/d .functor OR 1, L_0x2629570, L_0x26296b0, L_0x2629750, C4<0>;
L_0x26297f0 .delay (20000,20000,20000) L_0x26297f0/d;
v0x25fd4e0_0 .net "AandB", 0 0, L_0x2629570; 1 drivers
v0x25fd5a0_0 .net "AandC", 0 0, L_0x26296b0; 1 drivers
v0x25fd640_0 .net "BandC", 0 0, L_0x2629750; 1 drivers
v0x25fd6e0_0 .net "a", 0 0, L_0x2629a20; 1 drivers
v0x25fd760_0 .net "b", 0 0, L_0x2629b50; 1 drivers
v0x25fd800_0 .alias "carryin", 0 0, v0x25fe8d0_1;
v0x25fd8a0_0 .alias "carryout", 0 0, v0x25fe8d0_2;
v0x25fd920_0 .net "sum", 0 0, L_0x2629440; 1 drivers
S_0x25fcd60 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x25fcc70;
 .timescale -9 -12;
L_0x2629c80/d .functor XOR 1, L_0x262a390, L_0x262a550, L_0x26297f0, C4<0>;
L_0x2629c80 .delay (30000,30000,30000) L_0x2629c80/d;
L_0x2629d70/d .functor AND 1, L_0x262a390, L_0x262a550, C4<1>, C4<1>;
L_0x2629d70 .delay (20000,20000,20000) L_0x2629d70/d;
L_0x2629e90/d .functor AND 1, L_0x262a390, L_0x26297f0, C4<1>, C4<1>;
L_0x2629e90 .delay (20000,20000,20000) L_0x2629e90/d;
L_0x2629f50/d .functor AND 1, L_0x262a550, L_0x26297f0, C4<1>, C4<1>;
L_0x2629f50 .delay (20000,20000,20000) L_0x2629f50/d;
L_0x262a040/d .functor OR 1, L_0x2629d70, L_0x2629e90, L_0x2629f50, C4<0>;
L_0x262a040 .delay (20000,20000,20000) L_0x262a040/d;
v0x25fce50_0 .net "AandB", 0 0, L_0x2629d70; 1 drivers
v0x25fcef0_0 .net "AandC", 0 0, L_0x2629e90; 1 drivers
v0x25fcf90_0 .net "BandC", 0 0, L_0x2629f50; 1 drivers
v0x25fd030_0 .net "a", 0 0, L_0x262a390; 1 drivers
v0x25fd0b0_0 .net "b", 0 0, L_0x262a550; 1 drivers
v0x25fd150_0 .alias "carryin", 0 0, v0x25fe8d0_2;
v0x25fd230_0 .alias "carryout", 0 0, v0x260a130_6;
v0x25fd300_0 .net "sum", 0 0, L_0x2629c80; 1 drivers
S_0x25e3350 .scope module, "f47" "CompAdder4bit" 2 87, 2 30, S_0x25e8c70;
 .timescale -9 -12;
v0x25fc790_0 .net "a", 3 0, L_0x262a8c0; 1 drivers
v0x25fc850_0 .net "b", 3 0, L_0x262d0b0; 1 drivers
v0x25fc8f0_0 .alias "carryin", 0 0, v0x260a130_6;
v0x25fc9a0_0 .alias "carryout", 0 0, v0x2609f40_0;
v0x25fca80_0 .net8 "sum", 3 0, RS_0x2b6fffbcc5e8; 4 drivers
v0x25fcb00 .array "temp_cout", 0 2;
v0x25fcb00_0 .net v0x25fcb00 0, 0 0, L_0x262acd0; 1 drivers
v0x25fcb00_1 .net v0x25fcb00 1, 0 0, L_0x262b4a0; 1 drivers
v0x25fcb00_2 .net v0x25fcb00 2, 0 0, L_0x262bda0; 1 drivers
L_0x262ada0 .part/pv L_0x262a330, 0, 1, 4;
L_0x262ae40 .part L_0x262a8c0, 0, 1;
L_0x262af70 .part L_0x262d0b0, 0, 1;
L_0x262b660 .part/pv L_0x262b0a0, 1, 1, 4;
L_0x262b750 .part L_0x262a8c0, 1, 1;
L_0x262b880 .part L_0x262d0b0, 1, 1;
L_0x262bf30 .part/pv L_0x262b9f0, 2, 1, 4;
L_0x262bfd0 .part L_0x262a8c0, 2, 1;
L_0x262c100 .part L_0x262d0b0, 2, 1;
L_0x262c7b0 .part/pv L_0x262c230, 3, 1, 4;
L_0x262c940 .part L_0x262a8c0, 3, 1;
L_0x262cb00 .part L_0x262d0b0, 3, 1;
S_0x25fc160 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x25e3350;
 .timescale -9 -12;
L_0x262a330/d .functor XOR 1, L_0x262ae40, L_0x262af70, L_0x262a040, C4<0>;
L_0x262a330 .delay (30000,30000,30000) L_0x262a330/d;
L_0x262a9b0/d .functor AND 1, L_0x262ae40, L_0x262af70, C4<1>, C4<1>;
L_0x262a9b0 .delay (20000,20000,20000) L_0x262a9b0/d;
L_0x262aa80/d .functor AND 1, L_0x262ae40, L_0x262a040, C4<1>, C4<1>;
L_0x262aa80 .delay (20000,20000,20000) L_0x262aa80/d;
L_0x262ab40/d .functor AND 1, L_0x262af70, L_0x262a040, C4<1>, C4<1>;
L_0x262ab40 .delay (20000,20000,20000) L_0x262ab40/d;
L_0x262acd0/d .functor OR 1, L_0x262a9b0, L_0x262aa80, L_0x262ab40, C4<0>;
L_0x262acd0 .delay (20000,20000,20000) L_0x262acd0/d;
v0x25fc250_0 .net "AandB", 0 0, L_0x262a9b0; 1 drivers
v0x25fc310_0 .net "AandC", 0 0, L_0x262aa80; 1 drivers
v0x25fc3b0_0 .net "BandC", 0 0, L_0x262ab40; 1 drivers
v0x25fc450_0 .net "a", 0 0, L_0x262ae40; 1 drivers
v0x25fc500_0 .net "b", 0 0, L_0x262af70; 1 drivers
v0x25fc5a0_0 .alias "carryin", 0 0, v0x260a130_6;
v0x25fc640_0 .alias "carryout", 0 0, v0x25fcb00_0;
v0x25fc6c0_0 .net "sum", 0 0, L_0x262a330; 1 drivers
S_0x25fbb30 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x25e3350;
 .timescale -9 -12;
L_0x262b0a0/d .functor XOR 1, L_0x262b750, L_0x262b880, L_0x262acd0, C4<0>;
L_0x262b0a0 .delay (30000,30000,30000) L_0x262b0a0/d;
L_0x262b260/d .functor AND 1, L_0x262b750, L_0x262b880, C4<1>, C4<1>;
L_0x262b260 .delay (20000,20000,20000) L_0x262b260/d;
L_0x262b330/d .functor AND 1, L_0x262b750, L_0x262acd0, C4<1>, C4<1>;
L_0x262b330 .delay (20000,20000,20000) L_0x262b330/d;
L_0x262b3d0/d .functor AND 1, L_0x262b880, L_0x262acd0, C4<1>, C4<1>;
L_0x262b3d0 .delay (20000,20000,20000) L_0x262b3d0/d;
L_0x262b4a0/d .functor OR 1, L_0x262b260, L_0x262b330, L_0x262b3d0, C4<0>;
L_0x262b4a0 .delay (20000,20000,20000) L_0x262b4a0/d;
v0x25fbc20_0 .net "AandB", 0 0, L_0x262b260; 1 drivers
v0x25fbce0_0 .net "AandC", 0 0, L_0x262b330; 1 drivers
v0x25fbd80_0 .net "BandC", 0 0, L_0x262b3d0; 1 drivers
v0x25fbe20_0 .net "a", 0 0, L_0x262b750; 1 drivers
v0x25fbed0_0 .net "b", 0 0, L_0x262b880; 1 drivers
v0x25fbf70_0 .alias "carryin", 0 0, v0x25fcb00_0;
v0x25fc010_0 .alias "carryout", 0 0, v0x25fcb00_1;
v0x25fc090_0 .net "sum", 0 0, L_0x262b0a0; 1 drivers
S_0x25fb530 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x25e3350;
 .timescale -9 -12;
L_0x262b9f0/d .functor XOR 1, L_0x262bfd0, L_0x262c100, L_0x262b4a0, C4<0>;
L_0x262b9f0 .delay (30000,30000,30000) L_0x262b9f0/d;
L_0x262bb20/d .functor AND 1, L_0x262bfd0, L_0x262c100, C4<1>, C4<1>;
L_0x262bb20 .delay (20000,20000,20000) L_0x262bb20/d;
L_0x262bc60/d .functor AND 1, L_0x262bfd0, L_0x262b4a0, C4<1>, C4<1>;
L_0x262bc60 .delay (20000,20000,20000) L_0x262bc60/d;
L_0x262bd00/d .functor AND 1, L_0x262c100, L_0x262b4a0, C4<1>, C4<1>;
L_0x262bd00 .delay (20000,20000,20000) L_0x262bd00/d;
L_0x262bda0/d .functor OR 1, L_0x262bb20, L_0x262bc60, L_0x262bd00, C4<0>;
L_0x262bda0 .delay (20000,20000,20000) L_0x262bda0/d;
v0x25fb620_0 .net "AandB", 0 0, L_0x262bb20; 1 drivers
v0x25fb6e0_0 .net "AandC", 0 0, L_0x262bc60; 1 drivers
v0x25fb780_0 .net "BandC", 0 0, L_0x262bd00; 1 drivers
v0x25fb820_0 .net "a", 0 0, L_0x262bfd0; 1 drivers
v0x25fb8a0_0 .net "b", 0 0, L_0x262c100; 1 drivers
v0x25fb940_0 .alias "carryin", 0 0, v0x25fcb00_1;
v0x25fb9e0_0 .alias "carryout", 0 0, v0x25fcb00_2;
v0x25fba60_0 .net "sum", 0 0, L_0x262b9f0; 1 drivers
S_0x25de0f0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x25e3350;
 .timescale -9 -12;
L_0x262c230/d .functor XOR 1, L_0x262c940, L_0x262cb00, L_0x262bda0, C4<0>;
L_0x262c230 .delay (30000,30000,30000) L_0x262c230/d;
L_0x262c320/d .functor AND 1, L_0x262c940, L_0x262cb00, C4<1>, C4<1>;
L_0x262c320 .delay (20000,20000,20000) L_0x262c320/d;
L_0x262c440/d .functor AND 1, L_0x262c940, L_0x262bda0, C4<1>, C4<1>;
L_0x262c440 .delay (20000,20000,20000) L_0x262c440/d;
L_0x262c500/d .functor AND 1, L_0x262cb00, L_0x262bda0, C4<1>, C4<1>;
L_0x262c500 .delay (20000,20000,20000) L_0x262c500/d;
L_0x262c5f0/d .functor OR 1, L_0x262c320, L_0x262c440, L_0x262c500, C4<0>;
L_0x262c5f0 .delay (20000,20000,20000) L_0x262c5f0/d;
v0x25b03d0_0 .net "AandB", 0 0, L_0x262c320; 1 drivers
v0x25fb030_0 .net "AandC", 0 0, L_0x262c440; 1 drivers
v0x25fb0d0_0 .net "BandC", 0 0, L_0x262c500; 1 drivers
v0x25fb170_0 .net "a", 0 0, L_0x262c940; 1 drivers
v0x25fb220_0 .net "b", 0 0, L_0x262cb00; 1 drivers
v0x25fb2c0_0 .alias "carryin", 0 0, v0x25fcb00_2;
v0x25fb3a0_0 .alias "carryout", 0 0, v0x2609f40_0;
v0x25fb440_0 .net "sum", 0 0, L_0x262c230; 1 drivers
S_0x25ccad0 .scope module, "testFullAdder16bit" "testFullAdder16bit" 3 5;
 .timescale -9 -12;
v0x2619c80_0 .var "a", 31 0;
v0x2619d20_0 .var "b", 31 0;
v0x2619da0_0 .net "carryout", 0 0, L_0x263f9b0; 1 drivers
v0x2619e20_0 .net "overflow", 0 0, L_0x263fce0; 1 drivers
RS_0x2b6fffbd1ec8/0/0 .resolv tri, L_0x262f4a0, L_0x2631bd0, L_0x2634180, L_0x26367f0;
RS_0x2b6fffbd1ec8/0/4 .resolv tri, L_0x2638db0, L_0x263b360, L_0x263d9a0, L_0x2640130;
RS_0x2b6fffbd1ec8 .resolv tri, RS_0x2b6fffbd1ec8/0/0, RS_0x2b6fffbd1ec8/0/4, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>;
v0x2619ea0_0 .net8 "sum", 31 0, RS_0x2b6fffbd1ec8; 8 drivers
S_0x260a620 .scope module, "fa16b" "FullAdder32bit" 3 11, 2 49, S_0x25ccad0;
 .timescale -9 -12;
L_0x263fce0/d .functor XOR 1, L_0x263f9b0, L_0x263d260, C4<0>, C4<0>;
L_0x263fce0 .delay (30000,30000,30000) L_0x263fce0/d;
v0x2619440_0 .net "a", 31 0, v0x2619c80_0; 1 drivers
v0x2619500_0 .net "b", 31 0, v0x2619d20_0; 1 drivers
v0x26195a0_0 .alias "carryout", 0 0, v0x2619da0_0;
v0x2619670_0 .alias "overflow", 0 0, v0x2619e20_0;
v0x26196f0_0 .alias "sum", 31 0, v0x2619ea0_0;
v0x2619790 .array "temp_cout", 0 6;
v0x2619790_0 .net v0x2619790 0, 0 0, L_0x262ee80; 1 drivers
v0x2619790_1 .net v0x2619790 1, 0 0, L_0x2631490; 1 drivers
v0x2619790_2 .net v0x2619790 2, 0 0, L_0x2633a40; 1 drivers
v0x2619790_3 .net v0x2619790 3, 0 0, L_0x26360b0; 1 drivers
v0x2619790_4 .net v0x2619790 4, 0 0, L_0x2638670; 1 drivers
v0x2619790_5 .net v0x2619790 5, 0 0, L_0x263ac90; 1 drivers
v0x2619790_6 .net v0x2619790 6, 0 0, L_0x263d260; 1 drivers
RS_0x2b6fffbd1e08 .resolv tri, L_0x262d660, L_0x262ded0, L_0x262e7c0, L_0x262eff0;
L_0x262f4a0 .part/pv RS_0x2b6fffbd1e08, 0, 4, 32;
L_0x262f540 .part v0x2619c80_0, 0, 4;
L_0x262f5e0 .part v0x2619d20_0, 0, 4;
RS_0x2b6fffbd1838 .resolv tri, L_0x262fc40, L_0x2630500, L_0x2630dd0, L_0x2631650;
L_0x2631bd0 .part/pv RS_0x2b6fffbd1838, 4, 4, 32;
L_0x2631c70 .part v0x2619c80_0, 4, 4;
L_0x2631d10 .part v0x2619d20_0, 4, 4;
RS_0x2b6fffbd1268 .resolv tri, L_0x26321f0, L_0x2632ab0, L_0x2633380, L_0x2633c00;
L_0x2634180 .part/pv RS_0x2b6fffbd1268, 8, 4, 32;
L_0x26342b0 .part v0x2619c80_0, 8, 4;
L_0x26343e0 .part v0x2619d20_0, 8, 4;
RS_0x2b6fffbd0c98 .resolv tri, L_0x2634900, L_0x2635120, L_0x26359f0, L_0x2636270;
L_0x26367f0 .part/pv RS_0x2b6fffbd0c98, 12, 4, 32;
L_0x2636890 .part v0x2619c80_0, 12, 4;
L_0x2636930 .part v0x2619d20_0, 12, 4;
RS_0x2b6fffbd06c8 .resolv tri, L_0x2636e70, L_0x26376e0, L_0x2637fb0, L_0x2638830;
L_0x2638db0 .part/pv RS_0x2b6fffbd06c8, 16, 4, 32;
L_0x2638e50 .part v0x2619c80_0, 16, 4;
L_0x2638f70 .part v0x2619d20_0, 16, 4;
RS_0x2b6fffbd00f8 .resolv tri, L_0x2639440, L_0x2639d00, L_0x263a5d0, L_0x263ae50;
L_0x263b360 .part/pv RS_0x2b6fffbd00f8, 20, 4, 32;
L_0x263b490 .part v0x2619c80_0, 20, 4;
L_0x263b530 .part v0x2619d20_0, 20, 4;
RS_0x2b6fffbcfb28 .resolv tri, L_0x263ba10, L_0x263c2d0, L_0x263cba0, L_0x263d420;
L_0x263d9a0 .part/pv RS_0x2b6fffbcfb28, 24, 4, 32;
L_0x263db50 .part v0x2619c80_0, 24, 4;
L_0x263b5d0 .part v0x2619d20_0, 24, 4;
RS_0x2b6fffbcf558 .resolv tri, L_0x263e160, L_0x263ea20, L_0x263f2f0, L_0x263fbb0;
L_0x2640130 .part/pv RS_0x2b6fffbcf558, 28, 4, 32;
L_0x263dd00 .part v0x2619c80_0, 28, 4;
L_0x2640290 .part v0x2619d20_0, 28, 4;
S_0x2617650 .scope module, "f40" "CompAdder4bit" 2 59, 2 30, S_0x260a620;
 .timescale -9 -12;
v0x2618ff0_0 .net "a", 3 0, L_0x262f540; 1 drivers
v0x26190b0_0 .net "b", 3 0, L_0x262f5e0; 1 drivers
v0x2619150_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x26191d0_0 .alias "carryout", 0 0, v0x2619790_0;
v0x2619250_0 .net8 "sum", 3 0, RS_0x2b6fffbd1e08; 4 drivers
v0x26192d0 .array "temp_cout", 0 2;
v0x26192d0_0 .net v0x26192d0 0, 0 0, L_0x262d590; 1 drivers
v0x26192d0_1 .net v0x26192d0 1, 0 0, L_0x262dd60; 1 drivers
v0x26192d0_2 .net v0x26192d0 2, 0 0, L_0x262e630; 1 drivers
L_0x262d660 .part/pv L_0x2623810, 0, 1, 4;
L_0x262d700 .part L_0x262f540, 0, 1;
L_0x262d830 .part L_0x262f5e0, 0, 1;
L_0x262ded0 .part/pv L_0x262d960, 1, 1, 4;
L_0x262dfc0 .part L_0x262f540, 1, 1;
L_0x262e0f0 .part L_0x262f5e0, 1, 1;
L_0x262e7c0 .part/pv L_0x262e260, 2, 1, 4;
L_0x262e860 .part L_0x262f540, 2, 1;
L_0x262e990 .part L_0x262f5e0, 2, 1;
L_0x262eff0 .part/pv L_0x262eac0, 3, 1, 4;
L_0x262f120 .part L_0x262f540, 3, 1;
L_0x262f2e0 .part L_0x262f5e0, 3, 1;
S_0x26189f0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x2617650;
 .timescale -9 -12;
L_0x2623810/d .functor XOR 1, L_0x262d700, L_0x262d830, C4<0>, C4<0>;
L_0x2623810 .delay (30000,30000,30000) L_0x2623810/d;
L_0x262cf20/d .functor AND 1, L_0x262d700, L_0x262d830, C4<1>, C4<1>;
L_0x262cf20 .delay (20000,20000,20000) L_0x262cf20/d;
L_0x262d370/d .functor AND 1, L_0x262d700, C4<0>, C4<1>, C4<1>;
L_0x262d370 .delay (20000,20000,20000) L_0x262d370/d;
L_0x262d410/d .functor AND 1, L_0x262d830, C4<0>, C4<1>, C4<1>;
L_0x262d410 .delay (20000,20000,20000) L_0x262d410/d;
L_0x262d590/d .functor OR 1, L_0x262cf20, L_0x262d370, L_0x262d410, C4<0>;
L_0x262d590 .delay (20000,20000,20000) L_0x262d590/d;
v0x2618ae0_0 .net "AandB", 0 0, L_0x262cf20; 1 drivers
v0x2618ba0_0 .net "AandC", 0 0, L_0x262d370; 1 drivers
v0x2618c40_0 .net "BandC", 0 0, L_0x262d410; 1 drivers
v0x2618ce0_0 .net "a", 0 0, L_0x262d700; 1 drivers
v0x2618d60_0 .net "b", 0 0, L_0x262d830; 1 drivers
v0x2618e00_0 .alias "carryin", 0 0, v0x2619150_0;
v0x2618ea0_0 .alias "carryout", 0 0, v0x26192d0_0;
v0x2618f20_0 .net "sum", 0 0, L_0x2623810; 1 drivers
S_0x26183f0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x2617650;
 .timescale -9 -12;
L_0x262d960/d .functor XOR 1, L_0x262dfc0, L_0x262e0f0, L_0x262d590, C4<0>;
L_0x262d960 .delay (30000,30000,30000) L_0x262d960/d;
L_0x262db20/d .functor AND 1, L_0x262dfc0, L_0x262e0f0, C4<1>, C4<1>;
L_0x262db20 .delay (20000,20000,20000) L_0x262db20/d;
L_0x262dbf0/d .functor AND 1, L_0x262dfc0, L_0x262d590, C4<1>, C4<1>;
L_0x262dbf0 .delay (20000,20000,20000) L_0x262dbf0/d;
L_0x262dc90/d .functor AND 1, L_0x262e0f0, L_0x262d590, C4<1>, C4<1>;
L_0x262dc90 .delay (20000,20000,20000) L_0x262dc90/d;
L_0x262dd60/d .functor OR 1, L_0x262db20, L_0x262dbf0, L_0x262dc90, C4<0>;
L_0x262dd60 .delay (20000,20000,20000) L_0x262dd60/d;
v0x26184e0_0 .net "AandB", 0 0, L_0x262db20; 1 drivers
v0x26185a0_0 .net "AandC", 0 0, L_0x262dbf0; 1 drivers
v0x2618640_0 .net "BandC", 0 0, L_0x262dc90; 1 drivers
v0x26186e0_0 .net "a", 0 0, L_0x262dfc0; 1 drivers
v0x2618760_0 .net "b", 0 0, L_0x262e0f0; 1 drivers
v0x2618800_0 .alias "carryin", 0 0, v0x26192d0_0;
v0x26188a0_0 .alias "carryout", 0 0, v0x26192d0_1;
v0x2618920_0 .net "sum", 0 0, L_0x262d960; 1 drivers
S_0x2617df0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x2617650;
 .timescale -9 -12;
L_0x262e260/d .functor XOR 1, L_0x262e860, L_0x262e990, L_0x262dd60, C4<0>;
L_0x262e260 .delay (30000,30000,30000) L_0x262e260/d;
L_0x262e390/d .functor AND 1, L_0x262e860, L_0x262e990, C4<1>, C4<1>;
L_0x262e390 .delay (20000,20000,20000) L_0x262e390/d;
L_0x262e4d0/d .functor AND 1, L_0x262e860, L_0x262dd60, C4<1>, C4<1>;
L_0x262e4d0 .delay (20000,20000,20000) L_0x262e4d0/d;
L_0x262e570/d .functor AND 1, L_0x262e990, L_0x262dd60, C4<1>, C4<1>;
L_0x262e570 .delay (20000,20000,20000) L_0x262e570/d;
L_0x262e630/d .functor OR 1, L_0x262e390, L_0x262e4d0, L_0x262e570, C4<0>;
L_0x262e630 .delay (20000,20000,20000) L_0x262e630/d;
v0x2617ee0_0 .net "AandB", 0 0, L_0x262e390; 1 drivers
v0x2617fa0_0 .net "AandC", 0 0, L_0x262e4d0; 1 drivers
v0x2618040_0 .net "BandC", 0 0, L_0x262e570; 1 drivers
v0x26180e0_0 .net "a", 0 0, L_0x262e860; 1 drivers
v0x2618160_0 .net "b", 0 0, L_0x262e990; 1 drivers
v0x2618200_0 .alias "carryin", 0 0, v0x26192d0_1;
v0x26182a0_0 .alias "carryout", 0 0, v0x26192d0_2;
v0x2618320_0 .net "sum", 0 0, L_0x262e260; 1 drivers
S_0x2617740 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x2617650;
 .timescale -9 -12;
L_0x262eac0/d .functor XOR 1, L_0x262f120, L_0x262f2e0, L_0x262e630, C4<0>;
L_0x262eac0 .delay (30000,30000,30000) L_0x262eac0/d;
L_0x262ebb0/d .functor AND 1, L_0x262f120, L_0x262f2e0, C4<1>, C4<1>;
L_0x262ebb0 .delay (20000,20000,20000) L_0x262ebb0/d;
L_0x262ecd0/d .functor AND 1, L_0x262f120, L_0x262e630, C4<1>, C4<1>;
L_0x262ecd0 .delay (20000,20000,20000) L_0x262ecd0/d;
L_0x262ed90/d .functor AND 1, L_0x262f2e0, L_0x262e630, C4<1>, C4<1>;
L_0x262ed90 .delay (20000,20000,20000) L_0x262ed90/d;
L_0x262ee80/d .functor OR 1, L_0x262ebb0, L_0x262ecd0, L_0x262ed90, C4<0>;
L_0x262ee80 .delay (20000,20000,20000) L_0x262ee80/d;
v0x2617830_0 .net "AandB", 0 0, L_0x262ebb0; 1 drivers
v0x26178f0_0 .net "AandC", 0 0, L_0x262ecd0; 1 drivers
v0x2617990_0 .net "BandC", 0 0, L_0x262ed90; 1 drivers
v0x2617a30_0 .net "a", 0 0, L_0x262f120; 1 drivers
v0x2617ab0_0 .net "b", 0 0, L_0x262f2e0; 1 drivers
v0x2617b50_0 .alias "carryin", 0 0, v0x26192d0_2;
v0x2617c30_0 .alias "carryout", 0 0, v0x2619790_0;
v0x2617d00_0 .net "sum", 0 0, L_0x262eac0; 1 drivers
S_0x2615860 .scope module, "f41" "CompAdder4bit" 2 60, 2 30, S_0x260a620;
 .timescale -9 -12;
v0x2617200_0 .net "a", 3 0, L_0x2631c70; 1 drivers
v0x26172c0_0 .net "b", 3 0, L_0x2631d10; 1 drivers
v0x2617360_0 .alias "carryin", 0 0, v0x2619790_0;
v0x26173e0_0 .alias "carryout", 0 0, v0x2619790_1;
v0x2617460_0 .net8 "sum", 3 0, RS_0x2b6fffbd1838; 4 drivers
v0x26174e0 .array "temp_cout", 0 2;
v0x26174e0_0 .net v0x26174e0 0, 0 0, L_0x262fa80; 1 drivers
v0x26174e0_1 .net v0x26174e0 1, 0 0, L_0x2630340; 1 drivers
v0x26174e0_2 .net v0x26174e0 2, 0 0, L_0x2630c40; 1 drivers
L_0x262fc40 .part/pv L_0x262f6c0, 0, 1, 4;
L_0x262fce0 .part L_0x2631c70, 0, 1;
L_0x262fe10 .part L_0x2631d10, 0, 1;
L_0x2630500 .part/pv L_0x262ff40, 1, 1, 4;
L_0x26305f0 .part L_0x2631c70, 1, 1;
L_0x2630720 .part L_0x2631d10, 1, 1;
L_0x2630dd0 .part/pv L_0x2630890, 2, 1, 4;
L_0x2630e70 .part L_0x2631c70, 2, 1;
L_0x2630fa0 .part L_0x2631d10, 2, 1;
L_0x2631650 .part/pv L_0x26310d0, 3, 1, 4;
L_0x26317e0 .part L_0x2631c70, 3, 1;
L_0x26319a0 .part L_0x2631d10, 3, 1;
S_0x2616c00 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x2615860;
 .timescale -9 -12;
L_0x262f6c0/d .functor XOR 1, L_0x262fce0, L_0x262fe10, L_0x262ee80, C4<0>;
L_0x262f6c0 .delay (30000,30000,30000) L_0x262f6c0/d;
L_0x262f760/d .functor AND 1, L_0x262fce0, L_0x262fe10, C4<1>, C4<1>;
L_0x262f760 .delay (20000,20000,20000) L_0x262f760/d;
L_0x262f850/d .functor AND 1, L_0x262fce0, L_0x262ee80, C4<1>, C4<1>;
L_0x262f850 .delay (20000,20000,20000) L_0x262f850/d;
L_0x262f8f0/d .functor AND 1, L_0x262fe10, L_0x262ee80, C4<1>, C4<1>;
L_0x262f8f0 .delay (20000,20000,20000) L_0x262f8f0/d;
L_0x262fa80/d .functor OR 1, L_0x262f760, L_0x262f850, L_0x262f8f0, C4<0>;
L_0x262fa80 .delay (20000,20000,20000) L_0x262fa80/d;
v0x2616cf0_0 .net "AandB", 0 0, L_0x262f760; 1 drivers
v0x2616db0_0 .net "AandC", 0 0, L_0x262f850; 1 drivers
v0x2616e50_0 .net "BandC", 0 0, L_0x262f8f0; 1 drivers
v0x2616ef0_0 .net "a", 0 0, L_0x262fce0; 1 drivers
v0x2616f70_0 .net "b", 0 0, L_0x262fe10; 1 drivers
v0x2617010_0 .alias "carryin", 0 0, v0x2619790_0;
v0x26170b0_0 .alias "carryout", 0 0, v0x26174e0_0;
v0x2617130_0 .net "sum", 0 0, L_0x262f6c0; 1 drivers
S_0x2616600 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x2615860;
 .timescale -9 -12;
L_0x262ff40/d .functor XOR 1, L_0x26305f0, L_0x2630720, L_0x262fa80, C4<0>;
L_0x262ff40 .delay (30000,30000,30000) L_0x262ff40/d;
L_0x2630100/d .functor AND 1, L_0x26305f0, L_0x2630720, C4<1>, C4<1>;
L_0x2630100 .delay (20000,20000,20000) L_0x2630100/d;
L_0x26301d0/d .functor AND 1, L_0x26305f0, L_0x262fa80, C4<1>, C4<1>;
L_0x26301d0 .delay (20000,20000,20000) L_0x26301d0/d;
L_0x2630270/d .functor AND 1, L_0x2630720, L_0x262fa80, C4<1>, C4<1>;
L_0x2630270 .delay (20000,20000,20000) L_0x2630270/d;
L_0x2630340/d .functor OR 1, L_0x2630100, L_0x26301d0, L_0x2630270, C4<0>;
L_0x2630340 .delay (20000,20000,20000) L_0x2630340/d;
v0x26166f0_0 .net "AandB", 0 0, L_0x2630100; 1 drivers
v0x26167b0_0 .net "AandC", 0 0, L_0x26301d0; 1 drivers
v0x2616850_0 .net "BandC", 0 0, L_0x2630270; 1 drivers
v0x26168f0_0 .net "a", 0 0, L_0x26305f0; 1 drivers
v0x2616970_0 .net "b", 0 0, L_0x2630720; 1 drivers
v0x2616a10_0 .alias "carryin", 0 0, v0x26174e0_0;
v0x2616ab0_0 .alias "carryout", 0 0, v0x26174e0_1;
v0x2616b30_0 .net "sum", 0 0, L_0x262ff40; 1 drivers
S_0x2616000 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x2615860;
 .timescale -9 -12;
L_0x2630890/d .functor XOR 1, L_0x2630e70, L_0x2630fa0, L_0x2630340, C4<0>;
L_0x2630890 .delay (30000,30000,30000) L_0x2630890/d;
L_0x26309c0/d .functor AND 1, L_0x2630e70, L_0x2630fa0, C4<1>, C4<1>;
L_0x26309c0 .delay (20000,20000,20000) L_0x26309c0/d;
L_0x2630b00/d .functor AND 1, L_0x2630e70, L_0x2630340, C4<1>, C4<1>;
L_0x2630b00 .delay (20000,20000,20000) L_0x2630b00/d;
L_0x2630ba0/d .functor AND 1, L_0x2630fa0, L_0x2630340, C4<1>, C4<1>;
L_0x2630ba0 .delay (20000,20000,20000) L_0x2630ba0/d;
L_0x2630c40/d .functor OR 1, L_0x26309c0, L_0x2630b00, L_0x2630ba0, C4<0>;
L_0x2630c40 .delay (20000,20000,20000) L_0x2630c40/d;
v0x26160f0_0 .net "AandB", 0 0, L_0x26309c0; 1 drivers
v0x26161b0_0 .net "AandC", 0 0, L_0x2630b00; 1 drivers
v0x2616250_0 .net "BandC", 0 0, L_0x2630ba0; 1 drivers
v0x26162f0_0 .net "a", 0 0, L_0x2630e70; 1 drivers
v0x2616370_0 .net "b", 0 0, L_0x2630fa0; 1 drivers
v0x2616410_0 .alias "carryin", 0 0, v0x26174e0_1;
v0x26164b0_0 .alias "carryout", 0 0, v0x26174e0_2;
v0x2616530_0 .net "sum", 0 0, L_0x2630890; 1 drivers
S_0x2615950 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x2615860;
 .timescale -9 -12;
L_0x26310d0/d .functor XOR 1, L_0x26317e0, L_0x26319a0, L_0x2630c40, C4<0>;
L_0x26310d0 .delay (30000,30000,30000) L_0x26310d0/d;
L_0x26311c0/d .functor AND 1, L_0x26317e0, L_0x26319a0, C4<1>, C4<1>;
L_0x26311c0 .delay (20000,20000,20000) L_0x26311c0/d;
L_0x26312e0/d .functor AND 1, L_0x26317e0, L_0x2630c40, C4<1>, C4<1>;
L_0x26312e0 .delay (20000,20000,20000) L_0x26312e0/d;
L_0x26313a0/d .functor AND 1, L_0x26319a0, L_0x2630c40, C4<1>, C4<1>;
L_0x26313a0 .delay (20000,20000,20000) L_0x26313a0/d;
L_0x2631490/d .functor OR 1, L_0x26311c0, L_0x26312e0, L_0x26313a0, C4<0>;
L_0x2631490 .delay (20000,20000,20000) L_0x2631490/d;
v0x2615a40_0 .net "AandB", 0 0, L_0x26311c0; 1 drivers
v0x2615b00_0 .net "AandC", 0 0, L_0x26312e0; 1 drivers
v0x2615ba0_0 .net "BandC", 0 0, L_0x26313a0; 1 drivers
v0x2615c40_0 .net "a", 0 0, L_0x26317e0; 1 drivers
v0x2615cc0_0 .net "b", 0 0, L_0x26319a0; 1 drivers
v0x2615d60_0 .alias "carryin", 0 0, v0x26174e0_2;
v0x2615e40_0 .alias "carryout", 0 0, v0x2619790_1;
v0x2615f10_0 .net "sum", 0 0, L_0x26310d0; 1 drivers
S_0x2613a70 .scope module, "f42" "CompAdder4bit" 2 61, 2 30, S_0x260a620;
 .timescale -9 -12;
v0x2615410_0 .net "a", 3 0, L_0x26342b0; 1 drivers
v0x26154d0_0 .net "b", 3 0, L_0x26343e0; 1 drivers
v0x2615570_0 .alias "carryin", 0 0, v0x2619790_1;
v0x26155f0_0 .alias "carryout", 0 0, v0x2619790_2;
v0x2615670_0 .net8 "sum", 3 0, RS_0x2b6fffbd1268; 4 drivers
v0x26156f0 .array "temp_cout", 0 2;
v0x26156f0_0 .net v0x26156f0 0, 0 0, L_0x2632120; 1 drivers
v0x26156f0_1 .net v0x26156f0 1, 0 0, L_0x26328f0; 1 drivers
v0x26156f0_2 .net v0x26156f0 2, 0 0, L_0x26331f0; 1 drivers
L_0x26321f0 .part/pv L_0x2631780, 0, 1, 4;
L_0x2632290 .part L_0x26342b0, 0, 1;
L_0x26323c0 .part L_0x26343e0, 0, 1;
L_0x2632ab0 .part/pv L_0x26324f0, 1, 1, 4;
L_0x2632ba0 .part L_0x26342b0, 1, 1;
L_0x2632cd0 .part L_0x26343e0, 1, 1;
L_0x2633380 .part/pv L_0x2632e40, 2, 1, 4;
L_0x2633420 .part L_0x26342b0, 2, 1;
L_0x2633550 .part L_0x26343e0, 2, 1;
L_0x2633c00 .part/pv L_0x2633680, 3, 1, 4;
L_0x2633d90 .part L_0x26342b0, 3, 1;
L_0x2633f50 .part L_0x26343e0, 3, 1;
S_0x2614e10 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x2613a70;
 .timescale -9 -12;
L_0x2631780/d .functor XOR 1, L_0x2632290, L_0x26323c0, L_0x2631490, C4<0>;
L_0x2631780 .delay (30000,30000,30000) L_0x2631780/d;
L_0x2631e30/d .functor AND 1, L_0x2632290, L_0x26323c0, C4<1>, C4<1>;
L_0x2631e30 .delay (20000,20000,20000) L_0x2631e30/d;
L_0x2631ed0/d .functor AND 1, L_0x2632290, L_0x2631490, C4<1>, C4<1>;
L_0x2631ed0 .delay (20000,20000,20000) L_0x2631ed0/d;
L_0x2631f90/d .functor AND 1, L_0x26323c0, L_0x2631490, C4<1>, C4<1>;
L_0x2631f90 .delay (20000,20000,20000) L_0x2631f90/d;
L_0x2632120/d .functor OR 1, L_0x2631e30, L_0x2631ed0, L_0x2631f90, C4<0>;
L_0x2632120 .delay (20000,20000,20000) L_0x2632120/d;
v0x2614f00_0 .net "AandB", 0 0, L_0x2631e30; 1 drivers
v0x2614fc0_0 .net "AandC", 0 0, L_0x2631ed0; 1 drivers
v0x2615060_0 .net "BandC", 0 0, L_0x2631f90; 1 drivers
v0x2615100_0 .net "a", 0 0, L_0x2632290; 1 drivers
v0x2615180_0 .net "b", 0 0, L_0x26323c0; 1 drivers
v0x2615220_0 .alias "carryin", 0 0, v0x2619790_1;
v0x26152c0_0 .alias "carryout", 0 0, v0x26156f0_0;
v0x2615340_0 .net "sum", 0 0, L_0x2631780; 1 drivers
S_0x2614810 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x2613a70;
 .timescale -9 -12;
L_0x26324f0/d .functor XOR 1, L_0x2632ba0, L_0x2632cd0, L_0x2632120, C4<0>;
L_0x26324f0 .delay (30000,30000,30000) L_0x26324f0/d;
L_0x26326b0/d .functor AND 1, L_0x2632ba0, L_0x2632cd0, C4<1>, C4<1>;
L_0x26326b0 .delay (20000,20000,20000) L_0x26326b0/d;
L_0x2632780/d .functor AND 1, L_0x2632ba0, L_0x2632120, C4<1>, C4<1>;
L_0x2632780 .delay (20000,20000,20000) L_0x2632780/d;
L_0x2632820/d .functor AND 1, L_0x2632cd0, L_0x2632120, C4<1>, C4<1>;
L_0x2632820 .delay (20000,20000,20000) L_0x2632820/d;
L_0x26328f0/d .functor OR 1, L_0x26326b0, L_0x2632780, L_0x2632820, C4<0>;
L_0x26328f0 .delay (20000,20000,20000) L_0x26328f0/d;
v0x2614900_0 .net "AandB", 0 0, L_0x26326b0; 1 drivers
v0x26149c0_0 .net "AandC", 0 0, L_0x2632780; 1 drivers
v0x2614a60_0 .net "BandC", 0 0, L_0x2632820; 1 drivers
v0x2614b00_0 .net "a", 0 0, L_0x2632ba0; 1 drivers
v0x2614b80_0 .net "b", 0 0, L_0x2632cd0; 1 drivers
v0x2614c20_0 .alias "carryin", 0 0, v0x26156f0_0;
v0x2614cc0_0 .alias "carryout", 0 0, v0x26156f0_1;
v0x2614d40_0 .net "sum", 0 0, L_0x26324f0; 1 drivers
S_0x2614210 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x2613a70;
 .timescale -9 -12;
L_0x2632e40/d .functor XOR 1, L_0x2633420, L_0x2633550, L_0x26328f0, C4<0>;
L_0x2632e40 .delay (30000,30000,30000) L_0x2632e40/d;
L_0x2632f70/d .functor AND 1, L_0x2633420, L_0x2633550, C4<1>, C4<1>;
L_0x2632f70 .delay (20000,20000,20000) L_0x2632f70/d;
L_0x26330b0/d .functor AND 1, L_0x2633420, L_0x26328f0, C4<1>, C4<1>;
L_0x26330b0 .delay (20000,20000,20000) L_0x26330b0/d;
L_0x2633150/d .functor AND 1, L_0x2633550, L_0x26328f0, C4<1>, C4<1>;
L_0x2633150 .delay (20000,20000,20000) L_0x2633150/d;
L_0x26331f0/d .functor OR 1, L_0x2632f70, L_0x26330b0, L_0x2633150, C4<0>;
L_0x26331f0 .delay (20000,20000,20000) L_0x26331f0/d;
v0x2614300_0 .net "AandB", 0 0, L_0x2632f70; 1 drivers
v0x26143c0_0 .net "AandC", 0 0, L_0x26330b0; 1 drivers
v0x2614460_0 .net "BandC", 0 0, L_0x2633150; 1 drivers
v0x2614500_0 .net "a", 0 0, L_0x2633420; 1 drivers
v0x2614580_0 .net "b", 0 0, L_0x2633550; 1 drivers
v0x2614620_0 .alias "carryin", 0 0, v0x26156f0_1;
v0x26146c0_0 .alias "carryout", 0 0, v0x26156f0_2;
v0x2614740_0 .net "sum", 0 0, L_0x2632e40; 1 drivers
S_0x2613b60 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x2613a70;
 .timescale -9 -12;
L_0x2633680/d .functor XOR 1, L_0x2633d90, L_0x2633f50, L_0x26331f0, C4<0>;
L_0x2633680 .delay (30000,30000,30000) L_0x2633680/d;
L_0x2633770/d .functor AND 1, L_0x2633d90, L_0x2633f50, C4<1>, C4<1>;
L_0x2633770 .delay (20000,20000,20000) L_0x2633770/d;
L_0x2633890/d .functor AND 1, L_0x2633d90, L_0x26331f0, C4<1>, C4<1>;
L_0x2633890 .delay (20000,20000,20000) L_0x2633890/d;
L_0x2633950/d .functor AND 1, L_0x2633f50, L_0x26331f0, C4<1>, C4<1>;
L_0x2633950 .delay (20000,20000,20000) L_0x2633950/d;
L_0x2633a40/d .functor OR 1, L_0x2633770, L_0x2633890, L_0x2633950, C4<0>;
L_0x2633a40 .delay (20000,20000,20000) L_0x2633a40/d;
v0x2613c50_0 .net "AandB", 0 0, L_0x2633770; 1 drivers
v0x2613d10_0 .net "AandC", 0 0, L_0x2633890; 1 drivers
v0x2613db0_0 .net "BandC", 0 0, L_0x2633950; 1 drivers
v0x2613e50_0 .net "a", 0 0, L_0x2633d90; 1 drivers
v0x2613ed0_0 .net "b", 0 0, L_0x2633f50; 1 drivers
v0x2613f70_0 .alias "carryin", 0 0, v0x26156f0_2;
v0x2614050_0 .alias "carryout", 0 0, v0x2619790_2;
v0x2614120_0 .net "sum", 0 0, L_0x2633680; 1 drivers
S_0x2611c80 .scope module, "f43" "CompAdder4bit" 2 62, 2 30, S_0x260a620;
 .timescale -9 -12;
v0x2613620_0 .net "a", 3 0, L_0x2636890; 1 drivers
v0x26136e0_0 .net "b", 3 0, L_0x2636930; 1 drivers
v0x2613780_0 .alias "carryin", 0 0, v0x2619790_2;
v0x2613800_0 .alias "carryout", 0 0, v0x2619790_3;
v0x2613880_0 .net8 "sum", 3 0, RS_0x2b6fffbd0c98; 4 drivers
v0x2613900 .array "temp_cout", 0 2;
v0x2613900_0 .net v0x2613900 0, 0 0, L_0x2634830; 1 drivers
v0x2613900_1 .net v0x2613900 1, 0 0, L_0x2635000; 1 drivers
v0x2613900_2 .net v0x2613900 2, 0 0, L_0x2635860; 1 drivers
L_0x2634900 .part/pv L_0x2633d30, 0, 1, 4;
L_0x26349a0 .part L_0x2636890, 0, 1;
L_0x2634ad0 .part L_0x2636930, 0, 1;
L_0x2635120 .part/pv L_0x2634c00, 1, 1, 4;
L_0x2635210 .part L_0x2636890, 1, 1;
L_0x2635340 .part L_0x2636930, 1, 1;
L_0x26359f0 .part/pv L_0x26354b0, 2, 1, 4;
L_0x2635a90 .part L_0x2636890, 2, 1;
L_0x2635bc0 .part L_0x2636930, 2, 1;
L_0x2636270 .part/pv L_0x2635cf0, 3, 1, 4;
L_0x2636400 .part L_0x2636890, 3, 1;
L_0x26365c0 .part L_0x2636930, 3, 1;
S_0x2613020 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x2611c80;
 .timescale -9 -12;
L_0x2633d30/d .functor XOR 1, L_0x26349a0, L_0x2634ad0, L_0x2633a40, C4<0>;
L_0x2633d30 .delay (30000,30000,30000) L_0x2633d30/d;
L_0x2634510/d .functor AND 1, L_0x26349a0, L_0x2634ad0, C4<1>, C4<1>;
L_0x2634510 .delay (20000,20000,20000) L_0x2634510/d;
L_0x26345e0/d .functor AND 1, L_0x26349a0, L_0x2633a40, C4<1>, C4<1>;
L_0x26345e0 .delay (20000,20000,20000) L_0x26345e0/d;
L_0x26346a0/d .functor AND 1, L_0x2634ad0, L_0x2633a40, C4<1>, C4<1>;
L_0x26346a0 .delay (20000,20000,20000) L_0x26346a0/d;
L_0x2634830/d .functor OR 1, L_0x2634510, L_0x26345e0, L_0x26346a0, C4<0>;
L_0x2634830 .delay (20000,20000,20000) L_0x2634830/d;
v0x2613110_0 .net "AandB", 0 0, L_0x2634510; 1 drivers
v0x26131d0_0 .net "AandC", 0 0, L_0x26345e0; 1 drivers
v0x2613270_0 .net "BandC", 0 0, L_0x26346a0; 1 drivers
v0x2613310_0 .net "a", 0 0, L_0x26349a0; 1 drivers
v0x2613390_0 .net "b", 0 0, L_0x2634ad0; 1 drivers
v0x2613430_0 .alias "carryin", 0 0, v0x2619790_2;
v0x26134d0_0 .alias "carryout", 0 0, v0x2613900_0;
v0x2613550_0 .net "sum", 0 0, L_0x2633d30; 1 drivers
S_0x2612a20 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x2611c80;
 .timescale -9 -12;
L_0x2634c00/d .functor XOR 1, L_0x2635210, L_0x2635340, L_0x2634830, C4<0>;
L_0x2634c00 .delay (30000,30000,30000) L_0x2634c00/d;
L_0x2634dc0/d .functor AND 1, L_0x2635210, L_0x2635340, C4<1>, C4<1>;
L_0x2634dc0 .delay (20000,20000,20000) L_0x2634dc0/d;
L_0x2634e90/d .functor AND 1, L_0x2635210, L_0x2634830, C4<1>, C4<1>;
L_0x2634e90 .delay (20000,20000,20000) L_0x2634e90/d;
L_0x2634f30/d .functor AND 1, L_0x2635340, L_0x2634830, C4<1>, C4<1>;
L_0x2634f30 .delay (20000,20000,20000) L_0x2634f30/d;
L_0x2635000/d .functor OR 1, L_0x2634dc0, L_0x2634e90, L_0x2634f30, C4<0>;
L_0x2635000 .delay (20000,20000,20000) L_0x2635000/d;
v0x2612b10_0 .net "AandB", 0 0, L_0x2634dc0; 1 drivers
v0x2612bd0_0 .net "AandC", 0 0, L_0x2634e90; 1 drivers
v0x2612c70_0 .net "BandC", 0 0, L_0x2634f30; 1 drivers
v0x2612d10_0 .net "a", 0 0, L_0x2635210; 1 drivers
v0x2612d90_0 .net "b", 0 0, L_0x2635340; 1 drivers
v0x2612e30_0 .alias "carryin", 0 0, v0x2613900_0;
v0x2612ed0_0 .alias "carryout", 0 0, v0x2613900_1;
v0x2612f50_0 .net "sum", 0 0, L_0x2634c00; 1 drivers
S_0x2612420 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x2611c80;
 .timescale -9 -12;
L_0x26354b0/d .functor XOR 1, L_0x2635a90, L_0x2635bc0, L_0x2635000, C4<0>;
L_0x26354b0 .delay (30000,30000,30000) L_0x26354b0/d;
L_0x26355e0/d .functor AND 1, L_0x2635a90, L_0x2635bc0, C4<1>, C4<1>;
L_0x26355e0 .delay (20000,20000,20000) L_0x26355e0/d;
L_0x2635720/d .functor AND 1, L_0x2635a90, L_0x2635000, C4<1>, C4<1>;
L_0x2635720 .delay (20000,20000,20000) L_0x2635720/d;
L_0x26357c0/d .functor AND 1, L_0x2635bc0, L_0x2635000, C4<1>, C4<1>;
L_0x26357c0 .delay (20000,20000,20000) L_0x26357c0/d;
L_0x2635860/d .functor OR 1, L_0x26355e0, L_0x2635720, L_0x26357c0, C4<0>;
L_0x2635860 .delay (20000,20000,20000) L_0x2635860/d;
v0x2612510_0 .net "AandB", 0 0, L_0x26355e0; 1 drivers
v0x26125d0_0 .net "AandC", 0 0, L_0x2635720; 1 drivers
v0x2612670_0 .net "BandC", 0 0, L_0x26357c0; 1 drivers
v0x2612710_0 .net "a", 0 0, L_0x2635a90; 1 drivers
v0x2612790_0 .net "b", 0 0, L_0x2635bc0; 1 drivers
v0x2612830_0 .alias "carryin", 0 0, v0x2613900_1;
v0x26128d0_0 .alias "carryout", 0 0, v0x2613900_2;
v0x2612950_0 .net "sum", 0 0, L_0x26354b0; 1 drivers
S_0x2611d70 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x2611c80;
 .timescale -9 -12;
L_0x2635cf0/d .functor XOR 1, L_0x2636400, L_0x26365c0, L_0x2635860, C4<0>;
L_0x2635cf0 .delay (30000,30000,30000) L_0x2635cf0/d;
L_0x2635de0/d .functor AND 1, L_0x2636400, L_0x26365c0, C4<1>, C4<1>;
L_0x2635de0 .delay (20000,20000,20000) L_0x2635de0/d;
L_0x2635f00/d .functor AND 1, L_0x2636400, L_0x2635860, C4<1>, C4<1>;
L_0x2635f00 .delay (20000,20000,20000) L_0x2635f00/d;
L_0x2635fc0/d .functor AND 1, L_0x26365c0, L_0x2635860, C4<1>, C4<1>;
L_0x2635fc0 .delay (20000,20000,20000) L_0x2635fc0/d;
L_0x26360b0/d .functor OR 1, L_0x2635de0, L_0x2635f00, L_0x2635fc0, C4<0>;
L_0x26360b0 .delay (20000,20000,20000) L_0x26360b0/d;
v0x2611e60_0 .net "AandB", 0 0, L_0x2635de0; 1 drivers
v0x2611f20_0 .net "AandC", 0 0, L_0x2635f00; 1 drivers
v0x2611fc0_0 .net "BandC", 0 0, L_0x2635fc0; 1 drivers
v0x2612060_0 .net "a", 0 0, L_0x2636400; 1 drivers
v0x26120e0_0 .net "b", 0 0, L_0x26365c0; 1 drivers
v0x2612180_0 .alias "carryin", 0 0, v0x2613900_2;
v0x2612260_0 .alias "carryout", 0 0, v0x2619790_3;
v0x2612330_0 .net "sum", 0 0, L_0x2635cf0; 1 drivers
S_0x260fe90 .scope module, "f44" "CompAdder4bit" 2 63, 2 30, S_0x260a620;
 .timescale -9 -12;
v0x2611830_0 .net "a", 3 0, L_0x2638e50; 1 drivers
v0x26118f0_0 .net "b", 3 0, L_0x2638f70; 1 drivers
v0x2611990_0 .alias "carryin", 0 0, v0x2619790_3;
v0x2611a10_0 .alias "carryout", 0 0, v0x2619790_4;
v0x2611a90_0 .net8 "sum", 3 0, RS_0x2b6fffbd06c8; 4 drivers
v0x2611b10 .array "temp_cout", 0 2;
v0x2611b10_0 .net v0x2611b10 0, 0 0, L_0x2636da0; 1 drivers
v0x2611b10_1 .net v0x2611b10 1, 0 0, L_0x2637570; 1 drivers
v0x2611b10_2 .net v0x2611b10 2, 0 0, L_0x2637e20; 1 drivers
L_0x2636e70 .part/pv L_0x26363a0, 0, 1, 4;
L_0x2636f10 .part L_0x2638e50, 0, 1;
L_0x2637040 .part L_0x2638f70, 0, 1;
L_0x26376e0 .part/pv L_0x2637170, 1, 1, 4;
L_0x26377d0 .part L_0x2638e50, 1, 1;
L_0x2637900 .part L_0x2638f70, 1, 1;
L_0x2637fb0 .part/pv L_0x2637a70, 2, 1, 4;
L_0x2638050 .part L_0x2638e50, 2, 1;
L_0x2638180 .part L_0x2638f70, 2, 1;
L_0x2638830 .part/pv L_0x26382b0, 3, 1, 4;
L_0x26389c0 .part L_0x2638e50, 3, 1;
L_0x2638b80 .part L_0x2638f70, 3, 1;
S_0x2611230 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x260fe90;
 .timescale -9 -12;
L_0x26363a0/d .functor XOR 1, L_0x2636f10, L_0x2637040, L_0x26360b0, C4<0>;
L_0x26363a0 .delay (30000,30000,30000) L_0x26363a0/d;
L_0x2636a80/d .functor AND 1, L_0x2636f10, L_0x2637040, C4<1>, C4<1>;
L_0x2636a80 .delay (20000,20000,20000) L_0x2636a80/d;
L_0x2636b50/d .functor AND 1, L_0x2636f10, L_0x26360b0, C4<1>, C4<1>;
L_0x2636b50 .delay (20000,20000,20000) L_0x2636b50/d;
L_0x2636c10/d .functor AND 1, L_0x2637040, L_0x26360b0, C4<1>, C4<1>;
L_0x2636c10 .delay (20000,20000,20000) L_0x2636c10/d;
L_0x2636da0/d .functor OR 1, L_0x2636a80, L_0x2636b50, L_0x2636c10, C4<0>;
L_0x2636da0 .delay (20000,20000,20000) L_0x2636da0/d;
v0x2611320_0 .net "AandB", 0 0, L_0x2636a80; 1 drivers
v0x26113e0_0 .net "AandC", 0 0, L_0x2636b50; 1 drivers
v0x2611480_0 .net "BandC", 0 0, L_0x2636c10; 1 drivers
v0x2611520_0 .net "a", 0 0, L_0x2636f10; 1 drivers
v0x26115a0_0 .net "b", 0 0, L_0x2637040; 1 drivers
v0x2611640_0 .alias "carryin", 0 0, v0x2619790_3;
v0x26116e0_0 .alias "carryout", 0 0, v0x2611b10_0;
v0x2611760_0 .net "sum", 0 0, L_0x26363a0; 1 drivers
S_0x2610c30 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x260fe90;
 .timescale -9 -12;
L_0x2637170/d .functor XOR 1, L_0x26377d0, L_0x2637900, L_0x2636da0, C4<0>;
L_0x2637170 .delay (30000,30000,30000) L_0x2637170/d;
L_0x2637330/d .functor AND 1, L_0x26377d0, L_0x2637900, C4<1>, C4<1>;
L_0x2637330 .delay (20000,20000,20000) L_0x2637330/d;
L_0x2637400/d .functor AND 1, L_0x26377d0, L_0x2636da0, C4<1>, C4<1>;
L_0x2637400 .delay (20000,20000,20000) L_0x2637400/d;
L_0x26374a0/d .functor AND 1, L_0x2637900, L_0x2636da0, C4<1>, C4<1>;
L_0x26374a0 .delay (20000,20000,20000) L_0x26374a0/d;
L_0x2637570/d .functor OR 1, L_0x2637330, L_0x2637400, L_0x26374a0, C4<0>;
L_0x2637570 .delay (20000,20000,20000) L_0x2637570/d;
v0x2610d20_0 .net "AandB", 0 0, L_0x2637330; 1 drivers
v0x2610de0_0 .net "AandC", 0 0, L_0x2637400; 1 drivers
v0x2610e80_0 .net "BandC", 0 0, L_0x26374a0; 1 drivers
v0x2610f20_0 .net "a", 0 0, L_0x26377d0; 1 drivers
v0x2610fa0_0 .net "b", 0 0, L_0x2637900; 1 drivers
v0x2611040_0 .alias "carryin", 0 0, v0x2611b10_0;
v0x26110e0_0 .alias "carryout", 0 0, v0x2611b10_1;
v0x2611160_0 .net "sum", 0 0, L_0x2637170; 1 drivers
S_0x2610630 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x260fe90;
 .timescale -9 -12;
L_0x2637a70/d .functor XOR 1, L_0x2638050, L_0x2638180, L_0x2637570, C4<0>;
L_0x2637a70 .delay (30000,30000,30000) L_0x2637a70/d;
L_0x2637ba0/d .functor AND 1, L_0x2638050, L_0x2638180, C4<1>, C4<1>;
L_0x2637ba0 .delay (20000,20000,20000) L_0x2637ba0/d;
L_0x2637ce0/d .functor AND 1, L_0x2638050, L_0x2637570, C4<1>, C4<1>;
L_0x2637ce0 .delay (20000,20000,20000) L_0x2637ce0/d;
L_0x2637d80/d .functor AND 1, L_0x2638180, L_0x2637570, C4<1>, C4<1>;
L_0x2637d80 .delay (20000,20000,20000) L_0x2637d80/d;
L_0x2637e20/d .functor OR 1, L_0x2637ba0, L_0x2637ce0, L_0x2637d80, C4<0>;
L_0x2637e20 .delay (20000,20000,20000) L_0x2637e20/d;
v0x2610720_0 .net "AandB", 0 0, L_0x2637ba0; 1 drivers
v0x26107e0_0 .net "AandC", 0 0, L_0x2637ce0; 1 drivers
v0x2610880_0 .net "BandC", 0 0, L_0x2637d80; 1 drivers
v0x2610920_0 .net "a", 0 0, L_0x2638050; 1 drivers
v0x26109a0_0 .net "b", 0 0, L_0x2638180; 1 drivers
v0x2610a40_0 .alias "carryin", 0 0, v0x2611b10_1;
v0x2610ae0_0 .alias "carryout", 0 0, v0x2611b10_2;
v0x2610b60_0 .net "sum", 0 0, L_0x2637a70; 1 drivers
S_0x260ff80 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x260fe90;
 .timescale -9 -12;
L_0x26382b0/d .functor XOR 1, L_0x26389c0, L_0x2638b80, L_0x2637e20, C4<0>;
L_0x26382b0 .delay (30000,30000,30000) L_0x26382b0/d;
L_0x26383a0/d .functor AND 1, L_0x26389c0, L_0x2638b80, C4<1>, C4<1>;
L_0x26383a0 .delay (20000,20000,20000) L_0x26383a0/d;
L_0x26384c0/d .functor AND 1, L_0x26389c0, L_0x2637e20, C4<1>, C4<1>;
L_0x26384c0 .delay (20000,20000,20000) L_0x26384c0/d;
L_0x2638580/d .functor AND 1, L_0x2638b80, L_0x2637e20, C4<1>, C4<1>;
L_0x2638580 .delay (20000,20000,20000) L_0x2638580/d;
L_0x2638670/d .functor OR 1, L_0x26383a0, L_0x26384c0, L_0x2638580, C4<0>;
L_0x2638670 .delay (20000,20000,20000) L_0x2638670/d;
v0x2610070_0 .net "AandB", 0 0, L_0x26383a0; 1 drivers
v0x2610130_0 .net "AandC", 0 0, L_0x26384c0; 1 drivers
v0x26101d0_0 .net "BandC", 0 0, L_0x2638580; 1 drivers
v0x2610270_0 .net "a", 0 0, L_0x26389c0; 1 drivers
v0x26102f0_0 .net "b", 0 0, L_0x2638b80; 1 drivers
v0x2610390_0 .alias "carryin", 0 0, v0x2611b10_2;
v0x2610470_0 .alias "carryout", 0 0, v0x2619790_4;
v0x2610540_0 .net "sum", 0 0, L_0x26382b0; 1 drivers
S_0x260e0a0 .scope module, "f45" "CompAdder4bit" 2 64, 2 30, S_0x260a620;
 .timescale -9 -12;
v0x260fa40_0 .net "a", 3 0, L_0x263b490; 1 drivers
v0x260fb00_0 .net "b", 3 0, L_0x263b530; 1 drivers
v0x260fba0_0 .alias "carryin", 0 0, v0x2619790_4;
v0x260fc20_0 .alias "carryout", 0 0, v0x2619790_5;
v0x260fca0_0 .net8 "sum", 3 0, RS_0x2b6fffbd00f8; 4 drivers
v0x260fd20 .array "temp_cout", 0 2;
v0x260fd20_0 .net v0x260fd20 0, 0 0, L_0x2639370; 1 drivers
v0x260fd20_1 .net v0x260fd20 1, 0 0, L_0x2639b40; 1 drivers
v0x260fd20_2 .net v0x260fd20 2, 0 0, L_0x263a440; 1 drivers
L_0x2639440 .part/pv L_0x2638960, 0, 1, 4;
L_0x26394e0 .part L_0x263b490, 0, 1;
L_0x2639610 .part L_0x263b530, 0, 1;
L_0x2639d00 .part/pv L_0x2639740, 1, 1, 4;
L_0x2639df0 .part L_0x263b490, 1, 1;
L_0x2639f20 .part L_0x263b530, 1, 1;
L_0x263a5d0 .part/pv L_0x263a090, 2, 1, 4;
L_0x263a670 .part L_0x263b490, 2, 1;
L_0x263a7a0 .part L_0x263b530, 2, 1;
L_0x263ae50 .part/pv L_0x263a8d0, 3, 1, 4;
L_0x263afe0 .part L_0x263b490, 3, 1;
L_0x263b1a0 .part L_0x263b530, 3, 1;
S_0x260f440 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x260e0a0;
 .timescale -9 -12;
L_0x2638960/d .functor XOR 1, L_0x26394e0, L_0x2639610, L_0x2638670, C4<0>;
L_0x2638960 .delay (30000,30000,30000) L_0x2638960/d;
L_0x2639050/d .functor AND 1, L_0x26394e0, L_0x2639610, C4<1>, C4<1>;
L_0x2639050 .delay (20000,20000,20000) L_0x2639050/d;
L_0x2639120/d .functor AND 1, L_0x26394e0, L_0x2638670, C4<1>, C4<1>;
L_0x2639120 .delay (20000,20000,20000) L_0x2639120/d;
L_0x26391e0/d .functor AND 1, L_0x2639610, L_0x2638670, C4<1>, C4<1>;
L_0x26391e0 .delay (20000,20000,20000) L_0x26391e0/d;
L_0x2639370/d .functor OR 1, L_0x2639050, L_0x2639120, L_0x26391e0, C4<0>;
L_0x2639370 .delay (20000,20000,20000) L_0x2639370/d;
v0x260f530_0 .net "AandB", 0 0, L_0x2639050; 1 drivers
v0x260f5f0_0 .net "AandC", 0 0, L_0x2639120; 1 drivers
v0x260f690_0 .net "BandC", 0 0, L_0x26391e0; 1 drivers
v0x260f730_0 .net "a", 0 0, L_0x26394e0; 1 drivers
v0x260f7b0_0 .net "b", 0 0, L_0x2639610; 1 drivers
v0x260f850_0 .alias "carryin", 0 0, v0x2619790_4;
v0x260f8f0_0 .alias "carryout", 0 0, v0x260fd20_0;
v0x260f970_0 .net "sum", 0 0, L_0x2638960; 1 drivers
S_0x260ee40 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x260e0a0;
 .timescale -9 -12;
L_0x2639740/d .functor XOR 1, L_0x2639df0, L_0x2639f20, L_0x2639370, C4<0>;
L_0x2639740 .delay (30000,30000,30000) L_0x2639740/d;
L_0x2639900/d .functor AND 1, L_0x2639df0, L_0x2639f20, C4<1>, C4<1>;
L_0x2639900 .delay (20000,20000,20000) L_0x2639900/d;
L_0x26399d0/d .functor AND 1, L_0x2639df0, L_0x2639370, C4<1>, C4<1>;
L_0x26399d0 .delay (20000,20000,20000) L_0x26399d0/d;
L_0x2639a70/d .functor AND 1, L_0x2639f20, L_0x2639370, C4<1>, C4<1>;
L_0x2639a70 .delay (20000,20000,20000) L_0x2639a70/d;
L_0x2639b40/d .functor OR 1, L_0x2639900, L_0x26399d0, L_0x2639a70, C4<0>;
L_0x2639b40 .delay (20000,20000,20000) L_0x2639b40/d;
v0x260ef30_0 .net "AandB", 0 0, L_0x2639900; 1 drivers
v0x260eff0_0 .net "AandC", 0 0, L_0x26399d0; 1 drivers
v0x260f090_0 .net "BandC", 0 0, L_0x2639a70; 1 drivers
v0x260f130_0 .net "a", 0 0, L_0x2639df0; 1 drivers
v0x260f1b0_0 .net "b", 0 0, L_0x2639f20; 1 drivers
v0x260f250_0 .alias "carryin", 0 0, v0x260fd20_0;
v0x260f2f0_0 .alias "carryout", 0 0, v0x260fd20_1;
v0x260f370_0 .net "sum", 0 0, L_0x2639740; 1 drivers
S_0x260e840 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x260e0a0;
 .timescale -9 -12;
L_0x263a090/d .functor XOR 1, L_0x263a670, L_0x263a7a0, L_0x2639b40, C4<0>;
L_0x263a090 .delay (30000,30000,30000) L_0x263a090/d;
L_0x263a1c0/d .functor AND 1, L_0x263a670, L_0x263a7a0, C4<1>, C4<1>;
L_0x263a1c0 .delay (20000,20000,20000) L_0x263a1c0/d;
L_0x263a300/d .functor AND 1, L_0x263a670, L_0x2639b40, C4<1>, C4<1>;
L_0x263a300 .delay (20000,20000,20000) L_0x263a300/d;
L_0x263a3a0/d .functor AND 1, L_0x263a7a0, L_0x2639b40, C4<1>, C4<1>;
L_0x263a3a0 .delay (20000,20000,20000) L_0x263a3a0/d;
L_0x263a440/d .functor OR 1, L_0x263a1c0, L_0x263a300, L_0x263a3a0, C4<0>;
L_0x263a440 .delay (20000,20000,20000) L_0x263a440/d;
v0x260e930_0 .net "AandB", 0 0, L_0x263a1c0; 1 drivers
v0x260e9f0_0 .net "AandC", 0 0, L_0x263a300; 1 drivers
v0x260ea90_0 .net "BandC", 0 0, L_0x263a3a0; 1 drivers
v0x260eb30_0 .net "a", 0 0, L_0x263a670; 1 drivers
v0x260ebb0_0 .net "b", 0 0, L_0x263a7a0; 1 drivers
v0x260ec50_0 .alias "carryin", 0 0, v0x260fd20_1;
v0x260ecf0_0 .alias "carryout", 0 0, v0x260fd20_2;
v0x260ed70_0 .net "sum", 0 0, L_0x263a090; 1 drivers
S_0x260e190 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x260e0a0;
 .timescale -9 -12;
L_0x263a8d0/d .functor XOR 1, L_0x263afe0, L_0x263b1a0, L_0x263a440, C4<0>;
L_0x263a8d0 .delay (30000,30000,30000) L_0x263a8d0/d;
L_0x263a9c0/d .functor AND 1, L_0x263afe0, L_0x263b1a0, C4<1>, C4<1>;
L_0x263a9c0 .delay (20000,20000,20000) L_0x263a9c0/d;
L_0x263aae0/d .functor AND 1, L_0x263afe0, L_0x263a440, C4<1>, C4<1>;
L_0x263aae0 .delay (20000,20000,20000) L_0x263aae0/d;
L_0x263aba0/d .functor AND 1, L_0x263b1a0, L_0x263a440, C4<1>, C4<1>;
L_0x263aba0 .delay (20000,20000,20000) L_0x263aba0/d;
L_0x263ac90/d .functor OR 1, L_0x263a9c0, L_0x263aae0, L_0x263aba0, C4<0>;
L_0x263ac90 .delay (20000,20000,20000) L_0x263ac90/d;
v0x260e280_0 .net "AandB", 0 0, L_0x263a9c0; 1 drivers
v0x260e320_0 .net "AandC", 0 0, L_0x263aae0; 1 drivers
v0x260e3c0_0 .net "BandC", 0 0, L_0x263aba0; 1 drivers
v0x260e460_0 .net "a", 0 0, L_0x263afe0; 1 drivers
v0x260e500_0 .net "b", 0 0, L_0x263b1a0; 1 drivers
v0x260e5a0_0 .alias "carryin", 0 0, v0x260fd20_2;
v0x260e680_0 .alias "carryout", 0 0, v0x2619790_5;
v0x260e750_0 .net "sum", 0 0, L_0x263a8d0; 1 drivers
S_0x260c2d0 .scope module, "f46" "CompAdder4bit" 2 65, 2 30, S_0x260a620;
 .timescale -9 -12;
v0x260dc50_0 .net "a", 3 0, L_0x263db50; 1 drivers
v0x260dd10_0 .net "b", 3 0, L_0x263b5d0; 1 drivers
v0x260ddb0_0 .alias "carryin", 0 0, v0x2619790_5;
v0x260de30_0 .alias "carryout", 0 0, v0x2619790_6;
v0x260deb0_0 .net8 "sum", 3 0, RS_0x2b6fffbcfb28; 4 drivers
v0x260df30 .array "temp_cout", 0 2;
v0x260df30_0 .net v0x260df30 0, 0 0, L_0x263b940; 1 drivers
v0x260df30_1 .net v0x260df30 1, 0 0, L_0x263c110; 1 drivers
v0x260df30_2 .net v0x260df30 2, 0 0, L_0x263ca10; 1 drivers
L_0x263ba10 .part/pv L_0x263af80, 0, 1, 4;
L_0x263bab0 .part L_0x263db50, 0, 1;
L_0x263bbe0 .part L_0x263b5d0, 0, 1;
L_0x263c2d0 .part/pv L_0x263bd10, 1, 1, 4;
L_0x263c3c0 .part L_0x263db50, 1, 1;
L_0x263c4f0 .part L_0x263b5d0, 1, 1;
L_0x263cba0 .part/pv L_0x263c660, 2, 1, 4;
L_0x263cc40 .part L_0x263db50, 2, 1;
L_0x263cd70 .part L_0x263b5d0, 2, 1;
L_0x263d420 .part/pv L_0x263cea0, 3, 1, 4;
L_0x263d5b0 .part L_0x263db50, 3, 1;
L_0x263d770 .part L_0x263b5d0, 3, 1;
S_0x260d650 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x260c2d0;
 .timescale -9 -12;
L_0x263af80/d .functor XOR 1, L_0x263bab0, L_0x263bbe0, L_0x263ac90, C4<0>;
L_0x263af80 .delay (30000,30000,30000) L_0x263af80/d;
L_0x263b670/d .functor AND 1, L_0x263bab0, L_0x263bbe0, C4<1>, C4<1>;
L_0x263b670 .delay (20000,20000,20000) L_0x263b670/d;
L_0x263b710/d .functor AND 1, L_0x263bab0, L_0x263ac90, C4<1>, C4<1>;
L_0x263b710 .delay (20000,20000,20000) L_0x263b710/d;
L_0x263b7b0/d .functor AND 1, L_0x263bbe0, L_0x263ac90, C4<1>, C4<1>;
L_0x263b7b0 .delay (20000,20000,20000) L_0x263b7b0/d;
L_0x263b940/d .functor OR 1, L_0x263b670, L_0x263b710, L_0x263b7b0, C4<0>;
L_0x263b940 .delay (20000,20000,20000) L_0x263b940/d;
v0x260d740_0 .net "AandB", 0 0, L_0x263b670; 1 drivers
v0x260d800_0 .net "AandC", 0 0, L_0x263b710; 1 drivers
v0x260d8a0_0 .net "BandC", 0 0, L_0x263b7b0; 1 drivers
v0x260d940_0 .net "a", 0 0, L_0x263bab0; 1 drivers
v0x260d9c0_0 .net "b", 0 0, L_0x263bbe0; 1 drivers
v0x260da60_0 .alias "carryin", 0 0, v0x2619790_5;
v0x260db00_0 .alias "carryout", 0 0, v0x260df30_0;
v0x260db80_0 .net "sum", 0 0, L_0x263af80; 1 drivers
S_0x260d050 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x260c2d0;
 .timescale -9 -12;
L_0x263bd10/d .functor XOR 1, L_0x263c3c0, L_0x263c4f0, L_0x263b940, C4<0>;
L_0x263bd10 .delay (30000,30000,30000) L_0x263bd10/d;
L_0x263bed0/d .functor AND 1, L_0x263c3c0, L_0x263c4f0, C4<1>, C4<1>;
L_0x263bed0 .delay (20000,20000,20000) L_0x263bed0/d;
L_0x263bfa0/d .functor AND 1, L_0x263c3c0, L_0x263b940, C4<1>, C4<1>;
L_0x263bfa0 .delay (20000,20000,20000) L_0x263bfa0/d;
L_0x263c040/d .functor AND 1, L_0x263c4f0, L_0x263b940, C4<1>, C4<1>;
L_0x263c040 .delay (20000,20000,20000) L_0x263c040/d;
L_0x263c110/d .functor OR 1, L_0x263bed0, L_0x263bfa0, L_0x263c040, C4<0>;
L_0x263c110 .delay (20000,20000,20000) L_0x263c110/d;
v0x260d140_0 .net "AandB", 0 0, L_0x263bed0; 1 drivers
v0x260d200_0 .net "AandC", 0 0, L_0x263bfa0; 1 drivers
v0x260d2a0_0 .net "BandC", 0 0, L_0x263c040; 1 drivers
v0x260d340_0 .net "a", 0 0, L_0x263c3c0; 1 drivers
v0x260d3c0_0 .net "b", 0 0, L_0x263c4f0; 1 drivers
v0x260d460_0 .alias "carryin", 0 0, v0x260df30_0;
v0x260d500_0 .alias "carryout", 0 0, v0x260df30_1;
v0x260d580_0 .net "sum", 0 0, L_0x263bd10; 1 drivers
S_0x260ca50 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x260c2d0;
 .timescale -9 -12;
L_0x263c660/d .functor XOR 1, L_0x263cc40, L_0x263cd70, L_0x263c110, C4<0>;
L_0x263c660 .delay (30000,30000,30000) L_0x263c660/d;
L_0x263c790/d .functor AND 1, L_0x263cc40, L_0x263cd70, C4<1>, C4<1>;
L_0x263c790 .delay (20000,20000,20000) L_0x263c790/d;
L_0x263c8d0/d .functor AND 1, L_0x263cc40, L_0x263c110, C4<1>, C4<1>;
L_0x263c8d0 .delay (20000,20000,20000) L_0x263c8d0/d;
L_0x263c970/d .functor AND 1, L_0x263cd70, L_0x263c110, C4<1>, C4<1>;
L_0x263c970 .delay (20000,20000,20000) L_0x263c970/d;
L_0x263ca10/d .functor OR 1, L_0x263c790, L_0x263c8d0, L_0x263c970, C4<0>;
L_0x263ca10 .delay (20000,20000,20000) L_0x263ca10/d;
v0x260cb40_0 .net "AandB", 0 0, L_0x263c790; 1 drivers
v0x260cc00_0 .net "AandC", 0 0, L_0x263c8d0; 1 drivers
v0x260cca0_0 .net "BandC", 0 0, L_0x263c970; 1 drivers
v0x260cd40_0 .net "a", 0 0, L_0x263cc40; 1 drivers
v0x260cdc0_0 .net "b", 0 0, L_0x263cd70; 1 drivers
v0x260ce60_0 .alias "carryin", 0 0, v0x260df30_1;
v0x260cf00_0 .alias "carryout", 0 0, v0x260df30_2;
v0x260cf80_0 .net "sum", 0 0, L_0x263c660; 1 drivers
S_0x260c3c0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x260c2d0;
 .timescale -9 -12;
L_0x263cea0/d .functor XOR 1, L_0x263d5b0, L_0x263d770, L_0x263ca10, C4<0>;
L_0x263cea0 .delay (30000,30000,30000) L_0x263cea0/d;
L_0x263cf90/d .functor AND 1, L_0x263d5b0, L_0x263d770, C4<1>, C4<1>;
L_0x263cf90 .delay (20000,20000,20000) L_0x263cf90/d;
L_0x263d0b0/d .functor AND 1, L_0x263d5b0, L_0x263ca10, C4<1>, C4<1>;
L_0x263d0b0 .delay (20000,20000,20000) L_0x263d0b0/d;
L_0x263d170/d .functor AND 1, L_0x263d770, L_0x263ca10, C4<1>, C4<1>;
L_0x263d170 .delay (20000,20000,20000) L_0x263d170/d;
L_0x263d260/d .functor OR 1, L_0x263cf90, L_0x263d0b0, L_0x263d170, C4<0>;
L_0x263d260 .delay (20000,20000,20000) L_0x263d260/d;
v0x260c4b0_0 .net "AandB", 0 0, L_0x263cf90; 1 drivers
v0x260c550_0 .net "AandC", 0 0, L_0x263d0b0; 1 drivers
v0x260c5f0_0 .net "BandC", 0 0, L_0x263d170; 1 drivers
v0x260c690_0 .net "a", 0 0, L_0x263d5b0; 1 drivers
v0x260c710_0 .net "b", 0 0, L_0x263d770; 1 drivers
v0x260c7b0_0 .alias "carryin", 0 0, v0x260df30_2;
v0x260c890_0 .alias "carryout", 0 0, v0x2619790_6;
v0x260c960_0 .net "sum", 0 0, L_0x263cea0; 1 drivers
S_0x260a710 .scope module, "f47" "CompAdder4bit" 2 66, 2 30, S_0x260a620;
 .timescale -9 -12;
v0x260bf40_0 .net "a", 3 0, L_0x263dd00; 1 drivers
v0x260c000_0 .net "b", 3 0, L_0x2640290; 1 drivers
v0x260c0a0_0 .alias "carryin", 0 0, v0x2619790_6;
v0x260c120_0 .alias "carryout", 0 0, v0x2619da0_0;
v0x260c1d0_0 .net8 "sum", 3 0, RS_0x2b6fffbcf558; 4 drivers
v0x260c250 .array "temp_cout", 0 2;
v0x260c250_0 .net v0x260c250 0, 0 0, L_0x263e090; 1 drivers
v0x260c250_1 .net v0x260c250 1, 0 0, L_0x263e860; 1 drivers
v0x260c250_2 .net v0x260c250 2, 0 0, L_0x263f160; 1 drivers
L_0x263e160 .part/pv L_0x263d550, 0, 1, 4;
L_0x263e200 .part L_0x263dd00, 0, 1;
L_0x263e330 .part L_0x2640290, 0, 1;
L_0x263ea20 .part/pv L_0x263e460, 1, 1, 4;
L_0x263eb10 .part L_0x263dd00, 1, 1;
L_0x263ec40 .part L_0x2640290, 1, 1;
L_0x263f2f0 .part/pv L_0x263edb0, 2, 1, 4;
L_0x263f390 .part L_0x263dd00, 2, 1;
L_0x263f4c0 .part L_0x2640290, 2, 1;
L_0x263fbb0 .part/pv L_0x263f5f0, 3, 1, 4;
L_0x263fd40 .part L_0x263dd00, 3, 1;
L_0x263ff00 .part L_0x2640290, 3, 1;
S_0x260b990 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x260a710;
 .timescale -9 -12;
L_0x263d550/d .functor XOR 1, L_0x263e200, L_0x263e330, L_0x263d260, C4<0>;
L_0x263d550 .delay (30000,30000,30000) L_0x263d550/d;
L_0x2634350/d .functor AND 1, L_0x263e200, L_0x263e330, C4<1>, C4<1>;
L_0x2634350 .delay (20000,20000,20000) L_0x2634350/d;
L_0x2634480/d .functor AND 1, L_0x263e200, L_0x263d260, C4<1>, C4<1>;
L_0x2634480 .delay (20000,20000,20000) L_0x2634480/d;
L_0x263df00/d .functor AND 1, L_0x263e330, L_0x263d260, C4<1>, C4<1>;
L_0x263df00 .delay (20000,20000,20000) L_0x263df00/d;
L_0x263e090/d .functor OR 1, L_0x2634350, L_0x2634480, L_0x263df00, C4<0>;
L_0x263e090 .delay (20000,20000,20000) L_0x263e090/d;
v0x260ba80_0 .net "AandB", 0 0, L_0x2634350; 1 drivers
v0x260bb40_0 .net "AandC", 0 0, L_0x2634480; 1 drivers
v0x260bbe0_0 .net "BandC", 0 0, L_0x263df00; 1 drivers
v0x260bc80_0 .net "a", 0 0, L_0x263e200; 1 drivers
v0x260bd00_0 .net "b", 0 0, L_0x263e330; 1 drivers
v0x260bda0_0 .alias "carryin", 0 0, v0x2619790_6;
v0x260be40_0 .alias "carryout", 0 0, v0x260c250_0;
v0x260bec0_0 .net "sum", 0 0, L_0x263d550; 1 drivers
S_0x260b3e0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x260a710;
 .timescale -9 -12;
L_0x263e460/d .functor XOR 1, L_0x263eb10, L_0x263ec40, L_0x263e090, C4<0>;
L_0x263e460 .delay (30000,30000,30000) L_0x263e460/d;
L_0x263e620/d .functor AND 1, L_0x263eb10, L_0x263ec40, C4<1>, C4<1>;
L_0x263e620 .delay (20000,20000,20000) L_0x263e620/d;
L_0x263e6f0/d .functor AND 1, L_0x263eb10, L_0x263e090, C4<1>, C4<1>;
L_0x263e6f0 .delay (20000,20000,20000) L_0x263e6f0/d;
L_0x263e790/d .functor AND 1, L_0x263ec40, L_0x263e090, C4<1>, C4<1>;
L_0x263e790 .delay (20000,20000,20000) L_0x263e790/d;
L_0x263e860/d .functor OR 1, L_0x263e620, L_0x263e6f0, L_0x263e790, C4<0>;
L_0x263e860 .delay (20000,20000,20000) L_0x263e860/d;
v0x260b4d0_0 .net "AandB", 0 0, L_0x263e620; 1 drivers
v0x260b590_0 .net "AandC", 0 0, L_0x263e6f0; 1 drivers
v0x260b630_0 .net "BandC", 0 0, L_0x263e790; 1 drivers
v0x260b6d0_0 .net "a", 0 0, L_0x263eb10; 1 drivers
v0x260b750_0 .net "b", 0 0, L_0x263ec40; 1 drivers
v0x260b7f0_0 .alias "carryin", 0 0, v0x260c250_0;
v0x260b890_0 .alias "carryout", 0 0, v0x260c250_1;
v0x260b910_0 .net "sum", 0 0, L_0x263e460; 1 drivers
S_0x260ae30 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x260a710;
 .timescale -9 -12;
L_0x263edb0/d .functor XOR 1, L_0x263f390, L_0x263f4c0, L_0x263e860, C4<0>;
L_0x263edb0 .delay (30000,30000,30000) L_0x263edb0/d;
L_0x263eee0/d .functor AND 1, L_0x263f390, L_0x263f4c0, C4<1>, C4<1>;
L_0x263eee0 .delay (20000,20000,20000) L_0x263eee0/d;
L_0x263f020/d .functor AND 1, L_0x263f390, L_0x263e860, C4<1>, C4<1>;
L_0x263f020 .delay (20000,20000,20000) L_0x263f020/d;
L_0x263f0c0/d .functor AND 1, L_0x263f4c0, L_0x263e860, C4<1>, C4<1>;
L_0x263f0c0 .delay (20000,20000,20000) L_0x263f0c0/d;
L_0x263f160/d .functor OR 1, L_0x263eee0, L_0x263f020, L_0x263f0c0, C4<0>;
L_0x263f160 .delay (20000,20000,20000) L_0x263f160/d;
v0x260af20_0 .net "AandB", 0 0, L_0x263eee0; 1 drivers
v0x260afe0_0 .net "AandC", 0 0, L_0x263f020; 1 drivers
v0x260b080_0 .net "BandC", 0 0, L_0x263f0c0; 1 drivers
v0x260b120_0 .net "a", 0 0, L_0x263f390; 1 drivers
v0x260b1a0_0 .net "b", 0 0, L_0x263f4c0; 1 drivers
v0x260b240_0 .alias "carryin", 0 0, v0x260c250_1;
v0x260b2e0_0 .alias "carryout", 0 0, v0x260c250_2;
v0x260b360_0 .net "sum", 0 0, L_0x263edb0; 1 drivers
S_0x260a800 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x260a710;
 .timescale -9 -12;
L_0x263f5f0/d .functor XOR 1, L_0x263fd40, L_0x263ff00, L_0x263f160, C4<0>;
L_0x263f5f0 .delay (30000,30000,30000) L_0x263f5f0/d;
L_0x263f6e0/d .functor AND 1, L_0x263fd40, L_0x263ff00, C4<1>, C4<1>;
L_0x263f6e0 .delay (20000,20000,20000) L_0x263f6e0/d;
L_0x263f800/d .functor AND 1, L_0x263fd40, L_0x263f160, C4<1>, C4<1>;
L_0x263f800 .delay (20000,20000,20000) L_0x263f800/d;
L_0x263f8c0/d .functor AND 1, L_0x263ff00, L_0x263f160, C4<1>, C4<1>;
L_0x263f8c0 .delay (20000,20000,20000) L_0x263f8c0/d;
L_0x263f9b0/d .functor OR 1, L_0x263f6e0, L_0x263f800, L_0x263f8c0, C4<0>;
L_0x263f9b0 .delay (20000,20000,20000) L_0x263f9b0/d;
v0x260a8f0_0 .net "AandB", 0 0, L_0x263f6e0; 1 drivers
v0x260a9b0_0 .net "AandC", 0 0, L_0x263f800; 1 drivers
v0x260aa50_0 .net "BandC", 0 0, L_0x263f8c0; 1 drivers
v0x260aaf0_0 .net "a", 0 0, L_0x263fd40; 1 drivers
v0x260ab70_0 .net "b", 0 0, L_0x263ff00; 1 drivers
v0x260ac10_0 .alias "carryin", 0 0, v0x260c250_2;
v0x260acf0_0 .alias "carryout", 0 0, v0x2619da0_0;
v0x260ad90_0 .net "sum", 0 0, L_0x263f5f0; 1 drivers
    .scope S_0x25ccad0;
T_0 ;
    %vpi_call 3 15 "$display", " a_10   b _10 |overflow carryout   sum ";
    %set/v v0x2619c80_0, 0, 32;
    %set/v v0x2619d20_0, 0, 32;
    %delay 1000000, 0;
    %vpi_call 3 17 "$display", " 0        0  |   %b        %b       %b", v0x2619e20_0, v0x2619da0_0, v0x2619ea0_0;
    %set/v v0x2619c80_0, 1, 32;
    %set/v v0x2619d20_0, 1, 32;
    %delay 1000000, 0;
    %vpi_call 3 19 "$display", " -1       -1 |   %b        %b       %b", v0x2619e20_0, v0x2619da0_0, v0x2619ea0_0;
    %movi 8, 268435455, 32;
    %set/v v0x2619c80_0, 8, 32;
    %movi 8, 268435455, 32;
    %set/v v0x2619d20_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 3 21 "$display", "  max     max|   %b        %b       %b", v0x2619e20_0, v0x2619da0_0, v0x2619ea0_0;
    %movi 8, 4026531855, 32;
    %set/v v0x2619c80_0, 8, 32;
    %movi 8, 4026531855, 32;
    %set/v v0x2619d20_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 3 23 "$display", " min     min |   %b        %b       %b", v0x2619e20_0, v0x2619da0_0, v0x2619ea0_0;
    %movi 8, 4, 32;
    %set/v v0x2619c80_0, 8, 32;
    %movi 8, 4, 32;
    %set/v v0x2619d20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 25 "$display", "  4       4  |   %b        %b       %b", v0x2619e20_0, v0x2619da0_0, v0x2619ea0_0;
    %movi 8, 305402420, 32;
    %set/v v0x2619c80_0, 8, 32;
    %movi 8, 305402420, 32;
    %set/v v0x2619d20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 27 "$display", " ?      ?    |   %b        %b       %b", v0x2619e20_0, v0x2619da0_0, v0x2619ea0_0;
    %set/v v0x2619c80_0, 1, 32;
    %movi 8, 1, 32;
    %set/v v0x2619d20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 29 "$display", " -1    1     |   %b        %b       %b", v0x2619e20_0, v0x2619da0_0, v0x2619ea0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./math.v";
    "math.t.v";
