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

// SystemVerilog created from conv2d3x3_bb_B0_stall_region
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B0_stall_region (
    input wire [511:0] in_unnamed_conv2d3x30_conv2d3x3_avm_readdata,
    input wire [0:0] in_unnamed_conv2d3x30_conv2d3x3_avm_writeack,
    input wire [0:0] in_unnamed_conv2d3x30_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d3x30_conv2d3x3_avm_readdatavalid,
    output wire [30:0] out_unnamed_conv2d3x30_conv2d3x3_avm_address,
    output wire [0:0] out_unnamed_conv2d3x30_conv2d3x3_avm_enable,
    output wire [0:0] out_unnamed_conv2d3x30_conv2d3x3_avm_read,
    output wire [0:0] out_unnamed_conv2d3x30_conv2d3x3_avm_write,
    output wire [511:0] out_unnamed_conv2d3x30_conv2d3x3_avm_writedata,
    output wire [63:0] out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable,
    output wire [4:0] out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [31:0] in_input_size,
    input wire [63:0] in_output_im,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [31:0] in_start_channel,
    input wire [31:0] in_stride,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_global_id_0,
    input wire [63:0] in_acl_global_id_1,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe1,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [63:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [31:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [31:0] out_unnamed_conv2d3x30,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_writedata;
    wire [0:0] conv2d3x3_B0_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d3x3_B0_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] conv2d3x3_B0_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] conv2d3x3_B0_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_1_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_2_tpl;
    wire [63:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_3_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_4_tpl;
    wire [31:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_5_tpl;
    wire [31:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_6_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_7_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_8_tpl;
    wire [31:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_9_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_10_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_11_tpl;
    wire [31:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_12_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_13_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_14_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_15_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_16_tpl;
    wire [264:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    reg [264:0] coalesced_delay_0_0_q;
    reg [264:0] coalesced_delay_0_1_q;
    reg [264:0] coalesced_delay_0_2_q;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_b;
    wire [127:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [127:0] bubble_join_conv2d3x3_B0_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_conv2d3x3_B0_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_conv2d3x3_B0_merge_reg_aunroll_x_c;
    wire [328:0] bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d3x3_B0_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d3x3_B0_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d3x3_B0_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_V1;
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
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_in_bitsignaltemp;
    wire [31:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_data_in;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_out_bitsignaltemp;
    wire [31:0] bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_data_out;


    // bubble_join_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33(BITJOIN,54)
    assign bubble_join_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_q = i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_o_readdata;

    // bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg(STALLFIFO,100)
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_in = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_V1;
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_backStall;
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_data_in = bubble_join_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_q;
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(32),
        .IMPL("zl_reg")
    ) thebubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_q),
        .valid_out(bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data(STALLENABLE,81)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_V0 = SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_and0 = bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_and1 = SE_coalesced_delay_0_2_V0 & SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_and0;
    assign SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_wireValid = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_V0 & SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_and1;

    // SE_coalesced_delay_0_2(STALLENABLE,79)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_backStall & SE_coalesced_delay_0_2_R_v_0;
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

    // SE_coalesced_delay_0_1(STALLENABLE,78)
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

    // SE_coalesced_delay_0_0(STALLENABLE,77)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_V1;
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

    // bubble_join_stall_entry(BITJOIN,58)
    assign bubble_join_stall_entry_q = {in_acl_global_id_1, in_acl_global_id_0};

    // bubble_select_stall_entry(BITSELECT,59)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);

    // SE_stall_entry(STALLENABLE,69)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d3x3_B0_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d3x3_B0_merge_reg_aunroll_x(BLACKBOX,29)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    conv2d3x3_B0_merge_reg theconv2d3x3_B0_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d3x3_B0_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .out_stall_out(conv2d3x3_B0_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d3x3_B0_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d3x3_B0_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d3x3_B0_merge_reg_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d3x3_B0_merge_reg_aunroll_x(BITJOIN,62)
    assign bubble_join_conv2d3x3_B0_merge_reg_aunroll_x_q = {conv2d3x3_B0_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d3x3_B0_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d3x3_B0_merge_reg_aunroll_x(BITSELECT,63)
    assign bubble_select_conv2d3x3_B0_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d3x3_B0_merge_reg_aunroll_x_q[63:0]);
    assign bubble_select_conv2d3x3_B0_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d3x3_B0_merge_reg_aunroll_x_q[127:64]);

    // SE_out_conv2d3x3_B0_merge_reg_aunroll_x(STALLENABLE,72)
    // Valid signal propagation
    assign SE_out_conv2d3x3_B0_merge_reg_aunroll_x_V0 = SE_out_conv2d3x3_B0_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d3x3_B0_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_o_stall | ~ (SE_out_conv2d3x3_B0_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d3x3_B0_merge_reg_aunroll_x_wireValid = conv2d3x3_B0_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x(BLACKBOX,31)@1
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
    // out out_c0_exit_10_tpl@12
    // out out_c0_exit_11_tpl@12
    // out out_c0_exit_12_tpl@12
    // out out_c0_exit_13_tpl@12
    // out out_c0_exit_14_tpl@12
    // out out_c0_exit_15_tpl@12
    // out out_c0_exit_16_tpl@12
    conv2d3x3_i_sfc_s_c0_in_entry_s_c0_enter_conv2d3x31 thei_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x (
        .in_filter_bias(in_filter_bias),
        .in_filter_weight(in_filter_weight),
        .in_i_stall(SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d3x3_B0_merge_reg_aunroll_x_V0),
        .in_input_channels(in_input_channels),
        .in_input_size(in_input_size),
        .in_output_im(in_output_im),
        .in_output_size(in_output_size),
        .in_pad(in_pad),
        .in_start_channel(in_start_channel),
        .in_stride(in_stride),
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_1_tpl(bubble_select_conv2d3x3_B0_merge_reg_aunroll_x_b),
        .in_c0_eni2_2_tpl(bubble_select_conv2d3x3_B0_merge_reg_aunroll_x_c),
        .out_o_stall(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_3_tpl),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_4_tpl),
        .out_c0_exit_5_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_5_tpl),
        .out_c0_exit_6_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_6_tpl),
        .out_c0_exit_7_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_7_tpl),
        .out_c0_exit_8_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_8_tpl),
        .out_c0_exit_9_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_9_tpl),
        .out_c0_exit_10_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_10_tpl),
        .out_c0_exit_11_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_11_tpl),
        .out_c0_exit_12_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_12_tpl),
        .out_c0_exit_13_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_13_tpl),
        .out_c0_exit_14_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_14_tpl),
        .out_c0_exit_15_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_15_tpl),
        .out_c0_exit_16_tpl(i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_16_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x(STALLENABLE,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_o_stall) & SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_wireValid = i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33(STALLENABLE,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_backStall) & SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_consumed1 = (~ (bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_StallValid = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_backStall & SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_StallValid & SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_StallValid & SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_or0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_backStall = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_V0 = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_V1 = SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_wireValid = i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x(BITJOIN,65)
    assign bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q = {i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_16_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_15_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_14_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_13_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_12_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_11_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_10_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_9_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_8_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_7_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_6_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_5_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_4_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_3_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x(BITSELECT,66)
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[191:128]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[192:192]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[224:193]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[256:225]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[257:257]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[258:258]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[290:259]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[291:291]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[292:292]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[324:293]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[325:325]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[326:326]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[327:327]);
    assign bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q[328:328]);

    // i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33(BLACKBOX,7)@12
    // in in_i_stall@20000000
    // out out_o_readdata@15
    // out out_o_stall@20000000
    // out out_o_valid@15
    // out out_unnamed_conv2d3x30_conv2d3x3_avm_address@20000000
    // out out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount@20000000
    // out out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable@20000000
    // out out_unnamed_conv2d3x30_conv2d3x3_avm_enable@20000000
    // out out_unnamed_conv2d3x30_conv2d3x3_avm_read@20000000
    // out out_unnamed_conv2d3x30_conv2d3x3_avm_write@20000000
    // out out_unnamed_conv2d3x30_conv2d3x3_avm_writedata@20000000
    conv2d3x3_i_llvm_fpga_mem_unnamed_0_conv2d3x30 thei_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_c),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_V0),
        .in_unnamed_conv2d3x30_conv2d3x3_avm_readdata(in_unnamed_conv2d3x30_conv2d3x3_avm_readdata),
        .in_unnamed_conv2d3x30_conv2d3x3_avm_readdatavalid(in_unnamed_conv2d3x30_conv2d3x3_avm_readdatavalid),
        .in_unnamed_conv2d3x30_conv2d3x3_avm_waitrequest(in_unnamed_conv2d3x30_conv2d3x3_avm_waitrequest),
        .in_unnamed_conv2d3x30_conv2d3x3_avm_writeack(in_unnamed_conv2d3x30_conv2d3x3_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_o_valid),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_address(i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_address),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount(i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable(i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_enable(i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_enable),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_read(i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_read),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_write(i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_write),
        .out_unnamed_conv2d3x30_conv2d3x3_avm_writedata(i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_address = i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_address;
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_enable = i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_enable;
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_read = i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_read;
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_write = i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_write;
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_writedata = i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_writedata;
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable = i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_byteenable;
    assign out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount = i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_out_unnamed_conv2d3x30_conv2d3x3_avm_burstcount;

    // sync_out(GPOUT,27)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_select_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33(BITSELECT,55)
    assign bubble_select_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_b = $unsigned(bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_reg_data_out[31:0]);

    // join_for_coalesced_delay_0(BITJOIN,48)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_q, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_p, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_o, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_n, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_l, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_k, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_i, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_h, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_e, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_m, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_j, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_g, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_f, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_d, bubble_select_i_sfc_s_c0_in_entry_conv2d3x3s_c0_enter_conv2d3x31_aunroll_x_b};

    // coalesced_delay_0_0(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(265'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(265'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(265'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,49)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_2_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_2_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_2_q[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_2_q[191:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_2_q[223:192]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_2_q[255:224]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_2_q[256:256]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_2_q[257:257]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_2_q[258:258]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_2_q[259:259]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_2_q[260:260]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_2_q[261:261]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_2_q[262:262]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_2_q[263:263]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_2_q[264:264]);

    // dupName_0_sync_out_x(GPOUT,30)@15
    assign out_c0_exe1 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe10 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe11 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe12 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe13 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe14 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe15 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe16 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe3 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe4 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe8 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe9 = sel_for_coalesced_delay_0_f;
    assign out_unnamed_conv2d3x30 = bubble_select_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_mem_unnamed_conv2d3x30_conv2d3x33_data_V0;

endmodule
