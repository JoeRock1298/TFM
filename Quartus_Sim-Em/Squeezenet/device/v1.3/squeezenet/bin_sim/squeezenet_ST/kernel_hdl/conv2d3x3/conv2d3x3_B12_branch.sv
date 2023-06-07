// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.1 (Release Build #173.3)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from conv2d3x3_B12_branch
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B12_branch (
    input wire [31:0] in_add41_2,
    input wire [63:0] in_c0_exe1092551,
    input wire [63:0] in_c0_exe1392852,
    input wire [31:0] in_c0_exe1492953,
    input wire [0:0] in_c0_exe1593054,
    input wire [31:0] in_c0_exe1693155,
    input wire [31:0] in_c0_exe1793256,
    input wire [0:0] in_c0_exe1893357,
    input wire [31:0] in_c0_exe1991,
    input wire [0:0] in_c0_exe1993458,
    input wire [31:0] in_c0_exe2093559,
    input wire [31:0] in_c0_exe2193660,
    input wire [0:0] in_c0_exe2293761,
    input wire [0:0] in_c0_exe2393862,
    input wire [0:0] in_c0_exe2493963,
    input wire [31:0] in_c0_exe2594064,
    input wire [31:0] in_c0_exe2694165,
    input wire [0:0] in_c0_exe2794266,
    input wire [31:0] in_c0_exe2894367,
    input wire [31:0] in_c0_exe3094569,
    input wire [0:0] in_c0_exe3194670,
    input wire [63:0] in_c0_exe3394871,
    input wire [63:0] in_c0_exe3494972,
    input wire [31:0] in_c0_exe3595073,
    input wire [0:0] in_c0_exe3695174,
    input wire [31:0] in_c0_exe3795275,
    input wire [31:0] in_c0_exe3895376,
    input wire [31:0] in_c0_exe391847,
    input wire [0:0] in_c0_exe3995477,
    input wire [0:0] in_c0_exe4095578,
    input wire [31:0] in_c0_exe4195679,
    input wire [0:0] in_c0_exe4295780,
    input wire [0:0] in_c0_exe4395881,
    input wire [31:0] in_c0_exe4495982,
    input wire [0:0] in_c0_exe4596083,
    input wire [0:0] in_c0_exe4696184,
    input wire [0:0] in_c0_exe4796285,
    input wire [63:0] in_c0_exe4896386,
    input wire [63:0] in_c0_exe4996487,
    input wire [31:0] in_c0_exe5096588,
    input wire [0:0] in_c0_exe5196689,
    input wire [0:0] in_c0_exe592048,
    input wire [0:0] in_c0_exe692149,
    input wire [0:0] in_c0_exe892350,
    input wire [31:0] in_c1_exe198390,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_add41_2,
    output wire [63:0] out_c0_exe1092551,
    output wire [63:0] out_c0_exe1392852,
    output wire [31:0] out_c0_exe1492953,
    output wire [0:0] out_c0_exe1593054,
    output wire [31:0] out_c0_exe1693155,
    output wire [31:0] out_c0_exe1793256,
    output wire [0:0] out_c0_exe1893357,
    output wire [31:0] out_c0_exe1991,
    output wire [0:0] out_c0_exe1993458,
    output wire [31:0] out_c0_exe2093559,
    output wire [31:0] out_c0_exe2193660,
    output wire [0:0] out_c0_exe2293761,
    output wire [0:0] out_c0_exe2393862,
    output wire [0:0] out_c0_exe2493963,
    output wire [31:0] out_c0_exe2594064,
    output wire [31:0] out_c0_exe2694165,
    output wire [0:0] out_c0_exe2794266,
    output wire [31:0] out_c0_exe2894367,
    output wire [31:0] out_c0_exe3094569,
    output wire [0:0] out_c0_exe3194670,
    output wire [63:0] out_c0_exe3394871,
    output wire [63:0] out_c0_exe3494972,
    output wire [31:0] out_c0_exe3595073,
    output wire [0:0] out_c0_exe3695174,
    output wire [31:0] out_c0_exe3795275,
    output wire [31:0] out_c0_exe3895376,
    output wire [31:0] out_c0_exe391847,
    output wire [0:0] out_c0_exe3995477,
    output wire [0:0] out_c0_exe4095578,
    output wire [31:0] out_c0_exe4195679,
    output wire [0:0] out_c0_exe4295780,
    output wire [0:0] out_c0_exe4395881,
    output wire [31:0] out_c0_exe4495982,
    output wire [0:0] out_c0_exe4596083,
    output wire [0:0] out_c0_exe4696184,
    output wire [0:0] out_c0_exe4796285,
    output wire [63:0] out_c0_exe4896386,
    output wire [63:0] out_c0_exe4996487,
    output wire [31:0] out_c0_exe5096588,
    output wire [0:0] out_c0_exe5196689,
    output wire [0:0] out_c0_exe592048,
    output wire [0:0] out_c0_exe692149,
    output wire [0:0] out_c0_exe892350,
    output wire [31:0] out_c1_exe198390,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_add41_2(GPOUT,49)
    assign out_add41_2 = in_add41_2;

    // out_c0_exe1092551(GPOUT,50)
    assign out_c0_exe1092551 = in_c0_exe1092551;

    // out_c0_exe1392852(GPOUT,51)
    assign out_c0_exe1392852 = in_c0_exe1392852;

    // out_c0_exe1492953(GPOUT,52)
    assign out_c0_exe1492953 = in_c0_exe1492953;

    // out_c0_exe1593054(GPOUT,53)
    assign out_c0_exe1593054 = in_c0_exe1593054;

    // out_c0_exe1693155(GPOUT,54)
    assign out_c0_exe1693155 = in_c0_exe1693155;

    // out_c0_exe1793256(GPOUT,55)
    assign out_c0_exe1793256 = in_c0_exe1793256;

    // out_c0_exe1893357(GPOUT,56)
    assign out_c0_exe1893357 = in_c0_exe1893357;

    // out_c0_exe1991(GPOUT,57)
    assign out_c0_exe1991 = in_c0_exe1991;

    // out_c0_exe1993458(GPOUT,58)
    assign out_c0_exe1993458 = in_c0_exe1993458;

    // out_c0_exe2093559(GPOUT,59)
    assign out_c0_exe2093559 = in_c0_exe2093559;

    // out_c0_exe2193660(GPOUT,60)
    assign out_c0_exe2193660 = in_c0_exe2193660;

    // out_c0_exe2293761(GPOUT,61)
    assign out_c0_exe2293761 = in_c0_exe2293761;

    // out_c0_exe2393862(GPOUT,62)
    assign out_c0_exe2393862 = in_c0_exe2393862;

    // out_c0_exe2493963(GPOUT,63)
    assign out_c0_exe2493963 = in_c0_exe2493963;

    // out_c0_exe2594064(GPOUT,64)
    assign out_c0_exe2594064 = in_c0_exe2594064;

    // out_c0_exe2694165(GPOUT,65)
    assign out_c0_exe2694165 = in_c0_exe2694165;

    // out_c0_exe2794266(GPOUT,66)
    assign out_c0_exe2794266 = in_c0_exe2794266;

    // out_c0_exe2894367(GPOUT,67)
    assign out_c0_exe2894367 = in_c0_exe2894367;

    // out_c0_exe3094569(GPOUT,68)
    assign out_c0_exe3094569 = in_c0_exe3094569;

    // out_c0_exe3194670(GPOUT,69)
    assign out_c0_exe3194670 = in_c0_exe3194670;

    // out_c0_exe3394871(GPOUT,70)
    assign out_c0_exe3394871 = in_c0_exe3394871;

    // out_c0_exe3494972(GPOUT,71)
    assign out_c0_exe3494972 = in_c0_exe3494972;

    // out_c0_exe3595073(GPOUT,72)
    assign out_c0_exe3595073 = in_c0_exe3595073;

    // out_c0_exe3695174(GPOUT,73)
    assign out_c0_exe3695174 = in_c0_exe3695174;

    // out_c0_exe3795275(GPOUT,74)
    assign out_c0_exe3795275 = in_c0_exe3795275;

    // out_c0_exe3895376(GPOUT,75)
    assign out_c0_exe3895376 = in_c0_exe3895376;

    // out_c0_exe391847(GPOUT,76)
    assign out_c0_exe391847 = in_c0_exe391847;

    // out_c0_exe3995477(GPOUT,77)
    assign out_c0_exe3995477 = in_c0_exe3995477;

    // out_c0_exe4095578(GPOUT,78)
    assign out_c0_exe4095578 = in_c0_exe4095578;

    // out_c0_exe4195679(GPOUT,79)
    assign out_c0_exe4195679 = in_c0_exe4195679;

    // out_c0_exe4295780(GPOUT,80)
    assign out_c0_exe4295780 = in_c0_exe4295780;

    // out_c0_exe4395881(GPOUT,81)
    assign out_c0_exe4395881 = in_c0_exe4395881;

    // out_c0_exe4495982(GPOUT,82)
    assign out_c0_exe4495982 = in_c0_exe4495982;

    // out_c0_exe4596083(GPOUT,83)
    assign out_c0_exe4596083 = in_c0_exe4596083;

    // out_c0_exe4696184(GPOUT,84)
    assign out_c0_exe4696184 = in_c0_exe4696184;

    // out_c0_exe4796285(GPOUT,85)
    assign out_c0_exe4796285 = in_c0_exe4796285;

    // out_c0_exe4896386(GPOUT,86)
    assign out_c0_exe4896386 = in_c0_exe4896386;

    // out_c0_exe4996487(GPOUT,87)
    assign out_c0_exe4996487 = in_c0_exe4996487;

    // out_c0_exe5096588(GPOUT,88)
    assign out_c0_exe5096588 = in_c0_exe5096588;

    // out_c0_exe5196689(GPOUT,89)
    assign out_c0_exe5196689 = in_c0_exe5196689;

    // out_c0_exe592048(GPOUT,90)
    assign out_c0_exe592048 = in_c0_exe592048;

    // out_c0_exe692149(GPOUT,91)
    assign out_c0_exe692149 = in_c0_exe692149;

    // out_c0_exe892350(GPOUT,92)
    assign out_c0_exe892350 = in_c0_exe892350;

    // out_c1_exe198390(GPOUT,93)
    assign out_c1_exe198390 = in_c1_exe198390;

    // stall_out(LOGICAL,96)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,94)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,95)
    assign out_valid_out_0 = in_valid_in;

endmodule
