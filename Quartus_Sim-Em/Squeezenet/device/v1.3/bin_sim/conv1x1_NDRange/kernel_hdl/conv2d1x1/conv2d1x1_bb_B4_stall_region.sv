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

// SystemVerilog created from conv2d1x1_bb_B4_stall_region
// SystemVerilog created on Wed May 17 11:22:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B4_stall_region (
    input wire [511:0] in_lm_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm_conv2d1x1_avm_address,
    output wire [0:0] out_lm_conv2d1x1_avm_enable,
    output wire [0:0] out_lm_conv2d1x1_avm_read,
    output wire [0:0] out_lm_conv2d1x1_avm_write,
    output wire [511:0] out_lm_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm_conv2d1x1_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_global_id_132,
    input wire [63:0] in_c0_exe11,
    input wire [31:0] in_c0_exe14927,
    input wire [31:0] in_c0_exe34,
    input wire [63:0] in_c0_exe48,
    input wire [0:0] in_c0_exe511,
    input wire [0:0] in_c0_exe613,
    input wire [0:0] in_c0_exe716,
    input wire [0:0] in_c0_exe820,
    input wire [0:0] in_c0_exe922,
    input wire [31:0] in_j_05926,
    input wire [31:0] in_k_057,
    input wire [31:0] in_tmp_056,
    input wire [31:0] in_unnamed_conv2d1x16,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm12_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm12_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm12_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm12_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm12_conv2d1x1_avm_address,
    output wire [0:0] out_lm12_conv2d1x1_avm_enable,
    output wire [0:0] out_lm12_conv2d1x1_avm_read,
    output wire [0:0] out_lm12_conv2d1x1_avm_write,
    output wire [511:0] out_lm12_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm12_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm12_conv2d1x1_avm_burstcount,
    output wire [63:0] out_acl_global_id_132,
    output wire [63:0] out_c0_exe11,
    output wire [31:0] out_c0_exe14927,
    output wire [31:0] out_c0_exe34,
    output wire [63:0] out_c0_exe48,
    output wire [0:0] out_c0_exe511,
    output wire [31:0] out_c0_exe572,
    output wire [0:0] out_c0_exe613,
    output wire [0:0] out_c0_exe673,
    output wire [0:0] out_c0_exe716,
    output wire [0:0] out_c0_exe820,
    output wire [0:0] out_c0_exe922,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_j_05926,
    output wire [31:0] out_unnamed_conv2d1x16,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_lm14_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm14_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm14_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm14_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm14_conv2d1x1_avm_address,
    output wire [0:0] out_lm14_conv2d1x1_avm_enable,
    output wire [0:0] out_lm14_conv2d1x1_avm_read,
    output wire [0:0] out_lm14_conv2d1x1_avm_write,
    output wire [511:0] out_lm14_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm14_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm14_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm16_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm16_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm16_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm16_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm16_conv2d1x1_avm_address,
    output wire [0:0] out_lm16_conv2d1x1_avm_enable,
    output wire [0:0] out_lm16_conv2d1x1_avm_read,
    output wire [0:0] out_lm16_conv2d1x1_avm_write,
    output wire [511:0] out_lm16_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm16_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm16_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm11_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm11_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm11_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm11_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm11_conv2d1x1_avm_address,
    output wire [0:0] out_lm11_conv2d1x1_avm_enable,
    output wire [0:0] out_lm11_conv2d1x1_avm_read,
    output wire [0:0] out_lm11_conv2d1x1_avm_write,
    output wire [511:0] out_lm11_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm11_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm11_conv2d1x1_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_idxprom20_conv2d1x10_vt_const_63_q;
    wire [63:0] i_idxprom20_conv2d1x10_vt_join_q;
    wire [31:0] i_idxprom20_conv2d1x10_vt_select_31_b;
    wire [30:0] i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm12_conv2d1x16_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm12_conv2d1x16_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm12_conv2d1x16_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm14_conv2d1x17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm14_conv2d1x17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm14_conv2d1x17_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm16_conv2d1x18_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm16_conv2d1x18_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm16_conv2d1x18_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm_conv2d1x15_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x15_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x15_out_o_valid;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [63:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [63:0] conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [64:0] i_arrayidx216_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx216_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx216_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx216_conv2d1x10_add_x_q;
    wire [3:0] i_arrayidx216_conv2d1x10_c_i4_01_x_q;
    wire [59:0] i_arrayidx216_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx216_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx216_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom20_conv2d1x10_sel_x_b;
    wire [30:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_6_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_out_c1_exit_1_tpl;
    wire [96:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [64:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [226:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [63:0] sel_for_coalesced_delay_2_c;
    wire [31:0] sel_for_coalesced_delay_2_d;
    wire [31:0] sel_for_coalesced_delay_2_e;
    wire [31:0] sel_for_coalesced_delay_2_f;
    wire [0:0] sel_for_coalesced_delay_2_g;
    wire [0:0] sel_for_coalesced_delay_2_h;
    wire [0:0] sel_for_coalesced_delay_2_i;
    wire [32:0] join_for_coalesced_delay_3_q;
    wire [31:0] sel_for_coalesced_delay_3_b;
    wire [0:0] sel_for_coalesced_delay_3_c;
    wire [32:0] join_for_coalesced_delay_4_q;
    wire [31:0] sel_for_coalesced_delay_4_b;
    wire [0:0] sel_for_coalesced_delay_4_c;
    wire [64:0] join_for_coalesced_delay_5_q;
    wire [63:0] sel_for_coalesced_delay_5_b;
    wire [0:0] sel_for_coalesced_delay_5_c;
    reg [96:0] coalesced_delay_0_0_q;
    reg [96:0] coalesced_delay_0_1_q;
    reg [96:0] coalesced_delay_0_2_q;
    reg [96:0] coalesced_delay_0_3_q;
    reg [96:0] coalesced_delay_0_4_q;
    reg [96:0] coalesced_delay_0_5_q;
    reg [96:0] coalesced_delay_0_6_q;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [226:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [226:0] coalesced_delay_2_fifo_data_out;
    wire [0:0] coalesced_delay_3_fifo_valid_in;
    wire coalesced_delay_3_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_3_fifo_stall_in;
    wire coalesced_delay_3_fifo_stall_in_bitsignaltemp;
    wire [32:0] coalesced_delay_3_fifo_data_in;
    wire [0:0] coalesced_delay_3_fifo_valid_out;
    wire coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_3_fifo_stall_out;
    wire coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    wire [32:0] coalesced_delay_3_fifo_data_out;
    wire [0:0] coalesced_delay_4_fifo_valid_in;
    wire coalesced_delay_4_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_4_fifo_stall_in;
    wire coalesced_delay_4_fifo_stall_in_bitsignaltemp;
    wire [32:0] coalesced_delay_4_fifo_data_in;
    wire [0:0] coalesced_delay_4_fifo_valid_out;
    wire coalesced_delay_4_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_4_fifo_stall_out;
    wire coalesced_delay_4_fifo_stall_out_bitsignaltemp;
    wire [32:0] coalesced_delay_4_fifo_data_out;
    wire [0:0] coalesced_delay_5_fifo_valid_in;
    wire coalesced_delay_5_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_5_fifo_stall_in;
    wire coalesced_delay_5_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_5_fifo_data_in;
    wire [0:0] coalesced_delay_5_fifo_valid_out;
    wire coalesced_delay_5_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_5_fifo_stall_out;
    wire coalesced_delay_5_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_5_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm12_conv2d1x16_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm12_conv2d1x16_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm14_conv2d1x17_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm14_conv2d1x17_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm16_conv2d1x18_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm16_conv2d1x18_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm_conv2d1x15_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm_conv2d1x15_b;
    wire [388:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [388:0] bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_e;
    wire [63:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_n;
    wire [63:0] bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_o;
    wire [127:0] bubble_join_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_e;
    wire [288:0] bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_g;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_b;
    wire [64:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [226:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [226:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_3_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_3_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_4_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_4_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_5_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_5_fifo_b;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg2;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg3;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg3;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed3;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_or0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_or1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_or2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V3;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_conv2d1x15_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_V1;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_wireValid;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and0;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and1;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and2;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and3;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and4;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_backStall;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_V0;
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
    reg [0:0] SE_coalesced_delay_0_3_R_v_0;
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    reg [0:0] SE_coalesced_delay_0_4_R_v_0;
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    reg [0:0] SE_coalesced_delay_0_5_R_v_0;
    wire [0:0] SE_coalesced_delay_0_5_v_s_0;
    wire [0:0] SE_coalesced_delay_0_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_5_backEN;
    wire [0:0] SE_coalesced_delay_0_5_backStall;
    wire [0:0] SE_coalesced_delay_0_5_V0;
    reg [0:0] SE_coalesced_delay_0_6_R_v_0;
    reg [0:0] SE_coalesced_delay_0_6_R_v_1;
    reg [0:0] SE_coalesced_delay_0_6_R_v_2;
    wire [0:0] SE_coalesced_delay_0_6_v_s_0;
    wire [0:0] SE_coalesced_delay_0_6_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_6_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_6_s_tv_2;
    wire [0:0] SE_coalesced_delay_0_6_backEN;
    wire [0:0] SE_coalesced_delay_0_6_or0;
    wire [0:0] SE_coalesced_delay_0_6_or1;
    wire [0:0] SE_coalesced_delay_0_6_backStall;
    wire [0:0] SE_coalesced_delay_0_6_V0;
    wire [0:0] SE_coalesced_delay_0_6_V1;
    wire [0:0] SE_coalesced_delay_0_6_V2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and8;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_coalesced_delay_0_4_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_4_r_valid;
    reg [96:0] SR_SE_coalesced_delay_0_4_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_4_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_4_V;
    wire [96:0] SR_SE_coalesced_delay_0_4_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_and0;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data1;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data2;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data3;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data4;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data5;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data6;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data7;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D2;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D4;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D5;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D6;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D7;


    // bubble_join_stall_entry(BITJOIN,127)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x16, in_tmp_056, in_k_057, in_j_05926, in_c0_exe922, in_c0_exe820, in_c0_exe716, in_c0_exe613, in_c0_exe511, in_c0_exe48, in_c0_exe34, in_c0_exe14927, in_c0_exe11, in_acl_global_id_132};

    // bubble_select_stall_entry(BITSELECT,128)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[191:160]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[255:192]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[256:256]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[257:257]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[258:258]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[259:259]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[260:260]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[292:261]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[324:293]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[356:325]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[388:357]);

    // SE_stall_entry(STALLENABLE,168)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B4_merge_reg_aunroll_x(BLACKBOX,39)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    conv2d1x1_B4_merge_reg theconv2d1x1_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_m),
        .in_data_in_1_tpl(bubble_select_stall_entry_n),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_data_in_5_tpl(bubble_select_stall_entry_g),
        .in_data_in_6_tpl(bubble_select_stall_entry_h),
        .in_data_in_7_tpl(bubble_select_stall_entry_i),
        .in_data_in_8_tpl(bubble_select_stall_entry_j),
        .in_data_in_9_tpl(bubble_select_stall_entry_k),
        .in_data_in_10_tpl(bubble_select_stall_entry_o),
        .in_data_in_11_tpl(bubble_select_stall_entry_l),
        .in_data_in_12_tpl(bubble_select_stall_entry_d),
        .in_data_in_13_tpl(bubble_select_stall_entry_b),
        .out_stall_out(conv2d1x1_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_13_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d1x1_B4_merge_reg_aunroll_x(BITJOIN,131)
    assign bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q = {conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B4_merge_reg_aunroll_x(BITSELECT,132)
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[127:64]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[159:128]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[223:160]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[224:224]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[225:225]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[226:226]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[227:227]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[228:228]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[260:229]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[292:261]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[324:293]);
    assign bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d1x1_B4_merge_reg_aunroll_x_q[388:325]);

    // join_for_coalesced_delay_1(BITJOIN,84)
    assign join_for_coalesced_delay_1_q = {bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_h, bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_l, bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_c};

    // join_for_coalesced_delay_2(BITJOIN,87)
    assign join_for_coalesced_delay_2_q = {bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_j, bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_i, bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_g, bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_n, bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_m, bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_e, bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_o, bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_f};

    // coalesced_delay_2_fifo(STALLFIFO,106)
    assign coalesced_delay_2_fifo_valid_in = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V3;
    assign coalesced_delay_2_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(154),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(227),
        .IMPL("ram")
    ) thecoalesced_delay_2_fifo (
        .valid_in(coalesced_delay_2_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_2_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_2_q),
        .valid_out(coalesced_delay_2_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_2_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_2_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,81)
    assign join_for_coalesced_delay_0_q = {bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_k, bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_b, bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_d};

    // coalesced_delay_0_0(REG,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // coalesced_delay_0_4(REG,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(SR_SE_coalesced_delay_0_4_D0);
        end
    end

    // coalesced_delay_0_5(REG,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(coalesced_delay_0_4_q);
        end
    end

    // coalesced_delay_0_6(REG,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_6_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_6_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(coalesced_delay_0_5_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,82)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_6_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_6_q[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_6_q[96:96]);

    // i_idxprom20_conv2d1x10_vt_const_63(CONSTANT,8)
    assign i_idxprom20_conv2d1x10_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_idxprom20_conv2d1x10_sel_x(BITSELECT,55)@8
    assign i_idxprom20_conv2d1x10_sel_x_b = {32'b00000000000000000000000000000000, sel_for_coalesced_delay_0_c[31:0]};

    // i_idxprom20_conv2d1x10_vt_select_31(BITSELECT,10)@8
    assign i_idxprom20_conv2d1x10_vt_select_31_b = i_idxprom20_conv2d1x10_sel_x_b[31:0];

    // i_idxprom20_conv2d1x10_vt_join(BITJOIN,9)@8
    assign i_idxprom20_conv2d1x10_vt_join_q = {i_idxprom20_conv2d1x10_vt_const_63_q, i_idxprom20_conv2d1x10_vt_select_31_b};

    // i_arrayidx216_conv2d1x10_narrow_x(BITSELECT,51)@8
    assign i_arrayidx216_conv2d1x10_narrow_x_b = i_idxprom20_conv2d1x10_vt_join_q[59:0];

    // i_arrayidx216_conv2d1x10_c_i4_01_x(CONSTANT,50)
    assign i_arrayidx216_conv2d1x10_c_i4_01_x_q = $unsigned(4'b0000);

    // i_arrayidx216_conv2d1x10_shift_join_x(BITJOIN,52)@8
    assign i_arrayidx216_conv2d1x10_shift_join_x_q = {i_arrayidx216_conv2d1x10_narrow_x_b, i_arrayidx216_conv2d1x10_c_i4_01_x_q};

    // i_arrayidx216_conv2d1x10_add_x(ADD,49)@8
    assign i_arrayidx216_conv2d1x10_add_x_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_arrayidx216_conv2d1x10_add_x_b = {1'b0, i_arrayidx216_conv2d1x10_shift_join_x_q};
    assign i_arrayidx216_conv2d1x10_add_x_o = $unsigned(i_arrayidx216_conv2d1x10_add_x_a) + $unsigned(i_arrayidx216_conv2d1x10_add_x_b);
    assign i_arrayidx216_conv2d1x10_add_x_q = i_arrayidx216_conv2d1x10_add_x_o[64:0];

    // i_arrayidx216_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,54)@8
    assign i_arrayidx216_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx216_conv2d1x10_add_x_q[63:0];

    // i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x(BLACKBOX,56)@8
    // in in_i_stall@20000000
    // out out_lm11_conv2d1x1_avm_address@20000000
    // out out_lm11_conv2d1x1_avm_burstcount@20000000
    // out out_lm11_conv2d1x1_avm_byteenable@20000000
    // out out_lm11_conv2d1x1_avm_enable@20000000
    // out out_lm11_conv2d1x1_avm_read@20000000
    // out out_lm11_conv2d1x1_avm_write@20000000
    // out out_lm11_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@137
    // out out_o_readdata_0_tpl@137
    // out out_o_readdata_1_tpl@137
    // out out_o_readdata_2_tpl@137
    // out out_o_readdata_3_tpl@137
    conv2d1x1_i_llvm_fpga_mem_lm11_0 thei_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx216_conv2d1x10_dupName_0_trunc_sel_x_b),
        .in_i_predicate(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_backStall),
        .in_i_valid(SE_coalesced_delay_0_6_V2),
        .in_lm11_conv2d1x1_avm_readdata(in_lm11_conv2d1x1_avm_readdata),
        .in_lm11_conv2d1x1_avm_readdatavalid(in_lm11_conv2d1x1_avm_readdatavalid),
        .in_lm11_conv2d1x1_avm_waitrequest(in_lm11_conv2d1x1_avm_waitrequest),
        .in_lm11_conv2d1x1_avm_writeack(in_lm11_conv2d1x1_avm_writeack),
        .out_lm11_conv2d1x1_avm_address(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_address),
        .out_lm11_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_burstcount),
        .out_lm11_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_byteenable),
        .out_lm11_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_enable),
        .out_lm11_conv2d1x1_avm_read(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_read),
        .out_lm11_conv2d1x1_avm_write(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_write),
        .out_lm11_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_valid),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_5(BITJOIN,96)
    assign join_for_coalesced_delay_5_q = {sel_for_coalesced_delay_0_d, sel_for_coalesced_delay_0_b};

    // coalesced_delay_5_fifo(STALLFIFO,109)
    assign coalesced_delay_5_fifo_valid_in = SE_coalesced_delay_0_6_V1;
    assign coalesced_delay_5_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall;
    assign coalesced_delay_5_fifo_data_in = join_for_coalesced_delay_5_q;
    assign coalesced_delay_5_fifo_valid_in_bitsignaltemp = coalesced_delay_5_fifo_valid_in[0];
    assign coalesced_delay_5_fifo_stall_in_bitsignaltemp = coalesced_delay_5_fifo_stall_in[0];
    assign coalesced_delay_5_fifo_valid_out[0] = coalesced_delay_5_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_5_fifo_stall_out[0] = coalesced_delay_5_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(147),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_5_fifo (
        .valid_in(coalesced_delay_5_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_5_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_5_q),
        .valid_out(coalesced_delay_5_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_5_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_5_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_6(STALLENABLE,201)
    // Valid signal propagation
    assign SE_coalesced_delay_0_6_V0 = SE_coalesced_delay_0_6_R_v_0;
    assign SE_coalesced_delay_0_6_V1 = SE_coalesced_delay_0_6_R_v_1;
    assign SE_coalesced_delay_0_6_V2 = SE_coalesced_delay_0_6_R_v_2;
    // Stall signal propagation
    assign SE_coalesced_delay_0_6_s_tv_0 = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_backStall & SE_coalesced_delay_0_6_R_v_0;
    assign SE_coalesced_delay_0_6_s_tv_1 = coalesced_delay_5_fifo_stall_out & SE_coalesced_delay_0_6_R_v_1;
    assign SE_coalesced_delay_0_6_s_tv_2 = i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_stall & SE_coalesced_delay_0_6_R_v_2;
    // Backward Enable generation
    assign SE_coalesced_delay_0_6_or0 = SE_coalesced_delay_0_6_s_tv_0;
    assign SE_coalesced_delay_0_6_or1 = SE_coalesced_delay_0_6_s_tv_1 | SE_coalesced_delay_0_6_or0;
    assign SE_coalesced_delay_0_6_backEN = ~ (SE_coalesced_delay_0_6_s_tv_2 | SE_coalesced_delay_0_6_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_6_v_s_0 = SE_coalesced_delay_0_6_backEN & SE_coalesced_delay_0_5_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_6_backStall = ~ (SE_coalesced_delay_0_6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_6_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_6_R_v_1 <= 1'b0;
            SE_coalesced_delay_0_6_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_6_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_R_v_0 & SE_coalesced_delay_0_6_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_v_s_0;
            end

            if (SE_coalesced_delay_0_6_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_6_R_v_1 <= SE_coalesced_delay_0_6_R_v_1 & SE_coalesced_delay_0_6_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_6_R_v_1 <= SE_coalesced_delay_0_6_v_s_0;
            end

            if (SE_coalesced_delay_0_6_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_6_R_v_2 <= SE_coalesced_delay_0_6_R_v_2 & SE_coalesced_delay_0_6_s_tv_2;
            end
            else
            begin
                SE_coalesced_delay_0_6_R_v_2 <= SE_coalesced_delay_0_6_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_5(STALLENABLE,200)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SE_coalesced_delay_0_6_backStall & SE_coalesced_delay_0_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_5_backEN = ~ (SE_coalesced_delay_0_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_5_v_s_0 = SE_coalesced_delay_0_5_backEN & SE_coalesced_delay_0_4_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_5_backStall = ~ (SE_coalesced_delay_0_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_R_v_0 & SE_coalesced_delay_0_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_4(STALLENABLE,199)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SR_SE_coalesced_delay_0_4_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_R_v_0 & SE_coalesced_delay_0_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_4(STALLREG,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_4_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_4_r_data0 <= 97'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_4_r_valid <= SE_coalesced_delay_0_4_backStall & (SR_SE_coalesced_delay_0_4_r_valid | SR_SE_coalesced_delay_0_4_i_valid);

            if (SR_SE_coalesced_delay_0_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_4_r_data0 <= $unsigned(coalesced_delay_0_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_4_i_valid = SE_coalesced_delay_0_3_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_4_backStall = SR_SE_coalesced_delay_0_4_r_valid | ~ (SR_SE_coalesced_delay_0_4_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_4_V = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_valid : SR_SE_coalesced_delay_0_4_i_valid;

    assign SR_SE_coalesced_delay_0_4_D0 = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_data0 : coalesced_delay_0_3_q;

    // SE_coalesced_delay_0_3(STALLENABLE,198)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SR_SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SE_coalesced_delay_0_2_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_R_v_0 & SE_coalesced_delay_0_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_2(STALLENABLE,197)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
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

    // SE_coalesced_delay_0_1(STALLENABLE,196)
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

    // SE_coalesced_delay_0_0(STALLENABLE,195)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V1;
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

    // bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x(BITJOIN,138)
    assign bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_q = {i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_6_tpl, i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_5_tpl, i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_4_tpl, i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_3_tpl, i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_2_tpl, i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x(BITSELECT,139)
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_q[191:128]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_q[255:192]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_q[287:256]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_q[288:288]);

    // join_for_coalesced_delay_3(BITJOIN,90)
    assign join_for_coalesced_delay_3_q = {bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_f};

    // coalesced_delay_3_fifo(STALLFIFO,107)
    assign coalesced_delay_3_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_V1;
    assign coalesced_delay_3_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall;
    assign coalesced_delay_3_fifo_data_in = join_for_coalesced_delay_3_q;
    assign coalesced_delay_3_fifo_valid_in_bitsignaltemp = coalesced_delay_3_fifo_valid_in[0];
    assign coalesced_delay_3_fifo_stall_in_bitsignaltemp = coalesced_delay_3_fifo_stall_in[0];
    assign coalesced_delay_3_fifo_valid_out[0] = coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_3_fifo_stall_out[0] = coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(147),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("ram")
    ) thecoalesced_delay_3_fifo (
        .valid_in(coalesced_delay_3_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_3_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_3_q),
        .valid_out(coalesced_delay_3_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_3_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_3_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x(STALLENABLE,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_consumed0 = (~ (SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_backStall) & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_consumed1 = (~ (coalesced_delay_3_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_wireValid = i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x(BLACKBOX,57)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_c0_exit67_0_tpl@8
    // out out_c0_exit67_1_tpl@8
    // out out_c0_exit67_2_tpl@8
    // out out_c0_exit67_3_tpl@8
    // out out_c0_exit67_4_tpl@8
    // out out_c0_exit67_5_tpl@8
    // out out_c0_exit67_6_tpl@8
    conv2d1x1_i_sfc_s_c0_in_for_body13_s_c0_enter5834_conv2d1x12 thei_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V0),
        .in_input_channels(in_input_channels),
        .in_input_im(in_input_im),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_e),
        .in_c0_eni5_3_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_n),
        .in_c0_eni5_4_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_i),
        .in_c0_eni5_5_tpl(bubble_select_conv2d1x1_B4_merge_reg_aunroll_x_j),
        .out_o_stall(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_o_valid),
        .out_c0_exit67_0_tpl(),
        .out_c0_exit67_1_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_1_tpl),
        .out_c0_exit67_2_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_2_tpl),
        .out_c0_exit67_3_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_3_tpl),
        .out_c0_exit67_4_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_4_tpl),
        .out_c0_exit67_5_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_5_tpl),
        .out_c0_exit67_6_tpl(i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_c0_exit67_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv2d1x1_B4_merge_reg_aunroll_x(STALLENABLE,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_out_o_stall) & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed3 = (~ (coalesced_delay_2_fifo_stall_out) & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_StallValid = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_backStall & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg0 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg1 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg2 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_toReg3 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_or0 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_or1 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed1 & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_or0;
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_or2 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed2 & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_or1;
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_conv2d1x1_B4_merge_reg_aunroll_x_consumed3 & SE_out_conv2d1x1_B4_merge_reg_aunroll_x_or2);
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_backStall = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V1 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V2 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V3 = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv2d1x1_B4_merge_reg_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B4_merge_reg_aunroll_x_wireValid = conv2d1x1_B4_merge_reg_aunroll_x_out_valid_out;

    // coalesced_delay_1_fifo(STALLFIFO,105)
    assign coalesced_delay_1_fifo_valid_in = SE_out_conv2d1x1_B4_merge_reg_aunroll_x_V2;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(137),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,144)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,145)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[64:0]);

    // sel_for_coalesced_delay_1(BITSELECT,85)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[64:64]);

    // bubble_join_i_llvm_fpga_mem_lm14_conv2d1x17(BITJOIN,115)
    assign bubble_join_i_llvm_fpga_mem_lm14_conv2d1x17_q = i_llvm_fpga_mem_lm14_conv2d1x17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm14_conv2d1x17(BITSELECT,116)
    assign bubble_select_i_llvm_fpga_mem_lm14_conv2d1x17_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm14_conv2d1x17_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm16_conv2d1x18(BITJOIN,119)
    assign bubble_join_i_llvm_fpga_mem_lm16_conv2d1x18_q = i_llvm_fpga_mem_lm16_conv2d1x18_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm16_conv2d1x18(BITSELECT,120)
    assign bubble_select_i_llvm_fpga_mem_lm16_conv2d1x18_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm16_conv2d1x18_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm_conv2d1x15(BITJOIN,123)
    assign bubble_join_i_llvm_fpga_mem_lm_conv2d1x15_q = i_llvm_fpga_mem_lm_conv2d1x15_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm_conv2d1x15(BITSELECT,124)
    assign bubble_select_i_llvm_fpga_mem_lm_conv2d1x15_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm_conv2d1x15_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm12_conv2d1x16(BITJOIN,111)
    assign bubble_join_i_llvm_fpga_mem_lm12_conv2d1x16_q = i_llvm_fpga_mem_lm12_conv2d1x16_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm12_conv2d1x16(BITSELECT,112)
    assign bubble_select_i_llvm_fpga_mem_lm12_conv2d1x16_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm12_conv2d1x16_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x(BITJOIN,134)
    assign bubble_join_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_q = {i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_3_tpl, i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_2_tpl, i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_1_tpl, i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_readdata_0_tpl};

    // bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x(BITSELECT,135)
    assign bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_q[63:32]);
    assign bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_q[127:96]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg(STALLFIFO,280)
    assign bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_in = SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_V0;
    assign bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(18),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_4(BITJOIN,93)
    assign join_for_coalesced_delay_4_q = {sel_for_coalesced_delay_1_d, sel_for_coalesced_delay_1_c};

    // coalesced_delay_4_fifo(STALLFIFO,108)
    assign coalesced_delay_4_fifo_valid_in = SE_out_coalesced_delay_1_fifo_V1;
    assign coalesced_delay_4_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall;
    assign coalesced_delay_4_fifo_data_in = join_for_coalesced_delay_4_q;
    assign coalesced_delay_4_fifo_valid_in_bitsignaltemp = coalesced_delay_4_fifo_valid_in[0];
    assign coalesced_delay_4_fifo_stall_in_bitsignaltemp = coalesced_delay_4_fifo_stall_in[0];
    assign coalesced_delay_4_fifo_valid_out[0] = coalesced_delay_4_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_4_fifo_stall_out[0] = coalesced_delay_4_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(18),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("ram")
    ) thecoalesced_delay_4_fifo (
        .valid_in(coalesced_delay_4_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_4_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_4_q),
        .valid_out(coalesced_delay_4_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_4_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_4_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg(STALLFIFO,281)
    assign bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_in = SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_V0;
    assign bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(18),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg(STALLFIFO,283)
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_in = SE_out_i_llvm_fpga_mem_lm_conv2d1x15_V0;
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(18),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg(STALLFIFO,284)
    assign bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_in = SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_V0;
    assign bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(18),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1(STALLENABLE,251)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_V0 = SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and0 = bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and1 = bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and2 = bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and3 = bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and4 = coalesced_delay_5_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and5 = coalesced_delay_4_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and6 = coalesced_delay_3_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and7 = coalesced_delay_2_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and8 = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_out_o_valid & SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and7;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_wireValid = bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_and8;

    // i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x(BLACKBOX,58)@137
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@154
    // out out_c1_exit_0_tpl@154
    // out out_c1_exit_1_tpl@154
    conv2d1x1_i_sfc_s_c1_in_for_body13_s_c1_enter_conv2d1x111 thei_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x (
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall),
        .in_i_valid(SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_V0),
        .in_c1_eni8_0_tpl(GND_q),
        .in_c1_eni8_0_1_tpl(bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_b),
        .in_c1_eni8_1_1_tpl(bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_c),
        .in_c1_eni8_2_tpl(bubble_select_i_llvm_fpga_mem_lm12_conv2d1x16_b),
        .in_c1_eni8_2_1_tpl(bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_d),
        .in_c1_eni8_3_tpl(bubble_select_i_llvm_fpga_mem_lm_conv2d1x15_b),
        .in_c1_eni8_3_1_tpl(bubble_select_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_e),
        .in_c1_eni8_4_tpl(bubble_select_i_llvm_fpga_mem_lm16_conv2d1x18_b),
        .in_c1_eni8_5_tpl(bubble_select_i_llvm_fpga_mem_lm14_conv2d1x17_b),
        .in_c1_eni8_6_tpl(sel_for_coalesced_delay_1_b),
        .in_c1_eni8_7_tpl(sel_for_coalesced_delay_1_d),
        .in_c1_eni8_8_tpl(sel_for_coalesced_delay_1_c),
        .out_o_stall(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x(STALLENABLE,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_fromReg0 <= SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_fromReg1 <= SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_consumed1 = (~ (SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_backStall) & SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_StallValid = SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_backStall & SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_toReg0 = SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_StallValid & SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_toReg1 = SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_StallValid & SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_or0 = SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_consumed1 & SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_or0);
    assign SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_backStall = SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_V0 = SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_V1 = SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_wireValid = i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_mem_lm14_conv2d1x17(STALLENABLE,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_fromReg0 <= SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_fromReg1 <= SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_lm14_conv2d1x17_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_wireValid) | SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_consumed1 = (~ (SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_backStall) & SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_wireValid) | SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_StallValid = SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_backStall & SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_toReg0 = SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_StallValid & SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_toReg1 = SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_StallValid & SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_or0 = SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_consumed1 & SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_or0);
    assign SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_backStall = SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_V0 = SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_V1 = SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_wireValid = i_llvm_fpga_mem_lm14_conv2d1x17_out_o_valid;

    // SE_out_i_llvm_fpga_mem_lm12_conv2d1x16(STALLENABLE,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg0 <= SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg1 <= SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_lm12_conv2d1x16_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid) | SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_consumed1 = (~ (SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_backStall) & SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid) | SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_StallValid = SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_backStall & SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_toReg0 = SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_StallValid & SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_toReg1 = SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_StallValid & SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_or0 = SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_consumed1 & SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_or0);
    assign SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_backStall = SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_V0 = SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_V1 = SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid = i_llvm_fpga_mem_lm12_conv2d1x16_out_o_valid;

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_backStall) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (coalesced_delay_4_fifo_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_wireValid = coalesced_delay_1_fifo_valid_out;

    // SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x(STALLENABLE,181)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_V0 = SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_backStall = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and0 = SE_out_coalesced_delay_1_fifo_V0;
    assign SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and1 = SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_V1 & SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and0;
    assign SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and2 = SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_V1 & SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and1;
    assign SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and3 = SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_V1 & SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and2;
    assign SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and4 = SE_out_i_llvm_fpga_mem_lm_conv2d1x15_V1 & SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and3;
    assign SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_wireValid = SE_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_V1 & SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_and4;

    // bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg(STALLFIFO,282)
    assign bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_in = SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_V0;
    assign bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(18),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm16_conv2d1x18(STALLENABLE,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_fromReg0 <= SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_fromReg1 <= SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_lm16_conv2d1x18_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_wireValid) | SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_consumed1 = (~ (SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_backStall) & SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_wireValid) | SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_StallValid = SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_backStall & SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_toReg0 = SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_StallValid & SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_toReg1 = SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_StallValid & SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_or0 = SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_consumed1 & SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_or0);
    assign SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_backStall = SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_V0 = SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_V1 = SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_wireValid = i_llvm_fpga_mem_lm16_conv2d1x18_out_o_valid;

    // i_llvm_fpga_mem_lm16_conv2d1x18(BLACKBOX,13)@8
    // in in_i_stall@20000000
    // out out_lm16_conv2d1x1_avm_address@20000000
    // out out_lm16_conv2d1x1_avm_burstcount@20000000
    // out out_lm16_conv2d1x1_avm_byteenable@20000000
    // out out_lm16_conv2d1x1_avm_enable@20000000
    // out out_lm16_conv2d1x1_avm_read@20000000
    // out out_lm16_conv2d1x1_avm_write@20000000
    // out out_lm16_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@137
    // out out_o_stall@20000000
    // out out_o_valid@137
    conv2d1x1_i_llvm_fpga_mem_lm16_0 thei_llvm_fpga_mem_lm16_conv2d1x18 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D6),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D3),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm16_conv2d1x18_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V2),
        .in_lm16_conv2d1x1_avm_readdata(in_lm16_conv2d1x1_avm_readdata),
        .in_lm16_conv2d1x1_avm_readdatavalid(in_lm16_conv2d1x1_avm_readdatavalid),
        .in_lm16_conv2d1x1_avm_waitrequest(in_lm16_conv2d1x1_avm_waitrequest),
        .in_lm16_conv2d1x1_avm_writeack(in_lm16_conv2d1x1_avm_writeack),
        .out_lm16_conv2d1x1_avm_address(i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_address),
        .out_lm16_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_burstcount),
        .out_lm16_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_byteenable),
        .out_lm16_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_enable),
        .out_lm16_conv2d1x1_avm_read(i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_read),
        .out_lm16_conv2d1x1_avm_write(i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_write),
        .out_lm16_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm16_conv2d1x18_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm16_conv2d1x18_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm16_conv2d1x18_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm14_conv2d1x17(BLACKBOX,12)@8
    // in in_i_stall@20000000
    // out out_lm14_conv2d1x1_avm_address@20000000
    // out out_lm14_conv2d1x1_avm_burstcount@20000000
    // out out_lm14_conv2d1x1_avm_byteenable@20000000
    // out out_lm14_conv2d1x1_avm_enable@20000000
    // out out_lm14_conv2d1x1_avm_read@20000000
    // out out_lm14_conv2d1x1_avm_write@20000000
    // out out_lm14_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@137
    // out out_o_stall@20000000
    // out out_o_valid@137
    conv2d1x1_i_llvm_fpga_mem_lm14_0 thei_llvm_fpga_mem_lm14_conv2d1x17 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D5),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm14_conv2d1x17_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V1),
        .in_lm14_conv2d1x1_avm_readdata(in_lm14_conv2d1x1_avm_readdata),
        .in_lm14_conv2d1x1_avm_readdatavalid(in_lm14_conv2d1x1_avm_readdatavalid),
        .in_lm14_conv2d1x1_avm_waitrequest(in_lm14_conv2d1x1_avm_waitrequest),
        .in_lm14_conv2d1x1_avm_writeack(in_lm14_conv2d1x1_avm_writeack),
        .out_lm14_conv2d1x1_avm_address(i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_address),
        .out_lm14_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_burstcount),
        .out_lm14_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_byteenable),
        .out_lm14_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_enable),
        .out_lm14_conv2d1x1_avm_read(i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_read),
        .out_lm14_conv2d1x1_avm_write(i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_write),
        .out_lm14_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm14_conv2d1x17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm14_conv2d1x17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm14_conv2d1x17_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm12_conv2d1x16(BLACKBOX,11)@8
    // in in_i_stall@20000000
    // out out_lm12_conv2d1x1_avm_address@20000000
    // out out_lm12_conv2d1x1_avm_burstcount@20000000
    // out out_lm12_conv2d1x1_avm_byteenable@20000000
    // out out_lm12_conv2d1x1_avm_enable@20000000
    // out out_lm12_conv2d1x1_avm_read@20000000
    // out out_lm12_conv2d1x1_avm_write@20000000
    // out out_lm12_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@137
    // out out_o_stall@20000000
    // out out_o_valid@137
    conv2d1x1_i_llvm_fpga_mem_lm12_0 thei_llvm_fpga_mem_lm12_conv2d1x16 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D0),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D1),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm12_conv2d1x16_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V0),
        .in_lm12_conv2d1x1_avm_readdata(in_lm12_conv2d1x1_avm_readdata),
        .in_lm12_conv2d1x1_avm_readdatavalid(in_lm12_conv2d1x1_avm_readdatavalid),
        .in_lm12_conv2d1x1_avm_waitrequest(in_lm12_conv2d1x1_avm_waitrequest),
        .in_lm12_conv2d1x1_avm_writeack(in_lm12_conv2d1x1_avm_writeack),
        .out_lm12_conv2d1x1_avm_address(i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_address),
        .out_lm12_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_burstcount),
        .out_lm12_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_byteenable),
        .out_lm12_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_enable),
        .out_lm12_conv2d1x1_avm_read(i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_read),
        .out_lm12_conv2d1x1_avm_write(i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_write),
        .out_lm12_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm12_conv2d1x16_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm12_conv2d1x16_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm12_conv2d1x16_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_mem_lm12_conv2d1x16(STALLENABLE,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg0 <= '0;
            SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg1 <= '0;
            SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg2 <= '0;
            SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg0 <= SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg1 <= SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg1;
            // Successor 2
            SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg2 <= SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg2;
            // Successor 3
            SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg3 <= SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg3;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed0 = (~ (i_llvm_fpga_mem_lm12_conv2d1x16_out_o_stall) & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid) | SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg0;
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed1 = (~ (i_llvm_fpga_mem_lm14_conv2d1x17_out_o_stall) & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid) | SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg1;
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed2 = (~ (i_llvm_fpga_mem_lm16_conv2d1x18_out_o_stall) & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid) | SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg2;
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed3 = (~ (i_llvm_fpga_mem_lm_conv2d1x15_out_o_stall) & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid) | SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg3;
    // Consuming
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_StallValid = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_backStall & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid;
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg0 = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_StallValid & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed0;
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg1 = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_StallValid & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed1;
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg2 = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_StallValid & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed2;
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_toReg3 = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_StallValid & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed3;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_or0 = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed0;
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_or1 = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed1 & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_or0;
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_or2 = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed2 & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_or1;
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireStall = ~ (SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_consumed3 & SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_or2);
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_backStall = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V0 = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg0);
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V1 = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg1);
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V2 = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg2);
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V3 = SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_fromReg3);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_wireValid = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V;

    // SE_out_i_llvm_fpga_mem_lm_conv2d1x15(STALLENABLE,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm_conv2d1x15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm_conv2d1x15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm_conv2d1x15_fromReg0 <= SE_out_i_llvm_fpga_mem_lm_conv2d1x15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm_conv2d1x15_fromReg1 <= SE_out_i_llvm_fpga_mem_lm_conv2d1x15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm_conv2d1x15_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_lm_conv2d1x15_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_lm_conv2d1x15_wireValid) | SE_out_i_llvm_fpga_mem_lm_conv2d1x15_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm_conv2d1x15_consumed1 = (~ (SE_in_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_backStall) & SE_out_i_llvm_fpga_mem_lm_conv2d1x15_wireValid) | SE_out_i_llvm_fpga_mem_lm_conv2d1x15_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm_conv2d1x15_StallValid = SE_out_i_llvm_fpga_mem_lm_conv2d1x15_backStall & SE_out_i_llvm_fpga_mem_lm_conv2d1x15_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm_conv2d1x15_toReg0 = SE_out_i_llvm_fpga_mem_lm_conv2d1x15_StallValid & SE_out_i_llvm_fpga_mem_lm_conv2d1x15_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm_conv2d1x15_toReg1 = SE_out_i_llvm_fpga_mem_lm_conv2d1x15_StallValid & SE_out_i_llvm_fpga_mem_lm_conv2d1x15_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm_conv2d1x15_or0 = SE_out_i_llvm_fpga_mem_lm_conv2d1x15_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm_conv2d1x15_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm_conv2d1x15_consumed1 & SE_out_i_llvm_fpga_mem_lm_conv2d1x15_or0);
    assign SE_out_i_llvm_fpga_mem_lm_conv2d1x15_backStall = SE_out_i_llvm_fpga_mem_lm_conv2d1x15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm_conv2d1x15_V0 = SE_out_i_llvm_fpga_mem_lm_conv2d1x15_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm_conv2d1x15_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm_conv2d1x15_V1 = SE_out_i_llvm_fpga_mem_lm_conv2d1x15_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm_conv2d1x15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm_conv2d1x15_wireValid = i_llvm_fpga_mem_lm_conv2d1x15_out_o_valid;

    // SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16(STALLREG,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data1 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data2 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data3 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data4 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data5 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data6 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data7 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid <= SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_backStall & (SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid | SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_i_valid);

            if (SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data0 <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_c);
                SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data1 <= $unsigned(sel_for_coalesced_delay_0_d);
                SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data2 <= $unsigned(sel_for_coalesced_delay_0_d);
                SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data3 <= $unsigned(sel_for_coalesced_delay_0_d);
                SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data4 <= $unsigned(sel_for_coalesced_delay_0_d);
                SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data5 <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_d);
                SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data6 <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_e);
                SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data7 <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_and0 = SE_coalesced_delay_0_6_V0;
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_i_valid = SE_out_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_V0 & SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_backStall = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid | ~ (SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid : SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D0 = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data0 : bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_c;
    // Data1
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D1 = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data1 : sel_for_coalesced_delay_0_d;
    // Data2
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D2 = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data2 : sel_for_coalesced_delay_0_d;
    // Data3
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D3 = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data3 : sel_for_coalesced_delay_0_d;
    // Data4
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D4 = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data4 : sel_for_coalesced_delay_0_d;
    // Data5
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D5 = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data5 : bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_d;
    // Data6
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D6 = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data6 : bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_e;
    // Data7
    assign SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D7 = SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_r_data7 : bubble_select_i_sfc_s_c0_in_for_body13_conv2d1x1s_c0_enter5834_conv2d1x12_aunroll_x_b;

    // i_llvm_fpga_mem_lm_conv2d1x15(BLACKBOX,14)@8
    // in in_i_stall@20000000
    // out out_lm_conv2d1x1_avm_address@20000000
    // out out_lm_conv2d1x1_avm_burstcount@20000000
    // out out_lm_conv2d1x1_avm_byteenable@20000000
    // out out_lm_conv2d1x1_avm_enable@20000000
    // out out_lm_conv2d1x1_avm_read@20000000
    // out out_lm_conv2d1x1_avm_write@20000000
    // out out_lm_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@137
    // out out_o_stall@20000000
    // out out_o_valid@137
    conv2d1x1_i_llvm_fpga_mem_lm_0 thei_llvm_fpga_mem_lm_conv2d1x15 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D7),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_D4),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm_conv2d1x15_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm12_conv2d1x16_V3),
        .in_lm_conv2d1x1_avm_readdata(in_lm_conv2d1x1_avm_readdata),
        .in_lm_conv2d1x1_avm_readdatavalid(in_lm_conv2d1x1_avm_readdatavalid),
        .in_lm_conv2d1x1_avm_waitrequest(in_lm_conv2d1x1_avm_waitrequest),
        .in_lm_conv2d1x1_avm_writeack(in_lm_conv2d1x1_avm_writeack),
        .out_lm_conv2d1x1_avm_address(i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm_conv2d1x15_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_conv2d1x15_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_conv2d1x15_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_lm_conv2d1x1_avm_address = i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_address;
    assign out_lm_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_enable;
    assign out_lm_conv2d1x1_avm_read = i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_read;
    assign out_lm_conv2d1x1_avm_write = i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_write;
    assign out_lm_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_writedata;
    assign out_lm_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_byteenable;
    assign out_lm_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm_conv2d1x15_out_lm_conv2d1x1_avm_burstcount;

    // sync_out(GPOUT,37)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,41)
    assign out_lm12_conv2d1x1_avm_address = i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_address;
    assign out_lm12_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_enable;
    assign out_lm12_conv2d1x1_avm_read = i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_read;
    assign out_lm12_conv2d1x1_avm_write = i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_write;
    assign out_lm12_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_writedata;
    assign out_lm12_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_byteenable;
    assign out_lm12_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm12_conv2d1x16_out_lm12_conv2d1x1_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x(BITJOIN,141)
    assign bubble_join_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_q = i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x(BITSELECT,142)
    assign bubble_select_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_4_fifo(BITJOIN,153)
    assign bubble_join_coalesced_delay_4_fifo_q = coalesced_delay_4_fifo_data_out;

    // bubble_select_coalesced_delay_4_fifo(BITSELECT,154)
    assign bubble_select_coalesced_delay_4_fifo_b = $unsigned(bubble_join_coalesced_delay_4_fifo_q[32:0]);

    // sel_for_coalesced_delay_4(BITSELECT,94)
    assign sel_for_coalesced_delay_4_b = $unsigned(bubble_select_coalesced_delay_4_fifo_b[31:0]);
    assign sel_for_coalesced_delay_4_c = $unsigned(bubble_select_coalesced_delay_4_fifo_b[32:32]);

    // bubble_join_coalesced_delay_3_fifo(BITJOIN,150)
    assign bubble_join_coalesced_delay_3_fifo_q = coalesced_delay_3_fifo_data_out;

    // bubble_select_coalesced_delay_3_fifo(BITSELECT,151)
    assign bubble_select_coalesced_delay_3_fifo_b = $unsigned(bubble_join_coalesced_delay_3_fifo_q[32:0]);

    // sel_for_coalesced_delay_3(BITSELECT,91)
    assign sel_for_coalesced_delay_3_b = $unsigned(bubble_select_coalesced_delay_3_fifo_b[31:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(bubble_select_coalesced_delay_3_fifo_b[32:32]);

    // bubble_join_coalesced_delay_5_fifo(BITJOIN,156)
    assign bubble_join_coalesced_delay_5_fifo_q = coalesced_delay_5_fifo_data_out;

    // bubble_select_coalesced_delay_5_fifo(BITSELECT,157)
    assign bubble_select_coalesced_delay_5_fifo_b = $unsigned(bubble_join_coalesced_delay_5_fifo_q[64:0]);

    // sel_for_coalesced_delay_5(BITSELECT,97)
    assign sel_for_coalesced_delay_5_b = $unsigned(bubble_select_coalesced_delay_5_fifo_b[63:0]);
    assign sel_for_coalesced_delay_5_c = $unsigned(bubble_select_coalesced_delay_5_fifo_b[64:64]);

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,147)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,148)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[226:0]);

    // sel_for_coalesced_delay_2(BITSELECT,88)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[127:64]);
    assign sel_for_coalesced_delay_2_d = $unsigned(bubble_select_coalesced_delay_2_fifo_b[159:128]);
    assign sel_for_coalesced_delay_2_e = $unsigned(bubble_select_coalesced_delay_2_fifo_b[191:160]);
    assign sel_for_coalesced_delay_2_f = $unsigned(bubble_select_coalesced_delay_2_fifo_b[223:192]);
    assign sel_for_coalesced_delay_2_g = $unsigned(bubble_select_coalesced_delay_2_fifo_b[224:224]);
    assign sel_for_coalesced_delay_2_h = $unsigned(bubble_select_coalesced_delay_2_fifo_b[225:225]);
    assign sel_for_coalesced_delay_2_i = $unsigned(bubble_select_coalesced_delay_2_fifo_b[226:226]);

    // dupName_0_sync_out_x(GPOUT,42)@154
    assign out_acl_global_id_132 = sel_for_coalesced_delay_2_c;
    assign out_c0_exe11 = sel_for_coalesced_delay_5_b;
    assign out_c0_exe14927 = sel_for_coalesced_delay_2_f;
    assign out_c0_exe34 = sel_for_coalesced_delay_2_d;
    assign out_c0_exe48 = sel_for_coalesced_delay_2_b;
    assign out_c0_exe511 = sel_for_coalesced_delay_2_g;
    assign out_c0_exe572 = sel_for_coalesced_delay_3_b;
    assign out_c0_exe613 = sel_for_coalesced_delay_4_c;
    assign out_c0_exe673 = sel_for_coalesced_delay_3_c;
    assign out_c0_exe716 = sel_for_coalesced_delay_2_h;
    assign out_c0_exe820 = sel_for_coalesced_delay_2_i;
    assign out_c0_exe922 = sel_for_coalesced_delay_5_c;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body13_conv2d1x1s_c1_enter_conv2d1x111_aunroll_vunroll_x_b;
    assign out_j_05926 = sel_for_coalesced_delay_2_e;
    assign out_unnamed_conv2d1x16 = sel_for_coalesced_delay_4_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,44)
    assign out_lm14_conv2d1x1_avm_address = i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_address;
    assign out_lm14_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_enable;
    assign out_lm14_conv2d1x1_avm_read = i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_read;
    assign out_lm14_conv2d1x1_avm_write = i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_write;
    assign out_lm14_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_writedata;
    assign out_lm14_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_byteenable;
    assign out_lm14_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm14_conv2d1x17_out_lm14_conv2d1x1_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,46)
    assign out_lm16_conv2d1x1_avm_address = i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_address;
    assign out_lm16_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_enable;
    assign out_lm16_conv2d1x1_avm_read = i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_read;
    assign out_lm16_conv2d1x1_avm_write = i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_write;
    assign out_lm16_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_writedata;
    assign out_lm16_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_byteenable;
    assign out_lm16_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm16_conv2d1x18_out_lm16_conv2d1x1_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,48)
    assign out_lm11_conv2d1x1_avm_address = i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_address;
    assign out_lm11_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_enable;
    assign out_lm11_conv2d1x1_avm_read = i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_read;
    assign out_lm11_conv2d1x1_avm_write = i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_write;
    assign out_lm11_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_writedata;
    assign out_lm11_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_byteenable;
    assign out_lm11_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm11_conv2d1x19_vunroll_x_out_lm11_conv2d1x1_avm_burstcount;

endmodule
