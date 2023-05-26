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

// SystemVerilog created from double_add_2_bb_B1_stall_region
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_bb_B1_stall_region (
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
    wire [31:0] c_i32_115_q;
    wire [31:0] c_i32_116_q;
    wire [32:0] c_i33_117_q;
    wire [33:0] i_cmp319_double_add_21_a;
    wire [33:0] i_cmp319_double_add_21_b;
    logic [33:0] i_cmp319_double_add_21_o;
    wire [0:0] i_cmp319_double_add_21_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_out_valid_out;
    wire [0:0] i_smax_double_add_27_s;
    reg [31:0] i_smax_double_add_27_q;
    wire [33:0] i_unnamed_double_add_210_a;
    wire [33:0] i_unnamed_double_add_210_b;
    logic [33:0] i_unnamed_double_add_210_o;
    wire [33:0] i_unnamed_double_add_210_q;
    wire [33:0] i_unnamed_double_add_24_a;
    wire [33:0] i_unnamed_double_add_24_b;
    logic [33:0] i_unnamed_double_add_24_o;
    wire [0:0] i_unnamed_double_add_24_c;
    wire [32:0] i_unnamed_double_add_28_a;
    wire [32:0] i_unnamed_double_add_28_b;
    logic [32:0] i_unnamed_double_add_28_o;
    wire [32:0] i_unnamed_double_add_28_q;
    wire [32:0] i_unnamed_double_add_29_vt_join_q;
    wire [31:0] i_unnamed_double_add_29_vt_select_31_b;
    wire [32:0] bgTrunc_i_unnamed_double_add_210_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_double_add_28_sel_x_b;
    wire [31:0] c_i32_014_recast_x_q;
    wire [32:0] i_unnamed_double_add_29_sel_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_V0;
    reg [0:0] SE_i_unnamed_double_add_24_R_v_0;
    wire [0:0] SE_i_unnamed_double_add_24_v_s_0;
    wire [0:0] SE_i_unnamed_double_add_24_s_tv_0;
    wire [0:0] SE_i_unnamed_double_add_24_backEN;
    wire [0:0] SE_i_unnamed_double_add_24_backStall;
    wire [0:0] SE_i_unnamed_double_add_24_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_V0;
    reg [0:0] bubble_out_stall_entry_3_reg_R_v_0;
    wire [0:0] bubble_out_stall_entry_3_reg_v_s_0;
    wire [0:0] bubble_out_stall_entry_3_reg_s_tv_0;
    wire [0:0] bubble_out_stall_entry_3_reg_backEN;
    wire [0:0] bubble_out_stall_entry_3_reg_backStall;
    wire [0:0] bubble_out_stall_entry_3_reg_V0;


    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg(STALLENABLE,111)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212(STALLENABLE,71)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_V0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_and0 = i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_and0;

    // c_i33_117(CONSTANT,7)
    assign c_i33_117_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_116(CONSTANT,6)
    assign c_i32_116_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26(BITJOIN,59)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26(BITSELECT,60)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_q[31:0]);

    // c_i32_115(CONSTANT,5)
    assign c_i32_115_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23(BITJOIN,56)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23(BITSELECT,57)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_q[31:0]);

    // i_unnamed_double_add_24(COMPARE,18)@0 + 1
    assign i_unnamed_double_add_24_a = $unsigned({{2{c_i32_115_q[31]}}, c_i32_115_q});
    assign i_unnamed_double_add_24_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_double_add_24_o <= 34'b0;
        end
        else if (SE_i_unnamed_double_add_24_backEN == 1'b1)
        begin
            i_unnamed_double_add_24_o <= $unsigned($signed(i_unnamed_double_add_24_a) - $signed(i_unnamed_double_add_24_b));
        end
    end
    assign i_unnamed_double_add_24_c[0] = i_unnamed_double_add_24_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax_double_add_27(MUX,16)@1
    assign i_smax_double_add_27_s = i_unnamed_double_add_24_c;
    always @(i_smax_double_add_27_s or c_i32_115_q or bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_b)
    begin
        unique case (i_smax_double_add_27_s)
            1'b0 : i_smax_double_add_27_q = c_i32_115_q;
            1'b1 : i_smax_double_add_27_q = bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_b;
            default : i_smax_double_add_27_q = 32'b0;
        endcase
    end

    // i_unnamed_double_add_28(ADD,19)@1
    assign i_unnamed_double_add_28_a = {1'b0, i_smax_double_add_27_q};
    assign i_unnamed_double_add_28_b = {1'b0, c_i32_116_q};
    assign i_unnamed_double_add_28_o = $unsigned(i_unnamed_double_add_28_a) + $unsigned(i_unnamed_double_add_28_b);
    assign i_unnamed_double_add_28_q = i_unnamed_double_add_28_o[32:0];

    // bgTrunc_i_unnamed_double_add_28_sel_x(BITSELECT,44)@1
    assign bgTrunc_i_unnamed_double_add_28_sel_x_b = i_unnamed_double_add_28_q[31:0];

    // i_unnamed_double_add_29_sel_x(BITSELECT,49)@1
    assign i_unnamed_double_add_29_sel_x_b = {1'b0, bgTrunc_i_unnamed_double_add_28_sel_x_b[31:0]};

    // i_unnamed_double_add_29_vt_select_31(BITSELECT,23)@1
    assign i_unnamed_double_add_29_vt_select_31_b = i_unnamed_double_add_29_sel_x_b[31:0];

    // i_unnamed_double_add_29_vt_join(BITJOIN,22)@1
    assign i_unnamed_double_add_29_vt_join_q = {GND_q, i_unnamed_double_add_29_vt_select_31_b};

    // i_unnamed_double_add_210(ADD,17)@1
    assign i_unnamed_double_add_210_a = {1'b0, i_unnamed_double_add_29_vt_join_q};
    assign i_unnamed_double_add_210_b = {1'b0, c_i33_117_q};
    assign i_unnamed_double_add_210_o = $unsigned(i_unnamed_double_add_210_a) + $unsigned(i_unnamed_double_add_210_b);
    assign i_unnamed_double_add_210_q = i_unnamed_double_add_210_o[33:0];

    // bgTrunc_i_unnamed_double_add_210_sel_x(BITSELECT,43)@1
    assign bgTrunc_i_unnamed_double_add_210_sel_x_b = i_unnamed_double_add_210_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212(BLACKBOX,12)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    double_add_2_i_llvm_fpga_ffwd_source_i33_unnamed_1_double_add_20 thei_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bgTrunc_i_unnamed_double_add_210_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23(STALLENABLE,73)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_backStall = SE_i_unnamed_double_add_24_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_wireValid = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_out_valid_out;

    // SE_i_unnamed_double_add_24(STALLENABLE,80)
    // Valid signal propagation
    assign SE_i_unnamed_double_add_24_V0 = SE_i_unnamed_double_add_24_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_double_add_24_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_backStall & SE_i_unnamed_double_add_24_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_double_add_24_backEN = ~ (SE_i_unnamed_double_add_24_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_double_add_24_v_s_0 = SE_i_unnamed_double_add_24_backEN & SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_V0;
    // Backward Stall generation
    assign SE_i_unnamed_double_add_24_backStall = ~ (SE_i_unnamed_double_add_24_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_double_add_24_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_double_add_24_backEN == 1'b0)
            begin
                SE_i_unnamed_double_add_24_R_v_0 <= SE_i_unnamed_double_add_24_R_v_0 & SE_i_unnamed_double_add_24_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_double_add_24_R_v_0 <= SE_i_unnamed_double_add_24_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26(STALLENABLE,75)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_and0 = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_wireValid = SE_i_unnamed_double_add_24_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_and0;

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    double_add_2_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_backStall),
        .in_valid_in(bubble_out_stall_entry_3_reg_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_3_reg(STALLENABLE,112)
    // Valid signal propagation
    assign bubble_out_stall_entry_3_reg_V0 = bubble_out_stall_entry_3_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_stall_entry_3_reg_s_tv_0 = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_double_add_26_out_stall_out & bubble_out_stall_entry_3_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_stall_entry_3_reg_backEN = ~ (bubble_out_stall_entry_3_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_stall_entry_3_reg_v_s_0 = bubble_out_stall_entry_3_reg_backEN & SE_stall_entry_V2;
    // Backward Stall generation
    assign bubble_out_stall_entry_3_reg_backStall = ~ (bubble_out_stall_entry_3_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_stall_entry_3_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_stall_entry_3_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_3_reg_R_v_0 <= bubble_out_stall_entry_3_reg_R_v_0 & bubble_out_stall_entry_3_reg_s_tv_0;
            end
            else
            begin
                bubble_out_stall_entry_3_reg_R_v_0 <= bubble_out_stall_entry_3_reg_v_s_0;
            end

        end
    end

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    double_add_2_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_double_add_23_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (bubble_out_stall_entry_3_reg_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    double_add_2_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20(STALLENABLE,77)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_wireValid = i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211(STALLENABLE,69)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_out_valid_out;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20(BITJOIN,62)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20(BITSELECT,63)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_q[31:0]);

    // c_i32_014_recast_x(CONSTANT,45)
    assign c_i32_014_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp319_double_add_21(COMPARE,10)@0
    assign i_cmp319_double_add_21_a = $unsigned({{2{c_i32_014_recast_x_q[31]}}, c_i32_014_recast_x_q});
    assign i_cmp319_double_add_21_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_b});
    assign i_cmp319_double_add_21_o = $unsigned($signed(i_cmp319_double_add_21_a) - $signed(i_cmp319_double_add_21_b));
    assign i_cmp319_double_add_21_c[0] = i_cmp319_double_add_21_o[33];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    double_add_2_i_llvm_fpga_ffwd_source_i1_unnamed_0_double_add_20 thei_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_cmp319_double_add_21_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_double_add_20_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,37)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_double_add_20_double_add_211_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,41)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,48)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_double_add_21_double_add_212_V0;

endmodule
