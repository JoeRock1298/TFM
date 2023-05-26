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

// SystemVerilog created from double_add_1_bb_B0_stall_region
// SystemVerilog created on Tue May 23 13:55:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_1_bb_B0_stall_region (
    input wire [0:0] in_feedback_in_0,
    output wire [0:0] out_feedback_stall_out_0,
    input wire [0:0] in_feedback_valid_in_0,
    input wire [31:0] in_N,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [32:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_117_q;
    wire [31:0] c_i32_118_q;
    wire [32:0] c_i33_119_q;
    wire [0:0] double_add_1_B0_merge_reg_out_stall_out;
    wire [0:0] double_add_1_B0_merge_reg_out_valid_out;
    wire [33:0] i_cmp6_double_add_12_a;
    wire [33:0] i_cmp6_double_add_12_b;
    logic [33:0] i_cmp6_double_add_12_o;
    wire [0:0] i_cmp6_double_add_12_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_double_add_11_double_add_113_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_double_add_11_double_add_113_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_double_add_11_double_add_113_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_out_valid_out;
    wire [0:0] i_smax_double_add_18_s;
    reg [31:0] i_smax_double_add_18_q;
    wire [32:0] i_unnamed_double_add_110_vt_join_q;
    wire [31:0] i_unnamed_double_add_110_vt_select_31_b;
    wire [33:0] i_unnamed_double_add_111_a;
    wire [33:0] i_unnamed_double_add_111_b;
    logic [33:0] i_unnamed_double_add_111_o;
    wire [33:0] i_unnamed_double_add_111_q;
    wire [33:0] i_unnamed_double_add_15_a;
    wire [33:0] i_unnamed_double_add_15_b;
    logic [33:0] i_unnamed_double_add_15_o;
    wire [0:0] i_unnamed_double_add_15_c;
    wire [32:0] i_unnamed_double_add_19_a;
    wire [32:0] i_unnamed_double_add_19_b;
    logic [32:0] i_unnamed_double_add_19_o;
    wire [32:0] i_unnamed_double_add_19_q;
    wire [32:0] bgTrunc_i_unnamed_double_add_111_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_double_add_19_sel_x_b;
    wire [31:0] c_i32_016_recast_x_q;
    wire [32:0] i_unnamed_double_add_110_sel_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_b;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_wireValid;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_wireStall;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_StallValid;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_toReg0;
    reg [0:0] SE_out_double_add_1_B0_merge_reg_fromReg0;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_consumed0;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_toReg1;
    reg [0:0] SE_out_double_add_1_B0_merge_reg_fromReg1;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_consumed1;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_toReg2;
    reg [0:0] SE_out_double_add_1_B0_merge_reg_fromReg2;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_consumed2;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_toReg3;
    reg [0:0] SE_out_double_add_1_B0_merge_reg_fromReg3;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_consumed3;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_or0;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_or1;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_or2;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_backStall;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_V0;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_V1;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_V2;
    wire [0:0] SE_out_double_add_1_B0_merge_reg_V3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_V0;
    reg [0:0] SE_i_unnamed_double_add_15_R_v_0;
    wire [0:0] SE_i_unnamed_double_add_15_v_s_0;
    wire [0:0] SE_i_unnamed_double_add_15_s_tv_0;
    wire [0:0] SE_i_unnamed_double_add_15_backEN;
    wire [0:0] SE_i_unnamed_double_add_15_backStall;
    wire [0:0] SE_i_unnamed_double_add_15_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] bubble_out_double_add_1_B0_merge_reg_4_reg_R_v_0;
    wire [0:0] bubble_out_double_add_1_B0_merge_reg_4_reg_v_s_0;
    wire [0:0] bubble_out_double_add_1_B0_merge_reg_4_reg_s_tv_0;
    wire [0:0] bubble_out_double_add_1_B0_merge_reg_4_reg_backEN;
    wire [0:0] bubble_out_double_add_1_B0_merge_reg_4_reg_backStall;
    wire [0:0] bubble_out_double_add_1_B0_merge_reg_4_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_V0;


    // c_i33_119(CONSTANT,8)
    assign c_i33_119_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_118(CONSTANT,7)
    assign c_i32_118_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17(BITJOIN,75)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17(BITSELECT,76)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_q[31:0]);

    // c_i32_117(CONSTANT,6)
    assign c_i32_117_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14(BITJOIN,72)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14(BITSELECT,73)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_q[31:0]);

    // i_unnamed_double_add_15(COMPARE,29)@1 + 1
    assign i_unnamed_double_add_15_a = $unsigned({{2{c_i32_117_q[31]}}, c_i32_117_q});
    assign i_unnamed_double_add_15_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_double_add_15_o <= 34'b0;
        end
        else if (SE_i_unnamed_double_add_15_backEN == 1'b1)
        begin
            i_unnamed_double_add_15_o <= $unsigned($signed(i_unnamed_double_add_15_a) - $signed(i_unnamed_double_add_15_b));
        end
    end
    assign i_unnamed_double_add_15_c[0] = i_unnamed_double_add_15_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax_double_add_18(MUX,23)@2
    assign i_smax_double_add_18_s = i_unnamed_double_add_15_c;
    always @(i_smax_double_add_18_s or c_i32_117_q or bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_b)
    begin
        unique case (i_smax_double_add_18_s)
            1'b0 : i_smax_double_add_18_q = c_i32_117_q;
            1'b1 : i_smax_double_add_18_q = bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_b;
            default : i_smax_double_add_18_q = 32'b0;
        endcase
    end

    // i_unnamed_double_add_19(ADD,30)@2
    assign i_unnamed_double_add_19_a = {1'b0, i_smax_double_add_18_q};
    assign i_unnamed_double_add_19_b = {1'b0, c_i32_118_q};
    assign i_unnamed_double_add_19_o = $unsigned(i_unnamed_double_add_19_a) + $unsigned(i_unnamed_double_add_19_b);
    assign i_unnamed_double_add_19_q = i_unnamed_double_add_19_o[32:0];

    // bgTrunc_i_unnamed_double_add_19_sel_x(BITSELECT,55)@2
    assign bgTrunc_i_unnamed_double_add_19_sel_x_b = i_unnamed_double_add_19_q[31:0];

    // i_unnamed_double_add_110_sel_x(BITSELECT,60)@2
    assign i_unnamed_double_add_110_sel_x_b = {1'b0, bgTrunc_i_unnamed_double_add_19_sel_x_b[31:0]};

    // i_unnamed_double_add_110_vt_select_31(BITSELECT,27)@2
    assign i_unnamed_double_add_110_vt_select_31_b = i_unnamed_double_add_110_sel_x_b[31:0];

    // i_unnamed_double_add_110_vt_join(BITJOIN,26)@2
    assign i_unnamed_double_add_110_vt_join_q = {GND_q, i_unnamed_double_add_110_vt_select_31_b};

    // i_unnamed_double_add_111(ADD,28)@2
    assign i_unnamed_double_add_111_a = {1'b0, i_unnamed_double_add_110_vt_join_q};
    assign i_unnamed_double_add_111_b = {1'b0, c_i33_119_q};
    assign i_unnamed_double_add_111_o = $unsigned(i_unnamed_double_add_111_a) + $unsigned(i_unnamed_double_add_111_b);
    assign i_unnamed_double_add_111_q = i_unnamed_double_add_111_o[33:0];

    // bgTrunc_i_unnamed_double_add_111_sel_x(BITSELECT,54)@2
    assign bgTrunc_i_unnamed_double_add_111_sel_x_b = i_unnamed_double_add_111_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_double_add_11_double_add_113(BLACKBOX,18)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    double_add_1_i_llvm_fpga_ffwd_source_i33_unnamed_1_double_add_10 thei_llvm_fpga_ffwd_source_i33_unnamed_double_add_11_double_add_113 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bgTrunc_i_unnamed_double_add_111_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i33_unnamed_double_add_11_double_add_113_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_double_add_11_double_add_113_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_double_add_11_double_add_113_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14(STALLENABLE,91)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_backStall = SE_i_unnamed_double_add_15_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_wireValid = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_out_valid_out;

    // SE_i_unnamed_double_add_15(STALLENABLE,100)
    // Valid signal propagation
    assign SE_i_unnamed_double_add_15_V0 = SE_i_unnamed_double_add_15_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_double_add_15_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_backStall & SE_i_unnamed_double_add_15_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_double_add_15_backEN = ~ (SE_i_unnamed_double_add_15_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_double_add_15_v_s_0 = SE_i_unnamed_double_add_15_backEN & SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_V0;
    // Backward Stall generation
    assign SE_i_unnamed_double_add_15_backStall = ~ (SE_i_unnamed_double_add_15_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_double_add_15_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_double_add_15_backEN == 1'b0)
            begin
                SE_i_unnamed_double_add_15_R_v_0 <= SE_i_unnamed_double_add_15_R_v_0 & SE_i_unnamed_double_add_15_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_double_add_15_R_v_0 <= SE_i_unnamed_double_add_15_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17(STALLENABLE,93)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_double_add_11_double_add_113_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_and0 = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_wireValid = SE_i_unnamed_double_add_15_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_and0;

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17(BLACKBOX,21)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_backStall),
        .in_valid_in(bubble_out_double_add_1_B0_merge_reg_4_reg_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_double_add_1_B0_merge_reg_4_reg(STALLENABLE,135)
    // Valid signal propagation
    assign bubble_out_double_add_1_B0_merge_reg_4_reg_V0 = bubble_out_double_add_1_B0_merge_reg_4_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_double_add_1_B0_merge_reg_4_reg_s_tv_0 = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_17_out_stall_out & bubble_out_double_add_1_B0_merge_reg_4_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_double_add_1_B0_merge_reg_4_reg_backEN = ~ (bubble_out_double_add_1_B0_merge_reg_4_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_double_add_1_B0_merge_reg_4_reg_v_s_0 = bubble_out_double_add_1_B0_merge_reg_4_reg_backEN & SE_out_double_add_1_B0_merge_reg_V3;
    // Backward Stall generation
    assign bubble_out_double_add_1_B0_merge_reg_4_reg_backStall = ~ (bubble_out_double_add_1_B0_merge_reg_4_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_double_add_1_B0_merge_reg_4_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_double_add_1_B0_merge_reg_4_reg_backEN == 1'b0)
            begin
                bubble_out_double_add_1_B0_merge_reg_4_reg_R_v_0 <= bubble_out_double_add_1_B0_merge_reg_4_reg_R_v_0 & bubble_out_double_add_1_B0_merge_reg_4_reg_s_tv_0;
            end
            else
            begin
                bubble_out_double_add_1_B0_merge_reg_4_reg_R_v_0 <= bubble_out_double_add_1_B0_merge_reg_4_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg(STALLENABLE,136)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_s_tv_0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112(STALLENABLE,85)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_out_valid_out;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11(BITJOIN,78)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11(BITSELECT,79)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_q[31:0]);

    // c_i32_016_recast_x(CONSTANT,56)
    assign c_i32_016_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp6_double_add_12(COMPARE,16)@1
    assign i_cmp6_double_add_12_a = $unsigned({{2{c_i32_016_recast_x_q[31]}}, c_i32_016_recast_x_q});
    assign i_cmp6_double_add_12_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_b});
    assign i_cmp6_double_add_12_o = $unsigned($signed(i_cmp6_double_add_12_a) - $signed(i_cmp6_double_add_12_b));
    assign i_cmp6_double_add_12_c[0] = i_cmp6_double_add_12_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112(BLACKBOX,17)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    double_add_1_i_llvm_fpga_ffwd_source_i1_unnamed_0_double_add_10 thei_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_cmp6_double_add_12_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11(STALLENABLE,95)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_wireValid = i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_out_valid_out;

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11(BLACKBOX,22)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_backStall),
        .in_valid_in(SE_out_double_add_1_B0_merge_reg_V2),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14(BLACKBOX,20)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_backStall),
        .in_valid_in(SE_out_double_add_1_B0_merge_reg_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,102)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = double_add_1_B0_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // double_add_1_B0_merge_reg(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    double_add_1_B0_merge_reg thedouble_add_1_B0_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_double_add_1_B0_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(double_add_1_B0_merge_reg_out_stall_out),
        .out_valid_out(double_add_1_B0_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_double_add_1_B0_merge_reg(STALLENABLE,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_double_add_1_B0_merge_reg_fromReg0 <= '0;
            SE_out_double_add_1_B0_merge_reg_fromReg1 <= '0;
            SE_out_double_add_1_B0_merge_reg_fromReg2 <= '0;
            SE_out_double_add_1_B0_merge_reg_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_double_add_1_B0_merge_reg_fromReg0 <= SE_out_double_add_1_B0_merge_reg_toReg0;
            // Successor 1
            SE_out_double_add_1_B0_merge_reg_fromReg1 <= SE_out_double_add_1_B0_merge_reg_toReg1;
            // Successor 2
            SE_out_double_add_1_B0_merge_reg_fromReg2 <= SE_out_double_add_1_B0_merge_reg_toReg2;
            // Successor 3
            SE_out_double_add_1_B0_merge_reg_fromReg3 <= SE_out_double_add_1_B0_merge_reg_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_double_add_1_B0_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_out_stall_out) & SE_out_double_add_1_B0_merge_reg_wireValid) | SE_out_double_add_1_B0_merge_reg_fromReg0;
    assign SE_out_double_add_1_B0_merge_reg_consumed1 = (~ (i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_14_out_stall_out) & SE_out_double_add_1_B0_merge_reg_wireValid) | SE_out_double_add_1_B0_merge_reg_fromReg1;
    assign SE_out_double_add_1_B0_merge_reg_consumed2 = (~ (i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_11_out_stall_out) & SE_out_double_add_1_B0_merge_reg_wireValid) | SE_out_double_add_1_B0_merge_reg_fromReg2;
    assign SE_out_double_add_1_B0_merge_reg_consumed3 = (~ (bubble_out_double_add_1_B0_merge_reg_4_reg_backStall) & SE_out_double_add_1_B0_merge_reg_wireValid) | SE_out_double_add_1_B0_merge_reg_fromReg3;
    // Consuming
    assign SE_out_double_add_1_B0_merge_reg_StallValid = SE_out_double_add_1_B0_merge_reg_backStall & SE_out_double_add_1_B0_merge_reg_wireValid;
    assign SE_out_double_add_1_B0_merge_reg_toReg0 = SE_out_double_add_1_B0_merge_reg_StallValid & SE_out_double_add_1_B0_merge_reg_consumed0;
    assign SE_out_double_add_1_B0_merge_reg_toReg1 = SE_out_double_add_1_B0_merge_reg_StallValid & SE_out_double_add_1_B0_merge_reg_consumed1;
    assign SE_out_double_add_1_B0_merge_reg_toReg2 = SE_out_double_add_1_B0_merge_reg_StallValid & SE_out_double_add_1_B0_merge_reg_consumed2;
    assign SE_out_double_add_1_B0_merge_reg_toReg3 = SE_out_double_add_1_B0_merge_reg_StallValid & SE_out_double_add_1_B0_merge_reg_consumed3;
    // Backward Stall generation
    assign SE_out_double_add_1_B0_merge_reg_or0 = SE_out_double_add_1_B0_merge_reg_consumed0;
    assign SE_out_double_add_1_B0_merge_reg_or1 = SE_out_double_add_1_B0_merge_reg_consumed1 & SE_out_double_add_1_B0_merge_reg_or0;
    assign SE_out_double_add_1_B0_merge_reg_or2 = SE_out_double_add_1_B0_merge_reg_consumed2 & SE_out_double_add_1_B0_merge_reg_or1;
    assign SE_out_double_add_1_B0_merge_reg_wireStall = ~ (SE_out_double_add_1_B0_merge_reg_consumed3 & SE_out_double_add_1_B0_merge_reg_or2);
    assign SE_out_double_add_1_B0_merge_reg_backStall = SE_out_double_add_1_B0_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_double_add_1_B0_merge_reg_V0 = SE_out_double_add_1_B0_merge_reg_wireValid & ~ (SE_out_double_add_1_B0_merge_reg_fromReg0);
    assign SE_out_double_add_1_B0_merge_reg_V1 = SE_out_double_add_1_B0_merge_reg_wireValid & ~ (SE_out_double_add_1_B0_merge_reg_fromReg1);
    assign SE_out_double_add_1_B0_merge_reg_V2 = SE_out_double_add_1_B0_merge_reg_wireValid & ~ (SE_out_double_add_1_B0_merge_reg_fromReg2);
    assign SE_out_double_add_1_B0_merge_reg_V3 = SE_out_double_add_1_B0_merge_reg_wireValid & ~ (SE_out_double_add_1_B0_merge_reg_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_double_add_1_B0_merge_reg_wireValid = double_add_1_B0_merge_reg_out_valid_out;

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10(STALLENABLE,89)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_and0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_double_add_11_double_add_113_out_valid_out & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_and0;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_1_reg_V0 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_and1;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10(BLACKBOX,19)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    double_add_1_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_0(in_feedback_in_0),
        .in_feedback_valid_in_0(in_feedback_valid_in_0),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_backStall),
        .in_valid_in(SE_out_double_add_1_B0_merge_reg_V0),
        .out_data_out(),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_0_sync(GPOUT,14)
    assign out_feedback_stall_out_0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_out_feedback_stall_out_0;

    // regfree_osync(GPOUT,48)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_double_add_10_double_add_112_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,52)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,58)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i33_unnamed_double_add_11_double_add_113_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,59)@2
    assign out_valid_out = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_double_add_10_V0;

endmodule
