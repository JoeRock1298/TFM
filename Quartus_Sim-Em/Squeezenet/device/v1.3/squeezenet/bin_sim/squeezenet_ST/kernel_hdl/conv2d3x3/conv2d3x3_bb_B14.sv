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

// SystemVerilog created from conv2d3x3_bb_B14
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B14 (
    input wire [63:0] in_c0_exe11114897_0,
    input wire [63:0] in_c0_exe12114998_0,
    input wire [31:0] in_c0_exe131150100_0,
    input wire [31:0] in_c0_exe141151101_0,
    input wire [0:0] in_c0_exe151152105_0,
    input wire [0:0] in_c0_exe161153106_0,
    input wire [31:0] in_c0_exe171154107_0,
    input wire [31:0] in_c0_exe181155109_0,
    input wire [31:0] in_c0_exe191156110_0,
    input wire [0:0] in_c0_exe201157111_0,
    input wire [0:0] in_c0_exe211158112_0,
    input wire [31:0] in_c0_exe221159113_0,
    input wire [0:0] in_c0_exe231160114_0,
    input wire [0:0] in_c0_exe241161115_0,
    input wire [31:0] in_c0_exe251162116_0,
    input wire [0:0] in_c0_exe261163119_0,
    input wire [0:0] in_c0_exe271164120_0,
    input wire [31:0] in_c0_exe281165121_0,
    input wire [31:0] in_c0_exe291166122_0,
    input wire [0:0] in_c0_exe301167124_0,
    input wire [0:0] in_c0_exe311168125_0,
    input wire [0:0] in_c0_exe3114091_0,
    input wire [31:0] in_c0_exe321169127_0,
    input wire [31:0] in_c0_exe331170128_0,
    input wire [31:0] in_c0_exe341171129_0,
    input wire [0:0] in_c0_exe351172130_0,
    input wire [63:0] in_c0_exe371174131_0,
    input wire [63:0] in_c0_exe381175132_0,
    input wire [31:0] in_c0_exe391176133_0,
    input wire [0:0] in_c0_exe401177134_0,
    input wire [31:0] in_c0_exe411178135_0,
    input wire [0:0] in_c0_exe4114192_0,
    input wire [31:0] in_c0_exe421179136_0,
    input wire [0:0] in_c0_exe431180137_0,
    input wire [0:0] in_c0_exe441181138_0,
    input wire [31:0] in_c0_exe451182139_0,
    input wire [0:0] in_c0_exe461183140_0,
    input wire [0:0] in_c0_exe471184141_0,
    input wire [31:0] in_c0_exe481185142_0,
    input wire [0:0] in_c0_exe491186143_0,
    input wire [0:0] in_c0_exe501187144_0,
    input wire [0:0] in_c0_exe511188145_0,
    input wire [63:0] in_c0_exe521189146_0,
    input wire [63:0] in_c0_exe53147_0,
    input wire [31:0] in_c0_exe54148_0,
    input wire [0:0] in_c0_exe55149_0,
    input wire [0:0] in_c0_exe6114394_0,
    input wire [63:0] in_c0_exe8114595_0,
    input wire [31:0] in_c1_exe11205151_0,
    input wire [31:0] in_c1_exe2152_0,
    input wire [63:0] in_filter_bias,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_stride,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe11114897,
    output wire [63:0] out_c0_exe12114998,
    output wire [31:0] out_c0_exe131150100,
    output wire [31:0] out_c0_exe141151101,
    output wire [0:0] out_c0_exe151152105,
    output wire [0:0] out_c0_exe161153106,
    output wire [31:0] out_c0_exe171154107,
    output wire [31:0] out_c0_exe181155109,
    output wire [31:0] out_c0_exe191156110,
    output wire [0:0] out_c0_exe201157111,
    output wire [0:0] out_c0_exe211158112,
    output wire [31:0] out_c0_exe221159113,
    output wire [0:0] out_c0_exe231160114,
    output wire [0:0] out_c0_exe241161115,
    output wire [31:0] out_c0_exe251162116,
    output wire [0:0] out_c0_exe261163119,
    output wire [0:0] out_c0_exe271164120,
    output wire [31:0] out_c0_exe281165121,
    output wire [31:0] out_c0_exe291166122,
    output wire [0:0] out_c0_exe301167124,
    output wire [0:0] out_c0_exe311168125,
    output wire [0:0] out_c0_exe3114091,
    output wire [31:0] out_c0_exe321169127,
    output wire [31:0] out_c0_exe331170128,
    output wire [31:0] out_c0_exe341171129,
    output wire [63:0] out_c0_exe371174131,
    output wire [63:0] out_c0_exe381175132,
    output wire [31:0] out_c0_exe391176133,
    output wire [0:0] out_c0_exe401177134,
    output wire [31:0] out_c0_exe411178135,
    output wire [0:0] out_c0_exe4114192,
    output wire [31:0] out_c0_exe421179136,
    output wire [0:0] out_c0_exe431180137,
    output wire [0:0] out_c0_exe441181138,
    output wire [31:0] out_c0_exe451182139,
    output wire [0:0] out_c0_exe461183140,
    output wire [0:0] out_c0_exe471184141,
    output wire [31:0] out_c0_exe481185142,
    output wire [0:0] out_c0_exe491186143,
    output wire [0:0] out_c0_exe501187144,
    output wire [0:0] out_c0_exe511188145,
    output wire [63:0] out_c0_exe521189146,
    output wire [63:0] out_c0_exe53147,
    output wire [31:0] out_c0_exe54148,
    output wire [0:0] out_c0_exe55149,
    output wire [0:0] out_c0_exe6114394,
    output wire [63:0] out_c0_exe8114595,
    output wire [31:0] out_c1_exe11205151,
    output wire [31:0] out_c1_exe2152,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_conv2d3x3_B14_stall_region_out_c0_exe11114897;
    wire [63:0] bb_conv2d3x3_B14_stall_region_out_c0_exe12114998;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe131150100;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe141151101;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe151152105;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe161153106;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe171154107;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe181155109;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe191156110;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe201157111;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe211158112;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe221159113;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe231160114;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe241161115;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe251162116;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe261163119;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe271164120;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe281165121;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe291166122;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe301167124;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe311168125;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe3114091;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe321169127;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe331170128;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe341171129;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe351172130;
    wire [63:0] bb_conv2d3x3_B14_stall_region_out_c0_exe371174131;
    wire [63:0] bb_conv2d3x3_B14_stall_region_out_c0_exe381175132;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe391176133;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe401177134;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe411178135;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe4114192;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe421179136;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe431180137;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe441181138;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe451182139;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe461183140;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe471184141;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe481185142;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe491186143;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe501187144;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe511188145;
    wire [63:0] bb_conv2d3x3_B14_stall_region_out_c0_exe521189146;
    wire [63:0] bb_conv2d3x3_B14_stall_region_out_c0_exe53147;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c0_exe54148;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe55149;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_c0_exe6114394;
    wire [63:0] bb_conv2d3x3_B14_stall_region_out_c0_exe8114595;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c1_exe11205151;
    wire [31:0] bb_conv2d3x3_B14_stall_region_out_c1_exe2152;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_stall_out;
    wire [0:0] bb_conv2d3x3_B14_stall_region_out_valid_out;
    wire [63:0] conv2d3x3_B14_branch_out_c0_exe11114897;
    wire [63:0] conv2d3x3_B14_branch_out_c0_exe12114998;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe131150100;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe141151101;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe151152105;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe161153106;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe171154107;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe181155109;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe191156110;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe201157111;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe211158112;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe221159113;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe231160114;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe241161115;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe251162116;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe261163119;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe271164120;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe281165121;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe291166122;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe301167124;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe311168125;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe3114091;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe321169127;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe331170128;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe341171129;
    wire [63:0] conv2d3x3_B14_branch_out_c0_exe371174131;
    wire [63:0] conv2d3x3_B14_branch_out_c0_exe381175132;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe391176133;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe401177134;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe411178135;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe4114192;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe421179136;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe431180137;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe441181138;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe451182139;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe461183140;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe471184141;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe481185142;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe491186143;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe501187144;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe511188145;
    wire [63:0] conv2d3x3_B14_branch_out_c0_exe521189146;
    wire [63:0] conv2d3x3_B14_branch_out_c0_exe53147;
    wire [31:0] conv2d3x3_B14_branch_out_c0_exe54148;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe55149;
    wire [0:0] conv2d3x3_B14_branch_out_c0_exe6114394;
    wire [63:0] conv2d3x3_B14_branch_out_c0_exe8114595;
    wire [31:0] conv2d3x3_B14_branch_out_c1_exe11205151;
    wire [31:0] conv2d3x3_B14_branch_out_c1_exe2152;
    wire [0:0] conv2d3x3_B14_branch_out_stall_out;
    wire [0:0] conv2d3x3_B14_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B14_branch_out_valid_out_1;
    wire [63:0] conv2d3x3_B14_merge_out_c0_exe11114897;
    wire [63:0] conv2d3x3_B14_merge_out_c0_exe12114998;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe131150100;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe141151101;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe151152105;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe161153106;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe171154107;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe181155109;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe191156110;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe201157111;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe211158112;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe221159113;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe231160114;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe241161115;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe251162116;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe261163119;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe271164120;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe281165121;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe291166122;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe301167124;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe311168125;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe3114091;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe321169127;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe331170128;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe341171129;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe351172130;
    wire [63:0] conv2d3x3_B14_merge_out_c0_exe371174131;
    wire [63:0] conv2d3x3_B14_merge_out_c0_exe381175132;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe391176133;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe401177134;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe411178135;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe4114192;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe421179136;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe431180137;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe441181138;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe451182139;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe461183140;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe471184141;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe481185142;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe491186143;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe501187144;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe511188145;
    wire [63:0] conv2d3x3_B14_merge_out_c0_exe521189146;
    wire [63:0] conv2d3x3_B14_merge_out_c0_exe53147;
    wire [31:0] conv2d3x3_B14_merge_out_c0_exe54148;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe55149;
    wire [0:0] conv2d3x3_B14_merge_out_c0_exe6114394;
    wire [63:0] conv2d3x3_B14_merge_out_c0_exe8114595;
    wire [31:0] conv2d3x3_B14_merge_out_c1_exe11205151;
    wire [31:0] conv2d3x3_B14_merge_out_c1_exe2152;
    wire [0:0] conv2d3x3_B14_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B14_merge_out_valid_out;


    // conv2d3x3_B14_merge(BLACKBOX,4)
    conv2d3x3_B14_merge theconv2d3x3_B14_merge (
        .in_c0_exe11114897_0(in_c0_exe11114897_0),
        .in_c0_exe12114998_0(in_c0_exe12114998_0),
        .in_c0_exe131150100_0(in_c0_exe131150100_0),
        .in_c0_exe141151101_0(in_c0_exe141151101_0),
        .in_c0_exe151152105_0(in_c0_exe151152105_0),
        .in_c0_exe161153106_0(in_c0_exe161153106_0),
        .in_c0_exe171154107_0(in_c0_exe171154107_0),
        .in_c0_exe181155109_0(in_c0_exe181155109_0),
        .in_c0_exe191156110_0(in_c0_exe191156110_0),
        .in_c0_exe201157111_0(in_c0_exe201157111_0),
        .in_c0_exe211158112_0(in_c0_exe211158112_0),
        .in_c0_exe221159113_0(in_c0_exe221159113_0),
        .in_c0_exe231160114_0(in_c0_exe231160114_0),
        .in_c0_exe241161115_0(in_c0_exe241161115_0),
        .in_c0_exe251162116_0(in_c0_exe251162116_0),
        .in_c0_exe261163119_0(in_c0_exe261163119_0),
        .in_c0_exe271164120_0(in_c0_exe271164120_0),
        .in_c0_exe281165121_0(in_c0_exe281165121_0),
        .in_c0_exe291166122_0(in_c0_exe291166122_0),
        .in_c0_exe301167124_0(in_c0_exe301167124_0),
        .in_c0_exe311168125_0(in_c0_exe311168125_0),
        .in_c0_exe3114091_0(in_c0_exe3114091_0),
        .in_c0_exe321169127_0(in_c0_exe321169127_0),
        .in_c0_exe331170128_0(in_c0_exe331170128_0),
        .in_c0_exe341171129_0(in_c0_exe341171129_0),
        .in_c0_exe351172130_0(in_c0_exe351172130_0),
        .in_c0_exe371174131_0(in_c0_exe371174131_0),
        .in_c0_exe381175132_0(in_c0_exe381175132_0),
        .in_c0_exe391176133_0(in_c0_exe391176133_0),
        .in_c0_exe401177134_0(in_c0_exe401177134_0),
        .in_c0_exe411178135_0(in_c0_exe411178135_0),
        .in_c0_exe4114192_0(in_c0_exe4114192_0),
        .in_c0_exe421179136_0(in_c0_exe421179136_0),
        .in_c0_exe431180137_0(in_c0_exe431180137_0),
        .in_c0_exe441181138_0(in_c0_exe441181138_0),
        .in_c0_exe451182139_0(in_c0_exe451182139_0),
        .in_c0_exe461183140_0(in_c0_exe461183140_0),
        .in_c0_exe471184141_0(in_c0_exe471184141_0),
        .in_c0_exe481185142_0(in_c0_exe481185142_0),
        .in_c0_exe491186143_0(in_c0_exe491186143_0),
        .in_c0_exe501187144_0(in_c0_exe501187144_0),
        .in_c0_exe511188145_0(in_c0_exe511188145_0),
        .in_c0_exe521189146_0(in_c0_exe521189146_0),
        .in_c0_exe53147_0(in_c0_exe53147_0),
        .in_c0_exe54148_0(in_c0_exe54148_0),
        .in_c0_exe55149_0(in_c0_exe55149_0),
        .in_c0_exe6114394_0(in_c0_exe6114394_0),
        .in_c0_exe8114595_0(in_c0_exe8114595_0),
        .in_c1_exe11205151_0(in_c1_exe11205151_0),
        .in_c1_exe2152_0(in_c1_exe2152_0),
        .in_stall_in(bb_conv2d3x3_B14_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe11114897(conv2d3x3_B14_merge_out_c0_exe11114897),
        .out_c0_exe12114998(conv2d3x3_B14_merge_out_c0_exe12114998),
        .out_c0_exe131150100(conv2d3x3_B14_merge_out_c0_exe131150100),
        .out_c0_exe141151101(conv2d3x3_B14_merge_out_c0_exe141151101),
        .out_c0_exe151152105(conv2d3x3_B14_merge_out_c0_exe151152105),
        .out_c0_exe161153106(conv2d3x3_B14_merge_out_c0_exe161153106),
        .out_c0_exe171154107(conv2d3x3_B14_merge_out_c0_exe171154107),
        .out_c0_exe181155109(conv2d3x3_B14_merge_out_c0_exe181155109),
        .out_c0_exe191156110(conv2d3x3_B14_merge_out_c0_exe191156110),
        .out_c0_exe201157111(conv2d3x3_B14_merge_out_c0_exe201157111),
        .out_c0_exe211158112(conv2d3x3_B14_merge_out_c0_exe211158112),
        .out_c0_exe221159113(conv2d3x3_B14_merge_out_c0_exe221159113),
        .out_c0_exe231160114(conv2d3x3_B14_merge_out_c0_exe231160114),
        .out_c0_exe241161115(conv2d3x3_B14_merge_out_c0_exe241161115),
        .out_c0_exe251162116(conv2d3x3_B14_merge_out_c0_exe251162116),
        .out_c0_exe261163119(conv2d3x3_B14_merge_out_c0_exe261163119),
        .out_c0_exe271164120(conv2d3x3_B14_merge_out_c0_exe271164120),
        .out_c0_exe281165121(conv2d3x3_B14_merge_out_c0_exe281165121),
        .out_c0_exe291166122(conv2d3x3_B14_merge_out_c0_exe291166122),
        .out_c0_exe301167124(conv2d3x3_B14_merge_out_c0_exe301167124),
        .out_c0_exe311168125(conv2d3x3_B14_merge_out_c0_exe311168125),
        .out_c0_exe3114091(conv2d3x3_B14_merge_out_c0_exe3114091),
        .out_c0_exe321169127(conv2d3x3_B14_merge_out_c0_exe321169127),
        .out_c0_exe331170128(conv2d3x3_B14_merge_out_c0_exe331170128),
        .out_c0_exe341171129(conv2d3x3_B14_merge_out_c0_exe341171129),
        .out_c0_exe351172130(conv2d3x3_B14_merge_out_c0_exe351172130),
        .out_c0_exe371174131(conv2d3x3_B14_merge_out_c0_exe371174131),
        .out_c0_exe381175132(conv2d3x3_B14_merge_out_c0_exe381175132),
        .out_c0_exe391176133(conv2d3x3_B14_merge_out_c0_exe391176133),
        .out_c0_exe401177134(conv2d3x3_B14_merge_out_c0_exe401177134),
        .out_c0_exe411178135(conv2d3x3_B14_merge_out_c0_exe411178135),
        .out_c0_exe4114192(conv2d3x3_B14_merge_out_c0_exe4114192),
        .out_c0_exe421179136(conv2d3x3_B14_merge_out_c0_exe421179136),
        .out_c0_exe431180137(conv2d3x3_B14_merge_out_c0_exe431180137),
        .out_c0_exe441181138(conv2d3x3_B14_merge_out_c0_exe441181138),
        .out_c0_exe451182139(conv2d3x3_B14_merge_out_c0_exe451182139),
        .out_c0_exe461183140(conv2d3x3_B14_merge_out_c0_exe461183140),
        .out_c0_exe471184141(conv2d3x3_B14_merge_out_c0_exe471184141),
        .out_c0_exe481185142(conv2d3x3_B14_merge_out_c0_exe481185142),
        .out_c0_exe491186143(conv2d3x3_B14_merge_out_c0_exe491186143),
        .out_c0_exe501187144(conv2d3x3_B14_merge_out_c0_exe501187144),
        .out_c0_exe511188145(conv2d3x3_B14_merge_out_c0_exe511188145),
        .out_c0_exe521189146(conv2d3x3_B14_merge_out_c0_exe521189146),
        .out_c0_exe53147(conv2d3x3_B14_merge_out_c0_exe53147),
        .out_c0_exe54148(conv2d3x3_B14_merge_out_c0_exe54148),
        .out_c0_exe55149(conv2d3x3_B14_merge_out_c0_exe55149),
        .out_c0_exe6114394(conv2d3x3_B14_merge_out_c0_exe6114394),
        .out_c0_exe8114595(conv2d3x3_B14_merge_out_c0_exe8114595),
        .out_c1_exe11205151(conv2d3x3_B14_merge_out_c1_exe11205151),
        .out_c1_exe2152(conv2d3x3_B14_merge_out_c1_exe2152),
        .out_stall_out_0(conv2d3x3_B14_merge_out_stall_out_0),
        .out_valid_out(conv2d3x3_B14_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B14_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B14_stall_region thebb_conv2d3x3_B14_stall_region (
        .in_c0_exe11114897(conv2d3x3_B14_merge_out_c0_exe11114897),
        .in_c0_exe12114998(conv2d3x3_B14_merge_out_c0_exe12114998),
        .in_c0_exe131150100(conv2d3x3_B14_merge_out_c0_exe131150100),
        .in_c0_exe141151101(conv2d3x3_B14_merge_out_c0_exe141151101),
        .in_c0_exe151152105(conv2d3x3_B14_merge_out_c0_exe151152105),
        .in_c0_exe161153106(conv2d3x3_B14_merge_out_c0_exe161153106),
        .in_c0_exe171154107(conv2d3x3_B14_merge_out_c0_exe171154107),
        .in_c0_exe181155109(conv2d3x3_B14_merge_out_c0_exe181155109),
        .in_c0_exe191156110(conv2d3x3_B14_merge_out_c0_exe191156110),
        .in_c0_exe201157111(conv2d3x3_B14_merge_out_c0_exe201157111),
        .in_c0_exe211158112(conv2d3x3_B14_merge_out_c0_exe211158112),
        .in_c0_exe221159113(conv2d3x3_B14_merge_out_c0_exe221159113),
        .in_c0_exe231160114(conv2d3x3_B14_merge_out_c0_exe231160114),
        .in_c0_exe241161115(conv2d3x3_B14_merge_out_c0_exe241161115),
        .in_c0_exe251162116(conv2d3x3_B14_merge_out_c0_exe251162116),
        .in_c0_exe261163119(conv2d3x3_B14_merge_out_c0_exe261163119),
        .in_c0_exe271164120(conv2d3x3_B14_merge_out_c0_exe271164120),
        .in_c0_exe281165121(conv2d3x3_B14_merge_out_c0_exe281165121),
        .in_c0_exe291166122(conv2d3x3_B14_merge_out_c0_exe291166122),
        .in_c0_exe301167124(conv2d3x3_B14_merge_out_c0_exe301167124),
        .in_c0_exe311168125(conv2d3x3_B14_merge_out_c0_exe311168125),
        .in_c0_exe3114091(conv2d3x3_B14_merge_out_c0_exe3114091),
        .in_c0_exe321169127(conv2d3x3_B14_merge_out_c0_exe321169127),
        .in_c0_exe331170128(conv2d3x3_B14_merge_out_c0_exe331170128),
        .in_c0_exe341171129(conv2d3x3_B14_merge_out_c0_exe341171129),
        .in_c0_exe351172130(conv2d3x3_B14_merge_out_c0_exe351172130),
        .in_c0_exe371174131(conv2d3x3_B14_merge_out_c0_exe371174131),
        .in_c0_exe381175132(conv2d3x3_B14_merge_out_c0_exe381175132),
        .in_c0_exe391176133(conv2d3x3_B14_merge_out_c0_exe391176133),
        .in_c0_exe401177134(conv2d3x3_B14_merge_out_c0_exe401177134),
        .in_c0_exe411178135(conv2d3x3_B14_merge_out_c0_exe411178135),
        .in_c0_exe4114192(conv2d3x3_B14_merge_out_c0_exe4114192),
        .in_c0_exe421179136(conv2d3x3_B14_merge_out_c0_exe421179136),
        .in_c0_exe431180137(conv2d3x3_B14_merge_out_c0_exe431180137),
        .in_c0_exe441181138(conv2d3x3_B14_merge_out_c0_exe441181138),
        .in_c0_exe451182139(conv2d3x3_B14_merge_out_c0_exe451182139),
        .in_c0_exe461183140(conv2d3x3_B14_merge_out_c0_exe461183140),
        .in_c0_exe471184141(conv2d3x3_B14_merge_out_c0_exe471184141),
        .in_c0_exe481185142(conv2d3x3_B14_merge_out_c0_exe481185142),
        .in_c0_exe491186143(conv2d3x3_B14_merge_out_c0_exe491186143),
        .in_c0_exe501187144(conv2d3x3_B14_merge_out_c0_exe501187144),
        .in_c0_exe511188145(conv2d3x3_B14_merge_out_c0_exe511188145),
        .in_c0_exe521189146(conv2d3x3_B14_merge_out_c0_exe521189146),
        .in_c0_exe53147(conv2d3x3_B14_merge_out_c0_exe53147),
        .in_c0_exe54148(conv2d3x3_B14_merge_out_c0_exe54148),
        .in_c0_exe55149(conv2d3x3_B14_merge_out_c0_exe55149),
        .in_c0_exe6114394(conv2d3x3_B14_merge_out_c0_exe6114394),
        .in_c0_exe8114595(conv2d3x3_B14_merge_out_c0_exe8114595),
        .in_c1_exe11205151(conv2d3x3_B14_merge_out_c1_exe11205151),
        .in_c1_exe2152(conv2d3x3_B14_merge_out_c1_exe2152),
        .in_stall_in(conv2d3x3_B14_branch_out_stall_out),
        .in_valid_in(conv2d3x3_B14_merge_out_valid_out),
        .out_c0_exe11114897(bb_conv2d3x3_B14_stall_region_out_c0_exe11114897),
        .out_c0_exe12114998(bb_conv2d3x3_B14_stall_region_out_c0_exe12114998),
        .out_c0_exe131150100(bb_conv2d3x3_B14_stall_region_out_c0_exe131150100),
        .out_c0_exe141151101(bb_conv2d3x3_B14_stall_region_out_c0_exe141151101),
        .out_c0_exe151152105(bb_conv2d3x3_B14_stall_region_out_c0_exe151152105),
        .out_c0_exe161153106(bb_conv2d3x3_B14_stall_region_out_c0_exe161153106),
        .out_c0_exe171154107(bb_conv2d3x3_B14_stall_region_out_c0_exe171154107),
        .out_c0_exe181155109(bb_conv2d3x3_B14_stall_region_out_c0_exe181155109),
        .out_c0_exe191156110(bb_conv2d3x3_B14_stall_region_out_c0_exe191156110),
        .out_c0_exe201157111(bb_conv2d3x3_B14_stall_region_out_c0_exe201157111),
        .out_c0_exe211158112(bb_conv2d3x3_B14_stall_region_out_c0_exe211158112),
        .out_c0_exe221159113(bb_conv2d3x3_B14_stall_region_out_c0_exe221159113),
        .out_c0_exe231160114(bb_conv2d3x3_B14_stall_region_out_c0_exe231160114),
        .out_c0_exe241161115(bb_conv2d3x3_B14_stall_region_out_c0_exe241161115),
        .out_c0_exe251162116(bb_conv2d3x3_B14_stall_region_out_c0_exe251162116),
        .out_c0_exe261163119(bb_conv2d3x3_B14_stall_region_out_c0_exe261163119),
        .out_c0_exe271164120(bb_conv2d3x3_B14_stall_region_out_c0_exe271164120),
        .out_c0_exe281165121(bb_conv2d3x3_B14_stall_region_out_c0_exe281165121),
        .out_c0_exe291166122(bb_conv2d3x3_B14_stall_region_out_c0_exe291166122),
        .out_c0_exe301167124(bb_conv2d3x3_B14_stall_region_out_c0_exe301167124),
        .out_c0_exe311168125(bb_conv2d3x3_B14_stall_region_out_c0_exe311168125),
        .out_c0_exe3114091(bb_conv2d3x3_B14_stall_region_out_c0_exe3114091),
        .out_c0_exe321169127(bb_conv2d3x3_B14_stall_region_out_c0_exe321169127),
        .out_c0_exe331170128(bb_conv2d3x3_B14_stall_region_out_c0_exe331170128),
        .out_c0_exe341171129(bb_conv2d3x3_B14_stall_region_out_c0_exe341171129),
        .out_c0_exe351172130(bb_conv2d3x3_B14_stall_region_out_c0_exe351172130),
        .out_c0_exe371174131(bb_conv2d3x3_B14_stall_region_out_c0_exe371174131),
        .out_c0_exe381175132(bb_conv2d3x3_B14_stall_region_out_c0_exe381175132),
        .out_c0_exe391176133(bb_conv2d3x3_B14_stall_region_out_c0_exe391176133),
        .out_c0_exe401177134(bb_conv2d3x3_B14_stall_region_out_c0_exe401177134),
        .out_c0_exe411178135(bb_conv2d3x3_B14_stall_region_out_c0_exe411178135),
        .out_c0_exe4114192(bb_conv2d3x3_B14_stall_region_out_c0_exe4114192),
        .out_c0_exe421179136(bb_conv2d3x3_B14_stall_region_out_c0_exe421179136),
        .out_c0_exe431180137(bb_conv2d3x3_B14_stall_region_out_c0_exe431180137),
        .out_c0_exe441181138(bb_conv2d3x3_B14_stall_region_out_c0_exe441181138),
        .out_c0_exe451182139(bb_conv2d3x3_B14_stall_region_out_c0_exe451182139),
        .out_c0_exe461183140(bb_conv2d3x3_B14_stall_region_out_c0_exe461183140),
        .out_c0_exe471184141(bb_conv2d3x3_B14_stall_region_out_c0_exe471184141),
        .out_c0_exe481185142(bb_conv2d3x3_B14_stall_region_out_c0_exe481185142),
        .out_c0_exe491186143(bb_conv2d3x3_B14_stall_region_out_c0_exe491186143),
        .out_c0_exe501187144(bb_conv2d3x3_B14_stall_region_out_c0_exe501187144),
        .out_c0_exe511188145(bb_conv2d3x3_B14_stall_region_out_c0_exe511188145),
        .out_c0_exe521189146(bb_conv2d3x3_B14_stall_region_out_c0_exe521189146),
        .out_c0_exe53147(bb_conv2d3x3_B14_stall_region_out_c0_exe53147),
        .out_c0_exe54148(bb_conv2d3x3_B14_stall_region_out_c0_exe54148),
        .out_c0_exe55149(bb_conv2d3x3_B14_stall_region_out_c0_exe55149),
        .out_c0_exe6114394(bb_conv2d3x3_B14_stall_region_out_c0_exe6114394),
        .out_c0_exe8114595(bb_conv2d3x3_B14_stall_region_out_c0_exe8114595),
        .out_c1_exe11205151(bb_conv2d3x3_B14_stall_region_out_c1_exe11205151),
        .out_c1_exe2152(bb_conv2d3x3_B14_stall_region_out_c1_exe2152),
        .out_stall_out(bb_conv2d3x3_B14_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d3x3_B14_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B14_branch(BLACKBOX,3)
    conv2d3x3_B14_branch theconv2d3x3_B14_branch (
        .in_c0_exe11114897(bb_conv2d3x3_B14_stall_region_out_c0_exe11114897),
        .in_c0_exe12114998(bb_conv2d3x3_B14_stall_region_out_c0_exe12114998),
        .in_c0_exe131150100(bb_conv2d3x3_B14_stall_region_out_c0_exe131150100),
        .in_c0_exe141151101(bb_conv2d3x3_B14_stall_region_out_c0_exe141151101),
        .in_c0_exe151152105(bb_conv2d3x3_B14_stall_region_out_c0_exe151152105),
        .in_c0_exe161153106(bb_conv2d3x3_B14_stall_region_out_c0_exe161153106),
        .in_c0_exe171154107(bb_conv2d3x3_B14_stall_region_out_c0_exe171154107),
        .in_c0_exe181155109(bb_conv2d3x3_B14_stall_region_out_c0_exe181155109),
        .in_c0_exe191156110(bb_conv2d3x3_B14_stall_region_out_c0_exe191156110),
        .in_c0_exe201157111(bb_conv2d3x3_B14_stall_region_out_c0_exe201157111),
        .in_c0_exe211158112(bb_conv2d3x3_B14_stall_region_out_c0_exe211158112),
        .in_c0_exe221159113(bb_conv2d3x3_B14_stall_region_out_c0_exe221159113),
        .in_c0_exe231160114(bb_conv2d3x3_B14_stall_region_out_c0_exe231160114),
        .in_c0_exe241161115(bb_conv2d3x3_B14_stall_region_out_c0_exe241161115),
        .in_c0_exe251162116(bb_conv2d3x3_B14_stall_region_out_c0_exe251162116),
        .in_c0_exe261163119(bb_conv2d3x3_B14_stall_region_out_c0_exe261163119),
        .in_c0_exe271164120(bb_conv2d3x3_B14_stall_region_out_c0_exe271164120),
        .in_c0_exe281165121(bb_conv2d3x3_B14_stall_region_out_c0_exe281165121),
        .in_c0_exe291166122(bb_conv2d3x3_B14_stall_region_out_c0_exe291166122),
        .in_c0_exe301167124(bb_conv2d3x3_B14_stall_region_out_c0_exe301167124),
        .in_c0_exe311168125(bb_conv2d3x3_B14_stall_region_out_c0_exe311168125),
        .in_c0_exe3114091(bb_conv2d3x3_B14_stall_region_out_c0_exe3114091),
        .in_c0_exe321169127(bb_conv2d3x3_B14_stall_region_out_c0_exe321169127),
        .in_c0_exe331170128(bb_conv2d3x3_B14_stall_region_out_c0_exe331170128),
        .in_c0_exe341171129(bb_conv2d3x3_B14_stall_region_out_c0_exe341171129),
        .in_c0_exe351172130(bb_conv2d3x3_B14_stall_region_out_c0_exe351172130),
        .in_c0_exe371174131(bb_conv2d3x3_B14_stall_region_out_c0_exe371174131),
        .in_c0_exe381175132(bb_conv2d3x3_B14_stall_region_out_c0_exe381175132),
        .in_c0_exe391176133(bb_conv2d3x3_B14_stall_region_out_c0_exe391176133),
        .in_c0_exe401177134(bb_conv2d3x3_B14_stall_region_out_c0_exe401177134),
        .in_c0_exe411178135(bb_conv2d3x3_B14_stall_region_out_c0_exe411178135),
        .in_c0_exe4114192(bb_conv2d3x3_B14_stall_region_out_c0_exe4114192),
        .in_c0_exe421179136(bb_conv2d3x3_B14_stall_region_out_c0_exe421179136),
        .in_c0_exe431180137(bb_conv2d3x3_B14_stall_region_out_c0_exe431180137),
        .in_c0_exe441181138(bb_conv2d3x3_B14_stall_region_out_c0_exe441181138),
        .in_c0_exe451182139(bb_conv2d3x3_B14_stall_region_out_c0_exe451182139),
        .in_c0_exe461183140(bb_conv2d3x3_B14_stall_region_out_c0_exe461183140),
        .in_c0_exe471184141(bb_conv2d3x3_B14_stall_region_out_c0_exe471184141),
        .in_c0_exe481185142(bb_conv2d3x3_B14_stall_region_out_c0_exe481185142),
        .in_c0_exe491186143(bb_conv2d3x3_B14_stall_region_out_c0_exe491186143),
        .in_c0_exe501187144(bb_conv2d3x3_B14_stall_region_out_c0_exe501187144),
        .in_c0_exe511188145(bb_conv2d3x3_B14_stall_region_out_c0_exe511188145),
        .in_c0_exe521189146(bb_conv2d3x3_B14_stall_region_out_c0_exe521189146),
        .in_c0_exe53147(bb_conv2d3x3_B14_stall_region_out_c0_exe53147),
        .in_c0_exe54148(bb_conv2d3x3_B14_stall_region_out_c0_exe54148),
        .in_c0_exe55149(bb_conv2d3x3_B14_stall_region_out_c0_exe55149),
        .in_c0_exe6114394(bb_conv2d3x3_B14_stall_region_out_c0_exe6114394),
        .in_c0_exe8114595(bb_conv2d3x3_B14_stall_region_out_c0_exe8114595),
        .in_c1_exe11205151(bb_conv2d3x3_B14_stall_region_out_c1_exe11205151),
        .in_c1_exe2152(bb_conv2d3x3_B14_stall_region_out_c1_exe2152),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d3x3_B14_stall_region_out_valid_out),
        .out_c0_exe11114897(conv2d3x3_B14_branch_out_c0_exe11114897),
        .out_c0_exe12114998(conv2d3x3_B14_branch_out_c0_exe12114998),
        .out_c0_exe131150100(conv2d3x3_B14_branch_out_c0_exe131150100),
        .out_c0_exe141151101(conv2d3x3_B14_branch_out_c0_exe141151101),
        .out_c0_exe151152105(conv2d3x3_B14_branch_out_c0_exe151152105),
        .out_c0_exe161153106(conv2d3x3_B14_branch_out_c0_exe161153106),
        .out_c0_exe171154107(conv2d3x3_B14_branch_out_c0_exe171154107),
        .out_c0_exe181155109(conv2d3x3_B14_branch_out_c0_exe181155109),
        .out_c0_exe191156110(conv2d3x3_B14_branch_out_c0_exe191156110),
        .out_c0_exe201157111(conv2d3x3_B14_branch_out_c0_exe201157111),
        .out_c0_exe211158112(conv2d3x3_B14_branch_out_c0_exe211158112),
        .out_c0_exe221159113(conv2d3x3_B14_branch_out_c0_exe221159113),
        .out_c0_exe231160114(conv2d3x3_B14_branch_out_c0_exe231160114),
        .out_c0_exe241161115(conv2d3x3_B14_branch_out_c0_exe241161115),
        .out_c0_exe251162116(conv2d3x3_B14_branch_out_c0_exe251162116),
        .out_c0_exe261163119(conv2d3x3_B14_branch_out_c0_exe261163119),
        .out_c0_exe271164120(conv2d3x3_B14_branch_out_c0_exe271164120),
        .out_c0_exe281165121(conv2d3x3_B14_branch_out_c0_exe281165121),
        .out_c0_exe291166122(conv2d3x3_B14_branch_out_c0_exe291166122),
        .out_c0_exe301167124(conv2d3x3_B14_branch_out_c0_exe301167124),
        .out_c0_exe311168125(conv2d3x3_B14_branch_out_c0_exe311168125),
        .out_c0_exe3114091(conv2d3x3_B14_branch_out_c0_exe3114091),
        .out_c0_exe321169127(conv2d3x3_B14_branch_out_c0_exe321169127),
        .out_c0_exe331170128(conv2d3x3_B14_branch_out_c0_exe331170128),
        .out_c0_exe341171129(conv2d3x3_B14_branch_out_c0_exe341171129),
        .out_c0_exe371174131(conv2d3x3_B14_branch_out_c0_exe371174131),
        .out_c0_exe381175132(conv2d3x3_B14_branch_out_c0_exe381175132),
        .out_c0_exe391176133(conv2d3x3_B14_branch_out_c0_exe391176133),
        .out_c0_exe401177134(conv2d3x3_B14_branch_out_c0_exe401177134),
        .out_c0_exe411178135(conv2d3x3_B14_branch_out_c0_exe411178135),
        .out_c0_exe4114192(conv2d3x3_B14_branch_out_c0_exe4114192),
        .out_c0_exe421179136(conv2d3x3_B14_branch_out_c0_exe421179136),
        .out_c0_exe431180137(conv2d3x3_B14_branch_out_c0_exe431180137),
        .out_c0_exe441181138(conv2d3x3_B14_branch_out_c0_exe441181138),
        .out_c0_exe451182139(conv2d3x3_B14_branch_out_c0_exe451182139),
        .out_c0_exe461183140(conv2d3x3_B14_branch_out_c0_exe461183140),
        .out_c0_exe471184141(conv2d3x3_B14_branch_out_c0_exe471184141),
        .out_c0_exe481185142(conv2d3x3_B14_branch_out_c0_exe481185142),
        .out_c0_exe491186143(conv2d3x3_B14_branch_out_c0_exe491186143),
        .out_c0_exe501187144(conv2d3x3_B14_branch_out_c0_exe501187144),
        .out_c0_exe511188145(conv2d3x3_B14_branch_out_c0_exe511188145),
        .out_c0_exe521189146(conv2d3x3_B14_branch_out_c0_exe521189146),
        .out_c0_exe53147(conv2d3x3_B14_branch_out_c0_exe53147),
        .out_c0_exe54148(conv2d3x3_B14_branch_out_c0_exe54148),
        .out_c0_exe55149(conv2d3x3_B14_branch_out_c0_exe55149),
        .out_c0_exe6114394(conv2d3x3_B14_branch_out_c0_exe6114394),
        .out_c0_exe8114595(conv2d3x3_B14_branch_out_c0_exe8114595),
        .out_c1_exe11205151(conv2d3x3_B14_branch_out_c1_exe11205151),
        .out_c1_exe2152(conv2d3x3_B14_branch_out_c1_exe2152),
        .out_stall_out(conv2d3x3_B14_branch_out_stall_out),
        .out_valid_out_0(conv2d3x3_B14_branch_out_valid_out_0),
        .out_valid_out_1(conv2d3x3_B14_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe11114897(GPOUT,65)
    assign out_c0_exe11114897 = conv2d3x3_B14_branch_out_c0_exe11114897;

    // out_c0_exe12114998(GPOUT,66)
    assign out_c0_exe12114998 = conv2d3x3_B14_branch_out_c0_exe12114998;

    // out_c0_exe131150100(GPOUT,67)
    assign out_c0_exe131150100 = conv2d3x3_B14_branch_out_c0_exe131150100;

    // out_c0_exe141151101(GPOUT,68)
    assign out_c0_exe141151101 = conv2d3x3_B14_branch_out_c0_exe141151101;

    // out_c0_exe151152105(GPOUT,69)
    assign out_c0_exe151152105 = conv2d3x3_B14_branch_out_c0_exe151152105;

    // out_c0_exe161153106(GPOUT,70)
    assign out_c0_exe161153106 = conv2d3x3_B14_branch_out_c0_exe161153106;

    // out_c0_exe171154107(GPOUT,71)
    assign out_c0_exe171154107 = conv2d3x3_B14_branch_out_c0_exe171154107;

    // out_c0_exe181155109(GPOUT,72)
    assign out_c0_exe181155109 = conv2d3x3_B14_branch_out_c0_exe181155109;

    // out_c0_exe191156110(GPOUT,73)
    assign out_c0_exe191156110 = conv2d3x3_B14_branch_out_c0_exe191156110;

    // out_c0_exe201157111(GPOUT,74)
    assign out_c0_exe201157111 = conv2d3x3_B14_branch_out_c0_exe201157111;

    // out_c0_exe211158112(GPOUT,75)
    assign out_c0_exe211158112 = conv2d3x3_B14_branch_out_c0_exe211158112;

    // out_c0_exe221159113(GPOUT,76)
    assign out_c0_exe221159113 = conv2d3x3_B14_branch_out_c0_exe221159113;

    // out_c0_exe231160114(GPOUT,77)
    assign out_c0_exe231160114 = conv2d3x3_B14_branch_out_c0_exe231160114;

    // out_c0_exe241161115(GPOUT,78)
    assign out_c0_exe241161115 = conv2d3x3_B14_branch_out_c0_exe241161115;

    // out_c0_exe251162116(GPOUT,79)
    assign out_c0_exe251162116 = conv2d3x3_B14_branch_out_c0_exe251162116;

    // out_c0_exe261163119(GPOUT,80)
    assign out_c0_exe261163119 = conv2d3x3_B14_branch_out_c0_exe261163119;

    // out_c0_exe271164120(GPOUT,81)
    assign out_c0_exe271164120 = conv2d3x3_B14_branch_out_c0_exe271164120;

    // out_c0_exe281165121(GPOUT,82)
    assign out_c0_exe281165121 = conv2d3x3_B14_branch_out_c0_exe281165121;

    // out_c0_exe291166122(GPOUT,83)
    assign out_c0_exe291166122 = conv2d3x3_B14_branch_out_c0_exe291166122;

    // out_c0_exe301167124(GPOUT,84)
    assign out_c0_exe301167124 = conv2d3x3_B14_branch_out_c0_exe301167124;

    // out_c0_exe311168125(GPOUT,85)
    assign out_c0_exe311168125 = conv2d3x3_B14_branch_out_c0_exe311168125;

    // out_c0_exe3114091(GPOUT,86)
    assign out_c0_exe3114091 = conv2d3x3_B14_branch_out_c0_exe3114091;

    // out_c0_exe321169127(GPOUT,87)
    assign out_c0_exe321169127 = conv2d3x3_B14_branch_out_c0_exe321169127;

    // out_c0_exe331170128(GPOUT,88)
    assign out_c0_exe331170128 = conv2d3x3_B14_branch_out_c0_exe331170128;

    // out_c0_exe341171129(GPOUT,89)
    assign out_c0_exe341171129 = conv2d3x3_B14_branch_out_c0_exe341171129;

    // out_c0_exe371174131(GPOUT,90)
    assign out_c0_exe371174131 = conv2d3x3_B14_branch_out_c0_exe371174131;

    // out_c0_exe381175132(GPOUT,91)
    assign out_c0_exe381175132 = conv2d3x3_B14_branch_out_c0_exe381175132;

    // out_c0_exe391176133(GPOUT,92)
    assign out_c0_exe391176133 = conv2d3x3_B14_branch_out_c0_exe391176133;

    // out_c0_exe401177134(GPOUT,93)
    assign out_c0_exe401177134 = conv2d3x3_B14_branch_out_c0_exe401177134;

    // out_c0_exe411178135(GPOUT,94)
    assign out_c0_exe411178135 = conv2d3x3_B14_branch_out_c0_exe411178135;

    // out_c0_exe4114192(GPOUT,95)
    assign out_c0_exe4114192 = conv2d3x3_B14_branch_out_c0_exe4114192;

    // out_c0_exe421179136(GPOUT,96)
    assign out_c0_exe421179136 = conv2d3x3_B14_branch_out_c0_exe421179136;

    // out_c0_exe431180137(GPOUT,97)
    assign out_c0_exe431180137 = conv2d3x3_B14_branch_out_c0_exe431180137;

    // out_c0_exe441181138(GPOUT,98)
    assign out_c0_exe441181138 = conv2d3x3_B14_branch_out_c0_exe441181138;

    // out_c0_exe451182139(GPOUT,99)
    assign out_c0_exe451182139 = conv2d3x3_B14_branch_out_c0_exe451182139;

    // out_c0_exe461183140(GPOUT,100)
    assign out_c0_exe461183140 = conv2d3x3_B14_branch_out_c0_exe461183140;

    // out_c0_exe471184141(GPOUT,101)
    assign out_c0_exe471184141 = conv2d3x3_B14_branch_out_c0_exe471184141;

    // out_c0_exe481185142(GPOUT,102)
    assign out_c0_exe481185142 = conv2d3x3_B14_branch_out_c0_exe481185142;

    // out_c0_exe491186143(GPOUT,103)
    assign out_c0_exe491186143 = conv2d3x3_B14_branch_out_c0_exe491186143;

    // out_c0_exe501187144(GPOUT,104)
    assign out_c0_exe501187144 = conv2d3x3_B14_branch_out_c0_exe501187144;

    // out_c0_exe511188145(GPOUT,105)
    assign out_c0_exe511188145 = conv2d3x3_B14_branch_out_c0_exe511188145;

    // out_c0_exe521189146(GPOUT,106)
    assign out_c0_exe521189146 = conv2d3x3_B14_branch_out_c0_exe521189146;

    // out_c0_exe53147(GPOUT,107)
    assign out_c0_exe53147 = conv2d3x3_B14_branch_out_c0_exe53147;

    // out_c0_exe54148(GPOUT,108)
    assign out_c0_exe54148 = conv2d3x3_B14_branch_out_c0_exe54148;

    // out_c0_exe55149(GPOUT,109)
    assign out_c0_exe55149 = conv2d3x3_B14_branch_out_c0_exe55149;

    // out_c0_exe6114394(GPOUT,110)
    assign out_c0_exe6114394 = conv2d3x3_B14_branch_out_c0_exe6114394;

    // out_c0_exe8114595(GPOUT,111)
    assign out_c0_exe8114595 = conv2d3x3_B14_branch_out_c0_exe8114595;

    // out_c1_exe11205151(GPOUT,112)
    assign out_c1_exe11205151 = conv2d3x3_B14_branch_out_c1_exe11205151;

    // out_c1_exe2152(GPOUT,113)
    assign out_c1_exe2152 = conv2d3x3_B14_branch_out_c1_exe2152;

    // out_stall_in_0(GPOUT,114)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,115)
    assign out_stall_out_0 = conv2d3x3_B14_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,116)
    assign out_valid_out_0 = conv2d3x3_B14_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,117)
    assign out_valid_out_1 = conv2d3x3_B14_branch_out_valid_out_1;

endmodule
