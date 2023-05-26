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

// SystemVerilog created from conv2d1x1_bb_B3
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B3 (
    input wire [63:0] in_acl_global_id_136_0,
    input wire [63:0] in_acl_global_id_136_1,
    input wire [31:0] in_c0_exe14932_0,
    input wire [31:0] in_c0_exe14932_1,
    input wire [63:0] in_c0_exe15_0,
    input wire [63:0] in_c0_exe15_1,
    input wire [63:0] in_c0_exe28_0,
    input wire [63:0] in_c0_exe28_1,
    input wire [31:0] in_c0_exe411_0,
    input wire [31:0] in_c0_exe411_1,
    input wire [63:0] in_c0_exe515_0,
    input wire [63:0] in_c0_exe515_1,
    input wire [0:0] in_c0_exe618_0,
    input wire [0:0] in_c0_exe618_1,
    input wire [0:0] in_c0_exe720_0,
    input wire [0:0] in_c0_exe720_1,
    input wire [0:0] in_c0_exe823_0,
    input wire [0:0] in_c0_exe823_1,
    input wire [0:0] in_c0_exe927_0,
    input wire [0:0] in_c0_exe927_1,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_07030_0,
    input wire [31:0] in_j_07030_1,
    input wire [31:0] in_k49_068_0,
    input wire [31:0] in_k49_068_1,
    input wire [31:0] in_k_065_0,
    input wire [31:0] in_k_065_1,
    input wire [31:0] in_l_grpid_01_0,
    input wire [31:0] in_l_grpid_01_1,
    input wire [511:0] in_lm18_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm18_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm18_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm18_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm20_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm20_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm20_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm20_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm22_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm22_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm22_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm22_conv2d1x1_avm_writeack,
    input wire [127:0] in_lm28179_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm28179_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm28179_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm28179_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm31_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm31_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm31_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm31_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm_conv2d1x1_avm_writeack,
    input wire [127:0] in_memdep_78_conv2d1x1_avm_readdata,
    input wire [0:0] in_memdep_78_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_memdep_78_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memdep_78_conv2d1x1_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_tmp_067_0,
    input wire [31:0] in_tmp_067_1,
    input wire [31:0] in_unnamed_conv2d1x14_0,
    input wire [31:0] in_unnamed_conv2d1x14_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_acl_global_id_136,
    output wire [31:0] out_c0_exe14932,
    output wire [63:0] out_c0_exe15,
    output wire [63:0] out_c0_exe28,
    output wire [31:0] out_c0_exe411,
    output wire [63:0] out_c0_exe515,
    output wire [31:0] out_c0_exe566,
    output wire [0:0] out_c0_exe618,
    output wire [0:0] out_c0_exe720,
    output wire [0:0] out_c0_exe823,
    output wire [0:0] out_c0_exe927,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_inc,
    output wire [31:0] out_j_07030,
    output wire [31:0] out_l_grpid_01,
    output wire [30:0] out_lm18_conv2d1x1_avm_address,
    output wire [4:0] out_lm18_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm18_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm18_conv2d1x1_avm_enable,
    output wire [0:0] out_lm18_conv2d1x1_avm_read,
    output wire [0:0] out_lm18_conv2d1x1_avm_write,
    output wire [511:0] out_lm18_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm20_conv2d1x1_avm_address,
    output wire [4:0] out_lm20_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm20_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm20_conv2d1x1_avm_enable,
    output wire [0:0] out_lm20_conv2d1x1_avm_read,
    output wire [0:0] out_lm20_conv2d1x1_avm_write,
    output wire [511:0] out_lm20_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm22_conv2d1x1_avm_address,
    output wire [4:0] out_lm22_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm22_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm22_conv2d1x1_avm_enable,
    output wire [0:0] out_lm22_conv2d1x1_avm_read,
    output wire [0:0] out_lm22_conv2d1x1_avm_write,
    output wire [511:0] out_lm22_conv2d1x1_avm_writedata,
    output wire [31:0] out_lm28179_conv2d1x1_avm_address,
    output wire [0:0] out_lm28179_conv2d1x1_avm_burstcount,
    output wire [15:0] out_lm28179_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm28179_conv2d1x1_avm_enable,
    output wire [0:0] out_lm28179_conv2d1x1_avm_read,
    output wire [0:0] out_lm28179_conv2d1x1_avm_write,
    output wire [127:0] out_lm28179_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm31_conv2d1x1_avm_address,
    output wire [4:0] out_lm31_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm31_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm31_conv2d1x1_avm_enable,
    output wire [0:0] out_lm31_conv2d1x1_avm_read,
    output wire [0:0] out_lm31_conv2d1x1_avm_write,
    output wire [511:0] out_lm31_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm_conv2d1x1_avm_address,
    output wire [4:0] out_lm_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm_conv2d1x1_avm_enable,
    output wire [0:0] out_lm_conv2d1x1_avm_read,
    output wire [0:0] out_lm_conv2d1x1_avm_write,
    output wire [511:0] out_lm_conv2d1x1_avm_writedata,
    output wire [31:0] out_memdep_78_conv2d1x1_avm_address,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_burstcount,
    output wire [15:0] out_memdep_78_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_enable,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_read,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_write,
    output wire [127:0] out_memdep_78_conv2d1x1_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d1x14,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_conv2d1x1_B3_stall_region_out_acl_global_id_136;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe14932;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_c0_exe15;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_c0_exe28;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe411;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_c0_exe515;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c0_exe566;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe618;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe667;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe720;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe823;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_c0_exe927;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_c1_exe1;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_inc;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_j_07030;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_l_grpid_01;
    wire [30:0] bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_writedata;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_burstcount;
    wire [15:0] bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_write;
    wire [127:0] bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_writedata;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_burstcount;
    wire [15:0] bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_write;
    wire [127:0] bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_stall_out;
    wire [31:0] bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x14;
    wire [0:0] bb_conv2d1x1_B3_stall_region_out_valid_out;
    wire [63:0] conv2d1x1_B3_branch_out_acl_global_id_136;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe14932;
    wire [63:0] conv2d1x1_B3_branch_out_c0_exe15;
    wire [63:0] conv2d1x1_B3_branch_out_c0_exe28;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe411;
    wire [63:0] conv2d1x1_B3_branch_out_c0_exe515;
    wire [31:0] conv2d1x1_B3_branch_out_c0_exe566;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe618;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe720;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe823;
    wire [0:0] conv2d1x1_B3_branch_out_c0_exe927;
    wire [31:0] conv2d1x1_B3_branch_out_c1_exe1;
    wire [31:0] conv2d1x1_B3_branch_out_inc;
    wire [31:0] conv2d1x1_B3_branch_out_j_07030;
    wire [31:0] conv2d1x1_B3_branch_out_l_grpid_01;
    wire [0:0] conv2d1x1_B3_branch_out_stall_out;
    wire [31:0] conv2d1x1_B3_branch_out_unnamed_conv2d1x14;
    wire [0:0] conv2d1x1_B3_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B3_branch_out_valid_out_1;
    wire [63:0] conv2d1x1_B3_merge_out_acl_global_id_136;
    wire [31:0] conv2d1x1_B3_merge_out_c0_exe14932;
    wire [63:0] conv2d1x1_B3_merge_out_c0_exe15;
    wire [63:0] conv2d1x1_B3_merge_out_c0_exe28;
    wire [31:0] conv2d1x1_B3_merge_out_c0_exe411;
    wire [63:0] conv2d1x1_B3_merge_out_c0_exe515;
    wire [0:0] conv2d1x1_B3_merge_out_c0_exe618;
    wire [0:0] conv2d1x1_B3_merge_out_c0_exe720;
    wire [0:0] conv2d1x1_B3_merge_out_c0_exe823;
    wire [0:0] conv2d1x1_B3_merge_out_c0_exe927;
    wire [31:0] conv2d1x1_B3_merge_out_j_07030;
    wire [31:0] conv2d1x1_B3_merge_out_k49_068;
    wire [31:0] conv2d1x1_B3_merge_out_k_065;
    wire [31:0] conv2d1x1_B3_merge_out_l_grpid_01;
    wire [0:0] conv2d1x1_B3_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B3_merge_out_stall_out_1;
    wire [31:0] conv2d1x1_B3_merge_out_tmp_067;
    wire [31:0] conv2d1x1_B3_merge_out_unnamed_conv2d1x14;
    wire [0:0] conv2d1x1_B3_merge_out_valid_out;


    // conv2d1x1_B3_merge(BLACKBOX,4)
    conv2d1x1_B3_merge theconv2d1x1_B3_merge (
        .in_acl_global_id_136_0(in_acl_global_id_136_0),
        .in_acl_global_id_136_1(in_acl_global_id_136_1),
        .in_c0_exe14932_0(in_c0_exe14932_0),
        .in_c0_exe14932_1(in_c0_exe14932_1),
        .in_c0_exe15_0(in_c0_exe15_0),
        .in_c0_exe15_1(in_c0_exe15_1),
        .in_c0_exe28_0(in_c0_exe28_0),
        .in_c0_exe28_1(in_c0_exe28_1),
        .in_c0_exe411_0(in_c0_exe411_0),
        .in_c0_exe411_1(in_c0_exe411_1),
        .in_c0_exe515_0(in_c0_exe515_0),
        .in_c0_exe515_1(in_c0_exe515_1),
        .in_c0_exe618_0(in_c0_exe618_0),
        .in_c0_exe618_1(in_c0_exe618_1),
        .in_c0_exe720_0(in_c0_exe720_0),
        .in_c0_exe720_1(in_c0_exe720_1),
        .in_c0_exe823_0(in_c0_exe823_0),
        .in_c0_exe823_1(in_c0_exe823_1),
        .in_c0_exe927_0(in_c0_exe927_0),
        .in_c0_exe927_1(in_c0_exe927_1),
        .in_j_07030_0(in_j_07030_0),
        .in_j_07030_1(in_j_07030_1),
        .in_k49_068_0(in_k49_068_0),
        .in_k49_068_1(in_k49_068_1),
        .in_k_065_0(in_k_065_0),
        .in_k_065_1(in_k_065_1),
        .in_l_grpid_01_0(in_l_grpid_01_0),
        .in_l_grpid_01_1(in_l_grpid_01_1),
        .in_stall_in(bb_conv2d1x1_B3_stall_region_out_stall_out),
        .in_tmp_067_0(in_tmp_067_0),
        .in_tmp_067_1(in_tmp_067_1),
        .in_unnamed_conv2d1x14_0(in_unnamed_conv2d1x14_0),
        .in_unnamed_conv2d1x14_1(in_unnamed_conv2d1x14_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_acl_global_id_136(conv2d1x1_B3_merge_out_acl_global_id_136),
        .out_c0_exe14932(conv2d1x1_B3_merge_out_c0_exe14932),
        .out_c0_exe15(conv2d1x1_B3_merge_out_c0_exe15),
        .out_c0_exe28(conv2d1x1_B3_merge_out_c0_exe28),
        .out_c0_exe411(conv2d1x1_B3_merge_out_c0_exe411),
        .out_c0_exe515(conv2d1x1_B3_merge_out_c0_exe515),
        .out_c0_exe618(conv2d1x1_B3_merge_out_c0_exe618),
        .out_c0_exe720(conv2d1x1_B3_merge_out_c0_exe720),
        .out_c0_exe823(conv2d1x1_B3_merge_out_c0_exe823),
        .out_c0_exe927(conv2d1x1_B3_merge_out_c0_exe927),
        .out_j_07030(conv2d1x1_B3_merge_out_j_07030),
        .out_k49_068(conv2d1x1_B3_merge_out_k49_068),
        .out_k_065(conv2d1x1_B3_merge_out_k_065),
        .out_l_grpid_01(conv2d1x1_B3_merge_out_l_grpid_01),
        .out_stall_out_0(conv2d1x1_B3_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B3_merge_out_stall_out_1),
        .out_tmp_067(conv2d1x1_B3_merge_out_tmp_067),
        .out_unnamed_conv2d1x14(conv2d1x1_B3_merge_out_unnamed_conv2d1x14),
        .out_valid_out(conv2d1x1_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B3_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B3_stall_region thebb_conv2d1x1_B3_stall_region (
        .in_acl_global_id_136(conv2d1x1_B3_merge_out_acl_global_id_136),
        .in_c0_exe14932(conv2d1x1_B3_merge_out_c0_exe14932),
        .in_c0_exe15(conv2d1x1_B3_merge_out_c0_exe15),
        .in_c0_exe28(conv2d1x1_B3_merge_out_c0_exe28),
        .in_c0_exe411(conv2d1x1_B3_merge_out_c0_exe411),
        .in_c0_exe515(conv2d1x1_B3_merge_out_c0_exe515),
        .in_c0_exe618(conv2d1x1_B3_merge_out_c0_exe618),
        .in_c0_exe720(conv2d1x1_B3_merge_out_c0_exe720),
        .in_c0_exe823(conv2d1x1_B3_merge_out_c0_exe823),
        .in_c0_exe927(conv2d1x1_B3_merge_out_c0_exe927),
        .in_flush(in_flush),
        .in_input_channels(in_input_channels),
        .in_input_im(in_input_im),
        .in_j_07030(conv2d1x1_B3_merge_out_j_07030),
        .in_k49_068(conv2d1x1_B3_merge_out_k49_068),
        .in_k_065(conv2d1x1_B3_merge_out_k_065),
        .in_l_grpid_01(conv2d1x1_B3_merge_out_l_grpid_01),
        .in_lm18_conv2d1x1_avm_readdata(in_lm18_conv2d1x1_avm_readdata),
        .in_lm18_conv2d1x1_avm_readdatavalid(in_lm18_conv2d1x1_avm_readdatavalid),
        .in_lm18_conv2d1x1_avm_waitrequest(in_lm18_conv2d1x1_avm_waitrequest),
        .in_lm18_conv2d1x1_avm_writeack(in_lm18_conv2d1x1_avm_writeack),
        .in_lm20_conv2d1x1_avm_readdata(in_lm20_conv2d1x1_avm_readdata),
        .in_lm20_conv2d1x1_avm_readdatavalid(in_lm20_conv2d1x1_avm_readdatavalid),
        .in_lm20_conv2d1x1_avm_waitrequest(in_lm20_conv2d1x1_avm_waitrequest),
        .in_lm20_conv2d1x1_avm_writeack(in_lm20_conv2d1x1_avm_writeack),
        .in_lm22_conv2d1x1_avm_readdata(in_lm22_conv2d1x1_avm_readdata),
        .in_lm22_conv2d1x1_avm_readdatavalid(in_lm22_conv2d1x1_avm_readdatavalid),
        .in_lm22_conv2d1x1_avm_waitrequest(in_lm22_conv2d1x1_avm_waitrequest),
        .in_lm22_conv2d1x1_avm_writeack(in_lm22_conv2d1x1_avm_writeack),
        .in_lm28179_conv2d1x1_avm_readdata(in_lm28179_conv2d1x1_avm_readdata),
        .in_lm28179_conv2d1x1_avm_readdatavalid(in_lm28179_conv2d1x1_avm_readdatavalid),
        .in_lm28179_conv2d1x1_avm_waitrequest(in_lm28179_conv2d1x1_avm_waitrequest),
        .in_lm28179_conv2d1x1_avm_writeack(in_lm28179_conv2d1x1_avm_writeack),
        .in_lm31_conv2d1x1_avm_readdata(in_lm31_conv2d1x1_avm_readdata),
        .in_lm31_conv2d1x1_avm_readdatavalid(in_lm31_conv2d1x1_avm_readdatavalid),
        .in_lm31_conv2d1x1_avm_waitrequest(in_lm31_conv2d1x1_avm_waitrequest),
        .in_lm31_conv2d1x1_avm_writeack(in_lm31_conv2d1x1_avm_writeack),
        .in_lm_conv2d1x1_avm_readdata(in_lm_conv2d1x1_avm_readdata),
        .in_lm_conv2d1x1_avm_readdatavalid(in_lm_conv2d1x1_avm_readdatavalid),
        .in_lm_conv2d1x1_avm_waitrequest(in_lm_conv2d1x1_avm_waitrequest),
        .in_lm_conv2d1x1_avm_writeack(in_lm_conv2d1x1_avm_writeack),
        .in_memdep_78_conv2d1x1_avm_readdata(in_memdep_78_conv2d1x1_avm_readdata),
        .in_memdep_78_conv2d1x1_avm_readdatavalid(in_memdep_78_conv2d1x1_avm_readdatavalid),
        .in_memdep_78_conv2d1x1_avm_waitrequest(in_memdep_78_conv2d1x1_avm_waitrequest),
        .in_memdep_78_conv2d1x1_avm_writeack(in_memdep_78_conv2d1x1_avm_writeack),
        .in_stall_in(conv2d1x1_B3_branch_out_stall_out),
        .in_tmp_067(conv2d1x1_B3_merge_out_tmp_067),
        .in_unnamed_conv2d1x14(conv2d1x1_B3_merge_out_unnamed_conv2d1x14),
        .in_valid_in(conv2d1x1_B3_merge_out_valid_out),
        .out_acl_global_id_136(bb_conv2d1x1_B3_stall_region_out_acl_global_id_136),
        .out_c0_exe14932(bb_conv2d1x1_B3_stall_region_out_c0_exe14932),
        .out_c0_exe15(bb_conv2d1x1_B3_stall_region_out_c0_exe15),
        .out_c0_exe28(bb_conv2d1x1_B3_stall_region_out_c0_exe28),
        .out_c0_exe411(bb_conv2d1x1_B3_stall_region_out_c0_exe411),
        .out_c0_exe515(bb_conv2d1x1_B3_stall_region_out_c0_exe515),
        .out_c0_exe566(bb_conv2d1x1_B3_stall_region_out_c0_exe566),
        .out_c0_exe618(bb_conv2d1x1_B3_stall_region_out_c0_exe618),
        .out_c0_exe667(bb_conv2d1x1_B3_stall_region_out_c0_exe667),
        .out_c0_exe720(bb_conv2d1x1_B3_stall_region_out_c0_exe720),
        .out_c0_exe823(bb_conv2d1x1_B3_stall_region_out_c0_exe823),
        .out_c0_exe927(bb_conv2d1x1_B3_stall_region_out_c0_exe927),
        .out_c1_exe1(bb_conv2d1x1_B3_stall_region_out_c1_exe1),
        .out_inc(bb_conv2d1x1_B3_stall_region_out_inc),
        .out_j_07030(bb_conv2d1x1_B3_stall_region_out_j_07030),
        .out_l_grpid_01(bb_conv2d1x1_B3_stall_region_out_l_grpid_01),
        .out_lm18_conv2d1x1_avm_address(bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_address),
        .out_lm18_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_burstcount),
        .out_lm18_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_byteenable),
        .out_lm18_conv2d1x1_avm_enable(bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_enable),
        .out_lm18_conv2d1x1_avm_read(bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_read),
        .out_lm18_conv2d1x1_avm_write(bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_write),
        .out_lm18_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_writedata),
        .out_lm20_conv2d1x1_avm_address(bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_address),
        .out_lm20_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_burstcount),
        .out_lm20_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_byteenable),
        .out_lm20_conv2d1x1_avm_enable(bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_enable),
        .out_lm20_conv2d1x1_avm_read(bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_read),
        .out_lm20_conv2d1x1_avm_write(bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_write),
        .out_lm20_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_writedata),
        .out_lm22_conv2d1x1_avm_address(bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_address),
        .out_lm22_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_burstcount),
        .out_lm22_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_byteenable),
        .out_lm22_conv2d1x1_avm_enable(bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_enable),
        .out_lm22_conv2d1x1_avm_read(bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_read),
        .out_lm22_conv2d1x1_avm_write(bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_write),
        .out_lm22_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_writedata),
        .out_lm28179_conv2d1x1_avm_address(bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_address),
        .out_lm28179_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_burstcount),
        .out_lm28179_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_byteenable),
        .out_lm28179_conv2d1x1_avm_enable(bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_enable),
        .out_lm28179_conv2d1x1_avm_read(bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_read),
        .out_lm28179_conv2d1x1_avm_write(bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_write),
        .out_lm28179_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_writedata),
        .out_lm31_conv2d1x1_avm_address(bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_address),
        .out_lm31_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_burstcount),
        .out_lm31_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_byteenable),
        .out_lm31_conv2d1x1_avm_enable(bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_enable),
        .out_lm31_conv2d1x1_avm_read(bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_read),
        .out_lm31_conv2d1x1_avm_write(bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_write),
        .out_lm31_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_writedata),
        .out_lm_conv2d1x1_avm_address(bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_writedata),
        .out_memdep_78_conv2d1x1_avm_address(bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_address),
        .out_memdep_78_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_burstcount),
        .out_memdep_78_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_byteenable),
        .out_memdep_78_conv2d1x1_avm_enable(bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_enable),
        .out_memdep_78_conv2d1x1_avm_read(bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_read),
        .out_memdep_78_conv2d1x1_avm_write(bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_write),
        .out_memdep_78_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_writedata),
        .out_stall_out(bb_conv2d1x1_B3_stall_region_out_stall_out),
        .out_unnamed_conv2d1x14(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x14),
        .out_valid_out(bb_conv2d1x1_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B3_branch(BLACKBOX,3)
    conv2d1x1_B3_branch theconv2d1x1_B3_branch (
        .in_acl_global_id_136(bb_conv2d1x1_B3_stall_region_out_acl_global_id_136),
        .in_c0_exe14932(bb_conv2d1x1_B3_stall_region_out_c0_exe14932),
        .in_c0_exe15(bb_conv2d1x1_B3_stall_region_out_c0_exe15),
        .in_c0_exe28(bb_conv2d1x1_B3_stall_region_out_c0_exe28),
        .in_c0_exe411(bb_conv2d1x1_B3_stall_region_out_c0_exe411),
        .in_c0_exe515(bb_conv2d1x1_B3_stall_region_out_c0_exe515),
        .in_c0_exe566(bb_conv2d1x1_B3_stall_region_out_c0_exe566),
        .in_c0_exe618(bb_conv2d1x1_B3_stall_region_out_c0_exe618),
        .in_c0_exe667(bb_conv2d1x1_B3_stall_region_out_c0_exe667),
        .in_c0_exe720(bb_conv2d1x1_B3_stall_region_out_c0_exe720),
        .in_c0_exe823(bb_conv2d1x1_B3_stall_region_out_c0_exe823),
        .in_c0_exe927(bb_conv2d1x1_B3_stall_region_out_c0_exe927),
        .in_c1_exe1(bb_conv2d1x1_B3_stall_region_out_c1_exe1),
        .in_inc(bb_conv2d1x1_B3_stall_region_out_inc),
        .in_j_07030(bb_conv2d1x1_B3_stall_region_out_j_07030),
        .in_l_grpid_01(bb_conv2d1x1_B3_stall_region_out_l_grpid_01),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_conv2d1x14(bb_conv2d1x1_B3_stall_region_out_unnamed_conv2d1x14),
        .in_valid_in(bb_conv2d1x1_B3_stall_region_out_valid_out),
        .out_acl_global_id_136(conv2d1x1_B3_branch_out_acl_global_id_136),
        .out_c0_exe14932(conv2d1x1_B3_branch_out_c0_exe14932),
        .out_c0_exe15(conv2d1x1_B3_branch_out_c0_exe15),
        .out_c0_exe28(conv2d1x1_B3_branch_out_c0_exe28),
        .out_c0_exe411(conv2d1x1_B3_branch_out_c0_exe411),
        .out_c0_exe515(conv2d1x1_B3_branch_out_c0_exe515),
        .out_c0_exe566(conv2d1x1_B3_branch_out_c0_exe566),
        .out_c0_exe618(conv2d1x1_B3_branch_out_c0_exe618),
        .out_c0_exe720(conv2d1x1_B3_branch_out_c0_exe720),
        .out_c0_exe823(conv2d1x1_B3_branch_out_c0_exe823),
        .out_c0_exe927(conv2d1x1_B3_branch_out_c0_exe927),
        .out_c1_exe1(conv2d1x1_B3_branch_out_c1_exe1),
        .out_inc(conv2d1x1_B3_branch_out_inc),
        .out_j_07030(conv2d1x1_B3_branch_out_j_07030),
        .out_l_grpid_01(conv2d1x1_B3_branch_out_l_grpid_01),
        .out_stall_out(conv2d1x1_B3_branch_out_stall_out),
        .out_unnamed_conv2d1x14(conv2d1x1_B3_branch_out_unnamed_conv2d1x14),
        .out_valid_out_0(conv2d1x1_B3_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_acl_global_id_136(GPOUT,73)
    assign out_acl_global_id_136 = conv2d1x1_B3_branch_out_acl_global_id_136;

    // out_c0_exe14932(GPOUT,74)
    assign out_c0_exe14932 = conv2d1x1_B3_branch_out_c0_exe14932;

    // out_c0_exe15(GPOUT,75)
    assign out_c0_exe15 = conv2d1x1_B3_branch_out_c0_exe15;

    // out_c0_exe28(GPOUT,76)
    assign out_c0_exe28 = conv2d1x1_B3_branch_out_c0_exe28;

    // out_c0_exe411(GPOUT,77)
    assign out_c0_exe411 = conv2d1x1_B3_branch_out_c0_exe411;

    // out_c0_exe515(GPOUT,78)
    assign out_c0_exe515 = conv2d1x1_B3_branch_out_c0_exe515;

    // out_c0_exe566(GPOUT,79)
    assign out_c0_exe566 = conv2d1x1_B3_branch_out_c0_exe566;

    // out_c0_exe618(GPOUT,80)
    assign out_c0_exe618 = conv2d1x1_B3_branch_out_c0_exe618;

    // out_c0_exe720(GPOUT,81)
    assign out_c0_exe720 = conv2d1x1_B3_branch_out_c0_exe720;

    // out_c0_exe823(GPOUT,82)
    assign out_c0_exe823 = conv2d1x1_B3_branch_out_c0_exe823;

    // out_c0_exe927(GPOUT,83)
    assign out_c0_exe927 = conv2d1x1_B3_branch_out_c0_exe927;

    // out_c1_exe1(GPOUT,84)
    assign out_c1_exe1 = conv2d1x1_B3_branch_out_c1_exe1;

    // out_inc(GPOUT,85)
    assign out_inc = conv2d1x1_B3_branch_out_inc;

    // out_j_07030(GPOUT,86)
    assign out_j_07030 = conv2d1x1_B3_branch_out_j_07030;

    // out_l_grpid_01(GPOUT,87)
    assign out_l_grpid_01 = conv2d1x1_B3_branch_out_l_grpid_01;

    // out_lm18_conv2d1x1_avm_address(GPOUT,88)
    assign out_lm18_conv2d1x1_avm_address = bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_address;

    // out_lm18_conv2d1x1_avm_burstcount(GPOUT,89)
    assign out_lm18_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_burstcount;

    // out_lm18_conv2d1x1_avm_byteenable(GPOUT,90)
    assign out_lm18_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_byteenable;

    // out_lm18_conv2d1x1_avm_enable(GPOUT,91)
    assign out_lm18_conv2d1x1_avm_enable = bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_enable;

    // out_lm18_conv2d1x1_avm_read(GPOUT,92)
    assign out_lm18_conv2d1x1_avm_read = bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_read;

    // out_lm18_conv2d1x1_avm_write(GPOUT,93)
    assign out_lm18_conv2d1x1_avm_write = bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_write;

    // out_lm18_conv2d1x1_avm_writedata(GPOUT,94)
    assign out_lm18_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_stall_region_out_lm18_conv2d1x1_avm_writedata;

    // out_lm20_conv2d1x1_avm_address(GPOUT,95)
    assign out_lm20_conv2d1x1_avm_address = bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_address;

    // out_lm20_conv2d1x1_avm_burstcount(GPOUT,96)
    assign out_lm20_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_burstcount;

    // out_lm20_conv2d1x1_avm_byteenable(GPOUT,97)
    assign out_lm20_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_byteenable;

    // out_lm20_conv2d1x1_avm_enable(GPOUT,98)
    assign out_lm20_conv2d1x1_avm_enable = bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_enable;

    // out_lm20_conv2d1x1_avm_read(GPOUT,99)
    assign out_lm20_conv2d1x1_avm_read = bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_read;

    // out_lm20_conv2d1x1_avm_write(GPOUT,100)
    assign out_lm20_conv2d1x1_avm_write = bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_write;

    // out_lm20_conv2d1x1_avm_writedata(GPOUT,101)
    assign out_lm20_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_stall_region_out_lm20_conv2d1x1_avm_writedata;

    // out_lm22_conv2d1x1_avm_address(GPOUT,102)
    assign out_lm22_conv2d1x1_avm_address = bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_address;

    // out_lm22_conv2d1x1_avm_burstcount(GPOUT,103)
    assign out_lm22_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_burstcount;

    // out_lm22_conv2d1x1_avm_byteenable(GPOUT,104)
    assign out_lm22_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_byteenable;

    // out_lm22_conv2d1x1_avm_enable(GPOUT,105)
    assign out_lm22_conv2d1x1_avm_enable = bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_enable;

    // out_lm22_conv2d1x1_avm_read(GPOUT,106)
    assign out_lm22_conv2d1x1_avm_read = bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_read;

    // out_lm22_conv2d1x1_avm_write(GPOUT,107)
    assign out_lm22_conv2d1x1_avm_write = bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_write;

    // out_lm22_conv2d1x1_avm_writedata(GPOUT,108)
    assign out_lm22_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_stall_region_out_lm22_conv2d1x1_avm_writedata;

    // out_lm28179_conv2d1x1_avm_address(GPOUT,109)
    assign out_lm28179_conv2d1x1_avm_address = bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_address;

    // out_lm28179_conv2d1x1_avm_burstcount(GPOUT,110)
    assign out_lm28179_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_burstcount;

    // out_lm28179_conv2d1x1_avm_byteenable(GPOUT,111)
    assign out_lm28179_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_byteenable;

    // out_lm28179_conv2d1x1_avm_enable(GPOUT,112)
    assign out_lm28179_conv2d1x1_avm_enable = bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_enable;

    // out_lm28179_conv2d1x1_avm_read(GPOUT,113)
    assign out_lm28179_conv2d1x1_avm_read = bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_read;

    // out_lm28179_conv2d1x1_avm_write(GPOUT,114)
    assign out_lm28179_conv2d1x1_avm_write = bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_write;

    // out_lm28179_conv2d1x1_avm_writedata(GPOUT,115)
    assign out_lm28179_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_stall_region_out_lm28179_conv2d1x1_avm_writedata;

    // out_lm31_conv2d1x1_avm_address(GPOUT,116)
    assign out_lm31_conv2d1x1_avm_address = bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_address;

    // out_lm31_conv2d1x1_avm_burstcount(GPOUT,117)
    assign out_lm31_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_burstcount;

    // out_lm31_conv2d1x1_avm_byteenable(GPOUT,118)
    assign out_lm31_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_byteenable;

    // out_lm31_conv2d1x1_avm_enable(GPOUT,119)
    assign out_lm31_conv2d1x1_avm_enable = bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_enable;

    // out_lm31_conv2d1x1_avm_read(GPOUT,120)
    assign out_lm31_conv2d1x1_avm_read = bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_read;

    // out_lm31_conv2d1x1_avm_write(GPOUT,121)
    assign out_lm31_conv2d1x1_avm_write = bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_write;

    // out_lm31_conv2d1x1_avm_writedata(GPOUT,122)
    assign out_lm31_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_stall_region_out_lm31_conv2d1x1_avm_writedata;

    // out_lm_conv2d1x1_avm_address(GPOUT,123)
    assign out_lm_conv2d1x1_avm_address = bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_address;

    // out_lm_conv2d1x1_avm_burstcount(GPOUT,124)
    assign out_lm_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_burstcount;

    // out_lm_conv2d1x1_avm_byteenable(GPOUT,125)
    assign out_lm_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_byteenable;

    // out_lm_conv2d1x1_avm_enable(GPOUT,126)
    assign out_lm_conv2d1x1_avm_enable = bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_enable;

    // out_lm_conv2d1x1_avm_read(GPOUT,127)
    assign out_lm_conv2d1x1_avm_read = bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_read;

    // out_lm_conv2d1x1_avm_write(GPOUT,128)
    assign out_lm_conv2d1x1_avm_write = bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_write;

    // out_lm_conv2d1x1_avm_writedata(GPOUT,129)
    assign out_lm_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_stall_region_out_lm_conv2d1x1_avm_writedata;

    // out_memdep_78_conv2d1x1_avm_address(GPOUT,130)
    assign out_memdep_78_conv2d1x1_avm_address = bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_address;

    // out_memdep_78_conv2d1x1_avm_burstcount(GPOUT,131)
    assign out_memdep_78_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_burstcount;

    // out_memdep_78_conv2d1x1_avm_byteenable(GPOUT,132)
    assign out_memdep_78_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_byteenable;

    // out_memdep_78_conv2d1x1_avm_enable(GPOUT,133)
    assign out_memdep_78_conv2d1x1_avm_enable = bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_enable;

    // out_memdep_78_conv2d1x1_avm_read(GPOUT,134)
    assign out_memdep_78_conv2d1x1_avm_read = bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_read;

    // out_memdep_78_conv2d1x1_avm_write(GPOUT,135)
    assign out_memdep_78_conv2d1x1_avm_write = bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_write;

    // out_memdep_78_conv2d1x1_avm_writedata(GPOUT,136)
    assign out_memdep_78_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_stall_region_out_memdep_78_conv2d1x1_avm_writedata;

    // out_stall_in_0(GPOUT,137)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,138)
    assign out_stall_out_0 = conv2d1x1_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,139)
    assign out_stall_out_1 = conv2d1x1_B3_merge_out_stall_out_1;

    // out_unnamed_conv2d1x14(GPOUT,140)
    assign out_unnamed_conv2d1x14 = conv2d1x1_B3_branch_out_unnamed_conv2d1x14;

    // out_valid_in_0(GPOUT,141)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,142)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,143)
    assign out_valid_out_0 = conv2d1x1_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,144)
    assign out_valid_out_1 = conv2d1x1_B3_branch_out_valid_out_1;

endmodule
