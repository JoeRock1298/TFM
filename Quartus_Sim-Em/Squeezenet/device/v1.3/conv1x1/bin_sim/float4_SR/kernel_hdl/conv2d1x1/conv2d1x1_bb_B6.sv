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

// SystemVerilog created from conv2d1x1_bb_B6
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B6 (
    input wire [9:0] in_ap_pop113_0,
    input wire [9:0] in_ap_pop113_1,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked23_0,
    input wire [0:0] in_forked23_1,
    input wire [31:0] in_ij_068_pop13116_0,
    input wire [31:0] in_ij_068_pop13116_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_lm51_pop18120_0,
    input wire [31:0] in_lm51_pop18120_1,
    input wire [31:0] in_lm97_0,
    input wire [31:0] in_lm97_1,
    input wire [31:0] in_mul100107_0,
    input wire [31:0] in_mul100107_1,
    input wire [31:0] in_mul10057_pop20122_0,
    input wire [31:0] in_mul10057_pop20122_1,
    input wire [31:0] in_mul21102_0,
    input wire [31:0] in_mul21102_1,
    input wire [31:0] in_mul2154_pop19121_0,
    input wire [31:0] in_mul2154_pop19121_1,
    input wire [31:0] in_mul48_pop14117_0,
    input wire [31:0] in_mul48_pop14117_1,
    input wire [31:0] in_mul92_0,
    input wire [31:0] in_mul92_1,
    input wire [0:0] in_notcmp38115_0,
    input wire [0:0] in_notcmp38115_1,
    input wire [0:0] in_notcmp43112_0,
    input wire [0:0] in_notcmp43112_1,
    input wire [0:0] in_notcmp4360_pop21123_0,
    input wire [0:0] in_notcmp4360_pop21123_1,
    input wire [63:0] in_output_im,
    input wire [0:0] in_pop15118_0,
    input wire [0:0] in_pop15118_1,
    input wire [0:0] in_pop16114_0,
    input wire [0:0] in_pop16114_1,
    input wire [0:0] in_pop17119_0,
    input wire [0:0] in_pop17119_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_conv2d1x111_0,
    input wire [0:0] in_unnamed_conv2d1x111_1,
    input wire [0:0] in_unnamed_conv2d1x112_0,
    input wire [0:0] in_unnamed_conv2d1x112_1,
    input wire [0:0] in_unnamed_conv2d1x113_0,
    input wire [0:0] in_unnamed_conv2d1x113_1,
    input wire [32:0] in_unnamed_conv2d1x114_0,
    input wire [32:0] in_unnamed_conv2d1x114_1,
    input wire [511:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10321,
    output wire [0:0] out_c0_exe11322,
    output wire [0:0] out_c0_exe12323,
    output wire [31:0] out_c0_exe13324,
    output wire [31:0] out_c0_exe14325,
    output wire [0:0] out_c0_exe15326,
    output wire [0:0] out_c0_exe16327,
    output wire [0:0] out_c0_exe17328,
    output wire [32:0] out_c0_exe18329,
    output wire [31:0] out_c0_exe19330,
    output wire [31:0] out_c0_exe20331,
    output wire [31:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [63:0] out_c0_exe2313,
    output wire [0:0] out_c0_exe3314,
    output wire [0:0] out_c0_exe4315,
    output wire [31:0] out_c0_exe6317,
    output wire [0:0] out_c0_exe7318,
    output wire [31:0] out_c0_exe8319,
    output wire [31:0] out_c0_exe9320,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d1x115_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x115_conv2d1x1_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe10321;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe11322;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe12323;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe13324;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe14325;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe15326;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe16327;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe17328;
    wire [32:0] bb_conv2d1x1_B6_stall_region_out_c0_exe18329;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe19330;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe20331;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe21;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe22;
    wire [63:0] bb_conv2d1x1_B6_stall_region_out_c0_exe2313;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe3314;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe4315;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe5316;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe6317;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe7318;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe8319;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe9320;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_stall_out;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_valid_out;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe10321;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe11322;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe12323;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe13324;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe14325;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe15326;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe16327;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe17328;
    wire [32:0] conv2d1x1_B6_branch_out_c0_exe18329;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe19330;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe20331;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe21;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe22;
    wire [63:0] conv2d1x1_B6_branch_out_c0_exe2313;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe3314;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe4315;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe6317;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe7318;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe8319;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe9320;
    wire [0:0] conv2d1x1_B6_branch_out_stall_out;
    wire [0:0] conv2d1x1_B6_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B6_branch_out_valid_out_1;
    wire [9:0] conv2d1x1_B6_merge_out_ap_pop113;
    wire [0:0] conv2d1x1_B6_merge_out_forked23;
    wire [31:0] conv2d1x1_B6_merge_out_ij_068_pop13116;
    wire [31:0] conv2d1x1_B6_merge_out_lm51_pop18120;
    wire [31:0] conv2d1x1_B6_merge_out_lm97;
    wire [31:0] conv2d1x1_B6_merge_out_mul100107;
    wire [31:0] conv2d1x1_B6_merge_out_mul10057_pop20122;
    wire [31:0] conv2d1x1_B6_merge_out_mul21102;
    wire [31:0] conv2d1x1_B6_merge_out_mul2154_pop19121;
    wire [31:0] conv2d1x1_B6_merge_out_mul48_pop14117;
    wire [31:0] conv2d1x1_B6_merge_out_mul92;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp38115;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp43112;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp4360_pop21123;
    wire [0:0] conv2d1x1_B6_merge_out_pop15118;
    wire [0:0] conv2d1x1_B6_merge_out_pop16114;
    wire [0:0] conv2d1x1_B6_merge_out_pop17119;
    wire [0:0] conv2d1x1_B6_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B6_merge_out_stall_out_1;
    wire [0:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x111;
    wire [0:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x112;
    wire [0:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x113;
    wire [32:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x114;
    wire [0:0] conv2d1x1_B6_merge_out_valid_out;


    // conv2d1x1_B6_merge(BLACKBOX,4)
    conv2d1x1_B6_merge theconv2d1x1_B6_merge (
        .in_ap_pop113_0(in_ap_pop113_0),
        .in_ap_pop113_1(in_ap_pop113_1),
        .in_forked23_0(in_forked23_0),
        .in_forked23_1(in_forked23_1),
        .in_ij_068_pop13116_0(in_ij_068_pop13116_0),
        .in_ij_068_pop13116_1(in_ij_068_pop13116_1),
        .in_lm51_pop18120_0(in_lm51_pop18120_0),
        .in_lm51_pop18120_1(in_lm51_pop18120_1),
        .in_lm97_0(in_lm97_0),
        .in_lm97_1(in_lm97_1),
        .in_mul100107_0(in_mul100107_0),
        .in_mul100107_1(in_mul100107_1),
        .in_mul10057_pop20122_0(in_mul10057_pop20122_0),
        .in_mul10057_pop20122_1(in_mul10057_pop20122_1),
        .in_mul21102_0(in_mul21102_0),
        .in_mul21102_1(in_mul21102_1),
        .in_mul2154_pop19121_0(in_mul2154_pop19121_0),
        .in_mul2154_pop19121_1(in_mul2154_pop19121_1),
        .in_mul48_pop14117_0(in_mul48_pop14117_0),
        .in_mul48_pop14117_1(in_mul48_pop14117_1),
        .in_mul92_0(in_mul92_0),
        .in_mul92_1(in_mul92_1),
        .in_notcmp38115_0(in_notcmp38115_0),
        .in_notcmp38115_1(in_notcmp38115_1),
        .in_notcmp43112_0(in_notcmp43112_0),
        .in_notcmp43112_1(in_notcmp43112_1),
        .in_notcmp4360_pop21123_0(in_notcmp4360_pop21123_0),
        .in_notcmp4360_pop21123_1(in_notcmp4360_pop21123_1),
        .in_pop15118_0(in_pop15118_0),
        .in_pop15118_1(in_pop15118_1),
        .in_pop16114_0(in_pop16114_0),
        .in_pop16114_1(in_pop16114_1),
        .in_pop17119_0(in_pop17119_0),
        .in_pop17119_1(in_pop17119_1),
        .in_stall_in(bb_conv2d1x1_B6_stall_region_out_stall_out),
        .in_unnamed_conv2d1x111_0(in_unnamed_conv2d1x111_0),
        .in_unnamed_conv2d1x111_1(in_unnamed_conv2d1x111_1),
        .in_unnamed_conv2d1x112_0(in_unnamed_conv2d1x112_0),
        .in_unnamed_conv2d1x112_1(in_unnamed_conv2d1x112_1),
        .in_unnamed_conv2d1x113_0(in_unnamed_conv2d1x113_0),
        .in_unnamed_conv2d1x113_1(in_unnamed_conv2d1x113_1),
        .in_unnamed_conv2d1x114_0(in_unnamed_conv2d1x114_0),
        .in_unnamed_conv2d1x114_1(in_unnamed_conv2d1x114_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_ap_pop113(conv2d1x1_B6_merge_out_ap_pop113),
        .out_forked23(conv2d1x1_B6_merge_out_forked23),
        .out_ij_068_pop13116(conv2d1x1_B6_merge_out_ij_068_pop13116),
        .out_lm51_pop18120(conv2d1x1_B6_merge_out_lm51_pop18120),
        .out_lm97(conv2d1x1_B6_merge_out_lm97),
        .out_mul100107(conv2d1x1_B6_merge_out_mul100107),
        .out_mul10057_pop20122(conv2d1x1_B6_merge_out_mul10057_pop20122),
        .out_mul21102(conv2d1x1_B6_merge_out_mul21102),
        .out_mul2154_pop19121(conv2d1x1_B6_merge_out_mul2154_pop19121),
        .out_mul48_pop14117(conv2d1x1_B6_merge_out_mul48_pop14117),
        .out_mul92(conv2d1x1_B6_merge_out_mul92),
        .out_notcmp38115(conv2d1x1_B6_merge_out_notcmp38115),
        .out_notcmp43112(conv2d1x1_B6_merge_out_notcmp43112),
        .out_notcmp4360_pop21123(conv2d1x1_B6_merge_out_notcmp4360_pop21123),
        .out_pop15118(conv2d1x1_B6_merge_out_pop15118),
        .out_pop16114(conv2d1x1_B6_merge_out_pop16114),
        .out_pop17119(conv2d1x1_B6_merge_out_pop17119),
        .out_stall_out_0(conv2d1x1_B6_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B6_merge_out_stall_out_1),
        .out_unnamed_conv2d1x111(conv2d1x1_B6_merge_out_unnamed_conv2d1x111),
        .out_unnamed_conv2d1x112(conv2d1x1_B6_merge_out_unnamed_conv2d1x112),
        .out_unnamed_conv2d1x113(conv2d1x1_B6_merge_out_unnamed_conv2d1x113),
        .out_unnamed_conv2d1x114(conv2d1x1_B6_merge_out_unnamed_conv2d1x114),
        .out_valid_out(conv2d1x1_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B6_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B6_stall_region thebb_conv2d1x1_B6_stall_region (
        .in_ap_pop113(conv2d1x1_B6_merge_out_ap_pop113),
        .in_flush(in_flush),
        .in_forked23(conv2d1x1_B6_merge_out_forked23),
        .in_ij_068_pop13116(conv2d1x1_B6_merge_out_ij_068_pop13116),
        .in_lm51_pop18120(conv2d1x1_B6_merge_out_lm51_pop18120),
        .in_lm97(conv2d1x1_B6_merge_out_lm97),
        .in_mul100107(conv2d1x1_B6_merge_out_mul100107),
        .in_mul10057_pop20122(conv2d1x1_B6_merge_out_mul10057_pop20122),
        .in_mul21102(conv2d1x1_B6_merge_out_mul21102),
        .in_mul2154_pop19121(conv2d1x1_B6_merge_out_mul2154_pop19121),
        .in_mul48_pop14117(conv2d1x1_B6_merge_out_mul48_pop14117),
        .in_mul92(conv2d1x1_B6_merge_out_mul92),
        .in_notcmp38115(conv2d1x1_B6_merge_out_notcmp38115),
        .in_notcmp43112(conv2d1x1_B6_merge_out_notcmp43112),
        .in_notcmp4360_pop21123(conv2d1x1_B6_merge_out_notcmp4360_pop21123),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop15118(conv2d1x1_B6_merge_out_pop15118),
        .in_pop16114(conv2d1x1_B6_merge_out_pop16114),
        .in_pop17119(conv2d1x1_B6_merge_out_pop17119),
        .in_stall_in(conv2d1x1_B6_branch_out_stall_out),
        .in_unnamed_conv2d1x111(conv2d1x1_B6_merge_out_unnamed_conv2d1x111),
        .in_unnamed_conv2d1x112(conv2d1x1_B6_merge_out_unnamed_conv2d1x112),
        .in_unnamed_conv2d1x113(conv2d1x1_B6_merge_out_unnamed_conv2d1x113),
        .in_unnamed_conv2d1x114(conv2d1x1_B6_merge_out_unnamed_conv2d1x114),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdata(in_unnamed_conv2d1x115_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_writeack(in_unnamed_conv2d1x115_conv2d1x1_avm_writeack),
        .in_valid_in(conv2d1x1_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out(bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out(bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out),
        .out_c0_exe10321(bb_conv2d1x1_B6_stall_region_out_c0_exe10321),
        .out_c0_exe11322(bb_conv2d1x1_B6_stall_region_out_c0_exe11322),
        .out_c0_exe12323(bb_conv2d1x1_B6_stall_region_out_c0_exe12323),
        .out_c0_exe13324(bb_conv2d1x1_B6_stall_region_out_c0_exe13324),
        .out_c0_exe14325(bb_conv2d1x1_B6_stall_region_out_c0_exe14325),
        .out_c0_exe15326(bb_conv2d1x1_B6_stall_region_out_c0_exe15326),
        .out_c0_exe16327(bb_conv2d1x1_B6_stall_region_out_c0_exe16327),
        .out_c0_exe17328(bb_conv2d1x1_B6_stall_region_out_c0_exe17328),
        .out_c0_exe18329(bb_conv2d1x1_B6_stall_region_out_c0_exe18329),
        .out_c0_exe19330(bb_conv2d1x1_B6_stall_region_out_c0_exe19330),
        .out_c0_exe20331(bb_conv2d1x1_B6_stall_region_out_c0_exe20331),
        .out_c0_exe21(bb_conv2d1x1_B6_stall_region_out_c0_exe21),
        .out_c0_exe22(bb_conv2d1x1_B6_stall_region_out_c0_exe22),
        .out_c0_exe2313(bb_conv2d1x1_B6_stall_region_out_c0_exe2313),
        .out_c0_exe3314(bb_conv2d1x1_B6_stall_region_out_c0_exe3314),
        .out_c0_exe4315(bb_conv2d1x1_B6_stall_region_out_c0_exe4315),
        .out_c0_exe5316(bb_conv2d1x1_B6_stall_region_out_c0_exe5316),
        .out_c0_exe6317(bb_conv2d1x1_B6_stall_region_out_c0_exe6317),
        .out_c0_exe7318(bb_conv2d1x1_B6_stall_region_out_c0_exe7318),
        .out_c0_exe8319(bb_conv2d1x1_B6_stall_region_out_c0_exe8319),
        .out_c0_exe9320(bb_conv2d1x1_B6_stall_region_out_c0_exe9320),
        .out_pipeline_valid_out(bb_conv2d1x1_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d1x1_B6_stall_region_out_stall_out),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_address(bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount(bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable(bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_enable(bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_read(bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_write(bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_writedata(bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata),
        .out_valid_out(bb_conv2d1x1_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B6_branch(BLACKBOX,3)
    conv2d1x1_B6_branch theconv2d1x1_B6_branch (
        .in_c0_exe10321(bb_conv2d1x1_B6_stall_region_out_c0_exe10321),
        .in_c0_exe11322(bb_conv2d1x1_B6_stall_region_out_c0_exe11322),
        .in_c0_exe12323(bb_conv2d1x1_B6_stall_region_out_c0_exe12323),
        .in_c0_exe13324(bb_conv2d1x1_B6_stall_region_out_c0_exe13324),
        .in_c0_exe14325(bb_conv2d1x1_B6_stall_region_out_c0_exe14325),
        .in_c0_exe15326(bb_conv2d1x1_B6_stall_region_out_c0_exe15326),
        .in_c0_exe16327(bb_conv2d1x1_B6_stall_region_out_c0_exe16327),
        .in_c0_exe17328(bb_conv2d1x1_B6_stall_region_out_c0_exe17328),
        .in_c0_exe18329(bb_conv2d1x1_B6_stall_region_out_c0_exe18329),
        .in_c0_exe19330(bb_conv2d1x1_B6_stall_region_out_c0_exe19330),
        .in_c0_exe20331(bb_conv2d1x1_B6_stall_region_out_c0_exe20331),
        .in_c0_exe21(bb_conv2d1x1_B6_stall_region_out_c0_exe21),
        .in_c0_exe22(bb_conv2d1x1_B6_stall_region_out_c0_exe22),
        .in_c0_exe2313(bb_conv2d1x1_B6_stall_region_out_c0_exe2313),
        .in_c0_exe3314(bb_conv2d1x1_B6_stall_region_out_c0_exe3314),
        .in_c0_exe4315(bb_conv2d1x1_B6_stall_region_out_c0_exe4315),
        .in_c0_exe5316(bb_conv2d1x1_B6_stall_region_out_c0_exe5316),
        .in_c0_exe6317(bb_conv2d1x1_B6_stall_region_out_c0_exe6317),
        .in_c0_exe7318(bb_conv2d1x1_B6_stall_region_out_c0_exe7318),
        .in_c0_exe8319(bb_conv2d1x1_B6_stall_region_out_c0_exe8319),
        .in_c0_exe9320(bb_conv2d1x1_B6_stall_region_out_c0_exe9320),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d1x1_B6_stall_region_out_valid_out),
        .out_c0_exe10321(conv2d1x1_B6_branch_out_c0_exe10321),
        .out_c0_exe11322(conv2d1x1_B6_branch_out_c0_exe11322),
        .out_c0_exe12323(conv2d1x1_B6_branch_out_c0_exe12323),
        .out_c0_exe13324(conv2d1x1_B6_branch_out_c0_exe13324),
        .out_c0_exe14325(conv2d1x1_B6_branch_out_c0_exe14325),
        .out_c0_exe15326(conv2d1x1_B6_branch_out_c0_exe15326),
        .out_c0_exe16327(conv2d1x1_B6_branch_out_c0_exe16327),
        .out_c0_exe17328(conv2d1x1_B6_branch_out_c0_exe17328),
        .out_c0_exe18329(conv2d1x1_B6_branch_out_c0_exe18329),
        .out_c0_exe19330(conv2d1x1_B6_branch_out_c0_exe19330),
        .out_c0_exe20331(conv2d1x1_B6_branch_out_c0_exe20331),
        .out_c0_exe21(conv2d1x1_B6_branch_out_c0_exe21),
        .out_c0_exe22(conv2d1x1_B6_branch_out_c0_exe22),
        .out_c0_exe2313(conv2d1x1_B6_branch_out_c0_exe2313),
        .out_c0_exe3314(conv2d1x1_B6_branch_out_c0_exe3314),
        .out_c0_exe4315(conv2d1x1_B6_branch_out_c0_exe4315),
        .out_c0_exe6317(conv2d1x1_B6_branch_out_c0_exe6317),
        .out_c0_exe7318(conv2d1x1_B6_branch_out_c0_exe7318),
        .out_c0_exe8319(conv2d1x1_B6_branch_out_c0_exe8319),
        .out_c0_exe9320(conv2d1x1_B6_branch_out_c0_exe9320),
        .out_stall_out(conv2d1x1_B6_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B6_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10321(GPOUT,61)
    assign out_c0_exe10321 = conv2d1x1_B6_branch_out_c0_exe10321;

    // out_c0_exe11322(GPOUT,62)
    assign out_c0_exe11322 = conv2d1x1_B6_branch_out_c0_exe11322;

    // out_c0_exe12323(GPOUT,63)
    assign out_c0_exe12323 = conv2d1x1_B6_branch_out_c0_exe12323;

    // out_c0_exe13324(GPOUT,64)
    assign out_c0_exe13324 = conv2d1x1_B6_branch_out_c0_exe13324;

    // out_c0_exe14325(GPOUT,65)
    assign out_c0_exe14325 = conv2d1x1_B6_branch_out_c0_exe14325;

    // out_c0_exe15326(GPOUT,66)
    assign out_c0_exe15326 = conv2d1x1_B6_branch_out_c0_exe15326;

    // out_c0_exe16327(GPOUT,67)
    assign out_c0_exe16327 = conv2d1x1_B6_branch_out_c0_exe16327;

    // out_c0_exe17328(GPOUT,68)
    assign out_c0_exe17328 = conv2d1x1_B6_branch_out_c0_exe17328;

    // out_c0_exe18329(GPOUT,69)
    assign out_c0_exe18329 = conv2d1x1_B6_branch_out_c0_exe18329;

    // out_c0_exe19330(GPOUT,70)
    assign out_c0_exe19330 = conv2d1x1_B6_branch_out_c0_exe19330;

    // out_c0_exe20331(GPOUT,71)
    assign out_c0_exe20331 = conv2d1x1_B6_branch_out_c0_exe20331;

    // out_c0_exe21(GPOUT,72)
    assign out_c0_exe21 = conv2d1x1_B6_branch_out_c0_exe21;

    // out_c0_exe22(GPOUT,73)
    assign out_c0_exe22 = conv2d1x1_B6_branch_out_c0_exe22;

    // out_c0_exe2313(GPOUT,74)
    assign out_c0_exe2313 = conv2d1x1_B6_branch_out_c0_exe2313;

    // out_c0_exe3314(GPOUT,75)
    assign out_c0_exe3314 = conv2d1x1_B6_branch_out_c0_exe3314;

    // out_c0_exe4315(GPOUT,76)
    assign out_c0_exe4315 = conv2d1x1_B6_branch_out_c0_exe4315;

    // out_c0_exe6317(GPOUT,77)
    assign out_c0_exe6317 = conv2d1x1_B6_branch_out_c0_exe6317;

    // out_c0_exe7318(GPOUT,78)
    assign out_c0_exe7318 = conv2d1x1_B6_branch_out_c0_exe7318;

    // out_c0_exe8319(GPOUT,79)
    assign out_c0_exe8319 = conv2d1x1_B6_branch_out_c0_exe8319;

    // out_c0_exe9320(GPOUT,80)
    assign out_c0_exe9320 = conv2d1x1_B6_branch_out_c0_exe9320;

    // out_exiting_stall_out(GPOUT,81)
    assign out_exiting_stall_out = bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,82)
    assign out_exiting_valid_out = bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out;

    // out_stall_in_0(GPOUT,83)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,84)
    assign out_stall_out_0 = conv2d1x1_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,85)
    assign out_stall_out_1 = conv2d1x1_B6_merge_out_stall_out_1;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_address(GPOUT,86)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_address = bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount(GPOUT,87)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount = bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable(GPOUT,88)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable = bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_enable(GPOUT,89)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_enable = bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_read(GPOUT,90)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_read = bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_write(GPOUT,91)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_write = bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x115_conv2d1x1_avm_writedata(GPOUT,92)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_writedata = bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;

    // out_valid_in_0(GPOUT,93)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,94)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,95)
    assign out_valid_out_0 = conv2d1x1_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,96)
    assign out_valid_out_1 = conv2d1x1_B6_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,98)
    assign out_pipeline_valid_out = bb_conv2d1x1_B6_stall_region_out_pipeline_valid_out;

endmodule
