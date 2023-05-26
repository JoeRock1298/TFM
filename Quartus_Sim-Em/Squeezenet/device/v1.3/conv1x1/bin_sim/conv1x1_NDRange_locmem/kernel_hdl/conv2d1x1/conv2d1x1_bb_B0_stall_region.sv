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

// SystemVerilog created from conv2d1x1_bb_B0_stall_region
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B0_stall_region (
    input wire [0:0] in_wgl_0_enter_exit_valid_in,
    input wire [0:0] in_wgl_0_enter_exit_stall_in,
    output wire [0:0] out_wgl_0_enter_exit_valid_out,
    output wire [0:0] out_wgl_0_enter_exit_stall_out,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [31:0] in_input_size,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_global_id_0,
    input wire [63:0] in_acl_global_id_1,
    input wire [31:0] in_acl_hw_wg_id,
    input wire [31:0] in_acl_local_linear_id,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_wgl_0_wgs_wg_size,
    output wire [30:0] out_unnamed_conv2d1x10_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x10_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x10_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x10_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x10_conv2d1x1_avm_writedata,
    output wire [63:0] out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable,
    output wire [4:0] out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount,
    output wire [63:0] out_acl_global_id_1,
    output wire [63:0] out_c0_exe1,
    output wire [63:0] out_c0_exe2,
    output wire [31:0] out_c0_exe4,
    output wire [63:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [31:0] out_l_grpid_0,
    output wire [31:0] out_unnamed_conv2d1x10,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_unnamed_conv2d1x10_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x10_conv2d1x1_avm_writeack,
    input wire [0:0] in_unnamed_conv2d1x10_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x10_conv2d1x1_avm_readdatavalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_o_data;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_o_stall;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_o_valid;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_wgl_0_enter_exit_stall_out;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_wgl_0_enter_exit_valid_out;
    wire [0:0] conv2d1x1_B0_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B0_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_1_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_2_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_3_tpl;
    wire [31:0] i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_4_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_5_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_6_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_7_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_8_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_9_tpl;
    wire [227:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_in;
    wire redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_in;
    wire redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_data_in;
    wire [0:0] redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_out;
    wire redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_out;
    wire redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_data_out;
    wire [0:0] redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_in;
    wire redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_in;
    wire redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_data_in;
    wire [0:0] redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_out;
    wire redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_out;
    wire redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_data_out;
    reg [227:0] coalesced_delay_0_0_q;
    reg [227:0] coalesced_delay_0_1_q;
    reg [227:0] coalesced_delay_0_2_q;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_b;
    wire [31:0] bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_q;
    wire [31:0] bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_b;
    wire [191:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [191:0] bubble_join_conv2d1x1_B0_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_e;
    wire [291:0] bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_j;
    wire [63:0] bubble_join_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_q;
    wire [63:0] bubble_select_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_b;
    wire [31:0] bubble_join_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_q;
    wire [31:0] bubble_select_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_V1;
    wire [0:0] SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_wireValid;
    wire [0:0] SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and0;
    wire [0:0] SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and1;
    wire [0:0] SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and2;
    wire [0:0] SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and3;
    wire [0:0] SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_backStall;
    wire [0:0] SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_V0;
    wire [0:0] SE_out_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_wireValid;
    wire [0:0] SE_out_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_backStall;
    wire [0:0] SE_out_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_in_bitsignaltemp;
    wire [31:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_data_in;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_out_bitsignaltemp;
    wire [31:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_data_out;


    // bubble_join_stall_entry(BITJOIN,61)
    assign bubble_join_stall_entry_q = {in_acl_local_linear_id, in_acl_hw_wg_id, in_acl_global_id_1, in_acl_global_id_0};

    // bubble_select_stall_entry(BITSELECT,62)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[191:160]);

    // SE_stall_entry(STALLENABLE,80)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B0_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B0_merge_reg_aunroll_x(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    conv2d1x1_B0_merge_reg theconv2d1x1_B0_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B0_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_e),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .out_stall_out(conv2d1x1_B0_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B0_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d1x1_B0_merge_reg_aunroll_x(BITJOIN,65)
    assign bubble_join_conv2d1x1_B0_merge_reg_aunroll_x_q = {conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B0_merge_reg_aunroll_x(BITSELECT,66)
    assign bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B0_merge_reg_aunroll_x_q[63:0]);
    assign bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B0_merge_reg_aunroll_x_q[127:64]);
    assign bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B0_merge_reg_aunroll_x_q[159:128]);
    assign bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B0_merge_reg_aunroll_x_q[191:160]);

    // redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo(STALLFIFO,47)
    assign redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_in = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_V1;
    assign redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_in = SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_backStall;
    assign redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_data_in = bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_c;
    assign redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_in_bitsignaltemp = redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_in[0];
    assign redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_in_bitsignaltemp = redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_in[0];
    assign redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_out[0] = redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_out_bitsignaltemp;
    assign redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_out[0] = redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(15),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo (
        .valid_in(redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_c),
        .valid_out(redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_coalesced_delay_0_2(STALLENABLE,94)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SE_coalesced_delay_0_1_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_1(STALLENABLE,93)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_coalesced_delay_0_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_0(STALLENABLE,92)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_V1;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14(BITJOIN,53)
    assign bubble_join_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_q = i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_o_readdata;

    // bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg(STALLFIFO,129)
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_in = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_V1;
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_in = SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_backStall;
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_data_in = bubble_join_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_q;
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(32),
        .IMPL("zl_reg")
    ) thebubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_q),
        .valid_out(bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14(STALLENABLE,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_consumed0 = (~ (SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_backStall) & SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_consumed1 = (~ (bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_StallValid = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_backStall & SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_StallValid & SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_StallValid & SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_or0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_backStall = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_V0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_V1 = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_wireValid = i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x(BITJOIN,68)
    assign bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_q = {i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_9_tpl, i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_8_tpl, i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_7_tpl, i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_6_tpl, i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_5_tpl, i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_4_tpl, i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_3_tpl, i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x(BITSELECT,69)
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_q[191:128]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_q[223:192]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_q[287:224]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_q[288:288]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_q[289:289]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_q[290:290]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_q[291:291]);

    // i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14(BLACKBOX,7)@12
    // in in_i_stall@20000000
    // out out_o_readdata@15
    // out out_o_stall@20000000
    // out out_o_valid@15
    // out out_unnamed_conv2d1x10_conv2d1x1_avm_address@20000000
    // out out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount@20000000
    // out out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable@20000000
    // out out_unnamed_conv2d1x10_conv2d1x1_avm_enable@20000000
    // out out_unnamed_conv2d1x10_conv2d1x1_avm_read@20000000
    // out out_unnamed_conv2d1x10_conv2d1x1_avm_write@20000000
    // out out_unnamed_conv2d1x10_conv2d1x1_avm_writedata@20000000
    conv2d1x1_i_llvm_fpga_mem_unnamed_0_conv2d1x10 thei_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_d),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_V0),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_readdata(in_unnamed_conv2d1x10_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x10_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x10_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x10_conv2d1x1_avm_writeack(in_unnamed_conv2d1x10_conv2d1x1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_o_valid),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_address(i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_enable(i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_read(i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_write(i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x10_conv2d1x1_avm_writedata(i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x(STALLENABLE,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_o_stall) & SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_wireValid = i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x(BLACKBOX,33)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@12
    // out out_c0_exit_0_tpl@12
    // out out_c0_exit_1_tpl@12
    // out out_c0_exit_2_tpl@12
    // out out_c0_exit_3_tpl@12
    // out out_c0_exit_4_tpl@12
    // out out_c0_exit_5_tpl@12
    // out out_c0_exit_6_tpl@12
    // out out_c0_exit_7_tpl@12
    // out out_c0_exit_8_tpl@12
    // out out_c0_exit_9_tpl@12
    conv2d1x1_i_sfc_s_c0_in_entry_s_c0_enter_conv2d1x12 thei_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x (
        .in_filter_bias(in_filter_bias),
        .in_filter_weight(in_filter_weight),
        .in_i_stall(SE_out_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B0_merge_reg_aunroll_x_V0),
        .in_input_channels(in_input_channels),
        .in_input_size(in_input_size),
        .in_output_im(in_output_im),
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_1_tpl(bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_d),
        .in_c0_eni2_2_tpl(bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_b),
        .out_o_stall(i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_3_tpl),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_4_tpl),
        .out_c0_exit_5_tpl(i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_5_tpl),
        .out_c0_exit_6_tpl(i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_6_tpl),
        .out_c0_exit_7_tpl(i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_7_tpl),
        .out_c0_exit_8_tpl(i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_8_tpl),
        .out_c0_exit_9_tpl(i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_c0_exit_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv2d1x1_B0_merge_reg_aunroll_x(STALLENABLE,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg0 <= SE_out_conv2d1x1_B0_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg1 <= SE_out_conv2d1x1_B0_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg2 <= SE_out_conv2d1x1_B0_merge_reg_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_out_o_stall) & SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg0;
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed1 = (~ (redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_stall_out) & SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg1;
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed2 = (~ (redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_out) & SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_StallValid = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_backStall & SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireValid;
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_toReg0 = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_toReg1 = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed1;
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_toReg2 = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_or0 = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_or1 = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed1 & SE_out_conv2d1x1_B0_merge_reg_aunroll_x_or0;
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireStall = ~ (SE_out_conv2d1x1_B0_merge_reg_aunroll_x_consumed2 & SE_out_conv2d1x1_B0_merge_reg_aunroll_x_or1);
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_backStall = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg0);
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_V1 = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg1);
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_V2 = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B0_merge_reg_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B0_merge_reg_aunroll_x_wireValid = conv2d1x1_B0_merge_reg_aunroll_x_out_valid_out;

    // redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo(STALLFIFO,48)
    assign redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_in = SE_out_conv2d1x1_B0_merge_reg_aunroll_x_V2;
    assign redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_in = SE_out_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_backStall;
    assign redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_data_in = bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_e;
    assign redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_in_bitsignaltemp = redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_in[0];
    assign redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_in_bitsignaltemp = redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_in[0];
    assign redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_out[0] = redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_out_bitsignaltemp;
    assign redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_out[0] = redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(14),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo (
        .valid_in(redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_conv2d1x1_B0_merge_reg_aunroll_x_e),
        .valid_out(redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo(STALLENABLE,91)
    // Valid signal propagation
    assign SE_out_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_V0 = SE_out_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_backStall = i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_o_stall | ~ (SE_out_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_wireValid = redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_valid_out;

    // SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo(STALLENABLE,89)
    // Valid signal propagation
    assign SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_V0 = SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_backStall = in_stall_in | ~ (SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and0 = redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_valid_out;
    assign SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and1 = i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_o_valid & SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and0;
    assign SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and2 = bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_valid_out & SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and1;
    assign SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and3 = SE_coalesced_delay_0_2_V0 & SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and2;
    assign SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_wireValid = SE_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_V0 & SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_and3;

    // bubble_join_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo(BITJOIN,74)
    assign bubble_join_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_q = redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_data_out;

    // bubble_select_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo(BITSELECT,75)
    assign bubble_select_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_b = $unsigned(bubble_join_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_q[31:0]);

    // i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10(BLACKBOX,8)@14
    // in in_i_stall@20000000
    // out out_o_data@15
    // out out_o_stall@20000000
    // out out_o_valid@15
    // out out_wgl_0_enter_exit_stall_out@20000000
    // out out_wgl_0_enter_exit_valid_out@20000000
    conv2d1x1_i_llvm_fpga_wg_limiter_enter_l_grpid_0_0 thei_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10 (
        .in_i_data(bubble_select_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_b),
        .in_i_stall(SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_backStall),
        .in_i_valid(SE_out_redist9_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_3_tpl_13_fifo_V0),
        .in_wgl_0_enter_exit_stall_in(in_wgl_0_enter_exit_stall_in),
        .in_wgl_0_enter_exit_valid_in(in_wgl_0_enter_exit_valid_in),
        .in_wgl_0_wgs_wg_size(in_wgl_0_wgs_wg_size),
        .out_o_data(i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_o_data),
        .out_o_stall(i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_o_stall),
        .out_o_valid(i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_o_valid),
        .out_wgl_0_enter_exit_stall_out(i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_wgl_0_enter_exit_stall_out),
        .out_wgl_0_enter_exit_valid_out(i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_wgl_0_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_wgl_0_enter_exit_valid_out = i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_wgl_0_enter_exit_valid_out;
    assign out_wgl_0_enter_exit_stall_out = i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_wgl_0_enter_exit_stall_out;

    // sync_out(GPOUT,26)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,30)
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_address = i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_address;
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_enable = i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_enable;
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_read = i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_read;
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_write = i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_write;
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_writedata = i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_writedata;
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_byteenable;
    assign out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_out_unnamed_conv2d1x10_conv2d1x1_avm_burstcount;

    // bubble_select_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14(BITSELECT,54)
    assign bubble_select_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_b = $unsigned(bubble_out_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_data_reg_data_out[31:0]);

    // bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10(BITJOIN,57)
    assign bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_q = i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_out_o_data;

    // bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10(BITSELECT,58)
    assign bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_b = $unsigned(bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_q[31:0]);

    // join_for_coalesced_delay_0(BITJOIN,45)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_j, bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_i, bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_h, bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_g, bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_e, bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_f, bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_c, bubble_select_i_sfc_s_c0_in_entry_conv2d1x1s_c0_enter_conv2d1x12_aunroll_x_b};

    // coalesced_delay_0_0(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(228'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(228'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(228'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,46)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_2_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_2_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_2_q[191:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_2_q[223:192]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_2_q[224:224]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_2_q[225:225]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_2_q[226:226]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_2_q[227:227]);

    // bubble_join_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo(BITJOIN,71)
    assign bubble_join_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_q = redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_data_out;

    // bubble_select_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo(BITSELECT,72)
    assign bubble_select_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_b = $unsigned(bubble_join_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_q[63:0]);

    // dupName_0_sync_out_x(GPOUT,31)@15
    assign out_acl_global_id_1 = bubble_select_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_b;
    assign out_c0_exe1 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe2 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe4 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe8 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe9 = sel_for_coalesced_delay_0_i;
    assign out_l_grpid_0 = bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_0_conv2d1x10_b;
    assign out_unnamed_conv2d1x10 = bubble_select_i_llvm_fpga_mem_unnamed_conv2d1x10_conv2d1x14_b;
    assign out_valid_out = SE_out_redist8_conv2d1x1_B0_merge_reg_aunroll_x_out_data_out_1_tpl_14_fifo_V0;

endmodule
