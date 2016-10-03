#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x172e0e0 .scope module, "testFullAdder16bit" "testFullAdder16bit" 2 32;
 .timescale -9 -12;
v0x1779c30_0 .var "a", 31 0;
v0x1779cd0_0 .var "b", 31 0;
v0x1779d50_0 .net "carryout", 0 0, L_0x178ccb0; 1 drivers
v0x1779dd0_0 .net "overflow", 0 0, L_0x178cfe0; 1 drivers
RS_0x2b5918a9c0d8/0/0 .resolv tri, L_0x177c550, L_0x177ec30, L_0x17811e0, L_0x1783960;
RS_0x2b5918a9c0d8/0/4 .resolv tri, L_0x1785fa0, L_0x17885c0, L_0x178ac80, L_0x178d430;
RS_0x2b5918a9c0d8 .resolv tri, RS_0x2b5918a9c0d8/0/0, RS_0x2b5918a9c0d8/0/4, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>;
v0x1779e50_0 .net8 "sum", 31 0, RS_0x2b5918a9c0d8; 8 drivers
S_0x1750060 .scope module, "fa16b" "FullAdder32bit" 2 38, 3 49, S_0x172e0e0;
 .timescale -9 -12;
L_0x178cfe0/d .functor XOR 1, L_0x178ccb0, L_0x178a500, C4<0>, C4<0>;
L_0x178cfe0 .delay (30000,30000,30000) L_0x178cfe0/d;
v0x17797e0_0 .net "a", 31 0, v0x1779c30_0; 1 drivers
v0x17798a0_0 .net "b", 31 0, v0x1779cd0_0; 1 drivers
v0x1779940_0 .alias "carryout", 0 0, v0x1779d50_0;
v0x1779a10_0 .alias "overflow", 0 0, v0x1779dd0_0;
v0x1779a90_0 .alias "sum", 31 0, v0x1779e50_0;
v0x1779b30 .array "temp_cout", 0 6;
v0x1779b30_0 .net v0x1779b30 0, 0 0, L_0x177bdd0; 1 drivers
v0x1779b30_1 .net v0x1779b30 1, 0 0, L_0x177e4b0; 1 drivers
v0x1779b30_2 .net v0x1779b30 2, 0 0, L_0x1780af0; 1 drivers
v0x1779b30_3 .net v0x1779b30 3, 0 0, L_0x17831e0; 1 drivers
v0x1779b30_4 .net v0x1779b30 4, 0 0, L_0x1785820; 1 drivers
v0x1779b30_5 .net v0x1779b30 5, 0 0, L_0x1787eb0; 1 drivers
v0x1779b30_6 .net v0x1779b30 6, 0 0, L_0x178a500; 1 drivers
RS_0x2b5918a9c018 .resolv tri, L_0x177a540, L_0x177ae80, L_0x177b750, L_0x177bfd0;
L_0x177c550 .part/pv RS_0x2b5918a9c018, 0, 4, 32;
L_0x177c610 .part v0x1779c30_0, 0, 4;
L_0x177c6b0 .part v0x1779cd0_0, 0, 4;
RS_0x2b5918a9ba18 .resolv tri, L_0x177cbc0, L_0x177d500, L_0x177ddf0, L_0x177e6b0;
L_0x177ec30 .part/pv RS_0x2b5918a9ba18, 4, 4, 32;
L_0x177ecd0 .part v0x1779c30_0, 4, 4;
L_0x177ed70 .part v0x1779cd0_0, 4, 4;
RS_0x2b5918a9b418 .resolv tri, L_0x177f1f0, L_0x177fb60, L_0x1780430, L_0x1780cf0;
L_0x17811e0 .part/pv RS_0x2b5918a9b418, 8, 4, 32;
L_0x1781310 .part v0x1779c30_0, 8, 4;
L_0x1781440 .part v0x1779cd0_0, 8, 4;
RS_0x2b5918a9ae18 .resolv tri, L_0x1781930, L_0x1782270, L_0x1782b40, L_0x17833e0;
L_0x1783960 .part/pv RS_0x2b5918a9ae18, 12, 4, 32;
L_0x1783a00 .part v0x1779c30_0, 12, 4;
L_0x1783aa0 .part v0x1779cd0_0, 12, 4;
RS_0x2b5918a9a818 .resolv tri, L_0x1783f20, L_0x1784870, L_0x1785160, L_0x1785a20;
L_0x1785fa0 .part/pv RS_0x2b5918a9a818, 16, 4, 32;
L_0x1786040 .part v0x1779c30_0, 16, 4;
L_0x1786160 .part v0x1779cd0_0, 16, 4;
RS_0x2b5918a9a218 .resolv tri, L_0x17865c0, L_0x1786f00, L_0x17877f0, L_0x17880b0;
L_0x17885c0 .part/pv RS_0x2b5918a9a218, 20, 4, 32;
L_0x17886f0 .part v0x1779c30_0, 20, 4;
L_0x1788790 .part v0x1779cd0_0, 20, 4;
RS_0x2b5918a99c18 .resolv tri, L_0x1788c00, L_0x1789550, L_0x1789e40, L_0x178a700;
L_0x178ac80 .part/pv RS_0x2b5918a99c18, 24, 4, 32;
L_0x178ae30 .part v0x1779c30_0, 24, 4;
L_0x1788830 .part v0x1779cd0_0, 24, 4;
RS_0x2b5918a99618 .resolv tri, L_0x178b3c0, L_0x178bd00, L_0x178c5f0, L_0x178ceb0;
L_0x178d430 .part/pv RS_0x2b5918a99618, 28, 4, 32;
L_0x178afe0 .part v0x1779c30_0, 28, 4;
L_0x178d590 .part v0x1779cd0_0, 28, 4;
S_0x17779d0 .scope module, "f40" "CompAdder4bit" 3 59, 3 30, S_0x1750060;
 .timescale -9 -12;
v0x1779300_0 .net "a", 3 0, L_0x177c610; 1 drivers
v0x17793c0_0 .net "b", 3 0, L_0x177c6b0; 1 drivers
v0x1779460_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1779500_0 .alias "carryout", 0 0, v0x1779b30_0;
v0x17795d0_0 .net8 "sum", 3 0, RS_0x2b5918a9c018; 4 drivers
v0x1779650 .array "temp_cout", 0 2;
v0x1779650_0 .net v0x1779650 0, 0 0, L_0x177a380; 1 drivers
v0x1779650_1 .net v0x1779650 1, 0 0, L_0x177ad10; 1 drivers
v0x1779650_2 .net v0x1779650 2, 0 0, L_0x177b5c0; 1 drivers
L_0x177a540 .part/pv L_0x1779ed0, 0, 1, 4;
L_0x177a5e0 .part L_0x177c610, 0, 1;
L_0x177a710 .part L_0x177c6b0, 0, 1;
L_0x177ae80 .part/pv L_0x177a910, 1, 1, 4;
L_0x177af70 .part L_0x177c610, 1, 1;
L_0x177b0a0 .part L_0x177c6b0, 1, 1;
L_0x177b750 .part/pv L_0x177b210, 2, 1, 4;
L_0x177b7f0 .part L_0x177c610, 2, 1;
L_0x177b920 .part L_0x177c6b0, 2, 1;
L_0x177bfd0 .part/pv L_0x177ba50, 3, 1, 4;
L_0x177c160 .part L_0x177c610, 3, 1;
L_0x177c320 .part L_0x177c6b0, 3, 1;
S_0x1778d00 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x17779d0;
 .timescale -9 -12;
L_0x1779ed0/d .functor XOR 1, L_0x177a5e0, L_0x177a710, C4<0>, C4<0>;
L_0x1779ed0 .delay (30000,30000,30000) L_0x1779ed0/d;
L_0x177a080/d .functor AND 1, L_0x177a5e0, L_0x177a710, C4<1>, C4<1>;
L_0x177a080 .delay (20000,20000,20000) L_0x177a080/d;
L_0x177a1f0/d .functor AND 1, L_0x177a5e0, C4<0>, C4<1>, C4<1>;
L_0x177a1f0 .delay (20000,20000,20000) L_0x177a1f0/d;
L_0x177a2e0/d .functor AND 1, L_0x177a710, C4<0>, C4<1>, C4<1>;
L_0x177a2e0 .delay (20000,20000,20000) L_0x177a2e0/d;
L_0x177a380/d .functor OR 1, L_0x177a080, L_0x177a1f0, L_0x177a2e0, C4<0>;
L_0x177a380 .delay (20000,20000,20000) L_0x177a380/d;
v0x1778df0_0 .net "AandB", 0 0, L_0x177a080; 1 drivers
v0x1778eb0_0 .net "AandC", 0 0, L_0x177a1f0; 1 drivers
v0x1778f50_0 .net "BandC", 0 0, L_0x177a2e0; 1 drivers
v0x1778ff0_0 .net "a", 0 0, L_0x177a5e0; 1 drivers
v0x1779070_0 .net "b", 0 0, L_0x177a710; 1 drivers
v0x1779110_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x17791b0_0 .alias "carryout", 0 0, v0x1779650_0;
v0x1779230_0 .net "sum", 0 0, L_0x1779ed0; 1 drivers
S_0x1778700 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x17779d0;
 .timescale -9 -12;
L_0x177a910/d .functor XOR 1, L_0x177af70, L_0x177b0a0, L_0x177a380, C4<0>;
L_0x177a910 .delay (30000,30000,30000) L_0x177a910/d;
L_0x177aad0/d .functor AND 1, L_0x177af70, L_0x177b0a0, C4<1>, C4<1>;
L_0x177aad0 .delay (20000,20000,20000) L_0x177aad0/d;
L_0x177aba0/d .functor AND 1, L_0x177af70, L_0x177a380, C4<1>, C4<1>;
L_0x177aba0 .delay (20000,20000,20000) L_0x177aba0/d;
L_0x177ac40/d .functor AND 1, L_0x177b0a0, L_0x177a380, C4<1>, C4<1>;
L_0x177ac40 .delay (20000,20000,20000) L_0x177ac40/d;
L_0x177ad10/d .functor OR 1, L_0x177aad0, L_0x177aba0, L_0x177ac40, C4<0>;
L_0x177ad10 .delay (20000,20000,20000) L_0x177ad10/d;
v0x17787f0_0 .net "AandB", 0 0, L_0x177aad0; 1 drivers
v0x17788b0_0 .net "AandC", 0 0, L_0x177aba0; 1 drivers
v0x1778950_0 .net "BandC", 0 0, L_0x177ac40; 1 drivers
v0x17789f0_0 .net "a", 0 0, L_0x177af70; 1 drivers
v0x1778a70_0 .net "b", 0 0, L_0x177b0a0; 1 drivers
v0x1778b10_0 .alias "carryin", 0 0, v0x1779650_0;
v0x1778bb0_0 .alias "carryout", 0 0, v0x1779650_1;
v0x1778c30_0 .net "sum", 0 0, L_0x177a910; 1 drivers
S_0x1778100 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x17779d0;
 .timescale -9 -12;
L_0x177b210/d .functor XOR 1, L_0x177b7f0, L_0x177b920, L_0x177ad10, C4<0>;
L_0x177b210 .delay (30000,30000,30000) L_0x177b210/d;
L_0x177b340/d .functor AND 1, L_0x177b7f0, L_0x177b920, C4<1>, C4<1>;
L_0x177b340 .delay (20000,20000,20000) L_0x177b340/d;
L_0x177b480/d .functor AND 1, L_0x177b7f0, L_0x177ad10, C4<1>, C4<1>;
L_0x177b480 .delay (20000,20000,20000) L_0x177b480/d;
L_0x177b520/d .functor AND 1, L_0x177b920, L_0x177ad10, C4<1>, C4<1>;
L_0x177b520 .delay (20000,20000,20000) L_0x177b520/d;
L_0x177b5c0/d .functor OR 1, L_0x177b340, L_0x177b480, L_0x177b520, C4<0>;
L_0x177b5c0 .delay (20000,20000,20000) L_0x177b5c0/d;
v0x17781f0_0 .net "AandB", 0 0, L_0x177b340; 1 drivers
v0x17782b0_0 .net "AandC", 0 0, L_0x177b480; 1 drivers
v0x1778350_0 .net "BandC", 0 0, L_0x177b520; 1 drivers
v0x17783f0_0 .net "a", 0 0, L_0x177b7f0; 1 drivers
v0x1778470_0 .net "b", 0 0, L_0x177b920; 1 drivers
v0x1778510_0 .alias "carryin", 0 0, v0x1779650_1;
v0x17785b0_0 .alias "carryout", 0 0, v0x1779650_2;
v0x1778630_0 .net "sum", 0 0, L_0x177b210; 1 drivers
S_0x1777ac0 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x17779d0;
 .timescale -9 -12;
L_0x177ba50/d .functor XOR 1, L_0x177c160, L_0x177c320, L_0x177b5c0, C4<0>;
L_0x177ba50 .delay (30000,30000,30000) L_0x177ba50/d;
L_0x177bb40/d .functor AND 1, L_0x177c160, L_0x177c320, C4<1>, C4<1>;
L_0x177bb40 .delay (20000,20000,20000) L_0x177bb40/d;
L_0x177bc60/d .functor AND 1, L_0x177c160, L_0x177b5c0, C4<1>, C4<1>;
L_0x177bc60 .delay (20000,20000,20000) L_0x177bc60/d;
L_0x177bd00/d .functor AND 1, L_0x177c320, L_0x177b5c0, C4<1>, C4<1>;
L_0x177bd00 .delay (20000,20000,20000) L_0x177bd00/d;
L_0x177bdd0/d .functor OR 1, L_0x177bb40, L_0x177bc60, L_0x177bd00, C4<0>;
L_0x177bdd0 .delay (20000,20000,20000) L_0x177bdd0/d;
v0x1777bb0_0 .net "AandB", 0 0, L_0x177bb40; 1 drivers
v0x1777c70_0 .net "AandC", 0 0, L_0x177bc60; 1 drivers
v0x1777d10_0 .net "BandC", 0 0, L_0x177bd00; 1 drivers
v0x1777db0_0 .net "a", 0 0, L_0x177c160; 1 drivers
v0x1777e30_0 .net "b", 0 0, L_0x177c320; 1 drivers
v0x1777ed0_0 .alias "carryin", 0 0, v0x1779650_2;
v0x1777fb0_0 .alias "carryout", 0 0, v0x1779b30_0;
v0x1778030_0 .net "sum", 0 0, L_0x177ba50; 1 drivers
S_0x1775bc0 .scope module, "f41" "CompAdder4bit" 3 60, 3 30, S_0x1750060;
 .timescale -9 -12;
v0x17774f0_0 .net "a", 3 0, L_0x177ecd0; 1 drivers
v0x17775b0_0 .net "b", 3 0, L_0x177ed70; 1 drivers
v0x1777650_0 .alias "carryin", 0 0, v0x1779b30_0;
v0x17776f0_0 .alias "carryout", 0 0, v0x1779b30_1;
v0x17777c0_0 .net8 "sum", 3 0, RS_0x2b5918a9ba18; 4 drivers
v0x1777840 .array "temp_cout", 0 2;
v0x1777840_0 .net v0x1777840 0, 0 0, L_0x177ca00; 1 drivers
v0x1777840_1 .net v0x1777840 1, 0 0, L_0x177d390; 1 drivers
v0x1777840_2 .net v0x1777840 2, 0 0, L_0x177dc60; 1 drivers
L_0x177cbc0 .part/pv L_0x177c100, 0, 1, 4;
L_0x177cc60 .part L_0x177ecd0, 0, 1;
L_0x177cd90 .part L_0x177ed70, 0, 1;
L_0x177d500 .part/pv L_0x177cf90, 1, 1, 4;
L_0x177d5f0 .part L_0x177ecd0, 1, 1;
L_0x177d720 .part L_0x177ed70, 1, 1;
L_0x177ddf0 .part/pv L_0x177d890, 2, 1, 4;
L_0x177de90 .part L_0x177ecd0, 2, 1;
L_0x177dfc0 .part L_0x177ed70, 2, 1;
L_0x177e6b0 .part/pv L_0x177e0f0, 3, 1, 4;
L_0x177e840 .part L_0x177ecd0, 3, 1;
L_0x177ea00 .part L_0x177ed70, 3, 1;
S_0x1776ef0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1775bc0;
 .timescale -9 -12;
L_0x177c100/d .functor XOR 1, L_0x177cc60, L_0x177cd90, C4<0>, C4<0>;
L_0x177c100 .delay (30000,30000,30000) L_0x177c100/d;
L_0x177c7d0/d .functor AND 1, L_0x177cc60, L_0x177cd90, C4<1>, C4<1>;
L_0x177c7d0 .delay (20000,20000,20000) L_0x177c7d0/d;
L_0x177c870/d .functor AND 1, L_0x177cc60, C4<0>, C4<1>, C4<1>;
L_0x177c870 .delay (20000,20000,20000) L_0x177c870/d;
L_0x177c960/d .functor AND 1, L_0x177cd90, C4<0>, C4<1>, C4<1>;
L_0x177c960 .delay (20000,20000,20000) L_0x177c960/d;
L_0x177ca00/d .functor OR 1, L_0x177c7d0, L_0x177c870, L_0x177c960, C4<0>;
L_0x177ca00 .delay (20000,20000,20000) L_0x177ca00/d;
v0x1776fe0_0 .net "AandB", 0 0, L_0x177c7d0; 1 drivers
v0x17770a0_0 .net "AandC", 0 0, L_0x177c870; 1 drivers
v0x1777140_0 .net "BandC", 0 0, L_0x177c960; 1 drivers
v0x17771e0_0 .net "a", 0 0, L_0x177cc60; 1 drivers
v0x1777260_0 .net "b", 0 0, L_0x177cd90; 1 drivers
v0x1777300_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x17773a0_0 .alias "carryout", 0 0, v0x1777840_0;
v0x1777420_0 .net "sum", 0 0, L_0x177c100; 1 drivers
S_0x17768f0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1775bc0;
 .timescale -9 -12;
L_0x177cf90/d .functor XOR 1, L_0x177d5f0, L_0x177d720, L_0x177ca00, C4<0>;
L_0x177cf90 .delay (30000,30000,30000) L_0x177cf90/d;
L_0x177d150/d .functor AND 1, L_0x177d5f0, L_0x177d720, C4<1>, C4<1>;
L_0x177d150 .delay (20000,20000,20000) L_0x177d150/d;
L_0x177d220/d .functor AND 1, L_0x177d5f0, L_0x177ca00, C4<1>, C4<1>;
L_0x177d220 .delay (20000,20000,20000) L_0x177d220/d;
L_0x177d2c0/d .functor AND 1, L_0x177d720, L_0x177ca00, C4<1>, C4<1>;
L_0x177d2c0 .delay (20000,20000,20000) L_0x177d2c0/d;
L_0x177d390/d .functor OR 1, L_0x177d150, L_0x177d220, L_0x177d2c0, C4<0>;
L_0x177d390 .delay (20000,20000,20000) L_0x177d390/d;
v0x17769e0_0 .net "AandB", 0 0, L_0x177d150; 1 drivers
v0x1776aa0_0 .net "AandC", 0 0, L_0x177d220; 1 drivers
v0x1776b40_0 .net "BandC", 0 0, L_0x177d2c0; 1 drivers
v0x1776be0_0 .net "a", 0 0, L_0x177d5f0; 1 drivers
v0x1776c60_0 .net "b", 0 0, L_0x177d720; 1 drivers
v0x1776d00_0 .alias "carryin", 0 0, v0x1777840_0;
v0x1776da0_0 .alias "carryout", 0 0, v0x1777840_1;
v0x1776e20_0 .net "sum", 0 0, L_0x177cf90; 1 drivers
S_0x17762f0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1775bc0;
 .timescale -9 -12;
L_0x177d890/d .functor XOR 1, L_0x177de90, L_0x177dfc0, L_0x177d390, C4<0>;
L_0x177d890 .delay (30000,30000,30000) L_0x177d890/d;
L_0x177d9c0/d .functor AND 1, L_0x177de90, L_0x177dfc0, C4<1>, C4<1>;
L_0x177d9c0 .delay (20000,20000,20000) L_0x177d9c0/d;
L_0x177db00/d .functor AND 1, L_0x177de90, L_0x177d390, C4<1>, C4<1>;
L_0x177db00 .delay (20000,20000,20000) L_0x177db00/d;
L_0x177dba0/d .functor AND 1, L_0x177dfc0, L_0x177d390, C4<1>, C4<1>;
L_0x177dba0 .delay (20000,20000,20000) L_0x177dba0/d;
L_0x177dc60/d .functor OR 1, L_0x177d9c0, L_0x177db00, L_0x177dba0, C4<0>;
L_0x177dc60 .delay (20000,20000,20000) L_0x177dc60/d;
v0x17763e0_0 .net "AandB", 0 0, L_0x177d9c0; 1 drivers
v0x17764a0_0 .net "AandC", 0 0, L_0x177db00; 1 drivers
v0x1776540_0 .net "BandC", 0 0, L_0x177dba0; 1 drivers
v0x17765e0_0 .net "a", 0 0, L_0x177de90; 1 drivers
v0x1776660_0 .net "b", 0 0, L_0x177dfc0; 1 drivers
v0x1776700_0 .alias "carryin", 0 0, v0x1777840_1;
v0x17767a0_0 .alias "carryout", 0 0, v0x1777840_2;
v0x1776820_0 .net "sum", 0 0, L_0x177d890; 1 drivers
S_0x1775cb0 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1775bc0;
 .timescale -9 -12;
L_0x177e0f0/d .functor XOR 1, L_0x177e840, L_0x177ea00, L_0x177dc60, C4<0>;
L_0x177e0f0 .delay (30000,30000,30000) L_0x177e0f0/d;
L_0x177e1e0/d .functor AND 1, L_0x177e840, L_0x177ea00, C4<1>, C4<1>;
L_0x177e1e0 .delay (20000,20000,20000) L_0x177e1e0/d;
L_0x177e300/d .functor AND 1, L_0x177e840, L_0x177dc60, C4<1>, C4<1>;
L_0x177e300 .delay (20000,20000,20000) L_0x177e300/d;
L_0x177e3c0/d .functor AND 1, L_0x177ea00, L_0x177dc60, C4<1>, C4<1>;
L_0x177e3c0 .delay (20000,20000,20000) L_0x177e3c0/d;
L_0x177e4b0/d .functor OR 1, L_0x177e1e0, L_0x177e300, L_0x177e3c0, C4<0>;
L_0x177e4b0 .delay (20000,20000,20000) L_0x177e4b0/d;
v0x1775da0_0 .net "AandB", 0 0, L_0x177e1e0; 1 drivers
v0x1775e60_0 .net "AandC", 0 0, L_0x177e300; 1 drivers
v0x1775f00_0 .net "BandC", 0 0, L_0x177e3c0; 1 drivers
v0x1775fa0_0 .net "a", 0 0, L_0x177e840; 1 drivers
v0x1776020_0 .net "b", 0 0, L_0x177ea00; 1 drivers
v0x17760c0_0 .alias "carryin", 0 0, v0x1777840_2;
v0x17761a0_0 .alias "carryout", 0 0, v0x1779b30_1;
v0x1776220_0 .net "sum", 0 0, L_0x177e0f0; 1 drivers
S_0x1773db0 .scope module, "f42" "CompAdder4bit" 3 61, 3 30, S_0x1750060;
 .timescale -9 -12;
v0x17756e0_0 .net "a", 3 0, L_0x1781310; 1 drivers
v0x17757a0_0 .net "b", 3 0, L_0x1781440; 1 drivers
v0x1775840_0 .alias "carryin", 0 0, v0x1779b30_1;
v0x17758e0_0 .alias "carryout", 0 0, v0x1779b30_2;
v0x17759b0_0 .net8 "sum", 3 0, RS_0x2b5918a9b418; 4 drivers
v0x1775a30 .array "temp_cout", 0 2;
v0x1775a30_0 .net v0x1775a30 0, 0 0, L_0x177f0d0; 1 drivers
v0x1775a30_1 .net v0x1775a30 1, 0 0, L_0x177f9f0; 1 drivers
v0x1775a30_2 .net v0x1775a30 2, 0 0, L_0x17802a0; 1 drivers
L_0x177f1f0 .part/pv L_0x177e7e0, 0, 1, 4;
L_0x177f290 .part L_0x1781310, 0, 1;
L_0x177f3c0 .part L_0x1781440, 0, 1;
L_0x177fb60 .part/pv L_0x177f5c0, 1, 1, 4;
L_0x177fc50 .part L_0x1781310, 1, 1;
L_0x177fd80 .part L_0x1781440, 1, 1;
L_0x1780430 .part/pv L_0x177fef0, 2, 1, 4;
L_0x17804d0 .part L_0x1781310, 2, 1;
L_0x1780600 .part L_0x1781440, 2, 1;
L_0x1780cf0 .part/pv L_0x1780730, 3, 1, 4;
L_0x1780e80 .part L_0x1781310, 3, 1;
L_0x1780fb0 .part L_0x1781440, 3, 1;
S_0x17750e0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1773db0;
 .timescale -9 -12;
L_0x177e7e0/d .functor XOR 1, L_0x177f290, L_0x177f3c0, C4<0>, C4<0>;
L_0x177e7e0 .delay (30000,30000,30000) L_0x177e7e0/d;
L_0x177eec0/d .functor AND 1, L_0x177f290, L_0x177f3c0, C4<1>, C4<1>;
L_0x177eec0 .delay (20000,20000,20000) L_0x177eec0/d;
L_0x177ef90/d .functor AND 1, L_0x177f290, C4<0>, C4<1>, C4<1>;
L_0x177ef90 .delay (20000,20000,20000) L_0x177ef90/d;
L_0x177f030/d .functor AND 1, L_0x177f3c0, C4<0>, C4<1>, C4<1>;
L_0x177f030 .delay (20000,20000,20000) L_0x177f030/d;
L_0x177f0d0/d .functor OR 1, L_0x177eec0, L_0x177ef90, L_0x177f030, C4<0>;
L_0x177f0d0 .delay (20000,20000,20000) L_0x177f0d0/d;
v0x17751d0_0 .net "AandB", 0 0, L_0x177eec0; 1 drivers
v0x1775290_0 .net "AandC", 0 0, L_0x177ef90; 1 drivers
v0x1775330_0 .net "BandC", 0 0, L_0x177f030; 1 drivers
v0x17753d0_0 .net "a", 0 0, L_0x177f290; 1 drivers
v0x1775450_0 .net "b", 0 0, L_0x177f3c0; 1 drivers
v0x17754f0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1775590_0 .alias "carryout", 0 0, v0x1775a30_0;
v0x1775610_0 .net "sum", 0 0, L_0x177e7e0; 1 drivers
S_0x1774ae0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1773db0;
 .timescale -9 -12;
L_0x177f5c0/d .functor XOR 1, L_0x177fc50, L_0x177fd80, L_0x177f0d0, C4<0>;
L_0x177f5c0 .delay (30000,30000,30000) L_0x177f5c0/d;
L_0x177f7b0/d .functor AND 1, L_0x177fc50, L_0x177fd80, C4<1>, C4<1>;
L_0x177f7b0 .delay (20000,20000,20000) L_0x177f7b0/d;
L_0x177f880/d .functor AND 1, L_0x177fc50, L_0x177f0d0, C4<1>, C4<1>;
L_0x177f880 .delay (20000,20000,20000) L_0x177f880/d;
L_0x177f920/d .functor AND 1, L_0x177fd80, L_0x177f0d0, C4<1>, C4<1>;
L_0x177f920 .delay (20000,20000,20000) L_0x177f920/d;
L_0x177f9f0/d .functor OR 1, L_0x177f7b0, L_0x177f880, L_0x177f920, C4<0>;
L_0x177f9f0 .delay (20000,20000,20000) L_0x177f9f0/d;
v0x1774bd0_0 .net "AandB", 0 0, L_0x177f7b0; 1 drivers
v0x1774c90_0 .net "AandC", 0 0, L_0x177f880; 1 drivers
v0x1774d30_0 .net "BandC", 0 0, L_0x177f920; 1 drivers
v0x1774dd0_0 .net "a", 0 0, L_0x177fc50; 1 drivers
v0x1774e50_0 .net "b", 0 0, L_0x177fd80; 1 drivers
v0x1774ef0_0 .alias "carryin", 0 0, v0x1775a30_0;
v0x1774f90_0 .alias "carryout", 0 0, v0x1775a30_1;
v0x1775010_0 .net "sum", 0 0, L_0x177f5c0; 1 drivers
S_0x17744e0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1773db0;
 .timescale -9 -12;
L_0x177fef0/d .functor XOR 1, L_0x17804d0, L_0x1780600, L_0x177f9f0, C4<0>;
L_0x177fef0 .delay (30000,30000,30000) L_0x177fef0/d;
L_0x1780020/d .functor AND 1, L_0x17804d0, L_0x1780600, C4<1>, C4<1>;
L_0x1780020 .delay (20000,20000,20000) L_0x1780020/d;
L_0x1780160/d .functor AND 1, L_0x17804d0, L_0x177f9f0, C4<1>, C4<1>;
L_0x1780160 .delay (20000,20000,20000) L_0x1780160/d;
L_0x1780200/d .functor AND 1, L_0x1780600, L_0x177f9f0, C4<1>, C4<1>;
L_0x1780200 .delay (20000,20000,20000) L_0x1780200/d;
L_0x17802a0/d .functor OR 1, L_0x1780020, L_0x1780160, L_0x1780200, C4<0>;
L_0x17802a0 .delay (20000,20000,20000) L_0x17802a0/d;
v0x17745d0_0 .net "AandB", 0 0, L_0x1780020; 1 drivers
v0x1774690_0 .net "AandC", 0 0, L_0x1780160; 1 drivers
v0x1774730_0 .net "BandC", 0 0, L_0x1780200; 1 drivers
v0x17747d0_0 .net "a", 0 0, L_0x17804d0; 1 drivers
v0x1774850_0 .net "b", 0 0, L_0x1780600; 1 drivers
v0x17748f0_0 .alias "carryin", 0 0, v0x1775a30_1;
v0x1774990_0 .alias "carryout", 0 0, v0x1775a30_2;
v0x1774a10_0 .net "sum", 0 0, L_0x177fef0; 1 drivers
S_0x1773ea0 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1773db0;
 .timescale -9 -12;
L_0x1780730/d .functor XOR 1, L_0x1780e80, L_0x1780fb0, L_0x17802a0, C4<0>;
L_0x1780730 .delay (30000,30000,30000) L_0x1780730/d;
L_0x1780820/d .functor AND 1, L_0x1780e80, L_0x1780fb0, C4<1>, C4<1>;
L_0x1780820 .delay (20000,20000,20000) L_0x1780820/d;
L_0x1780940/d .functor AND 1, L_0x1780e80, L_0x17802a0, C4<1>, C4<1>;
L_0x1780940 .delay (20000,20000,20000) L_0x1780940/d;
L_0x1780a00/d .functor AND 1, L_0x1780fb0, L_0x17802a0, C4<1>, C4<1>;
L_0x1780a00 .delay (20000,20000,20000) L_0x1780a00/d;
L_0x1780af0/d .functor OR 1, L_0x1780820, L_0x1780940, L_0x1780a00, C4<0>;
L_0x1780af0 .delay (20000,20000,20000) L_0x1780af0/d;
v0x1773f90_0 .net "AandB", 0 0, L_0x1780820; 1 drivers
v0x1774050_0 .net "AandC", 0 0, L_0x1780940; 1 drivers
v0x17740f0_0 .net "BandC", 0 0, L_0x1780a00; 1 drivers
v0x1774190_0 .net "a", 0 0, L_0x1780e80; 1 drivers
v0x1774210_0 .net "b", 0 0, L_0x1780fb0; 1 drivers
v0x17742b0_0 .alias "carryin", 0 0, v0x1775a30_2;
v0x1774390_0 .alias "carryout", 0 0, v0x1779b30_2;
v0x1774410_0 .net "sum", 0 0, L_0x1780730; 1 drivers
S_0x1771fa0 .scope module, "f43" "CompAdder4bit" 3 62, 3 30, S_0x1750060;
 .timescale -9 -12;
v0x17738d0_0 .net "a", 3 0, L_0x1783a00; 1 drivers
v0x1773990_0 .net "b", 3 0, L_0x1783aa0; 1 drivers
v0x1773a30_0 .alias "carryin", 0 0, v0x1779b30_2;
v0x1773ad0_0 .alias "carryout", 0 0, v0x1779b30_3;
v0x1773ba0_0 .net8 "sum", 3 0, RS_0x2b5918a9ae18; 4 drivers
v0x1773c20 .array "temp_cout", 0 2;
v0x1773c20_0 .net v0x1773c20 0, 0 0, L_0x17817c0; 1 drivers
v0x1773c20_1 .net v0x1773c20 1, 0 0, L_0x1782100; 1 drivers
v0x1773c20_2 .net v0x1773c20 2, 0 0, L_0x17829b0; 1 drivers
L_0x1781930 .part/pv L_0x1780e20, 0, 1, 4;
L_0x17819d0 .part L_0x1783a00, 0, 1;
L_0x1781b00 .part L_0x1783aa0, 0, 1;
L_0x1782270 .part/pv L_0x1781d00, 1, 1, 4;
L_0x1782360 .part L_0x1783a00, 1, 1;
L_0x1782490 .part L_0x1783aa0, 1, 1;
L_0x1782b40 .part/pv L_0x1782600, 2, 1, 4;
L_0x1782be0 .part L_0x1783a00, 2, 1;
L_0x1782d10 .part L_0x1783aa0, 2, 1;
L_0x17833e0 .part/pv L_0x1782e40, 3, 1, 4;
L_0x1783570 .part L_0x1783a00, 3, 1;
L_0x1783730 .part L_0x1783aa0, 3, 1;
S_0x17732d0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1771fa0;
 .timescale -9 -12;
L_0x1780e20/d .functor XOR 1, L_0x17819d0, L_0x1781b00, C4<0>, C4<0>;
L_0x1780e20 .delay (30000,30000,30000) L_0x1780e20/d;
L_0x17815b0/d .functor AND 1, L_0x17819d0, L_0x1781b00, C4<1>, C4<1>;
L_0x17815b0 .delay (20000,20000,20000) L_0x17815b0/d;
L_0x1781680/d .functor AND 1, L_0x17819d0, C4<0>, C4<1>, C4<1>;
L_0x1781680 .delay (20000,20000,20000) L_0x1781680/d;
L_0x1781720/d .functor AND 1, L_0x1781b00, C4<0>, C4<1>, C4<1>;
L_0x1781720 .delay (20000,20000,20000) L_0x1781720/d;
L_0x17817c0/d .functor OR 1, L_0x17815b0, L_0x1781680, L_0x1781720, C4<0>;
L_0x17817c0 .delay (20000,20000,20000) L_0x17817c0/d;
v0x17733c0_0 .net "AandB", 0 0, L_0x17815b0; 1 drivers
v0x1773480_0 .net "AandC", 0 0, L_0x1781680; 1 drivers
v0x1773520_0 .net "BandC", 0 0, L_0x1781720; 1 drivers
v0x17735c0_0 .net "a", 0 0, L_0x17819d0; 1 drivers
v0x1773640_0 .net "b", 0 0, L_0x1781b00; 1 drivers
v0x17736e0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1773780_0 .alias "carryout", 0 0, v0x1773c20_0;
v0x1773800_0 .net "sum", 0 0, L_0x1780e20; 1 drivers
S_0x1772cd0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1771fa0;
 .timescale -9 -12;
L_0x1781d00/d .functor XOR 1, L_0x1782360, L_0x1782490, L_0x17817c0, C4<0>;
L_0x1781d00 .delay (30000,30000,30000) L_0x1781d00/d;
L_0x1781ec0/d .functor AND 1, L_0x1782360, L_0x1782490, C4<1>, C4<1>;
L_0x1781ec0 .delay (20000,20000,20000) L_0x1781ec0/d;
L_0x1781f90/d .functor AND 1, L_0x1782360, L_0x17817c0, C4<1>, C4<1>;
L_0x1781f90 .delay (20000,20000,20000) L_0x1781f90/d;
L_0x1782030/d .functor AND 1, L_0x1782490, L_0x17817c0, C4<1>, C4<1>;
L_0x1782030 .delay (20000,20000,20000) L_0x1782030/d;
L_0x1782100/d .functor OR 1, L_0x1781ec0, L_0x1781f90, L_0x1782030, C4<0>;
L_0x1782100 .delay (20000,20000,20000) L_0x1782100/d;
v0x1772dc0_0 .net "AandB", 0 0, L_0x1781ec0; 1 drivers
v0x1772e80_0 .net "AandC", 0 0, L_0x1781f90; 1 drivers
v0x1772f20_0 .net "BandC", 0 0, L_0x1782030; 1 drivers
v0x1772fc0_0 .net "a", 0 0, L_0x1782360; 1 drivers
v0x1773040_0 .net "b", 0 0, L_0x1782490; 1 drivers
v0x17730e0_0 .alias "carryin", 0 0, v0x1773c20_0;
v0x1773180_0 .alias "carryout", 0 0, v0x1773c20_1;
v0x1773200_0 .net "sum", 0 0, L_0x1781d00; 1 drivers
S_0x17726d0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1771fa0;
 .timescale -9 -12;
L_0x1782600/d .functor XOR 1, L_0x1782be0, L_0x1782d10, L_0x1782100, C4<0>;
L_0x1782600 .delay (30000,30000,30000) L_0x1782600/d;
L_0x1782730/d .functor AND 1, L_0x1782be0, L_0x1782d10, C4<1>, C4<1>;
L_0x1782730 .delay (20000,20000,20000) L_0x1782730/d;
L_0x1782870/d .functor AND 1, L_0x1782be0, L_0x1782100, C4<1>, C4<1>;
L_0x1782870 .delay (20000,20000,20000) L_0x1782870/d;
L_0x1782910/d .functor AND 1, L_0x1782d10, L_0x1782100, C4<1>, C4<1>;
L_0x1782910 .delay (20000,20000,20000) L_0x1782910/d;
L_0x17829b0/d .functor OR 1, L_0x1782730, L_0x1782870, L_0x1782910, C4<0>;
L_0x17829b0 .delay (20000,20000,20000) L_0x17829b0/d;
v0x17727c0_0 .net "AandB", 0 0, L_0x1782730; 1 drivers
v0x1772880_0 .net "AandC", 0 0, L_0x1782870; 1 drivers
v0x1772920_0 .net "BandC", 0 0, L_0x1782910; 1 drivers
v0x17729c0_0 .net "a", 0 0, L_0x1782be0; 1 drivers
v0x1772a40_0 .net "b", 0 0, L_0x1782d10; 1 drivers
v0x1772ae0_0 .alias "carryin", 0 0, v0x1773c20_1;
v0x1772b80_0 .alias "carryout", 0 0, v0x1773c20_2;
v0x1772c00_0 .net "sum", 0 0, L_0x1782600; 1 drivers
S_0x1772090 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1771fa0;
 .timescale -9 -12;
L_0x1782e40/d .functor XOR 1, L_0x1783570, L_0x1783730, L_0x17829b0, C4<0>;
L_0x1782e40 .delay (30000,30000,30000) L_0x1782e40/d;
L_0x1782f30/d .functor AND 1, L_0x1783570, L_0x1783730, C4<1>, C4<1>;
L_0x1782f30 .delay (20000,20000,20000) L_0x1782f30/d;
L_0x1783050/d .functor AND 1, L_0x1783570, L_0x17829b0, C4<1>, C4<1>;
L_0x1783050 .delay (20000,20000,20000) L_0x1783050/d;
L_0x17830f0/d .functor AND 1, L_0x1783730, L_0x17829b0, C4<1>, C4<1>;
L_0x17830f0 .delay (20000,20000,20000) L_0x17830f0/d;
L_0x17831e0/d .functor OR 1, L_0x1782f30, L_0x1783050, L_0x17830f0, C4<0>;
L_0x17831e0 .delay (20000,20000,20000) L_0x17831e0/d;
v0x1772180_0 .net "AandB", 0 0, L_0x1782f30; 1 drivers
v0x1772240_0 .net "AandC", 0 0, L_0x1783050; 1 drivers
v0x17722e0_0 .net "BandC", 0 0, L_0x17830f0; 1 drivers
v0x1772380_0 .net "a", 0 0, L_0x1783570; 1 drivers
v0x1772400_0 .net "b", 0 0, L_0x1783730; 1 drivers
v0x17724a0_0 .alias "carryin", 0 0, v0x1773c20_2;
v0x1772580_0 .alias "carryout", 0 0, v0x1779b30_3;
v0x1772600_0 .net "sum", 0 0, L_0x1782e40; 1 drivers
S_0x1770190 .scope module, "f44" "CompAdder4bit" 3 63, 3 30, S_0x1750060;
 .timescale -9 -12;
v0x1771ac0_0 .net "a", 3 0, L_0x1786040; 1 drivers
v0x1771b80_0 .net "b", 3 0, L_0x1786160; 1 drivers
v0x1771c20_0 .alias "carryin", 0 0, v0x1779b30_3;
v0x1771cc0_0 .alias "carryout", 0 0, v0x1779b30_4;
v0x1771d90_0 .net8 "sum", 3 0, RS_0x2b5918a9a818; 4 drivers
v0x1771e10 .array "temp_cout", 0 2;
v0x1771e10_0 .net v0x1771e10 0, 0 0, L_0x1783e50; 1 drivers
v0x1771e10_1 .net v0x1771e10 1, 0 0, L_0x1784700; 1 drivers
v0x1771e10_2 .net v0x1771e10 2, 0 0, L_0x1784fd0; 1 drivers
L_0x1783f20 .part/pv L_0x1783510, 0, 1, 4;
L_0x1783fc0 .part L_0x1786040, 0, 1;
L_0x17840f0 .part L_0x1786160, 0, 1;
L_0x1784870 .part/pv L_0x1784330, 1, 1, 4;
L_0x1784960 .part L_0x1786040, 1, 1;
L_0x1784a90 .part L_0x1786160, 1, 1;
L_0x1785160 .part/pv L_0x1784c00, 2, 1, 4;
L_0x1785200 .part L_0x1786040, 2, 1;
L_0x1785330 .part L_0x1786160, 2, 1;
L_0x1785a20 .part/pv L_0x1785460, 3, 1, 4;
L_0x1785bb0 .part L_0x1786040, 3, 1;
L_0x1785d70 .part L_0x1786160, 3, 1;
S_0x17714c0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x1770190;
 .timescale -9 -12;
L_0x1783510/d .functor XOR 1, L_0x1783fc0, L_0x17840f0, C4<0>, C4<0>;
L_0x1783510 .delay (30000,30000,30000) L_0x1783510/d;
L_0x1783c20/d .functor AND 1, L_0x1783fc0, L_0x17840f0, C4<1>, C4<1>;
L_0x1783c20 .delay (20000,20000,20000) L_0x1783c20/d;
L_0x1783cf0/d .functor AND 1, L_0x1783fc0, C4<0>, C4<1>, C4<1>;
L_0x1783cf0 .delay (20000,20000,20000) L_0x1783cf0/d;
L_0x1783d90/d .functor AND 1, L_0x17840f0, C4<0>, C4<1>, C4<1>;
L_0x1783d90 .delay (20000,20000,20000) L_0x1783d90/d;
L_0x1783e50/d .functor OR 1, L_0x1783c20, L_0x1783cf0, L_0x1783d90, C4<0>;
L_0x1783e50 .delay (20000,20000,20000) L_0x1783e50/d;
v0x17715b0_0 .net "AandB", 0 0, L_0x1783c20; 1 drivers
v0x1771670_0 .net "AandC", 0 0, L_0x1783cf0; 1 drivers
v0x1771710_0 .net "BandC", 0 0, L_0x1783d90; 1 drivers
v0x17717b0_0 .net "a", 0 0, L_0x1783fc0; 1 drivers
v0x1771830_0 .net "b", 0 0, L_0x17840f0; 1 drivers
v0x17718d0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1771970_0 .alias "carryout", 0 0, v0x1771e10_0;
v0x17719f0_0 .net "sum", 0 0, L_0x1783510; 1 drivers
S_0x1770ec0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x1770190;
 .timescale -9 -12;
L_0x1784330/d .functor XOR 1, L_0x1784960, L_0x1784a90, L_0x1783e50, C4<0>;
L_0x1784330 .delay (30000,30000,30000) L_0x1784330/d;
L_0x17844c0/d .functor AND 1, L_0x1784960, L_0x1784a90, C4<1>, C4<1>;
L_0x17844c0 .delay (20000,20000,20000) L_0x17844c0/d;
L_0x1784590/d .functor AND 1, L_0x1784960, L_0x1783e50, C4<1>, C4<1>;
L_0x1784590 .delay (20000,20000,20000) L_0x1784590/d;
L_0x1784630/d .functor AND 1, L_0x1784a90, L_0x1783e50, C4<1>, C4<1>;
L_0x1784630 .delay (20000,20000,20000) L_0x1784630/d;
L_0x1784700/d .functor OR 1, L_0x17844c0, L_0x1784590, L_0x1784630, C4<0>;
L_0x1784700 .delay (20000,20000,20000) L_0x1784700/d;
v0x1770fb0_0 .net "AandB", 0 0, L_0x17844c0; 1 drivers
v0x1771070_0 .net "AandC", 0 0, L_0x1784590; 1 drivers
v0x1771110_0 .net "BandC", 0 0, L_0x1784630; 1 drivers
v0x17711b0_0 .net "a", 0 0, L_0x1784960; 1 drivers
v0x1771230_0 .net "b", 0 0, L_0x1784a90; 1 drivers
v0x17712d0_0 .alias "carryin", 0 0, v0x1771e10_0;
v0x1771370_0 .alias "carryout", 0 0, v0x1771e10_1;
v0x17713f0_0 .net "sum", 0 0, L_0x1784330; 1 drivers
S_0x17708c0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x1770190;
 .timescale -9 -12;
L_0x1784c00/d .functor XOR 1, L_0x1785200, L_0x1785330, L_0x1784700, C4<0>;
L_0x1784c00 .delay (30000,30000,30000) L_0x1784c00/d;
L_0x1784d30/d .functor AND 1, L_0x1785200, L_0x1785330, C4<1>, C4<1>;
L_0x1784d30 .delay (20000,20000,20000) L_0x1784d30/d;
L_0x1784e70/d .functor AND 1, L_0x1785200, L_0x1784700, C4<1>, C4<1>;
L_0x1784e70 .delay (20000,20000,20000) L_0x1784e70/d;
L_0x1784f10/d .functor AND 1, L_0x1785330, L_0x1784700, C4<1>, C4<1>;
L_0x1784f10 .delay (20000,20000,20000) L_0x1784f10/d;
L_0x1784fd0/d .functor OR 1, L_0x1784d30, L_0x1784e70, L_0x1784f10, C4<0>;
L_0x1784fd0 .delay (20000,20000,20000) L_0x1784fd0/d;
v0x17709b0_0 .net "AandB", 0 0, L_0x1784d30; 1 drivers
v0x1770a70_0 .net "AandC", 0 0, L_0x1784e70; 1 drivers
v0x1770b10_0 .net "BandC", 0 0, L_0x1784f10; 1 drivers
v0x1770bb0_0 .net "a", 0 0, L_0x1785200; 1 drivers
v0x1770c30_0 .net "b", 0 0, L_0x1785330; 1 drivers
v0x1770cd0_0 .alias "carryin", 0 0, v0x1771e10_1;
v0x1770d70_0 .alias "carryout", 0 0, v0x1771e10_2;
v0x1770df0_0 .net "sum", 0 0, L_0x1784c00; 1 drivers
S_0x1770280 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x1770190;
 .timescale -9 -12;
L_0x1785460/d .functor XOR 1, L_0x1785bb0, L_0x1785d70, L_0x1784fd0, C4<0>;
L_0x1785460 .delay (30000,30000,30000) L_0x1785460/d;
L_0x1785550/d .functor AND 1, L_0x1785bb0, L_0x1785d70, C4<1>, C4<1>;
L_0x1785550 .delay (20000,20000,20000) L_0x1785550/d;
L_0x1785670/d .functor AND 1, L_0x1785bb0, L_0x1784fd0, C4<1>, C4<1>;
L_0x1785670 .delay (20000,20000,20000) L_0x1785670/d;
L_0x1785730/d .functor AND 1, L_0x1785d70, L_0x1784fd0, C4<1>, C4<1>;
L_0x1785730 .delay (20000,20000,20000) L_0x1785730/d;
L_0x1785820/d .functor OR 1, L_0x1785550, L_0x1785670, L_0x1785730, C4<0>;
L_0x1785820 .delay (20000,20000,20000) L_0x1785820/d;
v0x1770370_0 .net "AandB", 0 0, L_0x1785550; 1 drivers
v0x1770430_0 .net "AandC", 0 0, L_0x1785670; 1 drivers
v0x17704d0_0 .net "BandC", 0 0, L_0x1785730; 1 drivers
v0x1770570_0 .net "a", 0 0, L_0x1785bb0; 1 drivers
v0x17705f0_0 .net "b", 0 0, L_0x1785d70; 1 drivers
v0x1770690_0 .alias "carryin", 0 0, v0x1771e10_2;
v0x1770770_0 .alias "carryout", 0 0, v0x1779b30_4;
v0x17707f0_0 .net "sum", 0 0, L_0x1785460; 1 drivers
S_0x176e380 .scope module, "f45" "CompAdder4bit" 3 64, 3 30, S_0x1750060;
 .timescale -9 -12;
v0x176fcb0_0 .net "a", 3 0, L_0x17886f0; 1 drivers
v0x176fd70_0 .net "b", 3 0, L_0x1788790; 1 drivers
v0x176fe10_0 .alias "carryin", 0 0, v0x1779b30_4;
v0x176feb0_0 .alias "carryout", 0 0, v0x1779b30_5;
v0x176ff80_0 .net8 "sum", 3 0, RS_0x2b5918a9a218; 4 drivers
v0x1770000 .array "temp_cout", 0 2;
v0x1770000_0 .net v0x1770000 0, 0 0, L_0x17864a0; 1 drivers
v0x1770000_1 .net v0x1770000 1, 0 0, L_0x1786d90; 1 drivers
v0x1770000_2 .net v0x1770000 2, 0 0, L_0x1787660; 1 drivers
L_0x17865c0 .part/pv L_0x1785b50, 0, 1, 4;
L_0x1786660 .part L_0x17886f0, 0, 1;
L_0x1786790 .part L_0x1788790, 0, 1;
L_0x1786f00 .part/pv L_0x1786990, 1, 1, 4;
L_0x1786ff0 .part L_0x17886f0, 1, 1;
L_0x1787120 .part L_0x1788790, 1, 1;
L_0x17877f0 .part/pv L_0x1787290, 2, 1, 4;
L_0x1787890 .part L_0x17886f0, 2, 1;
L_0x17879c0 .part L_0x1788790, 2, 1;
L_0x17880b0 .part/pv L_0x1787af0, 3, 1, 4;
L_0x1788240 .part L_0x17886f0, 3, 1;
L_0x1788400 .part L_0x1788790, 3, 1;
S_0x176f6b0 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x176e380;
 .timescale -9 -12;
L_0x1785b50/d .functor XOR 1, L_0x1786660, L_0x1786790, C4<0>, C4<0>;
L_0x1785b50 .delay (30000,30000,30000) L_0x1785b50/d;
L_0x1786270/d .functor AND 1, L_0x1786660, L_0x1786790, C4<1>, C4<1>;
L_0x1786270 .delay (20000,20000,20000) L_0x1786270/d;
L_0x1786340/d .functor AND 1, L_0x1786660, C4<0>, C4<1>, C4<1>;
L_0x1786340 .delay (20000,20000,20000) L_0x1786340/d;
L_0x17863e0/d .functor AND 1, L_0x1786790, C4<0>, C4<1>, C4<1>;
L_0x17863e0 .delay (20000,20000,20000) L_0x17863e0/d;
L_0x17864a0/d .functor OR 1, L_0x1786270, L_0x1786340, L_0x17863e0, C4<0>;
L_0x17864a0 .delay (20000,20000,20000) L_0x17864a0/d;
v0x176f7a0_0 .net "AandB", 0 0, L_0x1786270; 1 drivers
v0x176f860_0 .net "AandC", 0 0, L_0x1786340; 1 drivers
v0x176f900_0 .net "BandC", 0 0, L_0x17863e0; 1 drivers
v0x176f9a0_0 .net "a", 0 0, L_0x1786660; 1 drivers
v0x176fa20_0 .net "b", 0 0, L_0x1786790; 1 drivers
v0x176fac0_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x176fb60_0 .alias "carryout", 0 0, v0x1770000_0;
v0x176fbe0_0 .net "sum", 0 0, L_0x1785b50; 1 drivers
S_0x176f0b0 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x176e380;
 .timescale -9 -12;
L_0x1786990/d .functor XOR 1, L_0x1786ff0, L_0x1787120, L_0x17864a0, C4<0>;
L_0x1786990 .delay (30000,30000,30000) L_0x1786990/d;
L_0x1786b50/d .functor AND 1, L_0x1786ff0, L_0x1787120, C4<1>, C4<1>;
L_0x1786b50 .delay (20000,20000,20000) L_0x1786b50/d;
L_0x1786c20/d .functor AND 1, L_0x1786ff0, L_0x17864a0, C4<1>, C4<1>;
L_0x1786c20 .delay (20000,20000,20000) L_0x1786c20/d;
L_0x1786cc0/d .functor AND 1, L_0x1787120, L_0x17864a0, C4<1>, C4<1>;
L_0x1786cc0 .delay (20000,20000,20000) L_0x1786cc0/d;
L_0x1786d90/d .functor OR 1, L_0x1786b50, L_0x1786c20, L_0x1786cc0, C4<0>;
L_0x1786d90 .delay (20000,20000,20000) L_0x1786d90/d;
v0x176f1a0_0 .net "AandB", 0 0, L_0x1786b50; 1 drivers
v0x176f260_0 .net "AandC", 0 0, L_0x1786c20; 1 drivers
v0x176f300_0 .net "BandC", 0 0, L_0x1786cc0; 1 drivers
v0x176f3a0_0 .net "a", 0 0, L_0x1786ff0; 1 drivers
v0x176f420_0 .net "b", 0 0, L_0x1787120; 1 drivers
v0x176f4c0_0 .alias "carryin", 0 0, v0x1770000_0;
v0x176f560_0 .alias "carryout", 0 0, v0x1770000_1;
v0x176f5e0_0 .net "sum", 0 0, L_0x1786990; 1 drivers
S_0x176eab0 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x176e380;
 .timescale -9 -12;
L_0x1787290/d .functor XOR 1, L_0x1787890, L_0x17879c0, L_0x1786d90, C4<0>;
L_0x1787290 .delay (30000,30000,30000) L_0x1787290/d;
L_0x17873c0/d .functor AND 1, L_0x1787890, L_0x17879c0, C4<1>, C4<1>;
L_0x17873c0 .delay (20000,20000,20000) L_0x17873c0/d;
L_0x1787500/d .functor AND 1, L_0x1787890, L_0x1786d90, C4<1>, C4<1>;
L_0x1787500 .delay (20000,20000,20000) L_0x1787500/d;
L_0x17875a0/d .functor AND 1, L_0x17879c0, L_0x1786d90, C4<1>, C4<1>;
L_0x17875a0 .delay (20000,20000,20000) L_0x17875a0/d;
L_0x1787660/d .functor OR 1, L_0x17873c0, L_0x1787500, L_0x17875a0, C4<0>;
L_0x1787660 .delay (20000,20000,20000) L_0x1787660/d;
v0x176eba0_0 .net "AandB", 0 0, L_0x17873c0; 1 drivers
v0x176ec60_0 .net "AandC", 0 0, L_0x1787500; 1 drivers
v0x176ed00_0 .net "BandC", 0 0, L_0x17875a0; 1 drivers
v0x176eda0_0 .net "a", 0 0, L_0x1787890; 1 drivers
v0x176ee20_0 .net "b", 0 0, L_0x17879c0; 1 drivers
v0x176eec0_0 .alias "carryin", 0 0, v0x1770000_1;
v0x176ef60_0 .alias "carryout", 0 0, v0x1770000_2;
v0x176efe0_0 .net "sum", 0 0, L_0x1787290; 1 drivers
S_0x176e470 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x176e380;
 .timescale -9 -12;
L_0x1787af0/d .functor XOR 1, L_0x1788240, L_0x1788400, L_0x1787660, C4<0>;
L_0x1787af0 .delay (30000,30000,30000) L_0x1787af0/d;
L_0x1787be0/d .functor AND 1, L_0x1788240, L_0x1788400, C4<1>, C4<1>;
L_0x1787be0 .delay (20000,20000,20000) L_0x1787be0/d;
L_0x1787d00/d .functor AND 1, L_0x1788240, L_0x1787660, C4<1>, C4<1>;
L_0x1787d00 .delay (20000,20000,20000) L_0x1787d00/d;
L_0x1787dc0/d .functor AND 1, L_0x1788400, L_0x1787660, C4<1>, C4<1>;
L_0x1787dc0 .delay (20000,20000,20000) L_0x1787dc0/d;
L_0x1787eb0/d .functor OR 1, L_0x1787be0, L_0x1787d00, L_0x1787dc0, C4<0>;
L_0x1787eb0 .delay (20000,20000,20000) L_0x1787eb0/d;
v0x176e560_0 .net "AandB", 0 0, L_0x1787be0; 1 drivers
v0x176e620_0 .net "AandC", 0 0, L_0x1787d00; 1 drivers
v0x176e6c0_0 .net "BandC", 0 0, L_0x1787dc0; 1 drivers
v0x176e760_0 .net "a", 0 0, L_0x1788240; 1 drivers
v0x176e7e0_0 .net "b", 0 0, L_0x1788400; 1 drivers
v0x176e880_0 .alias "carryin", 0 0, v0x1770000_2;
v0x176e960_0 .alias "carryout", 0 0, v0x1779b30_5;
v0x176e9e0_0 .net "sum", 0 0, L_0x1787af0; 1 drivers
S_0x176c540 .scope module, "f46" "CompAdder4bit" 3 65, 3 30, S_0x1750060;
 .timescale -9 -12;
v0x176de70_0 .net "a", 3 0, L_0x178ae30; 1 drivers
v0x176df30_0 .net "b", 3 0, L_0x1788830; 1 drivers
v0x176dfd0_0 .alias "carryin", 0 0, v0x1779b30_5;
v0x176e070_0 .alias "carryout", 0 0, v0x1779b30_6;
v0x176e170_0 .net8 "sum", 3 0, RS_0x2b5918a99c18; 4 drivers
v0x176e1f0 .array "temp_cout", 0 2;
v0x176e1f0_0 .net v0x176e1f0 0, 0 0, L_0x1788ae0; 1 drivers
v0x176e1f0_1 .net v0x176e1f0 1, 0 0, L_0x1789390; 1 drivers
v0x176e1f0_2 .net v0x176e1f0 2, 0 0, L_0x1789cb0; 1 drivers
L_0x1788c00 .part/pv L_0x17881e0, 0, 1, 4;
L_0x1788ca0 .part L_0x178ae30, 0, 1;
L_0x1788dd0 .part L_0x1788830, 0, 1;
L_0x1789550 .part/pv L_0x1788fd0, 1, 1, 4;
L_0x1789640 .part L_0x178ae30, 1, 1;
L_0x1789770 .part L_0x1788830, 1, 1;
L_0x1789e40 .part/pv L_0x17898e0, 2, 1, 4;
L_0x1789ee0 .part L_0x178ae30, 2, 1;
L_0x178a010 .part L_0x1788830, 2, 1;
L_0x178a700 .part/pv L_0x178a140, 3, 1, 4;
L_0x178a890 .part L_0x178ae30, 3, 1;
L_0x178aa50 .part L_0x1788830, 3, 1;
S_0x176d870 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x176c540;
 .timescale -9 -12;
L_0x17881e0/d .functor XOR 1, L_0x1788ca0, L_0x1788dd0, C4<0>, C4<0>;
L_0x17881e0 .delay (30000,30000,30000) L_0x17881e0/d;
L_0x17888d0/d .functor AND 1, L_0x1788ca0, L_0x1788dd0, C4<1>, C4<1>;
L_0x17888d0 .delay (20000,20000,20000) L_0x17888d0/d;
L_0x17889a0/d .functor AND 1, L_0x1788ca0, C4<0>, C4<1>, C4<1>;
L_0x17889a0 .delay (20000,20000,20000) L_0x17889a0/d;
L_0x1788a40/d .functor AND 1, L_0x1788dd0, C4<0>, C4<1>, C4<1>;
L_0x1788a40 .delay (20000,20000,20000) L_0x1788a40/d;
L_0x1788ae0/d .functor OR 1, L_0x17888d0, L_0x17889a0, L_0x1788a40, C4<0>;
L_0x1788ae0 .delay (20000,20000,20000) L_0x1788ae0/d;
v0x176d960_0 .net "AandB", 0 0, L_0x17888d0; 1 drivers
v0x176da20_0 .net "AandC", 0 0, L_0x17889a0; 1 drivers
v0x176dac0_0 .net "BandC", 0 0, L_0x1788a40; 1 drivers
v0x176db60_0 .net "a", 0 0, L_0x1788ca0; 1 drivers
v0x176dbe0_0 .net "b", 0 0, L_0x1788dd0; 1 drivers
v0x176dc80_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x176dd20_0 .alias "carryout", 0 0, v0x176e1f0_0;
v0x176dda0_0 .net "sum", 0 0, L_0x17881e0; 1 drivers
S_0x176d270 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x176c540;
 .timescale -9 -12;
L_0x1788fd0/d .functor XOR 1, L_0x1789640, L_0x1789770, L_0x1788ae0, C4<0>;
L_0x1788fd0 .delay (30000,30000,30000) L_0x1788fd0/d;
L_0x1789150/d .functor AND 1, L_0x1789640, L_0x1789770, C4<1>, C4<1>;
L_0x1789150 .delay (20000,20000,20000) L_0x1789150/d;
L_0x1789220/d .functor AND 1, L_0x1789640, L_0x1788ae0, C4<1>, C4<1>;
L_0x1789220 .delay (20000,20000,20000) L_0x1789220/d;
L_0x17892c0/d .functor AND 1, L_0x1789770, L_0x1788ae0, C4<1>, C4<1>;
L_0x17892c0 .delay (20000,20000,20000) L_0x17892c0/d;
L_0x1789390/d .functor OR 1, L_0x1789150, L_0x1789220, L_0x17892c0, C4<0>;
L_0x1789390 .delay (20000,20000,20000) L_0x1789390/d;
v0x176d360_0 .net "AandB", 0 0, L_0x1789150; 1 drivers
v0x176d420_0 .net "AandC", 0 0, L_0x1789220; 1 drivers
v0x176d4c0_0 .net "BandC", 0 0, L_0x17892c0; 1 drivers
v0x176d560_0 .net "a", 0 0, L_0x1789640; 1 drivers
v0x176d5e0_0 .net "b", 0 0, L_0x1789770; 1 drivers
v0x176d680_0 .alias "carryin", 0 0, v0x176e1f0_0;
v0x176d720_0 .alias "carryout", 0 0, v0x176e1f0_1;
v0x176d7a0_0 .net "sum", 0 0, L_0x1788fd0; 1 drivers
S_0x176cc70 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x176c540;
 .timescale -9 -12;
L_0x17898e0/d .functor XOR 1, L_0x1789ee0, L_0x178a010, L_0x1789390, C4<0>;
L_0x17898e0 .delay (30000,30000,30000) L_0x17898e0/d;
L_0x1789a10/d .functor AND 1, L_0x1789ee0, L_0x178a010, C4<1>, C4<1>;
L_0x1789a10 .delay (20000,20000,20000) L_0x1789a10/d;
L_0x1789b50/d .functor AND 1, L_0x1789ee0, L_0x1789390, C4<1>, C4<1>;
L_0x1789b50 .delay (20000,20000,20000) L_0x1789b50/d;
L_0x1789bf0/d .functor AND 1, L_0x178a010, L_0x1789390, C4<1>, C4<1>;
L_0x1789bf0 .delay (20000,20000,20000) L_0x1789bf0/d;
L_0x1789cb0/d .functor OR 1, L_0x1789a10, L_0x1789b50, L_0x1789bf0, C4<0>;
L_0x1789cb0 .delay (20000,20000,20000) L_0x1789cb0/d;
v0x176cd60_0 .net "AandB", 0 0, L_0x1789a10; 1 drivers
v0x176ce20_0 .net "AandC", 0 0, L_0x1789b50; 1 drivers
v0x176cec0_0 .net "BandC", 0 0, L_0x1789bf0; 1 drivers
v0x176cf60_0 .net "a", 0 0, L_0x1789ee0; 1 drivers
v0x176cfe0_0 .net "b", 0 0, L_0x178a010; 1 drivers
v0x176d080_0 .alias "carryin", 0 0, v0x176e1f0_1;
v0x176d120_0 .alias "carryout", 0 0, v0x176e1f0_2;
v0x176d1a0_0 .net "sum", 0 0, L_0x17898e0; 1 drivers
S_0x176c630 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x176c540;
 .timescale -9 -12;
L_0x178a140/d .functor XOR 1, L_0x178a890, L_0x178aa50, L_0x1789cb0, C4<0>;
L_0x178a140 .delay (30000,30000,30000) L_0x178a140/d;
L_0x178a230/d .functor AND 1, L_0x178a890, L_0x178aa50, C4<1>, C4<1>;
L_0x178a230 .delay (20000,20000,20000) L_0x178a230/d;
L_0x178a350/d .functor AND 1, L_0x178a890, L_0x1789cb0, C4<1>, C4<1>;
L_0x178a350 .delay (20000,20000,20000) L_0x178a350/d;
L_0x178a410/d .functor AND 1, L_0x178aa50, L_0x1789cb0, C4<1>, C4<1>;
L_0x178a410 .delay (20000,20000,20000) L_0x178a410/d;
L_0x178a500/d .functor OR 1, L_0x178a230, L_0x178a350, L_0x178a410, C4<0>;
L_0x178a500 .delay (20000,20000,20000) L_0x178a500/d;
v0x176c720_0 .net "AandB", 0 0, L_0x178a230; 1 drivers
v0x176c7e0_0 .net "AandC", 0 0, L_0x178a350; 1 drivers
v0x176c880_0 .net "BandC", 0 0, L_0x178a410; 1 drivers
v0x176c920_0 .net "a", 0 0, L_0x178a890; 1 drivers
v0x176c9a0_0 .net "b", 0 0, L_0x178aa50; 1 drivers
v0x176ca40_0 .alias "carryin", 0 0, v0x176e1f0_2;
v0x176cb20_0 .alias "carryout", 0 0, v0x1779b30_6;
v0x176cba0_0 .net "sum", 0 0, L_0x178a140; 1 drivers
S_0x173eb90 .scope module, "f47" "CompAdder4bit" 3 66, 3 30, S_0x1750060;
 .timescale -9 -12;
v0x176c070_0 .net "a", 3 0, L_0x178afe0; 1 drivers
v0x176c130_0 .net "b", 3 0, L_0x178d590; 1 drivers
v0x176c1d0_0 .alias "carryin", 0 0, v0x1779b30_6;
v0x176c270_0 .alias "carryout", 0 0, v0x1779d50_0;
v0x176c350_0 .net8 "sum", 3 0, RS_0x2b5918a99618; 4 drivers
v0x176c3d0 .array "temp_cout", 0 2;
v0x176c3d0_0 .net v0x176c3d0 0, 0 0, L_0x178b2a0; 1 drivers
v0x176c3d0_1 .net v0x176c3d0 1, 0 0, L_0x178bb90; 1 drivers
v0x176c3d0_2 .net v0x176c3d0 2, 0 0, L_0x178c460; 1 drivers
L_0x178b3c0 .part/pv L_0x178a830, 0, 1, 4;
L_0x178b460 .part L_0x178afe0, 0, 1;
L_0x178b590 .part L_0x178d590, 0, 1;
L_0x178bd00 .part/pv L_0x178b790, 1, 1, 4;
L_0x178bdf0 .part L_0x178afe0, 1, 1;
L_0x178bf20 .part L_0x178d590, 1, 1;
L_0x178c5f0 .part/pv L_0x178c090, 2, 1, 4;
L_0x178c690 .part L_0x178afe0, 2, 1;
L_0x178c7c0 .part L_0x178d590, 2, 1;
L_0x178ceb0 .part/pv L_0x178c8f0, 3, 1, 4;
L_0x178d040 .part L_0x178afe0, 3, 1;
L_0x178d200 .part L_0x178d590, 3, 1;
S_0x176ba40 .scope module, "fa0" "structuralFullAdder" 3 42, 3 8, S_0x173eb90;
 .timescale -9 -12;
L_0x178a830/d .functor XOR 1, L_0x178b460, L_0x178b590, C4<0>, C4<0>;
L_0x178a830 .delay (30000,30000,30000) L_0x178a830/d;
L_0x17813b0/d .functor AND 1, L_0x178b460, L_0x178b590, C4<1>, C4<1>;
L_0x17813b0 .delay (20000,20000,20000) L_0x17813b0/d;
L_0x178b1a0/d .functor AND 1, L_0x178b460, C4<0>, C4<1>, C4<1>;
L_0x178b1a0 .delay (20000,20000,20000) L_0x178b1a0/d;
L_0x178b200/d .functor AND 1, L_0x178b590, C4<0>, C4<1>, C4<1>;
L_0x178b200 .delay (20000,20000,20000) L_0x178b200/d;
L_0x178b2a0/d .functor OR 1, L_0x17813b0, L_0x178b1a0, L_0x178b200, C4<0>;
L_0x178b2a0 .delay (20000,20000,20000) L_0x178b2a0/d;
v0x176bb30_0 .net "AandB", 0 0, L_0x17813b0; 1 drivers
v0x176bbf0_0 .net "AandC", 0 0, L_0x178b1a0; 1 drivers
v0x176bc90_0 .net "BandC", 0 0, L_0x178b200; 1 drivers
v0x176bd30_0 .net "a", 0 0, L_0x178b460; 1 drivers
v0x176bde0_0 .net "b", 0 0, L_0x178b590; 1 drivers
v0x176be80_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x176bf20_0 .alias "carryout", 0 0, v0x176c3d0_0;
v0x176bfa0_0 .net "sum", 0 0, L_0x178a830; 1 drivers
S_0x176b410 .scope module, "fa1" "structuralFullAdder" 3 43, 3 8, S_0x173eb90;
 .timescale -9 -12;
L_0x178b790/d .functor XOR 1, L_0x178bdf0, L_0x178bf20, L_0x178b2a0, C4<0>;
L_0x178b790 .delay (30000,30000,30000) L_0x178b790/d;
L_0x178b950/d .functor AND 1, L_0x178bdf0, L_0x178bf20, C4<1>, C4<1>;
L_0x178b950 .delay (20000,20000,20000) L_0x178b950/d;
L_0x178ba20/d .functor AND 1, L_0x178bdf0, L_0x178b2a0, C4<1>, C4<1>;
L_0x178ba20 .delay (20000,20000,20000) L_0x178ba20/d;
L_0x178bac0/d .functor AND 1, L_0x178bf20, L_0x178b2a0, C4<1>, C4<1>;
L_0x178bac0 .delay (20000,20000,20000) L_0x178bac0/d;
L_0x178bb90/d .functor OR 1, L_0x178b950, L_0x178ba20, L_0x178bac0, C4<0>;
L_0x178bb90 .delay (20000,20000,20000) L_0x178bb90/d;
v0x176b500_0 .net "AandB", 0 0, L_0x178b950; 1 drivers
v0x176b5c0_0 .net "AandC", 0 0, L_0x178ba20; 1 drivers
v0x176b660_0 .net "BandC", 0 0, L_0x178bac0; 1 drivers
v0x176b700_0 .net "a", 0 0, L_0x178bdf0; 1 drivers
v0x176b7b0_0 .net "b", 0 0, L_0x178bf20; 1 drivers
v0x176b850_0 .alias "carryin", 0 0, v0x176c3d0_0;
v0x176b8f0_0 .alias "carryout", 0 0, v0x176c3d0_1;
v0x176b970_0 .net "sum", 0 0, L_0x178b790; 1 drivers
S_0x176ae10 .scope module, "fa2" "structuralFullAdder" 3 44, 3 8, S_0x173eb90;
 .timescale -9 -12;
L_0x178c090/d .functor XOR 1, L_0x178c690, L_0x178c7c0, L_0x178bb90, C4<0>;
L_0x178c090 .delay (30000,30000,30000) L_0x178c090/d;
L_0x178c1c0/d .functor AND 1, L_0x178c690, L_0x178c7c0, C4<1>, C4<1>;
L_0x178c1c0 .delay (20000,20000,20000) L_0x178c1c0/d;
L_0x178c300/d .functor AND 1, L_0x178c690, L_0x178bb90, C4<1>, C4<1>;
L_0x178c300 .delay (20000,20000,20000) L_0x178c300/d;
L_0x178c3a0/d .functor AND 1, L_0x178c7c0, L_0x178bb90, C4<1>, C4<1>;
L_0x178c3a0 .delay (20000,20000,20000) L_0x178c3a0/d;
L_0x178c460/d .functor OR 1, L_0x178c1c0, L_0x178c300, L_0x178c3a0, C4<0>;
L_0x178c460 .delay (20000,20000,20000) L_0x178c460/d;
v0x176af00_0 .net "AandB", 0 0, L_0x178c1c0; 1 drivers
v0x176afc0_0 .net "AandC", 0 0, L_0x178c300; 1 drivers
v0x176b060_0 .net "BandC", 0 0, L_0x178c3a0; 1 drivers
v0x176b100_0 .net "a", 0 0, L_0x178c690; 1 drivers
v0x176b180_0 .net "b", 0 0, L_0x178c7c0; 1 drivers
v0x176b220_0 .alias "carryin", 0 0, v0x176c3d0_1;
v0x176b2c0_0 .alias "carryout", 0 0, v0x176c3d0_2;
v0x176b340_0 .net "sum", 0 0, L_0x178c090; 1 drivers
S_0x1739000 .scope module, "fa3" "structuralFullAdder" 3 45, 3 8, S_0x173eb90;
 .timescale -9 -12;
L_0x178c8f0/d .functor XOR 1, L_0x178d040, L_0x178d200, L_0x178c460, C4<0>;
L_0x178c8f0 .delay (30000,30000,30000) L_0x178c8f0/d;
L_0x178c9e0/d .functor AND 1, L_0x178d040, L_0x178d200, C4<1>, C4<1>;
L_0x178c9e0 .delay (20000,20000,20000) L_0x178c9e0/d;
L_0x178cb00/d .functor AND 1, L_0x178d040, L_0x178c460, C4<1>, C4<1>;
L_0x178cb00 .delay (20000,20000,20000) L_0x178cb00/d;
L_0x178cbc0/d .functor AND 1, L_0x178d200, L_0x178c460, C4<1>, C4<1>;
L_0x178cbc0 .delay (20000,20000,20000) L_0x178cbc0/d;
L_0x178ccb0/d .functor OR 1, L_0x178c9e0, L_0x178cb00, L_0x178cbc0, C4<0>;
L_0x178ccb0 .delay (20000,20000,20000) L_0x178ccb0/d;
v0x1728ff0_0 .net "AandB", 0 0, L_0x178c9e0; 1 drivers
v0x176a910_0 .net "AandC", 0 0, L_0x178cb00; 1 drivers
v0x176a9b0_0 .net "BandC", 0 0, L_0x178cbc0; 1 drivers
v0x176aa50_0 .net "a", 0 0, L_0x178d040; 1 drivers
v0x176ab00_0 .net "b", 0 0, L_0x178d200; 1 drivers
v0x176aba0_0 .alias "carryin", 0 0, v0x176c3d0_2;
v0x176ac80_0 .alias "carryout", 0 0, v0x1779d50_0;
v0x176ad20_0 .net "sum", 0 0, L_0x178c8f0; 1 drivers
    .scope S_0x172e0e0;
T_0 ;
    %vpi_call 2 42 "$display", "  a      b   |overflow carryout   sum ";
    %set/v v0x1779c30_0, 0, 32;
    %set/v v0x1779cd0_0, 0, 32;
    %delay 1000000, 0;
    %vpi_call 2 44 "$display", "a and b = 0  |   %b        %b       %b", v0x1779dd0_0, v0x1779d50_0, v0x1779e50_0;
    %movi 8, 15, 32;
    %set/v v0x1779c30_0, 8, 32;
    %movi 8, 15, 32;
    %set/v v0x1779cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 46 "$display", "a and b = -1 |   %b        %b       %b", v0x1779dd0_0, v0x1779d50_0, v0x1779e50_0;
    %movi 8, 3, 32;
    %set/v v0x1779c30_0, 8, 32;
    %movi 8, 3, 32;
    %set/v v0x1779cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 48 "$display", "a and b =3   |   %b        %b       %b", v0x1779dd0_0, v0x1779d50_0, v0x1779e50_0;
    %movi 8, 9, 32;
    %set/v v0x1779c30_0, 8, 32;
    %movi 8, 15, 32;
    %set/v v0x1779cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 50 "$display", "a = -7, b=-1 |   %b        %b       %b", v0x1779dd0_0, v0x1779d50_0, v0x1779e50_0;
    %movi 8, 7, 32;
    %set/v v0x1779c30_0, 8, 32;
    %movi 8, 7, 32;
    %set/v v0x1779cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 52 "$display", "a and b = 7  |   %b        %b       %b", v0x1779dd0_0, v0x1779d50_0, v0x1779e50_0;
    %movi 8, 9, 32;
    %set/v v0x1779c30_0, 8, 32;
    %movi 8, 9, 32;
    %set/v v0x1779cd0_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 2 54 "$display", "a and b = -7 |   %b        %b       %b", v0x1779dd0_0, v0x1779d50_0, v0x1779e50_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "math.t.v";
    "./math.v";
