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

// SystemVerilog created from double_add_2_bb_B7_stall_region
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B7_stall_region (
    input wire [511:0] in_memdep_double_add_2_avm_readdata,
    input wire [0:0] in_memdep_double_add_2_avm_writeack,
    input wire [0:0] in_memdep_double_add_2_avm_waitrequest,
    input wire [0:0] in_memdep_double_add_2_avm_readdatavalid,
    output wire [30:0] out_memdep_double_add_2_avm_address,
    output wire [0:0] out_memdep_double_add_2_avm_enable,
    output wire [0:0] out_memdep_double_add_2_avm_read,
    output wire [0:0] out_memdep_double_add_2_avm_write,
    output wire [511:0] out_memdep_double_add_2_avm_writedata,
    output wire [63:0] out_memdep_double_add_2_avm_byteenable,
    output wire [4:0] out_memdep_double_add_2_avm_burstcount,
    output wire [0:0] out_feedback_out_0,
    input wire [0:0] in_feedback_stall_in_0,
    output wire [0:0] out_feedback_valid_out_0,
    input wire [63:0] in_result,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_lsu_memdep_o_active;
    wire [30:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_address;
    wire [4:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_double_add_22_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_valid_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_select_63_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_double_add_22_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_double_add_22_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_double_add_22_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    reg [0:0] bubble_out_stall_entry_2_reg_R_v_0;
    wire [0:0] bubble_out_stall_entry_2_reg_v_s_0;
    wire [0:0] bubble_out_stall_entry_2_reg_s_tv_0;
    wire [0:0] bubble_out_stall_entry_2_reg_backEN;
    wire [0:0] bubble_out_stall_entry_2_reg_backStall;
    wire [0:0] bubble_out_stall_entry_2_reg_V0;


    // i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    double_add_2_i_llvm_fpga_sync_buffer_p100000result_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20 (
        .in_buffer_in(in_result),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_backStall),
        .in_valid_in(bubble_out_stall_entry_2_reg_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_2_reg(STALLENABLE,77)
    // Valid signal propagation
    assign bubble_out_stall_entry_2_reg_V0 = bubble_out_stall_entry_2_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_stall_entry_2_reg_s_tv_0 = i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_out_stall_out & bubble_out_stall_entry_2_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_stall_entry_2_reg_backEN = ~ (bubble_out_stall_entry_2_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_stall_entry_2_reg_v_s_0 = bubble_out_stall_entry_2_reg_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign bubble_out_stall_entry_2_reg_backStall = ~ (bubble_out_stall_entry_2_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_stall_entry_2_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_stall_entry_2_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_2_reg_R_v_0 <= bubble_out_stall_entry_2_reg_R_v_0 & bubble_out_stall_entry_2_reg_s_tv_0;
            end
            else
            begin
                bubble_out_stall_entry_2_reg_R_v_0 <= bubble_out_stall_entry_2_reg_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (bubble_out_stall_entry_2_reg_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_f64_add326_double_add_21(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    double_add_2_i_llvm_fpga_ffwd_dest_f64_add326_0 thei_llvm_fpga_ffwd_dest_f64_add326_double_add_21 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_f64_add326_double_add_21(BITJOIN,36)
    assign bubble_join_i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_q = i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_f64_add326_double_add_21(BITSELECT,37)
    assign bubble_select_i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_q[63:0]);

    // SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20(STALLENABLE,54)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_backStall = i_llvm_fpga_mem_memdep_double_add_22_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_and0 = i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_wireValid = i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_and0;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23(STALLENABLE,52)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23_wireValid = i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_double_add_22(BITJOIN,39)
    assign bubble_join_i_llvm_fpga_mem_memdep_double_add_22_q = i_llvm_fpga_mem_memdep_double_add_22_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_double_add_22(BITSELECT,40)
    assign bubble_select_i_llvm_fpga_mem_memdep_double_add_22_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_double_add_22_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_double_add_23(BLACKBOX,12)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_0@20000000
    // out out_feedback_valid_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    double_add_2_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_double_add_23 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_double_add_22_b),
        .in_feedback_stall_in_0(in_feedback_stall_in_0),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_double_add_23_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memdep_double_add_22_V1),
        .out_data_out(),
        .out_feedback_out_0(i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_out_0),
        .out_feedback_valid_out_0(i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_valid_out_0),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_double_add_22(STALLENABLE,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed0 = (~ (in_stall_in) & SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid) | SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed1 = (~ (i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_stall_out) & SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid) | SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_StallValid = SE_out_i_llvm_fpga_mem_memdep_double_add_22_backStall & SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg0 = SE_out_i_llvm_fpga_mem_memdep_double_add_22_StallValid & SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_toReg1 = SE_out_i_llvm_fpga_mem_memdep_double_add_22_StallValid & SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_or0 = SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_double_add_22_consumed1 & SE_out_i_llvm_fpga_mem_memdep_double_add_22_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_backStall = SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_V0 = SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_V1 = SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_double_add_22_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_double_add_22_wireValid = i_llvm_fpga_mem_memdep_double_add_22_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20(BITJOIN,43)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_q = i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20(BITSELECT,44)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_select_63(BITSELECT,16)@1
    assign i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_const_9(CONSTANT,14)
    assign i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_join(BITJOIN,15)@1
    assign i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_const_9_q};

    // i_llvm_fpga_mem_memdep_double_add_22(BLACKBOX,11)@1
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_double_add_2_avm_address@20000000
    // out out_memdep_double_add_2_avm_burstcount@20000000
    // out out_memdep_double_add_2_avm_byteenable@20000000
    // out out_memdep_double_add_2_avm_enable@20000000
    // out out_memdep_double_add_2_avm_read@20000000
    // out out_memdep_double_add_2_avm_write@20000000
    // out out_memdep_double_add_2_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_o_writeack@2
    double_add_2_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_double_add_22 (
        .in_flush(in_flush),
        .in_i_address(i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_double_add_22_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_20_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_ffwd_dest_f64_add326_double_add_21_b),
        .in_memdep_double_add_2_avm_readdata(in_memdep_double_add_2_avm_readdata),
        .in_memdep_double_add_2_avm_readdatavalid(in_memdep_double_add_2_avm_readdatavalid),
        .in_memdep_double_add_2_avm_waitrequest(in_memdep_double_add_2_avm_waitrequest),
        .in_memdep_double_add_2_avm_writeack(in_memdep_double_add_2_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_double_add_22_out_lsu_memdep_o_active),
        .out_memdep_double_add_2_avm_address(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_address),
        .out_memdep_double_add_2_avm_burstcount(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_burstcount),
        .out_memdep_double_add_2_avm_byteenable(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_byteenable),
        .out_memdep_double_add_2_avm_enable(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_enable),
        .out_memdep_double_add_2_avm_read(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_read),
        .out_memdep_double_add_2_avm_write(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_write),
        .out_memdep_double_add_2_avm_writedata(i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_double_add_22_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_double_add_22_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_double_add_22_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_memdep_double_add_2_avm_address = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_address;
    assign out_memdep_double_add_2_avm_enable = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_enable;
    assign out_memdep_double_add_2_avm_read = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_read;
    assign out_memdep_double_add_2_avm_write = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_write;
    assign out_memdep_double_add_2_avm_writedata = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_writedata;
    assign out_memdep_double_add_2_avm_byteenable = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_byteenable;
    assign out_memdep_double_add_2_avm_burstcount = i_llvm_fpga_mem_memdep_double_add_22_out_memdep_double_add_2_avm_burstcount;

    // feedback_out_0_sync(GPOUT,7)
    assign out_feedback_out_0 = i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_out_0;

    // feedback_valid_out_0_sync(GPOUT,9)
    assign out_feedback_valid_out_0 = i_llvm_fpga_push_token_i1_throttle_push_double_add_23_out_feedback_valid_out_0;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,33)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_double_add_22_out_lsu_memdep_o_active;

    // dupName_0_sync_out_x(GPOUT,34)@2
    assign out_valid_out = SE_out_i_llvm_fpga_mem_memdep_double_add_22_V0;

endmodule
