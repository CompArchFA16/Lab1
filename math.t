#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1f78c70 .scope module, "FullSubtractor32bit" "FullSubtractor32bit" 2 71;
 .timescale -9 -12;
L_0x1fbc8e0/d .functor XOR 1, L_0x1fbc5f0, L_0x1fba040, C4<0>, C4<0>;
L_0x1fbc8e0 .delay (30000,30000,30000) L_0x1fbc8e0/d;
v0x1f99de0_0 .net "a", 31 0, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; 0 drivers
v0x1f99ea0_0 .net "b", 31 0, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; 0 drivers
v0x1f99f40_0 .net "carryout", 0 0, L_0x1fbc5f0; 1 drivers
v0x1f9a010_0 .net "overflow", 0 0, L_0x1fbc8e0; 1 drivers
RS_0x2b15dfb9df58/0/0 .resolv tri, L_0x1fac2f0, L_0x1fae940, L_0x1fb0f60, L_0x1fb3510;
RS_0x2b15dfb9df58/0/4 .resolv tri, L_0x1fb5b90, L_0x1fb8140, L_0x1fba780, L_0x1fbcd30;
RS_0x2b15dfb9df58 .resolv tri, RS_0x2b15dfb9df58/0/0, RS_0x2b15dfb9df58/0/4, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>;
v0x1f9a090_0 .net8 "sum", 31 0, RS_0x2b15dfb9df58; 8 drivers
v0x1f9a130 .array "temp_cout", 0 6;
v0x1f9a130_0 .net v0x1f9a130 0, 0 0, L_0x1fabbb0; 1 drivers
v0x1f9a130_1 .net v0x1f9a130 1, 0 0, L_0x1fae200; 1 drivers
v0x1f9a130_2 .net v0x1f9a130 2, 0 0, L_0x1fb0820; 1 drivers
v0x1f9a130_3 .net v0x1f9a130 3, 0 0, L_0x1fb2dd0; 1 drivers
v0x1f9a130_4 .net v0x1f9a130 4, 0 0, L_0x1fb5450; 1 drivers
v0x1f9a130_5 .net v0x1f9a130 5, 0 0, L_0x1fb7a70; 1 drivers
v0x1f9a130_6 .net v0x1f9a130 6, 0 0, L_0x1fba040; 1 drivers
RS_0x2b15dfb9de98 .resolv tri, L_0x1faa3f0, L_0x1faac60, L_0x1fab530, L_0x1fabd70;
L_0x1fac2f0 .part/pv RS_0x2b15dfb9de98, 0, 4, 32;
L_0x1fac390 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 0, 4;
L_0x1fac430 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 0, 4;
RS_0x2b15dfb9d8c8 .resolv tri, L_0x1fac9b0, L_0x1fad270, L_0x1fadb40, L_0x1fae3c0;
L_0x1fae940 .part/pv RS_0x2b15dfb9d8c8, 4, 4, 32;
L_0x1fae9e0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 4, 4;
L_0x1faea80 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 4, 4;
RS_0x2b15dfb9d2f8 .resolv tri, L_0x1faefb0, L_0x1faf870, L_0x1fb0160, L_0x1fb09e0;
L_0x1fb0f60 .part/pv RS_0x2b15dfb9d2f8, 8, 4, 32;
L_0x1fb1000 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 8, 4;
L_0x1fb10a0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 8, 4;
RS_0x2b15dfb9cd28 .resolv tri, L_0x1fb1580, L_0x1fb1e40, L_0x1fb2710, L_0x1fb2f90;
L_0x1fb3510 .part/pv RS_0x2b15dfb9cd28, 12, 4, 32;
L_0x1fb3640 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 12, 4;
L_0x1fb3770 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 12, 4;
RS_0x2b15dfb9c758 .resolv tri, L_0x1fb3d40, L_0x1fb4510, L_0x1fb4d90, L_0x1fb5610;
L_0x1fb5b90 .part/pv RS_0x2b15dfb9c758, 16, 4, 32;
L_0x1fb5c30 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 16, 4;
L_0x1fb5d50 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 16, 4;
RS_0x2b15dfb9c188 .resolv tri, L_0x1fb6220, L_0x1fb6ae0, L_0x1fb73b0, L_0x1fb7c30;
L_0x1fb8140 .part/pv RS_0x2b15dfb9c188, 20, 4, 32;
L_0x1fb8270 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 20, 4;
L_0x1fb8310 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 20, 4;
RS_0x2b15dfb9bbb8 .resolv tri, L_0x1fb87f0, L_0x1fb90b0, L_0x1fb9980, L_0x1fba200;
L_0x1fba780 .part/pv RS_0x2b15dfb9bbb8, 24, 4, 32;
L_0x1fba820 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 24, 4;
L_0x1fb83b0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 24, 4;
RS_0x2b15dfb9b5e8 .resolv tri, L_0x1fbada0, L_0x1fbb660, L_0x1fbbf30, L_0x1fbc7b0;
L_0x1fbcd30 .part/pv RS_0x2b15dfb9b5e8, 28, 4, 32;
L_0x1fba8c0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 28, 4;
L_0x1fbd0b0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 28, 4;
S_0x1f97ff0 .scope module, "f40" "CompAdder4bit" 2 81, 2 31, S_0x1f78c70;
 .timescale -9 -12;
v0x1f99990_0 .net "a", 3 0, L_0x1fac390; 1 drivers
v0x1f99a50_0 .net "b", 3 0, L_0x1fac430; 1 drivers
v0x1f99af0_0 .net "carryin", 0 0, C4<1>; 1 drivers
v0x1f99b70_0 .alias "carryout", 0 0, v0x1f9a130_0;
v0x1f99bf0_0 .net8 "sum", 3 0, RS_0x2b15dfb9de98; 4 drivers
v0x1f99c70 .array "temp_cout", 0 2;
v0x1f99c70_0 .net v0x1f99c70 0, 0 0, L_0x1faa320; 1 drivers
v0x1f99c70_1 .net v0x1f99c70 1, 0 0, L_0x1faaaf0; 1 drivers
v0x1f99c70_2 .net v0x1f99c70 2, 0 0, L_0x1fab3a0; 1 drivers
L_0x1faa3f0 .part/pv L_0x1fa9f20, 0, 1, 4;
L_0x1faa490 .part L_0x1fac390, 0, 1;
L_0x1faa5c0 .part L_0x1fac430, 0, 1;
L_0x1faac60 .part/pv L_0x1faa6f0, 1, 1, 4;
L_0x1faad50 .part L_0x1fac390, 1, 1;
L_0x1faae80 .part L_0x1fac430, 1, 1;
L_0x1fab530 .part/pv L_0x1faaff0, 2, 1, 4;
L_0x1fab5d0 .part L_0x1fac390, 2, 1;
L_0x1fab700 .part L_0x1fac430, 2, 1;
L_0x1fabd70 .part/pv L_0x1fab830, 3, 1, 4;
L_0x1fabf00 .part L_0x1fac390, 3, 1;
L_0x1fac0c0 .part L_0x1fac430, 3, 1;
S_0x1f99390 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f97ff0;
 .timescale -9 -12;
L_0x1fa9f20/d .functor XOR 1, L_0x1faa490, L_0x1faa5c0, C4<1>, C4<0>;
L_0x1fa9f20 .delay (30000,30000,30000) L_0x1fa9f20/d;
L_0x1faa080/d .functor AND 1, L_0x1faa490, L_0x1faa5c0, C4<1>, C4<1>;
L_0x1faa080 .delay (20000,20000,20000) L_0x1faa080/d;
L_0x1faa120/d .functor AND 1, L_0x1faa490, C4<1>, C4<1>, C4<1>;
L_0x1faa120 .delay (20000,20000,20000) L_0x1faa120/d;
L_0x1faa1c0/d .functor AND 1, L_0x1faa5c0, C4<1>, C4<1>, C4<1>;
L_0x1faa1c0 .delay (20000,20000,20000) L_0x1faa1c0/d;
L_0x1faa320/d .functor OR 1, L_0x1faa080, L_0x1faa120, L_0x1faa1c0, C4<0>;
L_0x1faa320 .delay (20000,20000,20000) L_0x1faa320/d;
v0x1f99480_0 .net "AandB", 0 0, L_0x1faa080; 1 drivers
v0x1f99540_0 .net "AandC", 0 0, L_0x1faa120; 1 drivers
v0x1f995e0_0 .net "BandC", 0 0, L_0x1faa1c0; 1 drivers
v0x1f99680_0 .net "a", 0 0, L_0x1faa490; 1 drivers
v0x1f99700_0 .net "b", 0 0, L_0x1faa5c0; 1 drivers
v0x1f997a0_0 .alias "carryin", 0 0, v0x1f99af0_0;
v0x1f99840_0 .alias "carryout", 0 0, v0x1f99c70_0;
v0x1f998c0_0 .net "sum", 0 0, L_0x1fa9f20; 1 drivers
S_0x1f98d90 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f97ff0;
 .timescale -9 -12;
L_0x1faa6f0/d .functor XOR 1, L_0x1faad50, L_0x1faae80, L_0x1faa320, C4<0>;
L_0x1faa6f0 .delay (30000,30000,30000) L_0x1faa6f0/d;
L_0x1faa8b0/d .functor AND 1, L_0x1faad50, L_0x1faae80, C4<1>, C4<1>;
L_0x1faa8b0 .delay (20000,20000,20000) L_0x1faa8b0/d;
L_0x1faa980/d .functor AND 1, L_0x1faad50, L_0x1faa320, C4<1>, C4<1>;
L_0x1faa980 .delay (20000,20000,20000) L_0x1faa980/d;
L_0x1faaa20/d .functor AND 1, L_0x1faae80, L_0x1faa320, C4<1>, C4<1>;
L_0x1faaa20 .delay (20000,20000,20000) L_0x1faaa20/d;
L_0x1faaaf0/d .functor OR 1, L_0x1faa8b0, L_0x1faa980, L_0x1faaa20, C4<0>;
L_0x1faaaf0 .delay (20000,20000,20000) L_0x1faaaf0/d;
v0x1f98e80_0 .net "AandB", 0 0, L_0x1faa8b0; 1 drivers
v0x1f98f40_0 .net "AandC", 0 0, L_0x1faa980; 1 drivers
v0x1f98fe0_0 .net "BandC", 0 0, L_0x1faaa20; 1 drivers
v0x1f99080_0 .net "a", 0 0, L_0x1faad50; 1 drivers
v0x1f99100_0 .net "b", 0 0, L_0x1faae80; 1 drivers
v0x1f991a0_0 .alias "carryin", 0 0, v0x1f99c70_0;
v0x1f99240_0 .alias "carryout", 0 0, v0x1f99c70_1;
v0x1f992c0_0 .net "sum", 0 0, L_0x1faa6f0; 1 drivers
S_0x1f98790 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f97ff0;
 .timescale -9 -12;
L_0x1faaff0/d .functor XOR 1, L_0x1fab5d0, L_0x1fab700, L_0x1faaaf0, C4<0>;
L_0x1faaff0 .delay (30000,30000,30000) L_0x1faaff0/d;
L_0x1fab120/d .functor AND 1, L_0x1fab5d0, L_0x1fab700, C4<1>, C4<1>;
L_0x1fab120 .delay (20000,20000,20000) L_0x1fab120/d;
L_0x1fab260/d .functor AND 1, L_0x1fab5d0, L_0x1faaaf0, C4<1>, C4<1>;
L_0x1fab260 .delay (20000,20000,20000) L_0x1fab260/d;
L_0x1fab300/d .functor AND 1, L_0x1fab700, L_0x1faaaf0, C4<1>, C4<1>;
L_0x1fab300 .delay (20000,20000,20000) L_0x1fab300/d;
L_0x1fab3a0/d .functor OR 1, L_0x1fab120, L_0x1fab260, L_0x1fab300, C4<0>;
L_0x1fab3a0 .delay (20000,20000,20000) L_0x1fab3a0/d;
v0x1f98880_0 .net "AandB", 0 0, L_0x1fab120; 1 drivers
v0x1f98940_0 .net "AandC", 0 0, L_0x1fab260; 1 drivers
v0x1f989e0_0 .net "BandC", 0 0, L_0x1fab300; 1 drivers
v0x1f98a80_0 .net "a", 0 0, L_0x1fab5d0; 1 drivers
v0x1f98b00_0 .net "b", 0 0, L_0x1fab700; 1 drivers
v0x1f98ba0_0 .alias "carryin", 0 0, v0x1f99c70_1;
v0x1f98c40_0 .alias "carryout", 0 0, v0x1f99c70_2;
v0x1f98cc0_0 .net "sum", 0 0, L_0x1faaff0; 1 drivers
S_0x1f980e0 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f97ff0;
 .timescale -9 -12;
L_0x1fab830/d .functor XOR 1, L_0x1fabf00, L_0x1fac0c0, L_0x1fab3a0, C4<0>;
L_0x1fab830 .delay (30000,30000,30000) L_0x1fab830/d;
L_0x1fab920/d .functor AND 1, L_0x1fabf00, L_0x1fac0c0, C4<1>, C4<1>;
L_0x1fab920 .delay (20000,20000,20000) L_0x1fab920/d;
L_0x1faba40/d .functor AND 1, L_0x1fabf00, L_0x1fab3a0, C4<1>, C4<1>;
L_0x1faba40 .delay (20000,20000,20000) L_0x1faba40/d;
L_0x1fabae0/d .functor AND 1, L_0x1fac0c0, L_0x1fab3a0, C4<1>, C4<1>;
L_0x1fabae0 .delay (20000,20000,20000) L_0x1fabae0/d;
L_0x1fabbb0/d .functor OR 1, L_0x1fab920, L_0x1faba40, L_0x1fabae0, C4<0>;
L_0x1fabbb0 .delay (20000,20000,20000) L_0x1fabbb0/d;
v0x1f981d0_0 .net "AandB", 0 0, L_0x1fab920; 1 drivers
v0x1f98290_0 .net "AandC", 0 0, L_0x1faba40; 1 drivers
v0x1f98330_0 .net "BandC", 0 0, L_0x1fabae0; 1 drivers
v0x1f983d0_0 .net "a", 0 0, L_0x1fabf00; 1 drivers
v0x1f98450_0 .net "b", 0 0, L_0x1fac0c0; 1 drivers
v0x1f984f0_0 .alias "carryin", 0 0, v0x1f99c70_2;
v0x1f985d0_0 .alias "carryout", 0 0, v0x1f9a130_0;
v0x1f986a0_0 .net "sum", 0 0, L_0x1fab830; 1 drivers
S_0x1f96200 .scope module, "f41" "CompAdder4bit" 2 82, 2 31, S_0x1f78c70;
 .timescale -9 -12;
v0x1f97ba0_0 .net "a", 3 0, L_0x1fae9e0; 1 drivers
v0x1f97c60_0 .net "b", 3 0, L_0x1faea80; 1 drivers
v0x1f97d00_0 .alias "carryin", 0 0, v0x1f9a130_0;
v0x1f97d80_0 .alias "carryout", 0 0, v0x1f9a130_1;
v0x1f97e00_0 .net8 "sum", 3 0, RS_0x2b15dfb9d8c8; 4 drivers
v0x1f97e80 .array "temp_cout", 0 2;
v0x1f97e80_0 .net v0x1f97e80 0, 0 0, L_0x1fac8e0; 1 drivers
v0x1f97e80_1 .net v0x1f97e80 1, 0 0, L_0x1fad0b0; 1 drivers
v0x1f97e80_2 .net v0x1f97e80 2, 0 0, L_0x1fad9b0; 1 drivers
L_0x1fac9b0 .part/pv L_0x1fabea0, 0, 1, 4;
L_0x1faca50 .part L_0x1fae9e0, 0, 1;
L_0x1facb80 .part L_0x1faea80, 0, 1;
L_0x1fad270 .part/pv L_0x1faccb0, 1, 1, 4;
L_0x1fad360 .part L_0x1fae9e0, 1, 1;
L_0x1fad490 .part L_0x1faea80, 1, 1;
L_0x1fadb40 .part/pv L_0x1fad600, 2, 1, 4;
L_0x1fadbe0 .part L_0x1fae9e0, 2, 1;
L_0x1fadd10 .part L_0x1faea80, 2, 1;
L_0x1fae3c0 .part/pv L_0x1fade40, 3, 1, 4;
L_0x1fae550 .part L_0x1fae9e0, 3, 1;
L_0x1fae710 .part L_0x1faea80, 3, 1;
S_0x1f975a0 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f96200;
 .timescale -9 -12;
L_0x1fabea0/d .functor XOR 1, L_0x1faca50, L_0x1facb80, L_0x1fabbb0, C4<0>;
L_0x1fabea0 .delay (30000,30000,30000) L_0x1fabea0/d;
L_0x1fac5e0/d .functor AND 1, L_0x1faca50, L_0x1facb80, C4<1>, C4<1>;
L_0x1fac5e0 .delay (20000,20000,20000) L_0x1fac5e0/d;
L_0x1fac6b0/d .functor AND 1, L_0x1faca50, L_0x1fabbb0, C4<1>, C4<1>;
L_0x1fac6b0 .delay (20000,20000,20000) L_0x1fac6b0/d;
L_0x1fac750/d .functor AND 1, L_0x1facb80, L_0x1fabbb0, C4<1>, C4<1>;
L_0x1fac750 .delay (20000,20000,20000) L_0x1fac750/d;
L_0x1fac8e0/d .functor OR 1, L_0x1fac5e0, L_0x1fac6b0, L_0x1fac750, C4<0>;
L_0x1fac8e0 .delay (20000,20000,20000) L_0x1fac8e0/d;
v0x1f97690_0 .net "AandB", 0 0, L_0x1fac5e0; 1 drivers
v0x1f97750_0 .net "AandC", 0 0, L_0x1fac6b0; 1 drivers
v0x1f977f0_0 .net "BandC", 0 0, L_0x1fac750; 1 drivers
v0x1f97890_0 .net "a", 0 0, L_0x1faca50; 1 drivers
v0x1f97910_0 .net "b", 0 0, L_0x1facb80; 1 drivers
v0x1f979b0_0 .alias "carryin", 0 0, v0x1f9a130_0;
v0x1f97a50_0 .alias "carryout", 0 0, v0x1f97e80_0;
v0x1f97ad0_0 .net "sum", 0 0, L_0x1fabea0; 1 drivers
S_0x1f96fa0 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f96200;
 .timescale -9 -12;
L_0x1faccb0/d .functor XOR 1, L_0x1fad360, L_0x1fad490, L_0x1fac8e0, C4<0>;
L_0x1faccb0 .delay (30000,30000,30000) L_0x1faccb0/d;
L_0x1face70/d .functor AND 1, L_0x1fad360, L_0x1fad490, C4<1>, C4<1>;
L_0x1face70 .delay (20000,20000,20000) L_0x1face70/d;
L_0x1facf40/d .functor AND 1, L_0x1fad360, L_0x1fac8e0, C4<1>, C4<1>;
L_0x1facf40 .delay (20000,20000,20000) L_0x1facf40/d;
L_0x1facfe0/d .functor AND 1, L_0x1fad490, L_0x1fac8e0, C4<1>, C4<1>;
L_0x1facfe0 .delay (20000,20000,20000) L_0x1facfe0/d;
L_0x1fad0b0/d .functor OR 1, L_0x1face70, L_0x1facf40, L_0x1facfe0, C4<0>;
L_0x1fad0b0 .delay (20000,20000,20000) L_0x1fad0b0/d;
v0x1f97090_0 .net "AandB", 0 0, L_0x1face70; 1 drivers
v0x1f97150_0 .net "AandC", 0 0, L_0x1facf40; 1 drivers
v0x1f971f0_0 .net "BandC", 0 0, L_0x1facfe0; 1 drivers
v0x1f97290_0 .net "a", 0 0, L_0x1fad360; 1 drivers
v0x1f97310_0 .net "b", 0 0, L_0x1fad490; 1 drivers
v0x1f973b0_0 .alias "carryin", 0 0, v0x1f97e80_0;
v0x1f97450_0 .alias "carryout", 0 0, v0x1f97e80_1;
v0x1f974d0_0 .net "sum", 0 0, L_0x1faccb0; 1 drivers
S_0x1f969a0 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f96200;
 .timescale -9 -12;
L_0x1fad600/d .functor XOR 1, L_0x1fadbe0, L_0x1fadd10, L_0x1fad0b0, C4<0>;
L_0x1fad600 .delay (30000,30000,30000) L_0x1fad600/d;
L_0x1fad730/d .functor AND 1, L_0x1fadbe0, L_0x1fadd10, C4<1>, C4<1>;
L_0x1fad730 .delay (20000,20000,20000) L_0x1fad730/d;
L_0x1fad870/d .functor AND 1, L_0x1fadbe0, L_0x1fad0b0, C4<1>, C4<1>;
L_0x1fad870 .delay (20000,20000,20000) L_0x1fad870/d;
L_0x1fad910/d .functor AND 1, L_0x1fadd10, L_0x1fad0b0, C4<1>, C4<1>;
L_0x1fad910 .delay (20000,20000,20000) L_0x1fad910/d;
L_0x1fad9b0/d .functor OR 1, L_0x1fad730, L_0x1fad870, L_0x1fad910, C4<0>;
L_0x1fad9b0 .delay (20000,20000,20000) L_0x1fad9b0/d;
v0x1f96a90_0 .net "AandB", 0 0, L_0x1fad730; 1 drivers
v0x1f96b50_0 .net "AandC", 0 0, L_0x1fad870; 1 drivers
v0x1f96bf0_0 .net "BandC", 0 0, L_0x1fad910; 1 drivers
v0x1f96c90_0 .net "a", 0 0, L_0x1fadbe0; 1 drivers
v0x1f96d10_0 .net "b", 0 0, L_0x1fadd10; 1 drivers
v0x1f96db0_0 .alias "carryin", 0 0, v0x1f97e80_1;
v0x1f96e50_0 .alias "carryout", 0 0, v0x1f97e80_2;
v0x1f96ed0_0 .net "sum", 0 0, L_0x1fad600; 1 drivers
S_0x1f962f0 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f96200;
 .timescale -9 -12;
L_0x1fade40/d .functor XOR 1, L_0x1fae550, L_0x1fae710, L_0x1fad9b0, C4<0>;
L_0x1fade40 .delay (30000,30000,30000) L_0x1fade40/d;
L_0x1fadf30/d .functor AND 1, L_0x1fae550, L_0x1fae710, C4<1>, C4<1>;
L_0x1fadf30 .delay (20000,20000,20000) L_0x1fadf30/d;
L_0x1fae050/d .functor AND 1, L_0x1fae550, L_0x1fad9b0, C4<1>, C4<1>;
L_0x1fae050 .delay (20000,20000,20000) L_0x1fae050/d;
L_0x1fae110/d .functor AND 1, L_0x1fae710, L_0x1fad9b0, C4<1>, C4<1>;
L_0x1fae110 .delay (20000,20000,20000) L_0x1fae110/d;
L_0x1fae200/d .functor OR 1, L_0x1fadf30, L_0x1fae050, L_0x1fae110, C4<0>;
L_0x1fae200 .delay (20000,20000,20000) L_0x1fae200/d;
v0x1f963e0_0 .net "AandB", 0 0, L_0x1fadf30; 1 drivers
v0x1f964a0_0 .net "AandC", 0 0, L_0x1fae050; 1 drivers
v0x1f96540_0 .net "BandC", 0 0, L_0x1fae110; 1 drivers
v0x1f965e0_0 .net "a", 0 0, L_0x1fae550; 1 drivers
v0x1f96660_0 .net "b", 0 0, L_0x1fae710; 1 drivers
v0x1f96700_0 .alias "carryin", 0 0, v0x1f97e80_2;
v0x1f967e0_0 .alias "carryout", 0 0, v0x1f9a130_1;
v0x1f968b0_0 .net "sum", 0 0, L_0x1fade40; 1 drivers
S_0x1f94410 .scope module, "f42" "CompAdder4bit" 2 83, 2 31, S_0x1f78c70;
 .timescale -9 -12;
v0x1f95db0_0 .net "a", 3 0, L_0x1fb1000; 1 drivers
v0x1f95e70_0 .net "b", 3 0, L_0x1fb10a0; 1 drivers
v0x1f95f10_0 .alias "carryin", 0 0, v0x1f9a130_1;
v0x1f95f90_0 .alias "carryout", 0 0, v0x1f9a130_2;
v0x1f96010_0 .net8 "sum", 3 0, RS_0x2b15dfb9d2f8; 4 drivers
v0x1f96090 .array "temp_cout", 0 2;
v0x1f96090_0 .net v0x1f96090 0, 0 0, L_0x1faee70; 1 drivers
v0x1f96090_1 .net v0x1f96090 1, 0 0, L_0x1faf6b0; 1 drivers
v0x1f96090_2 .net v0x1f96090 2, 0 0, L_0x1faffd0; 1 drivers
L_0x1faefb0 .part/pv L_0x1fae4f0, 0, 1, 4;
L_0x1faf050 .part L_0x1fb1000, 0, 1;
L_0x1faf180 .part L_0x1fb10a0, 0, 1;
L_0x1faf870 .part/pv L_0x1faf2b0, 1, 1, 4;
L_0x1faf960 .part L_0x1fb1000, 1, 1;
L_0x1fafa90 .part L_0x1fb10a0, 1, 1;
L_0x1fb0160 .part/pv L_0x1fafc00, 2, 1, 4;
L_0x1fb0200 .part L_0x1fb1000, 2, 1;
L_0x1fb0330 .part L_0x1fb10a0, 2, 1;
L_0x1fb09e0 .part/pv L_0x1fb0460, 3, 1, 4;
L_0x1fb0b70 .part L_0x1fb1000, 3, 1;
L_0x1fb0d30 .part L_0x1fb10a0, 3, 1;
S_0x1f957b0 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f94410;
 .timescale -9 -12;
L_0x1fae4f0/d .functor XOR 1, L_0x1faf050, L_0x1faf180, L_0x1fae200, C4<0>;
L_0x1fae4f0 .delay (30000,30000,30000) L_0x1fae4f0/d;
L_0x1faeba0/d .functor AND 1, L_0x1faf050, L_0x1faf180, C4<1>, C4<1>;
L_0x1faeba0 .delay (20000,20000,20000) L_0x1faeba0/d;
L_0x1faec40/d .functor AND 1, L_0x1faf050, L_0x1fae200, C4<1>, C4<1>;
L_0x1faec40 .delay (20000,20000,20000) L_0x1faec40/d;
L_0x1faece0/d .functor AND 1, L_0x1faf180, L_0x1fae200, C4<1>, C4<1>;
L_0x1faece0 .delay (20000,20000,20000) L_0x1faece0/d;
L_0x1faee70/d .functor OR 1, L_0x1faeba0, L_0x1faec40, L_0x1faece0, C4<0>;
L_0x1faee70 .delay (20000,20000,20000) L_0x1faee70/d;
v0x1f958a0_0 .net "AandB", 0 0, L_0x1faeba0; 1 drivers
v0x1f95960_0 .net "AandC", 0 0, L_0x1faec40; 1 drivers
v0x1f95a00_0 .net "BandC", 0 0, L_0x1faece0; 1 drivers
v0x1f95aa0_0 .net "a", 0 0, L_0x1faf050; 1 drivers
v0x1f95b20_0 .net "b", 0 0, L_0x1faf180; 1 drivers
v0x1f95bc0_0 .alias "carryin", 0 0, v0x1f9a130_1;
v0x1f95c60_0 .alias "carryout", 0 0, v0x1f96090_0;
v0x1f95ce0_0 .net "sum", 0 0, L_0x1fae4f0; 1 drivers
S_0x1f951b0 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f94410;
 .timescale -9 -12;
L_0x1faf2b0/d .functor XOR 1, L_0x1faf960, L_0x1fafa90, L_0x1faee70, C4<0>;
L_0x1faf2b0 .delay (30000,30000,30000) L_0x1faf2b0/d;
L_0x1faf470/d .functor AND 1, L_0x1faf960, L_0x1fafa90, C4<1>, C4<1>;
L_0x1faf470 .delay (20000,20000,20000) L_0x1faf470/d;
L_0x1faf540/d .functor AND 1, L_0x1faf960, L_0x1faee70, C4<1>, C4<1>;
L_0x1faf540 .delay (20000,20000,20000) L_0x1faf540/d;
L_0x1faf5e0/d .functor AND 1, L_0x1fafa90, L_0x1faee70, C4<1>, C4<1>;
L_0x1faf5e0 .delay (20000,20000,20000) L_0x1faf5e0/d;
L_0x1faf6b0/d .functor OR 1, L_0x1faf470, L_0x1faf540, L_0x1faf5e0, C4<0>;
L_0x1faf6b0 .delay (20000,20000,20000) L_0x1faf6b0/d;
v0x1f952a0_0 .net "AandB", 0 0, L_0x1faf470; 1 drivers
v0x1f95360_0 .net "AandC", 0 0, L_0x1faf540; 1 drivers
v0x1f95400_0 .net "BandC", 0 0, L_0x1faf5e0; 1 drivers
v0x1f954a0_0 .net "a", 0 0, L_0x1faf960; 1 drivers
v0x1f95520_0 .net "b", 0 0, L_0x1fafa90; 1 drivers
v0x1f955c0_0 .alias "carryin", 0 0, v0x1f96090_0;
v0x1f95660_0 .alias "carryout", 0 0, v0x1f96090_1;
v0x1f956e0_0 .net "sum", 0 0, L_0x1faf2b0; 1 drivers
S_0x1f94bb0 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f94410;
 .timescale -9 -12;
L_0x1fafc00/d .functor XOR 1, L_0x1fb0200, L_0x1fb0330, L_0x1faf6b0, C4<0>;
L_0x1fafc00 .delay (30000,30000,30000) L_0x1fafc00/d;
L_0x1fafd30/d .functor AND 1, L_0x1fb0200, L_0x1fb0330, C4<1>, C4<1>;
L_0x1fafd30 .delay (20000,20000,20000) L_0x1fafd30/d;
L_0x1fafe70/d .functor AND 1, L_0x1fb0200, L_0x1faf6b0, C4<1>, C4<1>;
L_0x1fafe70 .delay (20000,20000,20000) L_0x1fafe70/d;
L_0x1faff10/d .functor AND 1, L_0x1fb0330, L_0x1faf6b0, C4<1>, C4<1>;
L_0x1faff10 .delay (20000,20000,20000) L_0x1faff10/d;
L_0x1faffd0/d .functor OR 1, L_0x1fafd30, L_0x1fafe70, L_0x1faff10, C4<0>;
L_0x1faffd0 .delay (20000,20000,20000) L_0x1faffd0/d;
v0x1f94ca0_0 .net "AandB", 0 0, L_0x1fafd30; 1 drivers
v0x1f94d60_0 .net "AandC", 0 0, L_0x1fafe70; 1 drivers
v0x1f94e00_0 .net "BandC", 0 0, L_0x1faff10; 1 drivers
v0x1f94ea0_0 .net "a", 0 0, L_0x1fb0200; 1 drivers
v0x1f94f20_0 .net "b", 0 0, L_0x1fb0330; 1 drivers
v0x1f94fc0_0 .alias "carryin", 0 0, v0x1f96090_1;
v0x1f95060_0 .alias "carryout", 0 0, v0x1f96090_2;
v0x1f950e0_0 .net "sum", 0 0, L_0x1fafc00; 1 drivers
S_0x1f94500 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f94410;
 .timescale -9 -12;
L_0x1fb0460/d .functor XOR 1, L_0x1fb0b70, L_0x1fb0d30, L_0x1faffd0, C4<0>;
L_0x1fb0460 .delay (30000,30000,30000) L_0x1fb0460/d;
L_0x1fb0550/d .functor AND 1, L_0x1fb0b70, L_0x1fb0d30, C4<1>, C4<1>;
L_0x1fb0550 .delay (20000,20000,20000) L_0x1fb0550/d;
L_0x1fb0670/d .functor AND 1, L_0x1fb0b70, L_0x1faffd0, C4<1>, C4<1>;
L_0x1fb0670 .delay (20000,20000,20000) L_0x1fb0670/d;
L_0x1fb0730/d .functor AND 1, L_0x1fb0d30, L_0x1faffd0, C4<1>, C4<1>;
L_0x1fb0730 .delay (20000,20000,20000) L_0x1fb0730/d;
L_0x1fb0820/d .functor OR 1, L_0x1fb0550, L_0x1fb0670, L_0x1fb0730, C4<0>;
L_0x1fb0820 .delay (20000,20000,20000) L_0x1fb0820/d;
v0x1f945f0_0 .net "AandB", 0 0, L_0x1fb0550; 1 drivers
v0x1f946b0_0 .net "AandC", 0 0, L_0x1fb0670; 1 drivers
v0x1f94750_0 .net "BandC", 0 0, L_0x1fb0730; 1 drivers
v0x1f947f0_0 .net "a", 0 0, L_0x1fb0b70; 1 drivers
v0x1f94870_0 .net "b", 0 0, L_0x1fb0d30; 1 drivers
v0x1f94910_0 .alias "carryin", 0 0, v0x1f96090_2;
v0x1f949f0_0 .alias "carryout", 0 0, v0x1f9a130_2;
v0x1f94ac0_0 .net "sum", 0 0, L_0x1fb0460; 1 drivers
S_0x1f92620 .scope module, "f43" "CompAdder4bit" 2 84, 2 31, S_0x1f78c70;
 .timescale -9 -12;
v0x1f93fc0_0 .net "a", 3 0, L_0x1fb3640; 1 drivers
v0x1f94080_0 .net "b", 3 0, L_0x1fb3770; 1 drivers
v0x1f94120_0 .alias "carryin", 0 0, v0x1f9a130_2;
v0x1f941a0_0 .alias "carryout", 0 0, v0x1f9a130_3;
v0x1f94220_0 .net8 "sum", 3 0, RS_0x2b15dfb9cd28; 4 drivers
v0x1f942a0 .array "temp_cout", 0 2;
v0x1f942a0_0 .net v0x1f942a0 0, 0 0, L_0x1fb1460; 1 drivers
v0x1f942a0_1 .net v0x1f942a0 1, 0 0, L_0x1fb1c80; 1 drivers
v0x1f942a0_2 .net v0x1f942a0 2, 0 0, L_0x1fb2580; 1 drivers
L_0x1fb1580 .part/pv L_0x1fb0b10, 0, 1, 4;
L_0x1fb1620 .part L_0x1fb3640, 0, 1;
L_0x1fb1750 .part L_0x1fb3770, 0, 1;
L_0x1fb1e40 .part/pv L_0x1fb1880, 1, 1, 4;
L_0x1fb1f30 .part L_0x1fb3640, 1, 1;
L_0x1fb2060 .part L_0x1fb3770, 1, 1;
L_0x1fb2710 .part/pv L_0x1fb21d0, 2, 1, 4;
L_0x1fb27b0 .part L_0x1fb3640, 2, 1;
L_0x1fb28e0 .part L_0x1fb3770, 2, 1;
L_0x1fb2f90 .part/pv L_0x1fb2a10, 3, 1, 4;
L_0x1fb3120 .part L_0x1fb3640, 3, 1;
L_0x1fb32e0 .part L_0x1fb3770, 3, 1;
S_0x1f939c0 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f92620;
 .timescale -9 -12;
L_0x1fb0b10/d .functor XOR 1, L_0x1fb1620, L_0x1fb1750, L_0x1fb0820, C4<0>;
L_0x1fb0b10 .delay (30000,30000,30000) L_0x1fb0b10/d;
L_0x1fb1140/d .functor AND 1, L_0x1fb1620, L_0x1fb1750, C4<1>, C4<1>;
L_0x1fb1140 .delay (20000,20000,20000) L_0x1fb1140/d;
L_0x1fb1210/d .functor AND 1, L_0x1fb1620, L_0x1fb0820, C4<1>, C4<1>;
L_0x1fb1210 .delay (20000,20000,20000) L_0x1fb1210/d;
L_0x1fb12d0/d .functor AND 1, L_0x1fb1750, L_0x1fb0820, C4<1>, C4<1>;
L_0x1fb12d0 .delay (20000,20000,20000) L_0x1fb12d0/d;
L_0x1fb1460/d .functor OR 1, L_0x1fb1140, L_0x1fb1210, L_0x1fb12d0, C4<0>;
L_0x1fb1460 .delay (20000,20000,20000) L_0x1fb1460/d;
v0x1f93ab0_0 .net "AandB", 0 0, L_0x1fb1140; 1 drivers
v0x1f93b70_0 .net "AandC", 0 0, L_0x1fb1210; 1 drivers
v0x1f93c10_0 .net "BandC", 0 0, L_0x1fb12d0; 1 drivers
v0x1f93cb0_0 .net "a", 0 0, L_0x1fb1620; 1 drivers
v0x1f93d30_0 .net "b", 0 0, L_0x1fb1750; 1 drivers
v0x1f93dd0_0 .alias "carryin", 0 0, v0x1f9a130_2;
v0x1f93e70_0 .alias "carryout", 0 0, v0x1f942a0_0;
v0x1f93ef0_0 .net "sum", 0 0, L_0x1fb0b10; 1 drivers
S_0x1f933c0 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f92620;
 .timescale -9 -12;
L_0x1fb1880/d .functor XOR 1, L_0x1fb1f30, L_0x1fb2060, L_0x1fb1460, C4<0>;
L_0x1fb1880 .delay (30000,30000,30000) L_0x1fb1880/d;
L_0x1fb1a40/d .functor AND 1, L_0x1fb1f30, L_0x1fb2060, C4<1>, C4<1>;
L_0x1fb1a40 .delay (20000,20000,20000) L_0x1fb1a40/d;
L_0x1fb1b10/d .functor AND 1, L_0x1fb1f30, L_0x1fb1460, C4<1>, C4<1>;
L_0x1fb1b10 .delay (20000,20000,20000) L_0x1fb1b10/d;
L_0x1fb1bb0/d .functor AND 1, L_0x1fb2060, L_0x1fb1460, C4<1>, C4<1>;
L_0x1fb1bb0 .delay (20000,20000,20000) L_0x1fb1bb0/d;
L_0x1fb1c80/d .functor OR 1, L_0x1fb1a40, L_0x1fb1b10, L_0x1fb1bb0, C4<0>;
L_0x1fb1c80 .delay (20000,20000,20000) L_0x1fb1c80/d;
v0x1f934b0_0 .net "AandB", 0 0, L_0x1fb1a40; 1 drivers
v0x1f93570_0 .net "AandC", 0 0, L_0x1fb1b10; 1 drivers
v0x1f93610_0 .net "BandC", 0 0, L_0x1fb1bb0; 1 drivers
v0x1f936b0_0 .net "a", 0 0, L_0x1fb1f30; 1 drivers
v0x1f93730_0 .net "b", 0 0, L_0x1fb2060; 1 drivers
v0x1f937d0_0 .alias "carryin", 0 0, v0x1f942a0_0;
v0x1f93870_0 .alias "carryout", 0 0, v0x1f942a0_1;
v0x1f938f0_0 .net "sum", 0 0, L_0x1fb1880; 1 drivers
S_0x1f92dc0 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f92620;
 .timescale -9 -12;
L_0x1fb21d0/d .functor XOR 1, L_0x1fb27b0, L_0x1fb28e0, L_0x1fb1c80, C4<0>;
L_0x1fb21d0 .delay (30000,30000,30000) L_0x1fb21d0/d;
L_0x1fb2300/d .functor AND 1, L_0x1fb27b0, L_0x1fb28e0, C4<1>, C4<1>;
L_0x1fb2300 .delay (20000,20000,20000) L_0x1fb2300/d;
L_0x1fb2440/d .functor AND 1, L_0x1fb27b0, L_0x1fb1c80, C4<1>, C4<1>;
L_0x1fb2440 .delay (20000,20000,20000) L_0x1fb2440/d;
L_0x1fb24e0/d .functor AND 1, L_0x1fb28e0, L_0x1fb1c80, C4<1>, C4<1>;
L_0x1fb24e0 .delay (20000,20000,20000) L_0x1fb24e0/d;
L_0x1fb2580/d .functor OR 1, L_0x1fb2300, L_0x1fb2440, L_0x1fb24e0, C4<0>;
L_0x1fb2580 .delay (20000,20000,20000) L_0x1fb2580/d;
v0x1f92eb0_0 .net "AandB", 0 0, L_0x1fb2300; 1 drivers
v0x1f92f70_0 .net "AandC", 0 0, L_0x1fb2440; 1 drivers
v0x1f93010_0 .net "BandC", 0 0, L_0x1fb24e0; 1 drivers
v0x1f930b0_0 .net "a", 0 0, L_0x1fb27b0; 1 drivers
v0x1f93130_0 .net "b", 0 0, L_0x1fb28e0; 1 drivers
v0x1f931d0_0 .alias "carryin", 0 0, v0x1f942a0_1;
v0x1f93270_0 .alias "carryout", 0 0, v0x1f942a0_2;
v0x1f932f0_0 .net "sum", 0 0, L_0x1fb21d0; 1 drivers
S_0x1f92710 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f92620;
 .timescale -9 -12;
L_0x1fb2a10/d .functor XOR 1, L_0x1fb3120, L_0x1fb32e0, L_0x1fb2580, C4<0>;
L_0x1fb2a10 .delay (30000,30000,30000) L_0x1fb2a10/d;
L_0x1fb2b00/d .functor AND 1, L_0x1fb3120, L_0x1fb32e0, C4<1>, C4<1>;
L_0x1fb2b00 .delay (20000,20000,20000) L_0x1fb2b00/d;
L_0x1fb2c20/d .functor AND 1, L_0x1fb3120, L_0x1fb2580, C4<1>, C4<1>;
L_0x1fb2c20 .delay (20000,20000,20000) L_0x1fb2c20/d;
L_0x1fb2ce0/d .functor AND 1, L_0x1fb32e0, L_0x1fb2580, C4<1>, C4<1>;
L_0x1fb2ce0 .delay (20000,20000,20000) L_0x1fb2ce0/d;
L_0x1fb2dd0/d .functor OR 1, L_0x1fb2b00, L_0x1fb2c20, L_0x1fb2ce0, C4<0>;
L_0x1fb2dd0 .delay (20000,20000,20000) L_0x1fb2dd0/d;
v0x1f92800_0 .net "AandB", 0 0, L_0x1fb2b00; 1 drivers
v0x1f928c0_0 .net "AandC", 0 0, L_0x1fb2c20; 1 drivers
v0x1f92960_0 .net "BandC", 0 0, L_0x1fb2ce0; 1 drivers
v0x1f92a00_0 .net "a", 0 0, L_0x1fb3120; 1 drivers
v0x1f92a80_0 .net "b", 0 0, L_0x1fb32e0; 1 drivers
v0x1f92b20_0 .alias "carryin", 0 0, v0x1f942a0_2;
v0x1f92c00_0 .alias "carryout", 0 0, v0x1f9a130_3;
v0x1f92cd0_0 .net "sum", 0 0, L_0x1fb2a10; 1 drivers
S_0x1f90830 .scope module, "f44" "CompAdder4bit" 2 85, 2 31, S_0x1f78c70;
 .timescale -9 -12;
v0x1f921d0_0 .net "a", 3 0, L_0x1fb5c30; 1 drivers
v0x1f92290_0 .net "b", 3 0, L_0x1fb5d50; 1 drivers
v0x1f92330_0 .alias "carryin", 0 0, v0x1f9a130_3;
v0x1f923b0_0 .alias "carryout", 0 0, v0x1f9a130_4;
v0x1f92430_0 .net8 "sum", 3 0, RS_0x2b15dfb9c758; 4 drivers
v0x1f924b0 .array "temp_cout", 0 2;
v0x1f924b0_0 .net v0x1f924b0 0, 0 0, L_0x1fb3c70; 1 drivers
v0x1f924b0_1 .net v0x1f924b0 1, 0 0, L_0x1fb4440; 1 drivers
v0x1f924b0_2 .net v0x1f924b0 2, 0 0, L_0x1fb4c00; 1 drivers
L_0x1fb3d40 .part/pv L_0x1fb30c0, 0, 1, 4;
L_0x1fb3de0 .part L_0x1fb5c30, 0, 1;
L_0x1fb3f10 .part L_0x1fb5d50, 0, 1;
L_0x1fb4510 .part/pv L_0x1fb4040, 1, 1, 4;
L_0x1fb45b0 .part L_0x1fb5c30, 1, 1;
L_0x1fb46e0 .part L_0x1fb5d50, 1, 1;
L_0x1fb4d90 .part/pv L_0x1fb4850, 2, 1, 4;
L_0x1fb4e30 .part L_0x1fb5c30, 2, 1;
L_0x1fb4f60 .part L_0x1fb5d50, 2, 1;
L_0x1fb5610 .part/pv L_0x1fb5090, 3, 1, 4;
L_0x1fb57a0 .part L_0x1fb5c30, 3, 1;
L_0x1fb5960 .part L_0x1fb5d50, 3, 1;
S_0x1f91bd0 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f90830;
 .timescale -9 -12;
L_0x1fb30c0/d .functor XOR 1, L_0x1fb3de0, L_0x1fb3f10, L_0x1fb2dd0, C4<0>;
L_0x1fb30c0 .delay (30000,30000,30000) L_0x1fb30c0/d;
L_0x1fb3950/d .functor AND 1, L_0x1fb3de0, L_0x1fb3f10, C4<1>, C4<1>;
L_0x1fb3950 .delay (20000,20000,20000) L_0x1fb3950/d;
L_0x1fb3a20/d .functor AND 1, L_0x1fb3de0, L_0x1fb2dd0, C4<1>, C4<1>;
L_0x1fb3a20 .delay (20000,20000,20000) L_0x1fb3a20/d;
L_0x1fb3ae0/d .functor AND 1, L_0x1fb3f10, L_0x1fb2dd0, C4<1>, C4<1>;
L_0x1fb3ae0 .delay (20000,20000,20000) L_0x1fb3ae0/d;
L_0x1fb3c70/d .functor OR 1, L_0x1fb3950, L_0x1fb3a20, L_0x1fb3ae0, C4<0>;
L_0x1fb3c70 .delay (20000,20000,20000) L_0x1fb3c70/d;
v0x1f91cc0_0 .net "AandB", 0 0, L_0x1fb3950; 1 drivers
v0x1f91d80_0 .net "AandC", 0 0, L_0x1fb3a20; 1 drivers
v0x1f91e20_0 .net "BandC", 0 0, L_0x1fb3ae0; 1 drivers
v0x1f91ec0_0 .net "a", 0 0, L_0x1fb3de0; 1 drivers
v0x1f91f40_0 .net "b", 0 0, L_0x1fb3f10; 1 drivers
v0x1f91fe0_0 .alias "carryin", 0 0, v0x1f9a130_3;
v0x1f92080_0 .alias "carryout", 0 0, v0x1f924b0_0;
v0x1f92100_0 .net "sum", 0 0, L_0x1fb30c0; 1 drivers
S_0x1f915d0 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f90830;
 .timescale -9 -12;
L_0x1fb4040/d .functor XOR 1, L_0x1fb45b0, L_0x1fb46e0, L_0x1fb3c70, C4<0>;
L_0x1fb4040 .delay (30000,30000,30000) L_0x1fb4040/d;
L_0x1fb4200/d .functor AND 1, L_0x1fb45b0, L_0x1fb46e0, C4<1>, C4<1>;
L_0x1fb4200 .delay (20000,20000,20000) L_0x1fb4200/d;
L_0x1fb42d0/d .functor AND 1, L_0x1fb45b0, L_0x1fb3c70, C4<1>, C4<1>;
L_0x1fb42d0 .delay (20000,20000,20000) L_0x1fb42d0/d;
L_0x1fb4370/d .functor AND 1, L_0x1fb46e0, L_0x1fb3c70, C4<1>, C4<1>;
L_0x1fb4370 .delay (20000,20000,20000) L_0x1fb4370/d;
L_0x1fb4440/d .functor OR 1, L_0x1fb4200, L_0x1fb42d0, L_0x1fb4370, C4<0>;
L_0x1fb4440 .delay (20000,20000,20000) L_0x1fb4440/d;
v0x1f916c0_0 .net "AandB", 0 0, L_0x1fb4200; 1 drivers
v0x1f91780_0 .net "AandC", 0 0, L_0x1fb42d0; 1 drivers
v0x1f91820_0 .net "BandC", 0 0, L_0x1fb4370; 1 drivers
v0x1f918c0_0 .net "a", 0 0, L_0x1fb45b0; 1 drivers
v0x1f91940_0 .net "b", 0 0, L_0x1fb46e0; 1 drivers
v0x1f919e0_0 .alias "carryin", 0 0, v0x1f924b0_0;
v0x1f91a80_0 .alias "carryout", 0 0, v0x1f924b0_1;
v0x1f91b00_0 .net "sum", 0 0, L_0x1fb4040; 1 drivers
S_0x1f90fd0 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f90830;
 .timescale -9 -12;
L_0x1fb4850/d .functor XOR 1, L_0x1fb4e30, L_0x1fb4f60, L_0x1fb4440, C4<0>;
L_0x1fb4850 .delay (30000,30000,30000) L_0x1fb4850/d;
L_0x1fb4980/d .functor AND 1, L_0x1fb4e30, L_0x1fb4f60, C4<1>, C4<1>;
L_0x1fb4980 .delay (20000,20000,20000) L_0x1fb4980/d;
L_0x1fb4ac0/d .functor AND 1, L_0x1fb4e30, L_0x1fb4440, C4<1>, C4<1>;
L_0x1fb4ac0 .delay (20000,20000,20000) L_0x1fb4ac0/d;
L_0x1fb4b60/d .functor AND 1, L_0x1fb4f60, L_0x1fb4440, C4<1>, C4<1>;
L_0x1fb4b60 .delay (20000,20000,20000) L_0x1fb4b60/d;
L_0x1fb4c00/d .functor OR 1, L_0x1fb4980, L_0x1fb4ac0, L_0x1fb4b60, C4<0>;
L_0x1fb4c00 .delay (20000,20000,20000) L_0x1fb4c00/d;
v0x1f910c0_0 .net "AandB", 0 0, L_0x1fb4980; 1 drivers
v0x1f91180_0 .net "AandC", 0 0, L_0x1fb4ac0; 1 drivers
v0x1f91220_0 .net "BandC", 0 0, L_0x1fb4b60; 1 drivers
v0x1f912c0_0 .net "a", 0 0, L_0x1fb4e30; 1 drivers
v0x1f91340_0 .net "b", 0 0, L_0x1fb4f60; 1 drivers
v0x1f913e0_0 .alias "carryin", 0 0, v0x1f924b0_1;
v0x1f91480_0 .alias "carryout", 0 0, v0x1f924b0_2;
v0x1f91500_0 .net "sum", 0 0, L_0x1fb4850; 1 drivers
S_0x1f90920 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f90830;
 .timescale -9 -12;
L_0x1fb5090/d .functor XOR 1, L_0x1fb57a0, L_0x1fb5960, L_0x1fb4c00, C4<0>;
L_0x1fb5090 .delay (30000,30000,30000) L_0x1fb5090/d;
L_0x1fb5180/d .functor AND 1, L_0x1fb57a0, L_0x1fb5960, C4<1>, C4<1>;
L_0x1fb5180 .delay (20000,20000,20000) L_0x1fb5180/d;
L_0x1fb52a0/d .functor AND 1, L_0x1fb57a0, L_0x1fb4c00, C4<1>, C4<1>;
L_0x1fb52a0 .delay (20000,20000,20000) L_0x1fb52a0/d;
L_0x1fb5360/d .functor AND 1, L_0x1fb5960, L_0x1fb4c00, C4<1>, C4<1>;
L_0x1fb5360 .delay (20000,20000,20000) L_0x1fb5360/d;
L_0x1fb5450/d .functor OR 1, L_0x1fb5180, L_0x1fb52a0, L_0x1fb5360, C4<0>;
L_0x1fb5450 .delay (20000,20000,20000) L_0x1fb5450/d;
v0x1f90a10_0 .net "AandB", 0 0, L_0x1fb5180; 1 drivers
v0x1f90ad0_0 .net "AandC", 0 0, L_0x1fb52a0; 1 drivers
v0x1f90b70_0 .net "BandC", 0 0, L_0x1fb5360; 1 drivers
v0x1f90c10_0 .net "a", 0 0, L_0x1fb57a0; 1 drivers
v0x1f90c90_0 .net "b", 0 0, L_0x1fb5960; 1 drivers
v0x1f90d30_0 .alias "carryin", 0 0, v0x1f924b0_2;
v0x1f90e10_0 .alias "carryout", 0 0, v0x1f9a130_4;
v0x1f90ee0_0 .net "sum", 0 0, L_0x1fb5090; 1 drivers
S_0x1f8ea40 .scope module, "f45" "CompAdder4bit" 2 86, 2 31, S_0x1f78c70;
 .timescale -9 -12;
v0x1f903e0_0 .net "a", 3 0, L_0x1fb8270; 1 drivers
v0x1f904a0_0 .net "b", 3 0, L_0x1fb8310; 1 drivers
v0x1f90540_0 .alias "carryin", 0 0, v0x1f9a130_4;
v0x1f905c0_0 .alias "carryout", 0 0, v0x1f9a130_5;
v0x1f90640_0 .net8 "sum", 3 0, RS_0x2b15dfb9c188; 4 drivers
v0x1f906c0 .array "temp_cout", 0 2;
v0x1f906c0_0 .net v0x1f906c0 0, 0 0, L_0x1fb6150; 1 drivers
v0x1f906c0_1 .net v0x1f906c0 1, 0 0, L_0x1fb6920; 1 drivers
v0x1f906c0_2 .net v0x1f906c0 2, 0 0, L_0x1fb7220; 1 drivers
L_0x1fb6220 .part/pv L_0x1fb5740, 0, 1, 4;
L_0x1fb62c0 .part L_0x1fb8270, 0, 1;
L_0x1fb63f0 .part L_0x1fb8310, 0, 1;
L_0x1fb6ae0 .part/pv L_0x1fb6520, 1, 1, 4;
L_0x1fb6bd0 .part L_0x1fb8270, 1, 1;
L_0x1fb6d00 .part L_0x1fb8310, 1, 1;
L_0x1fb73b0 .part/pv L_0x1fb6e70, 2, 1, 4;
L_0x1fb7450 .part L_0x1fb8270, 2, 1;
L_0x1fb7580 .part L_0x1fb8310, 2, 1;
L_0x1fb7c30 .part/pv L_0x1fb76b0, 3, 1, 4;
L_0x1fb7dc0 .part L_0x1fb8270, 3, 1;
L_0x1fb7f80 .part L_0x1fb8310, 3, 1;
S_0x1f8fde0 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f8ea40;
 .timescale -9 -12;
L_0x1fb5740/d .functor XOR 1, L_0x1fb62c0, L_0x1fb63f0, L_0x1fb5450, C4<0>;
L_0x1fb5740 .delay (30000,30000,30000) L_0x1fb5740/d;
L_0x1fb5e30/d .functor AND 1, L_0x1fb62c0, L_0x1fb63f0, C4<1>, C4<1>;
L_0x1fb5e30 .delay (20000,20000,20000) L_0x1fb5e30/d;
L_0x1fb5f00/d .functor AND 1, L_0x1fb62c0, L_0x1fb5450, C4<1>, C4<1>;
L_0x1fb5f00 .delay (20000,20000,20000) L_0x1fb5f00/d;
L_0x1fb5fc0/d .functor AND 1, L_0x1fb63f0, L_0x1fb5450, C4<1>, C4<1>;
L_0x1fb5fc0 .delay (20000,20000,20000) L_0x1fb5fc0/d;
L_0x1fb6150/d .functor OR 1, L_0x1fb5e30, L_0x1fb5f00, L_0x1fb5fc0, C4<0>;
L_0x1fb6150 .delay (20000,20000,20000) L_0x1fb6150/d;
v0x1f8fed0_0 .net "AandB", 0 0, L_0x1fb5e30; 1 drivers
v0x1f8ff90_0 .net "AandC", 0 0, L_0x1fb5f00; 1 drivers
v0x1f90030_0 .net "BandC", 0 0, L_0x1fb5fc0; 1 drivers
v0x1f900d0_0 .net "a", 0 0, L_0x1fb62c0; 1 drivers
v0x1f90150_0 .net "b", 0 0, L_0x1fb63f0; 1 drivers
v0x1f901f0_0 .alias "carryin", 0 0, v0x1f9a130_4;
v0x1f90290_0 .alias "carryout", 0 0, v0x1f906c0_0;
v0x1f90310_0 .net "sum", 0 0, L_0x1fb5740; 1 drivers
S_0x1f8f7e0 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f8ea40;
 .timescale -9 -12;
L_0x1fb6520/d .functor XOR 1, L_0x1fb6bd0, L_0x1fb6d00, L_0x1fb6150, C4<0>;
L_0x1fb6520 .delay (30000,30000,30000) L_0x1fb6520/d;
L_0x1fb66e0/d .functor AND 1, L_0x1fb6bd0, L_0x1fb6d00, C4<1>, C4<1>;
L_0x1fb66e0 .delay (20000,20000,20000) L_0x1fb66e0/d;
L_0x1fb67b0/d .functor AND 1, L_0x1fb6bd0, L_0x1fb6150, C4<1>, C4<1>;
L_0x1fb67b0 .delay (20000,20000,20000) L_0x1fb67b0/d;
L_0x1fb6850/d .functor AND 1, L_0x1fb6d00, L_0x1fb6150, C4<1>, C4<1>;
L_0x1fb6850 .delay (20000,20000,20000) L_0x1fb6850/d;
L_0x1fb6920/d .functor OR 1, L_0x1fb66e0, L_0x1fb67b0, L_0x1fb6850, C4<0>;
L_0x1fb6920 .delay (20000,20000,20000) L_0x1fb6920/d;
v0x1f8f8d0_0 .net "AandB", 0 0, L_0x1fb66e0; 1 drivers
v0x1f8f990_0 .net "AandC", 0 0, L_0x1fb67b0; 1 drivers
v0x1f8fa30_0 .net "BandC", 0 0, L_0x1fb6850; 1 drivers
v0x1f8fad0_0 .net "a", 0 0, L_0x1fb6bd0; 1 drivers
v0x1f8fb50_0 .net "b", 0 0, L_0x1fb6d00; 1 drivers
v0x1f8fbf0_0 .alias "carryin", 0 0, v0x1f906c0_0;
v0x1f8fc90_0 .alias "carryout", 0 0, v0x1f906c0_1;
v0x1f8fd10_0 .net "sum", 0 0, L_0x1fb6520; 1 drivers
S_0x1f8f1e0 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f8ea40;
 .timescale -9 -12;
L_0x1fb6e70/d .functor XOR 1, L_0x1fb7450, L_0x1fb7580, L_0x1fb6920, C4<0>;
L_0x1fb6e70 .delay (30000,30000,30000) L_0x1fb6e70/d;
L_0x1fb6fa0/d .functor AND 1, L_0x1fb7450, L_0x1fb7580, C4<1>, C4<1>;
L_0x1fb6fa0 .delay (20000,20000,20000) L_0x1fb6fa0/d;
L_0x1fb70e0/d .functor AND 1, L_0x1fb7450, L_0x1fb6920, C4<1>, C4<1>;
L_0x1fb70e0 .delay (20000,20000,20000) L_0x1fb70e0/d;
L_0x1fb7180/d .functor AND 1, L_0x1fb7580, L_0x1fb6920, C4<1>, C4<1>;
L_0x1fb7180 .delay (20000,20000,20000) L_0x1fb7180/d;
L_0x1fb7220/d .functor OR 1, L_0x1fb6fa0, L_0x1fb70e0, L_0x1fb7180, C4<0>;
L_0x1fb7220 .delay (20000,20000,20000) L_0x1fb7220/d;
v0x1f8f2d0_0 .net "AandB", 0 0, L_0x1fb6fa0; 1 drivers
v0x1f8f390_0 .net "AandC", 0 0, L_0x1fb70e0; 1 drivers
v0x1f8f430_0 .net "BandC", 0 0, L_0x1fb7180; 1 drivers
v0x1f8f4d0_0 .net "a", 0 0, L_0x1fb7450; 1 drivers
v0x1f8f550_0 .net "b", 0 0, L_0x1fb7580; 1 drivers
v0x1f8f5f0_0 .alias "carryin", 0 0, v0x1f906c0_1;
v0x1f8f690_0 .alias "carryout", 0 0, v0x1f906c0_2;
v0x1f8f710_0 .net "sum", 0 0, L_0x1fb6e70; 1 drivers
S_0x1f8eb30 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f8ea40;
 .timescale -9 -12;
L_0x1fb76b0/d .functor XOR 1, L_0x1fb7dc0, L_0x1fb7f80, L_0x1fb7220, C4<0>;
L_0x1fb76b0 .delay (30000,30000,30000) L_0x1fb76b0/d;
L_0x1fb77a0/d .functor AND 1, L_0x1fb7dc0, L_0x1fb7f80, C4<1>, C4<1>;
L_0x1fb77a0 .delay (20000,20000,20000) L_0x1fb77a0/d;
L_0x1fb78c0/d .functor AND 1, L_0x1fb7dc0, L_0x1fb7220, C4<1>, C4<1>;
L_0x1fb78c0 .delay (20000,20000,20000) L_0x1fb78c0/d;
L_0x1fb7980/d .functor AND 1, L_0x1fb7f80, L_0x1fb7220, C4<1>, C4<1>;
L_0x1fb7980 .delay (20000,20000,20000) L_0x1fb7980/d;
L_0x1fb7a70/d .functor OR 1, L_0x1fb77a0, L_0x1fb78c0, L_0x1fb7980, C4<0>;
L_0x1fb7a70 .delay (20000,20000,20000) L_0x1fb7a70/d;
v0x1f8ec20_0 .net "AandB", 0 0, L_0x1fb77a0; 1 drivers
v0x1f8ece0_0 .net "AandC", 0 0, L_0x1fb78c0; 1 drivers
v0x1f8ed80_0 .net "BandC", 0 0, L_0x1fb7980; 1 drivers
v0x1f8ee20_0 .net "a", 0 0, L_0x1fb7dc0; 1 drivers
v0x1f8eea0_0 .net "b", 0 0, L_0x1fb7f80; 1 drivers
v0x1f8ef40_0 .alias "carryin", 0 0, v0x1f906c0_2;
v0x1f8f020_0 .alias "carryout", 0 0, v0x1f9a130_5;
v0x1f8f0f0_0 .net "sum", 0 0, L_0x1fb76b0; 1 drivers
S_0x1f8cc70 .scope module, "f46" "CompAdder4bit" 2 87, 2 31, S_0x1f78c70;
 .timescale -9 -12;
v0x1f8e5f0_0 .net "a", 3 0, L_0x1fba820; 1 drivers
v0x1f8e6b0_0 .net "b", 3 0, L_0x1fb83b0; 1 drivers
v0x1f8e750_0 .alias "carryin", 0 0, v0x1f9a130_5;
v0x1f8e7d0_0 .alias "carryout", 0 0, v0x1f9a130_6;
v0x1f8e850_0 .net8 "sum", 3 0, RS_0x2b15dfb9bbb8; 4 drivers
v0x1f8e8d0 .array "temp_cout", 0 2;
v0x1f8e8d0_0 .net v0x1f8e8d0 0, 0 0, L_0x1fb8720; 1 drivers
v0x1f8e8d0_1 .net v0x1f8e8d0 1, 0 0, L_0x1fb8ef0; 1 drivers
v0x1f8e8d0_2 .net v0x1f8e8d0 2, 0 0, L_0x1fb97f0; 1 drivers
L_0x1fb87f0 .part/pv L_0x1fb7d60, 0, 1, 4;
L_0x1fb8890 .part L_0x1fba820, 0, 1;
L_0x1fb89c0 .part L_0x1fb83b0, 0, 1;
L_0x1fb90b0 .part/pv L_0x1fb8af0, 1, 1, 4;
L_0x1fb91a0 .part L_0x1fba820, 1, 1;
L_0x1fb92d0 .part L_0x1fb83b0, 1, 1;
L_0x1fb9980 .part/pv L_0x1fb9440, 2, 1, 4;
L_0x1fb9a20 .part L_0x1fba820, 2, 1;
L_0x1fb9b50 .part L_0x1fb83b0, 2, 1;
L_0x1fba200 .part/pv L_0x1fb9c80, 3, 1, 4;
L_0x1fba390 .part L_0x1fba820, 3, 1;
L_0x1fba550 .part L_0x1fb83b0, 3, 1;
S_0x1f8dff0 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f8cc70;
 .timescale -9 -12;
L_0x1fb7d60/d .functor XOR 1, L_0x1fb8890, L_0x1fb89c0, L_0x1fb7a70, C4<0>;
L_0x1fb7d60 .delay (30000,30000,30000) L_0x1fb7d60/d;
L_0x1fb8450/d .functor AND 1, L_0x1fb8890, L_0x1fb89c0, C4<1>, C4<1>;
L_0x1fb8450 .delay (20000,20000,20000) L_0x1fb8450/d;
L_0x1fb84f0/d .functor AND 1, L_0x1fb8890, L_0x1fb7a70, C4<1>, C4<1>;
L_0x1fb84f0 .delay (20000,20000,20000) L_0x1fb84f0/d;
L_0x1fb8590/d .functor AND 1, L_0x1fb89c0, L_0x1fb7a70, C4<1>, C4<1>;
L_0x1fb8590 .delay (20000,20000,20000) L_0x1fb8590/d;
L_0x1fb8720/d .functor OR 1, L_0x1fb8450, L_0x1fb84f0, L_0x1fb8590, C4<0>;
L_0x1fb8720 .delay (20000,20000,20000) L_0x1fb8720/d;
v0x1f8e0e0_0 .net "AandB", 0 0, L_0x1fb8450; 1 drivers
v0x1f8e1a0_0 .net "AandC", 0 0, L_0x1fb84f0; 1 drivers
v0x1f8e240_0 .net "BandC", 0 0, L_0x1fb8590; 1 drivers
v0x1f8e2e0_0 .net "a", 0 0, L_0x1fb8890; 1 drivers
v0x1f8e360_0 .net "b", 0 0, L_0x1fb89c0; 1 drivers
v0x1f8e400_0 .alias "carryin", 0 0, v0x1f9a130_5;
v0x1f8e4a0_0 .alias "carryout", 0 0, v0x1f8e8d0_0;
v0x1f8e520_0 .net "sum", 0 0, L_0x1fb7d60; 1 drivers
S_0x1f8d9f0 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f8cc70;
 .timescale -9 -12;
L_0x1fb8af0/d .functor XOR 1, L_0x1fb91a0, L_0x1fb92d0, L_0x1fb8720, C4<0>;
L_0x1fb8af0 .delay (30000,30000,30000) L_0x1fb8af0/d;
L_0x1fb8cb0/d .functor AND 1, L_0x1fb91a0, L_0x1fb92d0, C4<1>, C4<1>;
L_0x1fb8cb0 .delay (20000,20000,20000) L_0x1fb8cb0/d;
L_0x1fb8d80/d .functor AND 1, L_0x1fb91a0, L_0x1fb8720, C4<1>, C4<1>;
L_0x1fb8d80 .delay (20000,20000,20000) L_0x1fb8d80/d;
L_0x1fb8e20/d .functor AND 1, L_0x1fb92d0, L_0x1fb8720, C4<1>, C4<1>;
L_0x1fb8e20 .delay (20000,20000,20000) L_0x1fb8e20/d;
L_0x1fb8ef0/d .functor OR 1, L_0x1fb8cb0, L_0x1fb8d80, L_0x1fb8e20, C4<0>;
L_0x1fb8ef0 .delay (20000,20000,20000) L_0x1fb8ef0/d;
v0x1f8dae0_0 .net "AandB", 0 0, L_0x1fb8cb0; 1 drivers
v0x1f8dba0_0 .net "AandC", 0 0, L_0x1fb8d80; 1 drivers
v0x1f8dc40_0 .net "BandC", 0 0, L_0x1fb8e20; 1 drivers
v0x1f8dce0_0 .net "a", 0 0, L_0x1fb91a0; 1 drivers
v0x1f8dd60_0 .net "b", 0 0, L_0x1fb92d0; 1 drivers
v0x1f8de00_0 .alias "carryin", 0 0, v0x1f8e8d0_0;
v0x1f8dea0_0 .alias "carryout", 0 0, v0x1f8e8d0_1;
v0x1f8df20_0 .net "sum", 0 0, L_0x1fb8af0; 1 drivers
S_0x1f8d3f0 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f8cc70;
 .timescale -9 -12;
L_0x1fb9440/d .functor XOR 1, L_0x1fb9a20, L_0x1fb9b50, L_0x1fb8ef0, C4<0>;
L_0x1fb9440 .delay (30000,30000,30000) L_0x1fb9440/d;
L_0x1fb9570/d .functor AND 1, L_0x1fb9a20, L_0x1fb9b50, C4<1>, C4<1>;
L_0x1fb9570 .delay (20000,20000,20000) L_0x1fb9570/d;
L_0x1fb96b0/d .functor AND 1, L_0x1fb9a20, L_0x1fb8ef0, C4<1>, C4<1>;
L_0x1fb96b0 .delay (20000,20000,20000) L_0x1fb96b0/d;
L_0x1fb9750/d .functor AND 1, L_0x1fb9b50, L_0x1fb8ef0, C4<1>, C4<1>;
L_0x1fb9750 .delay (20000,20000,20000) L_0x1fb9750/d;
L_0x1fb97f0/d .functor OR 1, L_0x1fb9570, L_0x1fb96b0, L_0x1fb9750, C4<0>;
L_0x1fb97f0 .delay (20000,20000,20000) L_0x1fb97f0/d;
v0x1f8d4e0_0 .net "AandB", 0 0, L_0x1fb9570; 1 drivers
v0x1f8d5a0_0 .net "AandC", 0 0, L_0x1fb96b0; 1 drivers
v0x1f8d640_0 .net "BandC", 0 0, L_0x1fb9750; 1 drivers
v0x1f8d6e0_0 .net "a", 0 0, L_0x1fb9a20; 1 drivers
v0x1f8d760_0 .net "b", 0 0, L_0x1fb9b50; 1 drivers
v0x1f8d800_0 .alias "carryin", 0 0, v0x1f8e8d0_1;
v0x1f8d8a0_0 .alias "carryout", 0 0, v0x1f8e8d0_2;
v0x1f8d920_0 .net "sum", 0 0, L_0x1fb9440; 1 drivers
S_0x1f8cd60 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f8cc70;
 .timescale -9 -12;
L_0x1fb9c80/d .functor XOR 1, L_0x1fba390, L_0x1fba550, L_0x1fb97f0, C4<0>;
L_0x1fb9c80 .delay (30000,30000,30000) L_0x1fb9c80/d;
L_0x1fb9d70/d .functor AND 1, L_0x1fba390, L_0x1fba550, C4<1>, C4<1>;
L_0x1fb9d70 .delay (20000,20000,20000) L_0x1fb9d70/d;
L_0x1fb9e90/d .functor AND 1, L_0x1fba390, L_0x1fb97f0, C4<1>, C4<1>;
L_0x1fb9e90 .delay (20000,20000,20000) L_0x1fb9e90/d;
L_0x1fb9f50/d .functor AND 1, L_0x1fba550, L_0x1fb97f0, C4<1>, C4<1>;
L_0x1fb9f50 .delay (20000,20000,20000) L_0x1fb9f50/d;
L_0x1fba040/d .functor OR 1, L_0x1fb9d70, L_0x1fb9e90, L_0x1fb9f50, C4<0>;
L_0x1fba040 .delay (20000,20000,20000) L_0x1fba040/d;
v0x1f8ce50_0 .net "AandB", 0 0, L_0x1fb9d70; 1 drivers
v0x1f8cef0_0 .net "AandC", 0 0, L_0x1fb9e90; 1 drivers
v0x1f8cf90_0 .net "BandC", 0 0, L_0x1fb9f50; 1 drivers
v0x1f8d030_0 .net "a", 0 0, L_0x1fba390; 1 drivers
v0x1f8d0b0_0 .net "b", 0 0, L_0x1fba550; 1 drivers
v0x1f8d150_0 .alias "carryin", 0 0, v0x1f8e8d0_2;
v0x1f8d230_0 .alias "carryout", 0 0, v0x1f9a130_6;
v0x1f8d300_0 .net "sum", 0 0, L_0x1fb9c80; 1 drivers
S_0x1f73350 .scope module, "f47" "CompAdder4bit" 2 88, 2 31, S_0x1f78c70;
 .timescale -9 -12;
v0x1f8c790_0 .net "a", 3 0, L_0x1fba8c0; 1 drivers
v0x1f8c850_0 .net "b", 3 0, L_0x1fbd0b0; 1 drivers
v0x1f8c8f0_0 .alias "carryin", 0 0, v0x1f9a130_6;
v0x1f8c9a0_0 .alias "carryout", 0 0, v0x1f99f40_0;
v0x1f8ca80_0 .net8 "sum", 3 0, RS_0x2b15dfb9b5e8; 4 drivers
v0x1f8cb00 .array "temp_cout", 0 2;
v0x1f8cb00_0 .net v0x1f8cb00 0, 0 0, L_0x1fbacd0; 1 drivers
v0x1f8cb00_1 .net v0x1f8cb00 1, 0 0, L_0x1fbb4a0; 1 drivers
v0x1f8cb00_2 .net v0x1f8cb00 2, 0 0, L_0x1fbbda0; 1 drivers
L_0x1fbada0 .part/pv L_0x1fba330, 0, 1, 4;
L_0x1fbae40 .part L_0x1fba8c0, 0, 1;
L_0x1fbaf70 .part L_0x1fbd0b0, 0, 1;
L_0x1fbb660 .part/pv L_0x1fbb0a0, 1, 1, 4;
L_0x1fbb750 .part L_0x1fba8c0, 1, 1;
L_0x1fbb880 .part L_0x1fbd0b0, 1, 1;
L_0x1fbbf30 .part/pv L_0x1fbb9f0, 2, 1, 4;
L_0x1fbbfd0 .part L_0x1fba8c0, 2, 1;
L_0x1fbc100 .part L_0x1fbd0b0, 2, 1;
L_0x1fbc7b0 .part/pv L_0x1fbc230, 3, 1, 4;
L_0x1fbc940 .part L_0x1fba8c0, 3, 1;
L_0x1fbcb00 .part L_0x1fbd0b0, 3, 1;
S_0x1f8c160 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f73350;
 .timescale -9 -12;
L_0x1fba330/d .functor XOR 1, L_0x1fbae40, L_0x1fbaf70, L_0x1fba040, C4<0>;
L_0x1fba330 .delay (30000,30000,30000) L_0x1fba330/d;
L_0x1fba9b0/d .functor AND 1, L_0x1fbae40, L_0x1fbaf70, C4<1>, C4<1>;
L_0x1fba9b0 .delay (20000,20000,20000) L_0x1fba9b0/d;
L_0x1fbaa80/d .functor AND 1, L_0x1fbae40, L_0x1fba040, C4<1>, C4<1>;
L_0x1fbaa80 .delay (20000,20000,20000) L_0x1fbaa80/d;
L_0x1fbab40/d .functor AND 1, L_0x1fbaf70, L_0x1fba040, C4<1>, C4<1>;
L_0x1fbab40 .delay (20000,20000,20000) L_0x1fbab40/d;
L_0x1fbacd0/d .functor OR 1, L_0x1fba9b0, L_0x1fbaa80, L_0x1fbab40, C4<0>;
L_0x1fbacd0 .delay (20000,20000,20000) L_0x1fbacd0/d;
v0x1f8c250_0 .net "AandB", 0 0, L_0x1fba9b0; 1 drivers
v0x1f8c310_0 .net "AandC", 0 0, L_0x1fbaa80; 1 drivers
v0x1f8c3b0_0 .net "BandC", 0 0, L_0x1fbab40; 1 drivers
v0x1f8c450_0 .net "a", 0 0, L_0x1fbae40; 1 drivers
v0x1f8c500_0 .net "b", 0 0, L_0x1fbaf70; 1 drivers
v0x1f8c5a0_0 .alias "carryin", 0 0, v0x1f9a130_6;
v0x1f8c640_0 .alias "carryout", 0 0, v0x1f8cb00_0;
v0x1f8c6c0_0 .net "sum", 0 0, L_0x1fba330; 1 drivers
S_0x1f8bb30 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f73350;
 .timescale -9 -12;
L_0x1fbb0a0/d .functor XOR 1, L_0x1fbb750, L_0x1fbb880, L_0x1fbacd0, C4<0>;
L_0x1fbb0a0 .delay (30000,30000,30000) L_0x1fbb0a0/d;
L_0x1fbb260/d .functor AND 1, L_0x1fbb750, L_0x1fbb880, C4<1>, C4<1>;
L_0x1fbb260 .delay (20000,20000,20000) L_0x1fbb260/d;
L_0x1fbb330/d .functor AND 1, L_0x1fbb750, L_0x1fbacd0, C4<1>, C4<1>;
L_0x1fbb330 .delay (20000,20000,20000) L_0x1fbb330/d;
L_0x1fbb3d0/d .functor AND 1, L_0x1fbb880, L_0x1fbacd0, C4<1>, C4<1>;
L_0x1fbb3d0 .delay (20000,20000,20000) L_0x1fbb3d0/d;
L_0x1fbb4a0/d .functor OR 1, L_0x1fbb260, L_0x1fbb330, L_0x1fbb3d0, C4<0>;
L_0x1fbb4a0 .delay (20000,20000,20000) L_0x1fbb4a0/d;
v0x1f8bc20_0 .net "AandB", 0 0, L_0x1fbb260; 1 drivers
v0x1f8bce0_0 .net "AandC", 0 0, L_0x1fbb330; 1 drivers
v0x1f8bd80_0 .net "BandC", 0 0, L_0x1fbb3d0; 1 drivers
v0x1f8be20_0 .net "a", 0 0, L_0x1fbb750; 1 drivers
v0x1f8bed0_0 .net "b", 0 0, L_0x1fbb880; 1 drivers
v0x1f8bf70_0 .alias "carryin", 0 0, v0x1f8cb00_0;
v0x1f8c010_0 .alias "carryout", 0 0, v0x1f8cb00_1;
v0x1f8c090_0 .net "sum", 0 0, L_0x1fbb0a0; 1 drivers
S_0x1f8b530 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f73350;
 .timescale -9 -12;
L_0x1fbb9f0/d .functor XOR 1, L_0x1fbbfd0, L_0x1fbc100, L_0x1fbb4a0, C4<0>;
L_0x1fbb9f0 .delay (30000,30000,30000) L_0x1fbb9f0/d;
L_0x1fbbb20/d .functor AND 1, L_0x1fbbfd0, L_0x1fbc100, C4<1>, C4<1>;
L_0x1fbbb20 .delay (20000,20000,20000) L_0x1fbbb20/d;
L_0x1fbbc60/d .functor AND 1, L_0x1fbbfd0, L_0x1fbb4a0, C4<1>, C4<1>;
L_0x1fbbc60 .delay (20000,20000,20000) L_0x1fbbc60/d;
L_0x1fbbd00/d .functor AND 1, L_0x1fbc100, L_0x1fbb4a0, C4<1>, C4<1>;
L_0x1fbbd00 .delay (20000,20000,20000) L_0x1fbbd00/d;
L_0x1fbbda0/d .functor OR 1, L_0x1fbbb20, L_0x1fbbc60, L_0x1fbbd00, C4<0>;
L_0x1fbbda0 .delay (20000,20000,20000) L_0x1fbbda0/d;
v0x1f8b620_0 .net "AandB", 0 0, L_0x1fbbb20; 1 drivers
v0x1f8b6e0_0 .net "AandC", 0 0, L_0x1fbbc60; 1 drivers
v0x1f8b780_0 .net "BandC", 0 0, L_0x1fbbd00; 1 drivers
v0x1f8b820_0 .net "a", 0 0, L_0x1fbbfd0; 1 drivers
v0x1f8b8a0_0 .net "b", 0 0, L_0x1fbc100; 1 drivers
v0x1f8b940_0 .alias "carryin", 0 0, v0x1f8cb00_1;
v0x1f8b9e0_0 .alias "carryout", 0 0, v0x1f8cb00_2;
v0x1f8ba60_0 .net "sum", 0 0, L_0x1fbb9f0; 1 drivers
S_0x1f6e0f0 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f73350;
 .timescale -9 -12;
L_0x1fbc230/d .functor XOR 1, L_0x1fbc940, L_0x1fbcb00, L_0x1fbbda0, C4<0>;
L_0x1fbc230 .delay (30000,30000,30000) L_0x1fbc230/d;
L_0x1fbc320/d .functor AND 1, L_0x1fbc940, L_0x1fbcb00, C4<1>, C4<1>;
L_0x1fbc320 .delay (20000,20000,20000) L_0x1fbc320/d;
L_0x1fbc440/d .functor AND 1, L_0x1fbc940, L_0x1fbbda0, C4<1>, C4<1>;
L_0x1fbc440 .delay (20000,20000,20000) L_0x1fbc440/d;
L_0x1fbc500/d .functor AND 1, L_0x1fbcb00, L_0x1fbbda0, C4<1>, C4<1>;
L_0x1fbc500 .delay (20000,20000,20000) L_0x1fbc500/d;
L_0x1fbc5f0/d .functor OR 1, L_0x1fbc320, L_0x1fbc440, L_0x1fbc500, C4<0>;
L_0x1fbc5f0 .delay (20000,20000,20000) L_0x1fbc5f0/d;
v0x1f403d0_0 .net "AandB", 0 0, L_0x1fbc320; 1 drivers
v0x1f8b030_0 .net "AandC", 0 0, L_0x1fbc440; 1 drivers
v0x1f8b0d0_0 .net "BandC", 0 0, L_0x1fbc500; 1 drivers
v0x1f8b170_0 .net "a", 0 0, L_0x1fbc940; 1 drivers
v0x1f8b220_0 .net "b", 0 0, L_0x1fbcb00; 1 drivers
v0x1f8b2c0_0 .alias "carryin", 0 0, v0x1f8cb00_2;
v0x1f8b3a0_0 .alias "carryout", 0 0, v0x1f99f40_0;
v0x1f8b440_0 .net "sum", 0 0, L_0x1fbc230; 1 drivers
S_0x1f5cad0 .scope module, "testFullAdder16bit" "testFullAdder16bit" 3 5;
 .timescale -9 -12;
v0x1fa9c80_0 .var "a", 31 0;
v0x1fa9d20_0 .var "b", 31 0;
v0x1fa9da0_0 .net "carryout", 0 0, L_0x1fcf9b0; 1 drivers
v0x1fa9e20_0 .net "overflow", 0 0, L_0x1fcfce0; 1 drivers
RS_0x2b15dfba0ec8/0/0 .resolv tri, L_0x1fbf4a0, L_0x1fc1bd0, L_0x1fc4180, L_0x1fc67f0;
RS_0x2b15dfba0ec8/0/4 .resolv tri, L_0x1fc8db0, L_0x1fcb360, L_0x1fcd9a0, L_0x1fd0130;
RS_0x2b15dfba0ec8 .resolv tri, RS_0x2b15dfba0ec8/0/0, RS_0x2b15dfba0ec8/0/4, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>;
v0x1fa9ea0_0 .net8 "sum", 31 0, RS_0x2b15dfba0ec8; 8 drivers
S_0x1f9a620 .scope module, "fa16b" "FullAdder32bit" 3 11, 2 50, S_0x1f5cad0;
 .timescale -9 -12;
L_0x1fcfce0/d .functor XOR 1, L_0x1fcf9b0, L_0x1fcd260, C4<0>, C4<0>;
L_0x1fcfce0 .delay (30000,30000,30000) L_0x1fcfce0/d;
v0x1fa9440_0 .net "a", 31 0, v0x1fa9c80_0; 1 drivers
v0x1fa9500_0 .net "b", 31 0, v0x1fa9d20_0; 1 drivers
v0x1fa95a0_0 .alias "carryout", 0 0, v0x1fa9da0_0;
v0x1fa9670_0 .alias "overflow", 0 0, v0x1fa9e20_0;
v0x1fa96f0_0 .alias "sum", 31 0, v0x1fa9ea0_0;
v0x1fa9790 .array "temp_cout", 0 6;
v0x1fa9790_0 .net v0x1fa9790 0, 0 0, L_0x1fbee80; 1 drivers
v0x1fa9790_1 .net v0x1fa9790 1, 0 0, L_0x1fc1490; 1 drivers
v0x1fa9790_2 .net v0x1fa9790 2, 0 0, L_0x1fc3a40; 1 drivers
v0x1fa9790_3 .net v0x1fa9790 3, 0 0, L_0x1fc60b0; 1 drivers
v0x1fa9790_4 .net v0x1fa9790 4, 0 0, L_0x1fc8670; 1 drivers
v0x1fa9790_5 .net v0x1fa9790 5, 0 0, L_0x1fcac90; 1 drivers
v0x1fa9790_6 .net v0x1fa9790 6, 0 0, L_0x1fcd260; 1 drivers
RS_0x2b15dfba0e08 .resolv tri, L_0x1fbd660, L_0x1fbded0, L_0x1fbe7c0, L_0x1fbeff0;
L_0x1fbf4a0 .part/pv RS_0x2b15dfba0e08, 0, 4, 32;
L_0x1fbf540 .part v0x1fa9c80_0, 0, 4;
L_0x1fbf5e0 .part v0x1fa9d20_0, 0, 4;
RS_0x2b15dfba0838 .resolv tri, L_0x1fbfc40, L_0x1fc0500, L_0x1fc0dd0, L_0x1fc1650;
L_0x1fc1bd0 .part/pv RS_0x2b15dfba0838, 4, 4, 32;
L_0x1fc1c70 .part v0x1fa9c80_0, 4, 4;
L_0x1fc1d10 .part v0x1fa9d20_0, 4, 4;
RS_0x2b15dfba0268 .resolv tri, L_0x1fc21f0, L_0x1fc2ab0, L_0x1fc3380, L_0x1fc3c00;
L_0x1fc4180 .part/pv RS_0x2b15dfba0268, 8, 4, 32;
L_0x1fc42b0 .part v0x1fa9c80_0, 8, 4;
L_0x1fc43e0 .part v0x1fa9d20_0, 8, 4;
RS_0x2b15dfb9fc98 .resolv tri, L_0x1fc4900, L_0x1fc5120, L_0x1fc59f0, L_0x1fc6270;
L_0x1fc67f0 .part/pv RS_0x2b15dfb9fc98, 12, 4, 32;
L_0x1fc6890 .part v0x1fa9c80_0, 12, 4;
L_0x1fc6930 .part v0x1fa9d20_0, 12, 4;
RS_0x2b15dfb9f6c8 .resolv tri, L_0x1fc6e70, L_0x1fc76e0, L_0x1fc7fb0, L_0x1fc8830;
L_0x1fc8db0 .part/pv RS_0x2b15dfb9f6c8, 16, 4, 32;
L_0x1fc8e50 .part v0x1fa9c80_0, 16, 4;
L_0x1fc8f70 .part v0x1fa9d20_0, 16, 4;
RS_0x2b15dfb9f0f8 .resolv tri, L_0x1fc9440, L_0x1fc9d00, L_0x1fca5d0, L_0x1fcae50;
L_0x1fcb360 .part/pv RS_0x2b15dfb9f0f8, 20, 4, 32;
L_0x1fcb490 .part v0x1fa9c80_0, 20, 4;
L_0x1fcb530 .part v0x1fa9d20_0, 20, 4;
RS_0x2b15dfb9eb28 .resolv tri, L_0x1fcba10, L_0x1fcc2d0, L_0x1fccba0, L_0x1fcd420;
L_0x1fcd9a0 .part/pv RS_0x2b15dfb9eb28, 24, 4, 32;
L_0x1fcdb50 .part v0x1fa9c80_0, 24, 4;
L_0x1fcb5d0 .part v0x1fa9d20_0, 24, 4;
RS_0x2b15dfb9e558 .resolv tri, L_0x1fce160, L_0x1fcea20, L_0x1fcf2f0, L_0x1fcfbb0;
L_0x1fd0130 .part/pv RS_0x2b15dfb9e558, 28, 4, 32;
L_0x1fcdd00 .part v0x1fa9c80_0, 28, 4;
L_0x1fd0290 .part v0x1fa9d20_0, 28, 4;
S_0x1fa7650 .scope module, "f40" "CompAdder4bit" 2 60, 2 31, S_0x1f9a620;
 .timescale -9 -12;
v0x1fa8ff0_0 .net "a", 3 0, L_0x1fbf540; 1 drivers
v0x1fa90b0_0 .net "b", 3 0, L_0x1fbf5e0; 1 drivers
v0x1fa9150_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x1fa91d0_0 .alias "carryout", 0 0, v0x1fa9790_0;
v0x1fa9250_0 .net8 "sum", 3 0, RS_0x2b15dfba0e08; 4 drivers
v0x1fa92d0 .array "temp_cout", 0 2;
v0x1fa92d0_0 .net v0x1fa92d0 0, 0 0, L_0x1fbd590; 1 drivers
v0x1fa92d0_1 .net v0x1fa92d0 1, 0 0, L_0x1fbdd60; 1 drivers
v0x1fa92d0_2 .net v0x1fa92d0 2, 0 0, L_0x1fbe630; 1 drivers
L_0x1fbd660 .part/pv L_0x1fb3810, 0, 1, 4;
L_0x1fbd700 .part L_0x1fbf540, 0, 1;
L_0x1fbd830 .part L_0x1fbf5e0, 0, 1;
L_0x1fbded0 .part/pv L_0x1fbd960, 1, 1, 4;
L_0x1fbdfc0 .part L_0x1fbf540, 1, 1;
L_0x1fbe0f0 .part L_0x1fbf5e0, 1, 1;
L_0x1fbe7c0 .part/pv L_0x1fbe260, 2, 1, 4;
L_0x1fbe860 .part L_0x1fbf540, 2, 1;
L_0x1fbe990 .part L_0x1fbf5e0, 2, 1;
L_0x1fbeff0 .part/pv L_0x1fbeac0, 3, 1, 4;
L_0x1fbf120 .part L_0x1fbf540, 3, 1;
L_0x1fbf2e0 .part L_0x1fbf5e0, 3, 1;
S_0x1fa89f0 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1fa7650;
 .timescale -9 -12;
L_0x1fb3810/d .functor XOR 1, L_0x1fbd700, L_0x1fbd830, C4<0>, C4<0>;
L_0x1fb3810 .delay (30000,30000,30000) L_0x1fb3810/d;
L_0x1fbcf20/d .functor AND 1, L_0x1fbd700, L_0x1fbd830, C4<1>, C4<1>;
L_0x1fbcf20 .delay (20000,20000,20000) L_0x1fbcf20/d;
L_0x1fbd370/d .functor AND 1, L_0x1fbd700, C4<0>, C4<1>, C4<1>;
L_0x1fbd370 .delay (20000,20000,20000) L_0x1fbd370/d;
L_0x1fbd410/d .functor AND 1, L_0x1fbd830, C4<0>, C4<1>, C4<1>;
L_0x1fbd410 .delay (20000,20000,20000) L_0x1fbd410/d;
L_0x1fbd590/d .functor OR 1, L_0x1fbcf20, L_0x1fbd370, L_0x1fbd410, C4<0>;
L_0x1fbd590 .delay (20000,20000,20000) L_0x1fbd590/d;
v0x1fa8ae0_0 .net "AandB", 0 0, L_0x1fbcf20; 1 drivers
v0x1fa8ba0_0 .net "AandC", 0 0, L_0x1fbd370; 1 drivers
v0x1fa8c40_0 .net "BandC", 0 0, L_0x1fbd410; 1 drivers
v0x1fa8ce0_0 .net "a", 0 0, L_0x1fbd700; 1 drivers
v0x1fa8d60_0 .net "b", 0 0, L_0x1fbd830; 1 drivers
v0x1fa8e00_0 .alias "carryin", 0 0, v0x1fa9150_0;
v0x1fa8ea0_0 .alias "carryout", 0 0, v0x1fa92d0_0;
v0x1fa8f20_0 .net "sum", 0 0, L_0x1fb3810; 1 drivers
S_0x1fa83f0 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1fa7650;
 .timescale -9 -12;
L_0x1fbd960/d .functor XOR 1, L_0x1fbdfc0, L_0x1fbe0f0, L_0x1fbd590, C4<0>;
L_0x1fbd960 .delay (30000,30000,30000) L_0x1fbd960/d;
L_0x1fbdb20/d .functor AND 1, L_0x1fbdfc0, L_0x1fbe0f0, C4<1>, C4<1>;
L_0x1fbdb20 .delay (20000,20000,20000) L_0x1fbdb20/d;
L_0x1fbdbf0/d .functor AND 1, L_0x1fbdfc0, L_0x1fbd590, C4<1>, C4<1>;
L_0x1fbdbf0 .delay (20000,20000,20000) L_0x1fbdbf0/d;
L_0x1fbdc90/d .functor AND 1, L_0x1fbe0f0, L_0x1fbd590, C4<1>, C4<1>;
L_0x1fbdc90 .delay (20000,20000,20000) L_0x1fbdc90/d;
L_0x1fbdd60/d .functor OR 1, L_0x1fbdb20, L_0x1fbdbf0, L_0x1fbdc90, C4<0>;
L_0x1fbdd60 .delay (20000,20000,20000) L_0x1fbdd60/d;
v0x1fa84e0_0 .net "AandB", 0 0, L_0x1fbdb20; 1 drivers
v0x1fa85a0_0 .net "AandC", 0 0, L_0x1fbdbf0; 1 drivers
v0x1fa8640_0 .net "BandC", 0 0, L_0x1fbdc90; 1 drivers
v0x1fa86e0_0 .net "a", 0 0, L_0x1fbdfc0; 1 drivers
v0x1fa8760_0 .net "b", 0 0, L_0x1fbe0f0; 1 drivers
v0x1fa8800_0 .alias "carryin", 0 0, v0x1fa92d0_0;
v0x1fa88a0_0 .alias "carryout", 0 0, v0x1fa92d0_1;
v0x1fa8920_0 .net "sum", 0 0, L_0x1fbd960; 1 drivers
S_0x1fa7df0 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1fa7650;
 .timescale -9 -12;
L_0x1fbe260/d .functor XOR 1, L_0x1fbe860, L_0x1fbe990, L_0x1fbdd60, C4<0>;
L_0x1fbe260 .delay (30000,30000,30000) L_0x1fbe260/d;
L_0x1fbe390/d .functor AND 1, L_0x1fbe860, L_0x1fbe990, C4<1>, C4<1>;
L_0x1fbe390 .delay (20000,20000,20000) L_0x1fbe390/d;
L_0x1fbe4d0/d .functor AND 1, L_0x1fbe860, L_0x1fbdd60, C4<1>, C4<1>;
L_0x1fbe4d0 .delay (20000,20000,20000) L_0x1fbe4d0/d;
L_0x1fbe570/d .functor AND 1, L_0x1fbe990, L_0x1fbdd60, C4<1>, C4<1>;
L_0x1fbe570 .delay (20000,20000,20000) L_0x1fbe570/d;
L_0x1fbe630/d .functor OR 1, L_0x1fbe390, L_0x1fbe4d0, L_0x1fbe570, C4<0>;
L_0x1fbe630 .delay (20000,20000,20000) L_0x1fbe630/d;
v0x1fa7ee0_0 .net "AandB", 0 0, L_0x1fbe390; 1 drivers
v0x1fa7fa0_0 .net "AandC", 0 0, L_0x1fbe4d0; 1 drivers
v0x1fa8040_0 .net "BandC", 0 0, L_0x1fbe570; 1 drivers
v0x1fa80e0_0 .net "a", 0 0, L_0x1fbe860; 1 drivers
v0x1fa8160_0 .net "b", 0 0, L_0x1fbe990; 1 drivers
v0x1fa8200_0 .alias "carryin", 0 0, v0x1fa92d0_1;
v0x1fa82a0_0 .alias "carryout", 0 0, v0x1fa92d0_2;
v0x1fa8320_0 .net "sum", 0 0, L_0x1fbe260; 1 drivers
S_0x1fa7740 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1fa7650;
 .timescale -9 -12;
L_0x1fbeac0/d .functor XOR 1, L_0x1fbf120, L_0x1fbf2e0, L_0x1fbe630, C4<0>;
L_0x1fbeac0 .delay (30000,30000,30000) L_0x1fbeac0/d;
L_0x1fbebb0/d .functor AND 1, L_0x1fbf120, L_0x1fbf2e0, C4<1>, C4<1>;
L_0x1fbebb0 .delay (20000,20000,20000) L_0x1fbebb0/d;
L_0x1fbecd0/d .functor AND 1, L_0x1fbf120, L_0x1fbe630, C4<1>, C4<1>;
L_0x1fbecd0 .delay (20000,20000,20000) L_0x1fbecd0/d;
L_0x1fbed90/d .functor AND 1, L_0x1fbf2e0, L_0x1fbe630, C4<1>, C4<1>;
L_0x1fbed90 .delay (20000,20000,20000) L_0x1fbed90/d;
L_0x1fbee80/d .functor OR 1, L_0x1fbebb0, L_0x1fbecd0, L_0x1fbed90, C4<0>;
L_0x1fbee80 .delay (20000,20000,20000) L_0x1fbee80/d;
v0x1fa7830_0 .net "AandB", 0 0, L_0x1fbebb0; 1 drivers
v0x1fa78f0_0 .net "AandC", 0 0, L_0x1fbecd0; 1 drivers
v0x1fa7990_0 .net "BandC", 0 0, L_0x1fbed90; 1 drivers
v0x1fa7a30_0 .net "a", 0 0, L_0x1fbf120; 1 drivers
v0x1fa7ab0_0 .net "b", 0 0, L_0x1fbf2e0; 1 drivers
v0x1fa7b50_0 .alias "carryin", 0 0, v0x1fa92d0_2;
v0x1fa7c30_0 .alias "carryout", 0 0, v0x1fa9790_0;
v0x1fa7d00_0 .net "sum", 0 0, L_0x1fbeac0; 1 drivers
S_0x1fa5860 .scope module, "f41" "CompAdder4bit" 2 61, 2 31, S_0x1f9a620;
 .timescale -9 -12;
v0x1fa7200_0 .net "a", 3 0, L_0x1fc1c70; 1 drivers
v0x1fa72c0_0 .net "b", 3 0, L_0x1fc1d10; 1 drivers
v0x1fa7360_0 .alias "carryin", 0 0, v0x1fa9790_0;
v0x1fa73e0_0 .alias "carryout", 0 0, v0x1fa9790_1;
v0x1fa7460_0 .net8 "sum", 3 0, RS_0x2b15dfba0838; 4 drivers
v0x1fa74e0 .array "temp_cout", 0 2;
v0x1fa74e0_0 .net v0x1fa74e0 0, 0 0, L_0x1fbfa80; 1 drivers
v0x1fa74e0_1 .net v0x1fa74e0 1, 0 0, L_0x1fc0340; 1 drivers
v0x1fa74e0_2 .net v0x1fa74e0 2, 0 0, L_0x1fc0c40; 1 drivers
L_0x1fbfc40 .part/pv L_0x1fbf6c0, 0, 1, 4;
L_0x1fbfce0 .part L_0x1fc1c70, 0, 1;
L_0x1fbfe10 .part L_0x1fc1d10, 0, 1;
L_0x1fc0500 .part/pv L_0x1fbff40, 1, 1, 4;
L_0x1fc05f0 .part L_0x1fc1c70, 1, 1;
L_0x1fc0720 .part L_0x1fc1d10, 1, 1;
L_0x1fc0dd0 .part/pv L_0x1fc0890, 2, 1, 4;
L_0x1fc0e70 .part L_0x1fc1c70, 2, 1;
L_0x1fc0fa0 .part L_0x1fc1d10, 2, 1;
L_0x1fc1650 .part/pv L_0x1fc10d0, 3, 1, 4;
L_0x1fc17e0 .part L_0x1fc1c70, 3, 1;
L_0x1fc19a0 .part L_0x1fc1d10, 3, 1;
S_0x1fa6c00 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1fa5860;
 .timescale -9 -12;
L_0x1fbf6c0/d .functor XOR 1, L_0x1fbfce0, L_0x1fbfe10, L_0x1fbee80, C4<0>;
L_0x1fbf6c0 .delay (30000,30000,30000) L_0x1fbf6c0/d;
L_0x1fbf760/d .functor AND 1, L_0x1fbfce0, L_0x1fbfe10, C4<1>, C4<1>;
L_0x1fbf760 .delay (20000,20000,20000) L_0x1fbf760/d;
L_0x1fbf850/d .functor AND 1, L_0x1fbfce0, L_0x1fbee80, C4<1>, C4<1>;
L_0x1fbf850 .delay (20000,20000,20000) L_0x1fbf850/d;
L_0x1fbf8f0/d .functor AND 1, L_0x1fbfe10, L_0x1fbee80, C4<1>, C4<1>;
L_0x1fbf8f0 .delay (20000,20000,20000) L_0x1fbf8f0/d;
L_0x1fbfa80/d .functor OR 1, L_0x1fbf760, L_0x1fbf850, L_0x1fbf8f0, C4<0>;
L_0x1fbfa80 .delay (20000,20000,20000) L_0x1fbfa80/d;
v0x1fa6cf0_0 .net "AandB", 0 0, L_0x1fbf760; 1 drivers
v0x1fa6db0_0 .net "AandC", 0 0, L_0x1fbf850; 1 drivers
v0x1fa6e50_0 .net "BandC", 0 0, L_0x1fbf8f0; 1 drivers
v0x1fa6ef0_0 .net "a", 0 0, L_0x1fbfce0; 1 drivers
v0x1fa6f70_0 .net "b", 0 0, L_0x1fbfe10; 1 drivers
v0x1fa7010_0 .alias "carryin", 0 0, v0x1fa9790_0;
v0x1fa70b0_0 .alias "carryout", 0 0, v0x1fa74e0_0;
v0x1fa7130_0 .net "sum", 0 0, L_0x1fbf6c0; 1 drivers
S_0x1fa6600 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1fa5860;
 .timescale -9 -12;
L_0x1fbff40/d .functor XOR 1, L_0x1fc05f0, L_0x1fc0720, L_0x1fbfa80, C4<0>;
L_0x1fbff40 .delay (30000,30000,30000) L_0x1fbff40/d;
L_0x1fc0100/d .functor AND 1, L_0x1fc05f0, L_0x1fc0720, C4<1>, C4<1>;
L_0x1fc0100 .delay (20000,20000,20000) L_0x1fc0100/d;
L_0x1fc01d0/d .functor AND 1, L_0x1fc05f0, L_0x1fbfa80, C4<1>, C4<1>;
L_0x1fc01d0 .delay (20000,20000,20000) L_0x1fc01d0/d;
L_0x1fc0270/d .functor AND 1, L_0x1fc0720, L_0x1fbfa80, C4<1>, C4<1>;
L_0x1fc0270 .delay (20000,20000,20000) L_0x1fc0270/d;
L_0x1fc0340/d .functor OR 1, L_0x1fc0100, L_0x1fc01d0, L_0x1fc0270, C4<0>;
L_0x1fc0340 .delay (20000,20000,20000) L_0x1fc0340/d;
v0x1fa66f0_0 .net "AandB", 0 0, L_0x1fc0100; 1 drivers
v0x1fa67b0_0 .net "AandC", 0 0, L_0x1fc01d0; 1 drivers
v0x1fa6850_0 .net "BandC", 0 0, L_0x1fc0270; 1 drivers
v0x1fa68f0_0 .net "a", 0 0, L_0x1fc05f0; 1 drivers
v0x1fa6970_0 .net "b", 0 0, L_0x1fc0720; 1 drivers
v0x1fa6a10_0 .alias "carryin", 0 0, v0x1fa74e0_0;
v0x1fa6ab0_0 .alias "carryout", 0 0, v0x1fa74e0_1;
v0x1fa6b30_0 .net "sum", 0 0, L_0x1fbff40; 1 drivers
S_0x1fa6000 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1fa5860;
 .timescale -9 -12;
L_0x1fc0890/d .functor XOR 1, L_0x1fc0e70, L_0x1fc0fa0, L_0x1fc0340, C4<0>;
L_0x1fc0890 .delay (30000,30000,30000) L_0x1fc0890/d;
L_0x1fc09c0/d .functor AND 1, L_0x1fc0e70, L_0x1fc0fa0, C4<1>, C4<1>;
L_0x1fc09c0 .delay (20000,20000,20000) L_0x1fc09c0/d;
L_0x1fc0b00/d .functor AND 1, L_0x1fc0e70, L_0x1fc0340, C4<1>, C4<1>;
L_0x1fc0b00 .delay (20000,20000,20000) L_0x1fc0b00/d;
L_0x1fc0ba0/d .functor AND 1, L_0x1fc0fa0, L_0x1fc0340, C4<1>, C4<1>;
L_0x1fc0ba0 .delay (20000,20000,20000) L_0x1fc0ba0/d;
L_0x1fc0c40/d .functor OR 1, L_0x1fc09c0, L_0x1fc0b00, L_0x1fc0ba0, C4<0>;
L_0x1fc0c40 .delay (20000,20000,20000) L_0x1fc0c40/d;
v0x1fa60f0_0 .net "AandB", 0 0, L_0x1fc09c0; 1 drivers
v0x1fa61b0_0 .net "AandC", 0 0, L_0x1fc0b00; 1 drivers
v0x1fa6250_0 .net "BandC", 0 0, L_0x1fc0ba0; 1 drivers
v0x1fa62f0_0 .net "a", 0 0, L_0x1fc0e70; 1 drivers
v0x1fa6370_0 .net "b", 0 0, L_0x1fc0fa0; 1 drivers
v0x1fa6410_0 .alias "carryin", 0 0, v0x1fa74e0_1;
v0x1fa64b0_0 .alias "carryout", 0 0, v0x1fa74e0_2;
v0x1fa6530_0 .net "sum", 0 0, L_0x1fc0890; 1 drivers
S_0x1fa5950 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1fa5860;
 .timescale -9 -12;
L_0x1fc10d0/d .functor XOR 1, L_0x1fc17e0, L_0x1fc19a0, L_0x1fc0c40, C4<0>;
L_0x1fc10d0 .delay (30000,30000,30000) L_0x1fc10d0/d;
L_0x1fc11c0/d .functor AND 1, L_0x1fc17e0, L_0x1fc19a0, C4<1>, C4<1>;
L_0x1fc11c0 .delay (20000,20000,20000) L_0x1fc11c0/d;
L_0x1fc12e0/d .functor AND 1, L_0x1fc17e0, L_0x1fc0c40, C4<1>, C4<1>;
L_0x1fc12e0 .delay (20000,20000,20000) L_0x1fc12e0/d;
L_0x1fc13a0/d .functor AND 1, L_0x1fc19a0, L_0x1fc0c40, C4<1>, C4<1>;
L_0x1fc13a0 .delay (20000,20000,20000) L_0x1fc13a0/d;
L_0x1fc1490/d .functor OR 1, L_0x1fc11c0, L_0x1fc12e0, L_0x1fc13a0, C4<0>;
L_0x1fc1490 .delay (20000,20000,20000) L_0x1fc1490/d;
v0x1fa5a40_0 .net "AandB", 0 0, L_0x1fc11c0; 1 drivers
v0x1fa5b00_0 .net "AandC", 0 0, L_0x1fc12e0; 1 drivers
v0x1fa5ba0_0 .net "BandC", 0 0, L_0x1fc13a0; 1 drivers
v0x1fa5c40_0 .net "a", 0 0, L_0x1fc17e0; 1 drivers
v0x1fa5cc0_0 .net "b", 0 0, L_0x1fc19a0; 1 drivers
v0x1fa5d60_0 .alias "carryin", 0 0, v0x1fa74e0_2;
v0x1fa5e40_0 .alias "carryout", 0 0, v0x1fa9790_1;
v0x1fa5f10_0 .net "sum", 0 0, L_0x1fc10d0; 1 drivers
S_0x1fa3a70 .scope module, "f42" "CompAdder4bit" 2 62, 2 31, S_0x1f9a620;
 .timescale -9 -12;
v0x1fa5410_0 .net "a", 3 0, L_0x1fc42b0; 1 drivers
v0x1fa54d0_0 .net "b", 3 0, L_0x1fc43e0; 1 drivers
v0x1fa5570_0 .alias "carryin", 0 0, v0x1fa9790_1;
v0x1fa55f0_0 .alias "carryout", 0 0, v0x1fa9790_2;
v0x1fa5670_0 .net8 "sum", 3 0, RS_0x2b15dfba0268; 4 drivers
v0x1fa56f0 .array "temp_cout", 0 2;
v0x1fa56f0_0 .net v0x1fa56f0 0, 0 0, L_0x1fc2120; 1 drivers
v0x1fa56f0_1 .net v0x1fa56f0 1, 0 0, L_0x1fc28f0; 1 drivers
v0x1fa56f0_2 .net v0x1fa56f0 2, 0 0, L_0x1fc31f0; 1 drivers
L_0x1fc21f0 .part/pv L_0x1fc1780, 0, 1, 4;
L_0x1fc2290 .part L_0x1fc42b0, 0, 1;
L_0x1fc23c0 .part L_0x1fc43e0, 0, 1;
L_0x1fc2ab0 .part/pv L_0x1fc24f0, 1, 1, 4;
L_0x1fc2ba0 .part L_0x1fc42b0, 1, 1;
L_0x1fc2cd0 .part L_0x1fc43e0, 1, 1;
L_0x1fc3380 .part/pv L_0x1fc2e40, 2, 1, 4;
L_0x1fc3420 .part L_0x1fc42b0, 2, 1;
L_0x1fc3550 .part L_0x1fc43e0, 2, 1;
L_0x1fc3c00 .part/pv L_0x1fc3680, 3, 1, 4;
L_0x1fc3d90 .part L_0x1fc42b0, 3, 1;
L_0x1fc3f50 .part L_0x1fc43e0, 3, 1;
S_0x1fa4e10 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1fa3a70;
 .timescale -9 -12;
L_0x1fc1780/d .functor XOR 1, L_0x1fc2290, L_0x1fc23c0, L_0x1fc1490, C4<0>;
L_0x1fc1780 .delay (30000,30000,30000) L_0x1fc1780/d;
L_0x1fc1e30/d .functor AND 1, L_0x1fc2290, L_0x1fc23c0, C4<1>, C4<1>;
L_0x1fc1e30 .delay (20000,20000,20000) L_0x1fc1e30/d;
L_0x1fc1ed0/d .functor AND 1, L_0x1fc2290, L_0x1fc1490, C4<1>, C4<1>;
L_0x1fc1ed0 .delay (20000,20000,20000) L_0x1fc1ed0/d;
L_0x1fc1f90/d .functor AND 1, L_0x1fc23c0, L_0x1fc1490, C4<1>, C4<1>;
L_0x1fc1f90 .delay (20000,20000,20000) L_0x1fc1f90/d;
L_0x1fc2120/d .functor OR 1, L_0x1fc1e30, L_0x1fc1ed0, L_0x1fc1f90, C4<0>;
L_0x1fc2120 .delay (20000,20000,20000) L_0x1fc2120/d;
v0x1fa4f00_0 .net "AandB", 0 0, L_0x1fc1e30; 1 drivers
v0x1fa4fc0_0 .net "AandC", 0 0, L_0x1fc1ed0; 1 drivers
v0x1fa5060_0 .net "BandC", 0 0, L_0x1fc1f90; 1 drivers
v0x1fa5100_0 .net "a", 0 0, L_0x1fc2290; 1 drivers
v0x1fa5180_0 .net "b", 0 0, L_0x1fc23c0; 1 drivers
v0x1fa5220_0 .alias "carryin", 0 0, v0x1fa9790_1;
v0x1fa52c0_0 .alias "carryout", 0 0, v0x1fa56f0_0;
v0x1fa5340_0 .net "sum", 0 0, L_0x1fc1780; 1 drivers
S_0x1fa4810 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1fa3a70;
 .timescale -9 -12;
L_0x1fc24f0/d .functor XOR 1, L_0x1fc2ba0, L_0x1fc2cd0, L_0x1fc2120, C4<0>;
L_0x1fc24f0 .delay (30000,30000,30000) L_0x1fc24f0/d;
L_0x1fc26b0/d .functor AND 1, L_0x1fc2ba0, L_0x1fc2cd0, C4<1>, C4<1>;
L_0x1fc26b0 .delay (20000,20000,20000) L_0x1fc26b0/d;
L_0x1fc2780/d .functor AND 1, L_0x1fc2ba0, L_0x1fc2120, C4<1>, C4<1>;
L_0x1fc2780 .delay (20000,20000,20000) L_0x1fc2780/d;
L_0x1fc2820/d .functor AND 1, L_0x1fc2cd0, L_0x1fc2120, C4<1>, C4<1>;
L_0x1fc2820 .delay (20000,20000,20000) L_0x1fc2820/d;
L_0x1fc28f0/d .functor OR 1, L_0x1fc26b0, L_0x1fc2780, L_0x1fc2820, C4<0>;
L_0x1fc28f0 .delay (20000,20000,20000) L_0x1fc28f0/d;
v0x1fa4900_0 .net "AandB", 0 0, L_0x1fc26b0; 1 drivers
v0x1fa49c0_0 .net "AandC", 0 0, L_0x1fc2780; 1 drivers
v0x1fa4a60_0 .net "BandC", 0 0, L_0x1fc2820; 1 drivers
v0x1fa4b00_0 .net "a", 0 0, L_0x1fc2ba0; 1 drivers
v0x1fa4b80_0 .net "b", 0 0, L_0x1fc2cd0; 1 drivers
v0x1fa4c20_0 .alias "carryin", 0 0, v0x1fa56f0_0;
v0x1fa4cc0_0 .alias "carryout", 0 0, v0x1fa56f0_1;
v0x1fa4d40_0 .net "sum", 0 0, L_0x1fc24f0; 1 drivers
S_0x1fa4210 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1fa3a70;
 .timescale -9 -12;
L_0x1fc2e40/d .functor XOR 1, L_0x1fc3420, L_0x1fc3550, L_0x1fc28f0, C4<0>;
L_0x1fc2e40 .delay (30000,30000,30000) L_0x1fc2e40/d;
L_0x1fc2f70/d .functor AND 1, L_0x1fc3420, L_0x1fc3550, C4<1>, C4<1>;
L_0x1fc2f70 .delay (20000,20000,20000) L_0x1fc2f70/d;
L_0x1fc30b0/d .functor AND 1, L_0x1fc3420, L_0x1fc28f0, C4<1>, C4<1>;
L_0x1fc30b0 .delay (20000,20000,20000) L_0x1fc30b0/d;
L_0x1fc3150/d .functor AND 1, L_0x1fc3550, L_0x1fc28f0, C4<1>, C4<1>;
L_0x1fc3150 .delay (20000,20000,20000) L_0x1fc3150/d;
L_0x1fc31f0/d .functor OR 1, L_0x1fc2f70, L_0x1fc30b0, L_0x1fc3150, C4<0>;
L_0x1fc31f0 .delay (20000,20000,20000) L_0x1fc31f0/d;
v0x1fa4300_0 .net "AandB", 0 0, L_0x1fc2f70; 1 drivers
v0x1fa43c0_0 .net "AandC", 0 0, L_0x1fc30b0; 1 drivers
v0x1fa4460_0 .net "BandC", 0 0, L_0x1fc3150; 1 drivers
v0x1fa4500_0 .net "a", 0 0, L_0x1fc3420; 1 drivers
v0x1fa4580_0 .net "b", 0 0, L_0x1fc3550; 1 drivers
v0x1fa4620_0 .alias "carryin", 0 0, v0x1fa56f0_1;
v0x1fa46c0_0 .alias "carryout", 0 0, v0x1fa56f0_2;
v0x1fa4740_0 .net "sum", 0 0, L_0x1fc2e40; 1 drivers
S_0x1fa3b60 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1fa3a70;
 .timescale -9 -12;
L_0x1fc3680/d .functor XOR 1, L_0x1fc3d90, L_0x1fc3f50, L_0x1fc31f0, C4<0>;
L_0x1fc3680 .delay (30000,30000,30000) L_0x1fc3680/d;
L_0x1fc3770/d .functor AND 1, L_0x1fc3d90, L_0x1fc3f50, C4<1>, C4<1>;
L_0x1fc3770 .delay (20000,20000,20000) L_0x1fc3770/d;
L_0x1fc3890/d .functor AND 1, L_0x1fc3d90, L_0x1fc31f0, C4<1>, C4<1>;
L_0x1fc3890 .delay (20000,20000,20000) L_0x1fc3890/d;
L_0x1fc3950/d .functor AND 1, L_0x1fc3f50, L_0x1fc31f0, C4<1>, C4<1>;
L_0x1fc3950 .delay (20000,20000,20000) L_0x1fc3950/d;
L_0x1fc3a40/d .functor OR 1, L_0x1fc3770, L_0x1fc3890, L_0x1fc3950, C4<0>;
L_0x1fc3a40 .delay (20000,20000,20000) L_0x1fc3a40/d;
v0x1fa3c50_0 .net "AandB", 0 0, L_0x1fc3770; 1 drivers
v0x1fa3d10_0 .net "AandC", 0 0, L_0x1fc3890; 1 drivers
v0x1fa3db0_0 .net "BandC", 0 0, L_0x1fc3950; 1 drivers
v0x1fa3e50_0 .net "a", 0 0, L_0x1fc3d90; 1 drivers
v0x1fa3ed0_0 .net "b", 0 0, L_0x1fc3f50; 1 drivers
v0x1fa3f70_0 .alias "carryin", 0 0, v0x1fa56f0_2;
v0x1fa4050_0 .alias "carryout", 0 0, v0x1fa9790_2;
v0x1fa4120_0 .net "sum", 0 0, L_0x1fc3680; 1 drivers
S_0x1fa1c80 .scope module, "f43" "CompAdder4bit" 2 63, 2 31, S_0x1f9a620;
 .timescale -9 -12;
v0x1fa3620_0 .net "a", 3 0, L_0x1fc6890; 1 drivers
v0x1fa36e0_0 .net "b", 3 0, L_0x1fc6930; 1 drivers
v0x1fa3780_0 .alias "carryin", 0 0, v0x1fa9790_2;
v0x1fa3800_0 .alias "carryout", 0 0, v0x1fa9790_3;
v0x1fa3880_0 .net8 "sum", 3 0, RS_0x2b15dfb9fc98; 4 drivers
v0x1fa3900 .array "temp_cout", 0 2;
v0x1fa3900_0 .net v0x1fa3900 0, 0 0, L_0x1fc4830; 1 drivers
v0x1fa3900_1 .net v0x1fa3900 1, 0 0, L_0x1fc5000; 1 drivers
v0x1fa3900_2 .net v0x1fa3900 2, 0 0, L_0x1fc5860; 1 drivers
L_0x1fc4900 .part/pv L_0x1fc3d30, 0, 1, 4;
L_0x1fc49a0 .part L_0x1fc6890, 0, 1;
L_0x1fc4ad0 .part L_0x1fc6930, 0, 1;
L_0x1fc5120 .part/pv L_0x1fc4c00, 1, 1, 4;
L_0x1fc5210 .part L_0x1fc6890, 1, 1;
L_0x1fc5340 .part L_0x1fc6930, 1, 1;
L_0x1fc59f0 .part/pv L_0x1fc54b0, 2, 1, 4;
L_0x1fc5a90 .part L_0x1fc6890, 2, 1;
L_0x1fc5bc0 .part L_0x1fc6930, 2, 1;
L_0x1fc6270 .part/pv L_0x1fc5cf0, 3, 1, 4;
L_0x1fc6400 .part L_0x1fc6890, 3, 1;
L_0x1fc65c0 .part L_0x1fc6930, 3, 1;
S_0x1fa3020 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1fa1c80;
 .timescale -9 -12;
L_0x1fc3d30/d .functor XOR 1, L_0x1fc49a0, L_0x1fc4ad0, L_0x1fc3a40, C4<0>;
L_0x1fc3d30 .delay (30000,30000,30000) L_0x1fc3d30/d;
L_0x1fc4510/d .functor AND 1, L_0x1fc49a0, L_0x1fc4ad0, C4<1>, C4<1>;
L_0x1fc4510 .delay (20000,20000,20000) L_0x1fc4510/d;
L_0x1fc45e0/d .functor AND 1, L_0x1fc49a0, L_0x1fc3a40, C4<1>, C4<1>;
L_0x1fc45e0 .delay (20000,20000,20000) L_0x1fc45e0/d;
L_0x1fc46a0/d .functor AND 1, L_0x1fc4ad0, L_0x1fc3a40, C4<1>, C4<1>;
L_0x1fc46a0 .delay (20000,20000,20000) L_0x1fc46a0/d;
L_0x1fc4830/d .functor OR 1, L_0x1fc4510, L_0x1fc45e0, L_0x1fc46a0, C4<0>;
L_0x1fc4830 .delay (20000,20000,20000) L_0x1fc4830/d;
v0x1fa3110_0 .net "AandB", 0 0, L_0x1fc4510; 1 drivers
v0x1fa31d0_0 .net "AandC", 0 0, L_0x1fc45e0; 1 drivers
v0x1fa3270_0 .net "BandC", 0 0, L_0x1fc46a0; 1 drivers
v0x1fa3310_0 .net "a", 0 0, L_0x1fc49a0; 1 drivers
v0x1fa3390_0 .net "b", 0 0, L_0x1fc4ad0; 1 drivers
v0x1fa3430_0 .alias "carryin", 0 0, v0x1fa9790_2;
v0x1fa34d0_0 .alias "carryout", 0 0, v0x1fa3900_0;
v0x1fa3550_0 .net "sum", 0 0, L_0x1fc3d30; 1 drivers
S_0x1fa2a20 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1fa1c80;
 .timescale -9 -12;
L_0x1fc4c00/d .functor XOR 1, L_0x1fc5210, L_0x1fc5340, L_0x1fc4830, C4<0>;
L_0x1fc4c00 .delay (30000,30000,30000) L_0x1fc4c00/d;
L_0x1fc4dc0/d .functor AND 1, L_0x1fc5210, L_0x1fc5340, C4<1>, C4<1>;
L_0x1fc4dc0 .delay (20000,20000,20000) L_0x1fc4dc0/d;
L_0x1fc4e90/d .functor AND 1, L_0x1fc5210, L_0x1fc4830, C4<1>, C4<1>;
L_0x1fc4e90 .delay (20000,20000,20000) L_0x1fc4e90/d;
L_0x1fc4f30/d .functor AND 1, L_0x1fc5340, L_0x1fc4830, C4<1>, C4<1>;
L_0x1fc4f30 .delay (20000,20000,20000) L_0x1fc4f30/d;
L_0x1fc5000/d .functor OR 1, L_0x1fc4dc0, L_0x1fc4e90, L_0x1fc4f30, C4<0>;
L_0x1fc5000 .delay (20000,20000,20000) L_0x1fc5000/d;
v0x1fa2b10_0 .net "AandB", 0 0, L_0x1fc4dc0; 1 drivers
v0x1fa2bd0_0 .net "AandC", 0 0, L_0x1fc4e90; 1 drivers
v0x1fa2c70_0 .net "BandC", 0 0, L_0x1fc4f30; 1 drivers
v0x1fa2d10_0 .net "a", 0 0, L_0x1fc5210; 1 drivers
v0x1fa2d90_0 .net "b", 0 0, L_0x1fc5340; 1 drivers
v0x1fa2e30_0 .alias "carryin", 0 0, v0x1fa3900_0;
v0x1fa2ed0_0 .alias "carryout", 0 0, v0x1fa3900_1;
v0x1fa2f50_0 .net "sum", 0 0, L_0x1fc4c00; 1 drivers
S_0x1fa2420 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1fa1c80;
 .timescale -9 -12;
L_0x1fc54b0/d .functor XOR 1, L_0x1fc5a90, L_0x1fc5bc0, L_0x1fc5000, C4<0>;
L_0x1fc54b0 .delay (30000,30000,30000) L_0x1fc54b0/d;
L_0x1fc55e0/d .functor AND 1, L_0x1fc5a90, L_0x1fc5bc0, C4<1>, C4<1>;
L_0x1fc55e0 .delay (20000,20000,20000) L_0x1fc55e0/d;
L_0x1fc5720/d .functor AND 1, L_0x1fc5a90, L_0x1fc5000, C4<1>, C4<1>;
L_0x1fc5720 .delay (20000,20000,20000) L_0x1fc5720/d;
L_0x1fc57c0/d .functor AND 1, L_0x1fc5bc0, L_0x1fc5000, C4<1>, C4<1>;
L_0x1fc57c0 .delay (20000,20000,20000) L_0x1fc57c0/d;
L_0x1fc5860/d .functor OR 1, L_0x1fc55e0, L_0x1fc5720, L_0x1fc57c0, C4<0>;
L_0x1fc5860 .delay (20000,20000,20000) L_0x1fc5860/d;
v0x1fa2510_0 .net "AandB", 0 0, L_0x1fc55e0; 1 drivers
v0x1fa25d0_0 .net "AandC", 0 0, L_0x1fc5720; 1 drivers
v0x1fa2670_0 .net "BandC", 0 0, L_0x1fc57c0; 1 drivers
v0x1fa2710_0 .net "a", 0 0, L_0x1fc5a90; 1 drivers
v0x1fa2790_0 .net "b", 0 0, L_0x1fc5bc0; 1 drivers
v0x1fa2830_0 .alias "carryin", 0 0, v0x1fa3900_1;
v0x1fa28d0_0 .alias "carryout", 0 0, v0x1fa3900_2;
v0x1fa2950_0 .net "sum", 0 0, L_0x1fc54b0; 1 drivers
S_0x1fa1d70 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1fa1c80;
 .timescale -9 -12;
L_0x1fc5cf0/d .functor XOR 1, L_0x1fc6400, L_0x1fc65c0, L_0x1fc5860, C4<0>;
L_0x1fc5cf0 .delay (30000,30000,30000) L_0x1fc5cf0/d;
L_0x1fc5de0/d .functor AND 1, L_0x1fc6400, L_0x1fc65c0, C4<1>, C4<1>;
L_0x1fc5de0 .delay (20000,20000,20000) L_0x1fc5de0/d;
L_0x1fc5f00/d .functor AND 1, L_0x1fc6400, L_0x1fc5860, C4<1>, C4<1>;
L_0x1fc5f00 .delay (20000,20000,20000) L_0x1fc5f00/d;
L_0x1fc5fc0/d .functor AND 1, L_0x1fc65c0, L_0x1fc5860, C4<1>, C4<1>;
L_0x1fc5fc0 .delay (20000,20000,20000) L_0x1fc5fc0/d;
L_0x1fc60b0/d .functor OR 1, L_0x1fc5de0, L_0x1fc5f00, L_0x1fc5fc0, C4<0>;
L_0x1fc60b0 .delay (20000,20000,20000) L_0x1fc60b0/d;
v0x1fa1e60_0 .net "AandB", 0 0, L_0x1fc5de0; 1 drivers
v0x1fa1f20_0 .net "AandC", 0 0, L_0x1fc5f00; 1 drivers
v0x1fa1fc0_0 .net "BandC", 0 0, L_0x1fc5fc0; 1 drivers
v0x1fa2060_0 .net "a", 0 0, L_0x1fc6400; 1 drivers
v0x1fa20e0_0 .net "b", 0 0, L_0x1fc65c0; 1 drivers
v0x1fa2180_0 .alias "carryin", 0 0, v0x1fa3900_2;
v0x1fa2260_0 .alias "carryout", 0 0, v0x1fa9790_3;
v0x1fa2330_0 .net "sum", 0 0, L_0x1fc5cf0; 1 drivers
S_0x1f9fe90 .scope module, "f44" "CompAdder4bit" 2 64, 2 31, S_0x1f9a620;
 .timescale -9 -12;
v0x1fa1830_0 .net "a", 3 0, L_0x1fc8e50; 1 drivers
v0x1fa18f0_0 .net "b", 3 0, L_0x1fc8f70; 1 drivers
v0x1fa1990_0 .alias "carryin", 0 0, v0x1fa9790_3;
v0x1fa1a10_0 .alias "carryout", 0 0, v0x1fa9790_4;
v0x1fa1a90_0 .net8 "sum", 3 0, RS_0x2b15dfb9f6c8; 4 drivers
v0x1fa1b10 .array "temp_cout", 0 2;
v0x1fa1b10_0 .net v0x1fa1b10 0, 0 0, L_0x1fc6da0; 1 drivers
v0x1fa1b10_1 .net v0x1fa1b10 1, 0 0, L_0x1fc7570; 1 drivers
v0x1fa1b10_2 .net v0x1fa1b10 2, 0 0, L_0x1fc7e20; 1 drivers
L_0x1fc6e70 .part/pv L_0x1fc63a0, 0, 1, 4;
L_0x1fc6f10 .part L_0x1fc8e50, 0, 1;
L_0x1fc7040 .part L_0x1fc8f70, 0, 1;
L_0x1fc76e0 .part/pv L_0x1fc7170, 1, 1, 4;
L_0x1fc77d0 .part L_0x1fc8e50, 1, 1;
L_0x1fc7900 .part L_0x1fc8f70, 1, 1;
L_0x1fc7fb0 .part/pv L_0x1fc7a70, 2, 1, 4;
L_0x1fc8050 .part L_0x1fc8e50, 2, 1;
L_0x1fc8180 .part L_0x1fc8f70, 2, 1;
L_0x1fc8830 .part/pv L_0x1fc82b0, 3, 1, 4;
L_0x1fc89c0 .part L_0x1fc8e50, 3, 1;
L_0x1fc8b80 .part L_0x1fc8f70, 3, 1;
S_0x1fa1230 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f9fe90;
 .timescale -9 -12;
L_0x1fc63a0/d .functor XOR 1, L_0x1fc6f10, L_0x1fc7040, L_0x1fc60b0, C4<0>;
L_0x1fc63a0 .delay (30000,30000,30000) L_0x1fc63a0/d;
L_0x1fc6a80/d .functor AND 1, L_0x1fc6f10, L_0x1fc7040, C4<1>, C4<1>;
L_0x1fc6a80 .delay (20000,20000,20000) L_0x1fc6a80/d;
L_0x1fc6b50/d .functor AND 1, L_0x1fc6f10, L_0x1fc60b0, C4<1>, C4<1>;
L_0x1fc6b50 .delay (20000,20000,20000) L_0x1fc6b50/d;
L_0x1fc6c10/d .functor AND 1, L_0x1fc7040, L_0x1fc60b0, C4<1>, C4<1>;
L_0x1fc6c10 .delay (20000,20000,20000) L_0x1fc6c10/d;
L_0x1fc6da0/d .functor OR 1, L_0x1fc6a80, L_0x1fc6b50, L_0x1fc6c10, C4<0>;
L_0x1fc6da0 .delay (20000,20000,20000) L_0x1fc6da0/d;
v0x1fa1320_0 .net "AandB", 0 0, L_0x1fc6a80; 1 drivers
v0x1fa13e0_0 .net "AandC", 0 0, L_0x1fc6b50; 1 drivers
v0x1fa1480_0 .net "BandC", 0 0, L_0x1fc6c10; 1 drivers
v0x1fa1520_0 .net "a", 0 0, L_0x1fc6f10; 1 drivers
v0x1fa15a0_0 .net "b", 0 0, L_0x1fc7040; 1 drivers
v0x1fa1640_0 .alias "carryin", 0 0, v0x1fa9790_3;
v0x1fa16e0_0 .alias "carryout", 0 0, v0x1fa1b10_0;
v0x1fa1760_0 .net "sum", 0 0, L_0x1fc63a0; 1 drivers
S_0x1fa0c30 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f9fe90;
 .timescale -9 -12;
L_0x1fc7170/d .functor XOR 1, L_0x1fc77d0, L_0x1fc7900, L_0x1fc6da0, C4<0>;
L_0x1fc7170 .delay (30000,30000,30000) L_0x1fc7170/d;
L_0x1fc7330/d .functor AND 1, L_0x1fc77d0, L_0x1fc7900, C4<1>, C4<1>;
L_0x1fc7330 .delay (20000,20000,20000) L_0x1fc7330/d;
L_0x1fc7400/d .functor AND 1, L_0x1fc77d0, L_0x1fc6da0, C4<1>, C4<1>;
L_0x1fc7400 .delay (20000,20000,20000) L_0x1fc7400/d;
L_0x1fc74a0/d .functor AND 1, L_0x1fc7900, L_0x1fc6da0, C4<1>, C4<1>;
L_0x1fc74a0 .delay (20000,20000,20000) L_0x1fc74a0/d;
L_0x1fc7570/d .functor OR 1, L_0x1fc7330, L_0x1fc7400, L_0x1fc74a0, C4<0>;
L_0x1fc7570 .delay (20000,20000,20000) L_0x1fc7570/d;
v0x1fa0d20_0 .net "AandB", 0 0, L_0x1fc7330; 1 drivers
v0x1fa0de0_0 .net "AandC", 0 0, L_0x1fc7400; 1 drivers
v0x1fa0e80_0 .net "BandC", 0 0, L_0x1fc74a0; 1 drivers
v0x1fa0f20_0 .net "a", 0 0, L_0x1fc77d0; 1 drivers
v0x1fa0fa0_0 .net "b", 0 0, L_0x1fc7900; 1 drivers
v0x1fa1040_0 .alias "carryin", 0 0, v0x1fa1b10_0;
v0x1fa10e0_0 .alias "carryout", 0 0, v0x1fa1b10_1;
v0x1fa1160_0 .net "sum", 0 0, L_0x1fc7170; 1 drivers
S_0x1fa0630 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f9fe90;
 .timescale -9 -12;
L_0x1fc7a70/d .functor XOR 1, L_0x1fc8050, L_0x1fc8180, L_0x1fc7570, C4<0>;
L_0x1fc7a70 .delay (30000,30000,30000) L_0x1fc7a70/d;
L_0x1fc7ba0/d .functor AND 1, L_0x1fc8050, L_0x1fc8180, C4<1>, C4<1>;
L_0x1fc7ba0 .delay (20000,20000,20000) L_0x1fc7ba0/d;
L_0x1fc7ce0/d .functor AND 1, L_0x1fc8050, L_0x1fc7570, C4<1>, C4<1>;
L_0x1fc7ce0 .delay (20000,20000,20000) L_0x1fc7ce0/d;
L_0x1fc7d80/d .functor AND 1, L_0x1fc8180, L_0x1fc7570, C4<1>, C4<1>;
L_0x1fc7d80 .delay (20000,20000,20000) L_0x1fc7d80/d;
L_0x1fc7e20/d .functor OR 1, L_0x1fc7ba0, L_0x1fc7ce0, L_0x1fc7d80, C4<0>;
L_0x1fc7e20 .delay (20000,20000,20000) L_0x1fc7e20/d;
v0x1fa0720_0 .net "AandB", 0 0, L_0x1fc7ba0; 1 drivers
v0x1fa07e0_0 .net "AandC", 0 0, L_0x1fc7ce0; 1 drivers
v0x1fa0880_0 .net "BandC", 0 0, L_0x1fc7d80; 1 drivers
v0x1fa0920_0 .net "a", 0 0, L_0x1fc8050; 1 drivers
v0x1fa09a0_0 .net "b", 0 0, L_0x1fc8180; 1 drivers
v0x1fa0a40_0 .alias "carryin", 0 0, v0x1fa1b10_1;
v0x1fa0ae0_0 .alias "carryout", 0 0, v0x1fa1b10_2;
v0x1fa0b60_0 .net "sum", 0 0, L_0x1fc7a70; 1 drivers
S_0x1f9ff80 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f9fe90;
 .timescale -9 -12;
L_0x1fc82b0/d .functor XOR 1, L_0x1fc89c0, L_0x1fc8b80, L_0x1fc7e20, C4<0>;
L_0x1fc82b0 .delay (30000,30000,30000) L_0x1fc82b0/d;
L_0x1fc83a0/d .functor AND 1, L_0x1fc89c0, L_0x1fc8b80, C4<1>, C4<1>;
L_0x1fc83a0 .delay (20000,20000,20000) L_0x1fc83a0/d;
L_0x1fc84c0/d .functor AND 1, L_0x1fc89c0, L_0x1fc7e20, C4<1>, C4<1>;
L_0x1fc84c0 .delay (20000,20000,20000) L_0x1fc84c0/d;
L_0x1fc8580/d .functor AND 1, L_0x1fc8b80, L_0x1fc7e20, C4<1>, C4<1>;
L_0x1fc8580 .delay (20000,20000,20000) L_0x1fc8580/d;
L_0x1fc8670/d .functor OR 1, L_0x1fc83a0, L_0x1fc84c0, L_0x1fc8580, C4<0>;
L_0x1fc8670 .delay (20000,20000,20000) L_0x1fc8670/d;
v0x1fa0070_0 .net "AandB", 0 0, L_0x1fc83a0; 1 drivers
v0x1fa0130_0 .net "AandC", 0 0, L_0x1fc84c0; 1 drivers
v0x1fa01d0_0 .net "BandC", 0 0, L_0x1fc8580; 1 drivers
v0x1fa0270_0 .net "a", 0 0, L_0x1fc89c0; 1 drivers
v0x1fa02f0_0 .net "b", 0 0, L_0x1fc8b80; 1 drivers
v0x1fa0390_0 .alias "carryin", 0 0, v0x1fa1b10_2;
v0x1fa0470_0 .alias "carryout", 0 0, v0x1fa9790_4;
v0x1fa0540_0 .net "sum", 0 0, L_0x1fc82b0; 1 drivers
S_0x1f9e0a0 .scope module, "f45" "CompAdder4bit" 2 65, 2 31, S_0x1f9a620;
 .timescale -9 -12;
v0x1f9fa40_0 .net "a", 3 0, L_0x1fcb490; 1 drivers
v0x1f9fb00_0 .net "b", 3 0, L_0x1fcb530; 1 drivers
v0x1f9fba0_0 .alias "carryin", 0 0, v0x1fa9790_4;
v0x1f9fc20_0 .alias "carryout", 0 0, v0x1fa9790_5;
v0x1f9fca0_0 .net8 "sum", 3 0, RS_0x2b15dfb9f0f8; 4 drivers
v0x1f9fd20 .array "temp_cout", 0 2;
v0x1f9fd20_0 .net v0x1f9fd20 0, 0 0, L_0x1fc9370; 1 drivers
v0x1f9fd20_1 .net v0x1f9fd20 1, 0 0, L_0x1fc9b40; 1 drivers
v0x1f9fd20_2 .net v0x1f9fd20 2, 0 0, L_0x1fca440; 1 drivers
L_0x1fc9440 .part/pv L_0x1fc8960, 0, 1, 4;
L_0x1fc94e0 .part L_0x1fcb490, 0, 1;
L_0x1fc9610 .part L_0x1fcb530, 0, 1;
L_0x1fc9d00 .part/pv L_0x1fc9740, 1, 1, 4;
L_0x1fc9df0 .part L_0x1fcb490, 1, 1;
L_0x1fc9f20 .part L_0x1fcb530, 1, 1;
L_0x1fca5d0 .part/pv L_0x1fca090, 2, 1, 4;
L_0x1fca670 .part L_0x1fcb490, 2, 1;
L_0x1fca7a0 .part L_0x1fcb530, 2, 1;
L_0x1fcae50 .part/pv L_0x1fca8d0, 3, 1, 4;
L_0x1fcafe0 .part L_0x1fcb490, 3, 1;
L_0x1fcb1a0 .part L_0x1fcb530, 3, 1;
S_0x1f9f440 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f9e0a0;
 .timescale -9 -12;
L_0x1fc8960/d .functor XOR 1, L_0x1fc94e0, L_0x1fc9610, L_0x1fc8670, C4<0>;
L_0x1fc8960 .delay (30000,30000,30000) L_0x1fc8960/d;
L_0x1fc9050/d .functor AND 1, L_0x1fc94e0, L_0x1fc9610, C4<1>, C4<1>;
L_0x1fc9050 .delay (20000,20000,20000) L_0x1fc9050/d;
L_0x1fc9120/d .functor AND 1, L_0x1fc94e0, L_0x1fc8670, C4<1>, C4<1>;
L_0x1fc9120 .delay (20000,20000,20000) L_0x1fc9120/d;
L_0x1fc91e0/d .functor AND 1, L_0x1fc9610, L_0x1fc8670, C4<1>, C4<1>;
L_0x1fc91e0 .delay (20000,20000,20000) L_0x1fc91e0/d;
L_0x1fc9370/d .functor OR 1, L_0x1fc9050, L_0x1fc9120, L_0x1fc91e0, C4<0>;
L_0x1fc9370 .delay (20000,20000,20000) L_0x1fc9370/d;
v0x1f9f530_0 .net "AandB", 0 0, L_0x1fc9050; 1 drivers
v0x1f9f5f0_0 .net "AandC", 0 0, L_0x1fc9120; 1 drivers
v0x1f9f690_0 .net "BandC", 0 0, L_0x1fc91e0; 1 drivers
v0x1f9f730_0 .net "a", 0 0, L_0x1fc94e0; 1 drivers
v0x1f9f7b0_0 .net "b", 0 0, L_0x1fc9610; 1 drivers
v0x1f9f850_0 .alias "carryin", 0 0, v0x1fa9790_4;
v0x1f9f8f0_0 .alias "carryout", 0 0, v0x1f9fd20_0;
v0x1f9f970_0 .net "sum", 0 0, L_0x1fc8960; 1 drivers
S_0x1f9ee40 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f9e0a0;
 .timescale -9 -12;
L_0x1fc9740/d .functor XOR 1, L_0x1fc9df0, L_0x1fc9f20, L_0x1fc9370, C4<0>;
L_0x1fc9740 .delay (30000,30000,30000) L_0x1fc9740/d;
L_0x1fc9900/d .functor AND 1, L_0x1fc9df0, L_0x1fc9f20, C4<1>, C4<1>;
L_0x1fc9900 .delay (20000,20000,20000) L_0x1fc9900/d;
L_0x1fc99d0/d .functor AND 1, L_0x1fc9df0, L_0x1fc9370, C4<1>, C4<1>;
L_0x1fc99d0 .delay (20000,20000,20000) L_0x1fc99d0/d;
L_0x1fc9a70/d .functor AND 1, L_0x1fc9f20, L_0x1fc9370, C4<1>, C4<1>;
L_0x1fc9a70 .delay (20000,20000,20000) L_0x1fc9a70/d;
L_0x1fc9b40/d .functor OR 1, L_0x1fc9900, L_0x1fc99d0, L_0x1fc9a70, C4<0>;
L_0x1fc9b40 .delay (20000,20000,20000) L_0x1fc9b40/d;
v0x1f9ef30_0 .net "AandB", 0 0, L_0x1fc9900; 1 drivers
v0x1f9eff0_0 .net "AandC", 0 0, L_0x1fc99d0; 1 drivers
v0x1f9f090_0 .net "BandC", 0 0, L_0x1fc9a70; 1 drivers
v0x1f9f130_0 .net "a", 0 0, L_0x1fc9df0; 1 drivers
v0x1f9f1b0_0 .net "b", 0 0, L_0x1fc9f20; 1 drivers
v0x1f9f250_0 .alias "carryin", 0 0, v0x1f9fd20_0;
v0x1f9f2f0_0 .alias "carryout", 0 0, v0x1f9fd20_1;
v0x1f9f370_0 .net "sum", 0 0, L_0x1fc9740; 1 drivers
S_0x1f9e840 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f9e0a0;
 .timescale -9 -12;
L_0x1fca090/d .functor XOR 1, L_0x1fca670, L_0x1fca7a0, L_0x1fc9b40, C4<0>;
L_0x1fca090 .delay (30000,30000,30000) L_0x1fca090/d;
L_0x1fca1c0/d .functor AND 1, L_0x1fca670, L_0x1fca7a0, C4<1>, C4<1>;
L_0x1fca1c0 .delay (20000,20000,20000) L_0x1fca1c0/d;
L_0x1fca300/d .functor AND 1, L_0x1fca670, L_0x1fc9b40, C4<1>, C4<1>;
L_0x1fca300 .delay (20000,20000,20000) L_0x1fca300/d;
L_0x1fca3a0/d .functor AND 1, L_0x1fca7a0, L_0x1fc9b40, C4<1>, C4<1>;
L_0x1fca3a0 .delay (20000,20000,20000) L_0x1fca3a0/d;
L_0x1fca440/d .functor OR 1, L_0x1fca1c0, L_0x1fca300, L_0x1fca3a0, C4<0>;
L_0x1fca440 .delay (20000,20000,20000) L_0x1fca440/d;
v0x1f9e930_0 .net "AandB", 0 0, L_0x1fca1c0; 1 drivers
v0x1f9e9f0_0 .net "AandC", 0 0, L_0x1fca300; 1 drivers
v0x1f9ea90_0 .net "BandC", 0 0, L_0x1fca3a0; 1 drivers
v0x1f9eb30_0 .net "a", 0 0, L_0x1fca670; 1 drivers
v0x1f9ebb0_0 .net "b", 0 0, L_0x1fca7a0; 1 drivers
v0x1f9ec50_0 .alias "carryin", 0 0, v0x1f9fd20_1;
v0x1f9ecf0_0 .alias "carryout", 0 0, v0x1f9fd20_2;
v0x1f9ed70_0 .net "sum", 0 0, L_0x1fca090; 1 drivers
S_0x1f9e190 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f9e0a0;
 .timescale -9 -12;
L_0x1fca8d0/d .functor XOR 1, L_0x1fcafe0, L_0x1fcb1a0, L_0x1fca440, C4<0>;
L_0x1fca8d0 .delay (30000,30000,30000) L_0x1fca8d0/d;
L_0x1fca9c0/d .functor AND 1, L_0x1fcafe0, L_0x1fcb1a0, C4<1>, C4<1>;
L_0x1fca9c0 .delay (20000,20000,20000) L_0x1fca9c0/d;
L_0x1fcaae0/d .functor AND 1, L_0x1fcafe0, L_0x1fca440, C4<1>, C4<1>;
L_0x1fcaae0 .delay (20000,20000,20000) L_0x1fcaae0/d;
L_0x1fcaba0/d .functor AND 1, L_0x1fcb1a0, L_0x1fca440, C4<1>, C4<1>;
L_0x1fcaba0 .delay (20000,20000,20000) L_0x1fcaba0/d;
L_0x1fcac90/d .functor OR 1, L_0x1fca9c0, L_0x1fcaae0, L_0x1fcaba0, C4<0>;
L_0x1fcac90 .delay (20000,20000,20000) L_0x1fcac90/d;
v0x1f9e280_0 .net "AandB", 0 0, L_0x1fca9c0; 1 drivers
v0x1f9e320_0 .net "AandC", 0 0, L_0x1fcaae0; 1 drivers
v0x1f9e3c0_0 .net "BandC", 0 0, L_0x1fcaba0; 1 drivers
v0x1f9e460_0 .net "a", 0 0, L_0x1fcafe0; 1 drivers
v0x1f9e500_0 .net "b", 0 0, L_0x1fcb1a0; 1 drivers
v0x1f9e5a0_0 .alias "carryin", 0 0, v0x1f9fd20_2;
v0x1f9e680_0 .alias "carryout", 0 0, v0x1fa9790_5;
v0x1f9e750_0 .net "sum", 0 0, L_0x1fca8d0; 1 drivers
S_0x1f9c2d0 .scope module, "f46" "CompAdder4bit" 2 66, 2 31, S_0x1f9a620;
 .timescale -9 -12;
v0x1f9dc50_0 .net "a", 3 0, L_0x1fcdb50; 1 drivers
v0x1f9dd10_0 .net "b", 3 0, L_0x1fcb5d0; 1 drivers
v0x1f9ddb0_0 .alias "carryin", 0 0, v0x1fa9790_5;
v0x1f9de30_0 .alias "carryout", 0 0, v0x1fa9790_6;
v0x1f9deb0_0 .net8 "sum", 3 0, RS_0x2b15dfb9eb28; 4 drivers
v0x1f9df30 .array "temp_cout", 0 2;
v0x1f9df30_0 .net v0x1f9df30 0, 0 0, L_0x1fcb940; 1 drivers
v0x1f9df30_1 .net v0x1f9df30 1, 0 0, L_0x1fcc110; 1 drivers
v0x1f9df30_2 .net v0x1f9df30 2, 0 0, L_0x1fcca10; 1 drivers
L_0x1fcba10 .part/pv L_0x1fcaf80, 0, 1, 4;
L_0x1fcbab0 .part L_0x1fcdb50, 0, 1;
L_0x1fcbbe0 .part L_0x1fcb5d0, 0, 1;
L_0x1fcc2d0 .part/pv L_0x1fcbd10, 1, 1, 4;
L_0x1fcc3c0 .part L_0x1fcdb50, 1, 1;
L_0x1fcc4f0 .part L_0x1fcb5d0, 1, 1;
L_0x1fccba0 .part/pv L_0x1fcc660, 2, 1, 4;
L_0x1fccc40 .part L_0x1fcdb50, 2, 1;
L_0x1fccd70 .part L_0x1fcb5d0, 2, 1;
L_0x1fcd420 .part/pv L_0x1fccea0, 3, 1, 4;
L_0x1fcd5b0 .part L_0x1fcdb50, 3, 1;
L_0x1fcd770 .part L_0x1fcb5d0, 3, 1;
S_0x1f9d650 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f9c2d0;
 .timescale -9 -12;
L_0x1fcaf80/d .functor XOR 1, L_0x1fcbab0, L_0x1fcbbe0, L_0x1fcac90, C4<0>;
L_0x1fcaf80 .delay (30000,30000,30000) L_0x1fcaf80/d;
L_0x1fcb670/d .functor AND 1, L_0x1fcbab0, L_0x1fcbbe0, C4<1>, C4<1>;
L_0x1fcb670 .delay (20000,20000,20000) L_0x1fcb670/d;
L_0x1fcb710/d .functor AND 1, L_0x1fcbab0, L_0x1fcac90, C4<1>, C4<1>;
L_0x1fcb710 .delay (20000,20000,20000) L_0x1fcb710/d;
L_0x1fcb7b0/d .functor AND 1, L_0x1fcbbe0, L_0x1fcac90, C4<1>, C4<1>;
L_0x1fcb7b0 .delay (20000,20000,20000) L_0x1fcb7b0/d;
L_0x1fcb940/d .functor OR 1, L_0x1fcb670, L_0x1fcb710, L_0x1fcb7b0, C4<0>;
L_0x1fcb940 .delay (20000,20000,20000) L_0x1fcb940/d;
v0x1f9d740_0 .net "AandB", 0 0, L_0x1fcb670; 1 drivers
v0x1f9d800_0 .net "AandC", 0 0, L_0x1fcb710; 1 drivers
v0x1f9d8a0_0 .net "BandC", 0 0, L_0x1fcb7b0; 1 drivers
v0x1f9d940_0 .net "a", 0 0, L_0x1fcbab0; 1 drivers
v0x1f9d9c0_0 .net "b", 0 0, L_0x1fcbbe0; 1 drivers
v0x1f9da60_0 .alias "carryin", 0 0, v0x1fa9790_5;
v0x1f9db00_0 .alias "carryout", 0 0, v0x1f9df30_0;
v0x1f9db80_0 .net "sum", 0 0, L_0x1fcaf80; 1 drivers
S_0x1f9d050 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f9c2d0;
 .timescale -9 -12;
L_0x1fcbd10/d .functor XOR 1, L_0x1fcc3c0, L_0x1fcc4f0, L_0x1fcb940, C4<0>;
L_0x1fcbd10 .delay (30000,30000,30000) L_0x1fcbd10/d;
L_0x1fcbed0/d .functor AND 1, L_0x1fcc3c0, L_0x1fcc4f0, C4<1>, C4<1>;
L_0x1fcbed0 .delay (20000,20000,20000) L_0x1fcbed0/d;
L_0x1fcbfa0/d .functor AND 1, L_0x1fcc3c0, L_0x1fcb940, C4<1>, C4<1>;
L_0x1fcbfa0 .delay (20000,20000,20000) L_0x1fcbfa0/d;
L_0x1fcc040/d .functor AND 1, L_0x1fcc4f0, L_0x1fcb940, C4<1>, C4<1>;
L_0x1fcc040 .delay (20000,20000,20000) L_0x1fcc040/d;
L_0x1fcc110/d .functor OR 1, L_0x1fcbed0, L_0x1fcbfa0, L_0x1fcc040, C4<0>;
L_0x1fcc110 .delay (20000,20000,20000) L_0x1fcc110/d;
v0x1f9d140_0 .net "AandB", 0 0, L_0x1fcbed0; 1 drivers
v0x1f9d200_0 .net "AandC", 0 0, L_0x1fcbfa0; 1 drivers
v0x1f9d2a0_0 .net "BandC", 0 0, L_0x1fcc040; 1 drivers
v0x1f9d340_0 .net "a", 0 0, L_0x1fcc3c0; 1 drivers
v0x1f9d3c0_0 .net "b", 0 0, L_0x1fcc4f0; 1 drivers
v0x1f9d460_0 .alias "carryin", 0 0, v0x1f9df30_0;
v0x1f9d500_0 .alias "carryout", 0 0, v0x1f9df30_1;
v0x1f9d580_0 .net "sum", 0 0, L_0x1fcbd10; 1 drivers
S_0x1f9ca50 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f9c2d0;
 .timescale -9 -12;
L_0x1fcc660/d .functor XOR 1, L_0x1fccc40, L_0x1fccd70, L_0x1fcc110, C4<0>;
L_0x1fcc660 .delay (30000,30000,30000) L_0x1fcc660/d;
L_0x1fcc790/d .functor AND 1, L_0x1fccc40, L_0x1fccd70, C4<1>, C4<1>;
L_0x1fcc790 .delay (20000,20000,20000) L_0x1fcc790/d;
L_0x1fcc8d0/d .functor AND 1, L_0x1fccc40, L_0x1fcc110, C4<1>, C4<1>;
L_0x1fcc8d0 .delay (20000,20000,20000) L_0x1fcc8d0/d;
L_0x1fcc970/d .functor AND 1, L_0x1fccd70, L_0x1fcc110, C4<1>, C4<1>;
L_0x1fcc970 .delay (20000,20000,20000) L_0x1fcc970/d;
L_0x1fcca10/d .functor OR 1, L_0x1fcc790, L_0x1fcc8d0, L_0x1fcc970, C4<0>;
L_0x1fcca10 .delay (20000,20000,20000) L_0x1fcca10/d;
v0x1f9cb40_0 .net "AandB", 0 0, L_0x1fcc790; 1 drivers
v0x1f9cc00_0 .net "AandC", 0 0, L_0x1fcc8d0; 1 drivers
v0x1f9cca0_0 .net "BandC", 0 0, L_0x1fcc970; 1 drivers
v0x1f9cd40_0 .net "a", 0 0, L_0x1fccc40; 1 drivers
v0x1f9cdc0_0 .net "b", 0 0, L_0x1fccd70; 1 drivers
v0x1f9ce60_0 .alias "carryin", 0 0, v0x1f9df30_1;
v0x1f9cf00_0 .alias "carryout", 0 0, v0x1f9df30_2;
v0x1f9cf80_0 .net "sum", 0 0, L_0x1fcc660; 1 drivers
S_0x1f9c3c0 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f9c2d0;
 .timescale -9 -12;
L_0x1fccea0/d .functor XOR 1, L_0x1fcd5b0, L_0x1fcd770, L_0x1fcca10, C4<0>;
L_0x1fccea0 .delay (30000,30000,30000) L_0x1fccea0/d;
L_0x1fccf90/d .functor AND 1, L_0x1fcd5b0, L_0x1fcd770, C4<1>, C4<1>;
L_0x1fccf90 .delay (20000,20000,20000) L_0x1fccf90/d;
L_0x1fcd0b0/d .functor AND 1, L_0x1fcd5b0, L_0x1fcca10, C4<1>, C4<1>;
L_0x1fcd0b0 .delay (20000,20000,20000) L_0x1fcd0b0/d;
L_0x1fcd170/d .functor AND 1, L_0x1fcd770, L_0x1fcca10, C4<1>, C4<1>;
L_0x1fcd170 .delay (20000,20000,20000) L_0x1fcd170/d;
L_0x1fcd260/d .functor OR 1, L_0x1fccf90, L_0x1fcd0b0, L_0x1fcd170, C4<0>;
L_0x1fcd260 .delay (20000,20000,20000) L_0x1fcd260/d;
v0x1f9c4b0_0 .net "AandB", 0 0, L_0x1fccf90; 1 drivers
v0x1f9c550_0 .net "AandC", 0 0, L_0x1fcd0b0; 1 drivers
v0x1f9c5f0_0 .net "BandC", 0 0, L_0x1fcd170; 1 drivers
v0x1f9c690_0 .net "a", 0 0, L_0x1fcd5b0; 1 drivers
v0x1f9c710_0 .net "b", 0 0, L_0x1fcd770; 1 drivers
v0x1f9c7b0_0 .alias "carryin", 0 0, v0x1f9df30_2;
v0x1f9c890_0 .alias "carryout", 0 0, v0x1fa9790_6;
v0x1f9c960_0 .net "sum", 0 0, L_0x1fccea0; 1 drivers
S_0x1f9a710 .scope module, "f47" "CompAdder4bit" 2 67, 2 31, S_0x1f9a620;
 .timescale -9 -12;
v0x1f9bf40_0 .net "a", 3 0, L_0x1fcdd00; 1 drivers
v0x1f9c000_0 .net "b", 3 0, L_0x1fd0290; 1 drivers
v0x1f9c0a0_0 .alias "carryin", 0 0, v0x1fa9790_6;
v0x1f9c120_0 .alias "carryout", 0 0, v0x1fa9da0_0;
v0x1f9c1d0_0 .net8 "sum", 3 0, RS_0x2b15dfb9e558; 4 drivers
v0x1f9c250 .array "temp_cout", 0 2;
v0x1f9c250_0 .net v0x1f9c250 0, 0 0, L_0x1fce090; 1 drivers
v0x1f9c250_1 .net v0x1f9c250 1, 0 0, L_0x1fce860; 1 drivers
v0x1f9c250_2 .net v0x1f9c250 2, 0 0, L_0x1fcf160; 1 drivers
L_0x1fce160 .part/pv L_0x1fcd550, 0, 1, 4;
L_0x1fce200 .part L_0x1fcdd00, 0, 1;
L_0x1fce330 .part L_0x1fd0290, 0, 1;
L_0x1fcea20 .part/pv L_0x1fce460, 1, 1, 4;
L_0x1fceb10 .part L_0x1fcdd00, 1, 1;
L_0x1fcec40 .part L_0x1fd0290, 1, 1;
L_0x1fcf2f0 .part/pv L_0x1fcedb0, 2, 1, 4;
L_0x1fcf390 .part L_0x1fcdd00, 2, 1;
L_0x1fcf4c0 .part L_0x1fd0290, 2, 1;
L_0x1fcfbb0 .part/pv L_0x1fcf5f0, 3, 1, 4;
L_0x1fcfd40 .part L_0x1fcdd00, 3, 1;
L_0x1fcff00 .part L_0x1fd0290, 3, 1;
S_0x1f9b990 .scope module, "fa0" "structuralFullAdder" 2 43, 2 9, S_0x1f9a710;
 .timescale -9 -12;
L_0x1fcd550/d .functor XOR 1, L_0x1fce200, L_0x1fce330, L_0x1fcd260, C4<0>;
L_0x1fcd550 .delay (30000,30000,30000) L_0x1fcd550/d;
L_0x1fc4350/d .functor AND 1, L_0x1fce200, L_0x1fce330, C4<1>, C4<1>;
L_0x1fc4350 .delay (20000,20000,20000) L_0x1fc4350/d;
L_0x1fc4480/d .functor AND 1, L_0x1fce200, L_0x1fcd260, C4<1>, C4<1>;
L_0x1fc4480 .delay (20000,20000,20000) L_0x1fc4480/d;
L_0x1fcdf00/d .functor AND 1, L_0x1fce330, L_0x1fcd260, C4<1>, C4<1>;
L_0x1fcdf00 .delay (20000,20000,20000) L_0x1fcdf00/d;
L_0x1fce090/d .functor OR 1, L_0x1fc4350, L_0x1fc4480, L_0x1fcdf00, C4<0>;
L_0x1fce090 .delay (20000,20000,20000) L_0x1fce090/d;
v0x1f9ba80_0 .net "AandB", 0 0, L_0x1fc4350; 1 drivers
v0x1f9bb40_0 .net "AandC", 0 0, L_0x1fc4480; 1 drivers
v0x1f9bbe0_0 .net "BandC", 0 0, L_0x1fcdf00; 1 drivers
v0x1f9bc80_0 .net "a", 0 0, L_0x1fce200; 1 drivers
v0x1f9bd00_0 .net "b", 0 0, L_0x1fce330; 1 drivers
v0x1f9bda0_0 .alias "carryin", 0 0, v0x1fa9790_6;
v0x1f9be40_0 .alias "carryout", 0 0, v0x1f9c250_0;
v0x1f9bec0_0 .net "sum", 0 0, L_0x1fcd550; 1 drivers
S_0x1f9b3e0 .scope module, "fa1" "structuralFullAdder" 2 44, 2 9, S_0x1f9a710;
 .timescale -9 -12;
L_0x1fce460/d .functor XOR 1, L_0x1fceb10, L_0x1fcec40, L_0x1fce090, C4<0>;
L_0x1fce460 .delay (30000,30000,30000) L_0x1fce460/d;
L_0x1fce620/d .functor AND 1, L_0x1fceb10, L_0x1fcec40, C4<1>, C4<1>;
L_0x1fce620 .delay (20000,20000,20000) L_0x1fce620/d;
L_0x1fce6f0/d .functor AND 1, L_0x1fceb10, L_0x1fce090, C4<1>, C4<1>;
L_0x1fce6f0 .delay (20000,20000,20000) L_0x1fce6f0/d;
L_0x1fce790/d .functor AND 1, L_0x1fcec40, L_0x1fce090, C4<1>, C4<1>;
L_0x1fce790 .delay (20000,20000,20000) L_0x1fce790/d;
L_0x1fce860/d .functor OR 1, L_0x1fce620, L_0x1fce6f0, L_0x1fce790, C4<0>;
L_0x1fce860 .delay (20000,20000,20000) L_0x1fce860/d;
v0x1f9b4d0_0 .net "AandB", 0 0, L_0x1fce620; 1 drivers
v0x1f9b590_0 .net "AandC", 0 0, L_0x1fce6f0; 1 drivers
v0x1f9b630_0 .net "BandC", 0 0, L_0x1fce790; 1 drivers
v0x1f9b6d0_0 .net "a", 0 0, L_0x1fceb10; 1 drivers
v0x1f9b750_0 .net "b", 0 0, L_0x1fcec40; 1 drivers
v0x1f9b7f0_0 .alias "carryin", 0 0, v0x1f9c250_0;
v0x1f9b890_0 .alias "carryout", 0 0, v0x1f9c250_1;
v0x1f9b910_0 .net "sum", 0 0, L_0x1fce460; 1 drivers
S_0x1f9ae30 .scope module, "fa2" "structuralFullAdder" 2 45, 2 9, S_0x1f9a710;
 .timescale -9 -12;
L_0x1fcedb0/d .functor XOR 1, L_0x1fcf390, L_0x1fcf4c0, L_0x1fce860, C4<0>;
L_0x1fcedb0 .delay (30000,30000,30000) L_0x1fcedb0/d;
L_0x1fceee0/d .functor AND 1, L_0x1fcf390, L_0x1fcf4c0, C4<1>, C4<1>;
L_0x1fceee0 .delay (20000,20000,20000) L_0x1fceee0/d;
L_0x1fcf020/d .functor AND 1, L_0x1fcf390, L_0x1fce860, C4<1>, C4<1>;
L_0x1fcf020 .delay (20000,20000,20000) L_0x1fcf020/d;
L_0x1fcf0c0/d .functor AND 1, L_0x1fcf4c0, L_0x1fce860, C4<1>, C4<1>;
L_0x1fcf0c0 .delay (20000,20000,20000) L_0x1fcf0c0/d;
L_0x1fcf160/d .functor OR 1, L_0x1fceee0, L_0x1fcf020, L_0x1fcf0c0, C4<0>;
L_0x1fcf160 .delay (20000,20000,20000) L_0x1fcf160/d;
v0x1f9af20_0 .net "AandB", 0 0, L_0x1fceee0; 1 drivers
v0x1f9afe0_0 .net "AandC", 0 0, L_0x1fcf020; 1 drivers
v0x1f9b080_0 .net "BandC", 0 0, L_0x1fcf0c0; 1 drivers
v0x1f9b120_0 .net "a", 0 0, L_0x1fcf390; 1 drivers
v0x1f9b1a0_0 .net "b", 0 0, L_0x1fcf4c0; 1 drivers
v0x1f9b240_0 .alias "carryin", 0 0, v0x1f9c250_1;
v0x1f9b2e0_0 .alias "carryout", 0 0, v0x1f9c250_2;
v0x1f9b360_0 .net "sum", 0 0, L_0x1fcedb0; 1 drivers
S_0x1f9a800 .scope module, "fa3" "structuralFullAdder" 2 46, 2 9, S_0x1f9a710;
 .timescale -9 -12;
L_0x1fcf5f0/d .functor XOR 1, L_0x1fcfd40, L_0x1fcff00, L_0x1fcf160, C4<0>;
L_0x1fcf5f0 .delay (30000,30000,30000) L_0x1fcf5f0/d;
L_0x1fcf6e0/d .functor AND 1, L_0x1fcfd40, L_0x1fcff00, C4<1>, C4<1>;
L_0x1fcf6e0 .delay (20000,20000,20000) L_0x1fcf6e0/d;
L_0x1fcf800/d .functor AND 1, L_0x1fcfd40, L_0x1fcf160, C4<1>, C4<1>;
L_0x1fcf800 .delay (20000,20000,20000) L_0x1fcf800/d;
L_0x1fcf8c0/d .functor AND 1, L_0x1fcff00, L_0x1fcf160, C4<1>, C4<1>;
L_0x1fcf8c0 .delay (20000,20000,20000) L_0x1fcf8c0/d;
L_0x1fcf9b0/d .functor OR 1, L_0x1fcf6e0, L_0x1fcf800, L_0x1fcf8c0, C4<0>;
L_0x1fcf9b0 .delay (20000,20000,20000) L_0x1fcf9b0/d;
v0x1f9a8f0_0 .net "AandB", 0 0, L_0x1fcf6e0; 1 drivers
v0x1f9a9b0_0 .net "AandC", 0 0, L_0x1fcf800; 1 drivers
v0x1f9aa50_0 .net "BandC", 0 0, L_0x1fcf8c0; 1 drivers
v0x1f9aaf0_0 .net "a", 0 0, L_0x1fcfd40; 1 drivers
v0x1f9ab70_0 .net "b", 0 0, L_0x1fcff00; 1 drivers
v0x1f9ac10_0 .alias "carryin", 0 0, v0x1f9c250_2;
v0x1f9acf0_0 .alias "carryout", 0 0, v0x1fa9da0_0;
v0x1f9ad90_0 .net "sum", 0 0, L_0x1fcf5f0; 1 drivers
    .scope S_0x1f5cad0;
T_0 ;
    %vpi_call 3 15 "$display", " a_10   b _10 |overflow carryout   sum ";
    %set/v v0x1fa9c80_0, 0, 32;
    %set/v v0x1fa9d20_0, 0, 32;
    %delay 1000000, 0;
    %vpi_call 3 17 "$display", " 0        0  |   %b        %b       %b", v0x1fa9e20_0, v0x1fa9da0_0, v0x1fa9ea0_0;
    %set/v v0x1fa9c80_0, 1, 32;
    %set/v v0x1fa9d20_0, 1, 32;
    %delay 1000000, 0;
    %vpi_call 3 19 "$display", " -1       -1 |   %b        %b       %b", v0x1fa9e20_0, v0x1fa9da0_0, v0x1fa9ea0_0;
    %movi 8, 268435455, 32;
    %set/v v0x1fa9c80_0, 8, 32;
    %movi 8, 268435455, 32;
    %set/v v0x1fa9d20_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 3 21 "$display", "  max     max|   %b        %b       %b", v0x1fa9e20_0, v0x1fa9da0_0, v0x1fa9ea0_0;
    %movi 8, 4026531855, 32;
    %set/v v0x1fa9c80_0, 8, 32;
    %movi 8, 4026531855, 32;
    %set/v v0x1fa9d20_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 3 23 "$display", " min     min |   %b        %b       %b", v0x1fa9e20_0, v0x1fa9da0_0, v0x1fa9ea0_0;
    %movi 8, 4, 32;
    %set/v v0x1fa9c80_0, 8, 32;
    %movi 8, 4, 32;
    %set/v v0x1fa9d20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 25 "$display", "  4       4  |   %b        %b       %b", v0x1fa9e20_0, v0x1fa9da0_0, v0x1fa9ea0_0;
    %movi 8, 305402420, 32;
    %set/v v0x1fa9c80_0, 8, 32;
    %movi 8, 305402420, 32;
    %set/v v0x1fa9d20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 27 "$display", " ?      ?    |   %b        %b       %b", v0x1fa9e20_0, v0x1fa9da0_0, v0x1fa9ea0_0;
    %set/v v0x1fa9c80_0, 1, 32;
    %movi 8, 1, 32;
    %set/v v0x1fa9d20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 29 "$display", " -1    1     |   %b        %b       %b", v0x1fa9e20_0, v0x1fa9da0_0, v0x1fa9ea0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./math.v";
    "math.t.v";
