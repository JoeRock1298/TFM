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

// SystemVerilog created from avgpool2d_bb_B2_stall_region
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_bb_B2_stall_region (
    input wire [511:0] in_unnamed_avgpool2d2_avgpool2d_avm_readdata,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_writeack,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid,
    output wire [30:0] out_unnamed_avgpool2d2_avgpool2d_avm_address,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_enable,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_read,
    output wire [0:0] out_unnamed_avgpool2d2_avgpool2d_avm_write,
    output wire [511:0] out_unnamed_avgpool2d2_avgpool2d_avm_writedata,
    output wire [63:0] out_unnamed_avgpool2d2_avgpool2d_avm_byteenable,
    output wire [4:0] out_unnamed_avgpool2d2_avgpool2d_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe12,
    input wire [63:0] in_c0_exe23,
    input wire [31:0] in_i_012,
    input wire [31:0] in_tmp_011,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe116,
    output wire [31:0] out_c0_exe12,
    output wire [63:0] out_c0_exe23,
    output wire [0:0] out_cmp,
    output wire [31:0] out_inc,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_1699_q;
    wire [31:0] c_i32_18_q;
    wire [33:0] i_cmp_avgpool2d3_a;
    wire [33:0] i_cmp_avgpool2d3_b;
    logic [33:0] i_cmp_avgpool2d3_o;
    wire [0:0] i_cmp_avgpool2d3_c;
    wire [55:0] i_idxprom_avgpool2d0_vt_const_63_q;
    wire [63:0] i_idxprom_avgpool2d0_vt_join_q;
    wire [7:0] i_idxprom_avgpool2d0_vt_select_7_b;
    wire [32:0] i_inc_avgpool2d1_a;
    wire [32:0] i_inc_avgpool2d1_b;
    logic [32:0] i_inc_avgpool2d1_o;
    wire [32:0] i_inc_avgpool2d1_q;
    wire [22:0] i_inc_avgpool2d1_vt_const_31_q;
    wire [31:0] i_inc_avgpool2d1_vt_join_q;
    wire [8:0] i_inc_avgpool2d1_vt_select_8_b;
    wire [31:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;
    wire [0:0] avgpool2d_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] avgpool2d_B2_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] avgpool2d_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] avgpool2d_B2_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [63:0] avgpool2d_B2_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] bgTrunc_i_inc_avgpool2d1_sel_x_b;
    wire [64:0] i_arrayidx2_avgpool2d0_add_x_a;
    wire [64:0] i_arrayidx2_avgpool2d0_add_x_b;
    logic [64:0] i_arrayidx2_avgpool2d0_add_x_o;
    wire [64:0] i_arrayidx2_avgpool2d0_add_x_q;
    wire [1:0] i_arrayidx2_avgpool2d0_c_i2_01_x_q;
    wire [61:0] i_arrayidx2_avgpool2d0_narrow_x_b;
    wire [63:0] i_arrayidx2_avgpool2d0_shift_join_x_q;
    wire [63:0] i_arrayidx2_avgpool2d0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom_avgpool2d0_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_out_c0_exit15_1_tpl;
    wire [95:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_in;
    wire redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_in;
    wire redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_data_in;
    wire [0:0] redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_out;
    wire redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_out;
    wire redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_data_out;
    wire [0:0] redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_in;
    wire redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_in;
    wire redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_in_bitsignaltemp;
    wire [8:0] redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_data_in;
    wire [0:0] redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_out;
    wire redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_out;
    wire redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_out_bitsignaltemp;
    wire [8:0] redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [95:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [95:0] coalesced_delay_0_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_b;
    wire [159:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [159:0] bubble_join_avgpool2d_B2_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_avgpool2d_B2_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_avgpool2d_B2_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_avgpool2d_B2_merge_reg_aunroll_x_d;
    wire [63:0] bubble_select_avgpool2d_B2_merge_reg_aunroll_x_e;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_b;
    wire [31:0] bubble_join_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_q;
    wire [31:0] bubble_select_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_b;
    wire [8:0] bubble_join_redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_q;
    wire [8:0] bubble_select_redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_b;
    wire [95:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [95:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_avgpool2d_B2_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_wireValid;
    wire [0:0] SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_and0;
    wire [0:0] SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_backStall;
    wire [0:0] SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_out_bitsignaltemp;


    // c_i32_18(CONSTANT,5)
    assign c_i32_18_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_avgpool2d_B2_merge_reg_aunroll_x(BITJOIN,64)
    assign bubble_join_avgpool2d_B2_merge_reg_aunroll_x_q = {avgpool2d_B2_merge_reg_aunroll_x_out_data_out_3_tpl, avgpool2d_B2_merge_reg_aunroll_x_out_data_out_2_tpl, avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl, avgpool2d_B2_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_avgpool2d_B2_merge_reg_aunroll_x(BITSELECT,65)
    assign bubble_select_avgpool2d_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_avgpool2d_B2_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_avgpool2d_B2_merge_reg_aunroll_x_c = $unsigned(bubble_join_avgpool2d_B2_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_avgpool2d_B2_merge_reg_aunroll_x_d = $unsigned(bubble_join_avgpool2d_B2_merge_reg_aunroll_x_q[95:64]);
    assign bubble_select_avgpool2d_B2_merge_reg_aunroll_x_e = $unsigned(bubble_join_avgpool2d_B2_merge_reg_aunroll_x_q[159:96]);

    // i_inc_avgpool2d1(ADD,15)@1
    assign i_inc_avgpool2d1_a = {1'b0, bubble_select_avgpool2d_B2_merge_reg_aunroll_x_b};
    assign i_inc_avgpool2d1_b = {1'b0, c_i32_18_q};
    assign i_inc_avgpool2d1_o = $unsigned(i_inc_avgpool2d1_a) + $unsigned(i_inc_avgpool2d1_b);
    assign i_inc_avgpool2d1_q = i_inc_avgpool2d1_o[32:0];

    // bgTrunc_i_inc_avgpool2d1_sel_x(BITSELECT,33)@1
    assign bgTrunc_i_inc_avgpool2d1_sel_x_b = i_inc_avgpool2d1_q[31:0];

    // i_inc_avgpool2d1_vt_select_8(BITSELECT,18)@1
    assign i_inc_avgpool2d1_vt_select_8_b = bgTrunc_i_inc_avgpool2d1_sel_x_b[8:0];

    // bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg(STALLFIFO,138)
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_in = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_V0;
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4(BITJOIN,56)
    assign bubble_join_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_q = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4(BITSELECT,57)
    assign bubble_select_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_q[31:0]);

    // bubble_join_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo(BITJOIN,70)
    assign bubble_join_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_q = redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_data_out;

    // bubble_select_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo(BITSELECT,71)
    assign bubble_select_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_b = $unsigned(bubble_join_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_q[31:0]);

    // SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo(STALLENABLE,101)
    // Valid signal propagation
    assign SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_V0 = SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_backStall = i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_out_o_stall | ~ (SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_and0 = redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_out;
    assign SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_wireValid = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_V1 & SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_and0;

    // i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x(BLACKBOX,42)@147
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@153
    // out out_c0_exit15_0_tpl@153
    // out out_c0_exit15_1_tpl@153
    avgpool2d_i_sfc_s_c0_in_for_body_s_c0_enter125_avgpool2d6 thei_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x (
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_V0),
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_1_tpl(bubble_select_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_b),
        .in_c0_eni2_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_b),
        .out_o_stall(i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_out_o_valid),
        .out_c0_exit15_0_tpl(),
        .out_c0_exit15_1_tpl(i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_out_c0_exit15_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,105)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_and2 = i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;
    assign SE_out_coalesced_delay_0_fifo_wireValid = bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_valid_out & SE_out_coalesced_delay_0_fifo_and2;

    // redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo(STALLFIFO,53)
    assign redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_in = SE_out_avgpool2d_B2_merge_reg_aunroll_x_V2;
    assign redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_data_in = i_inc_avgpool2d1_vt_select_8_b;
    assign redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_in_bitsignaltemp = redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_in[0];
    assign redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_in_bitsignaltemp = redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_in[0];
    assign redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_out[0] = redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_out_bitsignaltemp;
    assign redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_out[0] = redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(153),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(9),
        .IMPL("ram")
    ) theredist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo (
        .valid_in(redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_in_bitsignaltemp),
        .data_in(i_inc_avgpool2d1_vt_select_8_b),
        .valid_out(redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,50)
    assign join_for_coalesced_delay_0_q = {bubble_select_avgpool2d_B2_merge_reg_aunroll_x_d, bubble_select_avgpool2d_B2_merge_reg_aunroll_x_e};

    // coalesced_delay_0_fifo(STALLFIFO,54)
    assign coalesced_delay_0_fifo_valid_in = SE_out_avgpool2d_B2_merge_reg_aunroll_x_V1;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(153),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(96),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo(STALLFIFO,52)
    assign redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_in = SE_out_avgpool2d_B2_merge_reg_aunroll_x_V0;
    assign redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_in = SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_backStall;
    assign redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_data_in = bubble_select_avgpool2d_B2_merge_reg_aunroll_x_c;
    assign redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_in_bitsignaltemp = redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_in[0];
    assign redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_in_bitsignaltemp = redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_in[0];
    assign redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_out[0] = redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_out_bitsignaltemp;
    assign redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_out[0] = redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(147),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo (
        .valid_in(redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_avgpool2d_B2_merge_reg_aunroll_x_c),
        .valid_out(redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,60)
    assign bubble_join_stall_entry_q = {in_tmp_011, in_i_012, in_c0_exe23, in_c0_exe12};

    // bubble_select_stall_entry(BITSELECT,61)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[127:96]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[159:128]);

    // SE_stall_entry(STALLENABLE,86)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = avgpool2d_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // avgpool2d_B2_merge_reg_aunroll_x(BLACKBOX,32)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    avgpool2d_B2_merge_reg theavgpool2d_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_avgpool2d_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_c),
        .out_stall_out(avgpool2d_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(avgpool2d_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(avgpool2d_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(avgpool2d_B2_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(avgpool2d_B2_merge_reg_aunroll_x_out_data_out_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_avgpool2d_B2_merge_reg_aunroll_x(STALLENABLE,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg2 <= SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg3 <= SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed0 = (~ (redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_stall_out) & SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireValid) | SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg0;
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireValid) | SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg1;
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed2 = (~ (redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_stall_out) & SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireValid) | SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg2;
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_o_stall) & SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireValid) | SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_StallValid = SE_out_avgpool2d_B2_merge_reg_aunroll_x_backStall & SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireValid;
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg0 = SE_out_avgpool2d_B2_merge_reg_aunroll_x_StallValid & SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg1 = SE_out_avgpool2d_B2_merge_reg_aunroll_x_StallValid & SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed1;
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg2 = SE_out_avgpool2d_B2_merge_reg_aunroll_x_StallValid & SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed2;
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_toReg3 = SE_out_avgpool2d_B2_merge_reg_aunroll_x_StallValid & SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_or0 = SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_or1 = SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed1 & SE_out_avgpool2d_B2_merge_reg_aunroll_x_or0;
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_or2 = SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed2 & SE_out_avgpool2d_B2_merge_reg_aunroll_x_or1;
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireStall = ~ (SE_out_avgpool2d_B2_merge_reg_aunroll_x_consumed3 & SE_out_avgpool2d_B2_merge_reg_aunroll_x_or2);
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_backStall = SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_V0 = SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg0);
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_V1 = SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg1);
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_V2 = SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg2);
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_V3 = SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpool2d_B2_merge_reg_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_avgpool2d_B2_merge_reg_aunroll_x_wireValid = avgpool2d_B2_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4(STALLENABLE,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_consumed1 = (~ (SE_out_redist0_avgpool2d_B2_merge_reg_aunroll_x_out_data_out_1_tpl_146_fifo_backStall) & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_StallValid = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_backStall & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_StallValid & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_StallValid & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_or0 = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_backStall = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_V0 = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_V1 = SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_wireValid = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_idxprom_avgpool2d0_vt_const_63(CONSTANT,12)
    assign i_idxprom_avgpool2d0_vt_const_63_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // i_idxprom_avgpool2d0_sel_x(BITSELECT,41)@1
    assign i_idxprom_avgpool2d0_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_avgpool2d_B2_merge_reg_aunroll_x_b[31:0]};

    // i_idxprom_avgpool2d0_vt_select_7(BITSELECT,14)@1
    assign i_idxprom_avgpool2d0_vt_select_7_b = i_idxprom_avgpool2d0_sel_x_b[7:0];

    // i_idxprom_avgpool2d0_vt_join(BITJOIN,13)@1
    assign i_idxprom_avgpool2d0_vt_join_q = {i_idxprom_avgpool2d0_vt_const_63_q, i_idxprom_avgpool2d0_vt_select_7_b};

    // i_arrayidx2_avgpool2d0_narrow_x(BITSELECT,37)@1
    assign i_arrayidx2_avgpool2d0_narrow_x_b = i_idxprom_avgpool2d0_vt_join_q[61:0];

    // i_arrayidx2_avgpool2d0_c_i2_01_x(CONSTANT,36)
    assign i_arrayidx2_avgpool2d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx2_avgpool2d0_shift_join_x(BITJOIN,38)@1
    assign i_arrayidx2_avgpool2d0_shift_join_x_q = {i_arrayidx2_avgpool2d0_narrow_x_b, i_arrayidx2_avgpool2d0_c_i2_01_x_q};

    // i_arrayidx2_avgpool2d0_add_x(ADD,35)@1
    assign i_arrayidx2_avgpool2d0_add_x_a = {1'b0, bubble_select_avgpool2d_B2_merge_reg_aunroll_x_e};
    assign i_arrayidx2_avgpool2d0_add_x_b = {1'b0, i_arrayidx2_avgpool2d0_shift_join_x_q};
    assign i_arrayidx2_avgpool2d0_add_x_o = $unsigned(i_arrayidx2_avgpool2d0_add_x_a) + $unsigned(i_arrayidx2_avgpool2d0_add_x_b);
    assign i_arrayidx2_avgpool2d0_add_x_q = i_arrayidx2_avgpool2d0_add_x_o[64:0];

    // i_arrayidx2_avgpool2d0_dupName_0_trunc_sel_x(BITSELECT,40)@1
    assign i_arrayidx2_avgpool2d0_dupName_0_trunc_sel_x_b = i_arrayidx2_avgpool2d0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4(BLACKBOX,19)@1
    // in in_i_stall@20000000
    // out out_o_readdata@147
    // out out_o_stall@20000000
    // out out_o_valid@147
    // out out_unnamed_avgpool2d2_avgpool2d_avm_address@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_burstcount@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_byteenable@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_enable@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_read@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_write@20000000
    // out out_unnamed_avgpool2d2_avgpool2d_avm_writedata@20000000
    avgpool2d_i_llvm_fpga_mem_unnamed_2_avgpool2d0 thei_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx2_avgpool2d0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_backStall),
        .in_i_valid(SE_out_avgpool2d_B2_merge_reg_aunroll_x_V3),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdata(in_unnamed_avgpool2d2_avgpool2d_avm_readdata),
        .in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid(in_unnamed_avgpool2d2_avgpool2d_avm_readdatavalid),
        .in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest(in_unnamed_avgpool2d2_avgpool2d_avm_waitrequest),
        .in_unnamed_avgpool2d2_avgpool2d_avm_writeack(in_unnamed_avgpool2d2_avgpool2d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_o_valid),
        .out_unnamed_avgpool2d2_avgpool2d_avm_address(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_address),
        .out_unnamed_avgpool2d2_avgpool2d_avm_burstcount(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount),
        .out_unnamed_avgpool2d2_avgpool2d_avm_byteenable(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_enable(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_enable),
        .out_unnamed_avgpool2d2_avgpool2d_avm_read(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_read),
        .out_unnamed_avgpool2d2_avgpool2d_avm_write(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_write),
        .out_unnamed_avgpool2d2_avgpool2d_avm_writedata(i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_unnamed_avgpool2d2_avgpool2d_avm_address = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_address;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_enable = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_enable;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_read = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_read;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_write = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_write;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_writedata = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_writedata;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_byteenable = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_byteenable;
    assign out_unnamed_avgpool2d2_avgpool2d_avm_burstcount = i_llvm_fpga_mem_unnamed_avgpool2d2_avgpool2d4_out_unnamed_avgpool2d2_avgpool2d_avm_burstcount;

    // sync_out(GPOUT,30)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // i_inc_avgpool2d1_vt_const_31(CONSTANT,16)
    assign i_inc_avgpool2d1_vt_const_31_q = $unsigned(23'b00000000000000000000000);

    // bubble_join_redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo(BITJOIN,73)
    assign bubble_join_redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_q = redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_data_out;

    // bubble_select_redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo(BITSELECT,74)
    assign bubble_select_redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_b = $unsigned(bubble_join_redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_q[8:0]);

    // i_inc_avgpool2d1_vt_join(BITJOIN,17)@153
    assign i_inc_avgpool2d1_vt_join_q = {i_inc_avgpool2d1_vt_const_31_q, bubble_select_redist3_i_inc_avgpool2d1_vt_select_8_b_152_fifo_b};

    // c_i32_1699(CONSTANT,4)
    assign c_i32_1699_q = $unsigned(32'b00000000000000000000000010101001);

    // i_cmp_avgpool2d3(COMPARE,10)@153
    assign i_cmp_avgpool2d3_a = {2'b00, i_inc_avgpool2d1_vt_join_q};
    assign i_cmp_avgpool2d3_b = {2'b00, c_i32_1699_q};
    assign i_cmp_avgpool2d3_o = $unsigned(i_cmp_avgpool2d3_a) - $unsigned(i_cmp_avgpool2d3_b);
    assign i_cmp_avgpool2d3_c[0] = i_cmp_avgpool2d3_o[33];

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,76)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,77)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[95:0]);

    // sel_for_coalesced_delay_0(BITSELECT,51)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[95:64]);

    // bubble_join_i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x(BITJOIN,67)
    assign bubble_join_i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_q = i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_out_c0_exit15_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x(BITSELECT,68)
    assign bubble_select_i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,34)@153
    assign out_c0_exe116 = bubble_select_i_sfc_s_c0_in_for_body_avgpool2ds_c0_enter125_avgpool2d6_aunroll_x_b;
    assign out_c0_exe12 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe23 = sel_for_coalesced_delay_0_b;
    assign out_cmp = i_cmp_avgpool2d3_c;
    assign out_inc = i_inc_avgpool2d1_vt_join_q;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

endmodule
