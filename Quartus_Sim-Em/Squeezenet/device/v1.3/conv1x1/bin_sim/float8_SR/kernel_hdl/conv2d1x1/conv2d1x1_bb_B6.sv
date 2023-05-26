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
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B6 (
    input wire [9:0] in_ap_pop133_0,
    input wire [9:0] in_ap_pop133_1,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked31_0,
    input wire [0:0] in_forked31_1,
    input wire [31:0] in_ij_0104_pop13136_0,
    input wire [31:0] in_ij_0104_pop13136_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_lm117_0,
    input wire [31:0] in_lm117_1,
    input wire [31:0] in_lm59_pop18140_0,
    input wire [31:0] in_lm59_pop18140_1,
    input wire [31:0] in_mul112_0,
    input wire [31:0] in_mul112_1,
    input wire [31:0] in_mul156127_0,
    input wire [31:0] in_mul156127_1,
    input wire [31:0] in_mul15665_pop20142_0,
    input wire [31:0] in_mul15665_pop20142_1,
    input wire [31:0] in_mul21122_0,
    input wire [31:0] in_mul21122_1,
    input wire [31:0] in_mul2162_pop19141_0,
    input wire [31:0] in_mul2162_pop19141_1,
    input wire [31:0] in_mul56_pop14137_0,
    input wire [31:0] in_mul56_pop14137_1,
    input wire [0:0] in_notcmp46135_0,
    input wire [0:0] in_notcmp46135_1,
    input wire [0:0] in_notcmp51132_0,
    input wire [0:0] in_notcmp51132_1,
    input wire [0:0] in_notcmp5168_pop21143_0,
    input wire [0:0] in_notcmp5168_pop21143_1,
    input wire [63:0] in_output_im,
    input wire [0:0] in_pop15138_0,
    input wire [0:0] in_pop15138_1,
    input wire [0:0] in_pop16134_0,
    input wire [0:0] in_pop16134_1,
    input wire [0:0] in_pop17139_0,
    input wire [0:0] in_pop17139_1,
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
    input wire [1023:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10375,
    output wire [0:0] out_c0_exe11376,
    output wire [0:0] out_c0_exe12377,
    output wire [31:0] out_c0_exe13378,
    output wire [31:0] out_c0_exe14379,
    output wire [0:0] out_c0_exe15380,
    output wire [0:0] out_c0_exe16381,
    output wire [0:0] out_c0_exe17382,
    output wire [32:0] out_c0_exe18383,
    output wire [31:0] out_c0_exe19384,
    output wire [31:0] out_c0_exe20385,
    output wire [31:0] out_c0_exe21386,
    output wire [0:0] out_c0_exe22387,
    output wire [63:0] out_c0_exe2367,
    output wire [0:0] out_c0_exe3368,
    output wire [0:0] out_c0_exe4369,
    output wire [31:0] out_c0_exe6371,
    output wire [0:0] out_c0_exe7372,
    output wire [31:0] out_c0_exe8373,
    output wire [31:0] out_c0_exe9374,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d1x115_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount,
    output wire [127:0] out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_write,
    output wire [1023:0] out_unnamed_conv2d1x115_conv2d1x1_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_conv2d1x16_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_conv2d1x16_exiting_valid_out;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe10375;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe11376;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe12377;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe13378;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe14379;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe15380;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe16381;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe17382;
    wire [32:0] bb_conv2d1x1_B6_stall_region_out_c0_exe18383;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe19384;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe20385;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe21386;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe22387;
    wire [63:0] bb_conv2d1x1_B6_stall_region_out_c0_exe2367;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe3368;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe4369;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe5370;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe6371;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_c0_exe7372;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe8373;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_c0_exe9374;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_stall_out;
    wire [31:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;
    wire [127:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_write;
    wire [1023:0] bb_conv2d1x1_B6_stall_region_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B6_stall_region_out_valid_out;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe10375;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe11376;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe12377;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe13378;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe14379;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe15380;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe16381;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe17382;
    wire [32:0] conv2d1x1_B6_branch_out_c0_exe18383;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe19384;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe20385;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe21386;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe22387;
    wire [63:0] conv2d1x1_B6_branch_out_c0_exe2367;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe3368;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe4369;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe6371;
    wire [0:0] conv2d1x1_B6_branch_out_c0_exe7372;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe8373;
    wire [31:0] conv2d1x1_B6_branch_out_c0_exe9374;
    wire [0:0] conv2d1x1_B6_branch_out_stall_out;
    wire [0:0] conv2d1x1_B6_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B6_branch_out_valid_out_1;
    wire [9:0] conv2d1x1_B6_merge_out_ap_pop133;
    wire [0:0] conv2d1x1_B6_merge_out_forked31;
    wire [31:0] conv2d1x1_B6_merge_out_ij_0104_pop13136;
    wire [31:0] conv2d1x1_B6_merge_out_lm117;
    wire [31:0] conv2d1x1_B6_merge_out_lm59_pop18140;
    wire [31:0] conv2d1x1_B6_merge_out_mul112;
    wire [31:0] conv2d1x1_B6_merge_out_mul156127;
    wire [31:0] conv2d1x1_B6_merge_out_mul15665_pop20142;
    wire [31:0] conv2d1x1_B6_merge_out_mul21122;
    wire [31:0] conv2d1x1_B6_merge_out_mul2162_pop19141;
    wire [31:0] conv2d1x1_B6_merge_out_mul56_pop14137;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp46135;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp51132;
    wire [0:0] conv2d1x1_B6_merge_out_notcmp5168_pop21143;
    wire [0:0] conv2d1x1_B6_merge_out_pop15138;
    wire [0:0] conv2d1x1_B6_merge_out_pop16134;
    wire [0:0] conv2d1x1_B6_merge_out_pop17139;
    wire [0:0] conv2d1x1_B6_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B6_merge_out_stall_out_1;
    wire [0:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x111;
    wire [0:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x112;
    wire [0:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x113;
    wire [32:0] conv2d1x1_B6_merge_out_unnamed_conv2d1x114;
    wire [0:0] conv2d1x1_B6_merge_out_valid_out;


    // conv2d1x1_B6_merge(BLACKBOX,4)
    conv2d1x1_B6_merge theconv2d1x1_B6_merge (
        .in_ap_pop133_0(in_ap_pop133_0),
        .in_ap_pop133_1(in_ap_pop133_1),
        .in_forked31_0(in_forked31_0),
        .in_forked31_1(in_forked31_1),
        .in_ij_0104_pop13136_0(in_ij_0104_pop13136_0),
        .in_ij_0104_pop13136_1(in_ij_0104_pop13136_1),
        .in_lm117_0(in_lm117_0),
        .in_lm117_1(in_lm117_1),
        .in_lm59_pop18140_0(in_lm59_pop18140_0),
        .in_lm59_pop18140_1(in_lm59_pop18140_1),
        .in_mul112_0(in_mul112_0),
        .in_mul112_1(in_mul112_1),
        .in_mul156127_0(in_mul156127_0),
        .in_mul156127_1(in_mul156127_1),
        .in_mul15665_pop20142_0(in_mul15665_pop20142_0),
        .in_mul15665_pop20142_1(in_mul15665_pop20142_1),
        .in_mul21122_0(in_mul21122_0),
        .in_mul21122_1(in_mul21122_1),
        .in_mul2162_pop19141_0(in_mul2162_pop19141_0),
        .in_mul2162_pop19141_1(in_mul2162_pop19141_1),
        .in_mul56_pop14137_0(in_mul56_pop14137_0),
        .in_mul56_pop14137_1(in_mul56_pop14137_1),
        .in_notcmp46135_0(in_notcmp46135_0),
        .in_notcmp46135_1(in_notcmp46135_1),
        .in_notcmp51132_0(in_notcmp51132_0),
        .in_notcmp51132_1(in_notcmp51132_1),
        .in_notcmp5168_pop21143_0(in_notcmp5168_pop21143_0),
        .in_notcmp5168_pop21143_1(in_notcmp5168_pop21143_1),
        .in_pop15138_0(in_pop15138_0),
        .in_pop15138_1(in_pop15138_1),
        .in_pop16134_0(in_pop16134_0),
        .in_pop16134_1(in_pop16134_1),
        .in_pop17139_0(in_pop17139_0),
        .in_pop17139_1(in_pop17139_1),
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
        .out_ap_pop133(conv2d1x1_B6_merge_out_ap_pop133),
        .out_forked31(conv2d1x1_B6_merge_out_forked31),
        .out_ij_0104_pop13136(conv2d1x1_B6_merge_out_ij_0104_pop13136),
        .out_lm117(conv2d1x1_B6_merge_out_lm117),
        .out_lm59_pop18140(conv2d1x1_B6_merge_out_lm59_pop18140),
        .out_mul112(conv2d1x1_B6_merge_out_mul112),
        .out_mul156127(conv2d1x1_B6_merge_out_mul156127),
        .out_mul15665_pop20142(conv2d1x1_B6_merge_out_mul15665_pop20142),
        .out_mul21122(conv2d1x1_B6_merge_out_mul21122),
        .out_mul2162_pop19141(conv2d1x1_B6_merge_out_mul2162_pop19141),
        .out_mul56_pop14137(conv2d1x1_B6_merge_out_mul56_pop14137),
        .out_notcmp46135(conv2d1x1_B6_merge_out_notcmp46135),
        .out_notcmp51132(conv2d1x1_B6_merge_out_notcmp51132),
        .out_notcmp5168_pop21143(conv2d1x1_B6_merge_out_notcmp5168_pop21143),
        .out_pop15138(conv2d1x1_B6_merge_out_pop15138),
        .out_pop16134(conv2d1x1_B6_merge_out_pop16134),
        .out_pop17139(conv2d1x1_B6_merge_out_pop17139),
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
        .in_ap_pop133(conv2d1x1_B6_merge_out_ap_pop133),
        .in_flush(in_flush),
        .in_forked31(conv2d1x1_B6_merge_out_forked31),
        .in_ij_0104_pop13136(conv2d1x1_B6_merge_out_ij_0104_pop13136),
        .in_lm117(conv2d1x1_B6_merge_out_lm117),
        .in_lm59_pop18140(conv2d1x1_B6_merge_out_lm59_pop18140),
        .in_mul112(conv2d1x1_B6_merge_out_mul112),
        .in_mul156127(conv2d1x1_B6_merge_out_mul156127),
        .in_mul15665_pop20142(conv2d1x1_B6_merge_out_mul15665_pop20142),
        .in_mul21122(conv2d1x1_B6_merge_out_mul21122),
        .in_mul2162_pop19141(conv2d1x1_B6_merge_out_mul2162_pop19141),
        .in_mul56_pop14137(conv2d1x1_B6_merge_out_mul56_pop14137),
        .in_notcmp46135(conv2d1x1_B6_merge_out_notcmp46135),
        .in_notcmp51132(conv2d1x1_B6_merge_out_notcmp51132),
        .in_notcmp5168_pop21143(conv2d1x1_B6_merge_out_notcmp5168_pop21143),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop15138(conv2d1x1_B6_merge_out_pop15138),
        .in_pop16134(conv2d1x1_B6_merge_out_pop16134),
        .in_pop17139(conv2d1x1_B6_merge_out_pop17139),
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
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_conv2d1x16_exiting_stall_out(bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_conv2d1x16_exiting_valid_out(bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_conv2d1x16_exiting_valid_out),
        .out_c0_exe10375(bb_conv2d1x1_B6_stall_region_out_c0_exe10375),
        .out_c0_exe11376(bb_conv2d1x1_B6_stall_region_out_c0_exe11376),
        .out_c0_exe12377(bb_conv2d1x1_B6_stall_region_out_c0_exe12377),
        .out_c0_exe13378(bb_conv2d1x1_B6_stall_region_out_c0_exe13378),
        .out_c0_exe14379(bb_conv2d1x1_B6_stall_region_out_c0_exe14379),
        .out_c0_exe15380(bb_conv2d1x1_B6_stall_region_out_c0_exe15380),
        .out_c0_exe16381(bb_conv2d1x1_B6_stall_region_out_c0_exe16381),
        .out_c0_exe17382(bb_conv2d1x1_B6_stall_region_out_c0_exe17382),
        .out_c0_exe18383(bb_conv2d1x1_B6_stall_region_out_c0_exe18383),
        .out_c0_exe19384(bb_conv2d1x1_B6_stall_region_out_c0_exe19384),
        .out_c0_exe20385(bb_conv2d1x1_B6_stall_region_out_c0_exe20385),
        .out_c0_exe21386(bb_conv2d1x1_B6_stall_region_out_c0_exe21386),
        .out_c0_exe22387(bb_conv2d1x1_B6_stall_region_out_c0_exe22387),
        .out_c0_exe2367(bb_conv2d1x1_B6_stall_region_out_c0_exe2367),
        .out_c0_exe3368(bb_conv2d1x1_B6_stall_region_out_c0_exe3368),
        .out_c0_exe4369(bb_conv2d1x1_B6_stall_region_out_c0_exe4369),
        .out_c0_exe5370(bb_conv2d1x1_B6_stall_region_out_c0_exe5370),
        .out_c0_exe6371(bb_conv2d1x1_B6_stall_region_out_c0_exe6371),
        .out_c0_exe7372(bb_conv2d1x1_B6_stall_region_out_c0_exe7372),
        .out_c0_exe8373(bb_conv2d1x1_B6_stall_region_out_c0_exe8373),
        .out_c0_exe9374(bb_conv2d1x1_B6_stall_region_out_c0_exe9374),
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
        .in_c0_exe10375(bb_conv2d1x1_B6_stall_region_out_c0_exe10375),
        .in_c0_exe11376(bb_conv2d1x1_B6_stall_region_out_c0_exe11376),
        .in_c0_exe12377(bb_conv2d1x1_B6_stall_region_out_c0_exe12377),
        .in_c0_exe13378(bb_conv2d1x1_B6_stall_region_out_c0_exe13378),
        .in_c0_exe14379(bb_conv2d1x1_B6_stall_region_out_c0_exe14379),
        .in_c0_exe15380(bb_conv2d1x1_B6_stall_region_out_c0_exe15380),
        .in_c0_exe16381(bb_conv2d1x1_B6_stall_region_out_c0_exe16381),
        .in_c0_exe17382(bb_conv2d1x1_B6_stall_region_out_c0_exe17382),
        .in_c0_exe18383(bb_conv2d1x1_B6_stall_region_out_c0_exe18383),
        .in_c0_exe19384(bb_conv2d1x1_B6_stall_region_out_c0_exe19384),
        .in_c0_exe20385(bb_conv2d1x1_B6_stall_region_out_c0_exe20385),
        .in_c0_exe21386(bb_conv2d1x1_B6_stall_region_out_c0_exe21386),
        .in_c0_exe22387(bb_conv2d1x1_B6_stall_region_out_c0_exe22387),
        .in_c0_exe2367(bb_conv2d1x1_B6_stall_region_out_c0_exe2367),
        .in_c0_exe3368(bb_conv2d1x1_B6_stall_region_out_c0_exe3368),
        .in_c0_exe4369(bb_conv2d1x1_B6_stall_region_out_c0_exe4369),
        .in_c0_exe5370(bb_conv2d1x1_B6_stall_region_out_c0_exe5370),
        .in_c0_exe6371(bb_conv2d1x1_B6_stall_region_out_c0_exe6371),
        .in_c0_exe7372(bb_conv2d1x1_B6_stall_region_out_c0_exe7372),
        .in_c0_exe8373(bb_conv2d1x1_B6_stall_region_out_c0_exe8373),
        .in_c0_exe9374(bb_conv2d1x1_B6_stall_region_out_c0_exe9374),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d1x1_B6_stall_region_out_valid_out),
        .out_c0_exe10375(conv2d1x1_B6_branch_out_c0_exe10375),
        .out_c0_exe11376(conv2d1x1_B6_branch_out_c0_exe11376),
        .out_c0_exe12377(conv2d1x1_B6_branch_out_c0_exe12377),
        .out_c0_exe13378(conv2d1x1_B6_branch_out_c0_exe13378),
        .out_c0_exe14379(conv2d1x1_B6_branch_out_c0_exe14379),
        .out_c0_exe15380(conv2d1x1_B6_branch_out_c0_exe15380),
        .out_c0_exe16381(conv2d1x1_B6_branch_out_c0_exe16381),
        .out_c0_exe17382(conv2d1x1_B6_branch_out_c0_exe17382),
        .out_c0_exe18383(conv2d1x1_B6_branch_out_c0_exe18383),
        .out_c0_exe19384(conv2d1x1_B6_branch_out_c0_exe19384),
        .out_c0_exe20385(conv2d1x1_B6_branch_out_c0_exe20385),
        .out_c0_exe21386(conv2d1x1_B6_branch_out_c0_exe21386),
        .out_c0_exe22387(conv2d1x1_B6_branch_out_c0_exe22387),
        .out_c0_exe2367(conv2d1x1_B6_branch_out_c0_exe2367),
        .out_c0_exe3368(conv2d1x1_B6_branch_out_c0_exe3368),
        .out_c0_exe4369(conv2d1x1_B6_branch_out_c0_exe4369),
        .out_c0_exe6371(conv2d1x1_B6_branch_out_c0_exe6371),
        .out_c0_exe7372(conv2d1x1_B6_branch_out_c0_exe7372),
        .out_c0_exe8373(conv2d1x1_B6_branch_out_c0_exe8373),
        .out_c0_exe9374(conv2d1x1_B6_branch_out_c0_exe9374),
        .out_stall_out(conv2d1x1_B6_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B6_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10375(GPOUT,61)
    assign out_c0_exe10375 = conv2d1x1_B6_branch_out_c0_exe10375;

    // out_c0_exe11376(GPOUT,62)
    assign out_c0_exe11376 = conv2d1x1_B6_branch_out_c0_exe11376;

    // out_c0_exe12377(GPOUT,63)
    assign out_c0_exe12377 = conv2d1x1_B6_branch_out_c0_exe12377;

    // out_c0_exe13378(GPOUT,64)
    assign out_c0_exe13378 = conv2d1x1_B6_branch_out_c0_exe13378;

    // out_c0_exe14379(GPOUT,65)
    assign out_c0_exe14379 = conv2d1x1_B6_branch_out_c0_exe14379;

    // out_c0_exe15380(GPOUT,66)
    assign out_c0_exe15380 = conv2d1x1_B6_branch_out_c0_exe15380;

    // out_c0_exe16381(GPOUT,67)
    assign out_c0_exe16381 = conv2d1x1_B6_branch_out_c0_exe16381;

    // out_c0_exe17382(GPOUT,68)
    assign out_c0_exe17382 = conv2d1x1_B6_branch_out_c0_exe17382;

    // out_c0_exe18383(GPOUT,69)
    assign out_c0_exe18383 = conv2d1x1_B6_branch_out_c0_exe18383;

    // out_c0_exe19384(GPOUT,70)
    assign out_c0_exe19384 = conv2d1x1_B6_branch_out_c0_exe19384;

    // out_c0_exe20385(GPOUT,71)
    assign out_c0_exe20385 = conv2d1x1_B6_branch_out_c0_exe20385;

    // out_c0_exe21386(GPOUT,72)
    assign out_c0_exe21386 = conv2d1x1_B6_branch_out_c0_exe21386;

    // out_c0_exe22387(GPOUT,73)
    assign out_c0_exe22387 = conv2d1x1_B6_branch_out_c0_exe22387;

    // out_c0_exe2367(GPOUT,74)
    assign out_c0_exe2367 = conv2d1x1_B6_branch_out_c0_exe2367;

    // out_c0_exe3368(GPOUT,75)
    assign out_c0_exe3368 = conv2d1x1_B6_branch_out_c0_exe3368;

    // out_c0_exe4369(GPOUT,76)
    assign out_c0_exe4369 = conv2d1x1_B6_branch_out_c0_exe4369;

    // out_c0_exe6371(GPOUT,77)
    assign out_c0_exe6371 = conv2d1x1_B6_branch_out_c0_exe6371;

    // out_c0_exe7372(GPOUT,78)
    assign out_c0_exe7372 = conv2d1x1_B6_branch_out_c0_exe7372;

    // out_c0_exe8373(GPOUT,79)
    assign out_c0_exe8373 = conv2d1x1_B6_branch_out_c0_exe8373;

    // out_c0_exe9374(GPOUT,80)
    assign out_c0_exe9374 = conv2d1x1_B6_branch_out_c0_exe9374;

    // out_exiting_stall_out(GPOUT,81)
    assign out_exiting_stall_out = bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_conv2d1x16_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,82)
    assign out_exiting_valid_out = bb_conv2d1x1_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_conv2d1x16_exiting_valid_out;

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
