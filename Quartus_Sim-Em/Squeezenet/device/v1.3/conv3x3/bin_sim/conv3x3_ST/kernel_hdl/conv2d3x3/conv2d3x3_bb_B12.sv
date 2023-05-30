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

// SystemVerilog created from conv2d3x3_bb_B12
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B12 (
    input wire [63:0] in_c0_exe1092551_0,
    input wire [63:0] in_c0_exe1392852_0,
    input wire [31:0] in_c0_exe1492953_0,
    input wire [0:0] in_c0_exe1593054_0,
    input wire [31:0] in_c0_exe1693155_0,
    input wire [31:0] in_c0_exe1793256_0,
    input wire [0:0] in_c0_exe1893357_0,
    input wire [0:0] in_c0_exe1993458_0,
    input wire [31:0] in_c0_exe2093559_0,
    input wire [31:0] in_c0_exe2193660_0,
    input wire [0:0] in_c0_exe2293761_0,
    input wire [0:0] in_c0_exe2393862_0,
    input wire [0:0] in_c0_exe2493963_0,
    input wire [31:0] in_c0_exe2594064_0,
    input wire [31:0] in_c0_exe2694165_0,
    input wire [0:0] in_c0_exe2794266_0,
    input wire [31:0] in_c0_exe2894367_0,
    input wire [31:0] in_c0_exe291746_0,
    input wire [31:0] in_c0_exe2994468_0,
    input wire [31:0] in_c0_exe3094569_0,
    input wire [0:0] in_c0_exe3194670_0,
    input wire [63:0] in_c0_exe3394871_0,
    input wire [63:0] in_c0_exe3494972_0,
    input wire [31:0] in_c0_exe3595073_0,
    input wire [0:0] in_c0_exe3695174_0,
    input wire [31:0] in_c0_exe3795275_0,
    input wire [31:0] in_c0_exe3895376_0,
    input wire [31:0] in_c0_exe391847_0,
    input wire [0:0] in_c0_exe3995477_0,
    input wire [0:0] in_c0_exe4095578_0,
    input wire [31:0] in_c0_exe4195679_0,
    input wire [0:0] in_c0_exe4295780_0,
    input wire [0:0] in_c0_exe4395881_0,
    input wire [31:0] in_c0_exe4495982_0,
    input wire [0:0] in_c0_exe4596083_0,
    input wire [0:0] in_c0_exe4696184_0,
    input wire [0:0] in_c0_exe4796285_0,
    input wire [63:0] in_c0_exe4896386_0,
    input wire [63:0] in_c0_exe4996487_0,
    input wire [31:0] in_c0_exe5096588_0,
    input wire [0:0] in_c0_exe5196689_0,
    input wire [0:0] in_c0_exe592048_0,
    input wire [0:0] in_c0_exe692149_0,
    input wire [0:0] in_c0_exe892350_0,
    input wire [31:0] in_c1_exe198390_0,
    input wire [63:0] in_filter_bias,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_stride,
    input wire [0:0] in_valid_in_0,
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
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_conv2d3x3_B12_stall_region_out_add41_2;
    wire [63:0] bb_conv2d3x3_B12_stall_region_out_c0_exe1092551;
    wire [63:0] bb_conv2d3x3_B12_stall_region_out_c0_exe1392852;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe1492953;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe1593054;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe1693155;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe1793256;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe1893357;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe1991;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe1993458;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe2093559;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe2193660;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe2293761;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe2393862;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe2493963;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe2594064;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe2694165;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe2794266;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe2894367;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe3094569;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe3194670;
    wire [63:0] bb_conv2d3x3_B12_stall_region_out_c0_exe3394871;
    wire [63:0] bb_conv2d3x3_B12_stall_region_out_c0_exe3494972;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe3595073;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe3695174;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe3795275;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe3895376;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe391847;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe3995477;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe4095578;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe4195679;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe4295780;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe4395881;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe4495982;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe4596083;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe4696184;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe4796285;
    wire [63:0] bb_conv2d3x3_B12_stall_region_out_c0_exe4896386;
    wire [63:0] bb_conv2d3x3_B12_stall_region_out_c0_exe4996487;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c0_exe5096588;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe5196689;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe592048;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe692149;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_c0_exe892350;
    wire [31:0] bb_conv2d3x3_B12_stall_region_out_c1_exe198390;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_stall_out;
    wire [0:0] bb_conv2d3x3_B12_stall_region_out_valid_out;
    wire [31:0] conv2d3x3_B12_branch_out_add41_2;
    wire [63:0] conv2d3x3_B12_branch_out_c0_exe1092551;
    wire [63:0] conv2d3x3_B12_branch_out_c0_exe1392852;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe1492953;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe1593054;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe1693155;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe1793256;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe1893357;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe1991;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe1993458;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe2093559;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe2193660;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe2293761;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe2393862;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe2493963;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe2594064;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe2694165;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe2794266;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe2894367;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe3094569;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe3194670;
    wire [63:0] conv2d3x3_B12_branch_out_c0_exe3394871;
    wire [63:0] conv2d3x3_B12_branch_out_c0_exe3494972;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe3595073;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe3695174;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe3795275;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe3895376;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe391847;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe3995477;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe4095578;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe4195679;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe4295780;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe4395881;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe4495982;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe4596083;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe4696184;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe4796285;
    wire [63:0] conv2d3x3_B12_branch_out_c0_exe4896386;
    wire [63:0] conv2d3x3_B12_branch_out_c0_exe4996487;
    wire [31:0] conv2d3x3_B12_branch_out_c0_exe5096588;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe5196689;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe592048;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe692149;
    wire [0:0] conv2d3x3_B12_branch_out_c0_exe892350;
    wire [31:0] conv2d3x3_B12_branch_out_c1_exe198390;
    wire [0:0] conv2d3x3_B12_branch_out_stall_out;
    wire [0:0] conv2d3x3_B12_branch_out_valid_out_0;
    wire [63:0] conv2d3x3_B12_merge_out_c0_exe1092551;
    wire [63:0] conv2d3x3_B12_merge_out_c0_exe1392852;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe1492953;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe1593054;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe1693155;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe1793256;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe1893357;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe1993458;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe2093559;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe2193660;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe2293761;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe2393862;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe2493963;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe2594064;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe2694165;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe2794266;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe2894367;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe291746;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe2994468;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe3094569;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe3194670;
    wire [63:0] conv2d3x3_B12_merge_out_c0_exe3394871;
    wire [63:0] conv2d3x3_B12_merge_out_c0_exe3494972;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe3595073;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe3695174;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe3795275;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe3895376;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe391847;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe3995477;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe4095578;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe4195679;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe4295780;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe4395881;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe4495982;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe4596083;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe4696184;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe4796285;
    wire [63:0] conv2d3x3_B12_merge_out_c0_exe4896386;
    wire [63:0] conv2d3x3_B12_merge_out_c0_exe4996487;
    wire [31:0] conv2d3x3_B12_merge_out_c0_exe5096588;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe5196689;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe592048;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe692149;
    wire [0:0] conv2d3x3_B12_merge_out_c0_exe892350;
    wire [31:0] conv2d3x3_B12_merge_out_c1_exe198390;
    wire [0:0] conv2d3x3_B12_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B12_merge_out_valid_out;


    // conv2d3x3_B12_merge(BLACKBOX,4)
    conv2d3x3_B12_merge theconv2d3x3_B12_merge (
        .in_c0_exe1092551_0(in_c0_exe1092551_0),
        .in_c0_exe1392852_0(in_c0_exe1392852_0),
        .in_c0_exe1492953_0(in_c0_exe1492953_0),
        .in_c0_exe1593054_0(in_c0_exe1593054_0),
        .in_c0_exe1693155_0(in_c0_exe1693155_0),
        .in_c0_exe1793256_0(in_c0_exe1793256_0),
        .in_c0_exe1893357_0(in_c0_exe1893357_0),
        .in_c0_exe1993458_0(in_c0_exe1993458_0),
        .in_c0_exe2093559_0(in_c0_exe2093559_0),
        .in_c0_exe2193660_0(in_c0_exe2193660_0),
        .in_c0_exe2293761_0(in_c0_exe2293761_0),
        .in_c0_exe2393862_0(in_c0_exe2393862_0),
        .in_c0_exe2493963_0(in_c0_exe2493963_0),
        .in_c0_exe2594064_0(in_c0_exe2594064_0),
        .in_c0_exe2694165_0(in_c0_exe2694165_0),
        .in_c0_exe2794266_0(in_c0_exe2794266_0),
        .in_c0_exe2894367_0(in_c0_exe2894367_0),
        .in_c0_exe291746_0(in_c0_exe291746_0),
        .in_c0_exe2994468_0(in_c0_exe2994468_0),
        .in_c0_exe3094569_0(in_c0_exe3094569_0),
        .in_c0_exe3194670_0(in_c0_exe3194670_0),
        .in_c0_exe3394871_0(in_c0_exe3394871_0),
        .in_c0_exe3494972_0(in_c0_exe3494972_0),
        .in_c0_exe3595073_0(in_c0_exe3595073_0),
        .in_c0_exe3695174_0(in_c0_exe3695174_0),
        .in_c0_exe3795275_0(in_c0_exe3795275_0),
        .in_c0_exe3895376_0(in_c0_exe3895376_0),
        .in_c0_exe391847_0(in_c0_exe391847_0),
        .in_c0_exe3995477_0(in_c0_exe3995477_0),
        .in_c0_exe4095578_0(in_c0_exe4095578_0),
        .in_c0_exe4195679_0(in_c0_exe4195679_0),
        .in_c0_exe4295780_0(in_c0_exe4295780_0),
        .in_c0_exe4395881_0(in_c0_exe4395881_0),
        .in_c0_exe4495982_0(in_c0_exe4495982_0),
        .in_c0_exe4596083_0(in_c0_exe4596083_0),
        .in_c0_exe4696184_0(in_c0_exe4696184_0),
        .in_c0_exe4796285_0(in_c0_exe4796285_0),
        .in_c0_exe4896386_0(in_c0_exe4896386_0),
        .in_c0_exe4996487_0(in_c0_exe4996487_0),
        .in_c0_exe5096588_0(in_c0_exe5096588_0),
        .in_c0_exe5196689_0(in_c0_exe5196689_0),
        .in_c0_exe592048_0(in_c0_exe592048_0),
        .in_c0_exe692149_0(in_c0_exe692149_0),
        .in_c0_exe892350_0(in_c0_exe892350_0),
        .in_c1_exe198390_0(in_c1_exe198390_0),
        .in_stall_in(bb_conv2d3x3_B12_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1092551(conv2d3x3_B12_merge_out_c0_exe1092551),
        .out_c0_exe1392852(conv2d3x3_B12_merge_out_c0_exe1392852),
        .out_c0_exe1492953(conv2d3x3_B12_merge_out_c0_exe1492953),
        .out_c0_exe1593054(conv2d3x3_B12_merge_out_c0_exe1593054),
        .out_c0_exe1693155(conv2d3x3_B12_merge_out_c0_exe1693155),
        .out_c0_exe1793256(conv2d3x3_B12_merge_out_c0_exe1793256),
        .out_c0_exe1893357(conv2d3x3_B12_merge_out_c0_exe1893357),
        .out_c0_exe1993458(conv2d3x3_B12_merge_out_c0_exe1993458),
        .out_c0_exe2093559(conv2d3x3_B12_merge_out_c0_exe2093559),
        .out_c0_exe2193660(conv2d3x3_B12_merge_out_c0_exe2193660),
        .out_c0_exe2293761(conv2d3x3_B12_merge_out_c0_exe2293761),
        .out_c0_exe2393862(conv2d3x3_B12_merge_out_c0_exe2393862),
        .out_c0_exe2493963(conv2d3x3_B12_merge_out_c0_exe2493963),
        .out_c0_exe2594064(conv2d3x3_B12_merge_out_c0_exe2594064),
        .out_c0_exe2694165(conv2d3x3_B12_merge_out_c0_exe2694165),
        .out_c0_exe2794266(conv2d3x3_B12_merge_out_c0_exe2794266),
        .out_c0_exe2894367(conv2d3x3_B12_merge_out_c0_exe2894367),
        .out_c0_exe291746(conv2d3x3_B12_merge_out_c0_exe291746),
        .out_c0_exe2994468(conv2d3x3_B12_merge_out_c0_exe2994468),
        .out_c0_exe3094569(conv2d3x3_B12_merge_out_c0_exe3094569),
        .out_c0_exe3194670(conv2d3x3_B12_merge_out_c0_exe3194670),
        .out_c0_exe3394871(conv2d3x3_B12_merge_out_c0_exe3394871),
        .out_c0_exe3494972(conv2d3x3_B12_merge_out_c0_exe3494972),
        .out_c0_exe3595073(conv2d3x3_B12_merge_out_c0_exe3595073),
        .out_c0_exe3695174(conv2d3x3_B12_merge_out_c0_exe3695174),
        .out_c0_exe3795275(conv2d3x3_B12_merge_out_c0_exe3795275),
        .out_c0_exe3895376(conv2d3x3_B12_merge_out_c0_exe3895376),
        .out_c0_exe391847(conv2d3x3_B12_merge_out_c0_exe391847),
        .out_c0_exe3995477(conv2d3x3_B12_merge_out_c0_exe3995477),
        .out_c0_exe4095578(conv2d3x3_B12_merge_out_c0_exe4095578),
        .out_c0_exe4195679(conv2d3x3_B12_merge_out_c0_exe4195679),
        .out_c0_exe4295780(conv2d3x3_B12_merge_out_c0_exe4295780),
        .out_c0_exe4395881(conv2d3x3_B12_merge_out_c0_exe4395881),
        .out_c0_exe4495982(conv2d3x3_B12_merge_out_c0_exe4495982),
        .out_c0_exe4596083(conv2d3x3_B12_merge_out_c0_exe4596083),
        .out_c0_exe4696184(conv2d3x3_B12_merge_out_c0_exe4696184),
        .out_c0_exe4796285(conv2d3x3_B12_merge_out_c0_exe4796285),
        .out_c0_exe4896386(conv2d3x3_B12_merge_out_c0_exe4896386),
        .out_c0_exe4996487(conv2d3x3_B12_merge_out_c0_exe4996487),
        .out_c0_exe5096588(conv2d3x3_B12_merge_out_c0_exe5096588),
        .out_c0_exe5196689(conv2d3x3_B12_merge_out_c0_exe5196689),
        .out_c0_exe592048(conv2d3x3_B12_merge_out_c0_exe592048),
        .out_c0_exe692149(conv2d3x3_B12_merge_out_c0_exe692149),
        .out_c0_exe892350(conv2d3x3_B12_merge_out_c0_exe892350),
        .out_c1_exe198390(conv2d3x3_B12_merge_out_c1_exe198390),
        .out_stall_out_0(conv2d3x3_B12_merge_out_stall_out_0),
        .out_valid_out(conv2d3x3_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B12_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B12_stall_region thebb_conv2d3x3_B12_stall_region (
        .in_c0_exe1092551(conv2d3x3_B12_merge_out_c0_exe1092551),
        .in_c0_exe1392852(conv2d3x3_B12_merge_out_c0_exe1392852),
        .in_c0_exe1492953(conv2d3x3_B12_merge_out_c0_exe1492953),
        .in_c0_exe1593054(conv2d3x3_B12_merge_out_c0_exe1593054),
        .in_c0_exe1693155(conv2d3x3_B12_merge_out_c0_exe1693155),
        .in_c0_exe1793256(conv2d3x3_B12_merge_out_c0_exe1793256),
        .in_c0_exe1893357(conv2d3x3_B12_merge_out_c0_exe1893357),
        .in_c0_exe1993458(conv2d3x3_B12_merge_out_c0_exe1993458),
        .in_c0_exe2093559(conv2d3x3_B12_merge_out_c0_exe2093559),
        .in_c0_exe2193660(conv2d3x3_B12_merge_out_c0_exe2193660),
        .in_c0_exe2293761(conv2d3x3_B12_merge_out_c0_exe2293761),
        .in_c0_exe2393862(conv2d3x3_B12_merge_out_c0_exe2393862),
        .in_c0_exe2493963(conv2d3x3_B12_merge_out_c0_exe2493963),
        .in_c0_exe2594064(conv2d3x3_B12_merge_out_c0_exe2594064),
        .in_c0_exe2694165(conv2d3x3_B12_merge_out_c0_exe2694165),
        .in_c0_exe2794266(conv2d3x3_B12_merge_out_c0_exe2794266),
        .in_c0_exe2894367(conv2d3x3_B12_merge_out_c0_exe2894367),
        .in_c0_exe291746(conv2d3x3_B12_merge_out_c0_exe291746),
        .in_c0_exe2994468(conv2d3x3_B12_merge_out_c0_exe2994468),
        .in_c0_exe3094569(conv2d3x3_B12_merge_out_c0_exe3094569),
        .in_c0_exe3194670(conv2d3x3_B12_merge_out_c0_exe3194670),
        .in_c0_exe3394871(conv2d3x3_B12_merge_out_c0_exe3394871),
        .in_c0_exe3494972(conv2d3x3_B12_merge_out_c0_exe3494972),
        .in_c0_exe3595073(conv2d3x3_B12_merge_out_c0_exe3595073),
        .in_c0_exe3695174(conv2d3x3_B12_merge_out_c0_exe3695174),
        .in_c0_exe3795275(conv2d3x3_B12_merge_out_c0_exe3795275),
        .in_c0_exe3895376(conv2d3x3_B12_merge_out_c0_exe3895376),
        .in_c0_exe391847(conv2d3x3_B12_merge_out_c0_exe391847),
        .in_c0_exe3995477(conv2d3x3_B12_merge_out_c0_exe3995477),
        .in_c0_exe4095578(conv2d3x3_B12_merge_out_c0_exe4095578),
        .in_c0_exe4195679(conv2d3x3_B12_merge_out_c0_exe4195679),
        .in_c0_exe4295780(conv2d3x3_B12_merge_out_c0_exe4295780),
        .in_c0_exe4395881(conv2d3x3_B12_merge_out_c0_exe4395881),
        .in_c0_exe4495982(conv2d3x3_B12_merge_out_c0_exe4495982),
        .in_c0_exe4596083(conv2d3x3_B12_merge_out_c0_exe4596083),
        .in_c0_exe4696184(conv2d3x3_B12_merge_out_c0_exe4696184),
        .in_c0_exe4796285(conv2d3x3_B12_merge_out_c0_exe4796285),
        .in_c0_exe4896386(conv2d3x3_B12_merge_out_c0_exe4896386),
        .in_c0_exe4996487(conv2d3x3_B12_merge_out_c0_exe4996487),
        .in_c0_exe5096588(conv2d3x3_B12_merge_out_c0_exe5096588),
        .in_c0_exe5196689(conv2d3x3_B12_merge_out_c0_exe5196689),
        .in_c0_exe592048(conv2d3x3_B12_merge_out_c0_exe592048),
        .in_c0_exe692149(conv2d3x3_B12_merge_out_c0_exe692149),
        .in_c0_exe892350(conv2d3x3_B12_merge_out_c0_exe892350),
        .in_c1_exe198390(conv2d3x3_B12_merge_out_c1_exe198390),
        .in_input_size(in_input_size),
        .in_stall_in(conv2d3x3_B12_branch_out_stall_out),
        .in_valid_in(conv2d3x3_B12_merge_out_valid_out),
        .out_add41_2(bb_conv2d3x3_B12_stall_region_out_add41_2),
        .out_c0_exe1092551(bb_conv2d3x3_B12_stall_region_out_c0_exe1092551),
        .out_c0_exe1392852(bb_conv2d3x3_B12_stall_region_out_c0_exe1392852),
        .out_c0_exe1492953(bb_conv2d3x3_B12_stall_region_out_c0_exe1492953),
        .out_c0_exe1593054(bb_conv2d3x3_B12_stall_region_out_c0_exe1593054),
        .out_c0_exe1693155(bb_conv2d3x3_B12_stall_region_out_c0_exe1693155),
        .out_c0_exe1793256(bb_conv2d3x3_B12_stall_region_out_c0_exe1793256),
        .out_c0_exe1893357(bb_conv2d3x3_B12_stall_region_out_c0_exe1893357),
        .out_c0_exe1991(bb_conv2d3x3_B12_stall_region_out_c0_exe1991),
        .out_c0_exe1993458(bb_conv2d3x3_B12_stall_region_out_c0_exe1993458),
        .out_c0_exe2093559(bb_conv2d3x3_B12_stall_region_out_c0_exe2093559),
        .out_c0_exe2193660(bb_conv2d3x3_B12_stall_region_out_c0_exe2193660),
        .out_c0_exe2293761(bb_conv2d3x3_B12_stall_region_out_c0_exe2293761),
        .out_c0_exe2393862(bb_conv2d3x3_B12_stall_region_out_c0_exe2393862),
        .out_c0_exe2493963(bb_conv2d3x3_B12_stall_region_out_c0_exe2493963),
        .out_c0_exe2594064(bb_conv2d3x3_B12_stall_region_out_c0_exe2594064),
        .out_c0_exe2694165(bb_conv2d3x3_B12_stall_region_out_c0_exe2694165),
        .out_c0_exe2794266(bb_conv2d3x3_B12_stall_region_out_c0_exe2794266),
        .out_c0_exe2894367(bb_conv2d3x3_B12_stall_region_out_c0_exe2894367),
        .out_c0_exe3094569(bb_conv2d3x3_B12_stall_region_out_c0_exe3094569),
        .out_c0_exe3194670(bb_conv2d3x3_B12_stall_region_out_c0_exe3194670),
        .out_c0_exe3394871(bb_conv2d3x3_B12_stall_region_out_c0_exe3394871),
        .out_c0_exe3494972(bb_conv2d3x3_B12_stall_region_out_c0_exe3494972),
        .out_c0_exe3595073(bb_conv2d3x3_B12_stall_region_out_c0_exe3595073),
        .out_c0_exe3695174(bb_conv2d3x3_B12_stall_region_out_c0_exe3695174),
        .out_c0_exe3795275(bb_conv2d3x3_B12_stall_region_out_c0_exe3795275),
        .out_c0_exe3895376(bb_conv2d3x3_B12_stall_region_out_c0_exe3895376),
        .out_c0_exe391847(bb_conv2d3x3_B12_stall_region_out_c0_exe391847),
        .out_c0_exe3995477(bb_conv2d3x3_B12_stall_region_out_c0_exe3995477),
        .out_c0_exe4095578(bb_conv2d3x3_B12_stall_region_out_c0_exe4095578),
        .out_c0_exe4195679(bb_conv2d3x3_B12_stall_region_out_c0_exe4195679),
        .out_c0_exe4295780(bb_conv2d3x3_B12_stall_region_out_c0_exe4295780),
        .out_c0_exe4395881(bb_conv2d3x3_B12_stall_region_out_c0_exe4395881),
        .out_c0_exe4495982(bb_conv2d3x3_B12_stall_region_out_c0_exe4495982),
        .out_c0_exe4596083(bb_conv2d3x3_B12_stall_region_out_c0_exe4596083),
        .out_c0_exe4696184(bb_conv2d3x3_B12_stall_region_out_c0_exe4696184),
        .out_c0_exe4796285(bb_conv2d3x3_B12_stall_region_out_c0_exe4796285),
        .out_c0_exe4896386(bb_conv2d3x3_B12_stall_region_out_c0_exe4896386),
        .out_c0_exe4996487(bb_conv2d3x3_B12_stall_region_out_c0_exe4996487),
        .out_c0_exe5096588(bb_conv2d3x3_B12_stall_region_out_c0_exe5096588),
        .out_c0_exe5196689(bb_conv2d3x3_B12_stall_region_out_c0_exe5196689),
        .out_c0_exe592048(bb_conv2d3x3_B12_stall_region_out_c0_exe592048),
        .out_c0_exe692149(bb_conv2d3x3_B12_stall_region_out_c0_exe692149),
        .out_c0_exe892350(bb_conv2d3x3_B12_stall_region_out_c0_exe892350),
        .out_c1_exe198390(bb_conv2d3x3_B12_stall_region_out_c1_exe198390),
        .out_stall_out(bb_conv2d3x3_B12_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d3x3_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B12_branch(BLACKBOX,3)
    conv2d3x3_B12_branch theconv2d3x3_B12_branch (
        .in_add41_2(bb_conv2d3x3_B12_stall_region_out_add41_2),
        .in_c0_exe1092551(bb_conv2d3x3_B12_stall_region_out_c0_exe1092551),
        .in_c0_exe1392852(bb_conv2d3x3_B12_stall_region_out_c0_exe1392852),
        .in_c0_exe1492953(bb_conv2d3x3_B12_stall_region_out_c0_exe1492953),
        .in_c0_exe1593054(bb_conv2d3x3_B12_stall_region_out_c0_exe1593054),
        .in_c0_exe1693155(bb_conv2d3x3_B12_stall_region_out_c0_exe1693155),
        .in_c0_exe1793256(bb_conv2d3x3_B12_stall_region_out_c0_exe1793256),
        .in_c0_exe1893357(bb_conv2d3x3_B12_stall_region_out_c0_exe1893357),
        .in_c0_exe1991(bb_conv2d3x3_B12_stall_region_out_c0_exe1991),
        .in_c0_exe1993458(bb_conv2d3x3_B12_stall_region_out_c0_exe1993458),
        .in_c0_exe2093559(bb_conv2d3x3_B12_stall_region_out_c0_exe2093559),
        .in_c0_exe2193660(bb_conv2d3x3_B12_stall_region_out_c0_exe2193660),
        .in_c0_exe2293761(bb_conv2d3x3_B12_stall_region_out_c0_exe2293761),
        .in_c0_exe2393862(bb_conv2d3x3_B12_stall_region_out_c0_exe2393862),
        .in_c0_exe2493963(bb_conv2d3x3_B12_stall_region_out_c0_exe2493963),
        .in_c0_exe2594064(bb_conv2d3x3_B12_stall_region_out_c0_exe2594064),
        .in_c0_exe2694165(bb_conv2d3x3_B12_stall_region_out_c0_exe2694165),
        .in_c0_exe2794266(bb_conv2d3x3_B12_stall_region_out_c0_exe2794266),
        .in_c0_exe2894367(bb_conv2d3x3_B12_stall_region_out_c0_exe2894367),
        .in_c0_exe3094569(bb_conv2d3x3_B12_stall_region_out_c0_exe3094569),
        .in_c0_exe3194670(bb_conv2d3x3_B12_stall_region_out_c0_exe3194670),
        .in_c0_exe3394871(bb_conv2d3x3_B12_stall_region_out_c0_exe3394871),
        .in_c0_exe3494972(bb_conv2d3x3_B12_stall_region_out_c0_exe3494972),
        .in_c0_exe3595073(bb_conv2d3x3_B12_stall_region_out_c0_exe3595073),
        .in_c0_exe3695174(bb_conv2d3x3_B12_stall_region_out_c0_exe3695174),
        .in_c0_exe3795275(bb_conv2d3x3_B12_stall_region_out_c0_exe3795275),
        .in_c0_exe3895376(bb_conv2d3x3_B12_stall_region_out_c0_exe3895376),
        .in_c0_exe391847(bb_conv2d3x3_B12_stall_region_out_c0_exe391847),
        .in_c0_exe3995477(bb_conv2d3x3_B12_stall_region_out_c0_exe3995477),
        .in_c0_exe4095578(bb_conv2d3x3_B12_stall_region_out_c0_exe4095578),
        .in_c0_exe4195679(bb_conv2d3x3_B12_stall_region_out_c0_exe4195679),
        .in_c0_exe4295780(bb_conv2d3x3_B12_stall_region_out_c0_exe4295780),
        .in_c0_exe4395881(bb_conv2d3x3_B12_stall_region_out_c0_exe4395881),
        .in_c0_exe4495982(bb_conv2d3x3_B12_stall_region_out_c0_exe4495982),
        .in_c0_exe4596083(bb_conv2d3x3_B12_stall_region_out_c0_exe4596083),
        .in_c0_exe4696184(bb_conv2d3x3_B12_stall_region_out_c0_exe4696184),
        .in_c0_exe4796285(bb_conv2d3x3_B12_stall_region_out_c0_exe4796285),
        .in_c0_exe4896386(bb_conv2d3x3_B12_stall_region_out_c0_exe4896386),
        .in_c0_exe4996487(bb_conv2d3x3_B12_stall_region_out_c0_exe4996487),
        .in_c0_exe5096588(bb_conv2d3x3_B12_stall_region_out_c0_exe5096588),
        .in_c0_exe5196689(bb_conv2d3x3_B12_stall_region_out_c0_exe5196689),
        .in_c0_exe592048(bb_conv2d3x3_B12_stall_region_out_c0_exe592048),
        .in_c0_exe692149(bb_conv2d3x3_B12_stall_region_out_c0_exe692149),
        .in_c0_exe892350(bb_conv2d3x3_B12_stall_region_out_c0_exe892350),
        .in_c1_exe198390(bb_conv2d3x3_B12_stall_region_out_c1_exe198390),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d3x3_B12_stall_region_out_valid_out),
        .out_add41_2(conv2d3x3_B12_branch_out_add41_2),
        .out_c0_exe1092551(conv2d3x3_B12_branch_out_c0_exe1092551),
        .out_c0_exe1392852(conv2d3x3_B12_branch_out_c0_exe1392852),
        .out_c0_exe1492953(conv2d3x3_B12_branch_out_c0_exe1492953),
        .out_c0_exe1593054(conv2d3x3_B12_branch_out_c0_exe1593054),
        .out_c0_exe1693155(conv2d3x3_B12_branch_out_c0_exe1693155),
        .out_c0_exe1793256(conv2d3x3_B12_branch_out_c0_exe1793256),
        .out_c0_exe1893357(conv2d3x3_B12_branch_out_c0_exe1893357),
        .out_c0_exe1991(conv2d3x3_B12_branch_out_c0_exe1991),
        .out_c0_exe1993458(conv2d3x3_B12_branch_out_c0_exe1993458),
        .out_c0_exe2093559(conv2d3x3_B12_branch_out_c0_exe2093559),
        .out_c0_exe2193660(conv2d3x3_B12_branch_out_c0_exe2193660),
        .out_c0_exe2293761(conv2d3x3_B12_branch_out_c0_exe2293761),
        .out_c0_exe2393862(conv2d3x3_B12_branch_out_c0_exe2393862),
        .out_c0_exe2493963(conv2d3x3_B12_branch_out_c0_exe2493963),
        .out_c0_exe2594064(conv2d3x3_B12_branch_out_c0_exe2594064),
        .out_c0_exe2694165(conv2d3x3_B12_branch_out_c0_exe2694165),
        .out_c0_exe2794266(conv2d3x3_B12_branch_out_c0_exe2794266),
        .out_c0_exe2894367(conv2d3x3_B12_branch_out_c0_exe2894367),
        .out_c0_exe3094569(conv2d3x3_B12_branch_out_c0_exe3094569),
        .out_c0_exe3194670(conv2d3x3_B12_branch_out_c0_exe3194670),
        .out_c0_exe3394871(conv2d3x3_B12_branch_out_c0_exe3394871),
        .out_c0_exe3494972(conv2d3x3_B12_branch_out_c0_exe3494972),
        .out_c0_exe3595073(conv2d3x3_B12_branch_out_c0_exe3595073),
        .out_c0_exe3695174(conv2d3x3_B12_branch_out_c0_exe3695174),
        .out_c0_exe3795275(conv2d3x3_B12_branch_out_c0_exe3795275),
        .out_c0_exe3895376(conv2d3x3_B12_branch_out_c0_exe3895376),
        .out_c0_exe391847(conv2d3x3_B12_branch_out_c0_exe391847),
        .out_c0_exe3995477(conv2d3x3_B12_branch_out_c0_exe3995477),
        .out_c0_exe4095578(conv2d3x3_B12_branch_out_c0_exe4095578),
        .out_c0_exe4195679(conv2d3x3_B12_branch_out_c0_exe4195679),
        .out_c0_exe4295780(conv2d3x3_B12_branch_out_c0_exe4295780),
        .out_c0_exe4395881(conv2d3x3_B12_branch_out_c0_exe4395881),
        .out_c0_exe4495982(conv2d3x3_B12_branch_out_c0_exe4495982),
        .out_c0_exe4596083(conv2d3x3_B12_branch_out_c0_exe4596083),
        .out_c0_exe4696184(conv2d3x3_B12_branch_out_c0_exe4696184),
        .out_c0_exe4796285(conv2d3x3_B12_branch_out_c0_exe4796285),
        .out_c0_exe4896386(conv2d3x3_B12_branch_out_c0_exe4896386),
        .out_c0_exe4996487(conv2d3x3_B12_branch_out_c0_exe4996487),
        .out_c0_exe5096588(conv2d3x3_B12_branch_out_c0_exe5096588),
        .out_c0_exe5196689(conv2d3x3_B12_branch_out_c0_exe5196689),
        .out_c0_exe592048(conv2d3x3_B12_branch_out_c0_exe592048),
        .out_c0_exe692149(conv2d3x3_B12_branch_out_c0_exe692149),
        .out_c0_exe892350(conv2d3x3_B12_branch_out_c0_exe892350),
        .out_c1_exe198390(conv2d3x3_B12_branch_out_c1_exe198390),
        .out_stall_out(conv2d3x3_B12_branch_out_stall_out),
        .out_valid_out_0(conv2d3x3_B12_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add41_2(GPOUT,59)
    assign out_add41_2 = conv2d3x3_B12_branch_out_add41_2;

    // out_c0_exe1092551(GPOUT,60)
    assign out_c0_exe1092551 = conv2d3x3_B12_branch_out_c0_exe1092551;

    // out_c0_exe1392852(GPOUT,61)
    assign out_c0_exe1392852 = conv2d3x3_B12_branch_out_c0_exe1392852;

    // out_c0_exe1492953(GPOUT,62)
    assign out_c0_exe1492953 = conv2d3x3_B12_branch_out_c0_exe1492953;

    // out_c0_exe1593054(GPOUT,63)
    assign out_c0_exe1593054 = conv2d3x3_B12_branch_out_c0_exe1593054;

    // out_c0_exe1693155(GPOUT,64)
    assign out_c0_exe1693155 = conv2d3x3_B12_branch_out_c0_exe1693155;

    // out_c0_exe1793256(GPOUT,65)
    assign out_c0_exe1793256 = conv2d3x3_B12_branch_out_c0_exe1793256;

    // out_c0_exe1893357(GPOUT,66)
    assign out_c0_exe1893357 = conv2d3x3_B12_branch_out_c0_exe1893357;

    // out_c0_exe1991(GPOUT,67)
    assign out_c0_exe1991 = conv2d3x3_B12_branch_out_c0_exe1991;

    // out_c0_exe1993458(GPOUT,68)
    assign out_c0_exe1993458 = conv2d3x3_B12_branch_out_c0_exe1993458;

    // out_c0_exe2093559(GPOUT,69)
    assign out_c0_exe2093559 = conv2d3x3_B12_branch_out_c0_exe2093559;

    // out_c0_exe2193660(GPOUT,70)
    assign out_c0_exe2193660 = conv2d3x3_B12_branch_out_c0_exe2193660;

    // out_c0_exe2293761(GPOUT,71)
    assign out_c0_exe2293761 = conv2d3x3_B12_branch_out_c0_exe2293761;

    // out_c0_exe2393862(GPOUT,72)
    assign out_c0_exe2393862 = conv2d3x3_B12_branch_out_c0_exe2393862;

    // out_c0_exe2493963(GPOUT,73)
    assign out_c0_exe2493963 = conv2d3x3_B12_branch_out_c0_exe2493963;

    // out_c0_exe2594064(GPOUT,74)
    assign out_c0_exe2594064 = conv2d3x3_B12_branch_out_c0_exe2594064;

    // out_c0_exe2694165(GPOUT,75)
    assign out_c0_exe2694165 = conv2d3x3_B12_branch_out_c0_exe2694165;

    // out_c0_exe2794266(GPOUT,76)
    assign out_c0_exe2794266 = conv2d3x3_B12_branch_out_c0_exe2794266;

    // out_c0_exe2894367(GPOUT,77)
    assign out_c0_exe2894367 = conv2d3x3_B12_branch_out_c0_exe2894367;

    // out_c0_exe3094569(GPOUT,78)
    assign out_c0_exe3094569 = conv2d3x3_B12_branch_out_c0_exe3094569;

    // out_c0_exe3194670(GPOUT,79)
    assign out_c0_exe3194670 = conv2d3x3_B12_branch_out_c0_exe3194670;

    // out_c0_exe3394871(GPOUT,80)
    assign out_c0_exe3394871 = conv2d3x3_B12_branch_out_c0_exe3394871;

    // out_c0_exe3494972(GPOUT,81)
    assign out_c0_exe3494972 = conv2d3x3_B12_branch_out_c0_exe3494972;

    // out_c0_exe3595073(GPOUT,82)
    assign out_c0_exe3595073 = conv2d3x3_B12_branch_out_c0_exe3595073;

    // out_c0_exe3695174(GPOUT,83)
    assign out_c0_exe3695174 = conv2d3x3_B12_branch_out_c0_exe3695174;

    // out_c0_exe3795275(GPOUT,84)
    assign out_c0_exe3795275 = conv2d3x3_B12_branch_out_c0_exe3795275;

    // out_c0_exe3895376(GPOUT,85)
    assign out_c0_exe3895376 = conv2d3x3_B12_branch_out_c0_exe3895376;

    // out_c0_exe391847(GPOUT,86)
    assign out_c0_exe391847 = conv2d3x3_B12_branch_out_c0_exe391847;

    // out_c0_exe3995477(GPOUT,87)
    assign out_c0_exe3995477 = conv2d3x3_B12_branch_out_c0_exe3995477;

    // out_c0_exe4095578(GPOUT,88)
    assign out_c0_exe4095578 = conv2d3x3_B12_branch_out_c0_exe4095578;

    // out_c0_exe4195679(GPOUT,89)
    assign out_c0_exe4195679 = conv2d3x3_B12_branch_out_c0_exe4195679;

    // out_c0_exe4295780(GPOUT,90)
    assign out_c0_exe4295780 = conv2d3x3_B12_branch_out_c0_exe4295780;

    // out_c0_exe4395881(GPOUT,91)
    assign out_c0_exe4395881 = conv2d3x3_B12_branch_out_c0_exe4395881;

    // out_c0_exe4495982(GPOUT,92)
    assign out_c0_exe4495982 = conv2d3x3_B12_branch_out_c0_exe4495982;

    // out_c0_exe4596083(GPOUT,93)
    assign out_c0_exe4596083 = conv2d3x3_B12_branch_out_c0_exe4596083;

    // out_c0_exe4696184(GPOUT,94)
    assign out_c0_exe4696184 = conv2d3x3_B12_branch_out_c0_exe4696184;

    // out_c0_exe4796285(GPOUT,95)
    assign out_c0_exe4796285 = conv2d3x3_B12_branch_out_c0_exe4796285;

    // out_c0_exe4896386(GPOUT,96)
    assign out_c0_exe4896386 = conv2d3x3_B12_branch_out_c0_exe4896386;

    // out_c0_exe4996487(GPOUT,97)
    assign out_c0_exe4996487 = conv2d3x3_B12_branch_out_c0_exe4996487;

    // out_c0_exe5096588(GPOUT,98)
    assign out_c0_exe5096588 = conv2d3x3_B12_branch_out_c0_exe5096588;

    // out_c0_exe5196689(GPOUT,99)
    assign out_c0_exe5196689 = conv2d3x3_B12_branch_out_c0_exe5196689;

    // out_c0_exe592048(GPOUT,100)
    assign out_c0_exe592048 = conv2d3x3_B12_branch_out_c0_exe592048;

    // out_c0_exe692149(GPOUT,101)
    assign out_c0_exe692149 = conv2d3x3_B12_branch_out_c0_exe692149;

    // out_c0_exe892350(GPOUT,102)
    assign out_c0_exe892350 = conv2d3x3_B12_branch_out_c0_exe892350;

    // out_c1_exe198390(GPOUT,103)
    assign out_c1_exe198390 = conv2d3x3_B12_branch_out_c1_exe198390;

    // out_stall_out_0(GPOUT,104)
    assign out_stall_out_0 = conv2d3x3_B12_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,105)
    assign out_valid_out_0 = conv2d3x3_B12_branch_out_valid_out_0;

endmodule
