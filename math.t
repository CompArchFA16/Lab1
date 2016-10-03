#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1ba60e0 .scope module, "testFullAdder16bit" "testFullAdder16bit" 2 32;
 .timescale -9 -12;
v0x1bf1c30_0 .var "a", 31 0;
v0x1bf1cd0_0 .var "b", 31 0;
v0x1bf1d50_0 .net "carryout", 0 0, L_0x1c04cb0; 1 drivers
v0x1bf1dd0_0 .net "overflow", 0 0, L_0x1c04fe0; 1 drivers
RS_0x2ab2635110d8/0/0 .resolv tri, L_0x1bf4550, L_0x1bf6c30, L_0x1bf91e0, L_0x1bfb960;
RS_0x2ab2635110d8/0/4 .resolv tri, L_0x1bfdfa0, L_0x1c005c0, L_0x1c02c80, L_0x1c05430;
RS_0x2ab2635110d8 .resolv tri, RS_0x2ab2635110d8/0/0, RS_0x2ab2635110d8/0/4, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>;
v0x1bf1e50_0 .net8 "sum", 31 0, RS_0x2ab2635110d8; 8 drivers
S_0x1bc8060 .scope module, "fa16b" "FullAdder32bit" 2 38, 3 49, S_0x1ba60e0;
 .timescale -9 -12;
L_0x1c04fe0/d .functor XOR 1, L_0x1c04cb0, L_0x1c02500, C4<0>, C4<0>;
L_0x1c04fe0 .delay (30000,30000,30000) L_0x1c04fe0/d;
v0x1bf17e0_0 .net "a", 31 0, v0x1bf1c30_0; 1 drivers
v0x1bf18a0_0 .net "b", 31 0, v0x1bf1cd0_0; 1 drivers
v0x1bf1940_0 .alias "carryout", 0 0, v0x1bf1d50_0;
v0x1bf1a10_0 .alias "overflow", 0 0, v0x1bf1dd0_0;
v0x1bf1a90_0 .alias "sum", 31 0, v0x1bf1e50_0;
v0x1bf1b30 .array "temp_cout", 0 6;
v0x1bf1b30_0 .net v0x1bf1b30 0, 0 0, L_0x1bf3dd0; 1 drivers
v0x1bf1b30_1 .net v0x1bf1b30 1, 0 0, L_0x1bf64b0; 1 drivers
v0x1bf1b30_2 .net v0x1bf1b30 2, 0 0, L_0x1bf8af0; 1 drivers
v0x1bf1b30_3 .net v0x1bf1b30 3, 0 0, L_0x1bfb1e0; 1 drivers
v0x1bf1b30_4 .net v0x1bf1b30 4, 0 0, L_0x1bfd820; 1 drivers
v0x1bf1b30_5 .net v0x1bf1b30 5, 0 0, L_0x1bffeb0; 1 drivers
v0x1bf1b30_6 .net v0x1bf1b30 6, 0 0, L_0x1c02500; 1 drivers
RS_0x2ab263511018 .resolv tri, L_0x1bf2540, L_0x1bf2e80, L_0x1bf3750, L_0x1bf3fd0;
L_0x1bf4550 .part/pv RS_0x2ab263511018, 0, 4, 32;
L_0x1bf4610 .part v0x1bf1c30_0, 0, 4;
L_0x1bf46b0 .part v0x1bf1cd0_0, 0, 4;
RS_0x2ab263510a18 .resolv tri, L_0x1bf4bc0, L_0x1bf5500, L_0x1bf5df0, L_0x1bf66b0;
L_0x1bf6c30 .part/pv RS_0x2ab263510a18, 4, 4, 32;
L_0x1bf6cd0 .part v0x1bf1c30_0, 4, 4;
L_0x1bf6d70 .part v0x1bf1cd0_0, 4, 4;
RS_0x2ab263510418 .resolv tri, L_0x1bf71f0, L_0x1bf7b60, L_0x1bf8430, L_0x1bf8cf0;
L_0x1bf91e0 .part/pv RS_0x2ab263510418, 8, 4, 32;
L_0x1bf9310 .part v0x1bf1c30_0, 8, 4;
L_0x1bf9440 .part v0x1bf1cd0_0, 8, 4;
RS_0x2ab26350fe18 .resolv tri, L_0x1bf9930, L_0x1bfa270, L_0x1bfab40, L_0x1bfb3e0;
L_0x1bfb960 .part/pv RS_0x2ab26350fe18, 12, 4, 32;
L_0x1bfba00 .part v0x1bf1c30_0, 12, 4;
L_0x1bfbaa0 .part v0x1bf1cd0_0, 12, 4;
RS_0x2ab26350f818 .resolv tri, L_0x1bfbf20, L_0x1bfc870, L_0x1bfd160, L_0x1bfda20;
L_0x1bfdfa0 .part/pv RS_0x2ab26350f818, 16, 4, 32;
L_0x1bfe040 .part v0x1bf1c30_0, 16, 4;
L_0x1bfe160 .part v0x1bf1cd0_0, 16, 4;
RS_0x2ab26350f218 .resolv tri, L_0x1bfe5c0, L_0x1bfef00, L_0x1bff7f0, L_0x1c000b0;
L_0x1c005c0 .part/pv RS_0x2ab26350f218, 20, 4, 32;
L_0x1c006f0 .part v0x1bf1c30_0, 20, 4;
L_0x1c00790 .part v0x1bf1cd0_0, 20, 4;
RS_0x2ab26350ec18 .resolv tri, L_0x1c00c00, L_0x1c01550, L_0x1c01e40, L_0x1c02700;
L_0x1c02c80 .part/pv RS_0x2ab26350ec18, 24, 4, 32;
L_0x1c02e30 .part v0x1bf1c30_0, 24, 4;
L_0x1c00830 .part v0x1bf1cd0_0, 24, 4;
RS_0x2ab26350e618 .resolv tri, L_0x1c033c0, L_0x1c03d00, L_0x1c045f0, L_0x1c04eb0;
L_0x1c05430 .part/pv RS_0x2ab26350e618, 28, 4, 32;
L_0x1c02fe0 .part v0x1bf1c30_0, 28, 4;
L_0x1c05590 .part v0x1bf1cd0_0, 28, 4;
S_0x1bef9d0 .scope module, "f40" "CompAdder4bit" 3 59, 3 30, S_0x1bc8060;
 .timescale -9 -12;
v0x1bf1300_0 .net "a", 3 0, L_0x1bf4610; 1 drivers
v0x1bf13c0_0 .net "b", 3 0, L_0x1bf46b0; 1 drivers
v0x1bf1460_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1bf1500_0 .alias "carryout", 0 0, v0x1bf1b30_0;
v0x1bf15d0_0 .net8 "sum", 3 0, RS_0x2ab263511018; 4 drivers
v0x1bf1650 .array "temp_cout", 0 2;
v0x1bf1650_0 .net v0x1bf1650 0, 0 0, L_0x1bf2380; 1 drivers
v0x1bf1650_1 .net v0x1bf1650 1, 0 0, L_0x1bf2d10; 1 drivers
v0x1bf1650_2 .net v0x1bf1650 2, 0 0, L_0x1bf35c0; 1 drivers
L_0x1bf2540 .part/pv L_0x1bf1ed0, 0, 1, 4;
L_0x1bf25e0 .part L_0x1bf4610, 0, 1;
L_0x1bf2710 .part L_0x1bf46b0, 0, 1;
L_0x1bf2e80 .part/pv L_0x1bf2910, 1, 1, 4;
L_0x1bf2f70 .part L_0x1bf4610, 1, 1;
L_0x1bf30a0 .part L_0x1bf46b0, 1, 1;
L_0x1bf3750 .part/pv L_0x1bf3210, 2, 1, 4;
L_0x1bf37f0 .part L_0x1bf4610, 2, 1;
L_0x1bf3920 .part L_0x1bf46b0, 2, 1;
L_0x1bf3fd0 .part/pv L_0x1bf3a50, 3, 1, 4;
L_0x1bf4160 .part L_0x1bf4610, 3, 1;
L_0x1bf4320 .part L_0x1bf46b0, 3, 1;
S_0x1bf0d00 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1bef9d0;
 .timescale -9 -12;
L_0x1bf1ed0/d .functor XOR 1, L_0x1bf25e0, L_0x1bf2710, C4<0>, C4<0>;
L_0x1bf1ed0 .delay (30000,30000,30000) L_0x1bf1ed0/d;
L_0x1bf2080/d .functor AND 1, L_0x1bf25e0, L_0x1bf2710, C4<1>, C4<1>;
L_0x1bf2080 .delay (20000,20000,20000) L_0x1bf2080/d;
L_0x1bf21f0/d .functor AND 1, L_0x1bf25e0, C4<0>, C4<1>, C4<1>;
L_0x1bf21f0 .delay (20000,20000,20000) L_0x1bf21f0/d;
L_0x1bf22e0/d .functor AND 1, L_0x1bf2710, C4<0>, C4<1>, C4<1>;
L_0x1bf22e0 .delay (20000,20000,20000) L_0x1bf22e0/d;
L_0x1bf2380/d .functor OR 1, L_0x1bf2080, L_0x1bf21f0, L_0x1bf22e0, C4<0>;
L_0x1bf2380 .delay (20000,20000,20000) L_0x1bf2380/d;
v0x1bf0df0_0 .net "AandB", 0 0, L_0x1bf2080; 1 drivers
v0x1bf0eb0_0 .net "AandC", 0 0, L_0x1bf21f0; 1 drivers
v0x1bf0f50_0 .net "BandC", 0 0, L_0x1bf22e0; 1 drivers
v0x1bf0ff0_0 .net "a", 0 0, L_0x1bf25e0; 1 drivers
v0x1bf1070_0 .net "b", 0 0, L_0x1bf2710; 1 drivers
v0x1bf1110_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1bf11b0_0 .alias "carryout", 0 0, v0x1bf1650_0;
v0x1bf1230_0 .net "sum", 0 0, L_0x1bf1ed0; 1 drivers
S_0x1bf0700 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1bef9d0;
 .timescale -9 -12;
L_0x1bf2910/d .functor XOR 1, L_0x1bf2f70, L_0x1bf30a0, L_0x1bf2380, C4<0>;
L_0x1bf2910 .delay (30000,30000,30000) L_0x1bf2910/d;
L_0x1bf2ad0/d .functor AND 1, L_0x1bf2f70, L_0x1bf30a0, C4<1>, C4<1>;
L_0x1bf2ad0 .delay (20000,20000,20000) L_0x1bf2ad0/d;
L_0x1bf2ba0/d .functor AND 1, L_0x1bf2f70, L_0x1bf2380, C4<1>, C4<1>;
L_0x1bf2ba0 .delay (20000,20000,20000) L_0x1bf2ba0/d;
L_0x1bf2c40/d .functor AND 1, L_0x1bf30a0, L_0x1bf2380, C4<1>, C4<1>;
L_0x1bf2c40 .delay (20000,20000,20000) L_0x1bf2c40/d;
L_0x1bf2d10/d .functor OR 1, L_0x1bf2ad0, L_0x1bf2ba0, L_0x1bf2c40, C4<0>;
L_0x1bf2d10 .delay (20000,20000,20000) L_0x1bf2d10/d;
v0x1bf07f0_0 .net "AandB", 0 0, L_0x1bf2ad0; 1 drivers
v0x1bf08b0_0 .net "AandC", 0 0, L_0x1bf2ba0; 1 drivers
v0x1bf0950_0 .net "BandC", 0 0, L_0x1bf2c40; 1 drivers
v0x1bf09f0_0 .net "a", 0 0, L_0x1bf2f70; 1 drivers
v0x1bf0a70_0 .net "b", 0 0, L_0x1bf30a0; 1 drivers
v0x1bf0b10_0 .alias "carryin", 0 0, v0x1bf1650_0;
v0x1bf0bb0_0 .alias "carryout", 0 0, v0x1bf1650_1;
v0x1bf0c30_0 .net "sum", 0 0, L_0x1bf2910; 1 drivers
S_0x1bf0100 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1bef9d0;
 .timescale -9 -12;
L_0x1bf3210/d .functor XOR 1, L_0x1bf37f0, L_0x1bf3920, L_0x1bf2d10, C4<0>;
L_0x1bf3210 .delay (30000,30000,30000) L_0x1bf3210/d;
L_0x1bf3340/d .functor AND 1, L_0x1bf37f0, L_0x1bf3920, C4<1>, C4<1>;
L_0x1bf3340 .delay (20000,20000,20000) L_0x1bf3340/d;
L_0x1bf3480/d .functor AND 1, L_0x1bf37f0, L_0x1bf2d10, C4<1>, C4<1>;
L_0x1bf3480 .delay (20000,20000,20000) L_0x1bf3480/d;
L_0x1bf3520/d .functor AND 1, L_0x1bf3920, L_0x1bf2d10, C4<1>, C4<1>;
L_0x1bf3520 .delay (20000,20000,20000) L_0x1bf3520/d;
L_0x1bf35c0/d .functor OR 1, L_0x1bf3340, L_0x1bf3480, L_0x1bf3520, C4<0>;
L_0x1bf35c0 .delay (20000,20000,20000) L_0x1bf35c0/d;
v0x1bf01f0_0 .net "AandB", 0 0, L_0x1bf3340; 1 drivers
v0x1bf02b0_0 .net "AandC", 0 0, L_0x1bf3480; 1 drivers
v0x1bf0350_0 .net "BandC", 0 0, L_0x1bf3520; 1 drivers
v0x1bf03f0_0 .net "a", 0 0, L_0x1bf37f0; 1 drivers
v0x1bf0470_0 .net "b", 0 0, L_0x1bf3920; 1 drivers
v0x1bf0510_0 .alias "carryin", 0 0, v0x1bf1650_1;
v0x1bf05b0_0 .alias "carryout", 0 0, v0x1bf1650_2;
v0x1bf0630_0 .net "sum", 0 0, L_0x1bf3210; 1 drivers
S_0x1befac0 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1bef9d0;
 .timescale -9 -12;
L_0x1bf3a50/d .functor XOR 1, L_0x1bf4160, L_0x1bf4320, L_0x1bf35c0, C4<0>;
L_0x1bf3a50 .delay (30000,30000,30000) L_0x1bf3a50/d;
L_0x1bf3b40/d .functor AND 1, L_0x1bf4160, L_0x1bf4320, C4<1>, C4<1>;
L_0x1bf3b40 .delay (20000,20000,20000) L_0x1bf3b40/d;
L_0x1bf3c60/d .functor AND 1, L_0x1bf4160, L_0x1bf35c0, C4<1>, C4<1>;
L_0x1bf3c60 .delay (20000,20000,20000) L_0x1bf3c60/d;
L_0x1bf3d00/d .functor AND 1, L_0x1bf4320, L_0x1bf35c0, C4<1>, C4<1>;
L_0x1bf3d00 .delay (20000,20000,20000) L_0x1bf3d00/d;
L_0x1bf3dd0/d .functor OR 1, L_0x1bf3b40, L_0x1bf3c60, L_0x1bf3d00, C4<0>;
L_0x1bf3dd0 .delay (20000,20000,20000) L_0x1bf3dd0/d;
v0x1befbb0_0 .net "AandB", 0 0, L_0x1bf3b40; 1 drivers
v0x1befc70_0 .net "AandC", 0 0, L_0x1bf3c60; 1 drivers
v0x1befd10_0 .net "BandC", 0 0, L_0x1bf3d00; 1 drivers
v0x1befdb0_0 .net "a", 0 0, L_0x1bf4160; 1 drivers
v0x1befe30_0 .net "b", 0 0, L_0x1bf4320; 1 drivers
v0x1befed0_0 .alias "carryin", 0 0, v0x1bf1650_2;
v0x1beffb0_0 .alias "carryout", 0 0, v0x1bf1b30_0;
v0x1bf0030_0 .net "sum", 0 0, L_0x1bf3a50; 1 drivers
S_0x1bedbc0 .scope module, "f41" "CompAdder4bit" 3 60, 3 30, S_0x1bc8060;
 .timescale -9 -12;
v0x1bef4f0_0 .net "a", 3 0, L_0x1bf6cd0; 1 drivers
v0x1bef5b0_0 .net "b", 3 0, L_0x1bf6d70; 1 drivers
v0x1bef650_0 .alias "carryin", 0 0, v0x1bf1b30_0;
v0x1bef6f0_0 .alias "carryout", 0 0, v0x1bf1b30_1;
v0x1bef7c0_0 .net8 "sum", 3 0, RS_0x2ab263510a18; 4 drivers
v0x1bef840 .array "temp_cout", 0 2;
v0x1bef840_0 .net v0x1bef840 0, 0 0, L_0x1bf4a00; 1 drivers
v0x1bef840_1 .net v0x1bef840 1, 0 0, L_0x1bf5390; 1 drivers
v0x1bef840_2 .net v0x1bef840 2, 0 0, L_0x1bf5c60; 1 drivers
L_0x1bf4bc0 .part/pv L_0x1bf4100, 0, 1, 4;
L_0x1bf4c60 .part L_0x1bf6cd0, 0, 1;
L_0x1bf4d90 .part L_0x1bf6d70, 0, 1;
L_0x1bf5500 .part/pv L_0x1bf4f90, 1, 1, 4;
L_0x1bf55f0 .part L_0x1bf6cd0, 1, 1;
L_0x1bf5720 .part L_0x1bf6d70, 1, 1;
L_0x1bf5df0 .part/pv L_0x1bf5890, 2, 1, 4;
L_0x1bf5e90 .part L_0x1bf6cd0, 2, 1;
L_0x1bf5fc0 .part L_0x1bf6d70, 2, 1;
L_0x1bf66b0 .part/pv L_0x1bf60f0, 3, 1, 4;
L_0x1bf6840 .part L_0x1bf6cd0, 3, 1;
L_0x1bf6a00 .part L_0x1bf6d70, 3, 1;
S_0x1beeef0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1bedbc0;
 .timescale -9 -12;
L_0x1bf4100/d .functor XOR 1, L_0x1bf4c60, L_0x1bf4d90, C4<0>, C4<0>;
L_0x1bf4100 .delay (30000,30000,30000) L_0x1bf4100/d;
L_0x1bf47d0/d .functor AND 1, L_0x1bf4c60, L_0x1bf4d90, C4<1>, C4<1>;
L_0x1bf47d0 .delay (20000,20000,20000) L_0x1bf47d0/d;
L_0x1bf4870/d .functor AND 1, L_0x1bf4c60, C4<0>, C4<1>, C4<1>;
L_0x1bf4870 .delay (20000,20000,20000) L_0x1bf4870/d;
L_0x1bf4960/d .functor AND 1, L_0x1bf4d90, C4<0>, C4<1>, C4<1>;
L_0x1bf4960 .delay (20000,20000,20000) L_0x1bf4960/d;
L_0x1bf4a00/d .functor OR 1, L_0x1bf47d0, L_0x1bf4870, L_0x1bf4960, C4<0>;
L_0x1bf4a00 .delay (20000,20000,20000) L_0x1bf4a00/d;
v0x1beefe0_0 .net "AandB", 0 0, L_0x1bf47d0; 1 drivers
v0x1bef0a0_0 .net "AandC", 0 0, L_0x1bf4870; 1 drivers
v0x1bef140_0 .net "BandC", 0 0, L_0x1bf4960; 1 drivers
v0x1bef1e0_0 .net "a", 0 0, L_0x1bf4c60; 1 drivers
v0x1bef260_0 .net "b", 0 0, L_0x1bf4d90; 1 drivers
v0x1bef300_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1bef3a0_0 .alias "carryout", 0 0, v0x1bef840_0;
v0x1bef420_0 .net "sum", 0 0, L_0x1bf4100; 1 drivers
S_0x1bee8f0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1bedbc0;
 .timescale -9 -12;
L_0x1bf4f90/d .functor XOR 1, L_0x1bf55f0, L_0x1bf5720, L_0x1bf4a00, C4<0>;
L_0x1bf4f90 .delay (30000,30000,30000) L_0x1bf4f90/d;
L_0x1bf5150/d .functor AND 1, L_0x1bf55f0, L_0x1bf5720, C4<1>, C4<1>;
L_0x1bf5150 .delay (20000,20000,20000) L_0x1bf5150/d;
L_0x1bf5220/d .functor AND 1, L_0x1bf55f0, L_0x1bf4a00, C4<1>, C4<1>;
L_0x1bf5220 .delay (20000,20000,20000) L_0x1bf5220/d;
L_0x1bf52c0/d .functor AND 1, L_0x1bf5720, L_0x1bf4a00, C4<1>, C4<1>;
L_0x1bf52c0 .delay (20000,20000,20000) L_0x1bf52c0/d;
L_0x1bf5390/d .functor OR 1, L_0x1bf5150, L_0x1bf5220, L_0x1bf52c0, C4<0>;
L_0x1bf5390 .delay (20000,20000,20000) L_0x1bf5390/d;
v0x1bee9e0_0 .net "AandB", 0 0, L_0x1bf5150; 1 drivers
v0x1beeaa0_0 .net "AandC", 0 0, L_0x1bf5220; 1 drivers
v0x1beeb40_0 .net "BandC", 0 0, L_0x1bf52c0; 1 drivers
v0x1beebe0_0 .net "a", 0 0, L_0x1bf55f0; 1 drivers
v0x1beec60_0 .net "b", 0 0, L_0x1bf5720; 1 drivers
v0x1beed00_0 .alias "carryin", 0 0, v0x1bef840_0;
v0x1beeda0_0 .alias "carryout", 0 0, v0x1bef840_1;
v0x1beee20_0 .net "sum", 0 0, L_0x1bf4f90; 1 drivers
S_0x1bee2f0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1bedbc0;
 .timescale -9 -12;
L_0x1bf5890/d .functor XOR 1, L_0x1bf5e90, L_0x1bf5fc0, L_0x1bf5390, C4<0>;
L_0x1bf5890 .delay (30000,30000,30000) L_0x1bf5890/d;
L_0x1bf59c0/d .functor AND 1, L_0x1bf5e90, L_0x1bf5fc0, C4<1>, C4<1>;
L_0x1bf59c0 .delay (20000,20000,20000) L_0x1bf59c0/d;
L_0x1bf5b00/d .functor AND 1, L_0x1bf5e90, L_0x1bf5390, C4<1>, C4<1>;
L_0x1bf5b00 .delay (20000,20000,20000) L_0x1bf5b00/d;
L_0x1bf5ba0/d .functor AND 1, L_0x1bf5fc0, L_0x1bf5390, C4<1>, C4<1>;
L_0x1bf5ba0 .delay (20000,20000,20000) L_0x1bf5ba0/d;
L_0x1bf5c60/d .functor OR 1, L_0x1bf59c0, L_0x1bf5b00, L_0x1bf5ba0, C4<0>;
L_0x1bf5c60 .delay (20000,20000,20000) L_0x1bf5c60/d;
v0x1bee3e0_0 .net "AandB", 0 0, L_0x1bf59c0; 1 drivers
v0x1bee4a0_0 .net "AandC", 0 0, L_0x1bf5b00; 1 drivers
v0x1bee540_0 .net "BandC", 0 0, L_0x1bf5ba0; 1 drivers
v0x1bee5e0_0 .net "a", 0 0, L_0x1bf5e90; 1 drivers
v0x1bee660_0 .net "b", 0 0, L_0x1bf5fc0; 1 drivers
v0x1bee700_0 .alias "carryin", 0 0, v0x1bef840_1;
v0x1bee7a0_0 .alias "carryout", 0 0, v0x1bef840_2;
v0x1bee820_0 .net "sum", 0 0, L_0x1bf5890; 1 drivers
S_0x1bedcb0 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1bedbc0;
 .timescale -9 -12;
L_0x1bf60f0/d .functor XOR 1, L_0x1bf6840, L_0x1bf6a00, L_0x1bf5c60, C4<0>;
L_0x1bf60f0 .delay (30000,30000,30000) L_0x1bf60f0/d;
L_0x1bf61e0/d .functor AND 1, L_0x1bf6840, L_0x1bf6a00, C4<1>, C4<1>;
L_0x1bf61e0 .delay (20000,20000,20000) L_0x1bf61e0/d;
L_0x1bf6300/d .functor AND 1, L_0x1bf6840, L_0x1bf5c60, C4<1>, C4<1>;
L_0x1bf6300 .delay (20000,20000,20000) L_0x1bf6300/d;
L_0x1bf63c0/d .functor AND 1, L_0x1bf6a00, L_0x1bf5c60, C4<1>, C4<1>;
L_0x1bf63c0 .delay (20000,20000,20000) L_0x1bf63c0/d;
L_0x1bf64b0/d .functor OR 1, L_0x1bf61e0, L_0x1bf6300, L_0x1bf63c0, C4<0>;
L_0x1bf64b0 .delay (20000,20000,20000) L_0x1bf64b0/d;
v0x1bedda0_0 .net "AandB", 0 0, L_0x1bf61e0; 1 drivers
v0x1bede60_0 .net "AandC", 0 0, L_0x1bf6300; 1 drivers
v0x1bedf00_0 .net "BandC", 0 0, L_0x1bf63c0; 1 drivers
v0x1bedfa0_0 .net "a", 0 0, L_0x1bf6840; 1 drivers
v0x1bee020_0 .net "b", 0 0, L_0x1bf6a00; 1 drivers
v0x1bee0c0_0 .alias "carryin", 0 0, v0x1bef840_2;
v0x1bee1a0_0 .alias "carryout", 0 0, v0x1bf1b30_1;
v0x1bee220_0 .net "sum", 0 0, L_0x1bf60f0; 1 drivers
S_0x1bebdb0 .scope module, "f42" "CompAdder4bit" 3 61, 3 30, S_0x1bc8060;
 .timescale -9 -12;
v0x1bed6e0_0 .net "a", 3 0, L_0x1bf9310; 1 drivers
v0x1bed7a0_0 .net "b", 3 0, L_0x1bf9440; 1 drivers
v0x1bed840_0 .alias "carryin", 0 0, v0x1bf1b30_1;
v0x1bed8e0_0 .alias "carryout", 0 0, v0x1bf1b30_2;
v0x1bed9b0_0 .net8 "sum", 3 0, RS_0x2ab263510418; 4 drivers
v0x1beda30 .array "temp_cout", 0 2;
v0x1beda30_0 .net v0x1beda30 0, 0 0, L_0x1bf70d0; 1 drivers
v0x1beda30_1 .net v0x1beda30 1, 0 0, L_0x1bf79f0; 1 drivers
v0x1beda30_2 .net v0x1beda30 2, 0 0, L_0x1bf82a0; 1 drivers
L_0x1bf71f0 .part/pv L_0x1bf67e0, 0, 1, 4;
L_0x1bf7290 .part L_0x1bf9310, 0, 1;
L_0x1bf73c0 .part L_0x1bf9440, 0, 1;
L_0x1bf7b60 .part/pv L_0x1bf75c0, 1, 1, 4;
L_0x1bf7c50 .part L_0x1bf9310, 1, 1;
L_0x1bf7d80 .part L_0x1bf9440, 1, 1;
L_0x1bf8430 .part/pv L_0x1bf7ef0, 2, 1, 4;
L_0x1bf84d0 .part L_0x1bf9310, 2, 1;
L_0x1bf8600 .part L_0x1bf9440, 2, 1;
L_0x1bf8cf0 .part/pv L_0x1bf8730, 3, 1, 4;
L_0x1bf8e80 .part L_0x1bf9310, 3, 1;
L_0x1bf8fb0 .part L_0x1bf9440, 3, 1;
S_0x1bed0e0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1bebdb0;
 .timescale -9 -12;
L_0x1bf67e0/d .functor XOR 1, L_0x1bf7290, L_0x1bf73c0, C4<0>, C4<0>;
L_0x1bf67e0 .delay (30000,30000,30000) L_0x1bf67e0/d;
L_0x1bf6ec0/d .functor AND 1, L_0x1bf7290, L_0x1bf73c0, C4<1>, C4<1>;
L_0x1bf6ec0 .delay (20000,20000,20000) L_0x1bf6ec0/d;
L_0x1bf6f90/d .functor AND 1, L_0x1bf7290, C4<0>, C4<1>, C4<1>;
L_0x1bf6f90 .delay (20000,20000,20000) L_0x1bf6f90/d;
L_0x1bf7030/d .functor AND 1, L_0x1bf73c0, C4<0>, C4<1>, C4<1>;
L_0x1bf7030 .delay (20000,20000,20000) L_0x1bf7030/d;
L_0x1bf70d0/d .functor OR 1, L_0x1bf6ec0, L_0x1bf6f90, L_0x1bf7030, C4<0>;
L_0x1bf70d0 .delay (20000,20000,20000) L_0x1bf70d0/d;
v0x1bed1d0_0 .net "AandB", 0 0, L_0x1bf6ec0; 1 drivers
v0x1bed290_0 .net "AandC", 0 0, L_0x1bf6f90; 1 drivers
v0x1bed330_0 .net "BandC", 0 0, L_0x1bf7030; 1 drivers
v0x1bed3d0_0 .net "a", 0 0, L_0x1bf7290; 1 drivers
v0x1bed450_0 .net "b", 0 0, L_0x1bf73c0; 1 drivers
v0x1bed4f0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1bed590_0 .alias "carryout", 0 0, v0x1beda30_0;
v0x1bed610_0 .net "sum", 0 0, L_0x1bf67e0; 1 drivers
S_0x1becae0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1bebdb0;
 .timescale -9 -12;
L_0x1bf75c0/d .functor XOR 1, L_0x1bf7c50, L_0x1bf7d80, L_0x1bf70d0, C4<0>;
L_0x1bf75c0 .delay (30000,30000,30000) L_0x1bf75c0/d;
L_0x1bf77b0/d .functor AND 1, L_0x1bf7c50, L_0x1bf7d80, C4<1>, C4<1>;
L_0x1bf77b0 .delay (20000,20000,20000) L_0x1bf77b0/d;
L_0x1bf7880/d .functor AND 1, L_0x1bf7c50, L_0x1bf70d0, C4<1>, C4<1>;
L_0x1bf7880 .delay (20000,20000,20000) L_0x1bf7880/d;
L_0x1bf7920/d .functor AND 1, L_0x1bf7d80, L_0x1bf70d0, C4<1>, C4<1>;
L_0x1bf7920 .delay (20000,20000,20000) L_0x1bf7920/d;
L_0x1bf79f0/d .functor OR 1, L_0x1bf77b0, L_0x1bf7880, L_0x1bf7920, C4<0>;
L_0x1bf79f0 .delay (20000,20000,20000) L_0x1bf79f0/d;
v0x1becbd0_0 .net "AandB", 0 0, L_0x1bf77b0; 1 drivers
v0x1becc90_0 .net "AandC", 0 0, L_0x1bf7880; 1 drivers
v0x1becd30_0 .net "BandC", 0 0, L_0x1bf7920; 1 drivers
v0x1becdd0_0 .net "a", 0 0, L_0x1bf7c50; 1 drivers
v0x1bece50_0 .net "b", 0 0, L_0x1bf7d80; 1 drivers
v0x1becef0_0 .alias "carryin", 0 0, v0x1beda30_0;
v0x1becf90_0 .alias "carryout", 0 0, v0x1beda30_1;
v0x1bed010_0 .net "sum", 0 0, L_0x1bf75c0; 1 drivers
S_0x1bec4e0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1bebdb0;
 .timescale -9 -12;
L_0x1bf7ef0/d .functor XOR 1, L_0x1bf84d0, L_0x1bf8600, L_0x1bf79f0, C4<0>;
L_0x1bf7ef0 .delay (30000,30000,30000) L_0x1bf7ef0/d;
L_0x1bf8020/d .functor AND 1, L_0x1bf84d0, L_0x1bf8600, C4<1>, C4<1>;
L_0x1bf8020 .delay (20000,20000,20000) L_0x1bf8020/d;
L_0x1bf8160/d .functor AND 1, L_0x1bf84d0, L_0x1bf79f0, C4<1>, C4<1>;
L_0x1bf8160 .delay (20000,20000,20000) L_0x1bf8160/d;
L_0x1bf8200/d .functor AND 1, L_0x1bf8600, L_0x1bf79f0, C4<1>, C4<1>;
L_0x1bf8200 .delay (20000,20000,20000) L_0x1bf8200/d;
L_0x1bf82a0/d .functor OR 1, L_0x1bf8020, L_0x1bf8160, L_0x1bf8200, C4<0>;
L_0x1bf82a0 .delay (20000,20000,20000) L_0x1bf82a0/d;
v0x1bec5d0_0 .net "AandB", 0 0, L_0x1bf8020; 1 drivers
v0x1bec690_0 .net "AandC", 0 0, L_0x1bf8160; 1 drivers
v0x1bec730_0 .net "BandC", 0 0, L_0x1bf8200; 1 drivers
v0x1bec7d0_0 .net "a", 0 0, L_0x1bf84d0; 1 drivers
v0x1bec850_0 .net "b", 0 0, L_0x1bf8600; 1 drivers
v0x1bec8f0_0 .alias "carryin", 0 0, v0x1beda30_1;
v0x1bec990_0 .alias "carryout", 0 0, v0x1beda30_2;
v0x1beca10_0 .net "sum", 0 0, L_0x1bf7ef0; 1 drivers
S_0x1bebea0 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1bebdb0;
 .timescale -9 -12;
L_0x1bf8730/d .functor XOR 1, L_0x1bf8e80, L_0x1bf8fb0, L_0x1bf82a0, C4<0>;
L_0x1bf8730 .delay (30000,30000,30000) L_0x1bf8730/d;
L_0x1bf8820/d .functor AND 1, L_0x1bf8e80, L_0x1bf8fb0, C4<1>, C4<1>;
L_0x1bf8820 .delay (20000,20000,20000) L_0x1bf8820/d;
L_0x1bf8940/d .functor AND 1, L_0x1bf8e80, L_0x1bf82a0, C4<1>, C4<1>;
L_0x1bf8940 .delay (20000,20000,20000) L_0x1bf8940/d;
L_0x1bf8a00/d .functor AND 1, L_0x1bf8fb0, L_0x1bf82a0, C4<1>, C4<1>;
L_0x1bf8a00 .delay (20000,20000,20000) L_0x1bf8a00/d;
L_0x1bf8af0/d .functor OR 1, L_0x1bf8820, L_0x1bf8940, L_0x1bf8a00, C4<0>;
L_0x1bf8af0 .delay (20000,20000,20000) L_0x1bf8af0/d;
v0x1bebf90_0 .net "AandB", 0 0, L_0x1bf8820; 1 drivers
v0x1bec050_0 .net "AandC", 0 0, L_0x1bf8940; 1 drivers
v0x1bec0f0_0 .net "BandC", 0 0, L_0x1bf8a00; 1 drivers
v0x1bec190_0 .net "a", 0 0, L_0x1bf8e80; 1 drivers
v0x1bec210_0 .net "b", 0 0, L_0x1bf8fb0; 1 drivers
v0x1bec2b0_0 .alias "carryin", 0 0, v0x1beda30_2;
v0x1bec390_0 .alias "carryout", 0 0, v0x1bf1b30_2;
v0x1bec410_0 .net "sum", 0 0, L_0x1bf8730; 1 drivers
S_0x1be9fa0 .scope module, "f43" "CompAdder4bit" 3 62, 3 30, S_0x1bc8060;
 .timescale -9 -12;
v0x1beb8d0_0 .net "a", 3 0, L_0x1bfba00; 1 drivers
v0x1beb990_0 .net "b", 3 0, L_0x1bfbaa0; 1 drivers
v0x1beba30_0 .alias "carryin", 0 0, v0x1bf1b30_2;
v0x1bebad0_0 .alias "carryout", 0 0, v0x1bf1b30_3;
v0x1bebba0_0 .net8 "sum", 3 0, RS_0x2ab26350fe18; 4 drivers
v0x1bebc20 .array "temp_cout", 0 2;
v0x1bebc20_0 .net v0x1bebc20 0, 0 0, L_0x1bf97c0; 1 drivers
v0x1bebc20_1 .net v0x1bebc20 1, 0 0, L_0x1bfa100; 1 drivers
v0x1bebc20_2 .net v0x1bebc20 2, 0 0, L_0x1bfa9b0; 1 drivers
L_0x1bf9930 .part/pv L_0x1bf8e20, 0, 1, 4;
L_0x1bf99d0 .part L_0x1bfba00, 0, 1;
L_0x1bf9b00 .part L_0x1bfbaa0, 0, 1;
L_0x1bfa270 .part/pv L_0x1bf9d00, 1, 1, 4;
L_0x1bfa360 .part L_0x1bfba00, 1, 1;
L_0x1bfa490 .part L_0x1bfbaa0, 1, 1;
L_0x1bfab40 .part/pv L_0x1bfa600, 2, 1, 4;
L_0x1bfabe0 .part L_0x1bfba00, 2, 1;
L_0x1bfad10 .part L_0x1bfbaa0, 2, 1;
L_0x1bfb3e0 .part/pv L_0x1bfae40, 3, 1, 4;
L_0x1bfb570 .part L_0x1bfba00, 3, 1;
L_0x1bfb730 .part L_0x1bfbaa0, 3, 1;
S_0x1beb2d0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1be9fa0;
 .timescale -9 -12;
L_0x1bf8e20/d .functor XOR 1, L_0x1bf99d0, L_0x1bf9b00, C4<0>, C4<0>;
L_0x1bf8e20 .delay (30000,30000,30000) L_0x1bf8e20/d;
L_0x1bf95b0/d .functor AND 1, L_0x1bf99d0, L_0x1bf9b00, C4<1>, C4<1>;
L_0x1bf95b0 .delay (20000,20000,20000) L_0x1bf95b0/d;
L_0x1bf9680/d .functor AND 1, L_0x1bf99d0, C4<0>, C4<1>, C4<1>;
L_0x1bf9680 .delay (20000,20000,20000) L_0x1bf9680/d;
L_0x1bf9720/d .functor AND 1, L_0x1bf9b00, C4<0>, C4<1>, C4<1>;
L_0x1bf9720 .delay (20000,20000,20000) L_0x1bf9720/d;
L_0x1bf97c0/d .functor OR 1, L_0x1bf95b0, L_0x1bf9680, L_0x1bf9720, C4<0>;
L_0x1bf97c0 .delay (20000,20000,20000) L_0x1bf97c0/d;
v0x1beb3c0_0 .net "AandB", 0 0, L_0x1bf95b0; 1 drivers
v0x1beb480_0 .net "AandC", 0 0, L_0x1bf9680; 1 drivers
v0x1beb520_0 .net "BandC", 0 0, L_0x1bf9720; 1 drivers
v0x1beb5c0_0 .net "a", 0 0, L_0x1bf99d0; 1 drivers
v0x1beb640_0 .net "b", 0 0, L_0x1bf9b00; 1 drivers
v0x1beb6e0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1beb780_0 .alias "carryout", 0 0, v0x1bebc20_0;
v0x1beb800_0 .net "sum", 0 0, L_0x1bf8e20; 1 drivers
S_0x1beacd0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1be9fa0;
 .timescale -9 -12;
L_0x1bf9d00/d .functor XOR 1, L_0x1bfa360, L_0x1bfa490, L_0x1bf97c0, C4<0>;
L_0x1bf9d00 .delay (30000,30000,30000) L_0x1bf9d00/d;
L_0x1bf9ec0/d .functor AND 1, L_0x1bfa360, L_0x1bfa490, C4<1>, C4<1>;
L_0x1bf9ec0 .delay (20000,20000,20000) L_0x1bf9ec0/d;
L_0x1bf9f90/d .functor AND 1, L_0x1bfa360, L_0x1bf97c0, C4<1>, C4<1>;
L_0x1bf9f90 .delay (20000,20000,20000) L_0x1bf9f90/d;
L_0x1bfa030/d .functor AND 1, L_0x1bfa490, L_0x1bf97c0, C4<1>, C4<1>;
L_0x1bfa030 .delay (20000,20000,20000) L_0x1bfa030/d;
L_0x1bfa100/d .functor OR 1, L_0x1bf9ec0, L_0x1bf9f90, L_0x1bfa030, C4<0>;
L_0x1bfa100 .delay (20000,20000,20000) L_0x1bfa100/d;
v0x1beadc0_0 .net "AandB", 0 0, L_0x1bf9ec0; 1 drivers
v0x1beae80_0 .net "AandC", 0 0, L_0x1bf9f90; 1 drivers
v0x1beaf20_0 .net "BandC", 0 0, L_0x1bfa030; 1 drivers
v0x1beafc0_0 .net "a", 0 0, L_0x1bfa360; 1 drivers
v0x1beb040_0 .net "b", 0 0, L_0x1bfa490; 1 drivers
v0x1beb0e0_0 .alias "carryin", 0 0, v0x1bebc20_0;
v0x1beb180_0 .alias "carryout", 0 0, v0x1bebc20_1;
v0x1beb200_0 .net "sum", 0 0, L_0x1bf9d00; 1 drivers
S_0x1bea6d0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1be9fa0;
 .timescale -9 -12;
L_0x1bfa600/d .functor XOR 1, L_0x1bfabe0, L_0x1bfad10, L_0x1bfa100, C4<0>;
L_0x1bfa600 .delay (30000,30000,30000) L_0x1bfa600/d;
L_0x1bfa730/d .functor AND 1, L_0x1bfabe0, L_0x1bfad10, C4<1>, C4<1>;
L_0x1bfa730 .delay (20000,20000,20000) L_0x1bfa730/d;
L_0x1bfa870/d .functor AND 1, L_0x1bfabe0, L_0x1bfa100, C4<1>, C4<1>;
L_0x1bfa870 .delay (20000,20000,20000) L_0x1bfa870/d;
L_0x1bfa910/d .functor AND 1, L_0x1bfad10, L_0x1bfa100, C4<1>, C4<1>;
L_0x1bfa910 .delay (20000,20000,20000) L_0x1bfa910/d;
L_0x1bfa9b0/d .functor OR 1, L_0x1bfa730, L_0x1bfa870, L_0x1bfa910, C4<0>;
L_0x1bfa9b0 .delay (20000,20000,20000) L_0x1bfa9b0/d;
v0x1bea7c0_0 .net "AandB", 0 0, L_0x1bfa730; 1 drivers
v0x1bea880_0 .net "AandC", 0 0, L_0x1bfa870; 1 drivers
v0x1bea920_0 .net "BandC", 0 0, L_0x1bfa910; 1 drivers
v0x1bea9c0_0 .net "a", 0 0, L_0x1bfabe0; 1 drivers
v0x1beaa40_0 .net "b", 0 0, L_0x1bfad10; 1 drivers
v0x1beaae0_0 .alias "carryin", 0 0, v0x1bebc20_1;
v0x1beab80_0 .alias "carryout", 0 0, v0x1bebc20_2;
v0x1beac00_0 .net "sum", 0 0, L_0x1bfa600; 1 drivers
S_0x1bea090 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1be9fa0;
 .timescale -9 -12;
L_0x1bfae40/d .functor XOR 1, L_0x1bfb570, L_0x1bfb730, L_0x1bfa9b0, C4<0>;
L_0x1bfae40 .delay (30000,30000,30000) L_0x1bfae40/d;
L_0x1bfaf30/d .functor AND 1, L_0x1bfb570, L_0x1bfb730, C4<1>, C4<1>;
L_0x1bfaf30 .delay (20000,20000,20000) L_0x1bfaf30/d;
L_0x1bfb050/d .functor AND 1, L_0x1bfb570, L_0x1bfa9b0, C4<1>, C4<1>;
L_0x1bfb050 .delay (20000,20000,20000) L_0x1bfb050/d;
L_0x1bfb0f0/d .functor AND 1, L_0x1bfb730, L_0x1bfa9b0, C4<1>, C4<1>;
L_0x1bfb0f0 .delay (20000,20000,20000) L_0x1bfb0f0/d;
L_0x1bfb1e0/d .functor OR 1, L_0x1bfaf30, L_0x1bfb050, L_0x1bfb0f0, C4<0>;
L_0x1bfb1e0 .delay (20000,20000,20000) L_0x1bfb1e0/d;
v0x1bea180_0 .net "AandB", 0 0, L_0x1bfaf30; 1 drivers
v0x1bea240_0 .net "AandC", 0 0, L_0x1bfb050; 1 drivers
v0x1bea2e0_0 .net "BandC", 0 0, L_0x1bfb0f0; 1 drivers
v0x1bea380_0 .net "a", 0 0, L_0x1bfb570; 1 drivers
v0x1bea400_0 .net "b", 0 0, L_0x1bfb730; 1 drivers
v0x1bea4a0_0 .alias "carryin", 0 0, v0x1bebc20_2;
v0x1bea580_0 .alias "carryout", 0 0, v0x1bf1b30_3;
v0x1bea600_0 .net "sum", 0 0, L_0x1bfae40; 1 drivers
S_0x1be8190 .scope module, "f44" "CompAdder4bit" 3 63, 3 30, S_0x1bc8060;
 .timescale -9 -12;
v0x1be9ac0_0 .net "a", 3 0, L_0x1bfe040; 1 drivers
v0x1be9b80_0 .net "b", 3 0, L_0x1bfe160; 1 drivers
v0x1be9c20_0 .alias "carryin", 0 0, v0x1bf1b30_3;
v0x1be9cc0_0 .alias "carryout", 0 0, v0x1bf1b30_4;
v0x1be9d90_0 .net8 "sum", 3 0, RS_0x2ab26350f818; 4 drivers
v0x1be9e10 .array "temp_cout", 0 2;
v0x1be9e10_0 .net v0x1be9e10 0, 0 0, L_0x1bfbe50; 1 drivers
v0x1be9e10_1 .net v0x1be9e10 1, 0 0, L_0x1bfc700; 1 drivers
v0x1be9e10_2 .net v0x1be9e10 2, 0 0, L_0x1bfcfd0; 1 drivers
L_0x1bfbf20 .part/pv L_0x1bfb510, 0, 1, 4;
L_0x1bfbfc0 .part L_0x1bfe040, 0, 1;
L_0x1bfc0f0 .part L_0x1bfe160, 0, 1;
L_0x1bfc870 .part/pv L_0x1bfc330, 1, 1, 4;
L_0x1bfc960 .part L_0x1bfe040, 1, 1;
L_0x1bfca90 .part L_0x1bfe160, 1, 1;
L_0x1bfd160 .part/pv L_0x1bfcc00, 2, 1, 4;
L_0x1bfd200 .part L_0x1bfe040, 2, 1;
L_0x1bfd330 .part L_0x1bfe160, 2, 1;
L_0x1bfda20 .part/pv L_0x1bfd460, 3, 1, 4;
L_0x1bfdbb0 .part L_0x1bfe040, 3, 1;
L_0x1bfdd70 .part L_0x1bfe160, 3, 1;
S_0x1be94c0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1be8190;
 .timescale -9 -12;
L_0x1bfb510/d .functor XOR 1, L_0x1bfbfc0, L_0x1bfc0f0, C4<0>, C4<0>;
L_0x1bfb510 .delay (30000,30000,30000) L_0x1bfb510/d;
L_0x1bfbc20/d .functor AND 1, L_0x1bfbfc0, L_0x1bfc0f0, C4<1>, C4<1>;
L_0x1bfbc20 .delay (20000,20000,20000) L_0x1bfbc20/d;
L_0x1bfbcf0/d .functor AND 1, L_0x1bfbfc0, C4<0>, C4<1>, C4<1>;
L_0x1bfbcf0 .delay (20000,20000,20000) L_0x1bfbcf0/d;
L_0x1bfbd90/d .functor AND 1, L_0x1bfc0f0, C4<0>, C4<1>, C4<1>;
L_0x1bfbd90 .delay (20000,20000,20000) L_0x1bfbd90/d;
L_0x1bfbe50/d .functor OR 1, L_0x1bfbc20, L_0x1bfbcf0, L_0x1bfbd90, C4<0>;
L_0x1bfbe50 .delay (20000,20000,20000) L_0x1bfbe50/d;
v0x1be95b0_0 .net "AandB", 0 0, L_0x1bfbc20; 1 drivers
v0x1be9670_0 .net "AandC", 0 0, L_0x1bfbcf0; 1 drivers
v0x1be9710_0 .net "BandC", 0 0, L_0x1bfbd90; 1 drivers
v0x1be97b0_0 .net "a", 0 0, L_0x1bfbfc0; 1 drivers
v0x1be9830_0 .net "b", 0 0, L_0x1bfc0f0; 1 drivers
v0x1be98d0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1be9970_0 .alias "carryout", 0 0, v0x1be9e10_0;
v0x1be99f0_0 .net "sum", 0 0, L_0x1bfb510; 1 drivers
S_0x1be8ec0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1be8190;
 .timescale -9 -12;
L_0x1bfc330/d .functor XOR 1, L_0x1bfc960, L_0x1bfca90, L_0x1bfbe50, C4<0>;
L_0x1bfc330 .delay (30000,30000,30000) L_0x1bfc330/d;
L_0x1bfc4c0/d .functor AND 1, L_0x1bfc960, L_0x1bfca90, C4<1>, C4<1>;
L_0x1bfc4c0 .delay (20000,20000,20000) L_0x1bfc4c0/d;
L_0x1bfc590/d .functor AND 1, L_0x1bfc960, L_0x1bfbe50, C4<1>, C4<1>;
L_0x1bfc590 .delay (20000,20000,20000) L_0x1bfc590/d;
L_0x1bfc630/d .functor AND 1, L_0x1bfca90, L_0x1bfbe50, C4<1>, C4<1>;
L_0x1bfc630 .delay (20000,20000,20000) L_0x1bfc630/d;
L_0x1bfc700/d .functor OR 1, L_0x1bfc4c0, L_0x1bfc590, L_0x1bfc630, C4<0>;
L_0x1bfc700 .delay (20000,20000,20000) L_0x1bfc700/d;
v0x1be8fb0_0 .net "AandB", 0 0, L_0x1bfc4c0; 1 drivers
v0x1be9070_0 .net "AandC", 0 0, L_0x1bfc590; 1 drivers
v0x1be9110_0 .net "BandC", 0 0, L_0x1bfc630; 1 drivers
v0x1be91b0_0 .net "a", 0 0, L_0x1bfc960; 1 drivers
v0x1be9230_0 .net "b", 0 0, L_0x1bfca90; 1 drivers
v0x1be92d0_0 .alias "carryin", 0 0, v0x1be9e10_0;
v0x1be9370_0 .alias "carryout", 0 0, v0x1be9e10_1;
v0x1be93f0_0 .net "sum", 0 0, L_0x1bfc330; 1 drivers
S_0x1be88c0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1be8190;
 .timescale -9 -12;
L_0x1bfcc00/d .functor XOR 1, L_0x1bfd200, L_0x1bfd330, L_0x1bfc700, C4<0>;
L_0x1bfcc00 .delay (30000,30000,30000) L_0x1bfcc00/d;
L_0x1bfcd30/d .functor AND 1, L_0x1bfd200, L_0x1bfd330, C4<1>, C4<1>;
L_0x1bfcd30 .delay (20000,20000,20000) L_0x1bfcd30/d;
L_0x1bfce70/d .functor AND 1, L_0x1bfd200, L_0x1bfc700, C4<1>, C4<1>;
L_0x1bfce70 .delay (20000,20000,20000) L_0x1bfce70/d;
L_0x1bfcf10/d .functor AND 1, L_0x1bfd330, L_0x1bfc700, C4<1>, C4<1>;
L_0x1bfcf10 .delay (20000,20000,20000) L_0x1bfcf10/d;
L_0x1bfcfd0/d .functor OR 1, L_0x1bfcd30, L_0x1bfce70, L_0x1bfcf10, C4<0>;
L_0x1bfcfd0 .delay (20000,20000,20000) L_0x1bfcfd0/d;
v0x1be89b0_0 .net "AandB", 0 0, L_0x1bfcd30; 1 drivers
v0x1be8a70_0 .net "AandC", 0 0, L_0x1bfce70; 1 drivers
v0x1be8b10_0 .net "BandC", 0 0, L_0x1bfcf10; 1 drivers
v0x1be8bb0_0 .net "a", 0 0, L_0x1bfd200; 1 drivers
v0x1be8c30_0 .net "b", 0 0, L_0x1bfd330; 1 drivers
v0x1be8cd0_0 .alias "carryin", 0 0, v0x1be9e10_1;
v0x1be8d70_0 .alias "carryout", 0 0, v0x1be9e10_2;
v0x1be8df0_0 .net "sum", 0 0, L_0x1bfcc00; 1 drivers
S_0x1be8280 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1be8190;
 .timescale -9 -12;
L_0x1bfd460/d .functor XOR 1, L_0x1bfdbb0, L_0x1bfdd70, L_0x1bfcfd0, C4<0>;
L_0x1bfd460 .delay (30000,30000,30000) L_0x1bfd460/d;
L_0x1bfd550/d .functor AND 1, L_0x1bfdbb0, L_0x1bfdd70, C4<1>, C4<1>;
L_0x1bfd550 .delay (20000,20000,20000) L_0x1bfd550/d;
L_0x1bfd670/d .functor AND 1, L_0x1bfdbb0, L_0x1bfcfd0, C4<1>, C4<1>;
L_0x1bfd670 .delay (20000,20000,20000) L_0x1bfd670/d;
L_0x1bfd730/d .functor AND 1, L_0x1bfdd70, L_0x1bfcfd0, C4<1>, C4<1>;
L_0x1bfd730 .delay (20000,20000,20000) L_0x1bfd730/d;
L_0x1bfd820/d .functor OR 1, L_0x1bfd550, L_0x1bfd670, L_0x1bfd730, C4<0>;
L_0x1bfd820 .delay (20000,20000,20000) L_0x1bfd820/d;
v0x1be8370_0 .net "AandB", 0 0, L_0x1bfd550; 1 drivers
v0x1be8430_0 .net "AandC", 0 0, L_0x1bfd670; 1 drivers
v0x1be84d0_0 .net "BandC", 0 0, L_0x1bfd730; 1 drivers
v0x1be8570_0 .net "a", 0 0, L_0x1bfdbb0; 1 drivers
v0x1be85f0_0 .net "b", 0 0, L_0x1bfdd70; 1 drivers
v0x1be8690_0 .alias "carryin", 0 0, v0x1be9e10_2;
v0x1be8770_0 .alias "carryout", 0 0, v0x1bf1b30_4;
v0x1be87f0_0 .net "sum", 0 0, L_0x1bfd460; 1 drivers
S_0x1be6380 .scope module, "f45" "CompAdder4bit" 3 64, 3 30, S_0x1bc8060;
 .timescale -9 -12;
v0x1be7cb0_0 .net "a", 3 0, L_0x1c006f0; 1 drivers
v0x1be7d70_0 .net "b", 3 0, L_0x1c00790; 1 drivers
v0x1be7e10_0 .alias "carryin", 0 0, v0x1bf1b30_4;
v0x1be7eb0_0 .alias "carryout", 0 0, v0x1bf1b30_5;
v0x1be7f80_0 .net8 "sum", 3 0, RS_0x2ab26350f218; 4 drivers
v0x1be8000 .array "temp_cout", 0 2;
v0x1be8000_0 .net v0x1be8000 0, 0 0, L_0x1bfe4a0; 1 drivers
v0x1be8000_1 .net v0x1be8000 1, 0 0, L_0x1bfed90; 1 drivers
v0x1be8000_2 .net v0x1be8000 2, 0 0, L_0x1bff660; 1 drivers
L_0x1bfe5c0 .part/pv L_0x1bfdb50, 0, 1, 4;
L_0x1bfe660 .part L_0x1c006f0, 0, 1;
L_0x1bfe790 .part L_0x1c00790, 0, 1;
L_0x1bfef00 .part/pv L_0x1bfe990, 1, 1, 4;
L_0x1bfeff0 .part L_0x1c006f0, 1, 1;
L_0x1bff120 .part L_0x1c00790, 1, 1;
L_0x1bff7f0 .part/pv L_0x1bff290, 2, 1, 4;
L_0x1bff890 .part L_0x1c006f0, 2, 1;
L_0x1bff9c0 .part L_0x1c00790, 2, 1;
L_0x1c000b0 .part/pv L_0x1bffaf0, 3, 1, 4;
L_0x1c00240 .part L_0x1c006f0, 3, 1;
L_0x1c00400 .part L_0x1c00790, 3, 1;
S_0x1be76b0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1be6380;
 .timescale -9 -12;
L_0x1bfdb50/d .functor XOR 1, L_0x1bfe660, L_0x1bfe790, C4<0>, C4<0>;
L_0x1bfdb50 .delay (30000,30000,30000) L_0x1bfdb50/d;
L_0x1bfe270/d .functor AND 1, L_0x1bfe660, L_0x1bfe790, C4<1>, C4<1>;
L_0x1bfe270 .delay (20000,20000,20000) L_0x1bfe270/d;
L_0x1bfe340/d .functor AND 1, L_0x1bfe660, C4<0>, C4<1>, C4<1>;
L_0x1bfe340 .delay (20000,20000,20000) L_0x1bfe340/d;
L_0x1bfe3e0/d .functor AND 1, L_0x1bfe790, C4<0>, C4<1>, C4<1>;
L_0x1bfe3e0 .delay (20000,20000,20000) L_0x1bfe3e0/d;
L_0x1bfe4a0/d .functor OR 1, L_0x1bfe270, L_0x1bfe340, L_0x1bfe3e0, C4<0>;
L_0x1bfe4a0 .delay (20000,20000,20000) L_0x1bfe4a0/d;
v0x1be77a0_0 .net "AandB", 0 0, L_0x1bfe270; 1 drivers
v0x1be7860_0 .net "AandC", 0 0, L_0x1bfe340; 1 drivers
v0x1be7900_0 .net "BandC", 0 0, L_0x1bfe3e0; 1 drivers
v0x1be79a0_0 .net "a", 0 0, L_0x1bfe660; 1 drivers
v0x1be7a20_0 .net "b", 0 0, L_0x1bfe790; 1 drivers
v0x1be7ac0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1be7b60_0 .alias "carryout", 0 0, v0x1be8000_0;
v0x1be7be0_0 .net "sum", 0 0, L_0x1bfdb50; 1 drivers
S_0x1be70b0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1be6380;
 .timescale -9 -12;
L_0x1bfe990/d .functor XOR 1, L_0x1bfeff0, L_0x1bff120, L_0x1bfe4a0, C4<0>;
L_0x1bfe990 .delay (30000,30000,30000) L_0x1bfe990/d;
L_0x1bfeb50/d .functor AND 1, L_0x1bfeff0, L_0x1bff120, C4<1>, C4<1>;
L_0x1bfeb50 .delay (20000,20000,20000) L_0x1bfeb50/d;
L_0x1bfec20/d .functor AND 1, L_0x1bfeff0, L_0x1bfe4a0, C4<1>, C4<1>;
L_0x1bfec20 .delay (20000,20000,20000) L_0x1bfec20/d;
L_0x1bfecc0/d .functor AND 1, L_0x1bff120, L_0x1bfe4a0, C4<1>, C4<1>;
L_0x1bfecc0 .delay (20000,20000,20000) L_0x1bfecc0/d;
L_0x1bfed90/d .functor OR 1, L_0x1bfeb50, L_0x1bfec20, L_0x1bfecc0, C4<0>;
L_0x1bfed90 .delay (20000,20000,20000) L_0x1bfed90/d;
v0x1be71a0_0 .net "AandB", 0 0, L_0x1bfeb50; 1 drivers
v0x1be7260_0 .net "AandC", 0 0, L_0x1bfec20; 1 drivers
v0x1be7300_0 .net "BandC", 0 0, L_0x1bfecc0; 1 drivers
v0x1be73a0_0 .net "a", 0 0, L_0x1bfeff0; 1 drivers
v0x1be7420_0 .net "b", 0 0, L_0x1bff120; 1 drivers
v0x1be74c0_0 .alias "carryin", 0 0, v0x1be8000_0;
v0x1be7560_0 .alias "carryout", 0 0, v0x1be8000_1;
v0x1be75e0_0 .net "sum", 0 0, L_0x1bfe990; 1 drivers
S_0x1be6ab0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1be6380;
 .timescale -9 -12;
L_0x1bff290/d .functor XOR 1, L_0x1bff890, L_0x1bff9c0, L_0x1bfed90, C4<0>;
L_0x1bff290 .delay (30000,30000,30000) L_0x1bff290/d;
L_0x1bff3c0/d .functor AND 1, L_0x1bff890, L_0x1bff9c0, C4<1>, C4<1>;
L_0x1bff3c0 .delay (20000,20000,20000) L_0x1bff3c0/d;
L_0x1bff500/d .functor AND 1, L_0x1bff890, L_0x1bfed90, C4<1>, C4<1>;
L_0x1bff500 .delay (20000,20000,20000) L_0x1bff500/d;
L_0x1bff5a0/d .functor AND 1, L_0x1bff9c0, L_0x1bfed90, C4<1>, C4<1>;
L_0x1bff5a0 .delay (20000,20000,20000) L_0x1bff5a0/d;
L_0x1bff660/d .functor OR 1, L_0x1bff3c0, L_0x1bff500, L_0x1bff5a0, C4<0>;
L_0x1bff660 .delay (20000,20000,20000) L_0x1bff660/d;
v0x1be6ba0_0 .net "AandB", 0 0, L_0x1bff3c0; 1 drivers
v0x1be6c60_0 .net "AandC", 0 0, L_0x1bff500; 1 drivers
v0x1be6d00_0 .net "BandC", 0 0, L_0x1bff5a0; 1 drivers
v0x1be6da0_0 .net "a", 0 0, L_0x1bff890; 1 drivers
v0x1be6e20_0 .net "b", 0 0, L_0x1bff9c0; 1 drivers
v0x1be6ec0_0 .alias "carryin", 0 0, v0x1be8000_1;
v0x1be6f60_0 .alias "carryout", 0 0, v0x1be8000_2;
v0x1be6fe0_0 .net "sum", 0 0, L_0x1bff290; 1 drivers
S_0x1be6470 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1be6380;
 .timescale -9 -12;
L_0x1bffaf0/d .functor XOR 1, L_0x1c00240, L_0x1c00400, L_0x1bff660, C4<0>;
L_0x1bffaf0 .delay (30000,30000,30000) L_0x1bffaf0/d;
L_0x1bffbe0/d .functor AND 1, L_0x1c00240, L_0x1c00400, C4<1>, C4<1>;
L_0x1bffbe0 .delay (20000,20000,20000) L_0x1bffbe0/d;
L_0x1bffd00/d .functor AND 1, L_0x1c00240, L_0x1bff660, C4<1>, C4<1>;
L_0x1bffd00 .delay (20000,20000,20000) L_0x1bffd00/d;
L_0x1bffdc0/d .functor AND 1, L_0x1c00400, L_0x1bff660, C4<1>, C4<1>;
L_0x1bffdc0 .delay (20000,20000,20000) L_0x1bffdc0/d;
L_0x1bffeb0/d .functor OR 1, L_0x1bffbe0, L_0x1bffd00, L_0x1bffdc0, C4<0>;
L_0x1bffeb0 .delay (20000,20000,20000) L_0x1bffeb0/d;
v0x1be6560_0 .net "AandB", 0 0, L_0x1bffbe0; 1 drivers
v0x1be6620_0 .net "AandC", 0 0, L_0x1bffd00; 1 drivers
v0x1be66c0_0 .net "BandC", 0 0, L_0x1bffdc0; 1 drivers
v0x1be6760_0 .net "a", 0 0, L_0x1c00240; 1 drivers
v0x1be67e0_0 .net "b", 0 0, L_0x1c00400; 1 drivers
v0x1be6880_0 .alias "carryin", 0 0, v0x1be8000_2;
v0x1be6960_0 .alias "carryout", 0 0, v0x1bf1b30_5;
v0x1be69e0_0 .net "sum", 0 0, L_0x1bffaf0; 1 drivers
S_0x1be4540 .scope module, "f46" "CompAdder4bit" 3 65, 3 30, S_0x1bc8060;
 .timescale -9 -12;
v0x1be5e70_0 .net "a", 3 0, L_0x1c02e30; 1 drivers
v0x1be5f30_0 .net "b", 3 0, L_0x1c00830; 1 drivers
v0x1be5fd0_0 .alias "carryin", 0 0, v0x1bf1b30_5;
v0x1be6070_0 .alias "carryout", 0 0, v0x1bf1b30_6;
v0x1be6170_0 .net8 "sum", 3 0, RS_0x2ab26350ec18; 4 drivers
v0x1be61f0 .array "temp_cout", 0 2;
v0x1be61f0_0 .net v0x1be61f0 0, 0 0, L_0x1c00ae0; 1 drivers
v0x1be61f0_1 .net v0x1be61f0 1, 0 0, L_0x1c01390; 1 drivers
v0x1be61f0_2 .net v0x1be61f0 2, 0 0, L_0x1c01cb0; 1 drivers
L_0x1c00c00 .part/pv L_0x1c001e0, 0, 1, 4;
L_0x1c00ca0 .part L_0x1c02e30, 0, 1;
L_0x1c00dd0 .part L_0x1c00830, 0, 1;
L_0x1c01550 .part/pv L_0x1c00fd0, 1, 1, 4;
L_0x1c01640 .part L_0x1c02e30, 1, 1;
L_0x1c01770 .part L_0x1c00830, 1, 1;
L_0x1c01e40 .part/pv L_0x1c018e0, 2, 1, 4;
L_0x1c01ee0 .part L_0x1c02e30, 2, 1;
L_0x1c02010 .part L_0x1c00830, 2, 1;
L_0x1c02700 .part/pv L_0x1c02140, 3, 1, 4;
L_0x1c02890 .part L_0x1c02e30, 3, 1;
L_0x1c02a50 .part L_0x1c00830, 3, 1;
S_0x1be5870 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1be4540;
 .timescale -9 -12;
L_0x1c001e0/d .functor XOR 1, L_0x1c00ca0, L_0x1c00dd0, C4<0>, C4<0>;
L_0x1c001e0 .delay (30000,30000,30000) L_0x1c001e0/d;
L_0x1c008d0/d .functor AND 1, L_0x1c00ca0, L_0x1c00dd0, C4<1>, C4<1>;
L_0x1c008d0 .delay (20000,20000,20000) L_0x1c008d0/d;
L_0x1c009a0/d .functor AND 1, L_0x1c00ca0, C4<0>, C4<1>, C4<1>;
L_0x1c009a0 .delay (20000,20000,20000) L_0x1c009a0/d;
L_0x1c00a40/d .functor AND 1, L_0x1c00dd0, C4<0>, C4<1>, C4<1>;
L_0x1c00a40 .delay (20000,20000,20000) L_0x1c00a40/d;
L_0x1c00ae0/d .functor OR 1, L_0x1c008d0, L_0x1c009a0, L_0x1c00a40, C4<0>;
L_0x1c00ae0 .delay (20000,20000,20000) L_0x1c00ae0/d;
v0x1be5960_0 .net "AandB", 0 0, L_0x1c008d0; 1 drivers
v0x1be5a20_0 .net "AandC", 0 0, L_0x1c009a0; 1 drivers
v0x1be5ac0_0 .net "BandC", 0 0, L_0x1c00a40; 1 drivers
v0x1be5b60_0 .net "a", 0 0, L_0x1c00ca0; 1 drivers
v0x1be5be0_0 .net "b", 0 0, L_0x1c00dd0; 1 drivers
v0x1be5c80_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1be5d20_0 .alias "carryout", 0 0, v0x1be61f0_0;
v0x1be5da0_0 .net "sum", 0 0, L_0x1c001e0; 1 drivers
S_0x1be5270 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1be4540;
 .timescale -9 -12;
L_0x1c00fd0/d .functor XOR 1, L_0x1c01640, L_0x1c01770, L_0x1c00ae0, C4<0>;
L_0x1c00fd0 .delay (30000,30000,30000) L_0x1c00fd0/d;
L_0x1c01150/d .functor AND 1, L_0x1c01640, L_0x1c01770, C4<1>, C4<1>;
L_0x1c01150 .delay (20000,20000,20000) L_0x1c01150/d;
L_0x1c01220/d .functor AND 1, L_0x1c01640, L_0x1c00ae0, C4<1>, C4<1>;
L_0x1c01220 .delay (20000,20000,20000) L_0x1c01220/d;
L_0x1c012c0/d .functor AND 1, L_0x1c01770, L_0x1c00ae0, C4<1>, C4<1>;
L_0x1c012c0 .delay (20000,20000,20000) L_0x1c012c0/d;
L_0x1c01390/d .functor OR 1, L_0x1c01150, L_0x1c01220, L_0x1c012c0, C4<0>;
L_0x1c01390 .delay (20000,20000,20000) L_0x1c01390/d;
v0x1be5360_0 .net "AandB", 0 0, L_0x1c01150; 1 drivers
v0x1be5420_0 .net "AandC", 0 0, L_0x1c01220; 1 drivers
v0x1be54c0_0 .net "BandC", 0 0, L_0x1c012c0; 1 drivers
v0x1be5560_0 .net "a", 0 0, L_0x1c01640; 1 drivers
v0x1be55e0_0 .net "b", 0 0, L_0x1c01770; 1 drivers
v0x1be5680_0 .alias "carryin", 0 0, v0x1be61f0_0;
v0x1be5720_0 .alias "carryout", 0 0, v0x1be61f0_1;
v0x1be57a0_0 .net "sum", 0 0, L_0x1c00fd0; 1 drivers
S_0x1be4c70 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1be4540;
 .timescale -9 -12;
L_0x1c018e0/d .functor XOR 1, L_0x1c01ee0, L_0x1c02010, L_0x1c01390, C4<0>;
L_0x1c018e0 .delay (30000,30000,30000) L_0x1c018e0/d;
L_0x1c01a10/d .functor AND 1, L_0x1c01ee0, L_0x1c02010, C4<1>, C4<1>;
L_0x1c01a10 .delay (20000,20000,20000) L_0x1c01a10/d;
L_0x1c01b50/d .functor AND 1, L_0x1c01ee0, L_0x1c01390, C4<1>, C4<1>;
L_0x1c01b50 .delay (20000,20000,20000) L_0x1c01b50/d;
L_0x1c01bf0/d .functor AND 1, L_0x1c02010, L_0x1c01390, C4<1>, C4<1>;
L_0x1c01bf0 .delay (20000,20000,20000) L_0x1c01bf0/d;
L_0x1c01cb0/d .functor OR 1, L_0x1c01a10, L_0x1c01b50, L_0x1c01bf0, C4<0>;
L_0x1c01cb0 .delay (20000,20000,20000) L_0x1c01cb0/d;
v0x1be4d60_0 .net "AandB", 0 0, L_0x1c01a10; 1 drivers
v0x1be4e20_0 .net "AandC", 0 0, L_0x1c01b50; 1 drivers
v0x1be4ec0_0 .net "BandC", 0 0, L_0x1c01bf0; 1 drivers
v0x1be4f60_0 .net "a", 0 0, L_0x1c01ee0; 1 drivers
v0x1be4fe0_0 .net "b", 0 0, L_0x1c02010; 1 drivers
v0x1be5080_0 .alias "carryin", 0 0, v0x1be61f0_1;
v0x1be5120_0 .alias "carryout", 0 0, v0x1be61f0_2;
v0x1be51a0_0 .net "sum", 0 0, L_0x1c018e0; 1 drivers
S_0x1be4630 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1be4540;
 .timescale -9 -12;
L_0x1c02140/d .functor XOR 1, L_0x1c02890, L_0x1c02a50, L_0x1c01cb0, C4<0>;
L_0x1c02140 .delay (30000,30000,30000) L_0x1c02140/d;
L_0x1c02230/d .functor AND 1, L_0x1c02890, L_0x1c02a50, C4<1>, C4<1>;
L_0x1c02230 .delay (20000,20000,20000) L_0x1c02230/d;
L_0x1c02350/d .functor AND 1, L_0x1c02890, L_0x1c01cb0, C4<1>, C4<1>;
L_0x1c02350 .delay (20000,20000,20000) L_0x1c02350/d;
L_0x1c02410/d .functor AND 1, L_0x1c02a50, L_0x1c01cb0, C4<1>, C4<1>;
L_0x1c02410 .delay (20000,20000,20000) L_0x1c02410/d;
L_0x1c02500/d .functor OR 1, L_0x1c02230, L_0x1c02350, L_0x1c02410, C4<0>;
L_0x1c02500 .delay (20000,20000,20000) L_0x1c02500/d;
v0x1be4720_0 .net "AandB", 0 0, L_0x1c02230; 1 drivers
v0x1be47e0_0 .net "AandC", 0 0, L_0x1c02350; 1 drivers
v0x1be4880_0 .net "BandC", 0 0, L_0x1c02410; 1 drivers
v0x1be4920_0 .net "a", 0 0, L_0x1c02890; 1 drivers
v0x1be49a0_0 .net "b", 0 0, L_0x1c02a50; 1 drivers
v0x1be4a40_0 .alias "carryin", 0 0, v0x1be61f0_2;
v0x1be4b20_0 .alias "carryout", 0 0, v0x1bf1b30_6;
v0x1be4ba0_0 .net "sum", 0 0, L_0x1c02140; 1 drivers
S_0x1bb6b90 .scope module, "f47" "CompAdder4bit" 3 66, 3 30, S_0x1bc8060;
 .timescale -9 -12;
v0x1be4070_0 .net "a", 3 0, L_0x1c02fe0; 1 drivers
v0x1be4130_0 .net "b", 3 0, L_0x1c05590; 1 drivers
v0x1be41d0_0 .alias "carryin", 0 0, v0x1bf1b30_6;
v0x1be4270_0 .alias "carryout", 0 0, v0x1bf1d50_0;
v0x1be4350_0 .net8 "sum", 3 0, RS_0x2ab26350e618; 4 drivers
v0x1be43d0 .array "temp_cout", 0 2;
v0x1be43d0_0 .net v0x1be43d0 0, 0 0, L_0x1c032a0; 1 drivers
v0x1be43d0_1 .net v0x1be43d0 1, 0 0, L_0x1c03b90; 1 drivers
v0x1be43d0_2 .net v0x1be43d0 2, 0 0, L_0x1c04460; 1 drivers
L_0x1c033c0 .part/pv L_0x1c02830, 0, 1, 4;
L_0x1c03460 .part L_0x1c02fe0, 0, 1;
L_0x1c03590 .part L_0x1c05590, 0, 1;
L_0x1c03d00 .part/pv L_0x1c03790, 1, 1, 4;
L_0x1c03df0 .part L_0x1c02fe0, 1, 1;
L_0x1c03f20 .part L_0x1c05590, 1, 1;
L_0x1c045f0 .part/pv L_0x1c04090, 2, 1, 4;
L_0x1c04690 .part L_0x1c02fe0, 2, 1;
L_0x1c047c0 .part L_0x1c05590, 2, 1;
L_0x1c04eb0 .part/pv L_0x1c048f0, 3, 1, 4;
L_0x1c05040 .part L_0x1c02fe0, 3, 1;
L_0x1c05200 .part L_0x1c05590, 3, 1;
S_0x1be3a40 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1bb6b90;
 .timescale -9 -12;
L_0x1c02830/d .functor XOR 1, L_0x1c03460, L_0x1c03590, C4<0>, C4<0>;
L_0x1c02830 .delay (30000,30000,30000) L_0x1c02830/d;
L_0x1bf93b0/d .functor AND 1, L_0x1c03460, L_0x1c03590, C4<1>, C4<1>;
L_0x1bf93b0 .delay (20000,20000,20000) L_0x1bf93b0/d;
L_0x1c031a0/d .functor AND 1, L_0x1c03460, C4<0>, C4<1>, C4<1>;
L_0x1c031a0 .delay (20000,20000,20000) L_0x1c031a0/d;
L_0x1c03200/d .functor AND 1, L_0x1c03590, C4<0>, C4<1>, C4<1>;
L_0x1c03200 .delay (20000,20000,20000) L_0x1c03200/d;
L_0x1c032a0/d .functor OR 1, L_0x1bf93b0, L_0x1c031a0, L_0x1c03200, C4<0>;
L_0x1c032a0 .delay (20000,20000,20000) L_0x1c032a0/d;
v0x1be3b30_0 .net "AandB", 0 0, L_0x1bf93b0; 1 drivers
v0x1be3bf0_0 .net "AandC", 0 0, L_0x1c031a0; 1 drivers
v0x1be3c90_0 .net "BandC", 0 0, L_0x1c03200; 1 drivers
v0x1be3d30_0 .net "a", 0 0, L_0x1c03460; 1 drivers
v0x1be3de0_0 .net "b", 0 0, L_0x1c03590; 1 drivers
v0x1be3e80_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1be3f20_0 .alias "carryout", 0 0, v0x1be43d0_0;
v0x1be3fa0_0 .net "sum", 0 0, L_0x1c02830; 1 drivers
S_0x1be3410 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1bb6b90;
 .timescale -9 -12;
L_0x1c03790/d .functor XOR 1, L_0x1c03df0, L_0x1c03f20, L_0x1c032a0, C4<0>;
L_0x1c03790 .delay (30000,30000,30000) L_0x1c03790/d;
L_0x1c03950/d .functor AND 1, L_0x1c03df0, L_0x1c03f20, C4<1>, C4<1>;
L_0x1c03950 .delay (20000,20000,20000) L_0x1c03950/d;
L_0x1c03a20/d .functor AND 1, L_0x1c03df0, L_0x1c032a0, C4<1>, C4<1>;
L_0x1c03a20 .delay (20000,20000,20000) L_0x1c03a20/d;
L_0x1c03ac0/d .functor AND 1, L_0x1c03f20, L_0x1c032a0, C4<1>, C4<1>;
L_0x1c03ac0 .delay (20000,20000,20000) L_0x1c03ac0/d;
L_0x1c03b90/d .functor OR 1, L_0x1c03950, L_0x1c03a20, L_0x1c03ac0, C4<0>;
L_0x1c03b90 .delay (20000,20000,20000) L_0x1c03b90/d;
v0x1be3500_0 .net "AandB", 0 0, L_0x1c03950; 1 drivers
v0x1be35c0_0 .net "AandC", 0 0, L_0x1c03a20; 1 drivers
v0x1be3660_0 .net "BandC", 0 0, L_0x1c03ac0; 1 drivers
v0x1be3700_0 .net "a", 0 0, L_0x1c03df0; 1 drivers
v0x1be37b0_0 .net "b", 0 0, L_0x1c03f20; 1 drivers
v0x1be3850_0 .alias "carryin", 0 0, v0x1be43d0_0;
v0x1be38f0_0 .alias "carryout", 0 0, v0x1be43d0_1;
v0x1be3970_0 .net "sum", 0 0, L_0x1c03790; 1 drivers
S_0x1be2e10 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1bb6b90;
 .timescale -9 -12;
L_0x1c04090/d .functor XOR 1, L_0x1c04690, L_0x1c047c0, L_0x1c03b90, C4<0>;
L_0x1c04090 .delay (30000,30000,30000) L_0x1c04090/d;
L_0x1c041c0/d .functor AND 1, L_0x1c04690, L_0x1c047c0, C4<1>, C4<1>;
L_0x1c041c0 .delay (20000,20000,20000) L_0x1c041c0/d;
L_0x1c04300/d .functor AND 1, L_0x1c04690, L_0x1c03b90, C4<1>, C4<1>;
L_0x1c04300 .delay (20000,20000,20000) L_0x1c04300/d;
L_0x1c043a0/d .functor AND 1, L_0x1c047c0, L_0x1c03b90, C4<1>, C4<1>;
L_0x1c043a0 .delay (20000,20000,20000) L_0x1c043a0/d;
L_0x1c04460/d .functor OR 1, L_0x1c041c0, L_0x1c04300, L_0x1c043a0, C4<0>;
L_0x1c04460 .delay (20000,20000,20000) L_0x1c04460/d;
v0x1be2f00_0 .net "AandB", 0 0, L_0x1c041c0; 1 drivers
v0x1be2fc0_0 .net "AandC", 0 0, L_0x1c04300; 1 drivers
v0x1be3060_0 .net "BandC", 0 0, L_0x1c043a0; 1 drivers
v0x1be3100_0 .net "a", 0 0, L_0x1c04690; 1 drivers
v0x1be3180_0 .net "b", 0 0, L_0x1c047c0; 1 drivers
v0x1be3220_0 .alias "carryin", 0 0, v0x1be43d0_1;
v0x1be32c0_0 .alias "carryout", 0 0, v0x1be43d0_2;
v0x1be3340_0 .net "sum", 0 0, L_0x1c04090; 1 drivers
S_0x1bb1000 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1bb6b90;
 .timescale -9 -12;
L_0x1c048f0/d .functor XOR 1, L_0x1c05040, L_0x1c05200, L_0x1c04460, C4<0>;
L_0x1c048f0 .delay (30000,30000,30000) L_0x1c048f0/d;
L_0x1c049e0/d .functor AND 1, L_0x1c05040, L_0x1c05200, C4<1>, C4<1>;
L_0x1c049e0 .delay (20000,20000,20000) L_0x1c049e0/d;
L_0x1c04b00/d .functor AND 1, L_0x1c05040, L_0x1c04460, C4<1>, C4<1>;
L_0x1c04b00 .delay (20000,20000,20000) L_0x1c04b00/d;
L_0x1c04bc0/d .functor AND 1, L_0x1c05200, L_0x1c04460, C4<1>, C4<1>;
L_0x1c04bc0 .delay (20000,20000,20000) L_0x1c04bc0/d;
L_0x1c04cb0/d .functor OR 1, L_0x1c049e0, L_0x1c04b00, L_0x1c04bc0, C4<0>;
L_0x1c04cb0 .delay (20000,20000,20000) L_0x1c04cb0/d;
v0x1ba0ff0_0 .net "AandB", 0 0, L_0x1c049e0; 1 drivers
v0x1be2910_0 .net "AandC", 0 0, L_0x1c04b00; 1 drivers
v0x1be29b0_0 .net "BandC", 0 0, L_0x1c04bc0; 1 drivers
v0x1be2a50_0 .net "a", 0 0, L_0x1c05040; 1 drivers
v0x1be2b00_0 .net "b", 0 0, L_0x1c05200; 1 drivers
v0x1be2ba0_0 .alias "carryin", 0 0, v0x1be43d0_2;
v0x1be2c80_0 .alias "carryout", 0 0, v0x1bf1d50_0;
v0x1be2d20_0 .net "sum", 0 0, L_0x1c048f0; 1 drivers
    .scope S_0x1ba60e0;
T_0 ;
    %vpi_call 2 42 "$display", "  a      b   |overflow carryout   sum ";
    %set/v v0x1bf1c30_0, 0, 32;
    %set/v v0x1bf1cd0_0, 0, 32;
    %delay 1000000, 0;
    %vpi_call 2 44 "$display", "a and b = 0  |   %b        %b       %b", v0x1bf1dd0_0, v0x1bf1d50_0, v0x1bf1e50_0;
    %movi 8, 15, 32;
    %set/v v0x1bf1c30_0, 8, 32;
    %movi 8, 15, 32;
    %set/v v0x1bf1cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 46 "$display", "a and b = -1 |   %b        %b       %b", v0x1bf1dd0_0, v0x1bf1d50_0, v0x1bf1e50_0;
    %movi 8, 3, 32;
    %set/v v0x1bf1c30_0, 8, 32;
    %movi 8, 3, 32;
    %set/v v0x1bf1cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 48 "$display", "a and b =3   |   %b        %b       %b", v0x1bf1dd0_0, v0x1bf1d50_0, v0x1bf1e50_0;
    %movi 8, 9, 32;
    %set/v v0x1bf1c30_0, 8, 32;
    %movi 8, 15, 32;
    %set/v v0x1bf1cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 50 "$display", "a = -7, b=-1 |   %b        %b       %b", v0x1bf1dd0_0, v0x1bf1d50_0, v0x1bf1e50_0;
    %movi 8, 7, 32;
    %set/v v0x1bf1c30_0, 8, 32;
    %movi 8, 7, 32;
    %set/v v0x1bf1cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 52 "$display", "a and b = 7  |   %b        %b       %b", v0x1bf1dd0_0, v0x1bf1d50_0, v0x1bf1e50_0;
    %movi 8, 9, 32;
    %set/v v0x1bf1c30_0, 8, 32;
    %movi 8, 9, 32;
    %set/v v0x1bf1cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 54 "$display", "a and b = -7 |   %b        %b       %b", v0x1bf1dd0_0, v0x1bf1d50_0, v0x1bf1e50_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "math.t.v";
    "./math.v";
