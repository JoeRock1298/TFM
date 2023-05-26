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

// SystemVerilog created from conv2d1x1_bb_B7
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B7 (
    output wire [0:0] out_c0_exe1974135,
    output wire [30:0] out_lm70_conv2d1x1_avm_address,
    output wire [4:0] out_lm70_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm70_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm70_conv2d1x1_avm_enable,
    output wire [0:0] out_lm70_conv2d1x1_avm_read,
    output wire [0:0] out_lm70_conv2d1x1_avm_write,
    output wire [511:0] out_lm70_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm73_conv2d1x1_avm_address,
    output wire [4:0] out_lm73_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm73_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm73_conv2d1x1_avm_enable,
    output wire [0:0] out_lm73_conv2d1x1_avm_read,
    output wire [0:0] out_lm73_conv2d1x1_avm_write,
    output wire [511:0] out_lm73_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm_conv2d1x1_avm_address,
    output wire [4:0] out_lm_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm_conv2d1x1_avm_enable,
    output wire [0:0] out_lm_conv2d1x1_avm_read,
    output wire [0:0] out_lm_conv2d1x1_avm_write,
    output wire [511:0] out_lm_conv2d1x1_avm_writedata,
    output wire [0:0] out_lsu_unnamed_conv2d1x113_o_active,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [30:0] out_unnamed_conv2d1x113_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x113_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x113_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x113_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x113_conv2d1x1_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [31:0] in_c0_exe1273429_0,
    input wire [31:0] in_c0_exe1373530_0,
    input wire [0:0] in_c0_exe1573731_0,
    input wire [31:0] in_c0_exe1773932_0,
    input wire [31:0] in_c0_exe1874033_0,
    input wire [0:0] in_c0_exe1974135_0,
    input wire [31:0] in_c0_exe2074236_0,
    input wire [31:0] in_c0_exe2174337_0,
    input wire [31:0] in_c0_exe2274438_0,
    input wire [0:0] in_c0_exe2374539_0,
    input wire [0:0] in_c0_exe2474640_0,
    input wire [0:0] in_c0_exe2574741_0,
    input wire [0:0] in_c0_exe772926_0,
    input wire [0:0] in_c0_exe873027_0,
    input wire [31:0] in_c0_exe973128_0,
    input wire [31:0] in_c1_exe1052_0,
    input wire [31:0] in_c1_exe1153_0,
    input wire [31:0] in_c1_exe1254_0,
    input wire [31:0] in_c1_exe1355_0,
    input wire [31:0] in_c1_exe1456_0,
    input wire [31:0] in_c1_exe184743_0,
    input wire [31:0] in_c1_exe244_0,
    input wire [31:0] in_c1_exe345_0,
    input wire [31:0] in_c1_exe446_0,
    input wire [31:0] in_c1_exe547_0,
    input wire [31:0] in_c1_exe648_0,
    input wire [31:0] in_c1_exe749_0,
    input wire [31:0] in_c1_exe850_0,
    input wire [31:0] in_c1_exe951_0,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [511:0] in_lm70_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm70_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm70_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm70_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm73_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm73_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm73_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm73_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm_conv2d1x1_avm_writeack,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [511:0] in_unnamed_conv2d1x113_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x113_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x113_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x113_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [31:0] in_lm17742_0_0_tpl,
    input wire [31:0] in_lm17742_0_1_tpl,
    input wire [31:0] in_lm17742_0_2_tpl,
    input wire [31:0] in_lm17742_0_3_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d1x1_B7_stall_region_out_c0_exe1974135;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_c0_exe2574741;
    wire [30:0] bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_lsu_unnamed_conv2d1x113_o_active;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_stall_out;
    wire [30:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_valid_out;
    wire [0:0] conv2d1x1_B7_branch_out_c0_exe1974135;
    wire [0:0] conv2d1x1_B7_branch_out_stall_out;
    wire [0:0] conv2d1x1_B7_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B7_branch_out_valid_out_1;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe1273429;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe1373530;
    wire [0:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe1573731;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe1773932;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe1874033;
    wire [0:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe1974135;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe2074236;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe2174337;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe2274438;
    wire [0:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe2374539;
    wire [0:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe2474640;
    wire [0:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe2574741;
    wire [0:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe772926;
    wire [0:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe873027;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c0_exe973128;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe1052;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe1153;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe1254;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe1355;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe1456;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe184743;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe244;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe345;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe446;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe547;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe648;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe749;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe850;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_c1_exe951;
    wire [0:0] conv2d1x1_B7_merge_vunroll_x_out_stall_out_0;
    wire [0:0] conv2d1x1_B7_merge_vunroll_x_out_valid_out;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_lm17742_0_tpl;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_lm17742_1_tpl;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_lm17742_2_tpl;
    wire [31:0] conv2d1x1_B7_merge_vunroll_x_out_lm17742_3_tpl;


    // conv2d1x1_B7_merge_vunroll_x(BLACKBOX,38)
    conv2d1x1_B7_merge theconv2d1x1_B7_merge_vunroll_x (
        .in_c0_exe1273429_0(in_c0_exe1273429_0),
        .in_c0_exe1373530_0(in_c0_exe1373530_0),
        .in_c0_exe1573731_0(in_c0_exe1573731_0),
        .in_c0_exe1773932_0(in_c0_exe1773932_0),
        .in_c0_exe1874033_0(in_c0_exe1874033_0),
        .in_c0_exe1974135_0(in_c0_exe1974135_0),
        .in_c0_exe2074236_0(in_c0_exe2074236_0),
        .in_c0_exe2174337_0(in_c0_exe2174337_0),
        .in_c0_exe2274438_0(in_c0_exe2274438_0),
        .in_c0_exe2374539_0(in_c0_exe2374539_0),
        .in_c0_exe2474640_0(in_c0_exe2474640_0),
        .in_c0_exe2574741_0(in_c0_exe2574741_0),
        .in_c0_exe772926_0(in_c0_exe772926_0),
        .in_c0_exe873027_0(in_c0_exe873027_0),
        .in_c0_exe973128_0(in_c0_exe973128_0),
        .in_c1_exe1052_0(in_c1_exe1052_0),
        .in_c1_exe1153_0(in_c1_exe1153_0),
        .in_c1_exe1254_0(in_c1_exe1254_0),
        .in_c1_exe1355_0(in_c1_exe1355_0),
        .in_c1_exe1456_0(in_c1_exe1456_0),
        .in_c1_exe184743_0(in_c1_exe184743_0),
        .in_c1_exe244_0(in_c1_exe244_0),
        .in_c1_exe345_0(in_c1_exe345_0),
        .in_c1_exe446_0(in_c1_exe446_0),
        .in_c1_exe547_0(in_c1_exe547_0),
        .in_c1_exe648_0(in_c1_exe648_0),
        .in_c1_exe749_0(in_c1_exe749_0),
        .in_c1_exe850_0(in_c1_exe850_0),
        .in_c1_exe951_0(in_c1_exe951_0),
        .in_stall_in(bb_conv2d1x1_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_lm17742_0_0_tpl(in_lm17742_0_0_tpl),
        .in_lm17742_0_1_tpl(in_lm17742_0_1_tpl),
        .in_lm17742_0_2_tpl(in_lm17742_0_2_tpl),
        .in_lm17742_0_3_tpl(in_lm17742_0_3_tpl),
        .out_c0_exe1273429(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1273429),
        .out_c0_exe1373530(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1373530),
        .out_c0_exe1573731(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1573731),
        .out_c0_exe1773932(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1773932),
        .out_c0_exe1874033(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1874033),
        .out_c0_exe1974135(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1974135),
        .out_c0_exe2074236(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2074236),
        .out_c0_exe2174337(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2174337),
        .out_c0_exe2274438(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2274438),
        .out_c0_exe2374539(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2374539),
        .out_c0_exe2474640(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2474640),
        .out_c0_exe2574741(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2574741),
        .out_c0_exe772926(conv2d1x1_B7_merge_vunroll_x_out_c0_exe772926),
        .out_c0_exe873027(conv2d1x1_B7_merge_vunroll_x_out_c0_exe873027),
        .out_c0_exe973128(conv2d1x1_B7_merge_vunroll_x_out_c0_exe973128),
        .out_c1_exe1052(conv2d1x1_B7_merge_vunroll_x_out_c1_exe1052),
        .out_c1_exe1153(conv2d1x1_B7_merge_vunroll_x_out_c1_exe1153),
        .out_c1_exe1254(conv2d1x1_B7_merge_vunroll_x_out_c1_exe1254),
        .out_c1_exe1355(conv2d1x1_B7_merge_vunroll_x_out_c1_exe1355),
        .out_c1_exe1456(conv2d1x1_B7_merge_vunroll_x_out_c1_exe1456),
        .out_c1_exe184743(conv2d1x1_B7_merge_vunroll_x_out_c1_exe184743),
        .out_c1_exe244(conv2d1x1_B7_merge_vunroll_x_out_c1_exe244),
        .out_c1_exe345(conv2d1x1_B7_merge_vunroll_x_out_c1_exe345),
        .out_c1_exe446(conv2d1x1_B7_merge_vunroll_x_out_c1_exe446),
        .out_c1_exe547(conv2d1x1_B7_merge_vunroll_x_out_c1_exe547),
        .out_c1_exe648(conv2d1x1_B7_merge_vunroll_x_out_c1_exe648),
        .out_c1_exe749(conv2d1x1_B7_merge_vunroll_x_out_c1_exe749),
        .out_c1_exe850(conv2d1x1_B7_merge_vunroll_x_out_c1_exe850),
        .out_c1_exe951(conv2d1x1_B7_merge_vunroll_x_out_c1_exe951),
        .out_stall_out_0(conv2d1x1_B7_merge_vunroll_x_out_stall_out_0),
        .out_valid_out(conv2d1x1_B7_merge_vunroll_x_out_valid_out),
        .out_lm17742_0_tpl(conv2d1x1_B7_merge_vunroll_x_out_lm17742_0_tpl),
        .out_lm17742_1_tpl(conv2d1x1_B7_merge_vunroll_x_out_lm17742_1_tpl),
        .out_lm17742_2_tpl(conv2d1x1_B7_merge_vunroll_x_out_lm17742_2_tpl),
        .out_lm17742_3_tpl(conv2d1x1_B7_merge_vunroll_x_out_lm17742_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B7_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B7_stall_region thebb_conv2d1x1_B7_stall_region (
        .in_c0_exe1273429(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1273429),
        .in_c0_exe1373530(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1373530),
        .in_c0_exe1573731(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1573731),
        .in_c0_exe1773932(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1773932),
        .in_c0_exe1874033(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1874033),
        .in_c0_exe1974135(conv2d1x1_B7_merge_vunroll_x_out_c0_exe1974135),
        .in_c0_exe2074236(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2074236),
        .in_c0_exe2174337(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2174337),
        .in_c0_exe2274438(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2274438),
        .in_c0_exe2374539(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2374539),
        .in_c0_exe2474640(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2474640),
        .in_c0_exe2574741(conv2d1x1_B7_merge_vunroll_x_out_c0_exe2574741),
        .in_c0_exe772926(conv2d1x1_B7_merge_vunroll_x_out_c0_exe772926),
        .in_c0_exe873027(conv2d1x1_B7_merge_vunroll_x_out_c0_exe873027),
        .in_c0_exe973128(conv2d1x1_B7_merge_vunroll_x_out_c0_exe973128),
        .in_c1_exe1052(conv2d1x1_B7_merge_vunroll_x_out_c1_exe1052),
        .in_c1_exe1153(conv2d1x1_B7_merge_vunroll_x_out_c1_exe1153),
        .in_c1_exe1254(conv2d1x1_B7_merge_vunroll_x_out_c1_exe1254),
        .in_c1_exe1355(conv2d1x1_B7_merge_vunroll_x_out_c1_exe1355),
        .in_c1_exe1456(conv2d1x1_B7_merge_vunroll_x_out_c1_exe1456),
        .in_c1_exe184743(conv2d1x1_B7_merge_vunroll_x_out_c1_exe184743),
        .in_c1_exe244(conv2d1x1_B7_merge_vunroll_x_out_c1_exe244),
        .in_c1_exe345(conv2d1x1_B7_merge_vunroll_x_out_c1_exe345),
        .in_c1_exe446(conv2d1x1_B7_merge_vunroll_x_out_c1_exe446),
        .in_c1_exe547(conv2d1x1_B7_merge_vunroll_x_out_c1_exe547),
        .in_c1_exe648(conv2d1x1_B7_merge_vunroll_x_out_c1_exe648),
        .in_c1_exe749(conv2d1x1_B7_merge_vunroll_x_out_c1_exe749),
        .in_c1_exe850(conv2d1x1_B7_merge_vunroll_x_out_c1_exe850),
        .in_c1_exe951(conv2d1x1_B7_merge_vunroll_x_out_c1_exe951),
        .in_flush(in_flush),
        .in_input_im(in_input_im),
        .in_lm70_conv2d1x1_avm_readdata(in_lm70_conv2d1x1_avm_readdata),
        .in_lm70_conv2d1x1_avm_readdatavalid(in_lm70_conv2d1x1_avm_readdatavalid),
        .in_lm70_conv2d1x1_avm_waitrequest(in_lm70_conv2d1x1_avm_waitrequest),
        .in_lm70_conv2d1x1_avm_writeack(in_lm70_conv2d1x1_avm_writeack),
        .in_lm73_conv2d1x1_avm_readdata(in_lm73_conv2d1x1_avm_readdata),
        .in_lm73_conv2d1x1_avm_readdatavalid(in_lm73_conv2d1x1_avm_readdatavalid),
        .in_lm73_conv2d1x1_avm_waitrequest(in_lm73_conv2d1x1_avm_waitrequest),
        .in_lm73_conv2d1x1_avm_writeack(in_lm73_conv2d1x1_avm_writeack),
        .in_lm_conv2d1x1_avm_readdata(in_lm_conv2d1x1_avm_readdata),
        .in_lm_conv2d1x1_avm_readdatavalid(in_lm_conv2d1x1_avm_readdatavalid),
        .in_lm_conv2d1x1_avm_waitrequest(in_lm_conv2d1x1_avm_waitrequest),
        .in_lm_conv2d1x1_avm_writeack(in_lm_conv2d1x1_avm_writeack),
        .in_output_im(in_output_im),
        .in_stall_in(conv2d1x1_B7_branch_out_stall_out),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_readdata(in_unnamed_conv2d1x113_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x113_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x113_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_writeack(in_unnamed_conv2d1x113_conv2d1x1_avm_writeack),
        .in_valid_in(conv2d1x1_B7_merge_vunroll_x_out_valid_out),
        .in_lm17742_0_tpl(conv2d1x1_B7_merge_vunroll_x_out_lm17742_0_tpl),
        .in_lm17742_1_tpl(conv2d1x1_B7_merge_vunroll_x_out_lm17742_1_tpl),
        .in_lm17742_2_tpl(conv2d1x1_B7_merge_vunroll_x_out_lm17742_2_tpl),
        .in_lm17742_3_tpl(conv2d1x1_B7_merge_vunroll_x_out_lm17742_3_tpl),
        .out_c0_exe1974135(bb_conv2d1x1_B7_stall_region_out_c0_exe1974135),
        .out_c0_exe2574741(bb_conv2d1x1_B7_stall_region_out_c0_exe2574741),
        .out_lm70_conv2d1x1_avm_address(bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_address),
        .out_lm70_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_burstcount),
        .out_lm70_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_byteenable),
        .out_lm70_conv2d1x1_avm_enable(bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_enable),
        .out_lm70_conv2d1x1_avm_read(bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_read),
        .out_lm70_conv2d1x1_avm_write(bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_write),
        .out_lm70_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_writedata),
        .out_lm73_conv2d1x1_avm_address(bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_address),
        .out_lm73_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_burstcount),
        .out_lm73_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_byteenable),
        .out_lm73_conv2d1x1_avm_enable(bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_enable),
        .out_lm73_conv2d1x1_avm_read(bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_read),
        .out_lm73_conv2d1x1_avm_write(bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_write),
        .out_lm73_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_writedata),
        .out_lm_conv2d1x1_avm_address(bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_writedata),
        .out_lsu_unnamed_conv2d1x113_o_active(bb_conv2d1x1_B7_stall_region_out_lsu_unnamed_conv2d1x113_o_active),
        .out_stall_out(bb_conv2d1x1_B7_stall_region_out_stall_out),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_address(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_enable(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_read(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_write(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata),
        .out_valid_out(bb_conv2d1x1_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B7_branch(BLACKBOX,3)
    conv2d1x1_B7_branch theconv2d1x1_B7_branch (
        .in_c0_exe1974135(bb_conv2d1x1_B7_stall_region_out_c0_exe1974135),
        .in_c0_exe2574741(bb_conv2d1x1_B7_stall_region_out_c0_exe2574741),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d1x1_B7_stall_region_out_valid_out),
        .out_c0_exe1974135(conv2d1x1_B7_branch_out_c0_exe1974135),
        .out_stall_out(conv2d1x1_B7_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B7_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1974135(GPOUT,4)
    assign out_c0_exe1974135 = conv2d1x1_B7_branch_out_c0_exe1974135;

    // out_lm70_conv2d1x1_avm_address(GPOUT,5)
    assign out_lm70_conv2d1x1_avm_address = bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_address;

    // out_lm70_conv2d1x1_avm_burstcount(GPOUT,6)
    assign out_lm70_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_burstcount;

    // out_lm70_conv2d1x1_avm_byteenable(GPOUT,7)
    assign out_lm70_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_byteenable;

    // out_lm70_conv2d1x1_avm_enable(GPOUT,8)
    assign out_lm70_conv2d1x1_avm_enable = bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_enable;

    // out_lm70_conv2d1x1_avm_read(GPOUT,9)
    assign out_lm70_conv2d1x1_avm_read = bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_read;

    // out_lm70_conv2d1x1_avm_write(GPOUT,10)
    assign out_lm70_conv2d1x1_avm_write = bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_write;

    // out_lm70_conv2d1x1_avm_writedata(GPOUT,11)
    assign out_lm70_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_stall_region_out_lm70_conv2d1x1_avm_writedata;

    // out_lm73_conv2d1x1_avm_address(GPOUT,12)
    assign out_lm73_conv2d1x1_avm_address = bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_address;

    // out_lm73_conv2d1x1_avm_burstcount(GPOUT,13)
    assign out_lm73_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_burstcount;

    // out_lm73_conv2d1x1_avm_byteenable(GPOUT,14)
    assign out_lm73_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_byteenable;

    // out_lm73_conv2d1x1_avm_enable(GPOUT,15)
    assign out_lm73_conv2d1x1_avm_enable = bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_enable;

    // out_lm73_conv2d1x1_avm_read(GPOUT,16)
    assign out_lm73_conv2d1x1_avm_read = bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_read;

    // out_lm73_conv2d1x1_avm_write(GPOUT,17)
    assign out_lm73_conv2d1x1_avm_write = bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_write;

    // out_lm73_conv2d1x1_avm_writedata(GPOUT,18)
    assign out_lm73_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_stall_region_out_lm73_conv2d1x1_avm_writedata;

    // out_lm_conv2d1x1_avm_address(GPOUT,19)
    assign out_lm_conv2d1x1_avm_address = bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_address;

    // out_lm_conv2d1x1_avm_burstcount(GPOUT,20)
    assign out_lm_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_burstcount;

    // out_lm_conv2d1x1_avm_byteenable(GPOUT,21)
    assign out_lm_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_byteenable;

    // out_lm_conv2d1x1_avm_enable(GPOUT,22)
    assign out_lm_conv2d1x1_avm_enable = bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_enable;

    // out_lm_conv2d1x1_avm_read(GPOUT,23)
    assign out_lm_conv2d1x1_avm_read = bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_read;

    // out_lm_conv2d1x1_avm_write(GPOUT,24)
    assign out_lm_conv2d1x1_avm_write = bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_write;

    // out_lm_conv2d1x1_avm_writedata(GPOUT,25)
    assign out_lm_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_stall_region_out_lm_conv2d1x1_avm_writedata;

    // out_lsu_unnamed_conv2d1x113_o_active(GPOUT,26)
    assign out_lsu_unnamed_conv2d1x113_o_active = bb_conv2d1x1_B7_stall_region_out_lsu_unnamed_conv2d1x113_o_active;

    // out_stall_in_0(GPOUT,27)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = conv2d1x1_B7_merge_vunroll_x_out_stall_out_0;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_address(GPOUT,29)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_address = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount(GPOUT,30)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable(GPOUT,31)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_enable(GPOUT,32)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_enable = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_read(GPOUT,33)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_read = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_write(GPOUT,34)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_write = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_writedata(GPOUT,35)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata;

    // out_valid_out_0(GPOUT,36)
    assign out_valid_out_0 = conv2d1x1_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,37)
    assign out_valid_out_1 = conv2d1x1_B7_branch_out_valid_out_1;

endmodule
