#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x102fb10 .scope module, "ALUmultiplexer" "ALUmultiplexer" 2 41;
 .timescale -9 -12;
L_0x10695e0/d .functor AND 1, L_0x1069680, C4<z>, C4<1>, C4<1>;
L_0x10695e0 .delay (50000,50000,50000) L_0x10695e0/d;
L_0x1069720/d .functor NOT 1, L_0x10697c0, C4<0>, C4<0>, C4<0>;
L_0x1069720 .delay (50000,50000,50000) L_0x1069720/d;
L_0x10698f0/d .functor AND 1, L_0x1069720, L_0x1069150, C4<1>, C4<1>;
L_0x10698f0 .delay (50000,50000,50000) L_0x10698f0/d;
L_0x10699e0/d .functor OR 1, L_0x10695e0, L_0x10698f0, C4<0>, C4<0>;
L_0x10699e0 .delay (50000,50000,50000) L_0x10699e0/d;
v0x1066cf0_0 .net "ANDNAD", 0 0, C4<z>; 0 drivers
v0x1066d90_0 .net "ANDNAND", 0 0, C4<z>; 0 drivers
v0x1066e10_0 .net "ORNOR", 0 0, C4<z>; 0 drivers
v0x1066eb0_0 .net "SLT", 0 0, C4<z>; 0 drivers
v0x1066f90_0 .net "XOR", 0 0, C4<z>; 0 drivers
v0x1067040_0 .net *"_s5", 0 0, L_0x1069680; 1 drivers
v0x10670c0_0 .net *"_s7", 0 0, L_0x10697c0; 1 drivers
v0x1067140_0 .net "addsub", 0 0, C4<z>; 0 drivers
v0x10671c0_0 .net "bit1", 0 0, L_0x10695e0; 1 drivers
v0x1067240_0 .net "bit2", 0 0, L_0x1069720; 1 drivers
v0x10672c0_0 .net "bit3", 0 0, L_0x10698f0; 1 drivers
v0x1067360_0 .net "muxindex", 2 0, C4<zzz>; 0 drivers
v0x1067470_0 .net "out", 0 0, L_0x10699e0; 1 drivers
v0x1067510_0 .net "tempout", 0 0, L_0x1069150; 1 drivers
L_0x1069380 .part C4<zzz>, 0, 1;
L_0x10694b0 .part C4<zzz>, 1, 1;
L_0x1069680 .part C4<zzz>, 2, 1;
L_0x10697c0 .part C4<zzz>, 2, 1;
S_0x102e300 .scope module, "mux1" "structuralMultiplexer" 2 50, 2 20, S_0x102fb10;
 .timescale -9 -12;
L_0x1066a20/d .functor NOT 1, L_0x1069380, C4<0>, C4<0>, C4<0>;
L_0x1066a20 .delay (50000,50000,50000) L_0x1066a20/d;
L_0x1068ab0/d .functor NOT 1, L_0x10694b0, C4<0>, C4<0>, C4<0>;
L_0x1068ab0 .delay (50000,50000,50000) L_0x1068ab0/d;
L_0x1068bb0/d .functor AND 1, L_0x1066a20, L_0x1068ab0, C4<z>, C4<1>;
L_0x1068bb0 .delay (50000,50000,50000) L_0x1068bb0/d;
L_0x1068da0/d .functor AND 1, L_0x1069380, L_0x1068ab0, C4<z>, C4<1>;
L_0x1068da0 .delay (50000,50000,50000) L_0x1068da0/d;
L_0x1068ee0/d .functor AND 1, L_0x1066a20, L_0x10694b0, C4<z>, C4<1>;
L_0x1068ee0 .delay (50000,50000,50000) L_0x1068ee0/d;
L_0x1069020/d .functor AND 1, L_0x1069380, L_0x10694b0, C4<z>, C4<1>;
L_0x1069020 .delay (50000,50000,50000) L_0x1069020/d;
L_0x1069150/d .functor OR 1, L_0x1069020, L_0x1068ee0, L_0x1068da0, L_0x1068bb0;
L_0x1069150 .delay (50000,50000,50000) L_0x1069150/d;
v0x103ea30_0 .net "address0", 0 0, L_0x1069380; 1 drivers
v0x1066400_0 .net "address1", 0 0, L_0x10694b0; 1 drivers
v0x10664a0_0 .alias "in0", 0 0, v0x1067140_0;
v0x1066540_0 .alias "in1", 0 0, v0x1066f90_0;
v0x10665f0_0 .alias "in2", 0 0, v0x1066eb0_0;
v0x1066690_0 .alias "in3", 0 0, v0x1066cf0_0;
v0x1066770_0 .net "inter0", 0 0, L_0x1068bb0; 1 drivers
v0x1066810_0 .net "inter1", 0 0, L_0x1068da0; 1 drivers
v0x1066900_0 .net "inter2", 0 0, L_0x1068ee0; 1 drivers
v0x10669a0_0 .net "inter3", 0 0, L_0x1069020; 1 drivers
v0x1066aa0_0 .net "nadd0", 0 0, L_0x1066a20; 1 drivers
v0x1066b40_0 .net "nadd1", 0 0, L_0x1068ab0; 1 drivers
v0x1066c50_0 .alias "out", 0 0, v0x1067510_0;
S_0x102f600 .scope module, "behavioralMultiplexer" "behavioralMultiplexer" 2 7;
 .timescale -9 -12;
v0x1067640_0 .net "address", 1 0, L_0x1069c80; 1 drivers
v0x10676e0_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x1067780_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x1067820_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x10678d0_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x1067970_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x1067a10_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x1067ab0_0 .net "inputs", 3 0, L_0x1069b20; 1 drivers
v0x1067b50_0 .net "out", 0 0, L_0x1069db0; 1 drivers
L_0x1069b20 .concat [ 1 1 1 1], C4<z>, C4<z>, C4<z>, C4<z>;
L_0x1069c80 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0x1069db0 .part/v L_0x1069b20, L_0x1069c80, 1;
S_0x102ef40 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x1068550_0 .var "addr0", 0 0;
v0x10685f0_0 .var "addr1", 0 0;
v0x10686a0_0 .var "in0", 0 0;
v0x1068750_0 .var "in1", 0 0;
v0x1068830_0 .var "in2", 0 0;
v0x10688e0_0 .var "in3", 0 0;
v0x1068960_0 .net "out", 0 0, L_0x106a6d0; 1 drivers
S_0x1067bf0 .scope module, "multiplexer" "structuralMultiplexer" 3 12, 2 20, S_0x102ef40;
 .timescale -9 -12;
L_0x1069ed0/d .functor NOT 1, v0x1068550_0, C4<0>, C4<0>, C4<0>;
L_0x1069ed0 .delay (50000,50000,50000) L_0x1069ed0/d;
L_0x106a010/d .functor NOT 1, v0x10685f0_0, C4<0>, C4<0>, C4<0>;
L_0x106a010 .delay (50000,50000,50000) L_0x106a010/d;
L_0x106a100/d .functor AND 1, L_0x1069ed0, L_0x106a010, v0x10686a0_0, C4<1>;
L_0x106a100 .delay (50000,50000,50000) L_0x106a100/d;
L_0x106a290/d .functor AND 1, v0x1068550_0, L_0x106a010, v0x1068750_0, C4<1>;
L_0x106a290 .delay (50000,50000,50000) L_0x106a290/d;
L_0x106a380/d .functor AND 1, L_0x1069ed0, v0x10685f0_0, v0x1068830_0, C4<1>;
L_0x106a380 .delay (50000,50000,50000) L_0x106a380/d;
L_0x106a4a0/d .functor AND 1, v0x1068550_0, v0x10685f0_0, v0x10688e0_0, C4<1>;
L_0x106a4a0 .delay (50000,50000,50000) L_0x106a4a0/d;
L_0x106a6d0/d .functor OR 1, L_0x106a4a0, L_0x106a380, L_0x106a290, L_0x106a100;
L_0x106a6d0 .delay (50000,50000,50000) L_0x106a6d0/d;
v0x1067ce0_0 .net "address0", 0 0, v0x1068550_0; 1 drivers
v0x1067da0_0 .net "address1", 0 0, v0x10685f0_0; 1 drivers
v0x1067e40_0 .net "in0", 0 0, v0x10686a0_0; 1 drivers
v0x1067ee0_0 .net "in1", 0 0, v0x1068750_0; 1 drivers
v0x1067f60_0 .net "in2", 0 0, v0x1068830_0; 1 drivers
v0x1068000_0 .net "in3", 0 0, v0x10688e0_0; 1 drivers
v0x10680a0_0 .net "inter0", 0 0, L_0x106a100; 1 drivers
v0x1068140_0 .net "inter1", 0 0, L_0x106a290; 1 drivers
v0x1068230_0 .net "inter2", 0 0, L_0x106a380; 1 drivers
v0x10682d0_0 .net "inter3", 0 0, L_0x106a4a0; 1 drivers
v0x1068370_0 .net "nadd0", 0 0, L_0x1069ed0; 1 drivers
v0x1068410_0 .net "nadd1", 0 0, L_0x106a010; 1 drivers
v0x10684b0_0 .alias "out", 0 0, v0x1068960_0;
    .scope S_0x102ef40;
T_0 ;
    %vpi_call 3 15 "$dumpfile", "multiplexer.vcd";
    %vpi_call 3 16 "$dumpvars";
    %vpi_call 3 18 "$display", "A0 A1| I0 I1 I2 I3 |  O | Expected Output";
    %set/v v0x1068550_0, 0, 1;
    %set/v v0x10685f0_0, 0, 1;
    %set/v v0x10686a0_0, 0, 1;
    %set/v v0x1068750_0, 2, 1;
    %set/v v0x1068830_0, 2, 1;
    %set/v v0x10688e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1068550_0, v0x10685f0_0, v0x10686a0_0, v0x1068750_0, v0x1068830_0, v0x10688e0_0, v0x1068960_0;
    %set/v v0x1068550_0, 0, 1;
    %set/v v0x10685f0_0, 0, 1;
    %set/v v0x10686a0_0, 1, 1;
    %set/v v0x1068750_0, 2, 1;
    %set/v v0x1068830_0, 2, 1;
    %set/v v0x10688e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1068550_0, v0x10685f0_0, v0x10686a0_0, v0x1068750_0, v0x1068830_0, v0x10688e0_0, v0x1068960_0;
    %set/v v0x1068550_0, 1, 1;
    %set/v v0x10685f0_0, 0, 1;
    %set/v v0x10686a0_0, 2, 1;
    %set/v v0x1068750_0, 0, 1;
    %set/v v0x1068830_0, 2, 1;
    %set/v v0x10688e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1068550_0, v0x10685f0_0, v0x10686a0_0, v0x1068750_0, v0x1068830_0, v0x10688e0_0, v0x1068960_0;
    %set/v v0x1068550_0, 1, 1;
    %set/v v0x10685f0_0, 0, 1;
    %set/v v0x10686a0_0, 2, 1;
    %set/v v0x1068750_0, 1, 1;
    %set/v v0x1068830_0, 2, 1;
    %set/v v0x10688e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1068550_0, v0x10685f0_0, v0x10686a0_0, v0x1068750_0, v0x1068830_0, v0x10688e0_0, v0x1068960_0;
    %set/v v0x1068550_0, 0, 1;
    %set/v v0x10685f0_0, 1, 1;
    %set/v v0x10686a0_0, 2, 1;
    %set/v v0x1068750_0, 2, 1;
    %set/v v0x1068830_0, 0, 1;
    %set/v v0x10688e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1068550_0, v0x10685f0_0, v0x10686a0_0, v0x1068750_0, v0x1068830_0, v0x10688e0_0, v0x1068960_0;
    %set/v v0x1068550_0, 0, 1;
    %set/v v0x10685f0_0, 1, 1;
    %set/v v0x10686a0_0, 2, 1;
    %set/v v0x1068750_0, 2, 1;
    %set/v v0x1068830_0, 1, 1;
    %set/v v0x10688e0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1068550_0, v0x10685f0_0, v0x10686a0_0, v0x1068750_0, v0x1068830_0, v0x10688e0_0, v0x1068960_0;
    %set/v v0x1068550_0, 1, 1;
    %set/v v0x10685f0_0, 1, 1;
    %set/v v0x10686a0_0, 2, 1;
    %set/v v0x1068750_0, 2, 1;
    %set/v v0x1068830_0, 2, 1;
    %set/v v0x10688e0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1068550_0, v0x10685f0_0, v0x10686a0_0, v0x1068750_0, v0x1068830_0, v0x10688e0_0, v0x1068960_0;
    %set/v v0x1068550_0, 1, 1;
    %set/v v0x10685f0_0, 1, 1;
    %set/v v0x10686a0_0, 2, 1;
    %set/v v0x1068750_0, 2, 1;
    %set/v v0x1068830_0, 2, 1;
    %set/v v0x10688e0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1068550_0, v0x10685f0_0, v0x10686a0_0, v0x1068750_0, v0x1068830_0, v0x10688e0_0, v0x1068960_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
