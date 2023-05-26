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

// SystemVerilog created from conv2d1x1_function
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_function (
    input wire [63:0] in_arg_acl_global_id_0,
    input wire [63:0] in_arg_acl_global_id_1,
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_hw_wg_id,
    input wire [31:0] in_arg_acl_local_linear_id,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [63:0] in_arg_filter_bias,
    input wire [63:0] in_arg_filter_weight,
    input wire [31:0] in_arg_input_channels,
    input wire [63:0] in_arg_input_im,
    input wire [31:0] in_arg_input_size,
    input wire [63:0] in_arg_output_im,
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
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_conv2d1x10_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x10_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x10_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x10_conv2d1x1_avm_writeack,
    input wire [511:0] in_unnamed_conv2d1x17_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x17_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x17_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x17_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_workgroup_size,
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
    output wire [0:0] out_o_active_unnamed_conv2d1x17,
    output wire [63:0] out_primWireOut,
    output wire [0:0] out_stall_out,
    output wire [30:0] out_unnamed_conv2d1x10_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x10_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x10_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x10_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x10_conv2d1x1_avm_writedata,
    output wire [30:0] out_unnamed_conv2d1x17_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x17_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x17_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x17_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x17_conv2d1x1_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] bb_conv2d1x1_B0_out_acl_global_id_1;
    wire [63:0] bb_conv2d1x1_B0_out_c0_exe1;
    wire [63:0] bb_conv2d1x1_B0_out_c0_exe2;
    wire [31:0] bb_conv2d1x1_B0_out_c0_exe4;
    wire [63:0] bb_conv2d1x1_B0_out_c0_exe5;
    wire [0:0] bb_conv2d1x1_B0_out_c0_exe6;
    wire [0:0] bb_conv2d1x1_B0_out_c0_exe7;
    wire [0:0] bb_conv2d1x1_B0_out_c0_exe8;
    wire [0:0] bb_conv2d1x1_B0_out_c0_exe9;
    wire [31:0] bb_conv2d1x1_B0_out_l_grpid_0;
    wire [0:0] bb_conv2d1x1_B0_out_stall_out_0;
    wire [31:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10;
    wire [30:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B0_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B0_out_wgl_0_enter_exit_stall_out;
    wire [0:0] bb_conv2d1x1_B0_out_wgl_0_enter_exit_valid_out;
    wire [0:0] bb_conv2d1x1_B1_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B1_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B1_out_wgl_0_exit_exit_stall_in;
    wire [0:0] bb_conv2d1x1_B1_out_wgl_0_exit_exit_valid_in;
    wire [63:0] bb_conv2d1x1_B2_out_acl_global_id_134;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe149;
    wire [63:0] bb_conv2d1x1_B2_out_c0_exe16;
    wire [63:0] bb_conv2d1x1_B2_out_c0_exe29;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe412;
    wire [63:0] bb_conv2d1x1_B2_out_c0_exe516;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe619;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe721;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe824;
    wire [0:0] bb_conv2d1x1_B2_out_c0_exe928;
    wire [31:0] bb_conv2d1x1_B2_out_j_070;
    wire [31:0] bb_conv2d1x1_B2_out_l_grpid_02;
    wire [0:0] bb_conv2d1x1_B2_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B2_out_stall_out_1;
    wire [31:0] bb_conv2d1x1_B2_out_unnamed_conv2d1x13;
    wire [0:0] bb_conv2d1x1_B2_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B2_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B2_out_valid_out_0;
    wire [63:0] bb_conv2d1x1_B3_out_acl_global_id_136;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe14932;
    wire [63:0] bb_conv2d1x1_B3_out_c0_exe15;
    wire [63:0] bb_conv2d1x1_B3_out_c0_exe28;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe411;
    wire [63:0] bb_conv2d1x1_B3_out_c0_exe515;
    wire [31:0] bb_conv2d1x1_B3_out_c0_exe566;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe618;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe720;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe823;
    wire [0:0] bb_conv2d1x1_B3_out_c0_exe927;
    wire [31:0] bb_conv2d1x1_B3_out_c1_exe1;
    wire [31:0] bb_conv2d1x1_B3_out_inc;
    wire [31:0] bb_conv2d1x1_B3_out_j_07030;
    wire [31:0] bb_conv2d1x1_B3_out_l_grpid_01;
    wire [30:0] bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_writedata;
    wire [31:0] bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_burstcount;
    wire [15:0] bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_write;
    wire [127:0] bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_writedata;
    wire [31:0] bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_burstcount;
    wire [15:0] bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_write;
    wire [127:0] bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B3_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B3_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B3_out_stall_out_1;
    wire [31:0] bb_conv2d1x1_B3_out_unnamed_conv2d1x14;
    wire [0:0] bb_conv2d1x1_B3_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B3_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B3_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B3_out_valid_out_1;
    wire [63:0] bb_conv2d1x1_B4_out_acl_global_id_135;
    wire [63:0] bb_conv2d1x1_B4_out_c0_exe17;
    wire [63:0] bb_conv2d1x1_B4_out_c0_exe210;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe413;
    wire [63:0] bb_conv2d1x1_B4_out_c0_exe514;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe617;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe722;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe825;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe926;
    wire [31:0] bb_conv2d1x1_B4_out_inc87;
    wire [31:0] bb_conv2d1x1_B4_out_l_grpid_03;
    wire [0:0] bb_conv2d1x1_B4_out_lsu_unnamed_conv2d1x17_o_active;
    wire [0:0] bb_conv2d1x1_B4_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B4_out_stall_out_0;
    wire [31:0] bb_conv2d1x1_B4_out_unnamed_conv2d1x15;
    wire [30:0] bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B4_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B4_out_valid_out_1;
    wire [31:0] c_i32_018_q;
    wire [0:0] conv2d1x1_B2_x_i_capture;
    wire conv2d1x1_B2_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_clear;
    wire conv2d1x1_B2_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_enable;
    wire conv2d1x1_B2_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_shift;
    wire conv2d1x1_B2_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_stall_pred;
    wire conv2d1x1_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_stall_succ;
    wire conv2d1x1_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_valid_loop;
    wire conv2d1x1_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_valid_pred;
    wire conv2d1x1_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_valid_succ;
    wire conv2d1x1_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_capture;
    wire conv2d1x1_B3_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_clear;
    wire conv2d1x1_B3_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_enable;
    wire conv2d1x1_B3_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_shift;
    wire conv2d1x1_B3_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_stall_pred;
    wire conv2d1x1_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_stall_succ;
    wire conv2d1x1_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_valid_loop;
    wire conv2d1x1_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_valid_pred;
    wire conv2d1x1_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B3_x_i_valid_succ;
    wire conv2d1x1_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] loop_limiter_conv2d1x10_out_o_stall;
    wire [0:0] loop_limiter_conv2d1x10_out_o_valid;
    wire [0:0] loop_limiter_conv2d1x11_out_o_stall;
    wire [0:0] loop_limiter_conv2d1x11_out_o_valid;
    wire [0:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [63:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [63:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [63:0] bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [63:0] bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_13_tpl;


    // bb_conv2d1x1_B3_sr_0_aunroll_x(BLACKBOX,145)
    conv2d1x1_bb_B3_sr_0 thebb_conv2d1x1_B3_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B3_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B3_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B3_out_inc),
        .in_i_data_1_tpl(bb_conv2d1x1_B3_out_c0_exe566),
        .in_i_data_2_tpl(bb_conv2d1x1_B3_out_c1_exe1),
        .in_i_data_3_tpl(bb_conv2d1x1_B3_out_l_grpid_01),
        .in_i_data_4_tpl(bb_conv2d1x1_B3_out_c0_exe15),
        .in_i_data_5_tpl(bb_conv2d1x1_B3_out_c0_exe28),
        .in_i_data_6_tpl(bb_conv2d1x1_B3_out_c0_exe411),
        .in_i_data_7_tpl(bb_conv2d1x1_B3_out_c0_exe515),
        .in_i_data_8_tpl(bb_conv2d1x1_B3_out_c0_exe618),
        .in_i_data_9_tpl(bb_conv2d1x1_B3_out_c0_exe720),
        .in_i_data_10_tpl(bb_conv2d1x1_B3_out_c0_exe823),
        .in_i_data_11_tpl(bb_conv2d1x1_B3_out_c0_exe927),
        .in_i_data_12_tpl(bb_conv2d1x1_B3_out_unnamed_conv2d1x14),
        .in_i_data_13_tpl(bb_conv2d1x1_B3_out_j_07030),
        .in_i_data_14_tpl(bb_conv2d1x1_B3_out_c0_exe14932),
        .in_i_data_15_tpl(bb_conv2d1x1_B3_out_acl_global_id_136),
        .out_o_stall(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_15_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B3(BLACKBOX,5)
    conv2d1x1_bb_B3 thebb_conv2d1x1_B3 (
        .in_acl_global_id_136_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_acl_global_id_136_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe14932_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe14932_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe15_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe15_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe28_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe28_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe411_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe411_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe515_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe515_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe618_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe618_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe720_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe720_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe823_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe823_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe927_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe927_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_07030_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_j_07030_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_k49_068_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_k49_068_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_k_065_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_k_065_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_l_grpid_01_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_l_grpid_01_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_3_tpl),
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
        .in_stall_in_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_stall),
        .in_tmp_067_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_tmp_067_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv2d1x14_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_unnamed_conv2d1x14_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_valid_in_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_valid),
        .out_acl_global_id_136(bb_conv2d1x1_B3_out_acl_global_id_136),
        .out_c0_exe14932(bb_conv2d1x1_B3_out_c0_exe14932),
        .out_c0_exe15(bb_conv2d1x1_B3_out_c0_exe15),
        .out_c0_exe28(bb_conv2d1x1_B3_out_c0_exe28),
        .out_c0_exe411(bb_conv2d1x1_B3_out_c0_exe411),
        .out_c0_exe515(bb_conv2d1x1_B3_out_c0_exe515),
        .out_c0_exe566(bb_conv2d1x1_B3_out_c0_exe566),
        .out_c0_exe618(bb_conv2d1x1_B3_out_c0_exe618),
        .out_c0_exe720(bb_conv2d1x1_B3_out_c0_exe720),
        .out_c0_exe823(bb_conv2d1x1_B3_out_c0_exe823),
        .out_c0_exe927(bb_conv2d1x1_B3_out_c0_exe927),
        .out_c1_exe1(bb_conv2d1x1_B3_out_c1_exe1),
        .out_inc(bb_conv2d1x1_B3_out_inc),
        .out_j_07030(bb_conv2d1x1_B3_out_j_07030),
        .out_l_grpid_01(bb_conv2d1x1_B3_out_l_grpid_01),
        .out_lm18_conv2d1x1_avm_address(bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_address),
        .out_lm18_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_burstcount),
        .out_lm18_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_byteenable),
        .out_lm18_conv2d1x1_avm_enable(bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_enable),
        .out_lm18_conv2d1x1_avm_read(bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_read),
        .out_lm18_conv2d1x1_avm_write(bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_write),
        .out_lm18_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_writedata),
        .out_lm20_conv2d1x1_avm_address(bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_address),
        .out_lm20_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_burstcount),
        .out_lm20_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_byteenable),
        .out_lm20_conv2d1x1_avm_enable(bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_enable),
        .out_lm20_conv2d1x1_avm_read(bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_read),
        .out_lm20_conv2d1x1_avm_write(bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_write),
        .out_lm20_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_writedata),
        .out_lm22_conv2d1x1_avm_address(bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_address),
        .out_lm22_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_burstcount),
        .out_lm22_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_byteenable),
        .out_lm22_conv2d1x1_avm_enable(bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_enable),
        .out_lm22_conv2d1x1_avm_read(bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_read),
        .out_lm22_conv2d1x1_avm_write(bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_write),
        .out_lm22_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_writedata),
        .out_lm28179_conv2d1x1_avm_address(bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_address),
        .out_lm28179_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_burstcount),
        .out_lm28179_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_byteenable),
        .out_lm28179_conv2d1x1_avm_enable(bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_enable),
        .out_lm28179_conv2d1x1_avm_read(bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_read),
        .out_lm28179_conv2d1x1_avm_write(bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_write),
        .out_lm28179_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_writedata),
        .out_lm31_conv2d1x1_avm_address(bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_address),
        .out_lm31_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_burstcount),
        .out_lm31_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_byteenable),
        .out_lm31_conv2d1x1_avm_enable(bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_enable),
        .out_lm31_conv2d1x1_avm_read(bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_read),
        .out_lm31_conv2d1x1_avm_write(bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_write),
        .out_lm31_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_writedata),
        .out_lm_conv2d1x1_avm_address(bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_writedata),
        .out_memdep_78_conv2d1x1_avm_address(bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_address),
        .out_memdep_78_conv2d1x1_avm_burstcount(bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_burstcount),
        .out_memdep_78_conv2d1x1_avm_byteenable(bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_byteenable),
        .out_memdep_78_conv2d1x1_avm_enable(bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_enable),
        .out_memdep_78_conv2d1x1_avm_read(bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_read),
        .out_memdep_78_conv2d1x1_avm_write(bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_write),
        .out_memdep_78_conv2d1x1_avm_writedata(bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_writedata),
        .out_stall_in_0(bb_conv2d1x1_B3_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B3_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B3_out_stall_out_1),
        .out_unnamed_conv2d1x14(bb_conv2d1x1_B3_out_unnamed_conv2d1x14),
        .out_valid_in_0(bb_conv2d1x1_B3_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B3_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B3_out_valid_out_0),
        .out_valid_out_1(bb_conv2d1x1_B3_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4_sr_0_aunroll_x(BLACKBOX,147)
    conv2d1x1_bb_B4_sr_0 thebb_conv2d1x1_B4_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B4_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B3_out_valid_out_1),
        .in_i_data_0_tpl(bb_conv2d1x1_B3_out_l_grpid_01),
        .in_i_data_1_tpl(bb_conv2d1x1_B3_out_c0_exe15),
        .in_i_data_2_tpl(bb_conv2d1x1_B3_out_c0_exe28),
        .in_i_data_3_tpl(bb_conv2d1x1_B3_out_c0_exe411),
        .in_i_data_4_tpl(bb_conv2d1x1_B3_out_c0_exe515),
        .in_i_data_5_tpl(bb_conv2d1x1_B3_out_c0_exe618),
        .in_i_data_6_tpl(bb_conv2d1x1_B3_out_c0_exe720),
        .in_i_data_7_tpl(bb_conv2d1x1_B3_out_c0_exe823),
        .in_i_data_8_tpl(bb_conv2d1x1_B3_out_c0_exe927),
        .in_i_data_9_tpl(bb_conv2d1x1_B3_out_unnamed_conv2d1x14),
        .in_i_data_10_tpl(bb_conv2d1x1_B3_out_j_07030),
        .in_i_data_11_tpl(bb_conv2d1x1_B3_out_c0_exe14932),
        .in_i_data_12_tpl(bb_conv2d1x1_B3_out_c1_exe1),
        .in_i_data_13_tpl(bb_conv2d1x1_B3_out_acl_global_id_136),
        .out_o_stall(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_13_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_018(CONSTANT,11)
    assign c_i32_018_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_conv2d1x1_B3_sr_1_aunroll_x(BLACKBOX,146)
    conv2d1x1_bb_B3_sr_1 thebb_conv2d1x1_B3_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x11_out_o_valid),
        .in_i_data_0_tpl(c_i32_018_q),
        .in_i_data_1_tpl(c_i32_018_q),
        .in_i_data_2_tpl(bb_conv2d1x1_B2_out_unnamed_conv2d1x13),
        .in_i_data_3_tpl(bb_conv2d1x1_B2_out_l_grpid_02),
        .in_i_data_4_tpl(bb_conv2d1x1_B2_out_c0_exe16),
        .in_i_data_5_tpl(bb_conv2d1x1_B2_out_c0_exe29),
        .in_i_data_6_tpl(bb_conv2d1x1_B2_out_c0_exe412),
        .in_i_data_7_tpl(bb_conv2d1x1_B2_out_c0_exe516),
        .in_i_data_8_tpl(bb_conv2d1x1_B2_out_c0_exe619),
        .in_i_data_9_tpl(bb_conv2d1x1_B2_out_c0_exe721),
        .in_i_data_10_tpl(bb_conv2d1x1_B2_out_c0_exe824),
        .in_i_data_11_tpl(bb_conv2d1x1_B2_out_c0_exe928),
        .in_i_data_12_tpl(bb_conv2d1x1_B2_out_unnamed_conv2d1x13),
        .in_i_data_13_tpl(bb_conv2d1x1_B2_out_j_070),
        .in_i_data_14_tpl(bb_conv2d1x1_B2_out_c0_exe149),
        .in_i_data_15_tpl(bb_conv2d1x1_B2_out_acl_global_id_134),
        .out_o_stall(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_data_15_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x11(BLACKBOX,74)
    conv2d1x1_loop_limiter_1 theloop_limiter_conv2d1x11 (
        .in_i_stall(bb_conv2d1x1_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_conv2d1x1_B2_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d1x1_B3_out_valid_out_1),
        .out_o_stall(loop_limiter_conv2d1x11_out_o_stall),
        .out_o_valid(loop_limiter_conv2d1x11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1_sr_0_aunroll_x(BLACKBOX,142)
    conv2d1x1_bb_B1_sr_0 thebb_conv2d1x1_B1_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B1_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B4_out_valid_out_1),
        .in_i_data_0_tpl(bb_conv2d1x1_B4_out_l_grpid_03),
        .out_o_stall(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1(BLACKBOX,3)
    conv2d1x1_bb_B1 thebb_conv2d1x1_B1 (
        .in_l_grpid_04_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid),
        .in_wgl_0_exit_exit_stall_out(bb_conv2d1x1_B0_out_wgl_0_enter_exit_stall_out),
        .in_wgl_0_exit_exit_valid_out(bb_conv2d1x1_B0_out_wgl_0_enter_exit_valid_out),
        .out_stall_out_0(bb_conv2d1x1_B1_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B1_out_valid_out_0),
        .out_wgl_0_exit_exit_stall_in(bb_conv2d1x1_B1_out_wgl_0_exit_exit_stall_in),
        .out_wgl_0_exit_exit_valid_in(bb_conv2d1x1_B1_out_wgl_0_exit_exit_valid_in),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B0(BLACKBOX,2)
    conv2d1x1_bb_B0 thebb_conv2d1x1_B0 (
        .in_acl_global_id_0_0(in_arg_acl_global_id_0),
        .in_acl_global_id_1_0(in_arg_acl_global_id_1),
        .in_acl_hw_wg_id_0(in_arg_acl_hw_wg_id),
        .in_acl_local_linear_id_0(in_arg_acl_local_linear_id),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(loop_limiter_conv2d1x10_out_o_stall),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_readdata(in_unnamed_conv2d1x10_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x10_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x10_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_writeack(in_unnamed_conv2d1x10_conv2d1x1_avm_writeack),
        .in_valid_in_0(in_valid_in),
        .in_wgl_0_enter_exit_stall_in(bb_conv2d1x1_B1_out_wgl_0_exit_exit_stall_in),
        .in_wgl_0_enter_exit_valid_in(bb_conv2d1x1_B1_out_wgl_0_exit_exit_valid_in),
        .in_wgl_0_wgs_wg_size(in_workgroup_size),
        .out_acl_global_id_1(bb_conv2d1x1_B0_out_acl_global_id_1),
        .out_c0_exe1(bb_conv2d1x1_B0_out_c0_exe1),
        .out_c0_exe2(bb_conv2d1x1_B0_out_c0_exe2),
        .out_c0_exe4(bb_conv2d1x1_B0_out_c0_exe4),
        .out_c0_exe5(bb_conv2d1x1_B0_out_c0_exe5),
        .out_c0_exe6(bb_conv2d1x1_B0_out_c0_exe6),
        .out_c0_exe7(bb_conv2d1x1_B0_out_c0_exe7),
        .out_c0_exe8(bb_conv2d1x1_B0_out_c0_exe8),
        .out_c0_exe9(bb_conv2d1x1_B0_out_c0_exe9),
        .out_l_grpid_0(bb_conv2d1x1_B0_out_l_grpid_0),
        .out_stall_out_0(bb_conv2d1x1_B0_out_stall_out_0),
        .out_unnamed_conv2d1x10(bb_conv2d1x1_B0_out_unnamed_conv2d1x10),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_address(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_enable(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_read(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_write(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_writedata(bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_writedata),
        .out_valid_out_0(bb_conv2d1x1_B0_out_valid_out_0),
        .out_wgl_0_enter_exit_stall_out(bb_conv2d1x1_B0_out_wgl_0_enter_exit_stall_out),
        .out_wgl_0_enter_exit_valid_out(bb_conv2d1x1_B0_out_wgl_0_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2_sr_1_aunroll_x(BLACKBOX,144)
    conv2d1x1_bb_B2_sr_1 thebb_conv2d1x1_B2_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x10_out_o_valid),
        .in_i_data_0_tpl(c_i32_018_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B0_out_l_grpid_0),
        .in_i_data_2_tpl(bb_conv2d1x1_B0_out_c0_exe1),
        .in_i_data_3_tpl(bb_conv2d1x1_B0_out_c0_exe2),
        .in_i_data_4_tpl(bb_conv2d1x1_B0_out_c0_exe4),
        .in_i_data_5_tpl(bb_conv2d1x1_B0_out_c0_exe5),
        .in_i_data_6_tpl(bb_conv2d1x1_B0_out_c0_exe6),
        .in_i_data_7_tpl(bb_conv2d1x1_B0_out_c0_exe7),
        .in_i_data_8_tpl(bb_conv2d1x1_B0_out_c0_exe8),
        .in_i_data_9_tpl(bb_conv2d1x1_B0_out_c0_exe9),
        .in_i_data_10_tpl(bb_conv2d1x1_B0_out_unnamed_conv2d1x10),
        .in_i_data_11_tpl(bb_conv2d1x1_B0_out_acl_global_id_1),
        .out_o_stall(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_11_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2_sr_0_aunroll_x(BLACKBOX,143)
    conv2d1x1_bb_B2_sr_0 thebb_conv2d1x1_B2_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B2_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B4_out_inc87),
        .in_i_data_1_tpl(bb_conv2d1x1_B4_out_l_grpid_03),
        .in_i_data_2_tpl(bb_conv2d1x1_B4_out_c0_exe17),
        .in_i_data_3_tpl(bb_conv2d1x1_B4_out_c0_exe210),
        .in_i_data_4_tpl(bb_conv2d1x1_B4_out_c0_exe413),
        .in_i_data_5_tpl(bb_conv2d1x1_B4_out_c0_exe514),
        .in_i_data_6_tpl(bb_conv2d1x1_B4_out_c0_exe617),
        .in_i_data_7_tpl(bb_conv2d1x1_B4_out_c0_exe722),
        .in_i_data_8_tpl(bb_conv2d1x1_B4_out_c0_exe825),
        .in_i_data_9_tpl(bb_conv2d1x1_B4_out_c0_exe926),
        .in_i_data_10_tpl(bb_conv2d1x1_B4_out_unnamed_conv2d1x15),
        .in_i_data_11_tpl(bb_conv2d1x1_B4_out_acl_global_id_135),
        .out_o_stall(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_11_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2(BLACKBOX,4)
    conv2d1x1_bb_B2 thebb_conv2d1x1_B2 (
        .in_acl_global_id_134_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_acl_global_id_134_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe16_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe16_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe29_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe29_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe412_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe412_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe516_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe516_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe619_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe619_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe721_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe721_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe824_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe824_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe928_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe928_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_070_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_j_070_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_l_grpid_02_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_l_grpid_02_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_conv2d1x11_out_o_stall),
        .in_unnamed_conv2d1x13_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_unnamed_conv2d1x13_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_valid_in_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid),
        .out_acl_global_id_134(bb_conv2d1x1_B2_out_acl_global_id_134),
        .out_c0_exe149(bb_conv2d1x1_B2_out_c0_exe149),
        .out_c0_exe16(bb_conv2d1x1_B2_out_c0_exe16),
        .out_c0_exe29(bb_conv2d1x1_B2_out_c0_exe29),
        .out_c0_exe412(bb_conv2d1x1_B2_out_c0_exe412),
        .out_c0_exe516(bb_conv2d1x1_B2_out_c0_exe516),
        .out_c0_exe619(bb_conv2d1x1_B2_out_c0_exe619),
        .out_c0_exe721(bb_conv2d1x1_B2_out_c0_exe721),
        .out_c0_exe824(bb_conv2d1x1_B2_out_c0_exe824),
        .out_c0_exe928(bb_conv2d1x1_B2_out_c0_exe928),
        .out_j_070(bb_conv2d1x1_B2_out_j_070),
        .out_l_grpid_02(bb_conv2d1x1_B2_out_l_grpid_02),
        .out_stall_out_0(bb_conv2d1x1_B2_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B2_out_stall_out_1),
        .out_unnamed_conv2d1x13(bb_conv2d1x1_B2_out_unnamed_conv2d1x13),
        .out_valid_in_0(bb_conv2d1x1_B2_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B2_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4(BLACKBOX,6)
    conv2d1x1_bb_B4 thebb_conv2d1x1_B4 (
        .in_acl_global_id_135_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe14931_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe17_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe210_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe413_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe514_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe617_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe722_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe825_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe926_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c1_exe133_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_j_07029_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_l_grpid_03_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_conv2d1x1_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall),
        .in_unnamed_conv2d1x15_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_readdata(in_unnamed_conv2d1x17_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x17_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x17_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_writeack(in_unnamed_conv2d1x17_conv2d1x1_avm_writeack),
        .in_valid_in_0(bb_conv2d1x1_B4_sr_0_aunroll_x_out_o_valid),
        .out_acl_global_id_135(bb_conv2d1x1_B4_out_acl_global_id_135),
        .out_c0_exe17(bb_conv2d1x1_B4_out_c0_exe17),
        .out_c0_exe210(bb_conv2d1x1_B4_out_c0_exe210),
        .out_c0_exe413(bb_conv2d1x1_B4_out_c0_exe413),
        .out_c0_exe514(bb_conv2d1x1_B4_out_c0_exe514),
        .out_c0_exe617(bb_conv2d1x1_B4_out_c0_exe617),
        .out_c0_exe722(bb_conv2d1x1_B4_out_c0_exe722),
        .out_c0_exe825(bb_conv2d1x1_B4_out_c0_exe825),
        .out_c0_exe926(bb_conv2d1x1_B4_out_c0_exe926),
        .out_inc87(bb_conv2d1x1_B4_out_inc87),
        .out_l_grpid_03(bb_conv2d1x1_B4_out_l_grpid_03),
        .out_lsu_unnamed_conv2d1x17_o_active(bb_conv2d1x1_B4_out_lsu_unnamed_conv2d1x17_o_active),
        .out_stall_in_0(bb_conv2d1x1_B4_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B4_out_stall_out_0),
        .out_unnamed_conv2d1x15(bb_conv2d1x1_B4_out_unnamed_conv2d1x15),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_address(bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_enable(bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_read(bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_write(bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_writedata),
        .out_valid_out_0(bb_conv2d1x1_B4_out_valid_out_0),
        .out_valid_out_1(bb_conv2d1x1_B4_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x10(BLACKBOX,73)
    conv2d1x1_loop_limiter_0 theloop_limiter_conv2d1x10 (
        .in_i_stall(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_conv2d1x1_B0_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d1x1_B4_out_valid_out_1),
        .out_o_stall(loop_limiter_conv2d1x10_out_o_stall),
        .out_o_valid(loop_limiter_conv2d1x10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // conv2d1x1_B2_x(EXTIFACE,15)
    assign conv2d1x1_B2_x_i_capture = GND_q;
    assign conv2d1x1_B2_x_i_clear = GND_q;
    assign conv2d1x1_B2_x_i_enable = VCC_q;
    assign conv2d1x1_B2_x_i_shift = GND_q;
    assign conv2d1x1_B2_x_i_stall_pred = loop_limiter_conv2d1x10_out_o_stall;
    assign conv2d1x1_B2_x_i_stall_succ = bb_conv2d1x1_B4_out_stall_in_0;
    assign conv2d1x1_B2_x_i_valid_loop = bb_conv2d1x1_B2_out_valid_in_0;
    assign conv2d1x1_B2_x_i_valid_pred = bb_conv2d1x1_B2_out_valid_in_1;
    assign conv2d1x1_B2_x_i_valid_succ = bb_conv2d1x1_B4_out_valid_out_0;
    assign conv2d1x1_B2_x_i_capture_bitsignaltemp = conv2d1x1_B2_x_i_capture[0];
    assign conv2d1x1_B2_x_i_clear_bitsignaltemp = conv2d1x1_B2_x_i_clear[0];
    assign conv2d1x1_B2_x_i_enable_bitsignaltemp = conv2d1x1_B2_x_i_enable[0];
    assign conv2d1x1_B2_x_i_shift_bitsignaltemp = conv2d1x1_B2_x_i_shift[0];
    assign conv2d1x1_B2_x_i_stall_pred_bitsignaltemp = conv2d1x1_B2_x_i_stall_pred[0];
    assign conv2d1x1_B2_x_i_stall_succ_bitsignaltemp = conv2d1x1_B2_x_i_stall_succ[0];
    assign conv2d1x1_B2_x_i_valid_loop_bitsignaltemp = conv2d1x1_B2_x_i_valid_loop[0];
    assign conv2d1x1_B2_x_i_valid_pred_bitsignaltemp = conv2d1x1_B2_x_i_valid_pred[0];
    assign conv2d1x1_B2_x_i_valid_succ_bitsignaltemp = conv2d1x1_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d1x1.B2")
    ) theconv2d1x1_B2_x (
        .i_capture(conv2d1x1_B2_x_i_capture_bitsignaltemp),
        .i_clear(conv2d1x1_B2_x_i_clear_bitsignaltemp),
        .i_enable(conv2d1x1_B2_x_i_enable_bitsignaltemp),
        .i_shift(conv2d1x1_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d1x1_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d1x1_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d1x1_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d1x1_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d1x1_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B3_x(EXTIFACE,16)
    assign conv2d1x1_B3_x_i_capture = GND_q;
    assign conv2d1x1_B3_x_i_clear = GND_q;
    assign conv2d1x1_B3_x_i_enable = VCC_q;
    assign conv2d1x1_B3_x_i_shift = GND_q;
    assign conv2d1x1_B3_x_i_stall_pred = loop_limiter_conv2d1x11_out_o_stall;
    assign conv2d1x1_B3_x_i_stall_succ = bb_conv2d1x1_B3_out_stall_in_0;
    assign conv2d1x1_B3_x_i_valid_loop = bb_conv2d1x1_B3_out_valid_in_0;
    assign conv2d1x1_B3_x_i_valid_pred = bb_conv2d1x1_B3_out_valid_in_1;
    assign conv2d1x1_B3_x_i_valid_succ = bb_conv2d1x1_B3_out_valid_out_0;
    assign conv2d1x1_B3_x_i_capture_bitsignaltemp = conv2d1x1_B3_x_i_capture[0];
    assign conv2d1x1_B3_x_i_clear_bitsignaltemp = conv2d1x1_B3_x_i_clear[0];
    assign conv2d1x1_B3_x_i_enable_bitsignaltemp = conv2d1x1_B3_x_i_enable[0];
    assign conv2d1x1_B3_x_i_shift_bitsignaltemp = conv2d1x1_B3_x_i_shift[0];
    assign conv2d1x1_B3_x_i_stall_pred_bitsignaltemp = conv2d1x1_B3_x_i_stall_pred[0];
    assign conv2d1x1_B3_x_i_stall_succ_bitsignaltemp = conv2d1x1_B3_x_i_stall_succ[0];
    assign conv2d1x1_B3_x_i_valid_loop_bitsignaltemp = conv2d1x1_B3_x_i_valid_loop[0];
    assign conv2d1x1_B3_x_i_valid_pred_bitsignaltemp = conv2d1x1_B3_x_i_valid_pred[0];
    assign conv2d1x1_B3_x_i_valid_succ_bitsignaltemp = conv2d1x1_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d1x1.B3")
    ) theconv2d1x1_B3_x (
        .i_capture(conv2d1x1_B3_x_i_capture_bitsignaltemp),
        .i_clear(conv2d1x1_B3_x_i_clear_bitsignaltemp),
        .i_enable(conv2d1x1_B3_x_i_enable_bitsignaltemp),
        .i_shift(conv2d1x1_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d1x1_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d1x1_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d1x1_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d1x1_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d1x1_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm18_conv2d1x1_avm_address(GPOUT,75)
    assign out_lm18_conv2d1x1_avm_address = bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_address;

    // out_lm18_conv2d1x1_avm_burstcount(GPOUT,76)
    assign out_lm18_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_burstcount;

    // out_lm18_conv2d1x1_avm_byteenable(GPOUT,77)
    assign out_lm18_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_byteenable;

    // out_lm18_conv2d1x1_avm_enable(GPOUT,78)
    assign out_lm18_conv2d1x1_avm_enable = bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_enable;

    // out_lm18_conv2d1x1_avm_read(GPOUT,79)
    assign out_lm18_conv2d1x1_avm_read = bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_read;

    // out_lm18_conv2d1x1_avm_write(GPOUT,80)
    assign out_lm18_conv2d1x1_avm_write = bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_write;

    // out_lm18_conv2d1x1_avm_writedata(GPOUT,81)
    assign out_lm18_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_out_lm18_conv2d1x1_avm_writedata;

    // out_lm20_conv2d1x1_avm_address(GPOUT,82)
    assign out_lm20_conv2d1x1_avm_address = bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_address;

    // out_lm20_conv2d1x1_avm_burstcount(GPOUT,83)
    assign out_lm20_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_burstcount;

    // out_lm20_conv2d1x1_avm_byteenable(GPOUT,84)
    assign out_lm20_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_byteenable;

    // out_lm20_conv2d1x1_avm_enable(GPOUT,85)
    assign out_lm20_conv2d1x1_avm_enable = bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_enable;

    // out_lm20_conv2d1x1_avm_read(GPOUT,86)
    assign out_lm20_conv2d1x1_avm_read = bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_read;

    // out_lm20_conv2d1x1_avm_write(GPOUT,87)
    assign out_lm20_conv2d1x1_avm_write = bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_write;

    // out_lm20_conv2d1x1_avm_writedata(GPOUT,88)
    assign out_lm20_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_out_lm20_conv2d1x1_avm_writedata;

    // out_lm22_conv2d1x1_avm_address(GPOUT,89)
    assign out_lm22_conv2d1x1_avm_address = bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_address;

    // out_lm22_conv2d1x1_avm_burstcount(GPOUT,90)
    assign out_lm22_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_burstcount;

    // out_lm22_conv2d1x1_avm_byteenable(GPOUT,91)
    assign out_lm22_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_byteenable;

    // out_lm22_conv2d1x1_avm_enable(GPOUT,92)
    assign out_lm22_conv2d1x1_avm_enable = bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_enable;

    // out_lm22_conv2d1x1_avm_read(GPOUT,93)
    assign out_lm22_conv2d1x1_avm_read = bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_read;

    // out_lm22_conv2d1x1_avm_write(GPOUT,94)
    assign out_lm22_conv2d1x1_avm_write = bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_write;

    // out_lm22_conv2d1x1_avm_writedata(GPOUT,95)
    assign out_lm22_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_out_lm22_conv2d1x1_avm_writedata;

    // out_lm28179_conv2d1x1_avm_address(GPOUT,96)
    assign out_lm28179_conv2d1x1_avm_address = bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_address;

    // out_lm28179_conv2d1x1_avm_burstcount(GPOUT,97)
    assign out_lm28179_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_burstcount;

    // out_lm28179_conv2d1x1_avm_byteenable(GPOUT,98)
    assign out_lm28179_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_byteenable;

    // out_lm28179_conv2d1x1_avm_enable(GPOUT,99)
    assign out_lm28179_conv2d1x1_avm_enable = bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_enable;

    // out_lm28179_conv2d1x1_avm_read(GPOUT,100)
    assign out_lm28179_conv2d1x1_avm_read = bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_read;

    // out_lm28179_conv2d1x1_avm_write(GPOUT,101)
    assign out_lm28179_conv2d1x1_avm_write = bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_write;

    // out_lm28179_conv2d1x1_avm_writedata(GPOUT,102)
    assign out_lm28179_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_out_lm28179_conv2d1x1_avm_writedata;

    // out_lm31_conv2d1x1_avm_address(GPOUT,103)
    assign out_lm31_conv2d1x1_avm_address = bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_address;

    // out_lm31_conv2d1x1_avm_burstcount(GPOUT,104)
    assign out_lm31_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_burstcount;

    // out_lm31_conv2d1x1_avm_byteenable(GPOUT,105)
    assign out_lm31_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_byteenable;

    // out_lm31_conv2d1x1_avm_enable(GPOUT,106)
    assign out_lm31_conv2d1x1_avm_enable = bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_enable;

    // out_lm31_conv2d1x1_avm_read(GPOUT,107)
    assign out_lm31_conv2d1x1_avm_read = bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_read;

    // out_lm31_conv2d1x1_avm_write(GPOUT,108)
    assign out_lm31_conv2d1x1_avm_write = bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_write;

    // out_lm31_conv2d1x1_avm_writedata(GPOUT,109)
    assign out_lm31_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_out_lm31_conv2d1x1_avm_writedata;

    // out_lm_conv2d1x1_avm_address(GPOUT,110)
    assign out_lm_conv2d1x1_avm_address = bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_address;

    // out_lm_conv2d1x1_avm_burstcount(GPOUT,111)
    assign out_lm_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_burstcount;

    // out_lm_conv2d1x1_avm_byteenable(GPOUT,112)
    assign out_lm_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_byteenable;

    // out_lm_conv2d1x1_avm_enable(GPOUT,113)
    assign out_lm_conv2d1x1_avm_enable = bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_enable;

    // out_lm_conv2d1x1_avm_read(GPOUT,114)
    assign out_lm_conv2d1x1_avm_read = bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_read;

    // out_lm_conv2d1x1_avm_write(GPOUT,115)
    assign out_lm_conv2d1x1_avm_write = bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_write;

    // out_lm_conv2d1x1_avm_writedata(GPOUT,116)
    assign out_lm_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_out_lm_conv2d1x1_avm_writedata;

    // out_memdep_78_conv2d1x1_avm_address(GPOUT,117)
    assign out_memdep_78_conv2d1x1_avm_address = bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_address;

    // out_memdep_78_conv2d1x1_avm_burstcount(GPOUT,118)
    assign out_memdep_78_conv2d1x1_avm_burstcount = bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_burstcount;

    // out_memdep_78_conv2d1x1_avm_byteenable(GPOUT,119)
    assign out_memdep_78_conv2d1x1_avm_byteenable = bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_byteenable;

    // out_memdep_78_conv2d1x1_avm_enable(GPOUT,120)
    assign out_memdep_78_conv2d1x1_avm_enable = bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_enable;

    // out_memdep_78_conv2d1x1_avm_read(GPOUT,121)
    assign out_memdep_78_conv2d1x1_avm_read = bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_read;

    // out_memdep_78_conv2d1x1_avm_write(GPOUT,122)
    assign out_memdep_78_conv2d1x1_avm_write = bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_write;

    // out_memdep_78_conv2d1x1_avm_writedata(GPOUT,123)
    assign out_memdep_78_conv2d1x1_avm_writedata = bb_conv2d1x1_B3_out_memdep_78_conv2d1x1_avm_writedata;

    // out_o_active_unnamed_conv2d1x17(GPOUT,124)
    assign out_o_active_unnamed_conv2d1x17 = bb_conv2d1x1_B4_out_lsu_unnamed_conv2d1x17_o_active;

    // out_primWireOut(GPOUT,125)
    assign out_primWireOut = {32'b00000000000000000000000000000000, c_i32_018_q};

    // out_stall_out(GPOUT,126)
    assign out_stall_out = bb_conv2d1x1_B0_out_stall_out_0;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_address(GPOUT,127)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_address = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount(GPOUT,128)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable(GPOUT,129)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_enable(GPOUT,130)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_enable = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_read(GPOUT,131)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_read = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_write(GPOUT,132)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_write = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x10_conv2d1x1_avm_writedata(GPOUT,133)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_writedata = bb_conv2d1x1_B0_out_unnamed_conv2d1x10_conv2d1x1_avm_writedata;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_address(GPOUT,134)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_address = bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount(GPOUT,135)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable(GPOUT,136)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_enable(GPOUT,137)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_enable = bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_read(GPOUT,138)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_read = bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_write(GPOUT,139)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_write = bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x17_conv2d1x1_avm_writedata(GPOUT,140)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_out_unnamed_conv2d1x17_conv2d1x1_avm_writedata;

    // out_valid_out(GPOUT,141)
    assign out_valid_out = bb_conv2d1x1_B1_out_valid_out_0;

endmodule
