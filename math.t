#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x19b9c70 .scope module, "FullSubtractor32bit" "FullSubtractor32bit" 2 70;
 .timescale -9 -12;
L_0x19fd8e0/d .functor XOR 1, L_0x19fd5f0, L_0x19fb040, C4<0>, C4<0>;
L_0x19fd8e0 .delay (30000,30000,30000) L_0x19fd8e0/d;
v0x19dade0_0 .net "a", 31 0, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; 0 drivers
v0x19daea0_0 .net "b", 31 0, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; 0 drivers
v0x19daf40_0 .net "carryout", 0 0, L_0x19fd5f0; 1 drivers
v0x19db010_0 .net "overflow", 0 0, L_0x19fd8e0; 1 drivers
RS_0x2b3f9cdeff58/0/0 .resolv tri, L_0x19ed2f0, L_0x19ef940, L_0x19f1f60, L_0x19f4510;
RS_0x2b3f9cdeff58/0/4 .resolv tri, L_0x19f6b90, L_0x19f9140, L_0x19fb780, L_0x19fdd30;
RS_0x2b3f9cdeff58 .resolv tri, RS_0x2b3f9cdeff58/0/0, RS_0x2b3f9cdeff58/0/4, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>;
v0x19db090_0 .net8 "sum", 31 0, RS_0x2b3f9cdeff58; 8 drivers
v0x19db130 .array "temp_cout", 0 6;
v0x19db130_0 .net v0x19db130 0, 0 0, L_0x19ecbb0; 1 drivers
v0x19db130_1 .net v0x19db130 1, 0 0, L_0x19ef200; 1 drivers
v0x19db130_2 .net v0x19db130 2, 0 0, L_0x19f1820; 1 drivers
v0x19db130_3 .net v0x19db130 3, 0 0, L_0x19f3dd0; 1 drivers
v0x19db130_4 .net v0x19db130 4, 0 0, L_0x19f6450; 1 drivers
v0x19db130_5 .net v0x19db130 5, 0 0, L_0x19f8a70; 1 drivers
v0x19db130_6 .net v0x19db130 6, 0 0, L_0x19fb040; 1 drivers
RS_0x2b3f9cdefe98 .resolv tri, L_0x19eb3f0, L_0x19ebc60, L_0x19ec530, L_0x19ecd70;
L_0x19ed2f0 .part/pv RS_0x2b3f9cdefe98, 0, 4, 32;
L_0x19ed390 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 0, 4;
L_0x19ed430 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 0, 4;
RS_0x2b3f9cdef8c8 .resolv tri, L_0x19ed9b0, L_0x19ee270, L_0x19eeb40, L_0x19ef3c0;
L_0x19ef940 .part/pv RS_0x2b3f9cdef8c8, 4, 4, 32;
L_0x19ef9e0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 4, 4;
L_0x19efa80 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 4, 4;
RS_0x2b3f9cdef2f8 .resolv tri, L_0x19effb0, L_0x19f0870, L_0x19f1160, L_0x19f19e0;
L_0x19f1f60 .part/pv RS_0x2b3f9cdef2f8, 8, 4, 32;
L_0x19f2000 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 8, 4;
L_0x19f20a0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 8, 4;
RS_0x2b3f9cdeed28 .resolv tri, L_0x19f2580, L_0x19f2e40, L_0x19f3710, L_0x19f3f90;
L_0x19f4510 .part/pv RS_0x2b3f9cdeed28, 12, 4, 32;
L_0x19f4640 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 12, 4;
L_0x19f4770 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 12, 4;
RS_0x2b3f9cdee758 .resolv tri, L_0x19f4d40, L_0x19f5510, L_0x19f5d90, L_0x19f6610;
L_0x19f6b90 .part/pv RS_0x2b3f9cdee758, 16, 4, 32;
L_0x19f6c30 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 16, 4;
L_0x19f6d50 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 16, 4;
RS_0x2b3f9cdee188 .resolv tri, L_0x19f7220, L_0x19f7ae0, L_0x19f83b0, L_0x19f8c30;
L_0x19f9140 .part/pv RS_0x2b3f9cdee188, 20, 4, 32;
L_0x19f9270 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 20, 4;
L_0x19f9310 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 20, 4;
RS_0x2b3f9cdedbb8 .resolv tri, L_0x19f97f0, L_0x19fa0b0, L_0x19fa980, L_0x19fb200;
L_0x19fb780 .part/pv RS_0x2b3f9cdedbb8, 24, 4, 32;
L_0x19fb820 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 24, 4;
L_0x19f93b0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 24, 4;
RS_0x2b3f9cded5e8 .resolv tri, L_0x19fbda0, L_0x19fc660, L_0x19fcf30, L_0x19fd7b0;
L_0x19fdd30 .part/pv RS_0x2b3f9cded5e8, 28, 4, 32;
L_0x19fb8c0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 28, 4;
L_0x19fe0b0 .part C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, 28, 4;
S_0x19d8ff0 .scope module, "f40" "CompAdder4bit" 2 80, 2 30, S_0x19b9c70;
 .timescale -9 -12;
v0x19da990_0 .net "a", 3 0, L_0x19ed390; 1 drivers
v0x19daa50_0 .net "b", 3 0, L_0x19ed430; 1 drivers
v0x19daaf0_0 .net "carryin", 0 0, C4<1>; 1 drivers
v0x19dab70_0 .alias "carryout", 0 0, v0x19db130_0;
v0x19dabf0_0 .net8 "sum", 3 0, RS_0x2b3f9cdefe98; 4 drivers
v0x19dac70 .array "temp_cout", 0 2;
v0x19dac70_0 .net v0x19dac70 0, 0 0, L_0x19eb320; 1 drivers
v0x19dac70_1 .net v0x19dac70 1, 0 0, L_0x19ebaf0; 1 drivers
v0x19dac70_2 .net v0x19dac70 2, 0 0, L_0x19ec3a0; 1 drivers
L_0x19eb3f0 .part/pv L_0x19eaf20, 0, 1, 4;
L_0x19eb490 .part L_0x19ed390, 0, 1;
L_0x19eb5c0 .part L_0x19ed430, 0, 1;
L_0x19ebc60 .part/pv L_0x19eb6f0, 1, 1, 4;
L_0x19ebd50 .part L_0x19ed390, 1, 1;
L_0x19ebe80 .part L_0x19ed430, 1, 1;
L_0x19ec530 .part/pv L_0x19ebff0, 2, 1, 4;
L_0x19ec5d0 .part L_0x19ed390, 2, 1;
L_0x19ec700 .part L_0x19ed430, 2, 1;
L_0x19ecd70 .part/pv L_0x19ec830, 3, 1, 4;
L_0x19ecf00 .part L_0x19ed390, 3, 1;
L_0x19ed0c0 .part L_0x19ed430, 3, 1;
S_0x19da390 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19d8ff0;
 .timescale -9 -12;
L_0x19eaf20/d .functor XOR 1, L_0x19eb490, L_0x19eb5c0, C4<1>, C4<0>;
L_0x19eaf20 .delay (30000,30000,30000) L_0x19eaf20/d;
L_0x19eb080/d .functor AND 1, L_0x19eb490, L_0x19eb5c0, C4<1>, C4<1>;
L_0x19eb080 .delay (20000,20000,20000) L_0x19eb080/d;
L_0x19eb120/d .functor AND 1, L_0x19eb490, C4<1>, C4<1>, C4<1>;
L_0x19eb120 .delay (20000,20000,20000) L_0x19eb120/d;
L_0x19eb1c0/d .functor AND 1, L_0x19eb5c0, C4<1>, C4<1>, C4<1>;
L_0x19eb1c0 .delay (20000,20000,20000) L_0x19eb1c0/d;
L_0x19eb320/d .functor OR 1, L_0x19eb080, L_0x19eb120, L_0x19eb1c0, C4<0>;
L_0x19eb320 .delay (20000,20000,20000) L_0x19eb320/d;
v0x19da480_0 .net "AandB", 0 0, L_0x19eb080; 1 drivers
v0x19da540_0 .net "AandC", 0 0, L_0x19eb120; 1 drivers
v0x19da5e0_0 .net "BandC", 0 0, L_0x19eb1c0; 1 drivers
v0x19da680_0 .net "a", 0 0, L_0x19eb490; 1 drivers
v0x19da700_0 .net "b", 0 0, L_0x19eb5c0; 1 drivers
v0x19da7a0_0 .alias "carryin", 0 0, v0x19daaf0_0;
v0x19da840_0 .alias "carryout", 0 0, v0x19dac70_0;
v0x19da8c0_0 .net "sum", 0 0, L_0x19eaf20; 1 drivers
S_0x19d9d90 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19d8ff0;
 .timescale -9 -12;
L_0x19eb6f0/d .functor XOR 1, L_0x19ebd50, L_0x19ebe80, L_0x19eb320, C4<0>;
L_0x19eb6f0 .delay (30000,30000,30000) L_0x19eb6f0/d;
L_0x19eb8b0/d .functor AND 1, L_0x19ebd50, L_0x19ebe80, C4<1>, C4<1>;
L_0x19eb8b0 .delay (20000,20000,20000) L_0x19eb8b0/d;
L_0x19eb980/d .functor AND 1, L_0x19ebd50, L_0x19eb320, C4<1>, C4<1>;
L_0x19eb980 .delay (20000,20000,20000) L_0x19eb980/d;
L_0x19eba20/d .functor AND 1, L_0x19ebe80, L_0x19eb320, C4<1>, C4<1>;
L_0x19eba20 .delay (20000,20000,20000) L_0x19eba20/d;
L_0x19ebaf0/d .functor OR 1, L_0x19eb8b0, L_0x19eb980, L_0x19eba20, C4<0>;
L_0x19ebaf0 .delay (20000,20000,20000) L_0x19ebaf0/d;
v0x19d9e80_0 .net "AandB", 0 0, L_0x19eb8b0; 1 drivers
v0x19d9f40_0 .net "AandC", 0 0, L_0x19eb980; 1 drivers
v0x19d9fe0_0 .net "BandC", 0 0, L_0x19eba20; 1 drivers
v0x19da080_0 .net "a", 0 0, L_0x19ebd50; 1 drivers
v0x19da100_0 .net "b", 0 0, L_0x19ebe80; 1 drivers
v0x19da1a0_0 .alias "carryin", 0 0, v0x19dac70_0;
v0x19da240_0 .alias "carryout", 0 0, v0x19dac70_1;
v0x19da2c0_0 .net "sum", 0 0, L_0x19eb6f0; 1 drivers
S_0x19d9790 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19d8ff0;
 .timescale -9 -12;
L_0x19ebff0/d .functor XOR 1, L_0x19ec5d0, L_0x19ec700, L_0x19ebaf0, C4<0>;
L_0x19ebff0 .delay (30000,30000,30000) L_0x19ebff0/d;
L_0x19ec120/d .functor AND 1, L_0x19ec5d0, L_0x19ec700, C4<1>, C4<1>;
L_0x19ec120 .delay (20000,20000,20000) L_0x19ec120/d;
L_0x19ec260/d .functor AND 1, L_0x19ec5d0, L_0x19ebaf0, C4<1>, C4<1>;
L_0x19ec260 .delay (20000,20000,20000) L_0x19ec260/d;
L_0x19ec300/d .functor AND 1, L_0x19ec700, L_0x19ebaf0, C4<1>, C4<1>;
L_0x19ec300 .delay (20000,20000,20000) L_0x19ec300/d;
L_0x19ec3a0/d .functor OR 1, L_0x19ec120, L_0x19ec260, L_0x19ec300, C4<0>;
L_0x19ec3a0 .delay (20000,20000,20000) L_0x19ec3a0/d;
v0x19d9880_0 .net "AandB", 0 0, L_0x19ec120; 1 drivers
v0x19d9940_0 .net "AandC", 0 0, L_0x19ec260; 1 drivers
v0x19d99e0_0 .net "BandC", 0 0, L_0x19ec300; 1 drivers
v0x19d9a80_0 .net "a", 0 0, L_0x19ec5d0; 1 drivers
v0x19d9b00_0 .net "b", 0 0, L_0x19ec700; 1 drivers
v0x19d9ba0_0 .alias "carryin", 0 0, v0x19dac70_1;
v0x19d9c40_0 .alias "carryout", 0 0, v0x19dac70_2;
v0x19d9cc0_0 .net "sum", 0 0, L_0x19ebff0; 1 drivers
S_0x19d90e0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19d8ff0;
 .timescale -9 -12;
L_0x19ec830/d .functor XOR 1, L_0x19ecf00, L_0x19ed0c0, L_0x19ec3a0, C4<0>;
L_0x19ec830 .delay (30000,30000,30000) L_0x19ec830/d;
L_0x19ec920/d .functor AND 1, L_0x19ecf00, L_0x19ed0c0, C4<1>, C4<1>;
L_0x19ec920 .delay (20000,20000,20000) L_0x19ec920/d;
L_0x19eca40/d .functor AND 1, L_0x19ecf00, L_0x19ec3a0, C4<1>, C4<1>;
L_0x19eca40 .delay (20000,20000,20000) L_0x19eca40/d;
L_0x19ecae0/d .functor AND 1, L_0x19ed0c0, L_0x19ec3a0, C4<1>, C4<1>;
L_0x19ecae0 .delay (20000,20000,20000) L_0x19ecae0/d;
L_0x19ecbb0/d .functor OR 1, L_0x19ec920, L_0x19eca40, L_0x19ecae0, C4<0>;
L_0x19ecbb0 .delay (20000,20000,20000) L_0x19ecbb0/d;
v0x19d91d0_0 .net "AandB", 0 0, L_0x19ec920; 1 drivers
v0x19d9290_0 .net "AandC", 0 0, L_0x19eca40; 1 drivers
v0x19d9330_0 .net "BandC", 0 0, L_0x19ecae0; 1 drivers
v0x19d93d0_0 .net "a", 0 0, L_0x19ecf00; 1 drivers
v0x19d9450_0 .net "b", 0 0, L_0x19ed0c0; 1 drivers
v0x19d94f0_0 .alias "carryin", 0 0, v0x19dac70_2;
v0x19d95d0_0 .alias "carryout", 0 0, v0x19db130_0;
v0x19d96a0_0 .net "sum", 0 0, L_0x19ec830; 1 drivers
S_0x19d7200 .scope module, "f41" "CompAdder4bit" 2 81, 2 30, S_0x19b9c70;
 .timescale -9 -12;
v0x19d8ba0_0 .net "a", 3 0, L_0x19ef9e0; 1 drivers
v0x19d8c60_0 .net "b", 3 0, L_0x19efa80; 1 drivers
v0x19d8d00_0 .alias "carryin", 0 0, v0x19db130_0;
v0x19d8d80_0 .alias "carryout", 0 0, v0x19db130_1;
v0x19d8e00_0 .net8 "sum", 3 0, RS_0x2b3f9cdef8c8; 4 drivers
v0x19d8e80 .array "temp_cout", 0 2;
v0x19d8e80_0 .net v0x19d8e80 0, 0 0, L_0x19ed8e0; 1 drivers
v0x19d8e80_1 .net v0x19d8e80 1, 0 0, L_0x19ee0b0; 1 drivers
v0x19d8e80_2 .net v0x19d8e80 2, 0 0, L_0x19ee9b0; 1 drivers
L_0x19ed9b0 .part/pv L_0x19ecea0, 0, 1, 4;
L_0x19eda50 .part L_0x19ef9e0, 0, 1;
L_0x19edb80 .part L_0x19efa80, 0, 1;
L_0x19ee270 .part/pv L_0x19edcb0, 1, 1, 4;
L_0x19ee360 .part L_0x19ef9e0, 1, 1;
L_0x19ee490 .part L_0x19efa80, 1, 1;
L_0x19eeb40 .part/pv L_0x19ee600, 2, 1, 4;
L_0x19eebe0 .part L_0x19ef9e0, 2, 1;
L_0x19eed10 .part L_0x19efa80, 2, 1;
L_0x19ef3c0 .part/pv L_0x19eee40, 3, 1, 4;
L_0x19ef550 .part L_0x19ef9e0, 3, 1;
L_0x19ef710 .part L_0x19efa80, 3, 1;
S_0x19d85a0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19d7200;
 .timescale -9 -12;
L_0x19ecea0/d .functor XOR 1, L_0x19eda50, L_0x19edb80, L_0x19ecbb0, C4<0>;
L_0x19ecea0 .delay (30000,30000,30000) L_0x19ecea0/d;
L_0x19ed5e0/d .functor AND 1, L_0x19eda50, L_0x19edb80, C4<1>, C4<1>;
L_0x19ed5e0 .delay (20000,20000,20000) L_0x19ed5e0/d;
L_0x19ed6b0/d .functor AND 1, L_0x19eda50, L_0x19ecbb0, C4<1>, C4<1>;
L_0x19ed6b0 .delay (20000,20000,20000) L_0x19ed6b0/d;
L_0x19ed750/d .functor AND 1, L_0x19edb80, L_0x19ecbb0, C4<1>, C4<1>;
L_0x19ed750 .delay (20000,20000,20000) L_0x19ed750/d;
L_0x19ed8e0/d .functor OR 1, L_0x19ed5e0, L_0x19ed6b0, L_0x19ed750, C4<0>;
L_0x19ed8e0 .delay (20000,20000,20000) L_0x19ed8e0/d;
v0x19d8690_0 .net "AandB", 0 0, L_0x19ed5e0; 1 drivers
v0x19d8750_0 .net "AandC", 0 0, L_0x19ed6b0; 1 drivers
v0x19d87f0_0 .net "BandC", 0 0, L_0x19ed750; 1 drivers
v0x19d8890_0 .net "a", 0 0, L_0x19eda50; 1 drivers
v0x19d8910_0 .net "b", 0 0, L_0x19edb80; 1 drivers
v0x19d89b0_0 .alias "carryin", 0 0, v0x19db130_0;
v0x19d8a50_0 .alias "carryout", 0 0, v0x19d8e80_0;
v0x19d8ad0_0 .net "sum", 0 0, L_0x19ecea0; 1 drivers
S_0x19d7fa0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19d7200;
 .timescale -9 -12;
L_0x19edcb0/d .functor XOR 1, L_0x19ee360, L_0x19ee490, L_0x19ed8e0, C4<0>;
L_0x19edcb0 .delay (30000,30000,30000) L_0x19edcb0/d;
L_0x19ede70/d .functor AND 1, L_0x19ee360, L_0x19ee490, C4<1>, C4<1>;
L_0x19ede70 .delay (20000,20000,20000) L_0x19ede70/d;
L_0x19edf40/d .functor AND 1, L_0x19ee360, L_0x19ed8e0, C4<1>, C4<1>;
L_0x19edf40 .delay (20000,20000,20000) L_0x19edf40/d;
L_0x19edfe0/d .functor AND 1, L_0x19ee490, L_0x19ed8e0, C4<1>, C4<1>;
L_0x19edfe0 .delay (20000,20000,20000) L_0x19edfe0/d;
L_0x19ee0b0/d .functor OR 1, L_0x19ede70, L_0x19edf40, L_0x19edfe0, C4<0>;
L_0x19ee0b0 .delay (20000,20000,20000) L_0x19ee0b0/d;
v0x19d8090_0 .net "AandB", 0 0, L_0x19ede70; 1 drivers
v0x19d8150_0 .net "AandC", 0 0, L_0x19edf40; 1 drivers
v0x19d81f0_0 .net "BandC", 0 0, L_0x19edfe0; 1 drivers
v0x19d8290_0 .net "a", 0 0, L_0x19ee360; 1 drivers
v0x19d8310_0 .net "b", 0 0, L_0x19ee490; 1 drivers
v0x19d83b0_0 .alias "carryin", 0 0, v0x19d8e80_0;
v0x19d8450_0 .alias "carryout", 0 0, v0x19d8e80_1;
v0x19d84d0_0 .net "sum", 0 0, L_0x19edcb0; 1 drivers
S_0x19d79a0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19d7200;
 .timescale -9 -12;
L_0x19ee600/d .functor XOR 1, L_0x19eebe0, L_0x19eed10, L_0x19ee0b0, C4<0>;
L_0x19ee600 .delay (30000,30000,30000) L_0x19ee600/d;
L_0x19ee730/d .functor AND 1, L_0x19eebe0, L_0x19eed10, C4<1>, C4<1>;
L_0x19ee730 .delay (20000,20000,20000) L_0x19ee730/d;
L_0x19ee870/d .functor AND 1, L_0x19eebe0, L_0x19ee0b0, C4<1>, C4<1>;
L_0x19ee870 .delay (20000,20000,20000) L_0x19ee870/d;
L_0x19ee910/d .functor AND 1, L_0x19eed10, L_0x19ee0b0, C4<1>, C4<1>;
L_0x19ee910 .delay (20000,20000,20000) L_0x19ee910/d;
L_0x19ee9b0/d .functor OR 1, L_0x19ee730, L_0x19ee870, L_0x19ee910, C4<0>;
L_0x19ee9b0 .delay (20000,20000,20000) L_0x19ee9b0/d;
v0x19d7a90_0 .net "AandB", 0 0, L_0x19ee730; 1 drivers
v0x19d7b50_0 .net "AandC", 0 0, L_0x19ee870; 1 drivers
v0x19d7bf0_0 .net "BandC", 0 0, L_0x19ee910; 1 drivers
v0x19d7c90_0 .net "a", 0 0, L_0x19eebe0; 1 drivers
v0x19d7d10_0 .net "b", 0 0, L_0x19eed10; 1 drivers
v0x19d7db0_0 .alias "carryin", 0 0, v0x19d8e80_1;
v0x19d7e50_0 .alias "carryout", 0 0, v0x19d8e80_2;
v0x19d7ed0_0 .net "sum", 0 0, L_0x19ee600; 1 drivers
S_0x19d72f0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19d7200;
 .timescale -9 -12;
L_0x19eee40/d .functor XOR 1, L_0x19ef550, L_0x19ef710, L_0x19ee9b0, C4<0>;
L_0x19eee40 .delay (30000,30000,30000) L_0x19eee40/d;
L_0x19eef30/d .functor AND 1, L_0x19ef550, L_0x19ef710, C4<1>, C4<1>;
L_0x19eef30 .delay (20000,20000,20000) L_0x19eef30/d;
L_0x19ef050/d .functor AND 1, L_0x19ef550, L_0x19ee9b0, C4<1>, C4<1>;
L_0x19ef050 .delay (20000,20000,20000) L_0x19ef050/d;
L_0x19ef110/d .functor AND 1, L_0x19ef710, L_0x19ee9b0, C4<1>, C4<1>;
L_0x19ef110 .delay (20000,20000,20000) L_0x19ef110/d;
L_0x19ef200/d .functor OR 1, L_0x19eef30, L_0x19ef050, L_0x19ef110, C4<0>;
L_0x19ef200 .delay (20000,20000,20000) L_0x19ef200/d;
v0x19d73e0_0 .net "AandB", 0 0, L_0x19eef30; 1 drivers
v0x19d74a0_0 .net "AandC", 0 0, L_0x19ef050; 1 drivers
v0x19d7540_0 .net "BandC", 0 0, L_0x19ef110; 1 drivers
v0x19d75e0_0 .net "a", 0 0, L_0x19ef550; 1 drivers
v0x19d7660_0 .net "b", 0 0, L_0x19ef710; 1 drivers
v0x19d7700_0 .alias "carryin", 0 0, v0x19d8e80_2;
v0x19d77e0_0 .alias "carryout", 0 0, v0x19db130_1;
v0x19d78b0_0 .net "sum", 0 0, L_0x19eee40; 1 drivers
S_0x19d5410 .scope module, "f42" "CompAdder4bit" 2 82, 2 30, S_0x19b9c70;
 .timescale -9 -12;
v0x19d6db0_0 .net "a", 3 0, L_0x19f2000; 1 drivers
v0x19d6e70_0 .net "b", 3 0, L_0x19f20a0; 1 drivers
v0x19d6f10_0 .alias "carryin", 0 0, v0x19db130_1;
v0x19d6f90_0 .alias "carryout", 0 0, v0x19db130_2;
v0x19d7010_0 .net8 "sum", 3 0, RS_0x2b3f9cdef2f8; 4 drivers
v0x19d7090 .array "temp_cout", 0 2;
v0x19d7090_0 .net v0x19d7090 0, 0 0, L_0x19efe70; 1 drivers
v0x19d7090_1 .net v0x19d7090 1, 0 0, L_0x19f06b0; 1 drivers
v0x19d7090_2 .net v0x19d7090 2, 0 0, L_0x19f0fd0; 1 drivers
L_0x19effb0 .part/pv L_0x19ef4f0, 0, 1, 4;
L_0x19f0050 .part L_0x19f2000, 0, 1;
L_0x19f0180 .part L_0x19f20a0, 0, 1;
L_0x19f0870 .part/pv L_0x19f02b0, 1, 1, 4;
L_0x19f0960 .part L_0x19f2000, 1, 1;
L_0x19f0a90 .part L_0x19f20a0, 1, 1;
L_0x19f1160 .part/pv L_0x19f0c00, 2, 1, 4;
L_0x19f1200 .part L_0x19f2000, 2, 1;
L_0x19f1330 .part L_0x19f20a0, 2, 1;
L_0x19f19e0 .part/pv L_0x19f1460, 3, 1, 4;
L_0x19f1b70 .part L_0x19f2000, 3, 1;
L_0x19f1d30 .part L_0x19f20a0, 3, 1;
S_0x19d67b0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19d5410;
 .timescale -9 -12;
L_0x19ef4f0/d .functor XOR 1, L_0x19f0050, L_0x19f0180, L_0x19ef200, C4<0>;
L_0x19ef4f0 .delay (30000,30000,30000) L_0x19ef4f0/d;
L_0x19efba0/d .functor AND 1, L_0x19f0050, L_0x19f0180, C4<1>, C4<1>;
L_0x19efba0 .delay (20000,20000,20000) L_0x19efba0/d;
L_0x19efc40/d .functor AND 1, L_0x19f0050, L_0x19ef200, C4<1>, C4<1>;
L_0x19efc40 .delay (20000,20000,20000) L_0x19efc40/d;
L_0x19efce0/d .functor AND 1, L_0x19f0180, L_0x19ef200, C4<1>, C4<1>;
L_0x19efce0 .delay (20000,20000,20000) L_0x19efce0/d;
L_0x19efe70/d .functor OR 1, L_0x19efba0, L_0x19efc40, L_0x19efce0, C4<0>;
L_0x19efe70 .delay (20000,20000,20000) L_0x19efe70/d;
v0x19d68a0_0 .net "AandB", 0 0, L_0x19efba0; 1 drivers
v0x19d6960_0 .net "AandC", 0 0, L_0x19efc40; 1 drivers
v0x19d6a00_0 .net "BandC", 0 0, L_0x19efce0; 1 drivers
v0x19d6aa0_0 .net "a", 0 0, L_0x19f0050; 1 drivers
v0x19d6b20_0 .net "b", 0 0, L_0x19f0180; 1 drivers
v0x19d6bc0_0 .alias "carryin", 0 0, v0x19db130_1;
v0x19d6c60_0 .alias "carryout", 0 0, v0x19d7090_0;
v0x19d6ce0_0 .net "sum", 0 0, L_0x19ef4f0; 1 drivers
S_0x19d61b0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19d5410;
 .timescale -9 -12;
L_0x19f02b0/d .functor XOR 1, L_0x19f0960, L_0x19f0a90, L_0x19efe70, C4<0>;
L_0x19f02b0 .delay (30000,30000,30000) L_0x19f02b0/d;
L_0x19f0470/d .functor AND 1, L_0x19f0960, L_0x19f0a90, C4<1>, C4<1>;
L_0x19f0470 .delay (20000,20000,20000) L_0x19f0470/d;
L_0x19f0540/d .functor AND 1, L_0x19f0960, L_0x19efe70, C4<1>, C4<1>;
L_0x19f0540 .delay (20000,20000,20000) L_0x19f0540/d;
L_0x19f05e0/d .functor AND 1, L_0x19f0a90, L_0x19efe70, C4<1>, C4<1>;
L_0x19f05e0 .delay (20000,20000,20000) L_0x19f05e0/d;
L_0x19f06b0/d .functor OR 1, L_0x19f0470, L_0x19f0540, L_0x19f05e0, C4<0>;
L_0x19f06b0 .delay (20000,20000,20000) L_0x19f06b0/d;
v0x19d62a0_0 .net "AandB", 0 0, L_0x19f0470; 1 drivers
v0x19d6360_0 .net "AandC", 0 0, L_0x19f0540; 1 drivers
v0x19d6400_0 .net "BandC", 0 0, L_0x19f05e0; 1 drivers
v0x19d64a0_0 .net "a", 0 0, L_0x19f0960; 1 drivers
v0x19d6520_0 .net "b", 0 0, L_0x19f0a90; 1 drivers
v0x19d65c0_0 .alias "carryin", 0 0, v0x19d7090_0;
v0x19d6660_0 .alias "carryout", 0 0, v0x19d7090_1;
v0x19d66e0_0 .net "sum", 0 0, L_0x19f02b0; 1 drivers
S_0x19d5bb0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19d5410;
 .timescale -9 -12;
L_0x19f0c00/d .functor XOR 1, L_0x19f1200, L_0x19f1330, L_0x19f06b0, C4<0>;
L_0x19f0c00 .delay (30000,30000,30000) L_0x19f0c00/d;
L_0x19f0d30/d .functor AND 1, L_0x19f1200, L_0x19f1330, C4<1>, C4<1>;
L_0x19f0d30 .delay (20000,20000,20000) L_0x19f0d30/d;
L_0x19f0e70/d .functor AND 1, L_0x19f1200, L_0x19f06b0, C4<1>, C4<1>;
L_0x19f0e70 .delay (20000,20000,20000) L_0x19f0e70/d;
L_0x19f0f10/d .functor AND 1, L_0x19f1330, L_0x19f06b0, C4<1>, C4<1>;
L_0x19f0f10 .delay (20000,20000,20000) L_0x19f0f10/d;
L_0x19f0fd0/d .functor OR 1, L_0x19f0d30, L_0x19f0e70, L_0x19f0f10, C4<0>;
L_0x19f0fd0 .delay (20000,20000,20000) L_0x19f0fd0/d;
v0x19d5ca0_0 .net "AandB", 0 0, L_0x19f0d30; 1 drivers
v0x19d5d60_0 .net "AandC", 0 0, L_0x19f0e70; 1 drivers
v0x19d5e00_0 .net "BandC", 0 0, L_0x19f0f10; 1 drivers
v0x19d5ea0_0 .net "a", 0 0, L_0x19f1200; 1 drivers
v0x19d5f20_0 .net "b", 0 0, L_0x19f1330; 1 drivers
v0x19d5fc0_0 .alias "carryin", 0 0, v0x19d7090_1;
v0x19d6060_0 .alias "carryout", 0 0, v0x19d7090_2;
v0x19d60e0_0 .net "sum", 0 0, L_0x19f0c00; 1 drivers
S_0x19d5500 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19d5410;
 .timescale -9 -12;
L_0x19f1460/d .functor XOR 1, L_0x19f1b70, L_0x19f1d30, L_0x19f0fd0, C4<0>;
L_0x19f1460 .delay (30000,30000,30000) L_0x19f1460/d;
L_0x19f1550/d .functor AND 1, L_0x19f1b70, L_0x19f1d30, C4<1>, C4<1>;
L_0x19f1550 .delay (20000,20000,20000) L_0x19f1550/d;
L_0x19f1670/d .functor AND 1, L_0x19f1b70, L_0x19f0fd0, C4<1>, C4<1>;
L_0x19f1670 .delay (20000,20000,20000) L_0x19f1670/d;
L_0x19f1730/d .functor AND 1, L_0x19f1d30, L_0x19f0fd0, C4<1>, C4<1>;
L_0x19f1730 .delay (20000,20000,20000) L_0x19f1730/d;
L_0x19f1820/d .functor OR 1, L_0x19f1550, L_0x19f1670, L_0x19f1730, C4<0>;
L_0x19f1820 .delay (20000,20000,20000) L_0x19f1820/d;
v0x19d55f0_0 .net "AandB", 0 0, L_0x19f1550; 1 drivers
v0x19d56b0_0 .net "AandC", 0 0, L_0x19f1670; 1 drivers
v0x19d5750_0 .net "BandC", 0 0, L_0x19f1730; 1 drivers
v0x19d57f0_0 .net "a", 0 0, L_0x19f1b70; 1 drivers
v0x19d5870_0 .net "b", 0 0, L_0x19f1d30; 1 drivers
v0x19d5910_0 .alias "carryin", 0 0, v0x19d7090_2;
v0x19d59f0_0 .alias "carryout", 0 0, v0x19db130_2;
v0x19d5ac0_0 .net "sum", 0 0, L_0x19f1460; 1 drivers
S_0x19d3620 .scope module, "f43" "CompAdder4bit" 2 83, 2 30, S_0x19b9c70;
 .timescale -9 -12;
v0x19d4fc0_0 .net "a", 3 0, L_0x19f4640; 1 drivers
v0x19d5080_0 .net "b", 3 0, L_0x19f4770; 1 drivers
v0x19d5120_0 .alias "carryin", 0 0, v0x19db130_2;
v0x19d51a0_0 .alias "carryout", 0 0, v0x19db130_3;
v0x19d5220_0 .net8 "sum", 3 0, RS_0x2b3f9cdeed28; 4 drivers
v0x19d52a0 .array "temp_cout", 0 2;
v0x19d52a0_0 .net v0x19d52a0 0, 0 0, L_0x19f2460; 1 drivers
v0x19d52a0_1 .net v0x19d52a0 1, 0 0, L_0x19f2c80; 1 drivers
v0x19d52a0_2 .net v0x19d52a0 2, 0 0, L_0x19f3580; 1 drivers
L_0x19f2580 .part/pv L_0x19f1b10, 0, 1, 4;
L_0x19f2620 .part L_0x19f4640, 0, 1;
L_0x19f2750 .part L_0x19f4770, 0, 1;
L_0x19f2e40 .part/pv L_0x19f2880, 1, 1, 4;
L_0x19f2f30 .part L_0x19f4640, 1, 1;
L_0x19f3060 .part L_0x19f4770, 1, 1;
L_0x19f3710 .part/pv L_0x19f31d0, 2, 1, 4;
L_0x19f37b0 .part L_0x19f4640, 2, 1;
L_0x19f38e0 .part L_0x19f4770, 2, 1;
L_0x19f3f90 .part/pv L_0x19f3a10, 3, 1, 4;
L_0x19f4120 .part L_0x19f4640, 3, 1;
L_0x19f42e0 .part L_0x19f4770, 3, 1;
S_0x19d49c0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19d3620;
 .timescale -9 -12;
L_0x19f1b10/d .functor XOR 1, L_0x19f2620, L_0x19f2750, L_0x19f1820, C4<0>;
L_0x19f1b10 .delay (30000,30000,30000) L_0x19f1b10/d;
L_0x19f2140/d .functor AND 1, L_0x19f2620, L_0x19f2750, C4<1>, C4<1>;
L_0x19f2140 .delay (20000,20000,20000) L_0x19f2140/d;
L_0x19f2210/d .functor AND 1, L_0x19f2620, L_0x19f1820, C4<1>, C4<1>;
L_0x19f2210 .delay (20000,20000,20000) L_0x19f2210/d;
L_0x19f22d0/d .functor AND 1, L_0x19f2750, L_0x19f1820, C4<1>, C4<1>;
L_0x19f22d0 .delay (20000,20000,20000) L_0x19f22d0/d;
L_0x19f2460/d .functor OR 1, L_0x19f2140, L_0x19f2210, L_0x19f22d0, C4<0>;
L_0x19f2460 .delay (20000,20000,20000) L_0x19f2460/d;
v0x19d4ab0_0 .net "AandB", 0 0, L_0x19f2140; 1 drivers
v0x19d4b70_0 .net "AandC", 0 0, L_0x19f2210; 1 drivers
v0x19d4c10_0 .net "BandC", 0 0, L_0x19f22d0; 1 drivers
v0x19d4cb0_0 .net "a", 0 0, L_0x19f2620; 1 drivers
v0x19d4d30_0 .net "b", 0 0, L_0x19f2750; 1 drivers
v0x19d4dd0_0 .alias "carryin", 0 0, v0x19db130_2;
v0x19d4e70_0 .alias "carryout", 0 0, v0x19d52a0_0;
v0x19d4ef0_0 .net "sum", 0 0, L_0x19f1b10; 1 drivers
S_0x19d43c0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19d3620;
 .timescale -9 -12;
L_0x19f2880/d .functor XOR 1, L_0x19f2f30, L_0x19f3060, L_0x19f2460, C4<0>;
L_0x19f2880 .delay (30000,30000,30000) L_0x19f2880/d;
L_0x19f2a40/d .functor AND 1, L_0x19f2f30, L_0x19f3060, C4<1>, C4<1>;
L_0x19f2a40 .delay (20000,20000,20000) L_0x19f2a40/d;
L_0x19f2b10/d .functor AND 1, L_0x19f2f30, L_0x19f2460, C4<1>, C4<1>;
L_0x19f2b10 .delay (20000,20000,20000) L_0x19f2b10/d;
L_0x19f2bb0/d .functor AND 1, L_0x19f3060, L_0x19f2460, C4<1>, C4<1>;
L_0x19f2bb0 .delay (20000,20000,20000) L_0x19f2bb0/d;
L_0x19f2c80/d .functor OR 1, L_0x19f2a40, L_0x19f2b10, L_0x19f2bb0, C4<0>;
L_0x19f2c80 .delay (20000,20000,20000) L_0x19f2c80/d;
v0x19d44b0_0 .net "AandB", 0 0, L_0x19f2a40; 1 drivers
v0x19d4570_0 .net "AandC", 0 0, L_0x19f2b10; 1 drivers
v0x19d4610_0 .net "BandC", 0 0, L_0x19f2bb0; 1 drivers
v0x19d46b0_0 .net "a", 0 0, L_0x19f2f30; 1 drivers
v0x19d4730_0 .net "b", 0 0, L_0x19f3060; 1 drivers
v0x19d47d0_0 .alias "carryin", 0 0, v0x19d52a0_0;
v0x19d4870_0 .alias "carryout", 0 0, v0x19d52a0_1;
v0x19d48f0_0 .net "sum", 0 0, L_0x19f2880; 1 drivers
S_0x19d3dc0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19d3620;
 .timescale -9 -12;
L_0x19f31d0/d .functor XOR 1, L_0x19f37b0, L_0x19f38e0, L_0x19f2c80, C4<0>;
L_0x19f31d0 .delay (30000,30000,30000) L_0x19f31d0/d;
L_0x19f3300/d .functor AND 1, L_0x19f37b0, L_0x19f38e0, C4<1>, C4<1>;
L_0x19f3300 .delay (20000,20000,20000) L_0x19f3300/d;
L_0x19f3440/d .functor AND 1, L_0x19f37b0, L_0x19f2c80, C4<1>, C4<1>;
L_0x19f3440 .delay (20000,20000,20000) L_0x19f3440/d;
L_0x19f34e0/d .functor AND 1, L_0x19f38e0, L_0x19f2c80, C4<1>, C4<1>;
L_0x19f34e0 .delay (20000,20000,20000) L_0x19f34e0/d;
L_0x19f3580/d .functor OR 1, L_0x19f3300, L_0x19f3440, L_0x19f34e0, C4<0>;
L_0x19f3580 .delay (20000,20000,20000) L_0x19f3580/d;
v0x19d3eb0_0 .net "AandB", 0 0, L_0x19f3300; 1 drivers
v0x19d3f70_0 .net "AandC", 0 0, L_0x19f3440; 1 drivers
v0x19d4010_0 .net "BandC", 0 0, L_0x19f34e0; 1 drivers
v0x19d40b0_0 .net "a", 0 0, L_0x19f37b0; 1 drivers
v0x19d4130_0 .net "b", 0 0, L_0x19f38e0; 1 drivers
v0x19d41d0_0 .alias "carryin", 0 0, v0x19d52a0_1;
v0x19d4270_0 .alias "carryout", 0 0, v0x19d52a0_2;
v0x19d42f0_0 .net "sum", 0 0, L_0x19f31d0; 1 drivers
S_0x19d3710 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19d3620;
 .timescale -9 -12;
L_0x19f3a10/d .functor XOR 1, L_0x19f4120, L_0x19f42e0, L_0x19f3580, C4<0>;
L_0x19f3a10 .delay (30000,30000,30000) L_0x19f3a10/d;
L_0x19f3b00/d .functor AND 1, L_0x19f4120, L_0x19f42e0, C4<1>, C4<1>;
L_0x19f3b00 .delay (20000,20000,20000) L_0x19f3b00/d;
L_0x19f3c20/d .functor AND 1, L_0x19f4120, L_0x19f3580, C4<1>, C4<1>;
L_0x19f3c20 .delay (20000,20000,20000) L_0x19f3c20/d;
L_0x19f3ce0/d .functor AND 1, L_0x19f42e0, L_0x19f3580, C4<1>, C4<1>;
L_0x19f3ce0 .delay (20000,20000,20000) L_0x19f3ce0/d;
L_0x19f3dd0/d .functor OR 1, L_0x19f3b00, L_0x19f3c20, L_0x19f3ce0, C4<0>;
L_0x19f3dd0 .delay (20000,20000,20000) L_0x19f3dd0/d;
v0x19d3800_0 .net "AandB", 0 0, L_0x19f3b00; 1 drivers
v0x19d38c0_0 .net "AandC", 0 0, L_0x19f3c20; 1 drivers
v0x19d3960_0 .net "BandC", 0 0, L_0x19f3ce0; 1 drivers
v0x19d3a00_0 .net "a", 0 0, L_0x19f4120; 1 drivers
v0x19d3a80_0 .net "b", 0 0, L_0x19f42e0; 1 drivers
v0x19d3b20_0 .alias "carryin", 0 0, v0x19d52a0_2;
v0x19d3c00_0 .alias "carryout", 0 0, v0x19db130_3;
v0x19d3cd0_0 .net "sum", 0 0, L_0x19f3a10; 1 drivers
S_0x19d1830 .scope module, "f44" "CompAdder4bit" 2 84, 2 30, S_0x19b9c70;
 .timescale -9 -12;
v0x19d31d0_0 .net "a", 3 0, L_0x19f6c30; 1 drivers
v0x19d3290_0 .net "b", 3 0, L_0x19f6d50; 1 drivers
v0x19d3330_0 .alias "carryin", 0 0, v0x19db130_3;
v0x19d33b0_0 .alias "carryout", 0 0, v0x19db130_4;
v0x19d3430_0 .net8 "sum", 3 0, RS_0x2b3f9cdee758; 4 drivers
v0x19d34b0 .array "temp_cout", 0 2;
v0x19d34b0_0 .net v0x19d34b0 0, 0 0, L_0x19f4c70; 1 drivers
v0x19d34b0_1 .net v0x19d34b0 1, 0 0, L_0x19f5440; 1 drivers
v0x19d34b0_2 .net v0x19d34b0 2, 0 0, L_0x19f5c00; 1 drivers
L_0x19f4d40 .part/pv L_0x19f40c0, 0, 1, 4;
L_0x19f4de0 .part L_0x19f6c30, 0, 1;
L_0x19f4f10 .part L_0x19f6d50, 0, 1;
L_0x19f5510 .part/pv L_0x19f5040, 1, 1, 4;
L_0x19f55b0 .part L_0x19f6c30, 1, 1;
L_0x19f56e0 .part L_0x19f6d50, 1, 1;
L_0x19f5d90 .part/pv L_0x19f5850, 2, 1, 4;
L_0x19f5e30 .part L_0x19f6c30, 2, 1;
L_0x19f5f60 .part L_0x19f6d50, 2, 1;
L_0x19f6610 .part/pv L_0x19f6090, 3, 1, 4;
L_0x19f67a0 .part L_0x19f6c30, 3, 1;
L_0x19f6960 .part L_0x19f6d50, 3, 1;
S_0x19d2bd0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19d1830;
 .timescale -9 -12;
L_0x19f40c0/d .functor XOR 1, L_0x19f4de0, L_0x19f4f10, L_0x19f3dd0, C4<0>;
L_0x19f40c0 .delay (30000,30000,30000) L_0x19f40c0/d;
L_0x19f4950/d .functor AND 1, L_0x19f4de0, L_0x19f4f10, C4<1>, C4<1>;
L_0x19f4950 .delay (20000,20000,20000) L_0x19f4950/d;
L_0x19f4a20/d .functor AND 1, L_0x19f4de0, L_0x19f3dd0, C4<1>, C4<1>;
L_0x19f4a20 .delay (20000,20000,20000) L_0x19f4a20/d;
L_0x19f4ae0/d .functor AND 1, L_0x19f4f10, L_0x19f3dd0, C4<1>, C4<1>;
L_0x19f4ae0 .delay (20000,20000,20000) L_0x19f4ae0/d;
L_0x19f4c70/d .functor OR 1, L_0x19f4950, L_0x19f4a20, L_0x19f4ae0, C4<0>;
L_0x19f4c70 .delay (20000,20000,20000) L_0x19f4c70/d;
v0x19d2cc0_0 .net "AandB", 0 0, L_0x19f4950; 1 drivers
v0x19d2d80_0 .net "AandC", 0 0, L_0x19f4a20; 1 drivers
v0x19d2e20_0 .net "BandC", 0 0, L_0x19f4ae0; 1 drivers
v0x19d2ec0_0 .net "a", 0 0, L_0x19f4de0; 1 drivers
v0x19d2f40_0 .net "b", 0 0, L_0x19f4f10; 1 drivers
v0x19d2fe0_0 .alias "carryin", 0 0, v0x19db130_3;
v0x19d3080_0 .alias "carryout", 0 0, v0x19d34b0_0;
v0x19d3100_0 .net "sum", 0 0, L_0x19f40c0; 1 drivers
S_0x19d25d0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19d1830;
 .timescale -9 -12;
L_0x19f5040/d .functor XOR 1, L_0x19f55b0, L_0x19f56e0, L_0x19f4c70, C4<0>;
L_0x19f5040 .delay (30000,30000,30000) L_0x19f5040/d;
L_0x19f5200/d .functor AND 1, L_0x19f55b0, L_0x19f56e0, C4<1>, C4<1>;
L_0x19f5200 .delay (20000,20000,20000) L_0x19f5200/d;
L_0x19f52d0/d .functor AND 1, L_0x19f55b0, L_0x19f4c70, C4<1>, C4<1>;
L_0x19f52d0 .delay (20000,20000,20000) L_0x19f52d0/d;
L_0x19f5370/d .functor AND 1, L_0x19f56e0, L_0x19f4c70, C4<1>, C4<1>;
L_0x19f5370 .delay (20000,20000,20000) L_0x19f5370/d;
L_0x19f5440/d .functor OR 1, L_0x19f5200, L_0x19f52d0, L_0x19f5370, C4<0>;
L_0x19f5440 .delay (20000,20000,20000) L_0x19f5440/d;
v0x19d26c0_0 .net "AandB", 0 0, L_0x19f5200; 1 drivers
v0x19d2780_0 .net "AandC", 0 0, L_0x19f52d0; 1 drivers
v0x19d2820_0 .net "BandC", 0 0, L_0x19f5370; 1 drivers
v0x19d28c0_0 .net "a", 0 0, L_0x19f55b0; 1 drivers
v0x19d2940_0 .net "b", 0 0, L_0x19f56e0; 1 drivers
v0x19d29e0_0 .alias "carryin", 0 0, v0x19d34b0_0;
v0x19d2a80_0 .alias "carryout", 0 0, v0x19d34b0_1;
v0x19d2b00_0 .net "sum", 0 0, L_0x19f5040; 1 drivers
S_0x19d1fd0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19d1830;
 .timescale -9 -12;
L_0x19f5850/d .functor XOR 1, L_0x19f5e30, L_0x19f5f60, L_0x19f5440, C4<0>;
L_0x19f5850 .delay (30000,30000,30000) L_0x19f5850/d;
L_0x19f5980/d .functor AND 1, L_0x19f5e30, L_0x19f5f60, C4<1>, C4<1>;
L_0x19f5980 .delay (20000,20000,20000) L_0x19f5980/d;
L_0x19f5ac0/d .functor AND 1, L_0x19f5e30, L_0x19f5440, C4<1>, C4<1>;
L_0x19f5ac0 .delay (20000,20000,20000) L_0x19f5ac0/d;
L_0x19f5b60/d .functor AND 1, L_0x19f5f60, L_0x19f5440, C4<1>, C4<1>;
L_0x19f5b60 .delay (20000,20000,20000) L_0x19f5b60/d;
L_0x19f5c00/d .functor OR 1, L_0x19f5980, L_0x19f5ac0, L_0x19f5b60, C4<0>;
L_0x19f5c00 .delay (20000,20000,20000) L_0x19f5c00/d;
v0x19d20c0_0 .net "AandB", 0 0, L_0x19f5980; 1 drivers
v0x19d2180_0 .net "AandC", 0 0, L_0x19f5ac0; 1 drivers
v0x19d2220_0 .net "BandC", 0 0, L_0x19f5b60; 1 drivers
v0x19d22c0_0 .net "a", 0 0, L_0x19f5e30; 1 drivers
v0x19d2340_0 .net "b", 0 0, L_0x19f5f60; 1 drivers
v0x19d23e0_0 .alias "carryin", 0 0, v0x19d34b0_1;
v0x19d2480_0 .alias "carryout", 0 0, v0x19d34b0_2;
v0x19d2500_0 .net "sum", 0 0, L_0x19f5850; 1 drivers
S_0x19d1920 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19d1830;
 .timescale -9 -12;
L_0x19f6090/d .functor XOR 1, L_0x19f67a0, L_0x19f6960, L_0x19f5c00, C4<0>;
L_0x19f6090 .delay (30000,30000,30000) L_0x19f6090/d;
L_0x19f6180/d .functor AND 1, L_0x19f67a0, L_0x19f6960, C4<1>, C4<1>;
L_0x19f6180 .delay (20000,20000,20000) L_0x19f6180/d;
L_0x19f62a0/d .functor AND 1, L_0x19f67a0, L_0x19f5c00, C4<1>, C4<1>;
L_0x19f62a0 .delay (20000,20000,20000) L_0x19f62a0/d;
L_0x19f6360/d .functor AND 1, L_0x19f6960, L_0x19f5c00, C4<1>, C4<1>;
L_0x19f6360 .delay (20000,20000,20000) L_0x19f6360/d;
L_0x19f6450/d .functor OR 1, L_0x19f6180, L_0x19f62a0, L_0x19f6360, C4<0>;
L_0x19f6450 .delay (20000,20000,20000) L_0x19f6450/d;
v0x19d1a10_0 .net "AandB", 0 0, L_0x19f6180; 1 drivers
v0x19d1ad0_0 .net "AandC", 0 0, L_0x19f62a0; 1 drivers
v0x19d1b70_0 .net "BandC", 0 0, L_0x19f6360; 1 drivers
v0x19d1c10_0 .net "a", 0 0, L_0x19f67a0; 1 drivers
v0x19d1c90_0 .net "b", 0 0, L_0x19f6960; 1 drivers
v0x19d1d30_0 .alias "carryin", 0 0, v0x19d34b0_2;
v0x19d1e10_0 .alias "carryout", 0 0, v0x19db130_4;
v0x19d1ee0_0 .net "sum", 0 0, L_0x19f6090; 1 drivers
S_0x19cfa40 .scope module, "f45" "CompAdder4bit" 2 85, 2 30, S_0x19b9c70;
 .timescale -9 -12;
v0x19d13e0_0 .net "a", 3 0, L_0x19f9270; 1 drivers
v0x19d14a0_0 .net "b", 3 0, L_0x19f9310; 1 drivers
v0x19d1540_0 .alias "carryin", 0 0, v0x19db130_4;
v0x19d15c0_0 .alias "carryout", 0 0, v0x19db130_5;
v0x19d1640_0 .net8 "sum", 3 0, RS_0x2b3f9cdee188; 4 drivers
v0x19d16c0 .array "temp_cout", 0 2;
v0x19d16c0_0 .net v0x19d16c0 0, 0 0, L_0x19f7150; 1 drivers
v0x19d16c0_1 .net v0x19d16c0 1, 0 0, L_0x19f7920; 1 drivers
v0x19d16c0_2 .net v0x19d16c0 2, 0 0, L_0x19f8220; 1 drivers
L_0x19f7220 .part/pv L_0x19f6740, 0, 1, 4;
L_0x19f72c0 .part L_0x19f9270, 0, 1;
L_0x19f73f0 .part L_0x19f9310, 0, 1;
L_0x19f7ae0 .part/pv L_0x19f7520, 1, 1, 4;
L_0x19f7bd0 .part L_0x19f9270, 1, 1;
L_0x19f7d00 .part L_0x19f9310, 1, 1;
L_0x19f83b0 .part/pv L_0x19f7e70, 2, 1, 4;
L_0x19f8450 .part L_0x19f9270, 2, 1;
L_0x19f8580 .part L_0x19f9310, 2, 1;
L_0x19f8c30 .part/pv L_0x19f86b0, 3, 1, 4;
L_0x19f8dc0 .part L_0x19f9270, 3, 1;
L_0x19f8f80 .part L_0x19f9310, 3, 1;
S_0x19d0de0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19cfa40;
 .timescale -9 -12;
L_0x19f6740/d .functor XOR 1, L_0x19f72c0, L_0x19f73f0, L_0x19f6450, C4<0>;
L_0x19f6740 .delay (30000,30000,30000) L_0x19f6740/d;
L_0x19f6e30/d .functor AND 1, L_0x19f72c0, L_0x19f73f0, C4<1>, C4<1>;
L_0x19f6e30 .delay (20000,20000,20000) L_0x19f6e30/d;
L_0x19f6f00/d .functor AND 1, L_0x19f72c0, L_0x19f6450, C4<1>, C4<1>;
L_0x19f6f00 .delay (20000,20000,20000) L_0x19f6f00/d;
L_0x19f6fc0/d .functor AND 1, L_0x19f73f0, L_0x19f6450, C4<1>, C4<1>;
L_0x19f6fc0 .delay (20000,20000,20000) L_0x19f6fc0/d;
L_0x19f7150/d .functor OR 1, L_0x19f6e30, L_0x19f6f00, L_0x19f6fc0, C4<0>;
L_0x19f7150 .delay (20000,20000,20000) L_0x19f7150/d;
v0x19d0ed0_0 .net "AandB", 0 0, L_0x19f6e30; 1 drivers
v0x19d0f90_0 .net "AandC", 0 0, L_0x19f6f00; 1 drivers
v0x19d1030_0 .net "BandC", 0 0, L_0x19f6fc0; 1 drivers
v0x19d10d0_0 .net "a", 0 0, L_0x19f72c0; 1 drivers
v0x19d1150_0 .net "b", 0 0, L_0x19f73f0; 1 drivers
v0x19d11f0_0 .alias "carryin", 0 0, v0x19db130_4;
v0x19d1290_0 .alias "carryout", 0 0, v0x19d16c0_0;
v0x19d1310_0 .net "sum", 0 0, L_0x19f6740; 1 drivers
S_0x19d07e0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19cfa40;
 .timescale -9 -12;
L_0x19f7520/d .functor XOR 1, L_0x19f7bd0, L_0x19f7d00, L_0x19f7150, C4<0>;
L_0x19f7520 .delay (30000,30000,30000) L_0x19f7520/d;
L_0x19f76e0/d .functor AND 1, L_0x19f7bd0, L_0x19f7d00, C4<1>, C4<1>;
L_0x19f76e0 .delay (20000,20000,20000) L_0x19f76e0/d;
L_0x19f77b0/d .functor AND 1, L_0x19f7bd0, L_0x19f7150, C4<1>, C4<1>;
L_0x19f77b0 .delay (20000,20000,20000) L_0x19f77b0/d;
L_0x19f7850/d .functor AND 1, L_0x19f7d00, L_0x19f7150, C4<1>, C4<1>;
L_0x19f7850 .delay (20000,20000,20000) L_0x19f7850/d;
L_0x19f7920/d .functor OR 1, L_0x19f76e0, L_0x19f77b0, L_0x19f7850, C4<0>;
L_0x19f7920 .delay (20000,20000,20000) L_0x19f7920/d;
v0x19d08d0_0 .net "AandB", 0 0, L_0x19f76e0; 1 drivers
v0x19d0990_0 .net "AandC", 0 0, L_0x19f77b0; 1 drivers
v0x19d0a30_0 .net "BandC", 0 0, L_0x19f7850; 1 drivers
v0x19d0ad0_0 .net "a", 0 0, L_0x19f7bd0; 1 drivers
v0x19d0b50_0 .net "b", 0 0, L_0x19f7d00; 1 drivers
v0x19d0bf0_0 .alias "carryin", 0 0, v0x19d16c0_0;
v0x19d0c90_0 .alias "carryout", 0 0, v0x19d16c0_1;
v0x19d0d10_0 .net "sum", 0 0, L_0x19f7520; 1 drivers
S_0x19d01e0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19cfa40;
 .timescale -9 -12;
L_0x19f7e70/d .functor XOR 1, L_0x19f8450, L_0x19f8580, L_0x19f7920, C4<0>;
L_0x19f7e70 .delay (30000,30000,30000) L_0x19f7e70/d;
L_0x19f7fa0/d .functor AND 1, L_0x19f8450, L_0x19f8580, C4<1>, C4<1>;
L_0x19f7fa0 .delay (20000,20000,20000) L_0x19f7fa0/d;
L_0x19f80e0/d .functor AND 1, L_0x19f8450, L_0x19f7920, C4<1>, C4<1>;
L_0x19f80e0 .delay (20000,20000,20000) L_0x19f80e0/d;
L_0x19f8180/d .functor AND 1, L_0x19f8580, L_0x19f7920, C4<1>, C4<1>;
L_0x19f8180 .delay (20000,20000,20000) L_0x19f8180/d;
L_0x19f8220/d .functor OR 1, L_0x19f7fa0, L_0x19f80e0, L_0x19f8180, C4<0>;
L_0x19f8220 .delay (20000,20000,20000) L_0x19f8220/d;
v0x19d02d0_0 .net "AandB", 0 0, L_0x19f7fa0; 1 drivers
v0x19d0390_0 .net "AandC", 0 0, L_0x19f80e0; 1 drivers
v0x19d0430_0 .net "BandC", 0 0, L_0x19f8180; 1 drivers
v0x19d04d0_0 .net "a", 0 0, L_0x19f8450; 1 drivers
v0x19d0550_0 .net "b", 0 0, L_0x19f8580; 1 drivers
v0x19d05f0_0 .alias "carryin", 0 0, v0x19d16c0_1;
v0x19d0690_0 .alias "carryout", 0 0, v0x19d16c0_2;
v0x19d0710_0 .net "sum", 0 0, L_0x19f7e70; 1 drivers
S_0x19cfb30 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19cfa40;
 .timescale -9 -12;
L_0x19f86b0/d .functor XOR 1, L_0x19f8dc0, L_0x19f8f80, L_0x19f8220, C4<0>;
L_0x19f86b0 .delay (30000,30000,30000) L_0x19f86b0/d;
L_0x19f87a0/d .functor AND 1, L_0x19f8dc0, L_0x19f8f80, C4<1>, C4<1>;
L_0x19f87a0 .delay (20000,20000,20000) L_0x19f87a0/d;
L_0x19f88c0/d .functor AND 1, L_0x19f8dc0, L_0x19f8220, C4<1>, C4<1>;
L_0x19f88c0 .delay (20000,20000,20000) L_0x19f88c0/d;
L_0x19f8980/d .functor AND 1, L_0x19f8f80, L_0x19f8220, C4<1>, C4<1>;
L_0x19f8980 .delay (20000,20000,20000) L_0x19f8980/d;
L_0x19f8a70/d .functor OR 1, L_0x19f87a0, L_0x19f88c0, L_0x19f8980, C4<0>;
L_0x19f8a70 .delay (20000,20000,20000) L_0x19f8a70/d;
v0x19cfc20_0 .net "AandB", 0 0, L_0x19f87a0; 1 drivers
v0x19cfce0_0 .net "AandC", 0 0, L_0x19f88c0; 1 drivers
v0x19cfd80_0 .net "BandC", 0 0, L_0x19f8980; 1 drivers
v0x19cfe20_0 .net "a", 0 0, L_0x19f8dc0; 1 drivers
v0x19cfea0_0 .net "b", 0 0, L_0x19f8f80; 1 drivers
v0x19cff40_0 .alias "carryin", 0 0, v0x19d16c0_2;
v0x19d0020_0 .alias "carryout", 0 0, v0x19db130_5;
v0x19d00f0_0 .net "sum", 0 0, L_0x19f86b0; 1 drivers
S_0x19cdc70 .scope module, "f46" "CompAdder4bit" 2 86, 2 30, S_0x19b9c70;
 .timescale -9 -12;
v0x19cf5f0_0 .net "a", 3 0, L_0x19fb820; 1 drivers
v0x19cf6b0_0 .net "b", 3 0, L_0x19f93b0; 1 drivers
v0x19cf750_0 .alias "carryin", 0 0, v0x19db130_5;
v0x19cf7d0_0 .alias "carryout", 0 0, v0x19db130_6;
v0x19cf850_0 .net8 "sum", 3 0, RS_0x2b3f9cdedbb8; 4 drivers
v0x19cf8d0 .array "temp_cout", 0 2;
v0x19cf8d0_0 .net v0x19cf8d0 0, 0 0, L_0x19f9720; 1 drivers
v0x19cf8d0_1 .net v0x19cf8d0 1, 0 0, L_0x19f9ef0; 1 drivers
v0x19cf8d0_2 .net v0x19cf8d0 2, 0 0, L_0x19fa7f0; 1 drivers
L_0x19f97f0 .part/pv L_0x19f8d60, 0, 1, 4;
L_0x19f9890 .part L_0x19fb820, 0, 1;
L_0x19f99c0 .part L_0x19f93b0, 0, 1;
L_0x19fa0b0 .part/pv L_0x19f9af0, 1, 1, 4;
L_0x19fa1a0 .part L_0x19fb820, 1, 1;
L_0x19fa2d0 .part L_0x19f93b0, 1, 1;
L_0x19fa980 .part/pv L_0x19fa440, 2, 1, 4;
L_0x19faa20 .part L_0x19fb820, 2, 1;
L_0x19fab50 .part L_0x19f93b0, 2, 1;
L_0x19fb200 .part/pv L_0x19fac80, 3, 1, 4;
L_0x19fb390 .part L_0x19fb820, 3, 1;
L_0x19fb550 .part L_0x19f93b0, 3, 1;
S_0x19ceff0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19cdc70;
 .timescale -9 -12;
L_0x19f8d60/d .functor XOR 1, L_0x19f9890, L_0x19f99c0, L_0x19f8a70, C4<0>;
L_0x19f8d60 .delay (30000,30000,30000) L_0x19f8d60/d;
L_0x19f9450/d .functor AND 1, L_0x19f9890, L_0x19f99c0, C4<1>, C4<1>;
L_0x19f9450 .delay (20000,20000,20000) L_0x19f9450/d;
L_0x19f94f0/d .functor AND 1, L_0x19f9890, L_0x19f8a70, C4<1>, C4<1>;
L_0x19f94f0 .delay (20000,20000,20000) L_0x19f94f0/d;
L_0x19f9590/d .functor AND 1, L_0x19f99c0, L_0x19f8a70, C4<1>, C4<1>;
L_0x19f9590 .delay (20000,20000,20000) L_0x19f9590/d;
L_0x19f9720/d .functor OR 1, L_0x19f9450, L_0x19f94f0, L_0x19f9590, C4<0>;
L_0x19f9720 .delay (20000,20000,20000) L_0x19f9720/d;
v0x19cf0e0_0 .net "AandB", 0 0, L_0x19f9450; 1 drivers
v0x19cf1a0_0 .net "AandC", 0 0, L_0x19f94f0; 1 drivers
v0x19cf240_0 .net "BandC", 0 0, L_0x19f9590; 1 drivers
v0x19cf2e0_0 .net "a", 0 0, L_0x19f9890; 1 drivers
v0x19cf360_0 .net "b", 0 0, L_0x19f99c0; 1 drivers
v0x19cf400_0 .alias "carryin", 0 0, v0x19db130_5;
v0x19cf4a0_0 .alias "carryout", 0 0, v0x19cf8d0_0;
v0x19cf520_0 .net "sum", 0 0, L_0x19f8d60; 1 drivers
S_0x19ce9f0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19cdc70;
 .timescale -9 -12;
L_0x19f9af0/d .functor XOR 1, L_0x19fa1a0, L_0x19fa2d0, L_0x19f9720, C4<0>;
L_0x19f9af0 .delay (30000,30000,30000) L_0x19f9af0/d;
L_0x19f9cb0/d .functor AND 1, L_0x19fa1a0, L_0x19fa2d0, C4<1>, C4<1>;
L_0x19f9cb0 .delay (20000,20000,20000) L_0x19f9cb0/d;
L_0x19f9d80/d .functor AND 1, L_0x19fa1a0, L_0x19f9720, C4<1>, C4<1>;
L_0x19f9d80 .delay (20000,20000,20000) L_0x19f9d80/d;
L_0x19f9e20/d .functor AND 1, L_0x19fa2d0, L_0x19f9720, C4<1>, C4<1>;
L_0x19f9e20 .delay (20000,20000,20000) L_0x19f9e20/d;
L_0x19f9ef0/d .functor OR 1, L_0x19f9cb0, L_0x19f9d80, L_0x19f9e20, C4<0>;
L_0x19f9ef0 .delay (20000,20000,20000) L_0x19f9ef0/d;
v0x19ceae0_0 .net "AandB", 0 0, L_0x19f9cb0; 1 drivers
v0x19ceba0_0 .net "AandC", 0 0, L_0x19f9d80; 1 drivers
v0x19cec40_0 .net "BandC", 0 0, L_0x19f9e20; 1 drivers
v0x19cece0_0 .net "a", 0 0, L_0x19fa1a0; 1 drivers
v0x19ced60_0 .net "b", 0 0, L_0x19fa2d0; 1 drivers
v0x19cee00_0 .alias "carryin", 0 0, v0x19cf8d0_0;
v0x19ceea0_0 .alias "carryout", 0 0, v0x19cf8d0_1;
v0x19cef20_0 .net "sum", 0 0, L_0x19f9af0; 1 drivers
S_0x19ce3f0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19cdc70;
 .timescale -9 -12;
L_0x19fa440/d .functor XOR 1, L_0x19faa20, L_0x19fab50, L_0x19f9ef0, C4<0>;
L_0x19fa440 .delay (30000,30000,30000) L_0x19fa440/d;
L_0x19fa570/d .functor AND 1, L_0x19faa20, L_0x19fab50, C4<1>, C4<1>;
L_0x19fa570 .delay (20000,20000,20000) L_0x19fa570/d;
L_0x19fa6b0/d .functor AND 1, L_0x19faa20, L_0x19f9ef0, C4<1>, C4<1>;
L_0x19fa6b0 .delay (20000,20000,20000) L_0x19fa6b0/d;
L_0x19fa750/d .functor AND 1, L_0x19fab50, L_0x19f9ef0, C4<1>, C4<1>;
L_0x19fa750 .delay (20000,20000,20000) L_0x19fa750/d;
L_0x19fa7f0/d .functor OR 1, L_0x19fa570, L_0x19fa6b0, L_0x19fa750, C4<0>;
L_0x19fa7f0 .delay (20000,20000,20000) L_0x19fa7f0/d;
v0x19ce4e0_0 .net "AandB", 0 0, L_0x19fa570; 1 drivers
v0x19ce5a0_0 .net "AandC", 0 0, L_0x19fa6b0; 1 drivers
v0x19ce640_0 .net "BandC", 0 0, L_0x19fa750; 1 drivers
v0x19ce6e0_0 .net "a", 0 0, L_0x19faa20; 1 drivers
v0x19ce760_0 .net "b", 0 0, L_0x19fab50; 1 drivers
v0x19ce800_0 .alias "carryin", 0 0, v0x19cf8d0_1;
v0x19ce8a0_0 .alias "carryout", 0 0, v0x19cf8d0_2;
v0x19ce920_0 .net "sum", 0 0, L_0x19fa440; 1 drivers
S_0x19cdd60 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19cdc70;
 .timescale -9 -12;
L_0x19fac80/d .functor XOR 1, L_0x19fb390, L_0x19fb550, L_0x19fa7f0, C4<0>;
L_0x19fac80 .delay (30000,30000,30000) L_0x19fac80/d;
L_0x19fad70/d .functor AND 1, L_0x19fb390, L_0x19fb550, C4<1>, C4<1>;
L_0x19fad70 .delay (20000,20000,20000) L_0x19fad70/d;
L_0x19fae90/d .functor AND 1, L_0x19fb390, L_0x19fa7f0, C4<1>, C4<1>;
L_0x19fae90 .delay (20000,20000,20000) L_0x19fae90/d;
L_0x19faf50/d .functor AND 1, L_0x19fb550, L_0x19fa7f0, C4<1>, C4<1>;
L_0x19faf50 .delay (20000,20000,20000) L_0x19faf50/d;
L_0x19fb040/d .functor OR 1, L_0x19fad70, L_0x19fae90, L_0x19faf50, C4<0>;
L_0x19fb040 .delay (20000,20000,20000) L_0x19fb040/d;
v0x19cde50_0 .net "AandB", 0 0, L_0x19fad70; 1 drivers
v0x19cdef0_0 .net "AandC", 0 0, L_0x19fae90; 1 drivers
v0x19cdf90_0 .net "BandC", 0 0, L_0x19faf50; 1 drivers
v0x19ce030_0 .net "a", 0 0, L_0x19fb390; 1 drivers
v0x19ce0b0_0 .net "b", 0 0, L_0x19fb550; 1 drivers
v0x19ce150_0 .alias "carryin", 0 0, v0x19cf8d0_2;
v0x19ce230_0 .alias "carryout", 0 0, v0x19db130_6;
v0x19ce300_0 .net "sum", 0 0, L_0x19fac80; 1 drivers
S_0x19b4350 .scope module, "f47" "CompAdder4bit" 2 87, 2 30, S_0x19b9c70;
 .timescale -9 -12;
v0x19cd790_0 .net "a", 3 0, L_0x19fb8c0; 1 drivers
v0x19cd850_0 .net "b", 3 0, L_0x19fe0b0; 1 drivers
v0x19cd8f0_0 .alias "carryin", 0 0, v0x19db130_6;
v0x19cd9a0_0 .alias "carryout", 0 0, v0x19daf40_0;
v0x19cda80_0 .net8 "sum", 3 0, RS_0x2b3f9cded5e8; 4 drivers
v0x19cdb00 .array "temp_cout", 0 2;
v0x19cdb00_0 .net v0x19cdb00 0, 0 0, L_0x19fbcd0; 1 drivers
v0x19cdb00_1 .net v0x19cdb00 1, 0 0, L_0x19fc4a0; 1 drivers
v0x19cdb00_2 .net v0x19cdb00 2, 0 0, L_0x19fcda0; 1 drivers
L_0x19fbda0 .part/pv L_0x19fb330, 0, 1, 4;
L_0x19fbe40 .part L_0x19fb8c0, 0, 1;
L_0x19fbf70 .part L_0x19fe0b0, 0, 1;
L_0x19fc660 .part/pv L_0x19fc0a0, 1, 1, 4;
L_0x19fc750 .part L_0x19fb8c0, 1, 1;
L_0x19fc880 .part L_0x19fe0b0, 1, 1;
L_0x19fcf30 .part/pv L_0x19fc9f0, 2, 1, 4;
L_0x19fcfd0 .part L_0x19fb8c0, 2, 1;
L_0x19fd100 .part L_0x19fe0b0, 2, 1;
L_0x19fd7b0 .part/pv L_0x19fd230, 3, 1, 4;
L_0x19fd940 .part L_0x19fb8c0, 3, 1;
L_0x19fdb00 .part L_0x19fe0b0, 3, 1;
S_0x19cd160 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19b4350;
 .timescale -9 -12;
L_0x19fb330/d .functor XOR 1, L_0x19fbe40, L_0x19fbf70, L_0x19fb040, C4<0>;
L_0x19fb330 .delay (30000,30000,30000) L_0x19fb330/d;
L_0x19fb9b0/d .functor AND 1, L_0x19fbe40, L_0x19fbf70, C4<1>, C4<1>;
L_0x19fb9b0 .delay (20000,20000,20000) L_0x19fb9b0/d;
L_0x19fba80/d .functor AND 1, L_0x19fbe40, L_0x19fb040, C4<1>, C4<1>;
L_0x19fba80 .delay (20000,20000,20000) L_0x19fba80/d;
L_0x19fbb40/d .functor AND 1, L_0x19fbf70, L_0x19fb040, C4<1>, C4<1>;
L_0x19fbb40 .delay (20000,20000,20000) L_0x19fbb40/d;
L_0x19fbcd0/d .functor OR 1, L_0x19fb9b0, L_0x19fba80, L_0x19fbb40, C4<0>;
L_0x19fbcd0 .delay (20000,20000,20000) L_0x19fbcd0/d;
v0x19cd250_0 .net "AandB", 0 0, L_0x19fb9b0; 1 drivers
v0x19cd310_0 .net "AandC", 0 0, L_0x19fba80; 1 drivers
v0x19cd3b0_0 .net "BandC", 0 0, L_0x19fbb40; 1 drivers
v0x19cd450_0 .net "a", 0 0, L_0x19fbe40; 1 drivers
v0x19cd500_0 .net "b", 0 0, L_0x19fbf70; 1 drivers
v0x19cd5a0_0 .alias "carryin", 0 0, v0x19db130_6;
v0x19cd640_0 .alias "carryout", 0 0, v0x19cdb00_0;
v0x19cd6c0_0 .net "sum", 0 0, L_0x19fb330; 1 drivers
S_0x19ccb30 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19b4350;
 .timescale -9 -12;
L_0x19fc0a0/d .functor XOR 1, L_0x19fc750, L_0x19fc880, L_0x19fbcd0, C4<0>;
L_0x19fc0a0 .delay (30000,30000,30000) L_0x19fc0a0/d;
L_0x19fc260/d .functor AND 1, L_0x19fc750, L_0x19fc880, C4<1>, C4<1>;
L_0x19fc260 .delay (20000,20000,20000) L_0x19fc260/d;
L_0x19fc330/d .functor AND 1, L_0x19fc750, L_0x19fbcd0, C4<1>, C4<1>;
L_0x19fc330 .delay (20000,20000,20000) L_0x19fc330/d;
L_0x19fc3d0/d .functor AND 1, L_0x19fc880, L_0x19fbcd0, C4<1>, C4<1>;
L_0x19fc3d0 .delay (20000,20000,20000) L_0x19fc3d0/d;
L_0x19fc4a0/d .functor OR 1, L_0x19fc260, L_0x19fc330, L_0x19fc3d0, C4<0>;
L_0x19fc4a0 .delay (20000,20000,20000) L_0x19fc4a0/d;
v0x19ccc20_0 .net "AandB", 0 0, L_0x19fc260; 1 drivers
v0x19ccce0_0 .net "AandC", 0 0, L_0x19fc330; 1 drivers
v0x19ccd80_0 .net "BandC", 0 0, L_0x19fc3d0; 1 drivers
v0x19cce20_0 .net "a", 0 0, L_0x19fc750; 1 drivers
v0x19cced0_0 .net "b", 0 0, L_0x19fc880; 1 drivers
v0x19ccf70_0 .alias "carryin", 0 0, v0x19cdb00_0;
v0x19cd010_0 .alias "carryout", 0 0, v0x19cdb00_1;
v0x19cd090_0 .net "sum", 0 0, L_0x19fc0a0; 1 drivers
S_0x19cc530 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19b4350;
 .timescale -9 -12;
L_0x19fc9f0/d .functor XOR 1, L_0x19fcfd0, L_0x19fd100, L_0x19fc4a0, C4<0>;
L_0x19fc9f0 .delay (30000,30000,30000) L_0x19fc9f0/d;
L_0x19fcb20/d .functor AND 1, L_0x19fcfd0, L_0x19fd100, C4<1>, C4<1>;
L_0x19fcb20 .delay (20000,20000,20000) L_0x19fcb20/d;
L_0x19fcc60/d .functor AND 1, L_0x19fcfd0, L_0x19fc4a0, C4<1>, C4<1>;
L_0x19fcc60 .delay (20000,20000,20000) L_0x19fcc60/d;
L_0x19fcd00/d .functor AND 1, L_0x19fd100, L_0x19fc4a0, C4<1>, C4<1>;
L_0x19fcd00 .delay (20000,20000,20000) L_0x19fcd00/d;
L_0x19fcda0/d .functor OR 1, L_0x19fcb20, L_0x19fcc60, L_0x19fcd00, C4<0>;
L_0x19fcda0 .delay (20000,20000,20000) L_0x19fcda0/d;
v0x19cc620_0 .net "AandB", 0 0, L_0x19fcb20; 1 drivers
v0x19cc6e0_0 .net "AandC", 0 0, L_0x19fcc60; 1 drivers
v0x19cc780_0 .net "BandC", 0 0, L_0x19fcd00; 1 drivers
v0x19cc820_0 .net "a", 0 0, L_0x19fcfd0; 1 drivers
v0x19cc8a0_0 .net "b", 0 0, L_0x19fd100; 1 drivers
v0x19cc940_0 .alias "carryin", 0 0, v0x19cdb00_1;
v0x19cc9e0_0 .alias "carryout", 0 0, v0x19cdb00_2;
v0x19cca60_0 .net "sum", 0 0, L_0x19fc9f0; 1 drivers
S_0x19af0f0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19b4350;
 .timescale -9 -12;
L_0x19fd230/d .functor XOR 1, L_0x19fd940, L_0x19fdb00, L_0x19fcda0, C4<0>;
L_0x19fd230 .delay (30000,30000,30000) L_0x19fd230/d;
L_0x19fd320/d .functor AND 1, L_0x19fd940, L_0x19fdb00, C4<1>, C4<1>;
L_0x19fd320 .delay (20000,20000,20000) L_0x19fd320/d;
L_0x19fd440/d .functor AND 1, L_0x19fd940, L_0x19fcda0, C4<1>, C4<1>;
L_0x19fd440 .delay (20000,20000,20000) L_0x19fd440/d;
L_0x19fd500/d .functor AND 1, L_0x19fdb00, L_0x19fcda0, C4<1>, C4<1>;
L_0x19fd500 .delay (20000,20000,20000) L_0x19fd500/d;
L_0x19fd5f0/d .functor OR 1, L_0x19fd320, L_0x19fd440, L_0x19fd500, C4<0>;
L_0x19fd5f0 .delay (20000,20000,20000) L_0x19fd5f0/d;
v0x19813d0_0 .net "AandB", 0 0, L_0x19fd320; 1 drivers
v0x19cc030_0 .net "AandC", 0 0, L_0x19fd440; 1 drivers
v0x19cc0d0_0 .net "BandC", 0 0, L_0x19fd500; 1 drivers
v0x19cc170_0 .net "a", 0 0, L_0x19fd940; 1 drivers
v0x19cc220_0 .net "b", 0 0, L_0x19fdb00; 1 drivers
v0x19cc2c0_0 .alias "carryin", 0 0, v0x19cdb00_2;
v0x19cc3a0_0 .alias "carryout", 0 0, v0x19daf40_0;
v0x19cc440_0 .net "sum", 0 0, L_0x19fd230; 1 drivers
S_0x199dad0 .scope module, "testFullAdder16bit" "testFullAdder16bit" 3 5;
 .timescale -9 -12;
v0x19eac80_0 .var "a", 31 0;
v0x19ead20_0 .var "b", 31 0;
v0x19eada0_0 .net "carryout", 0 0, L_0x1a109b0; 1 drivers
v0x19eae20_0 .net "overflow", 0 0, L_0x1a10ce0; 1 drivers
RS_0x2b3f9cdf2ec8/0/0 .resolv tri, L_0x1a004a0, L_0x1a02bd0, L_0x1a05180, L_0x1a077f0;
RS_0x2b3f9cdf2ec8/0/4 .resolv tri, L_0x1a09db0, L_0x1a0c360, L_0x1a0e9a0, L_0x1a11130;
RS_0x2b3f9cdf2ec8 .resolv tri, RS_0x2b3f9cdf2ec8/0/0, RS_0x2b3f9cdf2ec8/0/4, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>;
v0x19eaea0_0 .net8 "sum", 31 0, RS_0x2b3f9cdf2ec8; 8 drivers
S_0x19db620 .scope module, "fa16b" "FullAdder32bit" 3 11, 2 49, S_0x199dad0;
 .timescale -9 -12;
L_0x1a10ce0/d .functor XOR 1, L_0x1a109b0, L_0x1a0e260, C4<0>, C4<0>;
L_0x1a10ce0 .delay (30000,30000,30000) L_0x1a10ce0/d;
v0x19ea440_0 .net "a", 31 0, v0x19eac80_0; 1 drivers
v0x19ea500_0 .net "b", 31 0, v0x19ead20_0; 1 drivers
v0x19ea5a0_0 .alias "carryout", 0 0, v0x19eada0_0;
v0x19ea670_0 .alias "overflow", 0 0, v0x19eae20_0;
v0x19ea6f0_0 .alias "sum", 31 0, v0x19eaea0_0;
v0x19ea790 .array "temp_cout", 0 6;
v0x19ea790_0 .net v0x19ea790 0, 0 0, L_0x19ffe80; 1 drivers
v0x19ea790_1 .net v0x19ea790 1, 0 0, L_0x1a02490; 1 drivers
v0x19ea790_2 .net v0x19ea790 2, 0 0, L_0x1a04a40; 1 drivers
v0x19ea790_3 .net v0x19ea790 3, 0 0, L_0x1a070b0; 1 drivers
v0x19ea790_4 .net v0x19ea790 4, 0 0, L_0x1a09670; 1 drivers
v0x19ea790_5 .net v0x19ea790 5, 0 0, L_0x1a0bc90; 1 drivers
v0x19ea790_6 .net v0x19ea790 6, 0 0, L_0x1a0e260; 1 drivers
RS_0x2b3f9cdf2e08 .resolv tri, L_0x19fe660, L_0x19feed0, L_0x19ff7c0, L_0x19ffff0;
L_0x1a004a0 .part/pv RS_0x2b3f9cdf2e08, 0, 4, 32;
L_0x1a00540 .part v0x19eac80_0, 0, 4;
L_0x1a005e0 .part v0x19ead20_0, 0, 4;
RS_0x2b3f9cdf2838 .resolv tri, L_0x1a00c40, L_0x1a01500, L_0x1a01dd0, L_0x1a02650;
L_0x1a02bd0 .part/pv RS_0x2b3f9cdf2838, 4, 4, 32;
L_0x1a02c70 .part v0x19eac80_0, 4, 4;
L_0x1a02d10 .part v0x19ead20_0, 4, 4;
RS_0x2b3f9cdf2268 .resolv tri, L_0x1a031f0, L_0x1a03ab0, L_0x1a04380, L_0x1a04c00;
L_0x1a05180 .part/pv RS_0x2b3f9cdf2268, 8, 4, 32;
L_0x1a052b0 .part v0x19eac80_0, 8, 4;
L_0x1a053e0 .part v0x19ead20_0, 8, 4;
RS_0x2b3f9cdf1c98 .resolv tri, L_0x1a05900, L_0x1a06120, L_0x1a069f0, L_0x1a07270;
L_0x1a077f0 .part/pv RS_0x2b3f9cdf1c98, 12, 4, 32;
L_0x1a07890 .part v0x19eac80_0, 12, 4;
L_0x1a07930 .part v0x19ead20_0, 12, 4;
RS_0x2b3f9cdf16c8 .resolv tri, L_0x1a07e70, L_0x1a086e0, L_0x1a08fb0, L_0x1a09830;
L_0x1a09db0 .part/pv RS_0x2b3f9cdf16c8, 16, 4, 32;
L_0x1a09e50 .part v0x19eac80_0, 16, 4;
L_0x1a09f70 .part v0x19ead20_0, 16, 4;
RS_0x2b3f9cdf10f8 .resolv tri, L_0x1a0a440, L_0x1a0ad00, L_0x1a0b5d0, L_0x1a0be50;
L_0x1a0c360 .part/pv RS_0x2b3f9cdf10f8, 20, 4, 32;
L_0x1a0c490 .part v0x19eac80_0, 20, 4;
L_0x1a0c530 .part v0x19ead20_0, 20, 4;
RS_0x2b3f9cdf0b28 .resolv tri, L_0x1a0ca10, L_0x1a0d2d0, L_0x1a0dba0, L_0x1a0e420;
L_0x1a0e9a0 .part/pv RS_0x2b3f9cdf0b28, 24, 4, 32;
L_0x1a0eb50 .part v0x19eac80_0, 24, 4;
L_0x1a0c5d0 .part v0x19ead20_0, 24, 4;
RS_0x2b3f9cdf0558 .resolv tri, L_0x1a0f160, L_0x1a0fa20, L_0x1a102f0, L_0x1a10bb0;
L_0x1a11130 .part/pv RS_0x2b3f9cdf0558, 28, 4, 32;
L_0x1a0ed00 .part v0x19eac80_0, 28, 4;
L_0x1a11290 .part v0x19ead20_0, 28, 4;
S_0x19e8650 .scope module, "f40" "CompAdder4bit" 2 59, 2 30, S_0x19db620;
 .timescale -9 -12;
v0x19e9ff0_0 .net "a", 3 0, L_0x1a00540; 1 drivers
v0x19ea0b0_0 .net "b", 3 0, L_0x1a005e0; 1 drivers
v0x19ea150_0 .net "carryin", 0 0, C4<0>; 1 drivers
v0x19ea1d0_0 .alias "carryout", 0 0, v0x19ea790_0;
v0x19ea250_0 .net8 "sum", 3 0, RS_0x2b3f9cdf2e08; 4 drivers
v0x19ea2d0 .array "temp_cout", 0 2;
v0x19ea2d0_0 .net v0x19ea2d0 0, 0 0, L_0x19fe590; 1 drivers
v0x19ea2d0_1 .net v0x19ea2d0 1, 0 0, L_0x19fed60; 1 drivers
v0x19ea2d0_2 .net v0x19ea2d0 2, 0 0, L_0x19ff630; 1 drivers
L_0x19fe660 .part/pv L_0x19f4810, 0, 1, 4;
L_0x19fe700 .part L_0x1a00540, 0, 1;
L_0x19fe830 .part L_0x1a005e0, 0, 1;
L_0x19feed0 .part/pv L_0x19fe960, 1, 1, 4;
L_0x19fefc0 .part L_0x1a00540, 1, 1;
L_0x19ff0f0 .part L_0x1a005e0, 1, 1;
L_0x19ff7c0 .part/pv L_0x19ff260, 2, 1, 4;
L_0x19ff860 .part L_0x1a00540, 2, 1;
L_0x19ff990 .part L_0x1a005e0, 2, 1;
L_0x19ffff0 .part/pv L_0x19ffac0, 3, 1, 4;
L_0x1a00120 .part L_0x1a00540, 3, 1;
L_0x1a002e0 .part L_0x1a005e0, 3, 1;
S_0x19e99f0 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19e8650;
 .timescale -9 -12;
L_0x19f4810/d .functor XOR 1, L_0x19fe700, L_0x19fe830, C4<0>, C4<0>;
L_0x19f4810 .delay (30000,30000,30000) L_0x19f4810/d;
L_0x19fdf20/d .functor AND 1, L_0x19fe700, L_0x19fe830, C4<1>, C4<1>;
L_0x19fdf20 .delay (20000,20000,20000) L_0x19fdf20/d;
L_0x19fe370/d .functor AND 1, L_0x19fe700, C4<0>, C4<1>, C4<1>;
L_0x19fe370 .delay (20000,20000,20000) L_0x19fe370/d;
L_0x19fe410/d .functor AND 1, L_0x19fe830, C4<0>, C4<1>, C4<1>;
L_0x19fe410 .delay (20000,20000,20000) L_0x19fe410/d;
L_0x19fe590/d .functor OR 1, L_0x19fdf20, L_0x19fe370, L_0x19fe410, C4<0>;
L_0x19fe590 .delay (20000,20000,20000) L_0x19fe590/d;
v0x19e9ae0_0 .net "AandB", 0 0, L_0x19fdf20; 1 drivers
v0x19e9ba0_0 .net "AandC", 0 0, L_0x19fe370; 1 drivers
v0x19e9c40_0 .net "BandC", 0 0, L_0x19fe410; 1 drivers
v0x19e9ce0_0 .net "a", 0 0, L_0x19fe700; 1 drivers
v0x19e9d60_0 .net "b", 0 0, L_0x19fe830; 1 drivers
v0x19e9e00_0 .alias "carryin", 0 0, v0x19ea150_0;
v0x19e9ea0_0 .alias "carryout", 0 0, v0x19ea2d0_0;
v0x19e9f20_0 .net "sum", 0 0, L_0x19f4810; 1 drivers
S_0x19e93f0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19e8650;
 .timescale -9 -12;
L_0x19fe960/d .functor XOR 1, L_0x19fefc0, L_0x19ff0f0, L_0x19fe590, C4<0>;
L_0x19fe960 .delay (30000,30000,30000) L_0x19fe960/d;
L_0x19feb20/d .functor AND 1, L_0x19fefc0, L_0x19ff0f0, C4<1>, C4<1>;
L_0x19feb20 .delay (20000,20000,20000) L_0x19feb20/d;
L_0x19febf0/d .functor AND 1, L_0x19fefc0, L_0x19fe590, C4<1>, C4<1>;
L_0x19febf0 .delay (20000,20000,20000) L_0x19febf0/d;
L_0x19fec90/d .functor AND 1, L_0x19ff0f0, L_0x19fe590, C4<1>, C4<1>;
L_0x19fec90 .delay (20000,20000,20000) L_0x19fec90/d;
L_0x19fed60/d .functor OR 1, L_0x19feb20, L_0x19febf0, L_0x19fec90, C4<0>;
L_0x19fed60 .delay (20000,20000,20000) L_0x19fed60/d;
v0x19e94e0_0 .net "AandB", 0 0, L_0x19feb20; 1 drivers
v0x19e95a0_0 .net "AandC", 0 0, L_0x19febf0; 1 drivers
v0x19e9640_0 .net "BandC", 0 0, L_0x19fec90; 1 drivers
v0x19e96e0_0 .net "a", 0 0, L_0x19fefc0; 1 drivers
v0x19e9760_0 .net "b", 0 0, L_0x19ff0f0; 1 drivers
v0x19e9800_0 .alias "carryin", 0 0, v0x19ea2d0_0;
v0x19e98a0_0 .alias "carryout", 0 0, v0x19ea2d0_1;
v0x19e9920_0 .net "sum", 0 0, L_0x19fe960; 1 drivers
S_0x19e8df0 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19e8650;
 .timescale -9 -12;
L_0x19ff260/d .functor XOR 1, L_0x19ff860, L_0x19ff990, L_0x19fed60, C4<0>;
L_0x19ff260 .delay (30000,30000,30000) L_0x19ff260/d;
L_0x19ff390/d .functor AND 1, L_0x19ff860, L_0x19ff990, C4<1>, C4<1>;
L_0x19ff390 .delay (20000,20000,20000) L_0x19ff390/d;
L_0x19ff4d0/d .functor AND 1, L_0x19ff860, L_0x19fed60, C4<1>, C4<1>;
L_0x19ff4d0 .delay (20000,20000,20000) L_0x19ff4d0/d;
L_0x19ff570/d .functor AND 1, L_0x19ff990, L_0x19fed60, C4<1>, C4<1>;
L_0x19ff570 .delay (20000,20000,20000) L_0x19ff570/d;
L_0x19ff630/d .functor OR 1, L_0x19ff390, L_0x19ff4d0, L_0x19ff570, C4<0>;
L_0x19ff630 .delay (20000,20000,20000) L_0x19ff630/d;
v0x19e8ee0_0 .net "AandB", 0 0, L_0x19ff390; 1 drivers
v0x19e8fa0_0 .net "AandC", 0 0, L_0x19ff4d0; 1 drivers
v0x19e9040_0 .net "BandC", 0 0, L_0x19ff570; 1 drivers
v0x19e90e0_0 .net "a", 0 0, L_0x19ff860; 1 drivers
v0x19e9160_0 .net "b", 0 0, L_0x19ff990; 1 drivers
v0x19e9200_0 .alias "carryin", 0 0, v0x19ea2d0_1;
v0x19e92a0_0 .alias "carryout", 0 0, v0x19ea2d0_2;
v0x19e9320_0 .net "sum", 0 0, L_0x19ff260; 1 drivers
S_0x19e8740 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19e8650;
 .timescale -9 -12;
L_0x19ffac0/d .functor XOR 1, L_0x1a00120, L_0x1a002e0, L_0x19ff630, C4<0>;
L_0x19ffac0 .delay (30000,30000,30000) L_0x19ffac0/d;
L_0x19ffbb0/d .functor AND 1, L_0x1a00120, L_0x1a002e0, C4<1>, C4<1>;
L_0x19ffbb0 .delay (20000,20000,20000) L_0x19ffbb0/d;
L_0x19ffcd0/d .functor AND 1, L_0x1a00120, L_0x19ff630, C4<1>, C4<1>;
L_0x19ffcd0 .delay (20000,20000,20000) L_0x19ffcd0/d;
L_0x19ffd90/d .functor AND 1, L_0x1a002e0, L_0x19ff630, C4<1>, C4<1>;
L_0x19ffd90 .delay (20000,20000,20000) L_0x19ffd90/d;
L_0x19ffe80/d .functor OR 1, L_0x19ffbb0, L_0x19ffcd0, L_0x19ffd90, C4<0>;
L_0x19ffe80 .delay (20000,20000,20000) L_0x19ffe80/d;
v0x19e8830_0 .net "AandB", 0 0, L_0x19ffbb0; 1 drivers
v0x19e88f0_0 .net "AandC", 0 0, L_0x19ffcd0; 1 drivers
v0x19e8990_0 .net "BandC", 0 0, L_0x19ffd90; 1 drivers
v0x19e8a30_0 .net "a", 0 0, L_0x1a00120; 1 drivers
v0x19e8ab0_0 .net "b", 0 0, L_0x1a002e0; 1 drivers
v0x19e8b50_0 .alias "carryin", 0 0, v0x19ea2d0_2;
v0x19e8c30_0 .alias "carryout", 0 0, v0x19ea790_0;
v0x19e8d00_0 .net "sum", 0 0, L_0x19ffac0; 1 drivers
S_0x19e6860 .scope module, "f41" "CompAdder4bit" 2 60, 2 30, S_0x19db620;
 .timescale -9 -12;
v0x19e8200_0 .net "a", 3 0, L_0x1a02c70; 1 drivers
v0x19e82c0_0 .net "b", 3 0, L_0x1a02d10; 1 drivers
v0x19e8360_0 .alias "carryin", 0 0, v0x19ea790_0;
v0x19e83e0_0 .alias "carryout", 0 0, v0x19ea790_1;
v0x19e8460_0 .net8 "sum", 3 0, RS_0x2b3f9cdf2838; 4 drivers
v0x19e84e0 .array "temp_cout", 0 2;
v0x19e84e0_0 .net v0x19e84e0 0, 0 0, L_0x1a00a80; 1 drivers
v0x19e84e0_1 .net v0x19e84e0 1, 0 0, L_0x1a01340; 1 drivers
v0x19e84e0_2 .net v0x19e84e0 2, 0 0, L_0x1a01c40; 1 drivers
L_0x1a00c40 .part/pv L_0x1a006c0, 0, 1, 4;
L_0x1a00ce0 .part L_0x1a02c70, 0, 1;
L_0x1a00e10 .part L_0x1a02d10, 0, 1;
L_0x1a01500 .part/pv L_0x1a00f40, 1, 1, 4;
L_0x1a015f0 .part L_0x1a02c70, 1, 1;
L_0x1a01720 .part L_0x1a02d10, 1, 1;
L_0x1a01dd0 .part/pv L_0x1a01890, 2, 1, 4;
L_0x1a01e70 .part L_0x1a02c70, 2, 1;
L_0x1a01fa0 .part L_0x1a02d10, 2, 1;
L_0x1a02650 .part/pv L_0x1a020d0, 3, 1, 4;
L_0x1a027e0 .part L_0x1a02c70, 3, 1;
L_0x1a029a0 .part L_0x1a02d10, 3, 1;
S_0x19e7c00 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19e6860;
 .timescale -9 -12;
L_0x1a006c0/d .functor XOR 1, L_0x1a00ce0, L_0x1a00e10, L_0x19ffe80, C4<0>;
L_0x1a006c0 .delay (30000,30000,30000) L_0x1a006c0/d;
L_0x1a00760/d .functor AND 1, L_0x1a00ce0, L_0x1a00e10, C4<1>, C4<1>;
L_0x1a00760 .delay (20000,20000,20000) L_0x1a00760/d;
L_0x1a00850/d .functor AND 1, L_0x1a00ce0, L_0x19ffe80, C4<1>, C4<1>;
L_0x1a00850 .delay (20000,20000,20000) L_0x1a00850/d;
L_0x1a008f0/d .functor AND 1, L_0x1a00e10, L_0x19ffe80, C4<1>, C4<1>;
L_0x1a008f0 .delay (20000,20000,20000) L_0x1a008f0/d;
L_0x1a00a80/d .functor OR 1, L_0x1a00760, L_0x1a00850, L_0x1a008f0, C4<0>;
L_0x1a00a80 .delay (20000,20000,20000) L_0x1a00a80/d;
v0x19e7cf0_0 .net "AandB", 0 0, L_0x1a00760; 1 drivers
v0x19e7db0_0 .net "AandC", 0 0, L_0x1a00850; 1 drivers
v0x19e7e50_0 .net "BandC", 0 0, L_0x1a008f0; 1 drivers
v0x19e7ef0_0 .net "a", 0 0, L_0x1a00ce0; 1 drivers
v0x19e7f70_0 .net "b", 0 0, L_0x1a00e10; 1 drivers
v0x19e8010_0 .alias "carryin", 0 0, v0x19ea790_0;
v0x19e80b0_0 .alias "carryout", 0 0, v0x19e84e0_0;
v0x19e8130_0 .net "sum", 0 0, L_0x1a006c0; 1 drivers
S_0x19e7600 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19e6860;
 .timescale -9 -12;
L_0x1a00f40/d .functor XOR 1, L_0x1a015f0, L_0x1a01720, L_0x1a00a80, C4<0>;
L_0x1a00f40 .delay (30000,30000,30000) L_0x1a00f40/d;
L_0x1a01100/d .functor AND 1, L_0x1a015f0, L_0x1a01720, C4<1>, C4<1>;
L_0x1a01100 .delay (20000,20000,20000) L_0x1a01100/d;
L_0x1a011d0/d .functor AND 1, L_0x1a015f0, L_0x1a00a80, C4<1>, C4<1>;
L_0x1a011d0 .delay (20000,20000,20000) L_0x1a011d0/d;
L_0x1a01270/d .functor AND 1, L_0x1a01720, L_0x1a00a80, C4<1>, C4<1>;
L_0x1a01270 .delay (20000,20000,20000) L_0x1a01270/d;
L_0x1a01340/d .functor OR 1, L_0x1a01100, L_0x1a011d0, L_0x1a01270, C4<0>;
L_0x1a01340 .delay (20000,20000,20000) L_0x1a01340/d;
v0x19e76f0_0 .net "AandB", 0 0, L_0x1a01100; 1 drivers
v0x19e77b0_0 .net "AandC", 0 0, L_0x1a011d0; 1 drivers
v0x19e7850_0 .net "BandC", 0 0, L_0x1a01270; 1 drivers
v0x19e78f0_0 .net "a", 0 0, L_0x1a015f0; 1 drivers
v0x19e7970_0 .net "b", 0 0, L_0x1a01720; 1 drivers
v0x19e7a10_0 .alias "carryin", 0 0, v0x19e84e0_0;
v0x19e7ab0_0 .alias "carryout", 0 0, v0x19e84e0_1;
v0x19e7b30_0 .net "sum", 0 0, L_0x1a00f40; 1 drivers
S_0x19e7000 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19e6860;
 .timescale -9 -12;
L_0x1a01890/d .functor XOR 1, L_0x1a01e70, L_0x1a01fa0, L_0x1a01340, C4<0>;
L_0x1a01890 .delay (30000,30000,30000) L_0x1a01890/d;
L_0x1a019c0/d .functor AND 1, L_0x1a01e70, L_0x1a01fa0, C4<1>, C4<1>;
L_0x1a019c0 .delay (20000,20000,20000) L_0x1a019c0/d;
L_0x1a01b00/d .functor AND 1, L_0x1a01e70, L_0x1a01340, C4<1>, C4<1>;
L_0x1a01b00 .delay (20000,20000,20000) L_0x1a01b00/d;
L_0x1a01ba0/d .functor AND 1, L_0x1a01fa0, L_0x1a01340, C4<1>, C4<1>;
L_0x1a01ba0 .delay (20000,20000,20000) L_0x1a01ba0/d;
L_0x1a01c40/d .functor OR 1, L_0x1a019c0, L_0x1a01b00, L_0x1a01ba0, C4<0>;
L_0x1a01c40 .delay (20000,20000,20000) L_0x1a01c40/d;
v0x19e70f0_0 .net "AandB", 0 0, L_0x1a019c0; 1 drivers
v0x19e71b0_0 .net "AandC", 0 0, L_0x1a01b00; 1 drivers
v0x19e7250_0 .net "BandC", 0 0, L_0x1a01ba0; 1 drivers
v0x19e72f0_0 .net "a", 0 0, L_0x1a01e70; 1 drivers
v0x19e7370_0 .net "b", 0 0, L_0x1a01fa0; 1 drivers
v0x19e7410_0 .alias "carryin", 0 0, v0x19e84e0_1;
v0x19e74b0_0 .alias "carryout", 0 0, v0x19e84e0_2;
v0x19e7530_0 .net "sum", 0 0, L_0x1a01890; 1 drivers
S_0x19e6950 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19e6860;
 .timescale -9 -12;
L_0x1a020d0/d .functor XOR 1, L_0x1a027e0, L_0x1a029a0, L_0x1a01c40, C4<0>;
L_0x1a020d0 .delay (30000,30000,30000) L_0x1a020d0/d;
L_0x1a021c0/d .functor AND 1, L_0x1a027e0, L_0x1a029a0, C4<1>, C4<1>;
L_0x1a021c0 .delay (20000,20000,20000) L_0x1a021c0/d;
L_0x1a022e0/d .functor AND 1, L_0x1a027e0, L_0x1a01c40, C4<1>, C4<1>;
L_0x1a022e0 .delay (20000,20000,20000) L_0x1a022e0/d;
L_0x1a023a0/d .functor AND 1, L_0x1a029a0, L_0x1a01c40, C4<1>, C4<1>;
L_0x1a023a0 .delay (20000,20000,20000) L_0x1a023a0/d;
L_0x1a02490/d .functor OR 1, L_0x1a021c0, L_0x1a022e0, L_0x1a023a0, C4<0>;
L_0x1a02490 .delay (20000,20000,20000) L_0x1a02490/d;
v0x19e6a40_0 .net "AandB", 0 0, L_0x1a021c0; 1 drivers
v0x19e6b00_0 .net "AandC", 0 0, L_0x1a022e0; 1 drivers
v0x19e6ba0_0 .net "BandC", 0 0, L_0x1a023a0; 1 drivers
v0x19e6c40_0 .net "a", 0 0, L_0x1a027e0; 1 drivers
v0x19e6cc0_0 .net "b", 0 0, L_0x1a029a0; 1 drivers
v0x19e6d60_0 .alias "carryin", 0 0, v0x19e84e0_2;
v0x19e6e40_0 .alias "carryout", 0 0, v0x19ea790_1;
v0x19e6f10_0 .net "sum", 0 0, L_0x1a020d0; 1 drivers
S_0x19e4a70 .scope module, "f42" "CompAdder4bit" 2 61, 2 30, S_0x19db620;
 .timescale -9 -12;
v0x19e6410_0 .net "a", 3 0, L_0x1a052b0; 1 drivers
v0x19e64d0_0 .net "b", 3 0, L_0x1a053e0; 1 drivers
v0x19e6570_0 .alias "carryin", 0 0, v0x19ea790_1;
v0x19e65f0_0 .alias "carryout", 0 0, v0x19ea790_2;
v0x19e6670_0 .net8 "sum", 3 0, RS_0x2b3f9cdf2268; 4 drivers
v0x19e66f0 .array "temp_cout", 0 2;
v0x19e66f0_0 .net v0x19e66f0 0, 0 0, L_0x1a03120; 1 drivers
v0x19e66f0_1 .net v0x19e66f0 1, 0 0, L_0x1a038f0; 1 drivers
v0x19e66f0_2 .net v0x19e66f0 2, 0 0, L_0x1a041f0; 1 drivers
L_0x1a031f0 .part/pv L_0x1a02780, 0, 1, 4;
L_0x1a03290 .part L_0x1a052b0, 0, 1;
L_0x1a033c0 .part L_0x1a053e0, 0, 1;
L_0x1a03ab0 .part/pv L_0x1a034f0, 1, 1, 4;
L_0x1a03ba0 .part L_0x1a052b0, 1, 1;
L_0x1a03cd0 .part L_0x1a053e0, 1, 1;
L_0x1a04380 .part/pv L_0x1a03e40, 2, 1, 4;
L_0x1a04420 .part L_0x1a052b0, 2, 1;
L_0x1a04550 .part L_0x1a053e0, 2, 1;
L_0x1a04c00 .part/pv L_0x1a04680, 3, 1, 4;
L_0x1a04d90 .part L_0x1a052b0, 3, 1;
L_0x1a04f50 .part L_0x1a053e0, 3, 1;
S_0x19e5e10 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19e4a70;
 .timescale -9 -12;
L_0x1a02780/d .functor XOR 1, L_0x1a03290, L_0x1a033c0, L_0x1a02490, C4<0>;
L_0x1a02780 .delay (30000,30000,30000) L_0x1a02780/d;
L_0x1a02e30/d .functor AND 1, L_0x1a03290, L_0x1a033c0, C4<1>, C4<1>;
L_0x1a02e30 .delay (20000,20000,20000) L_0x1a02e30/d;
L_0x1a02ed0/d .functor AND 1, L_0x1a03290, L_0x1a02490, C4<1>, C4<1>;
L_0x1a02ed0 .delay (20000,20000,20000) L_0x1a02ed0/d;
L_0x1a02f90/d .functor AND 1, L_0x1a033c0, L_0x1a02490, C4<1>, C4<1>;
L_0x1a02f90 .delay (20000,20000,20000) L_0x1a02f90/d;
L_0x1a03120/d .functor OR 1, L_0x1a02e30, L_0x1a02ed0, L_0x1a02f90, C4<0>;
L_0x1a03120 .delay (20000,20000,20000) L_0x1a03120/d;
v0x19e5f00_0 .net "AandB", 0 0, L_0x1a02e30; 1 drivers
v0x19e5fc0_0 .net "AandC", 0 0, L_0x1a02ed0; 1 drivers
v0x19e6060_0 .net "BandC", 0 0, L_0x1a02f90; 1 drivers
v0x19e6100_0 .net "a", 0 0, L_0x1a03290; 1 drivers
v0x19e6180_0 .net "b", 0 0, L_0x1a033c0; 1 drivers
v0x19e6220_0 .alias "carryin", 0 0, v0x19ea790_1;
v0x19e62c0_0 .alias "carryout", 0 0, v0x19e66f0_0;
v0x19e6340_0 .net "sum", 0 0, L_0x1a02780; 1 drivers
S_0x19e5810 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19e4a70;
 .timescale -9 -12;
L_0x1a034f0/d .functor XOR 1, L_0x1a03ba0, L_0x1a03cd0, L_0x1a03120, C4<0>;
L_0x1a034f0 .delay (30000,30000,30000) L_0x1a034f0/d;
L_0x1a036b0/d .functor AND 1, L_0x1a03ba0, L_0x1a03cd0, C4<1>, C4<1>;
L_0x1a036b0 .delay (20000,20000,20000) L_0x1a036b0/d;
L_0x1a03780/d .functor AND 1, L_0x1a03ba0, L_0x1a03120, C4<1>, C4<1>;
L_0x1a03780 .delay (20000,20000,20000) L_0x1a03780/d;
L_0x1a03820/d .functor AND 1, L_0x1a03cd0, L_0x1a03120, C4<1>, C4<1>;
L_0x1a03820 .delay (20000,20000,20000) L_0x1a03820/d;
L_0x1a038f0/d .functor OR 1, L_0x1a036b0, L_0x1a03780, L_0x1a03820, C4<0>;
L_0x1a038f0 .delay (20000,20000,20000) L_0x1a038f0/d;
v0x19e5900_0 .net "AandB", 0 0, L_0x1a036b0; 1 drivers
v0x19e59c0_0 .net "AandC", 0 0, L_0x1a03780; 1 drivers
v0x19e5a60_0 .net "BandC", 0 0, L_0x1a03820; 1 drivers
v0x19e5b00_0 .net "a", 0 0, L_0x1a03ba0; 1 drivers
v0x19e5b80_0 .net "b", 0 0, L_0x1a03cd0; 1 drivers
v0x19e5c20_0 .alias "carryin", 0 0, v0x19e66f0_0;
v0x19e5cc0_0 .alias "carryout", 0 0, v0x19e66f0_1;
v0x19e5d40_0 .net "sum", 0 0, L_0x1a034f0; 1 drivers
S_0x19e5210 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19e4a70;
 .timescale -9 -12;
L_0x1a03e40/d .functor XOR 1, L_0x1a04420, L_0x1a04550, L_0x1a038f0, C4<0>;
L_0x1a03e40 .delay (30000,30000,30000) L_0x1a03e40/d;
L_0x1a03f70/d .functor AND 1, L_0x1a04420, L_0x1a04550, C4<1>, C4<1>;
L_0x1a03f70 .delay (20000,20000,20000) L_0x1a03f70/d;
L_0x1a040b0/d .functor AND 1, L_0x1a04420, L_0x1a038f0, C4<1>, C4<1>;
L_0x1a040b0 .delay (20000,20000,20000) L_0x1a040b0/d;
L_0x1a04150/d .functor AND 1, L_0x1a04550, L_0x1a038f0, C4<1>, C4<1>;
L_0x1a04150 .delay (20000,20000,20000) L_0x1a04150/d;
L_0x1a041f0/d .functor OR 1, L_0x1a03f70, L_0x1a040b0, L_0x1a04150, C4<0>;
L_0x1a041f0 .delay (20000,20000,20000) L_0x1a041f0/d;
v0x19e5300_0 .net "AandB", 0 0, L_0x1a03f70; 1 drivers
v0x19e53c0_0 .net "AandC", 0 0, L_0x1a040b0; 1 drivers
v0x19e5460_0 .net "BandC", 0 0, L_0x1a04150; 1 drivers
v0x19e5500_0 .net "a", 0 0, L_0x1a04420; 1 drivers
v0x19e5580_0 .net "b", 0 0, L_0x1a04550; 1 drivers
v0x19e5620_0 .alias "carryin", 0 0, v0x19e66f0_1;
v0x19e56c0_0 .alias "carryout", 0 0, v0x19e66f0_2;
v0x19e5740_0 .net "sum", 0 0, L_0x1a03e40; 1 drivers
S_0x19e4b60 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19e4a70;
 .timescale -9 -12;
L_0x1a04680/d .functor XOR 1, L_0x1a04d90, L_0x1a04f50, L_0x1a041f0, C4<0>;
L_0x1a04680 .delay (30000,30000,30000) L_0x1a04680/d;
L_0x1a04770/d .functor AND 1, L_0x1a04d90, L_0x1a04f50, C4<1>, C4<1>;
L_0x1a04770 .delay (20000,20000,20000) L_0x1a04770/d;
L_0x1a04890/d .functor AND 1, L_0x1a04d90, L_0x1a041f0, C4<1>, C4<1>;
L_0x1a04890 .delay (20000,20000,20000) L_0x1a04890/d;
L_0x1a04950/d .functor AND 1, L_0x1a04f50, L_0x1a041f0, C4<1>, C4<1>;
L_0x1a04950 .delay (20000,20000,20000) L_0x1a04950/d;
L_0x1a04a40/d .functor OR 1, L_0x1a04770, L_0x1a04890, L_0x1a04950, C4<0>;
L_0x1a04a40 .delay (20000,20000,20000) L_0x1a04a40/d;
v0x19e4c50_0 .net "AandB", 0 0, L_0x1a04770; 1 drivers
v0x19e4d10_0 .net "AandC", 0 0, L_0x1a04890; 1 drivers
v0x19e4db0_0 .net "BandC", 0 0, L_0x1a04950; 1 drivers
v0x19e4e50_0 .net "a", 0 0, L_0x1a04d90; 1 drivers
v0x19e4ed0_0 .net "b", 0 0, L_0x1a04f50; 1 drivers
v0x19e4f70_0 .alias "carryin", 0 0, v0x19e66f0_2;
v0x19e5050_0 .alias "carryout", 0 0, v0x19ea790_2;
v0x19e5120_0 .net "sum", 0 0, L_0x1a04680; 1 drivers
S_0x19e2c80 .scope module, "f43" "CompAdder4bit" 2 62, 2 30, S_0x19db620;
 .timescale -9 -12;
v0x19e4620_0 .net "a", 3 0, L_0x1a07890; 1 drivers
v0x19e46e0_0 .net "b", 3 0, L_0x1a07930; 1 drivers
v0x19e4780_0 .alias "carryin", 0 0, v0x19ea790_2;
v0x19e4800_0 .alias "carryout", 0 0, v0x19ea790_3;
v0x19e4880_0 .net8 "sum", 3 0, RS_0x2b3f9cdf1c98; 4 drivers
v0x19e4900 .array "temp_cout", 0 2;
v0x19e4900_0 .net v0x19e4900 0, 0 0, L_0x1a05830; 1 drivers
v0x19e4900_1 .net v0x19e4900 1, 0 0, L_0x1a06000; 1 drivers
v0x19e4900_2 .net v0x19e4900 2, 0 0, L_0x1a06860; 1 drivers
L_0x1a05900 .part/pv L_0x1a04d30, 0, 1, 4;
L_0x1a059a0 .part L_0x1a07890, 0, 1;
L_0x1a05ad0 .part L_0x1a07930, 0, 1;
L_0x1a06120 .part/pv L_0x1a05c00, 1, 1, 4;
L_0x1a06210 .part L_0x1a07890, 1, 1;
L_0x1a06340 .part L_0x1a07930, 1, 1;
L_0x1a069f0 .part/pv L_0x1a064b0, 2, 1, 4;
L_0x1a06a90 .part L_0x1a07890, 2, 1;
L_0x1a06bc0 .part L_0x1a07930, 2, 1;
L_0x1a07270 .part/pv L_0x1a06cf0, 3, 1, 4;
L_0x1a07400 .part L_0x1a07890, 3, 1;
L_0x1a075c0 .part L_0x1a07930, 3, 1;
S_0x19e4020 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19e2c80;
 .timescale -9 -12;
L_0x1a04d30/d .functor XOR 1, L_0x1a059a0, L_0x1a05ad0, L_0x1a04a40, C4<0>;
L_0x1a04d30 .delay (30000,30000,30000) L_0x1a04d30/d;
L_0x1a05510/d .functor AND 1, L_0x1a059a0, L_0x1a05ad0, C4<1>, C4<1>;
L_0x1a05510 .delay (20000,20000,20000) L_0x1a05510/d;
L_0x1a055e0/d .functor AND 1, L_0x1a059a0, L_0x1a04a40, C4<1>, C4<1>;
L_0x1a055e0 .delay (20000,20000,20000) L_0x1a055e0/d;
L_0x1a056a0/d .functor AND 1, L_0x1a05ad0, L_0x1a04a40, C4<1>, C4<1>;
L_0x1a056a0 .delay (20000,20000,20000) L_0x1a056a0/d;
L_0x1a05830/d .functor OR 1, L_0x1a05510, L_0x1a055e0, L_0x1a056a0, C4<0>;
L_0x1a05830 .delay (20000,20000,20000) L_0x1a05830/d;
v0x19e4110_0 .net "AandB", 0 0, L_0x1a05510; 1 drivers
v0x19e41d0_0 .net "AandC", 0 0, L_0x1a055e0; 1 drivers
v0x19e4270_0 .net "BandC", 0 0, L_0x1a056a0; 1 drivers
v0x19e4310_0 .net "a", 0 0, L_0x1a059a0; 1 drivers
v0x19e4390_0 .net "b", 0 0, L_0x1a05ad0; 1 drivers
v0x19e4430_0 .alias "carryin", 0 0, v0x19ea790_2;
v0x19e44d0_0 .alias "carryout", 0 0, v0x19e4900_0;
v0x19e4550_0 .net "sum", 0 0, L_0x1a04d30; 1 drivers
S_0x19e3a20 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19e2c80;
 .timescale -9 -12;
L_0x1a05c00/d .functor XOR 1, L_0x1a06210, L_0x1a06340, L_0x1a05830, C4<0>;
L_0x1a05c00 .delay (30000,30000,30000) L_0x1a05c00/d;
L_0x1a05dc0/d .functor AND 1, L_0x1a06210, L_0x1a06340, C4<1>, C4<1>;
L_0x1a05dc0 .delay (20000,20000,20000) L_0x1a05dc0/d;
L_0x1a05e90/d .functor AND 1, L_0x1a06210, L_0x1a05830, C4<1>, C4<1>;
L_0x1a05e90 .delay (20000,20000,20000) L_0x1a05e90/d;
L_0x1a05f30/d .functor AND 1, L_0x1a06340, L_0x1a05830, C4<1>, C4<1>;
L_0x1a05f30 .delay (20000,20000,20000) L_0x1a05f30/d;
L_0x1a06000/d .functor OR 1, L_0x1a05dc0, L_0x1a05e90, L_0x1a05f30, C4<0>;
L_0x1a06000 .delay (20000,20000,20000) L_0x1a06000/d;
v0x19e3b10_0 .net "AandB", 0 0, L_0x1a05dc0; 1 drivers
v0x19e3bd0_0 .net "AandC", 0 0, L_0x1a05e90; 1 drivers
v0x19e3c70_0 .net "BandC", 0 0, L_0x1a05f30; 1 drivers
v0x19e3d10_0 .net "a", 0 0, L_0x1a06210; 1 drivers
v0x19e3d90_0 .net "b", 0 0, L_0x1a06340; 1 drivers
v0x19e3e30_0 .alias "carryin", 0 0, v0x19e4900_0;
v0x19e3ed0_0 .alias "carryout", 0 0, v0x19e4900_1;
v0x19e3f50_0 .net "sum", 0 0, L_0x1a05c00; 1 drivers
S_0x19e3420 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19e2c80;
 .timescale -9 -12;
L_0x1a064b0/d .functor XOR 1, L_0x1a06a90, L_0x1a06bc0, L_0x1a06000, C4<0>;
L_0x1a064b0 .delay (30000,30000,30000) L_0x1a064b0/d;
L_0x1a065e0/d .functor AND 1, L_0x1a06a90, L_0x1a06bc0, C4<1>, C4<1>;
L_0x1a065e0 .delay (20000,20000,20000) L_0x1a065e0/d;
L_0x1a06720/d .functor AND 1, L_0x1a06a90, L_0x1a06000, C4<1>, C4<1>;
L_0x1a06720 .delay (20000,20000,20000) L_0x1a06720/d;
L_0x1a067c0/d .functor AND 1, L_0x1a06bc0, L_0x1a06000, C4<1>, C4<1>;
L_0x1a067c0 .delay (20000,20000,20000) L_0x1a067c0/d;
L_0x1a06860/d .functor OR 1, L_0x1a065e0, L_0x1a06720, L_0x1a067c0, C4<0>;
L_0x1a06860 .delay (20000,20000,20000) L_0x1a06860/d;
v0x19e3510_0 .net "AandB", 0 0, L_0x1a065e0; 1 drivers
v0x19e35d0_0 .net "AandC", 0 0, L_0x1a06720; 1 drivers
v0x19e3670_0 .net "BandC", 0 0, L_0x1a067c0; 1 drivers
v0x19e3710_0 .net "a", 0 0, L_0x1a06a90; 1 drivers
v0x19e3790_0 .net "b", 0 0, L_0x1a06bc0; 1 drivers
v0x19e3830_0 .alias "carryin", 0 0, v0x19e4900_1;
v0x19e38d0_0 .alias "carryout", 0 0, v0x19e4900_2;
v0x19e3950_0 .net "sum", 0 0, L_0x1a064b0; 1 drivers
S_0x19e2d70 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19e2c80;
 .timescale -9 -12;
L_0x1a06cf0/d .functor XOR 1, L_0x1a07400, L_0x1a075c0, L_0x1a06860, C4<0>;
L_0x1a06cf0 .delay (30000,30000,30000) L_0x1a06cf0/d;
L_0x1a06de0/d .functor AND 1, L_0x1a07400, L_0x1a075c0, C4<1>, C4<1>;
L_0x1a06de0 .delay (20000,20000,20000) L_0x1a06de0/d;
L_0x1a06f00/d .functor AND 1, L_0x1a07400, L_0x1a06860, C4<1>, C4<1>;
L_0x1a06f00 .delay (20000,20000,20000) L_0x1a06f00/d;
L_0x1a06fc0/d .functor AND 1, L_0x1a075c0, L_0x1a06860, C4<1>, C4<1>;
L_0x1a06fc0 .delay (20000,20000,20000) L_0x1a06fc0/d;
L_0x1a070b0/d .functor OR 1, L_0x1a06de0, L_0x1a06f00, L_0x1a06fc0, C4<0>;
L_0x1a070b0 .delay (20000,20000,20000) L_0x1a070b0/d;
v0x19e2e60_0 .net "AandB", 0 0, L_0x1a06de0; 1 drivers
v0x19e2f20_0 .net "AandC", 0 0, L_0x1a06f00; 1 drivers
v0x19e2fc0_0 .net "BandC", 0 0, L_0x1a06fc0; 1 drivers
v0x19e3060_0 .net "a", 0 0, L_0x1a07400; 1 drivers
v0x19e30e0_0 .net "b", 0 0, L_0x1a075c0; 1 drivers
v0x19e3180_0 .alias "carryin", 0 0, v0x19e4900_2;
v0x19e3260_0 .alias "carryout", 0 0, v0x19ea790_3;
v0x19e3330_0 .net "sum", 0 0, L_0x1a06cf0; 1 drivers
S_0x19e0e90 .scope module, "f44" "CompAdder4bit" 2 63, 2 30, S_0x19db620;
 .timescale -9 -12;
v0x19e2830_0 .net "a", 3 0, L_0x1a09e50; 1 drivers
v0x19e28f0_0 .net "b", 3 0, L_0x1a09f70; 1 drivers
v0x19e2990_0 .alias "carryin", 0 0, v0x19ea790_3;
v0x19e2a10_0 .alias "carryout", 0 0, v0x19ea790_4;
v0x19e2a90_0 .net8 "sum", 3 0, RS_0x2b3f9cdf16c8; 4 drivers
v0x19e2b10 .array "temp_cout", 0 2;
v0x19e2b10_0 .net v0x19e2b10 0, 0 0, L_0x1a07da0; 1 drivers
v0x19e2b10_1 .net v0x19e2b10 1, 0 0, L_0x1a08570; 1 drivers
v0x19e2b10_2 .net v0x19e2b10 2, 0 0, L_0x1a08e20; 1 drivers
L_0x1a07e70 .part/pv L_0x1a073a0, 0, 1, 4;
L_0x1a07f10 .part L_0x1a09e50, 0, 1;
L_0x1a08040 .part L_0x1a09f70, 0, 1;
L_0x1a086e0 .part/pv L_0x1a08170, 1, 1, 4;
L_0x1a087d0 .part L_0x1a09e50, 1, 1;
L_0x1a08900 .part L_0x1a09f70, 1, 1;
L_0x1a08fb0 .part/pv L_0x1a08a70, 2, 1, 4;
L_0x1a09050 .part L_0x1a09e50, 2, 1;
L_0x1a09180 .part L_0x1a09f70, 2, 1;
L_0x1a09830 .part/pv L_0x1a092b0, 3, 1, 4;
L_0x1a099c0 .part L_0x1a09e50, 3, 1;
L_0x1a09b80 .part L_0x1a09f70, 3, 1;
S_0x19e2230 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19e0e90;
 .timescale -9 -12;
L_0x1a073a0/d .functor XOR 1, L_0x1a07f10, L_0x1a08040, L_0x1a070b0, C4<0>;
L_0x1a073a0 .delay (30000,30000,30000) L_0x1a073a0/d;
L_0x1a07a80/d .functor AND 1, L_0x1a07f10, L_0x1a08040, C4<1>, C4<1>;
L_0x1a07a80 .delay (20000,20000,20000) L_0x1a07a80/d;
L_0x1a07b50/d .functor AND 1, L_0x1a07f10, L_0x1a070b0, C4<1>, C4<1>;
L_0x1a07b50 .delay (20000,20000,20000) L_0x1a07b50/d;
L_0x1a07c10/d .functor AND 1, L_0x1a08040, L_0x1a070b0, C4<1>, C4<1>;
L_0x1a07c10 .delay (20000,20000,20000) L_0x1a07c10/d;
L_0x1a07da0/d .functor OR 1, L_0x1a07a80, L_0x1a07b50, L_0x1a07c10, C4<0>;
L_0x1a07da0 .delay (20000,20000,20000) L_0x1a07da0/d;
v0x19e2320_0 .net "AandB", 0 0, L_0x1a07a80; 1 drivers
v0x19e23e0_0 .net "AandC", 0 0, L_0x1a07b50; 1 drivers
v0x19e2480_0 .net "BandC", 0 0, L_0x1a07c10; 1 drivers
v0x19e2520_0 .net "a", 0 0, L_0x1a07f10; 1 drivers
v0x19e25a0_0 .net "b", 0 0, L_0x1a08040; 1 drivers
v0x19e2640_0 .alias "carryin", 0 0, v0x19ea790_3;
v0x19e26e0_0 .alias "carryout", 0 0, v0x19e2b10_0;
v0x19e2760_0 .net "sum", 0 0, L_0x1a073a0; 1 drivers
S_0x19e1c30 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19e0e90;
 .timescale -9 -12;
L_0x1a08170/d .functor XOR 1, L_0x1a087d0, L_0x1a08900, L_0x1a07da0, C4<0>;
L_0x1a08170 .delay (30000,30000,30000) L_0x1a08170/d;
L_0x1a08330/d .functor AND 1, L_0x1a087d0, L_0x1a08900, C4<1>, C4<1>;
L_0x1a08330 .delay (20000,20000,20000) L_0x1a08330/d;
L_0x1a08400/d .functor AND 1, L_0x1a087d0, L_0x1a07da0, C4<1>, C4<1>;
L_0x1a08400 .delay (20000,20000,20000) L_0x1a08400/d;
L_0x1a084a0/d .functor AND 1, L_0x1a08900, L_0x1a07da0, C4<1>, C4<1>;
L_0x1a084a0 .delay (20000,20000,20000) L_0x1a084a0/d;
L_0x1a08570/d .functor OR 1, L_0x1a08330, L_0x1a08400, L_0x1a084a0, C4<0>;
L_0x1a08570 .delay (20000,20000,20000) L_0x1a08570/d;
v0x19e1d20_0 .net "AandB", 0 0, L_0x1a08330; 1 drivers
v0x19e1de0_0 .net "AandC", 0 0, L_0x1a08400; 1 drivers
v0x19e1e80_0 .net "BandC", 0 0, L_0x1a084a0; 1 drivers
v0x19e1f20_0 .net "a", 0 0, L_0x1a087d0; 1 drivers
v0x19e1fa0_0 .net "b", 0 0, L_0x1a08900; 1 drivers
v0x19e2040_0 .alias "carryin", 0 0, v0x19e2b10_0;
v0x19e20e0_0 .alias "carryout", 0 0, v0x19e2b10_1;
v0x19e2160_0 .net "sum", 0 0, L_0x1a08170; 1 drivers
S_0x19e1630 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19e0e90;
 .timescale -9 -12;
L_0x1a08a70/d .functor XOR 1, L_0x1a09050, L_0x1a09180, L_0x1a08570, C4<0>;
L_0x1a08a70 .delay (30000,30000,30000) L_0x1a08a70/d;
L_0x1a08ba0/d .functor AND 1, L_0x1a09050, L_0x1a09180, C4<1>, C4<1>;
L_0x1a08ba0 .delay (20000,20000,20000) L_0x1a08ba0/d;
L_0x1a08ce0/d .functor AND 1, L_0x1a09050, L_0x1a08570, C4<1>, C4<1>;
L_0x1a08ce0 .delay (20000,20000,20000) L_0x1a08ce0/d;
L_0x1a08d80/d .functor AND 1, L_0x1a09180, L_0x1a08570, C4<1>, C4<1>;
L_0x1a08d80 .delay (20000,20000,20000) L_0x1a08d80/d;
L_0x1a08e20/d .functor OR 1, L_0x1a08ba0, L_0x1a08ce0, L_0x1a08d80, C4<0>;
L_0x1a08e20 .delay (20000,20000,20000) L_0x1a08e20/d;
v0x19e1720_0 .net "AandB", 0 0, L_0x1a08ba0; 1 drivers
v0x19e17e0_0 .net "AandC", 0 0, L_0x1a08ce0; 1 drivers
v0x19e1880_0 .net "BandC", 0 0, L_0x1a08d80; 1 drivers
v0x19e1920_0 .net "a", 0 0, L_0x1a09050; 1 drivers
v0x19e19a0_0 .net "b", 0 0, L_0x1a09180; 1 drivers
v0x19e1a40_0 .alias "carryin", 0 0, v0x19e2b10_1;
v0x19e1ae0_0 .alias "carryout", 0 0, v0x19e2b10_2;
v0x19e1b60_0 .net "sum", 0 0, L_0x1a08a70; 1 drivers
S_0x19e0f80 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19e0e90;
 .timescale -9 -12;
L_0x1a092b0/d .functor XOR 1, L_0x1a099c0, L_0x1a09b80, L_0x1a08e20, C4<0>;
L_0x1a092b0 .delay (30000,30000,30000) L_0x1a092b0/d;
L_0x1a093a0/d .functor AND 1, L_0x1a099c0, L_0x1a09b80, C4<1>, C4<1>;
L_0x1a093a0 .delay (20000,20000,20000) L_0x1a093a0/d;
L_0x1a094c0/d .functor AND 1, L_0x1a099c0, L_0x1a08e20, C4<1>, C4<1>;
L_0x1a094c0 .delay (20000,20000,20000) L_0x1a094c0/d;
L_0x1a09580/d .functor AND 1, L_0x1a09b80, L_0x1a08e20, C4<1>, C4<1>;
L_0x1a09580 .delay (20000,20000,20000) L_0x1a09580/d;
L_0x1a09670/d .functor OR 1, L_0x1a093a0, L_0x1a094c0, L_0x1a09580, C4<0>;
L_0x1a09670 .delay (20000,20000,20000) L_0x1a09670/d;
v0x19e1070_0 .net "AandB", 0 0, L_0x1a093a0; 1 drivers
v0x19e1130_0 .net "AandC", 0 0, L_0x1a094c0; 1 drivers
v0x19e11d0_0 .net "BandC", 0 0, L_0x1a09580; 1 drivers
v0x19e1270_0 .net "a", 0 0, L_0x1a099c0; 1 drivers
v0x19e12f0_0 .net "b", 0 0, L_0x1a09b80; 1 drivers
v0x19e1390_0 .alias "carryin", 0 0, v0x19e2b10_2;
v0x19e1470_0 .alias "carryout", 0 0, v0x19ea790_4;
v0x19e1540_0 .net "sum", 0 0, L_0x1a092b0; 1 drivers
S_0x19df0a0 .scope module, "f45" "CompAdder4bit" 2 64, 2 30, S_0x19db620;
 .timescale -9 -12;
v0x19e0a40_0 .net "a", 3 0, L_0x1a0c490; 1 drivers
v0x19e0b00_0 .net "b", 3 0, L_0x1a0c530; 1 drivers
v0x19e0ba0_0 .alias "carryin", 0 0, v0x19ea790_4;
v0x19e0c20_0 .alias "carryout", 0 0, v0x19ea790_5;
v0x19e0ca0_0 .net8 "sum", 3 0, RS_0x2b3f9cdf10f8; 4 drivers
v0x19e0d20 .array "temp_cout", 0 2;
v0x19e0d20_0 .net v0x19e0d20 0, 0 0, L_0x1a0a370; 1 drivers
v0x19e0d20_1 .net v0x19e0d20 1, 0 0, L_0x1a0ab40; 1 drivers
v0x19e0d20_2 .net v0x19e0d20 2, 0 0, L_0x1a0b440; 1 drivers
L_0x1a0a440 .part/pv L_0x1a09960, 0, 1, 4;
L_0x1a0a4e0 .part L_0x1a0c490, 0, 1;
L_0x1a0a610 .part L_0x1a0c530, 0, 1;
L_0x1a0ad00 .part/pv L_0x1a0a740, 1, 1, 4;
L_0x1a0adf0 .part L_0x1a0c490, 1, 1;
L_0x1a0af20 .part L_0x1a0c530, 1, 1;
L_0x1a0b5d0 .part/pv L_0x1a0b090, 2, 1, 4;
L_0x1a0b670 .part L_0x1a0c490, 2, 1;
L_0x1a0b7a0 .part L_0x1a0c530, 2, 1;
L_0x1a0be50 .part/pv L_0x1a0b8d0, 3, 1, 4;
L_0x1a0bfe0 .part L_0x1a0c490, 3, 1;
L_0x1a0c1a0 .part L_0x1a0c530, 3, 1;
S_0x19e0440 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19df0a0;
 .timescale -9 -12;
L_0x1a09960/d .functor XOR 1, L_0x1a0a4e0, L_0x1a0a610, L_0x1a09670, C4<0>;
L_0x1a09960 .delay (30000,30000,30000) L_0x1a09960/d;
L_0x1a0a050/d .functor AND 1, L_0x1a0a4e0, L_0x1a0a610, C4<1>, C4<1>;
L_0x1a0a050 .delay (20000,20000,20000) L_0x1a0a050/d;
L_0x1a0a120/d .functor AND 1, L_0x1a0a4e0, L_0x1a09670, C4<1>, C4<1>;
L_0x1a0a120 .delay (20000,20000,20000) L_0x1a0a120/d;
L_0x1a0a1e0/d .functor AND 1, L_0x1a0a610, L_0x1a09670, C4<1>, C4<1>;
L_0x1a0a1e0 .delay (20000,20000,20000) L_0x1a0a1e0/d;
L_0x1a0a370/d .functor OR 1, L_0x1a0a050, L_0x1a0a120, L_0x1a0a1e0, C4<0>;
L_0x1a0a370 .delay (20000,20000,20000) L_0x1a0a370/d;
v0x19e0530_0 .net "AandB", 0 0, L_0x1a0a050; 1 drivers
v0x19e05f0_0 .net "AandC", 0 0, L_0x1a0a120; 1 drivers
v0x19e0690_0 .net "BandC", 0 0, L_0x1a0a1e0; 1 drivers
v0x19e0730_0 .net "a", 0 0, L_0x1a0a4e0; 1 drivers
v0x19e07b0_0 .net "b", 0 0, L_0x1a0a610; 1 drivers
v0x19e0850_0 .alias "carryin", 0 0, v0x19ea790_4;
v0x19e08f0_0 .alias "carryout", 0 0, v0x19e0d20_0;
v0x19e0970_0 .net "sum", 0 0, L_0x1a09960; 1 drivers
S_0x19dfe40 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19df0a0;
 .timescale -9 -12;
L_0x1a0a740/d .functor XOR 1, L_0x1a0adf0, L_0x1a0af20, L_0x1a0a370, C4<0>;
L_0x1a0a740 .delay (30000,30000,30000) L_0x1a0a740/d;
L_0x1a0a900/d .functor AND 1, L_0x1a0adf0, L_0x1a0af20, C4<1>, C4<1>;
L_0x1a0a900 .delay (20000,20000,20000) L_0x1a0a900/d;
L_0x1a0a9d0/d .functor AND 1, L_0x1a0adf0, L_0x1a0a370, C4<1>, C4<1>;
L_0x1a0a9d0 .delay (20000,20000,20000) L_0x1a0a9d0/d;
L_0x1a0aa70/d .functor AND 1, L_0x1a0af20, L_0x1a0a370, C4<1>, C4<1>;
L_0x1a0aa70 .delay (20000,20000,20000) L_0x1a0aa70/d;
L_0x1a0ab40/d .functor OR 1, L_0x1a0a900, L_0x1a0a9d0, L_0x1a0aa70, C4<0>;
L_0x1a0ab40 .delay (20000,20000,20000) L_0x1a0ab40/d;
v0x19dff30_0 .net "AandB", 0 0, L_0x1a0a900; 1 drivers
v0x19dfff0_0 .net "AandC", 0 0, L_0x1a0a9d0; 1 drivers
v0x19e0090_0 .net "BandC", 0 0, L_0x1a0aa70; 1 drivers
v0x19e0130_0 .net "a", 0 0, L_0x1a0adf0; 1 drivers
v0x19e01b0_0 .net "b", 0 0, L_0x1a0af20; 1 drivers
v0x19e0250_0 .alias "carryin", 0 0, v0x19e0d20_0;
v0x19e02f0_0 .alias "carryout", 0 0, v0x19e0d20_1;
v0x19e0370_0 .net "sum", 0 0, L_0x1a0a740; 1 drivers
S_0x19df840 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19df0a0;
 .timescale -9 -12;
L_0x1a0b090/d .functor XOR 1, L_0x1a0b670, L_0x1a0b7a0, L_0x1a0ab40, C4<0>;
L_0x1a0b090 .delay (30000,30000,30000) L_0x1a0b090/d;
L_0x1a0b1c0/d .functor AND 1, L_0x1a0b670, L_0x1a0b7a0, C4<1>, C4<1>;
L_0x1a0b1c0 .delay (20000,20000,20000) L_0x1a0b1c0/d;
L_0x1a0b300/d .functor AND 1, L_0x1a0b670, L_0x1a0ab40, C4<1>, C4<1>;
L_0x1a0b300 .delay (20000,20000,20000) L_0x1a0b300/d;
L_0x1a0b3a0/d .functor AND 1, L_0x1a0b7a0, L_0x1a0ab40, C4<1>, C4<1>;
L_0x1a0b3a0 .delay (20000,20000,20000) L_0x1a0b3a0/d;
L_0x1a0b440/d .functor OR 1, L_0x1a0b1c0, L_0x1a0b300, L_0x1a0b3a0, C4<0>;
L_0x1a0b440 .delay (20000,20000,20000) L_0x1a0b440/d;
v0x19df930_0 .net "AandB", 0 0, L_0x1a0b1c0; 1 drivers
v0x19df9f0_0 .net "AandC", 0 0, L_0x1a0b300; 1 drivers
v0x19dfa90_0 .net "BandC", 0 0, L_0x1a0b3a0; 1 drivers
v0x19dfb30_0 .net "a", 0 0, L_0x1a0b670; 1 drivers
v0x19dfbb0_0 .net "b", 0 0, L_0x1a0b7a0; 1 drivers
v0x19dfc50_0 .alias "carryin", 0 0, v0x19e0d20_1;
v0x19dfcf0_0 .alias "carryout", 0 0, v0x19e0d20_2;
v0x19dfd70_0 .net "sum", 0 0, L_0x1a0b090; 1 drivers
S_0x19df190 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19df0a0;
 .timescale -9 -12;
L_0x1a0b8d0/d .functor XOR 1, L_0x1a0bfe0, L_0x1a0c1a0, L_0x1a0b440, C4<0>;
L_0x1a0b8d0 .delay (30000,30000,30000) L_0x1a0b8d0/d;
L_0x1a0b9c0/d .functor AND 1, L_0x1a0bfe0, L_0x1a0c1a0, C4<1>, C4<1>;
L_0x1a0b9c0 .delay (20000,20000,20000) L_0x1a0b9c0/d;
L_0x1a0bae0/d .functor AND 1, L_0x1a0bfe0, L_0x1a0b440, C4<1>, C4<1>;
L_0x1a0bae0 .delay (20000,20000,20000) L_0x1a0bae0/d;
L_0x1a0bba0/d .functor AND 1, L_0x1a0c1a0, L_0x1a0b440, C4<1>, C4<1>;
L_0x1a0bba0 .delay (20000,20000,20000) L_0x1a0bba0/d;
L_0x1a0bc90/d .functor OR 1, L_0x1a0b9c0, L_0x1a0bae0, L_0x1a0bba0, C4<0>;
L_0x1a0bc90 .delay (20000,20000,20000) L_0x1a0bc90/d;
v0x19df280_0 .net "AandB", 0 0, L_0x1a0b9c0; 1 drivers
v0x19df320_0 .net "AandC", 0 0, L_0x1a0bae0; 1 drivers
v0x19df3c0_0 .net "BandC", 0 0, L_0x1a0bba0; 1 drivers
v0x19df460_0 .net "a", 0 0, L_0x1a0bfe0; 1 drivers
v0x19df500_0 .net "b", 0 0, L_0x1a0c1a0; 1 drivers
v0x19df5a0_0 .alias "carryin", 0 0, v0x19e0d20_2;
v0x19df680_0 .alias "carryout", 0 0, v0x19ea790_5;
v0x19df750_0 .net "sum", 0 0, L_0x1a0b8d0; 1 drivers
S_0x19dd2d0 .scope module, "f46" "CompAdder4bit" 2 65, 2 30, S_0x19db620;
 .timescale -9 -12;
v0x19dec50_0 .net "a", 3 0, L_0x1a0eb50; 1 drivers
v0x19ded10_0 .net "b", 3 0, L_0x1a0c5d0; 1 drivers
v0x19dedb0_0 .alias "carryin", 0 0, v0x19ea790_5;
v0x19dee30_0 .alias "carryout", 0 0, v0x19ea790_6;
v0x19deeb0_0 .net8 "sum", 3 0, RS_0x2b3f9cdf0b28; 4 drivers
v0x19def30 .array "temp_cout", 0 2;
v0x19def30_0 .net v0x19def30 0, 0 0, L_0x1a0c940; 1 drivers
v0x19def30_1 .net v0x19def30 1, 0 0, L_0x1a0d110; 1 drivers
v0x19def30_2 .net v0x19def30 2, 0 0, L_0x1a0da10; 1 drivers
L_0x1a0ca10 .part/pv L_0x1a0bf80, 0, 1, 4;
L_0x1a0cab0 .part L_0x1a0eb50, 0, 1;
L_0x1a0cbe0 .part L_0x1a0c5d0, 0, 1;
L_0x1a0d2d0 .part/pv L_0x1a0cd10, 1, 1, 4;
L_0x1a0d3c0 .part L_0x1a0eb50, 1, 1;
L_0x1a0d4f0 .part L_0x1a0c5d0, 1, 1;
L_0x1a0dba0 .part/pv L_0x1a0d660, 2, 1, 4;
L_0x1a0dc40 .part L_0x1a0eb50, 2, 1;
L_0x1a0dd70 .part L_0x1a0c5d0, 2, 1;
L_0x1a0e420 .part/pv L_0x1a0dea0, 3, 1, 4;
L_0x1a0e5b0 .part L_0x1a0eb50, 3, 1;
L_0x1a0e770 .part L_0x1a0c5d0, 3, 1;
S_0x19de650 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19dd2d0;
 .timescale -9 -12;
L_0x1a0bf80/d .functor XOR 1, L_0x1a0cab0, L_0x1a0cbe0, L_0x1a0bc90, C4<0>;
L_0x1a0bf80 .delay (30000,30000,30000) L_0x1a0bf80/d;
L_0x1a0c670/d .functor AND 1, L_0x1a0cab0, L_0x1a0cbe0, C4<1>, C4<1>;
L_0x1a0c670 .delay (20000,20000,20000) L_0x1a0c670/d;
L_0x1a0c710/d .functor AND 1, L_0x1a0cab0, L_0x1a0bc90, C4<1>, C4<1>;
L_0x1a0c710 .delay (20000,20000,20000) L_0x1a0c710/d;
L_0x1a0c7b0/d .functor AND 1, L_0x1a0cbe0, L_0x1a0bc90, C4<1>, C4<1>;
L_0x1a0c7b0 .delay (20000,20000,20000) L_0x1a0c7b0/d;
L_0x1a0c940/d .functor OR 1, L_0x1a0c670, L_0x1a0c710, L_0x1a0c7b0, C4<0>;
L_0x1a0c940 .delay (20000,20000,20000) L_0x1a0c940/d;
v0x19de740_0 .net "AandB", 0 0, L_0x1a0c670; 1 drivers
v0x19de800_0 .net "AandC", 0 0, L_0x1a0c710; 1 drivers
v0x19de8a0_0 .net "BandC", 0 0, L_0x1a0c7b0; 1 drivers
v0x19de940_0 .net "a", 0 0, L_0x1a0cab0; 1 drivers
v0x19de9c0_0 .net "b", 0 0, L_0x1a0cbe0; 1 drivers
v0x19dea60_0 .alias "carryin", 0 0, v0x19ea790_5;
v0x19deb00_0 .alias "carryout", 0 0, v0x19def30_0;
v0x19deb80_0 .net "sum", 0 0, L_0x1a0bf80; 1 drivers
S_0x19de050 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19dd2d0;
 .timescale -9 -12;
L_0x1a0cd10/d .functor XOR 1, L_0x1a0d3c0, L_0x1a0d4f0, L_0x1a0c940, C4<0>;
L_0x1a0cd10 .delay (30000,30000,30000) L_0x1a0cd10/d;
L_0x1a0ced0/d .functor AND 1, L_0x1a0d3c0, L_0x1a0d4f0, C4<1>, C4<1>;
L_0x1a0ced0 .delay (20000,20000,20000) L_0x1a0ced0/d;
L_0x1a0cfa0/d .functor AND 1, L_0x1a0d3c0, L_0x1a0c940, C4<1>, C4<1>;
L_0x1a0cfa0 .delay (20000,20000,20000) L_0x1a0cfa0/d;
L_0x1a0d040/d .functor AND 1, L_0x1a0d4f0, L_0x1a0c940, C4<1>, C4<1>;
L_0x1a0d040 .delay (20000,20000,20000) L_0x1a0d040/d;
L_0x1a0d110/d .functor OR 1, L_0x1a0ced0, L_0x1a0cfa0, L_0x1a0d040, C4<0>;
L_0x1a0d110 .delay (20000,20000,20000) L_0x1a0d110/d;
v0x19de140_0 .net "AandB", 0 0, L_0x1a0ced0; 1 drivers
v0x19de200_0 .net "AandC", 0 0, L_0x1a0cfa0; 1 drivers
v0x19de2a0_0 .net "BandC", 0 0, L_0x1a0d040; 1 drivers
v0x19de340_0 .net "a", 0 0, L_0x1a0d3c0; 1 drivers
v0x19de3c0_0 .net "b", 0 0, L_0x1a0d4f0; 1 drivers
v0x19de460_0 .alias "carryin", 0 0, v0x19def30_0;
v0x19de500_0 .alias "carryout", 0 0, v0x19def30_1;
v0x19de580_0 .net "sum", 0 0, L_0x1a0cd10; 1 drivers
S_0x19dda50 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19dd2d0;
 .timescale -9 -12;
L_0x1a0d660/d .functor XOR 1, L_0x1a0dc40, L_0x1a0dd70, L_0x1a0d110, C4<0>;
L_0x1a0d660 .delay (30000,30000,30000) L_0x1a0d660/d;
L_0x1a0d790/d .functor AND 1, L_0x1a0dc40, L_0x1a0dd70, C4<1>, C4<1>;
L_0x1a0d790 .delay (20000,20000,20000) L_0x1a0d790/d;
L_0x1a0d8d0/d .functor AND 1, L_0x1a0dc40, L_0x1a0d110, C4<1>, C4<1>;
L_0x1a0d8d0 .delay (20000,20000,20000) L_0x1a0d8d0/d;
L_0x1a0d970/d .functor AND 1, L_0x1a0dd70, L_0x1a0d110, C4<1>, C4<1>;
L_0x1a0d970 .delay (20000,20000,20000) L_0x1a0d970/d;
L_0x1a0da10/d .functor OR 1, L_0x1a0d790, L_0x1a0d8d0, L_0x1a0d970, C4<0>;
L_0x1a0da10 .delay (20000,20000,20000) L_0x1a0da10/d;
v0x19ddb40_0 .net "AandB", 0 0, L_0x1a0d790; 1 drivers
v0x19ddc00_0 .net "AandC", 0 0, L_0x1a0d8d0; 1 drivers
v0x19ddca0_0 .net "BandC", 0 0, L_0x1a0d970; 1 drivers
v0x19ddd40_0 .net "a", 0 0, L_0x1a0dc40; 1 drivers
v0x19dddc0_0 .net "b", 0 0, L_0x1a0dd70; 1 drivers
v0x19dde60_0 .alias "carryin", 0 0, v0x19def30_1;
v0x19ddf00_0 .alias "carryout", 0 0, v0x19def30_2;
v0x19ddf80_0 .net "sum", 0 0, L_0x1a0d660; 1 drivers
S_0x19dd3c0 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19dd2d0;
 .timescale -9 -12;
L_0x1a0dea0/d .functor XOR 1, L_0x1a0e5b0, L_0x1a0e770, L_0x1a0da10, C4<0>;
L_0x1a0dea0 .delay (30000,30000,30000) L_0x1a0dea0/d;
L_0x1a0df90/d .functor AND 1, L_0x1a0e5b0, L_0x1a0e770, C4<1>, C4<1>;
L_0x1a0df90 .delay (20000,20000,20000) L_0x1a0df90/d;
L_0x1a0e0b0/d .functor AND 1, L_0x1a0e5b0, L_0x1a0da10, C4<1>, C4<1>;
L_0x1a0e0b0 .delay (20000,20000,20000) L_0x1a0e0b0/d;
L_0x1a0e170/d .functor AND 1, L_0x1a0e770, L_0x1a0da10, C4<1>, C4<1>;
L_0x1a0e170 .delay (20000,20000,20000) L_0x1a0e170/d;
L_0x1a0e260/d .functor OR 1, L_0x1a0df90, L_0x1a0e0b0, L_0x1a0e170, C4<0>;
L_0x1a0e260 .delay (20000,20000,20000) L_0x1a0e260/d;
v0x19dd4b0_0 .net "AandB", 0 0, L_0x1a0df90; 1 drivers
v0x19dd550_0 .net "AandC", 0 0, L_0x1a0e0b0; 1 drivers
v0x19dd5f0_0 .net "BandC", 0 0, L_0x1a0e170; 1 drivers
v0x19dd690_0 .net "a", 0 0, L_0x1a0e5b0; 1 drivers
v0x19dd710_0 .net "b", 0 0, L_0x1a0e770; 1 drivers
v0x19dd7b0_0 .alias "carryin", 0 0, v0x19def30_2;
v0x19dd890_0 .alias "carryout", 0 0, v0x19ea790_6;
v0x19dd960_0 .net "sum", 0 0, L_0x1a0dea0; 1 drivers
S_0x19db710 .scope module, "f47" "CompAdder4bit" 2 66, 2 30, S_0x19db620;
 .timescale -9 -12;
v0x19dcf40_0 .net "a", 3 0, L_0x1a0ed00; 1 drivers
v0x19dd000_0 .net "b", 3 0, L_0x1a11290; 1 drivers
v0x19dd0a0_0 .alias "carryin", 0 0, v0x19ea790_6;
v0x19dd120_0 .alias "carryout", 0 0, v0x19eada0_0;
v0x19dd1d0_0 .net8 "sum", 3 0, RS_0x2b3f9cdf0558; 4 drivers
v0x19dd250 .array "temp_cout", 0 2;
v0x19dd250_0 .net v0x19dd250 0, 0 0, L_0x1a0f090; 1 drivers
v0x19dd250_1 .net v0x19dd250 1, 0 0, L_0x1a0f860; 1 drivers
v0x19dd250_2 .net v0x19dd250 2, 0 0, L_0x1a10160; 1 drivers
L_0x1a0f160 .part/pv L_0x1a0e550, 0, 1, 4;
L_0x1a0f200 .part L_0x1a0ed00, 0, 1;
L_0x1a0f330 .part L_0x1a11290, 0, 1;
L_0x1a0fa20 .part/pv L_0x1a0f460, 1, 1, 4;
L_0x1a0fb10 .part L_0x1a0ed00, 1, 1;
L_0x1a0fc40 .part L_0x1a11290, 1, 1;
L_0x1a102f0 .part/pv L_0x1a0fdb0, 2, 1, 4;
L_0x1a10390 .part L_0x1a0ed00, 2, 1;
L_0x1a104c0 .part L_0x1a11290, 2, 1;
L_0x1a10bb0 .part/pv L_0x1a105f0, 3, 1, 4;
L_0x1a10d40 .part L_0x1a0ed00, 3, 1;
L_0x1a10f00 .part L_0x1a11290, 3, 1;
S_0x19dc990 .scope module, "fa0" "structuralFullAdder" 2 42, 2 8, S_0x19db710;
 .timescale -9 -12;
L_0x1a0e550/d .functor XOR 1, L_0x1a0f200, L_0x1a0f330, L_0x1a0e260, C4<0>;
L_0x1a0e550 .delay (30000,30000,30000) L_0x1a0e550/d;
L_0x1a05350/d .functor AND 1, L_0x1a0f200, L_0x1a0f330, C4<1>, C4<1>;
L_0x1a05350 .delay (20000,20000,20000) L_0x1a05350/d;
L_0x1a05480/d .functor AND 1, L_0x1a0f200, L_0x1a0e260, C4<1>, C4<1>;
L_0x1a05480 .delay (20000,20000,20000) L_0x1a05480/d;
L_0x1a0ef00/d .functor AND 1, L_0x1a0f330, L_0x1a0e260, C4<1>, C4<1>;
L_0x1a0ef00 .delay (20000,20000,20000) L_0x1a0ef00/d;
L_0x1a0f090/d .functor OR 1, L_0x1a05350, L_0x1a05480, L_0x1a0ef00, C4<0>;
L_0x1a0f090 .delay (20000,20000,20000) L_0x1a0f090/d;
v0x19dca80_0 .net "AandB", 0 0, L_0x1a05350; 1 drivers
v0x19dcb40_0 .net "AandC", 0 0, L_0x1a05480; 1 drivers
v0x19dcbe0_0 .net "BandC", 0 0, L_0x1a0ef00; 1 drivers
v0x19dcc80_0 .net "a", 0 0, L_0x1a0f200; 1 drivers
v0x19dcd00_0 .net "b", 0 0, L_0x1a0f330; 1 drivers
v0x19dcda0_0 .alias "carryin", 0 0, v0x19ea790_6;
v0x19dce40_0 .alias "carryout", 0 0, v0x19dd250_0;
v0x19dcec0_0 .net "sum", 0 0, L_0x1a0e550; 1 drivers
S_0x19dc3e0 .scope module, "fa1" "structuralFullAdder" 2 43, 2 8, S_0x19db710;
 .timescale -9 -12;
L_0x1a0f460/d .functor XOR 1, L_0x1a0fb10, L_0x1a0fc40, L_0x1a0f090, C4<0>;
L_0x1a0f460 .delay (30000,30000,30000) L_0x1a0f460/d;
L_0x1a0f620/d .functor AND 1, L_0x1a0fb10, L_0x1a0fc40, C4<1>, C4<1>;
L_0x1a0f620 .delay (20000,20000,20000) L_0x1a0f620/d;
L_0x1a0f6f0/d .functor AND 1, L_0x1a0fb10, L_0x1a0f090, C4<1>, C4<1>;
L_0x1a0f6f0 .delay (20000,20000,20000) L_0x1a0f6f0/d;
L_0x1a0f790/d .functor AND 1, L_0x1a0fc40, L_0x1a0f090, C4<1>, C4<1>;
L_0x1a0f790 .delay (20000,20000,20000) L_0x1a0f790/d;
L_0x1a0f860/d .functor OR 1, L_0x1a0f620, L_0x1a0f6f0, L_0x1a0f790, C4<0>;
L_0x1a0f860 .delay (20000,20000,20000) L_0x1a0f860/d;
v0x19dc4d0_0 .net "AandB", 0 0, L_0x1a0f620; 1 drivers
v0x19dc590_0 .net "AandC", 0 0, L_0x1a0f6f0; 1 drivers
v0x19dc630_0 .net "BandC", 0 0, L_0x1a0f790; 1 drivers
v0x19dc6d0_0 .net "a", 0 0, L_0x1a0fb10; 1 drivers
v0x19dc750_0 .net "b", 0 0, L_0x1a0fc40; 1 drivers
v0x19dc7f0_0 .alias "carryin", 0 0, v0x19dd250_0;
v0x19dc890_0 .alias "carryout", 0 0, v0x19dd250_1;
v0x19dc910_0 .net "sum", 0 0, L_0x1a0f460; 1 drivers
S_0x19dbe30 .scope module, "fa2" "structuralFullAdder" 2 44, 2 8, S_0x19db710;
 .timescale -9 -12;
L_0x1a0fdb0/d .functor XOR 1, L_0x1a10390, L_0x1a104c0, L_0x1a0f860, C4<0>;
L_0x1a0fdb0 .delay (30000,30000,30000) L_0x1a0fdb0/d;
L_0x1a0fee0/d .functor AND 1, L_0x1a10390, L_0x1a104c0, C4<1>, C4<1>;
L_0x1a0fee0 .delay (20000,20000,20000) L_0x1a0fee0/d;
L_0x1a10020/d .functor AND 1, L_0x1a10390, L_0x1a0f860, C4<1>, C4<1>;
L_0x1a10020 .delay (20000,20000,20000) L_0x1a10020/d;
L_0x1a100c0/d .functor AND 1, L_0x1a104c0, L_0x1a0f860, C4<1>, C4<1>;
L_0x1a100c0 .delay (20000,20000,20000) L_0x1a100c0/d;
L_0x1a10160/d .functor OR 1, L_0x1a0fee0, L_0x1a10020, L_0x1a100c0, C4<0>;
L_0x1a10160 .delay (20000,20000,20000) L_0x1a10160/d;
v0x19dbf20_0 .net "AandB", 0 0, L_0x1a0fee0; 1 drivers
v0x19dbfe0_0 .net "AandC", 0 0, L_0x1a10020; 1 drivers
v0x19dc080_0 .net "BandC", 0 0, L_0x1a100c0; 1 drivers
v0x19dc120_0 .net "a", 0 0, L_0x1a10390; 1 drivers
v0x19dc1a0_0 .net "b", 0 0, L_0x1a104c0; 1 drivers
v0x19dc240_0 .alias "carryin", 0 0, v0x19dd250_1;
v0x19dc2e0_0 .alias "carryout", 0 0, v0x19dd250_2;
v0x19dc360_0 .net "sum", 0 0, L_0x1a0fdb0; 1 drivers
S_0x19db800 .scope module, "fa3" "structuralFullAdder" 2 45, 2 8, S_0x19db710;
 .timescale -9 -12;
L_0x1a105f0/d .functor XOR 1, L_0x1a10d40, L_0x1a10f00, L_0x1a10160, C4<0>;
L_0x1a105f0 .delay (30000,30000,30000) L_0x1a105f0/d;
L_0x1a106e0/d .functor AND 1, L_0x1a10d40, L_0x1a10f00, C4<1>, C4<1>;
L_0x1a106e0 .delay (20000,20000,20000) L_0x1a106e0/d;
L_0x1a10800/d .functor AND 1, L_0x1a10d40, L_0x1a10160, C4<1>, C4<1>;
L_0x1a10800 .delay (20000,20000,20000) L_0x1a10800/d;
L_0x1a108c0/d .functor AND 1, L_0x1a10f00, L_0x1a10160, C4<1>, C4<1>;
L_0x1a108c0 .delay (20000,20000,20000) L_0x1a108c0/d;
L_0x1a109b0/d .functor OR 1, L_0x1a106e0, L_0x1a10800, L_0x1a108c0, C4<0>;
L_0x1a109b0 .delay (20000,20000,20000) L_0x1a109b0/d;
v0x19db8f0_0 .net "AandB", 0 0, L_0x1a106e0; 1 drivers
v0x19db9b0_0 .net "AandC", 0 0, L_0x1a10800; 1 drivers
v0x19dba50_0 .net "BandC", 0 0, L_0x1a108c0; 1 drivers
v0x19dbaf0_0 .net "a", 0 0, L_0x1a10d40; 1 drivers
v0x19dbb70_0 .net "b", 0 0, L_0x1a10f00; 1 drivers
v0x19dbc10_0 .alias "carryin", 0 0, v0x19dd250_2;
v0x19dbcf0_0 .alias "carryout", 0 0, v0x19eada0_0;
v0x19dbd90_0 .net "sum", 0 0, L_0x1a105f0; 1 drivers
    .scope S_0x199dad0;
T_0 ;
    %vpi_call 3 15 "$display", " a_10   b _10 |overflow carryout   sum ";
    %set/v v0x19eac80_0, 0, 32;
    %set/v v0x19ead20_0, 0, 32;
    %delay 1000000, 0;
    %vpi_call 3 17 "$display", " 0        0  |   %b        %b       %b", v0x19eae20_0, v0x19eada0_0, v0x19eaea0_0;
    %set/v v0x19eac80_0, 1, 32;
    %set/v v0x19ead20_0, 1, 32;
    %delay 1000000, 0;
    %vpi_call 3 19 "$display", " -1       -1 |   %b        %b       %b", v0x19eae20_0, v0x19eada0_0, v0x19eaea0_0;
    %movi 8, 268435455, 32;
    %set/v v0x19eac80_0, 8, 32;
    %movi 8, 268435455, 32;
    %set/v v0x19ead20_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 3 21 "$display", "  max     max|   %b        %b       %b", v0x19eae20_0, v0x19eada0_0, v0x19eaea0_0;
    %movi 8, 4026531855, 32;
    %set/v v0x19eac80_0, 8, 32;
    %movi 8, 4026531855, 32;
    %set/v v0x19ead20_0, 8, 32;
    %delay 1000000, 0;
    %vpi_call 3 23 "$display", " min     min |   %b        %b       %b", v0x19eae20_0, v0x19eada0_0, v0x19eaea0_0;
    %movi 8, 4, 32;
    %set/v v0x19eac80_0, 8, 32;
    %movi 8, 4, 32;
    %set/v v0x19ead20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 25 "$display", "  4       4  |   %b        %b       %b", v0x19eae20_0, v0x19eada0_0, v0x19eaea0_0;
    %movi 8, 305402420, 32;
    %set/v v0x19eac80_0, 8, 32;
    %movi 8, 305402420, 32;
    %set/v v0x19ead20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 27 "$display", " ?      ?    |   %b        %b       %b", v0x19eae20_0, v0x19eada0_0, v0x19eaea0_0;
    %set/v v0x19eac80_0, 1, 32;
    %movi 8, 1, 32;
    %set/v v0x19ead20_0, 8, 32;
    %delay 10000000, 0;
    %vpi_call 3 29 "$display", " -1    1     |   %b        %b       %b", v0x19eae20_0, v0x19eada0_0, v0x19eaea0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./math.v";
    "math.t.v";
