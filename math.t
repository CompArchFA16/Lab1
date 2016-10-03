#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x165d0e0 .scope module, "testFullAdder16bit" "testFullAdder16bit" 2 32;
 .timescale -9 -12;
v0x16a8c30_0 .var "a", 31 0;
v0x16a8cd0_0 .var "b", 31 0;
v0x16a8d50_0 .net "carryout", 0 0, L_0x16bbcb0; 1 drivers
v0x16a8dd0_0 .net "overflow", 0 0, L_0x16bbfe0; 1 drivers
RS_0x2ab4cf3f60d8/0/0 .resolv tri, L_0x16ab550, L_0x16adc30, L_0x16b01e0, L_0x16b2960;
RS_0x2ab4cf3f60d8/0/4 .resolv tri, L_0x16b4fa0, L_0x16b75c0, L_0x16b9c80, L_0x16bc430;
RS_0x2ab4cf3f60d8 .resolv tri, RS_0x2ab4cf3f60d8/0/0, RS_0x2ab4cf3f60d8/0/4, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>;
v0x16a8e50_0 .net8 "sum", 31 0, RS_0x2ab4cf3f60d8; 8 drivers
S_0x167f060 .scope module, "fa16b" "FullAdder32bit" 2 38, 3 49, S_0x165d0e0;
 .timescale -9 -12;
L_0x16bbfe0/d .functor XOR 1, L_0x16bbcb0, L_0x16b9500, C4<0>, C4<0>;
L_0x16bbfe0 .delay (30000,30000,30000) L_0x16bbfe0/d;
v0x16a87e0_0 .net "a", 31 0, v0x16a8c30_0; 1 drivers
v0x16a88a0_0 .net "b", 31 0, v0x16a8cd0_0; 1 drivers
v0x16a8940_0 .alias "carryout", 0 0, v0x16a8d50_0;
v0x16a8a10_0 .alias "overflow", 0 0, v0x16a8dd0_0;
v0x16a8a90_0 .alias "sum", 31 0, v0x16a8e50_0;
v0x16a8b30 .array "temp_cout", 0 6;
v0x16a8b30_0 .net v0x16a8b30 0, 0 0, L_0x16aadd0; 1 drivers
v0x16a8b30_1 .net v0x16a8b30 1, 0 0, L_0x16ad4b0; 1 drivers
v0x16a8b30_2 .net v0x16a8b30 2, 0 0, L_0x16afaf0; 1 drivers
v0x16a8b30_3 .net v0x16a8b30 3, 0 0, L_0x16b21e0; 1 drivers
v0x16a8b30_4 .net v0x16a8b30 4, 0 0, L_0x16b4820; 1 drivers
v0x16a8b30_5 .net v0x16a8b30 5, 0 0, L_0x16b6eb0; 1 drivers
v0x16a8b30_6 .net v0x16a8b30 6, 0 0, L_0x16b9500; 1 drivers
RS_0x2ab4cf3f6018 .resolv tri, L_0x16a9540, L_0x16a9e80, L_0x16aa750, L_0x16aafd0;
L_0x16ab550 .part/pv RS_0x2ab4cf3f6018, 0, 4, 32;
L_0x16ab610 .part v0x16a8c30_0, 0, 4;
L_0x16ab6b0 .part v0x16a8cd0_0, 0, 4;
RS_0x2ab4cf3f5a18 .resolv tri, L_0x16abbc0, L_0x16ac500, L_0x16acdf0, L_0x16ad6b0;
L_0x16adc30 .part/pv RS_0x2ab4cf3f5a18, 4, 4, 32;
L_0x16adcd0 .part v0x16a8c30_0, 4, 4;
L_0x16add70 .part v0x16a8cd0_0, 4, 4;
RS_0x2ab4cf3f5418 .resolv tri, L_0x16ae1f0, L_0x16aeb60, L_0x16af430, L_0x16afcf0;
L_0x16b01e0 .part/pv RS_0x2ab4cf3f5418, 8, 4, 32;
L_0x16b0310 .part v0x16a8c30_0, 8, 4;
L_0x16b0440 .part v0x16a8cd0_0, 8, 4;
RS_0x2ab4cf3f4e18 .resolv tri, L_0x16b0930, L_0x16b1270, L_0x16b1b40, L_0x16b23e0;
L_0x16b2960 .part/pv RS_0x2ab4cf3f4e18, 12, 4, 32;
L_0x16b2a00 .part v0x16a8c30_0, 12, 4;
L_0x16b2aa0 .part v0x16a8cd0_0, 12, 4;
RS_0x2ab4cf3f4818 .resolv tri, L_0x16b2f20, L_0x16b3870, L_0x16b4160, L_0x16b4a20;
L_0x16b4fa0 .part/pv RS_0x2ab4cf3f4818, 16, 4, 32;
L_0x16b5040 .part v0x16a8c30_0, 16, 4;
L_0x16b5160 .part v0x16a8cd0_0, 16, 4;
RS_0x2ab4cf3f4218 .resolv tri, L_0x16b55c0, L_0x16b5f00, L_0x16b67f0, L_0x16b70b0;
L_0x16b75c0 .part/pv RS_0x2ab4cf3f4218, 20, 4, 32;
L_0x16b76f0 .part v0x16a8c30_0, 20, 4;
L_0x16b7790 .part v0x16a8cd0_0, 20, 4;
RS_0x2ab4cf3f3c18 .resolv tri, L_0x16b7c00, L_0x16b8550, L_0x16b8e40, L_0x16b9700;
L_0x16b9c80 .part/pv RS_0x2ab4cf3f3c18, 24, 4, 32;
L_0x16b9e30 .part v0x16a8c30_0, 24, 4;
L_0x16b7830 .part v0x16a8cd0_0, 24, 4;
RS_0x2ab4cf3f3618 .resolv tri, L_0x16ba3c0, L_0x16bad00, L_0x16bb5f0, L_0x16bbeb0;
L_0x16bc430 .part/pv RS_0x2ab4cf3f3618, 28, 4, 32;
L_0x16b9fe0 .part v0x16a8c30_0, 28, 4;
L_0x16bc590 .part v0x16a8cd0_0, 28, 4;
S_0x16a69d0 .scope module, "f40" "CompAdder4bit" 3 59, 3 30, S_0x167f060;
 .timescale -9 -12;
v0x16a8300_0 .net "a", 3 0, L_0x16ab610; 1 drivers
v0x16a83c0_0 .net "b", 3 0, L_0x16ab6b0; 1 drivers
v0x16a8460_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x16a8500_0 .alias "carryout", 0 0, v0x16a8b30_0;
v0x16a85d0_0 .net8 "sum", 3 0, RS_0x2ab4cf3f6018; 4 drivers
v0x16a8650 .array "temp_cout", 0 2;
v0x16a8650_0 .net v0x16a8650 0, 0 0, L_0x16a9380; 1 drivers
v0x16a8650_1 .net v0x16a8650 1, 0 0, L_0x16a9d10; 1 drivers
v0x16a8650_2 .net v0x16a8650 2, 0 0, L_0x16aa5c0; 1 drivers
L_0x16a9540 .part/pv L_0x16a8ed0, 0, 1, 4;
L_0x16a95e0 .part L_0x16ab610, 0, 1;
L_0x16a9710 .part L_0x16ab6b0, 0, 1;
L_0x16a9e80 .part/pv L_0x16a9910, 1, 1, 4;
L_0x16a9f70 .part L_0x16ab610, 1, 1;
L_0x16aa0a0 .part L_0x16ab6b0, 1, 1;
L_0x16aa750 .part/pv L_0x16aa210, 2, 1, 4;
L_0x16aa7f0 .part L_0x16ab610, 2, 1;
L_0x16aa920 .part L_0x16ab6b0, 2, 1;
L_0x16aafd0 .part/pv L_0x16aaa50, 3, 1, 4;
L_0x16ab160 .part L_0x16ab610, 3, 1;
L_0x16ab320 .part L_0x16ab6b0, 3, 1;
S_0x16a7d00 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x16a69d0;
 .timescale -9 -12;
L_0x16a8ed0/d .functor XOR 1, L_0x16a95e0, L_0x16a9710, C4<0>, C4<0>;
L_0x16a8ed0 .delay (30000,30000,30000) L_0x16a8ed0/d;
L_0x16a9080/d .functor AND 1, L_0x16a95e0, L_0x16a9710, C4<1>, C4<1>;
L_0x16a9080 .delay (20000,20000,20000) L_0x16a9080/d;
L_0x16a91f0/d .functor AND 1, L_0x16a95e0, C4<0>, C4<1>, C4<1>;
L_0x16a91f0 .delay (20000,20000,20000) L_0x16a91f0/d;
L_0x16a92e0/d .functor AND 1, L_0x16a9710, C4<0>, C4<1>, C4<1>;
L_0x16a92e0 .delay (20000,20000,20000) L_0x16a92e0/d;
L_0x16a9380/d .functor OR 1, L_0x16a9080, L_0x16a91f0, L_0x16a92e0, C4<0>;
L_0x16a9380 .delay (20000,20000,20000) L_0x16a9380/d;
v0x16a7df0_0 .net "AandB", 0 0, L_0x16a9080; 1 drivers
v0x16a7eb0_0 .net "AandC", 0 0, L_0x16a91f0; 1 drivers
v0x16a7f50_0 .net "BandC", 0 0, L_0x16a92e0; 1 drivers
v0x16a7ff0_0 .net "a", 0 0, L_0x16a95e0; 1 drivers
v0x16a8070_0 .net "b", 0 0, L_0x16a9710; 1 drivers
v0x16a8110_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x16a81b0_0 .alias "carryout", 0 0, v0x16a8650_0;
v0x16a8230_0 .net "sum", 0 0, L_0x16a8ed0; 1 drivers
S_0x16a7700 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x16a69d0;
 .timescale -9 -12;
L_0x16a9910/d .functor XOR 1, L_0x16a9f70, L_0x16aa0a0, L_0x16a9380, C4<0>;
L_0x16a9910 .delay (30000,30000,30000) L_0x16a9910/d;
L_0x16a9ad0/d .functor AND 1, L_0x16a9f70, L_0x16aa0a0, C4<1>, C4<1>;
L_0x16a9ad0 .delay (20000,20000,20000) L_0x16a9ad0/d;
L_0x16a9ba0/d .functor AND 1, L_0x16a9f70, L_0x16a9380, C4<1>, C4<1>;
L_0x16a9ba0 .delay (20000,20000,20000) L_0x16a9ba0/d;
L_0x16a9c40/d .functor AND 1, L_0x16aa0a0, L_0x16a9380, C4<1>, C4<1>;
L_0x16a9c40 .delay (20000,20000,20000) L_0x16a9c40/d;
L_0x16a9d10/d .functor OR 1, L_0x16a9ad0, L_0x16a9ba0, L_0x16a9c40, C4<0>;
L_0x16a9d10 .delay (20000,20000,20000) L_0x16a9d10/d;
v0x16a77f0_0 .net "AandB", 0 0, L_0x16a9ad0; 1 drivers
v0x16a78b0_0 .net "AandC", 0 0, L_0x16a9ba0; 1 drivers
v0x16a7950_0 .net "BandC", 0 0, L_0x16a9c40; 1 drivers
v0x16a79f0_0 .net "a", 0 0, L_0x16a9f70; 1 drivers
v0x16a7a70_0 .net "b", 0 0, L_0x16aa0a0; 1 drivers
v0x16a7b10_0 .alias "carryin", 0 0, v0x16a8650_0;
v0x16a7bb0_0 .alias "carryout", 0 0, v0x16a8650_1;
v0x16a7c30_0 .net "sum", 0 0, L_0x16a9910; 1 drivers
S_0x16a7100 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x16a69d0;
 .timescale -9 -12;
L_0x16aa210/d .functor XOR 1, L_0x16aa7f0, L_0x16aa920, L_0x16a9d10, C4<0>;
L_0x16aa210 .delay (30000,30000,30000) L_0x16aa210/d;
L_0x16aa340/d .functor AND 1, L_0x16aa7f0, L_0x16aa920, C4<1>, C4<1>;
L_0x16aa340 .delay (20000,20000,20000) L_0x16aa340/d;
L_0x16aa480/d .functor AND 1, L_0x16aa7f0, L_0x16a9d10, C4<1>, C4<1>;
L_0x16aa480 .delay (20000,20000,20000) L_0x16aa480/d;
L_0x16aa520/d .functor AND 1, L_0x16aa920, L_0x16a9d10, C4<1>, C4<1>;
L_0x16aa520 .delay (20000,20000,20000) L_0x16aa520/d;
L_0x16aa5c0/d .functor OR 1, L_0x16aa340, L_0x16aa480, L_0x16aa520, C4<0>;
L_0x16aa5c0 .delay (20000,20000,20000) L_0x16aa5c0/d;
v0x16a71f0_0 .net "AandB", 0 0, L_0x16aa340; 1 drivers
v0x16a72b0_0 .net "AandC", 0 0, L_0x16aa480; 1 drivers
v0x16a7350_0 .net "BandC", 0 0, L_0x16aa520; 1 drivers
v0x16a73f0_0 .net "a", 0 0, L_0x16aa7f0; 1 drivers
v0x16a7470_0 .net "b", 0 0, L_0x16aa920; 1 drivers
v0x16a7510_0 .alias "carryin", 0 0, v0x16a8650_1;
v0x16a75b0_0 .alias "carryout", 0 0, v0x16a8650_2;
v0x16a7630_0 .net "sum", 0 0, L_0x16aa210; 1 drivers
S_0x16a6ac0 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x16a69d0;
 .timescale -9 -12;
L_0x16aaa50/d .functor XOR 1, L_0x16ab160, L_0x16ab320, L_0x16aa5c0, C4<0>;
L_0x16aaa50 .delay (30000,30000,30000) L_0x16aaa50/d;
L_0x16aab40/d .functor AND 1, L_0x16ab160, L_0x16ab320, C4<1>, C4<1>;
L_0x16aab40 .delay (20000,20000,20000) L_0x16aab40/d;
L_0x16aac60/d .functor AND 1, L_0x16ab160, L_0x16aa5c0, C4<1>, C4<1>;
L_0x16aac60 .delay (20000,20000,20000) L_0x16aac60/d;
L_0x16aad00/d .functor AND 1, L_0x16ab320, L_0x16aa5c0, C4<1>, C4<1>;
L_0x16aad00 .delay (20000,20000,20000) L_0x16aad00/d;
L_0x16aadd0/d .functor OR 1, L_0x16aab40, L_0x16aac60, L_0x16aad00, C4<0>;
L_0x16aadd0 .delay (20000,20000,20000) L_0x16aadd0/d;
v0x16a6bb0_0 .net "AandB", 0 0, L_0x16aab40; 1 drivers
v0x16a6c70_0 .net "AandC", 0 0, L_0x16aac60; 1 drivers
v0x16a6d10_0 .net "BandC", 0 0, L_0x16aad00; 1 drivers
v0x16a6db0_0 .net "a", 0 0, L_0x16ab160; 1 drivers
v0x16a6e30_0 .net "b", 0 0, L_0x16ab320; 1 drivers
v0x16a6ed0_0 .alias "carryin", 0 0, v0x16a8650_2;
v0x16a6fb0_0 .alias "carryout", 0 0, v0x16a8b30_0;
v0x16a7030_0 .net "sum", 0 0, L_0x16aaa50; 1 drivers
S_0x16a4bc0 .scope module, "f41" "CompAdder4bit" 3 60, 3 30, S_0x167f060;
 .timescale -9 -12;
v0x16a64f0_0 .net "a", 3 0, L_0x16adcd0; 1 drivers
v0x16a65b0_0 .net "b", 3 0, L_0x16add70; 1 drivers
v0x16a6650_0 .alias "carryin", 0 0, v0x16a8b30_0;
v0x16a66f0_0 .alias "carryout", 0 0, v0x16a8b30_1;
v0x16a67c0_0 .net8 "sum", 3 0, RS_0x2ab4cf3f5a18; 4 drivers
v0x16a6840 .array "temp_cout", 0 2;
v0x16a6840_0 .net v0x16a6840 0, 0 0, L_0x16aba00; 1 drivers
v0x16a6840_1 .net v0x16a6840 1, 0 0, L_0x16ac390; 1 drivers
v0x16a6840_2 .net v0x16a6840 2, 0 0, L_0x16acc60; 1 drivers
L_0x16abbc0 .part/pv L_0x16ab100, 0, 1, 4;
L_0x16abc60 .part L_0x16adcd0, 0, 1;
L_0x16abd90 .part L_0x16add70, 0, 1;
L_0x16ac500 .part/pv L_0x16abf90, 1, 1, 4;
L_0x16ac5f0 .part L_0x16adcd0, 1, 1;
L_0x16ac720 .part L_0x16add70, 1, 1;
L_0x16acdf0 .part/pv L_0x16ac890, 2, 1, 4;
L_0x16ace90 .part L_0x16adcd0, 2, 1;
L_0x16acfc0 .part L_0x16add70, 2, 1;
L_0x16ad6b0 .part/pv L_0x16ad0f0, 3, 1, 4;
L_0x16ad840 .part L_0x16adcd0, 3, 1;
L_0x16ada00 .part L_0x16add70, 3, 1;
S_0x16a5ef0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x16a4bc0;
 .timescale -9 -12;
L_0x16ab100/d .functor XOR 1, L_0x16abc60, L_0x16abd90, C4<0>, C4<0>;
L_0x16ab100 .delay (30000,30000,30000) L_0x16ab100/d;
L_0x16ab7d0/d .functor AND 1, L_0x16abc60, L_0x16abd90, C4<1>, C4<1>;
L_0x16ab7d0 .delay (20000,20000,20000) L_0x16ab7d0/d;
L_0x16ab870/d .functor AND 1, L_0x16abc60, C4<0>, C4<1>, C4<1>;
L_0x16ab870 .delay (20000,20000,20000) L_0x16ab870/d;
L_0x16ab960/d .functor AND 1, L_0x16abd90, C4<0>, C4<1>, C4<1>;
L_0x16ab960 .delay (20000,20000,20000) L_0x16ab960/d;
L_0x16aba00/d .functor OR 1, L_0x16ab7d0, L_0x16ab870, L_0x16ab960, C4<0>;
L_0x16aba00 .delay (20000,20000,20000) L_0x16aba00/d;
v0x16a5fe0_0 .net "AandB", 0 0, L_0x16ab7d0; 1 drivers
v0x16a60a0_0 .net "AandC", 0 0, L_0x16ab870; 1 drivers
v0x16a6140_0 .net "BandC", 0 0, L_0x16ab960; 1 drivers
v0x16a61e0_0 .net "a", 0 0, L_0x16abc60; 1 drivers
v0x16a6260_0 .net "b", 0 0, L_0x16abd90; 1 drivers
v0x16a6300_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x16a63a0_0 .alias "carryout", 0 0, v0x16a6840_0;
v0x16a6420_0 .net "sum", 0 0, L_0x16ab100; 1 drivers
S_0x16a58f0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x16a4bc0;
 .timescale -9 -12;
L_0x16abf90/d .functor XOR 1, L_0x16ac5f0, L_0x16ac720, L_0x16aba00, C4<0>;
L_0x16abf90 .delay (30000,30000,30000) L_0x16abf90/d;
L_0x16ac150/d .functor AND 1, L_0x16ac5f0, L_0x16ac720, C4<1>, C4<1>;
L_0x16ac150 .delay (20000,20000,20000) L_0x16ac150/d;
L_0x16ac220/d .functor AND 1, L_0x16ac5f0, L_0x16aba00, C4<1>, C4<1>;
L_0x16ac220 .delay (20000,20000,20000) L_0x16ac220/d;
L_0x16ac2c0/d .functor AND 1, L_0x16ac720, L_0x16aba00, C4<1>, C4<1>;
L_0x16ac2c0 .delay (20000,20000,20000) L_0x16ac2c0/d;
L_0x16ac390/d .functor OR 1, L_0x16ac150, L_0x16ac220, L_0x16ac2c0, C4<0>;
L_0x16ac390 .delay (20000,20000,20000) L_0x16ac390/d;
v0x16a59e0_0 .net "AandB", 0 0, L_0x16ac150; 1 drivers
v0x16a5aa0_0 .net "AandC", 0 0, L_0x16ac220; 1 drivers
v0x16a5b40_0 .net "BandC", 0 0, L_0x16ac2c0; 1 drivers
v0x16a5be0_0 .net "a", 0 0, L_0x16ac5f0; 1 drivers
v0x16a5c60_0 .net "b", 0 0, L_0x16ac720; 1 drivers
v0x16a5d00_0 .alias "carryin", 0 0, v0x16a6840_0;
v0x16a5da0_0 .alias "carryout", 0 0, v0x16a6840_1;
v0x16a5e20_0 .net "sum", 0 0, L_0x16abf90; 1 drivers
S_0x16a52f0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x16a4bc0;
 .timescale -9 -12;
L_0x16ac890/d .functor XOR 1, L_0x16ace90, L_0x16acfc0, L_0x16ac390, C4<0>;
L_0x16ac890 .delay (30000,30000,30000) L_0x16ac890/d;
L_0x16ac9c0/d .functor AND 1, L_0x16ace90, L_0x16acfc0, C4<1>, C4<1>;
L_0x16ac9c0 .delay (20000,20000,20000) L_0x16ac9c0/d;
L_0x16acb00/d .functor AND 1, L_0x16ace90, L_0x16ac390, C4<1>, C4<1>;
L_0x16acb00 .delay (20000,20000,20000) L_0x16acb00/d;
L_0x16acba0/d .functor AND 1, L_0x16acfc0, L_0x16ac390, C4<1>, C4<1>;
L_0x16acba0 .delay (20000,20000,20000) L_0x16acba0/d;
L_0x16acc60/d .functor OR 1, L_0x16ac9c0, L_0x16acb00, L_0x16acba0, C4<0>;
L_0x16acc60 .delay (20000,20000,20000) L_0x16acc60/d;
v0x16a53e0_0 .net "AandB", 0 0, L_0x16ac9c0; 1 drivers
v0x16a54a0_0 .net "AandC", 0 0, L_0x16acb00; 1 drivers
v0x16a5540_0 .net "BandC", 0 0, L_0x16acba0; 1 drivers
v0x16a55e0_0 .net "a", 0 0, L_0x16ace90; 1 drivers
v0x16a5660_0 .net "b", 0 0, L_0x16acfc0; 1 drivers
v0x16a5700_0 .alias "carryin", 0 0, v0x16a6840_1;
v0x16a57a0_0 .alias "carryout", 0 0, v0x16a6840_2;
v0x16a5820_0 .net "sum", 0 0, L_0x16ac890; 1 drivers
S_0x16a4cb0 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x16a4bc0;
 .timescale -9 -12;
L_0x16ad0f0/d .functor XOR 1, L_0x16ad840, L_0x16ada00, L_0x16acc60, C4<0>;
L_0x16ad0f0 .delay (30000,30000,30000) L_0x16ad0f0/d;
L_0x16ad1e0/d .functor AND 1, L_0x16ad840, L_0x16ada00, C4<1>, C4<1>;
L_0x16ad1e0 .delay (20000,20000,20000) L_0x16ad1e0/d;
L_0x16ad300/d .functor AND 1, L_0x16ad840, L_0x16acc60, C4<1>, C4<1>;
L_0x16ad300 .delay (20000,20000,20000) L_0x16ad300/d;
L_0x16ad3c0/d .functor AND 1, L_0x16ada00, L_0x16acc60, C4<1>, C4<1>;
L_0x16ad3c0 .delay (20000,20000,20000) L_0x16ad3c0/d;
L_0x16ad4b0/d .functor OR 1, L_0x16ad1e0, L_0x16ad300, L_0x16ad3c0, C4<0>;
L_0x16ad4b0 .delay (20000,20000,20000) L_0x16ad4b0/d;
v0x16a4da0_0 .net "AandB", 0 0, L_0x16ad1e0; 1 drivers
v0x16a4e60_0 .net "AandC", 0 0, L_0x16ad300; 1 drivers
v0x16a4f00_0 .net "BandC", 0 0, L_0x16ad3c0; 1 drivers
v0x16a4fa0_0 .net "a", 0 0, L_0x16ad840; 1 drivers
v0x16a5020_0 .net "b", 0 0, L_0x16ada00; 1 drivers
v0x16a50c0_0 .alias "carryin", 0 0, v0x16a6840_2;
v0x16a51a0_0 .alias "carryout", 0 0, v0x16a8b30_1;
v0x16a5220_0 .net "sum", 0 0, L_0x16ad0f0; 1 drivers
S_0x16a2db0 .scope module, "f42" "CompAdder4bit" 3 61, 3 30, S_0x167f060;
 .timescale -9 -12;
v0x16a46e0_0 .net "a", 3 0, L_0x16b0310; 1 drivers
v0x16a47a0_0 .net "b", 3 0, L_0x16b0440; 1 drivers
v0x16a4840_0 .alias "carryin", 0 0, v0x16a8b30_1;
v0x16a48e0_0 .alias "carryout", 0 0, v0x16a8b30_2;
v0x16a49b0_0 .net8 "sum", 3 0, RS_0x2ab4cf3f5418; 4 drivers
v0x16a4a30 .array "temp_cout", 0 2;
v0x16a4a30_0 .net v0x16a4a30 0, 0 0, L_0x16ae0d0; 1 drivers
v0x16a4a30_1 .net v0x16a4a30 1, 0 0, L_0x16ae9f0; 1 drivers
v0x16a4a30_2 .net v0x16a4a30 2, 0 0, L_0x16af2a0; 1 drivers
L_0x16ae1f0 .part/pv L_0x16ad7e0, 0, 1, 4;
L_0x16ae290 .part L_0x16b0310, 0, 1;
L_0x16ae3c0 .part L_0x16b0440, 0, 1;
L_0x16aeb60 .part/pv L_0x16ae5c0, 1, 1, 4;
L_0x16aec50 .part L_0x16b0310, 1, 1;
L_0x16aed80 .part L_0x16b0440, 1, 1;
L_0x16af430 .part/pv L_0x16aeef0, 2, 1, 4;
L_0x16af4d0 .part L_0x16b0310, 2, 1;
L_0x16af600 .part L_0x16b0440, 2, 1;
L_0x16afcf0 .part/pv L_0x16af730, 3, 1, 4;
L_0x16afe80 .part L_0x16b0310, 3, 1;
L_0x16affb0 .part L_0x16b0440, 3, 1;
S_0x16a40e0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x16a2db0;
 .timescale -9 -12;
L_0x16ad7e0/d .functor XOR 1, L_0x16ae290, L_0x16ae3c0, C4<0>, C4<0>;
L_0x16ad7e0 .delay (30000,30000,30000) L_0x16ad7e0/d;
L_0x16adec0/d .functor AND 1, L_0x16ae290, L_0x16ae3c0, C4<1>, C4<1>;
L_0x16adec0 .delay (20000,20000,20000) L_0x16adec0/d;
L_0x16adf90/d .functor AND 1, L_0x16ae290, C4<0>, C4<1>, C4<1>;
L_0x16adf90 .delay (20000,20000,20000) L_0x16adf90/d;
L_0x16ae030/d .functor AND 1, L_0x16ae3c0, C4<0>, C4<1>, C4<1>;
L_0x16ae030 .delay (20000,20000,20000) L_0x16ae030/d;
L_0x16ae0d0/d .functor OR 1, L_0x16adec0, L_0x16adf90, L_0x16ae030, C4<0>;
L_0x16ae0d0 .delay (20000,20000,20000) L_0x16ae0d0/d;
v0x16a41d0_0 .net "AandB", 0 0, L_0x16adec0; 1 drivers
v0x16a4290_0 .net "AandC", 0 0, L_0x16adf90; 1 drivers
v0x16a4330_0 .net "BandC", 0 0, L_0x16ae030; 1 drivers
v0x16a43d0_0 .net "a", 0 0, L_0x16ae290; 1 drivers
v0x16a4450_0 .net "b", 0 0, L_0x16ae3c0; 1 drivers
v0x16a44f0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x16a4590_0 .alias "carryout", 0 0, v0x16a4a30_0;
v0x16a4610_0 .net "sum", 0 0, L_0x16ad7e0; 1 drivers
S_0x16a3ae0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x16a2db0;
 .timescale -9 -12;
L_0x16ae5c0/d .functor XOR 1, L_0x16aec50, L_0x16aed80, L_0x16ae0d0, C4<0>;
L_0x16ae5c0 .delay (30000,30000,30000) L_0x16ae5c0/d;
L_0x16ae7b0/d .functor AND 1, L_0x16aec50, L_0x16aed80, C4<1>, C4<1>;
L_0x16ae7b0 .delay (20000,20000,20000) L_0x16ae7b0/d;
L_0x16ae880/d .functor AND 1, L_0x16aec50, L_0x16ae0d0, C4<1>, C4<1>;
L_0x16ae880 .delay (20000,20000,20000) L_0x16ae880/d;
L_0x16ae920/d .functor AND 1, L_0x16aed80, L_0x16ae0d0, C4<1>, C4<1>;
L_0x16ae920 .delay (20000,20000,20000) L_0x16ae920/d;
L_0x16ae9f0/d .functor OR 1, L_0x16ae7b0, L_0x16ae880, L_0x16ae920, C4<0>;
L_0x16ae9f0 .delay (20000,20000,20000) L_0x16ae9f0/d;
v0x16a3bd0_0 .net "AandB", 0 0, L_0x16ae7b0; 1 drivers
v0x16a3c90_0 .net "AandC", 0 0, L_0x16ae880; 1 drivers
v0x16a3d30_0 .net "BandC", 0 0, L_0x16ae920; 1 drivers
v0x16a3dd0_0 .net "a", 0 0, L_0x16aec50; 1 drivers
v0x16a3e50_0 .net "b", 0 0, L_0x16aed80; 1 drivers
v0x16a3ef0_0 .alias "carryin", 0 0, v0x16a4a30_0;
v0x16a3f90_0 .alias "carryout", 0 0, v0x16a4a30_1;
v0x16a4010_0 .net "sum", 0 0, L_0x16ae5c0; 1 drivers
S_0x16a34e0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x16a2db0;
 .timescale -9 -12;
L_0x16aeef0/d .functor XOR 1, L_0x16af4d0, L_0x16af600, L_0x16ae9f0, C4<0>;
L_0x16aeef0 .delay (30000,30000,30000) L_0x16aeef0/d;
L_0x16af020/d .functor AND 1, L_0x16af4d0, L_0x16af600, C4<1>, C4<1>;
L_0x16af020 .delay (20000,20000,20000) L_0x16af020/d;
L_0x16af160/d .functor AND 1, L_0x16af4d0, L_0x16ae9f0, C4<1>, C4<1>;
L_0x16af160 .delay (20000,20000,20000) L_0x16af160/d;
L_0x16af200/d .functor AND 1, L_0x16af600, L_0x16ae9f0, C4<1>, C4<1>;
L_0x16af200 .delay (20000,20000,20000) L_0x16af200/d;
L_0x16af2a0/d .functor OR 1, L_0x16af020, L_0x16af160, L_0x16af200, C4<0>;
L_0x16af2a0 .delay (20000,20000,20000) L_0x16af2a0/d;
v0x16a35d0_0 .net "AandB", 0 0, L_0x16af020; 1 drivers
v0x16a3690_0 .net "AandC", 0 0, L_0x16af160; 1 drivers
v0x16a3730_0 .net "BandC", 0 0, L_0x16af200; 1 drivers
v0x16a37d0_0 .net "a", 0 0, L_0x16af4d0; 1 drivers
v0x16a3850_0 .net "b", 0 0, L_0x16af600; 1 drivers
v0x16a38f0_0 .alias "carryin", 0 0, v0x16a4a30_1;
v0x16a3990_0 .alias "carryout", 0 0, v0x16a4a30_2;
v0x16a3a10_0 .net "sum", 0 0, L_0x16aeef0; 1 drivers
S_0x16a2ea0 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x16a2db0;
 .timescale -9 -12;
L_0x16af730/d .functor XOR 1, L_0x16afe80, L_0x16affb0, L_0x16af2a0, C4<0>;
L_0x16af730 .delay (30000,30000,30000) L_0x16af730/d;
L_0x16af820/d .functor AND 1, L_0x16afe80, L_0x16affb0, C4<1>, C4<1>;
L_0x16af820 .delay (20000,20000,20000) L_0x16af820/d;
L_0x16af940/d .functor AND 1, L_0x16afe80, L_0x16af2a0, C4<1>, C4<1>;
L_0x16af940 .delay (20000,20000,20000) L_0x16af940/d;
L_0x16afa00/d .functor AND 1, L_0x16affb0, L_0x16af2a0, C4<1>, C4<1>;
L_0x16afa00 .delay (20000,20000,20000) L_0x16afa00/d;
L_0x16afaf0/d .functor OR 1, L_0x16af820, L_0x16af940, L_0x16afa00, C4<0>;
L_0x16afaf0 .delay (20000,20000,20000) L_0x16afaf0/d;
v0x16a2f90_0 .net "AandB", 0 0, L_0x16af820; 1 drivers
v0x16a3050_0 .net "AandC", 0 0, L_0x16af940; 1 drivers
v0x16a30f0_0 .net "BandC", 0 0, L_0x16afa00; 1 drivers
v0x16a3190_0 .net "a", 0 0, L_0x16afe80; 1 drivers
v0x16a3210_0 .net "b", 0 0, L_0x16affb0; 1 drivers
v0x16a32b0_0 .alias "carryin", 0 0, v0x16a4a30_2;
v0x16a3390_0 .alias "carryout", 0 0, v0x16a8b30_2;
v0x16a3410_0 .net "sum", 0 0, L_0x16af730; 1 drivers
S_0x16a0fa0 .scope module, "f43" "CompAdder4bit" 3 62, 3 30, S_0x167f060;
 .timescale -9 -12;
v0x16a28d0_0 .net "a", 3 0, L_0x16b2a00; 1 drivers
v0x16a2990_0 .net "b", 3 0, L_0x16b2aa0; 1 drivers
v0x16a2a30_0 .alias "carryin", 0 0, v0x16a8b30_2;
v0x16a2ad0_0 .alias "carryout", 0 0, v0x16a8b30_3;
v0x16a2ba0_0 .net8 "sum", 3 0, RS_0x2ab4cf3f4e18; 4 drivers
v0x16a2c20 .array "temp_cout", 0 2;
v0x16a2c20_0 .net v0x16a2c20 0, 0 0, L_0x16b07c0; 1 drivers
v0x16a2c20_1 .net v0x16a2c20 1, 0 0, L_0x16b1100; 1 drivers
v0x16a2c20_2 .net v0x16a2c20 2, 0 0, L_0x16b19b0; 1 drivers
L_0x16b0930 .part/pv L_0x16afe20, 0, 1, 4;
L_0x16b09d0 .part L_0x16b2a00, 0, 1;
L_0x16b0b00 .part L_0x16b2aa0, 0, 1;
L_0x16b1270 .part/pv L_0x16b0d00, 1, 1, 4;
L_0x16b1360 .part L_0x16b2a00, 1, 1;
L_0x16b1490 .part L_0x16b2aa0, 1, 1;
L_0x16b1b40 .part/pv L_0x16b1600, 2, 1, 4;
L_0x16b1be0 .part L_0x16b2a00, 2, 1;
L_0x16b1d10 .part L_0x16b2aa0, 2, 1;
L_0x16b23e0 .part/pv L_0x16b1e40, 3, 1, 4;
L_0x16b2570 .part L_0x16b2a00, 3, 1;
L_0x16b2730 .part L_0x16b2aa0, 3, 1;
S_0x16a22d0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x16a0fa0;
 .timescale -9 -12;
L_0x16afe20/d .functor XOR 1, L_0x16b09d0, L_0x16b0b00, C4<0>, C4<0>;
L_0x16afe20 .delay (30000,30000,30000) L_0x16afe20/d;
L_0x16b05b0/d .functor AND 1, L_0x16b09d0, L_0x16b0b00, C4<1>, C4<1>;
L_0x16b05b0 .delay (20000,20000,20000) L_0x16b05b0/d;
L_0x16b0680/d .functor AND 1, L_0x16b09d0, C4<0>, C4<1>, C4<1>;
L_0x16b0680 .delay (20000,20000,20000) L_0x16b0680/d;
L_0x16b0720/d .functor AND 1, L_0x16b0b00, C4<0>, C4<1>, C4<1>;
L_0x16b0720 .delay (20000,20000,20000) L_0x16b0720/d;
L_0x16b07c0/d .functor OR 1, L_0x16b05b0, L_0x16b0680, L_0x16b0720, C4<0>;
L_0x16b07c0 .delay (20000,20000,20000) L_0x16b07c0/d;
v0x16a23c0_0 .net "AandB", 0 0, L_0x16b05b0; 1 drivers
v0x16a2480_0 .net "AandC", 0 0, L_0x16b0680; 1 drivers
v0x16a2520_0 .net "BandC", 0 0, L_0x16b0720; 1 drivers
v0x16a25c0_0 .net "a", 0 0, L_0x16b09d0; 1 drivers
v0x16a2640_0 .net "b", 0 0, L_0x16b0b00; 1 drivers
v0x16a26e0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x16a2780_0 .alias "carryout", 0 0, v0x16a2c20_0;
v0x16a2800_0 .net "sum", 0 0, L_0x16afe20; 1 drivers
S_0x16a1cd0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x16a0fa0;
 .timescale -9 -12;
L_0x16b0d00/d .functor XOR 1, L_0x16b1360, L_0x16b1490, L_0x16b07c0, C4<0>;
L_0x16b0d00 .delay (30000,30000,30000) L_0x16b0d00/d;
L_0x16b0ec0/d .functor AND 1, L_0x16b1360, L_0x16b1490, C4<1>, C4<1>;
L_0x16b0ec0 .delay (20000,20000,20000) L_0x16b0ec0/d;
L_0x16b0f90/d .functor AND 1, L_0x16b1360, L_0x16b07c0, C4<1>, C4<1>;
L_0x16b0f90 .delay (20000,20000,20000) L_0x16b0f90/d;
L_0x16b1030/d .functor AND 1, L_0x16b1490, L_0x16b07c0, C4<1>, C4<1>;
L_0x16b1030 .delay (20000,20000,20000) L_0x16b1030/d;
L_0x16b1100/d .functor OR 1, L_0x16b0ec0, L_0x16b0f90, L_0x16b1030, C4<0>;
L_0x16b1100 .delay (20000,20000,20000) L_0x16b1100/d;
v0x16a1dc0_0 .net "AandB", 0 0, L_0x16b0ec0; 1 drivers
v0x16a1e80_0 .net "AandC", 0 0, L_0x16b0f90; 1 drivers
v0x16a1f20_0 .net "BandC", 0 0, L_0x16b1030; 1 drivers
v0x16a1fc0_0 .net "a", 0 0, L_0x16b1360; 1 drivers
v0x16a2040_0 .net "b", 0 0, L_0x16b1490; 1 drivers
v0x16a20e0_0 .alias "carryin", 0 0, v0x16a2c20_0;
v0x16a2180_0 .alias "carryout", 0 0, v0x16a2c20_1;
v0x16a2200_0 .net "sum", 0 0, L_0x16b0d00; 1 drivers
S_0x16a16d0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x16a0fa0;
 .timescale -9 -12;
L_0x16b1600/d .functor XOR 1, L_0x16b1be0, L_0x16b1d10, L_0x16b1100, C4<0>;
L_0x16b1600 .delay (30000,30000,30000) L_0x16b1600/d;
L_0x16b1730/d .functor AND 1, L_0x16b1be0, L_0x16b1d10, C4<1>, C4<1>;
L_0x16b1730 .delay (20000,20000,20000) L_0x16b1730/d;
L_0x16b1870/d .functor AND 1, L_0x16b1be0, L_0x16b1100, C4<1>, C4<1>;
L_0x16b1870 .delay (20000,20000,20000) L_0x16b1870/d;
L_0x16b1910/d .functor AND 1, L_0x16b1d10, L_0x16b1100, C4<1>, C4<1>;
L_0x16b1910 .delay (20000,20000,20000) L_0x16b1910/d;
L_0x16b19b0/d .functor OR 1, L_0x16b1730, L_0x16b1870, L_0x16b1910, C4<0>;
L_0x16b19b0 .delay (20000,20000,20000) L_0x16b19b0/d;
v0x16a17c0_0 .net "AandB", 0 0, L_0x16b1730; 1 drivers
v0x16a1880_0 .net "AandC", 0 0, L_0x16b1870; 1 drivers
v0x16a1920_0 .net "BandC", 0 0, L_0x16b1910; 1 drivers
v0x16a19c0_0 .net "a", 0 0, L_0x16b1be0; 1 drivers
v0x16a1a40_0 .net "b", 0 0, L_0x16b1d10; 1 drivers
v0x16a1ae0_0 .alias "carryin", 0 0, v0x16a2c20_1;
v0x16a1b80_0 .alias "carryout", 0 0, v0x16a2c20_2;
v0x16a1c00_0 .net "sum", 0 0, L_0x16b1600; 1 drivers
S_0x16a1090 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x16a0fa0;
 .timescale -9 -12;
L_0x16b1e40/d .functor XOR 1, L_0x16b2570, L_0x16b2730, L_0x16b19b0, C4<0>;
L_0x16b1e40 .delay (30000,30000,30000) L_0x16b1e40/d;
L_0x16b1f30/d .functor AND 1, L_0x16b2570, L_0x16b2730, C4<1>, C4<1>;
L_0x16b1f30 .delay (20000,20000,20000) L_0x16b1f30/d;
L_0x16b2050/d .functor AND 1, L_0x16b2570, L_0x16b19b0, C4<1>, C4<1>;
L_0x16b2050 .delay (20000,20000,20000) L_0x16b2050/d;
L_0x16b20f0/d .functor AND 1, L_0x16b2730, L_0x16b19b0, C4<1>, C4<1>;
L_0x16b20f0 .delay (20000,20000,20000) L_0x16b20f0/d;
L_0x16b21e0/d .functor OR 1, L_0x16b1f30, L_0x16b2050, L_0x16b20f0, C4<0>;
L_0x16b21e0 .delay (20000,20000,20000) L_0x16b21e0/d;
v0x16a1180_0 .net "AandB", 0 0, L_0x16b1f30; 1 drivers
v0x16a1240_0 .net "AandC", 0 0, L_0x16b2050; 1 drivers
v0x16a12e0_0 .net "BandC", 0 0, L_0x16b20f0; 1 drivers
v0x16a1380_0 .net "a", 0 0, L_0x16b2570; 1 drivers
v0x16a1400_0 .net "b", 0 0, L_0x16b2730; 1 drivers
v0x16a14a0_0 .alias "carryin", 0 0, v0x16a2c20_2;
v0x16a1580_0 .alias "carryout", 0 0, v0x16a8b30_3;
v0x16a1600_0 .net "sum", 0 0, L_0x16b1e40; 1 drivers
S_0x169f190 .scope module, "f44" "CompAdder4bit" 3 63, 3 30, S_0x167f060;
 .timescale -9 -12;
v0x16a0ac0_0 .net "a", 3 0, L_0x16b5040; 1 drivers
v0x16a0b80_0 .net "b", 3 0, L_0x16b5160; 1 drivers
v0x16a0c20_0 .alias "carryin", 0 0, v0x16a8b30_3;
v0x16a0cc0_0 .alias "carryout", 0 0, v0x16a8b30_4;
v0x16a0d90_0 .net8 "sum", 3 0, RS_0x2ab4cf3f4818; 4 drivers
v0x16a0e10 .array "temp_cout", 0 2;
v0x16a0e10_0 .net v0x16a0e10 0, 0 0, L_0x16b2e50; 1 drivers
v0x16a0e10_1 .net v0x16a0e10 1, 0 0, L_0x16b3700; 1 drivers
v0x16a0e10_2 .net v0x16a0e10 2, 0 0, L_0x16b3fd0; 1 drivers
L_0x16b2f20 .part/pv L_0x16b2510, 0, 1, 4;
L_0x16b2fc0 .part L_0x16b5040, 0, 1;
L_0x16b30f0 .part L_0x16b5160, 0, 1;
L_0x16b3870 .part/pv L_0x16b3330, 1, 1, 4;
L_0x16b3960 .part L_0x16b5040, 1, 1;
L_0x16b3a90 .part L_0x16b5160, 1, 1;
L_0x16b4160 .part/pv L_0x16b3c00, 2, 1, 4;
L_0x16b4200 .part L_0x16b5040, 2, 1;
L_0x16b4330 .part L_0x16b5160, 2, 1;
L_0x16b4a20 .part/pv L_0x16b4460, 3, 1, 4;
L_0x16b4bb0 .part L_0x16b5040, 3, 1;
L_0x16b4d70 .part L_0x16b5160, 3, 1;
S_0x16a04c0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x169f190;
 .timescale -9 -12;
L_0x16b2510/d .functor XOR 1, L_0x16b2fc0, L_0x16b30f0, C4<0>, C4<0>;
L_0x16b2510 .delay (30000,30000,30000) L_0x16b2510/d;
L_0x16b2c20/d .functor AND 1, L_0x16b2fc0, L_0x16b30f0, C4<1>, C4<1>;
L_0x16b2c20 .delay (20000,20000,20000) L_0x16b2c20/d;
L_0x16b2cf0/d .functor AND 1, L_0x16b2fc0, C4<0>, C4<1>, C4<1>;
L_0x16b2cf0 .delay (20000,20000,20000) L_0x16b2cf0/d;
L_0x16b2d90/d .functor AND 1, L_0x16b30f0, C4<0>, C4<1>, C4<1>;
L_0x16b2d90 .delay (20000,20000,20000) L_0x16b2d90/d;
L_0x16b2e50/d .functor OR 1, L_0x16b2c20, L_0x16b2cf0, L_0x16b2d90, C4<0>;
L_0x16b2e50 .delay (20000,20000,20000) L_0x16b2e50/d;
v0x16a05b0_0 .net "AandB", 0 0, L_0x16b2c20; 1 drivers
v0x16a0670_0 .net "AandC", 0 0, L_0x16b2cf0; 1 drivers
v0x16a0710_0 .net "BandC", 0 0, L_0x16b2d90; 1 drivers
v0x16a07b0_0 .net "a", 0 0, L_0x16b2fc0; 1 drivers
v0x16a0830_0 .net "b", 0 0, L_0x16b30f0; 1 drivers
v0x16a08d0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x16a0970_0 .alias "carryout", 0 0, v0x16a0e10_0;
v0x16a09f0_0 .net "sum", 0 0, L_0x16b2510; 1 drivers
S_0x169fec0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x169f190;
 .timescale -9 -12;
L_0x16b3330/d .functor XOR 1, L_0x16b3960, L_0x16b3a90, L_0x16b2e50, C4<0>;
L_0x16b3330 .delay (30000,30000,30000) L_0x16b3330/d;
L_0x16b34c0/d .functor AND 1, L_0x16b3960, L_0x16b3a90, C4<1>, C4<1>;
L_0x16b34c0 .delay (20000,20000,20000) L_0x16b34c0/d;
L_0x16b3590/d .functor AND 1, L_0x16b3960, L_0x16b2e50, C4<1>, C4<1>;
L_0x16b3590 .delay (20000,20000,20000) L_0x16b3590/d;
L_0x16b3630/d .functor AND 1, L_0x16b3a90, L_0x16b2e50, C4<1>, C4<1>;
L_0x16b3630 .delay (20000,20000,20000) L_0x16b3630/d;
L_0x16b3700/d .functor OR 1, L_0x16b34c0, L_0x16b3590, L_0x16b3630, C4<0>;
L_0x16b3700 .delay (20000,20000,20000) L_0x16b3700/d;
v0x169ffb0_0 .net "AandB", 0 0, L_0x16b34c0; 1 drivers
v0x16a0070_0 .net "AandC", 0 0, L_0x16b3590; 1 drivers
v0x16a0110_0 .net "BandC", 0 0, L_0x16b3630; 1 drivers
v0x16a01b0_0 .net "a", 0 0, L_0x16b3960; 1 drivers
v0x16a0230_0 .net "b", 0 0, L_0x16b3a90; 1 drivers
v0x16a02d0_0 .alias "carryin", 0 0, v0x16a0e10_0;
v0x16a0370_0 .alias "carryout", 0 0, v0x16a0e10_1;
v0x16a03f0_0 .net "sum", 0 0, L_0x16b3330; 1 drivers
S_0x169f8c0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x169f190;
 .timescale -9 -12;
L_0x16b3c00/d .functor XOR 1, L_0x16b4200, L_0x16b4330, L_0x16b3700, C4<0>;
L_0x16b3c00 .delay (30000,30000,30000) L_0x16b3c00/d;
L_0x16b3d30/d .functor AND 1, L_0x16b4200, L_0x16b4330, C4<1>, C4<1>;
L_0x16b3d30 .delay (20000,20000,20000) L_0x16b3d30/d;
L_0x16b3e70/d .functor AND 1, L_0x16b4200, L_0x16b3700, C4<1>, C4<1>;
L_0x16b3e70 .delay (20000,20000,20000) L_0x16b3e70/d;
L_0x16b3f10/d .functor AND 1, L_0x16b4330, L_0x16b3700, C4<1>, C4<1>;
L_0x16b3f10 .delay (20000,20000,20000) L_0x16b3f10/d;
L_0x16b3fd0/d .functor OR 1, L_0x16b3d30, L_0x16b3e70, L_0x16b3f10, C4<0>;
L_0x16b3fd0 .delay (20000,20000,20000) L_0x16b3fd0/d;
v0x169f9b0_0 .net "AandB", 0 0, L_0x16b3d30; 1 drivers
v0x169fa70_0 .net "AandC", 0 0, L_0x16b3e70; 1 drivers
v0x169fb10_0 .net "BandC", 0 0, L_0x16b3f10; 1 drivers
v0x169fbb0_0 .net "a", 0 0, L_0x16b4200; 1 drivers
v0x169fc30_0 .net "b", 0 0, L_0x16b4330; 1 drivers
v0x169fcd0_0 .alias "carryin", 0 0, v0x16a0e10_1;
v0x169fd70_0 .alias "carryout", 0 0, v0x16a0e10_2;
v0x169fdf0_0 .net "sum", 0 0, L_0x16b3c00; 1 drivers
S_0x169f280 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x169f190;
 .timescale -9 -12;
L_0x16b4460/d .functor XOR 1, L_0x16b4bb0, L_0x16b4d70, L_0x16b3fd0, C4<0>;
L_0x16b4460 .delay (30000,30000,30000) L_0x16b4460/d;
L_0x16b4550/d .functor AND 1, L_0x16b4bb0, L_0x16b4d70, C4<1>, C4<1>;
L_0x16b4550 .delay (20000,20000,20000) L_0x16b4550/d;
L_0x16b4670/d .functor AND 1, L_0x16b4bb0, L_0x16b3fd0, C4<1>, C4<1>;
L_0x16b4670 .delay (20000,20000,20000) L_0x16b4670/d;
L_0x16b4730/d .functor AND 1, L_0x16b4d70, L_0x16b3fd0, C4<1>, C4<1>;
L_0x16b4730 .delay (20000,20000,20000) L_0x16b4730/d;
L_0x16b4820/d .functor OR 1, L_0x16b4550, L_0x16b4670, L_0x16b4730, C4<0>;
L_0x16b4820 .delay (20000,20000,20000) L_0x16b4820/d;
v0x169f370_0 .net "AandB", 0 0, L_0x16b4550; 1 drivers
v0x169f430_0 .net "AandC", 0 0, L_0x16b4670; 1 drivers
v0x169f4d0_0 .net "BandC", 0 0, L_0x16b4730; 1 drivers
v0x169f570_0 .net "a", 0 0, L_0x16b4bb0; 1 drivers
v0x169f5f0_0 .net "b", 0 0, L_0x16b4d70; 1 drivers
v0x169f690_0 .alias "carryin", 0 0, v0x16a0e10_2;
v0x169f770_0 .alias "carryout", 0 0, v0x16a8b30_4;
v0x169f7f0_0 .net "sum", 0 0, L_0x16b4460; 1 drivers
S_0x169d380 .scope module, "f45" "CompAdder4bit" 3 64, 3 30, S_0x167f060;
 .timescale -9 -12;
v0x169ecb0_0 .net "a", 3 0, L_0x16b76f0; 1 drivers
v0x169ed70_0 .net "b", 3 0, L_0x16b7790; 1 drivers
v0x169ee10_0 .alias "carryin", 0 0, v0x16a8b30_4;
v0x169eeb0_0 .alias "carryout", 0 0, v0x16a8b30_5;
v0x169ef80_0 .net8 "sum", 3 0, RS_0x2ab4cf3f4218; 4 drivers
v0x169f000 .array "temp_cout", 0 2;
v0x169f000_0 .net v0x169f000 0, 0 0, L_0x16b54a0; 1 drivers
v0x169f000_1 .net v0x169f000 1, 0 0, L_0x16b5d90; 1 drivers
v0x169f000_2 .net v0x169f000 2, 0 0, L_0x16b6660; 1 drivers
L_0x16b55c0 .part/pv L_0x16b4b50, 0, 1, 4;
L_0x16b5660 .part L_0x16b76f0, 0, 1;
L_0x16b5790 .part L_0x16b7790, 0, 1;
L_0x16b5f00 .part/pv L_0x16b5990, 1, 1, 4;
L_0x16b5ff0 .part L_0x16b76f0, 1, 1;
L_0x16b6120 .part L_0x16b7790, 1, 1;
L_0x16b67f0 .part/pv L_0x16b6290, 2, 1, 4;
L_0x16b6890 .part L_0x16b76f0, 2, 1;
L_0x16b69c0 .part L_0x16b7790, 2, 1;
L_0x16b70b0 .part/pv L_0x16b6af0, 3, 1, 4;
L_0x16b7240 .part L_0x16b76f0, 3, 1;
L_0x16b7400 .part L_0x16b7790, 3, 1;
S_0x169e6b0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x169d380;
 .timescale -9 -12;
L_0x16b4b50/d .functor XOR 1, L_0x16b5660, L_0x16b5790, C4<0>, C4<0>;
L_0x16b4b50 .delay (30000,30000,30000) L_0x16b4b50/d;
L_0x16b5270/d .functor AND 1, L_0x16b5660, L_0x16b5790, C4<1>, C4<1>;
L_0x16b5270 .delay (20000,20000,20000) L_0x16b5270/d;
L_0x16b5340/d .functor AND 1, L_0x16b5660, C4<0>, C4<1>, C4<1>;
L_0x16b5340 .delay (20000,20000,20000) L_0x16b5340/d;
L_0x16b53e0/d .functor AND 1, L_0x16b5790, C4<0>, C4<1>, C4<1>;
L_0x16b53e0 .delay (20000,20000,20000) L_0x16b53e0/d;
L_0x16b54a0/d .functor OR 1, L_0x16b5270, L_0x16b5340, L_0x16b53e0, C4<0>;
L_0x16b54a0 .delay (20000,20000,20000) L_0x16b54a0/d;
v0x169e7a0_0 .net "AandB", 0 0, L_0x16b5270; 1 drivers
v0x169e860_0 .net "AandC", 0 0, L_0x16b5340; 1 drivers
v0x169e900_0 .net "BandC", 0 0, L_0x16b53e0; 1 drivers
v0x169e9a0_0 .net "a", 0 0, L_0x16b5660; 1 drivers
v0x169ea20_0 .net "b", 0 0, L_0x16b5790; 1 drivers
v0x169eac0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x169eb60_0 .alias "carryout", 0 0, v0x169f000_0;
v0x169ebe0_0 .net "sum", 0 0, L_0x16b4b50; 1 drivers
S_0x169e0b0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x169d380;
 .timescale -9 -12;
L_0x16b5990/d .functor XOR 1, L_0x16b5ff0, L_0x16b6120, L_0x16b54a0, C4<0>;
L_0x16b5990 .delay (30000,30000,30000) L_0x16b5990/d;
L_0x16b5b50/d .functor AND 1, L_0x16b5ff0, L_0x16b6120, C4<1>, C4<1>;
L_0x16b5b50 .delay (20000,20000,20000) L_0x16b5b50/d;
L_0x16b5c20/d .functor AND 1, L_0x16b5ff0, L_0x16b54a0, C4<1>, C4<1>;
L_0x16b5c20 .delay (20000,20000,20000) L_0x16b5c20/d;
L_0x16b5cc0/d .functor AND 1, L_0x16b6120, L_0x16b54a0, C4<1>, C4<1>;
L_0x16b5cc0 .delay (20000,20000,20000) L_0x16b5cc0/d;
L_0x16b5d90/d .functor OR 1, L_0x16b5b50, L_0x16b5c20, L_0x16b5cc0, C4<0>;
L_0x16b5d90 .delay (20000,20000,20000) L_0x16b5d90/d;
v0x169e1a0_0 .net "AandB", 0 0, L_0x16b5b50; 1 drivers
v0x169e260_0 .net "AandC", 0 0, L_0x16b5c20; 1 drivers
v0x169e300_0 .net "BandC", 0 0, L_0x16b5cc0; 1 drivers
v0x169e3a0_0 .net "a", 0 0, L_0x16b5ff0; 1 drivers
v0x169e420_0 .net "b", 0 0, L_0x16b6120; 1 drivers
v0x169e4c0_0 .alias "carryin", 0 0, v0x169f000_0;
v0x169e560_0 .alias "carryout", 0 0, v0x169f000_1;
v0x169e5e0_0 .net "sum", 0 0, L_0x16b5990; 1 drivers
S_0x169dab0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x169d380;
 .timescale -9 -12;
L_0x16b6290/d .functor XOR 1, L_0x16b6890, L_0x16b69c0, L_0x16b5d90, C4<0>;
L_0x16b6290 .delay (30000,30000,30000) L_0x16b6290/d;
L_0x16b63c0/d .functor AND 1, L_0x16b6890, L_0x16b69c0, C4<1>, C4<1>;
L_0x16b63c0 .delay (20000,20000,20000) L_0x16b63c0/d;
L_0x16b6500/d .functor AND 1, L_0x16b6890, L_0x16b5d90, C4<1>, C4<1>;
L_0x16b6500 .delay (20000,20000,20000) L_0x16b6500/d;
L_0x16b65a0/d .functor AND 1, L_0x16b69c0, L_0x16b5d90, C4<1>, C4<1>;
L_0x16b65a0 .delay (20000,20000,20000) L_0x16b65a0/d;
L_0x16b6660/d .functor OR 1, L_0x16b63c0, L_0x16b6500, L_0x16b65a0, C4<0>;
L_0x16b6660 .delay (20000,20000,20000) L_0x16b6660/d;
v0x169dba0_0 .net "AandB", 0 0, L_0x16b63c0; 1 drivers
v0x169dc60_0 .net "AandC", 0 0, L_0x16b6500; 1 drivers
v0x169dd00_0 .net "BandC", 0 0, L_0x16b65a0; 1 drivers
v0x169dda0_0 .net "a", 0 0, L_0x16b6890; 1 drivers
v0x169de20_0 .net "b", 0 0, L_0x16b69c0; 1 drivers
v0x169dec0_0 .alias "carryin", 0 0, v0x169f000_1;
v0x169df60_0 .alias "carryout", 0 0, v0x169f000_2;
v0x169dfe0_0 .net "sum", 0 0, L_0x16b6290; 1 drivers
S_0x169d470 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x169d380;
 .timescale -9 -12;
L_0x16b6af0/d .functor XOR 1, L_0x16b7240, L_0x16b7400, L_0x16b6660, C4<0>;
L_0x16b6af0 .delay (30000,30000,30000) L_0x16b6af0/d;
L_0x16b6be0/d .functor AND 1, L_0x16b7240, L_0x16b7400, C4<1>, C4<1>;
L_0x16b6be0 .delay (20000,20000,20000) L_0x16b6be0/d;
L_0x16b6d00/d .functor AND 1, L_0x16b7240, L_0x16b6660, C4<1>, C4<1>;
L_0x16b6d00 .delay (20000,20000,20000) L_0x16b6d00/d;
L_0x16b6dc0/d .functor AND 1, L_0x16b7400, L_0x16b6660, C4<1>, C4<1>;
L_0x16b6dc0 .delay (20000,20000,20000) L_0x16b6dc0/d;
L_0x16b6eb0/d .functor OR 1, L_0x16b6be0, L_0x16b6d00, L_0x16b6dc0, C4<0>;
L_0x16b6eb0 .delay (20000,20000,20000) L_0x16b6eb0/d;
v0x169d560_0 .net "AandB", 0 0, L_0x16b6be0; 1 drivers
v0x169d620_0 .net "AandC", 0 0, L_0x16b6d00; 1 drivers
v0x169d6c0_0 .net "BandC", 0 0, L_0x16b6dc0; 1 drivers
v0x169d760_0 .net "a", 0 0, L_0x16b7240; 1 drivers
v0x169d7e0_0 .net "b", 0 0, L_0x16b7400; 1 drivers
v0x169d880_0 .alias "carryin", 0 0, v0x169f000_2;
v0x169d960_0 .alias "carryout", 0 0, v0x16a8b30_5;
v0x169d9e0_0 .net "sum", 0 0, L_0x16b6af0; 1 drivers
S_0x169b540 .scope module, "f46" "CompAdder4bit" 3 65, 3 30, S_0x167f060;
 .timescale -9 -12;
v0x169ce70_0 .net "a", 3 0, L_0x16b9e30; 1 drivers
v0x169cf30_0 .net "b", 3 0, L_0x16b7830; 1 drivers
v0x169cfd0_0 .alias "carryin", 0 0, v0x16a8b30_5;
v0x169d070_0 .alias "carryout", 0 0, v0x16a8b30_6;
v0x169d170_0 .net8 "sum", 3 0, RS_0x2ab4cf3f3c18; 4 drivers
v0x169d1f0 .array "temp_cout", 0 2;
v0x169d1f0_0 .net v0x169d1f0 0, 0 0, L_0x16b7ae0; 1 drivers
v0x169d1f0_1 .net v0x169d1f0 1, 0 0, L_0x16b8390; 1 drivers
v0x169d1f0_2 .net v0x169d1f0 2, 0 0, L_0x16b8cb0; 1 drivers
L_0x16b7c00 .part/pv L_0x16b71e0, 0, 1, 4;
L_0x16b7ca0 .part L_0x16b9e30, 0, 1;
L_0x16b7dd0 .part L_0x16b7830, 0, 1;
L_0x16b8550 .part/pv L_0x16b7fd0, 1, 1, 4;
L_0x16b8640 .part L_0x16b9e30, 1, 1;
L_0x16b8770 .part L_0x16b7830, 1, 1;
L_0x16b8e40 .part/pv L_0x16b88e0, 2, 1, 4;
L_0x16b8ee0 .part L_0x16b9e30, 2, 1;
L_0x16b9010 .part L_0x16b7830, 2, 1;
L_0x16b9700 .part/pv L_0x16b9140, 3, 1, 4;
L_0x16b9890 .part L_0x16b9e30, 3, 1;
L_0x16b9a50 .part L_0x16b7830, 3, 1;
S_0x169c870 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x169b540;
 .timescale -9 -12;
L_0x16b71e0/d .functor XOR 1, L_0x16b7ca0, L_0x16b7dd0, C4<0>, C4<0>;
L_0x16b71e0 .delay (30000,30000,30000) L_0x16b71e0/d;
L_0x16b78d0/d .functor AND 1, L_0x16b7ca0, L_0x16b7dd0, C4<1>, C4<1>;
L_0x16b78d0 .delay (20000,20000,20000) L_0x16b78d0/d;
L_0x16b79a0/d .functor AND 1, L_0x16b7ca0, C4<0>, C4<1>, C4<1>;
L_0x16b79a0 .delay (20000,20000,20000) L_0x16b79a0/d;
L_0x16b7a40/d .functor AND 1, L_0x16b7dd0, C4<0>, C4<1>, C4<1>;
L_0x16b7a40 .delay (20000,20000,20000) L_0x16b7a40/d;
L_0x16b7ae0/d .functor OR 1, L_0x16b78d0, L_0x16b79a0, L_0x16b7a40, C4<0>;
L_0x16b7ae0 .delay (20000,20000,20000) L_0x16b7ae0/d;
v0x169c960_0 .net "AandB", 0 0, L_0x16b78d0; 1 drivers
v0x169ca20_0 .net "AandC", 0 0, L_0x16b79a0; 1 drivers
v0x169cac0_0 .net "BandC", 0 0, L_0x16b7a40; 1 drivers
v0x169cb60_0 .net "a", 0 0, L_0x16b7ca0; 1 drivers
v0x169cbe0_0 .net "b", 0 0, L_0x16b7dd0; 1 drivers
v0x169cc80_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x169cd20_0 .alias "carryout", 0 0, v0x169d1f0_0;
v0x169cda0_0 .net "sum", 0 0, L_0x16b71e0; 1 drivers
S_0x169c270 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x169b540;
 .timescale -9 -12;
L_0x16b7fd0/d .functor XOR 1, L_0x16b8640, L_0x16b8770, L_0x16b7ae0, C4<0>;
L_0x16b7fd0 .delay (30000,30000,30000) L_0x16b7fd0/d;
L_0x16b8150/d .functor AND 1, L_0x16b8640, L_0x16b8770, C4<1>, C4<1>;
L_0x16b8150 .delay (20000,20000,20000) L_0x16b8150/d;
L_0x16b8220/d .functor AND 1, L_0x16b8640, L_0x16b7ae0, C4<1>, C4<1>;
L_0x16b8220 .delay (20000,20000,20000) L_0x16b8220/d;
L_0x16b82c0/d .functor AND 1, L_0x16b8770, L_0x16b7ae0, C4<1>, C4<1>;
L_0x16b82c0 .delay (20000,20000,20000) L_0x16b82c0/d;
L_0x16b8390/d .functor OR 1, L_0x16b8150, L_0x16b8220, L_0x16b82c0, C4<0>;
L_0x16b8390 .delay (20000,20000,20000) L_0x16b8390/d;
v0x169c360_0 .net "AandB", 0 0, L_0x16b8150; 1 drivers
v0x169c420_0 .net "AandC", 0 0, L_0x16b8220; 1 drivers
v0x169c4c0_0 .net "BandC", 0 0, L_0x16b82c0; 1 drivers
v0x169c560_0 .net "a", 0 0, L_0x16b8640; 1 drivers
v0x169c5e0_0 .net "b", 0 0, L_0x16b8770; 1 drivers
v0x169c680_0 .alias "carryin", 0 0, v0x169d1f0_0;
v0x169c720_0 .alias "carryout", 0 0, v0x169d1f0_1;
v0x169c7a0_0 .net "sum", 0 0, L_0x16b7fd0; 1 drivers
S_0x169bc70 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x169b540;
 .timescale -9 -12;
L_0x16b88e0/d .functor XOR 1, L_0x16b8ee0, L_0x16b9010, L_0x16b8390, C4<0>;
L_0x16b88e0 .delay (30000,30000,30000) L_0x16b88e0/d;
L_0x16b8a10/d .functor AND 1, L_0x16b8ee0, L_0x16b9010, C4<1>, C4<1>;
L_0x16b8a10 .delay (20000,20000,20000) L_0x16b8a10/d;
L_0x16b8b50/d .functor AND 1, L_0x16b8ee0, L_0x16b8390, C4<1>, C4<1>;
L_0x16b8b50 .delay (20000,20000,20000) L_0x16b8b50/d;
L_0x16b8bf0/d .functor AND 1, L_0x16b9010, L_0x16b8390, C4<1>, C4<1>;
L_0x16b8bf0 .delay (20000,20000,20000) L_0x16b8bf0/d;
L_0x16b8cb0/d .functor OR 1, L_0x16b8a10, L_0x16b8b50, L_0x16b8bf0, C4<0>;
L_0x16b8cb0 .delay (20000,20000,20000) L_0x16b8cb0/d;
v0x169bd60_0 .net "AandB", 0 0, L_0x16b8a10; 1 drivers
v0x169be20_0 .net "AandC", 0 0, L_0x16b8b50; 1 drivers
v0x169bec0_0 .net "BandC", 0 0, L_0x16b8bf0; 1 drivers
v0x169bf60_0 .net "a", 0 0, L_0x16b8ee0; 1 drivers
v0x169bfe0_0 .net "b", 0 0, L_0x16b9010; 1 drivers
v0x169c080_0 .alias "carryin", 0 0, v0x169d1f0_1;
v0x169c120_0 .alias "carryout", 0 0, v0x169d1f0_2;
v0x169c1a0_0 .net "sum", 0 0, L_0x16b88e0; 1 drivers
S_0x169b630 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x169b540;
 .timescale -9 -12;
L_0x16b9140/d .functor XOR 1, L_0x16b9890, L_0x16b9a50, L_0x16b8cb0, C4<0>;
L_0x16b9140 .delay (30000,30000,30000) L_0x16b9140/d;
L_0x16b9230/d .functor AND 1, L_0x16b9890, L_0x16b9a50, C4<1>, C4<1>;
L_0x16b9230 .delay (20000,20000,20000) L_0x16b9230/d;
L_0x16b9350/d .functor AND 1, L_0x16b9890, L_0x16b8cb0, C4<1>, C4<1>;
L_0x16b9350 .delay (20000,20000,20000) L_0x16b9350/d;
L_0x16b9410/d .functor AND 1, L_0x16b9a50, L_0x16b8cb0, C4<1>, C4<1>;
L_0x16b9410 .delay (20000,20000,20000) L_0x16b9410/d;
L_0x16b9500/d .functor OR 1, L_0x16b9230, L_0x16b9350, L_0x16b9410, C4<0>;
L_0x16b9500 .delay (20000,20000,20000) L_0x16b9500/d;
v0x169b720_0 .net "AandB", 0 0, L_0x16b9230; 1 drivers
v0x169b7e0_0 .net "AandC", 0 0, L_0x16b9350; 1 drivers
v0x169b880_0 .net "BandC", 0 0, L_0x16b9410; 1 drivers
v0x169b920_0 .net "a", 0 0, L_0x16b9890; 1 drivers
v0x169b9a0_0 .net "b", 0 0, L_0x16b9a50; 1 drivers
v0x169ba40_0 .alias "carryin", 0 0, v0x169d1f0_2;
v0x169bb20_0 .alias "carryout", 0 0, v0x16a8b30_6;
v0x169bba0_0 .net "sum", 0 0, L_0x16b9140; 1 drivers
S_0x166db90 .scope module, "f47" "CompAdder4bit" 3 66, 3 30, S_0x167f060;
 .timescale -9 -12;
v0x169b070_0 .net "a", 3 0, L_0x16b9fe0; 1 drivers
v0x169b130_0 .net "b", 3 0, L_0x16bc590; 1 drivers
v0x169b1d0_0 .alias "carryin", 0 0, v0x16a8b30_6;
v0x169b270_0 .alias "carryout", 0 0, v0x16a8d50_0;
v0x169b350_0 .net8 "sum", 3 0, RS_0x2ab4cf3f3618; 4 drivers
v0x169b3d0 .array "temp_cout", 0 2;
v0x169b3d0_0 .net v0x169b3d0 0, 0 0, L_0x16ba2a0; 1 drivers
v0x169b3d0_1 .net v0x169b3d0 1, 0 0, L_0x16bab90; 1 drivers
v0x169b3d0_2 .net v0x169b3d0 2, 0 0, L_0x16bb460; 1 drivers
L_0x16ba3c0 .part/pv L_0x16b9830, 0, 1, 4;
L_0x16ba460 .part L_0x16b9fe0, 0, 1;
L_0x16ba590 .part L_0x16bc590, 0, 1;
L_0x16bad00 .part/pv L_0x16ba790, 1, 1, 4;
L_0x16badf0 .part L_0x16b9fe0, 1, 1;
L_0x16baf20 .part L_0x16bc590, 1, 1;
L_0x16bb5f0 .part/pv L_0x16bb090, 2, 1, 4;
L_0x16bb690 .part L_0x16b9fe0, 2, 1;
L_0x16bb7c0 .part L_0x16bc590, 2, 1;
L_0x16bbeb0 .part/pv L_0x16bb8f0, 3, 1, 4;
L_0x16bc040 .part L_0x16b9fe0, 3, 1;
L_0x16bc200 .part L_0x16bc590, 3, 1;
S_0x169aa40 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x166db90;
 .timescale -9 -12;
L_0x16b9830/d .functor XOR 1, L_0x16ba460, L_0x16ba590, C4<0>, C4<0>;
L_0x16b9830 .delay (30000,30000,30000) L_0x16b9830/d;
L_0x16b03b0/d .functor AND 1, L_0x16ba460, L_0x16ba590, C4<1>, C4<1>;
L_0x16b03b0 .delay (20000,20000,20000) L_0x16b03b0/d;
L_0x16ba1a0/d .functor AND 1, L_0x16ba460, C4<0>, C4<1>, C4<1>;
L_0x16ba1a0 .delay (20000,20000,20000) L_0x16ba1a0/d;
L_0x16ba200/d .functor AND 1, L_0x16ba590, C4<0>, C4<1>, C4<1>;
L_0x16ba200 .delay (20000,20000,20000) L_0x16ba200/d;
L_0x16ba2a0/d .functor OR 1, L_0x16b03b0, L_0x16ba1a0, L_0x16ba200, C4<0>;
L_0x16ba2a0 .delay (20000,20000,20000) L_0x16ba2a0/d;
v0x169ab30_0 .net "AandB", 0 0, L_0x16b03b0; 1 drivers
v0x169abf0_0 .net "AandC", 0 0, L_0x16ba1a0; 1 drivers
v0x169ac90_0 .net "BandC", 0 0, L_0x16ba200; 1 drivers
v0x169ad30_0 .net "a", 0 0, L_0x16ba460; 1 drivers
v0x169ade0_0 .net "b", 0 0, L_0x16ba590; 1 drivers
v0x169ae80_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x169af20_0 .alias "carryout", 0 0, v0x169b3d0_0;
v0x169afa0_0 .net "sum", 0 0, L_0x16b9830; 1 drivers
S_0x169a410 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x166db90;
 .timescale -9 -12;
L_0x16ba790/d .functor XOR 1, L_0x16badf0, L_0x16baf20, L_0x16ba2a0, C4<0>;
L_0x16ba790 .delay (30000,30000,30000) L_0x16ba790/d;
L_0x16ba950/d .functor AND 1, L_0x16badf0, L_0x16baf20, C4<1>, C4<1>;
L_0x16ba950 .delay (20000,20000,20000) L_0x16ba950/d;
L_0x16baa20/d .functor AND 1, L_0x16badf0, L_0x16ba2a0, C4<1>, C4<1>;
L_0x16baa20 .delay (20000,20000,20000) L_0x16baa20/d;
L_0x16baac0/d .functor AND 1, L_0x16baf20, L_0x16ba2a0, C4<1>, C4<1>;
L_0x16baac0 .delay (20000,20000,20000) L_0x16baac0/d;
L_0x16bab90/d .functor OR 1, L_0x16ba950, L_0x16baa20, L_0x16baac0, C4<0>;
L_0x16bab90 .delay (20000,20000,20000) L_0x16bab90/d;
v0x169a500_0 .net "AandB", 0 0, L_0x16ba950; 1 drivers
v0x169a5c0_0 .net "AandC", 0 0, L_0x16baa20; 1 drivers
v0x169a660_0 .net "BandC", 0 0, L_0x16baac0; 1 drivers
v0x169a700_0 .net "a", 0 0, L_0x16badf0; 1 drivers
v0x169a7b0_0 .net "b", 0 0, L_0x16baf20; 1 drivers
v0x169a850_0 .alias "carryin", 0 0, v0x169b3d0_0;
v0x169a8f0_0 .alias "carryout", 0 0, v0x169b3d0_1;
v0x169a970_0 .net "sum", 0 0, L_0x16ba790; 1 drivers
S_0x1699e10 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x166db90;
 .timescale -9 -12;
L_0x16bb090/d .functor XOR 1, L_0x16bb690, L_0x16bb7c0, L_0x16bab90, C4<0>;
L_0x16bb090 .delay (30000,30000,30000) L_0x16bb090/d;
L_0x16bb1c0/d .functor AND 1, L_0x16bb690, L_0x16bb7c0, C4<1>, C4<1>;
L_0x16bb1c0 .delay (20000,20000,20000) L_0x16bb1c0/d;
L_0x16bb300/d .functor AND 1, L_0x16bb690, L_0x16bab90, C4<1>, C4<1>;
L_0x16bb300 .delay (20000,20000,20000) L_0x16bb300/d;
L_0x16bb3a0/d .functor AND 1, L_0x16bb7c0, L_0x16bab90, C4<1>, C4<1>;
L_0x16bb3a0 .delay (20000,20000,20000) L_0x16bb3a0/d;
L_0x16bb460/d .functor OR 1, L_0x16bb1c0, L_0x16bb300, L_0x16bb3a0, C4<0>;
L_0x16bb460 .delay (20000,20000,20000) L_0x16bb460/d;
v0x1699f00_0 .net "AandB", 0 0, L_0x16bb1c0; 1 drivers
v0x1699fc0_0 .net "AandC", 0 0, L_0x16bb300; 1 drivers
v0x169a060_0 .net "BandC", 0 0, L_0x16bb3a0; 1 drivers
v0x169a100_0 .net "a", 0 0, L_0x16bb690; 1 drivers
v0x169a180_0 .net "b", 0 0, L_0x16bb7c0; 1 drivers
v0x169a220_0 .alias "carryin", 0 0, v0x169b3d0_1;
v0x169a2c0_0 .alias "carryout", 0 0, v0x169b3d0_2;
v0x169a340_0 .net "sum", 0 0, L_0x16bb090; 1 drivers
S_0x1668000 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x166db90;
 .timescale -9 -12;
L_0x16bb8f0/d .functor XOR 1, L_0x16bc040, L_0x16bc200, L_0x16bb460, C4<0>;
L_0x16bb8f0 .delay (30000,30000,30000) L_0x16bb8f0/d;
L_0x16bb9e0/d .functor AND 1, L_0x16bc040, L_0x16bc200, C4<1>, C4<1>;
L_0x16bb9e0 .delay (20000,20000,20000) L_0x16bb9e0/d;
L_0x16bbb00/d .functor AND 1, L_0x16bc040, L_0x16bb460, C4<1>, C4<1>;
L_0x16bbb00 .delay (20000,20000,20000) L_0x16bbb00/d;
L_0x16bbbc0/d .functor AND 1, L_0x16bc200, L_0x16bb460, C4<1>, C4<1>;
L_0x16bbbc0 .delay (20000,20000,20000) L_0x16bbbc0/d;
L_0x16bbcb0/d .functor OR 1, L_0x16bb9e0, L_0x16bbb00, L_0x16bbbc0, C4<0>;
L_0x16bbcb0 .delay (20000,20000,20000) L_0x16bbcb0/d;
v0x1657ff0_0 .net "AandB", 0 0, L_0x16bb9e0; 1 drivers
v0x1699910_0 .net "AandC", 0 0, L_0x16bbb00; 1 drivers
v0x16999b0_0 .net "BandC", 0 0, L_0x16bbbc0; 1 drivers
v0x1699a50_0 .net "a", 0 0, L_0x16bc040; 1 drivers
v0x1699b00_0 .net "b", 0 0, L_0x16bc200; 1 drivers
v0x1699ba0_0 .alias "carryin", 0 0, v0x169b3d0_2;
v0x1699c80_0 .alias "carryout", 0 0, v0x16a8d50_0;
v0x1699d20_0 .net "sum", 0 0, L_0x16bb8f0; 1 drivers
    .scope S_0x165d0e0;
T_0 ;
    %vpi_call 2 42 "$display", "  a      b   |overflow carryout   sum ";
    %set/v v0x16a8c30_0, 0, 32;
    %set/v v0x16a8cd0_0, 0, 32;
    %delay 1000000, 0;
    %vpi_call 2 44 "$display", "a and b = 0  |   %b        %b       %b", v0x16a8dd0_0, v0x16a8d50_0, v0x16a8e50_0;
    %movi 8, 15, 32;
    %set/v v0x16a8c30_0, 8, 32;
    %movi 8, 15, 32;
    %set/v v0x16a8cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 46 "$display", "a and b = -1 |   %b        %b       %b", v0x16a8dd0_0, v0x16a8d50_0, v0x16a8e50_0;
    %movi 8, 3, 32;
    %set/v v0x16a8c30_0, 8, 32;
    %movi 8, 3, 32;
    %set/v v0x16a8cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 48 "$display", "a and b =3   |   %b        %b       %b", v0x16a8dd0_0, v0x16a8d50_0, v0x16a8e50_0;
    %movi 8, 9, 32;
    %set/v v0x16a8c30_0, 8, 32;
    %movi 8, 15, 32;
    %set/v v0x16a8cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 50 "$display", "a = -7, b=-1 |   %b        %b       %b", v0x16a8dd0_0, v0x16a8d50_0, v0x16a8e50_0;
    %movi 8, 6, 32;
    %set/v v0x16a8c30_0, 8, 32;
    %movi 8, 6, 32;
    %set/v v0x16a8cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 52 "$display", "a and b = 6  |   %b        %b       %b", v0x16a8dd0_0, v0x16a8d50_0, v0x16a8e50_0;
    %movi 8, 9, 32;
    %set/v v0x16a8c30_0, 8, 32;
    %movi 8, 9, 32;
    %set/v v0x16a8cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 54 "$display", "a and b = -7 |   %b        %b       %b", v0x16a8dd0_0, v0x16a8d50_0, v0x16a8e50_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "math.t.v";
    "./math.v";
