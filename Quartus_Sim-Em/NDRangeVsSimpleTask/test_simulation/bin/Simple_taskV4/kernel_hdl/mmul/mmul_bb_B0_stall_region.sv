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

// SystemVerilog created from mmul_bb_B0_stall_region
// SystemVerilog created on Wed May 10 11:59:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B0_stall_region (
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
    wire [33:0] i_cmp28_mmul2_a;
    wire [33:0] i_cmp28_mmul2_b;
    logic [33:0] i_cmp28_mmul2_o;
    wire [0:0] i_cmp28_mmul2_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_mmul1_mmul13_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_mmul1_mmul13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_mmul1_mmul13_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_valid_out;
    wire [0:0] i_smax_mmul8_s;
    reg [31:0] i_smax_mmul8_q;
    wire [32:0] i_unnamed_mmul10_vt_join_q;
    wire [31:0] i_unnamed_mmul10_vt_select_31_b;
    wire [33:0] i_unnamed_mmul11_a;
    wire [33:0] i_unnamed_mmul11_b;
    logic [33:0] i_unnamed_mmul11_o;
    wire [33:0] i_unnamed_mmul11_q;
    wire [33:0] i_unnamed_mmul5_a;
    wire [33:0] i_unnamed_mmul5_b;
    logic [33:0] i_unnamed_mmul5_o;
    wire [0:0] i_unnamed_mmul5_c;
    wire [32:0] i_unnamed_mmul9_a;
    wire [32:0] i_unnamed_mmul9_b;
    logic [32:0] i_unnamed_mmul9_o;
    wire [32:0] i_unnamed_mmul9_q;
    wire [0:0] mmul_B0_merge_reg_out_stall_out;
    wire [0:0] mmul_B0_merge_reg_out_valid_out;
    wire [32:0] bgTrunc_i_unnamed_mmul11_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_mmul9_sel_x_b;
    wire [31:0] c_i32_016_recast_x_q;
    wire [32:0] i_unnamed_mmul10_sel_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_V0;
    reg [0:0] SE_i_unnamed_mmul5_R_v_0;
    wire [0:0] SE_i_unnamed_mmul5_v_s_0;
    wire [0:0] SE_i_unnamed_mmul5_s_tv_0;
    wire [0:0] SE_i_unnamed_mmul5_backEN;
    wire [0:0] SE_i_unnamed_mmul5_backStall;
    wire [0:0] SE_i_unnamed_mmul5_V0;
    wire [0:0] SE_out_mmul_B0_merge_reg_wireValid;
    wire [0:0] SE_out_mmul_B0_merge_reg_wireStall;
    wire [0:0] SE_out_mmul_B0_merge_reg_StallValid;
    wire [0:0] SE_out_mmul_B0_merge_reg_toReg0;
    reg [0:0] SE_out_mmul_B0_merge_reg_fromReg0;
    wire [0:0] SE_out_mmul_B0_merge_reg_consumed0;
    wire [0:0] SE_out_mmul_B0_merge_reg_toReg1;
    reg [0:0] SE_out_mmul_B0_merge_reg_fromReg1;
    wire [0:0] SE_out_mmul_B0_merge_reg_consumed1;
    wire [0:0] SE_out_mmul_B0_merge_reg_toReg2;
    reg [0:0] SE_out_mmul_B0_merge_reg_fromReg2;
    wire [0:0] SE_out_mmul_B0_merge_reg_consumed2;
    wire [0:0] SE_out_mmul_B0_merge_reg_toReg3;
    reg [0:0] SE_out_mmul_B0_merge_reg_fromReg3;
    wire [0:0] SE_out_mmul_B0_merge_reg_consumed3;
    wire [0:0] SE_out_mmul_B0_merge_reg_or0;
    wire [0:0] SE_out_mmul_B0_merge_reg_or1;
    wire [0:0] SE_out_mmul_B0_merge_reg_or2;
    wire [0:0] SE_out_mmul_B0_merge_reg_backStall;
    wire [0:0] SE_out_mmul_B0_merge_reg_V0;
    wire [0:0] SE_out_mmul_B0_merge_reg_V1;
    wire [0:0] SE_out_mmul_B0_merge_reg_V2;
    wire [0:0] SE_out_mmul_B0_merge_reg_V3;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_V0;
    reg [0:0] bubble_out_mmul_B0_merge_reg_4_reg_R_v_0;
    wire [0:0] bubble_out_mmul_B0_merge_reg_4_reg_v_s_0;
    wire [0:0] bubble_out_mmul_B0_merge_reg_4_reg_s_tv_0;
    wire [0:0] bubble_out_mmul_B0_merge_reg_4_reg_backEN;
    wire [0:0] bubble_out_mmul_B0_merge_reg_4_reg_backStall;
    wire [0:0] bubble_out_mmul_B0_merge_reg_4_reg_V0;


    // c_i33_119(CONSTANT,8)
    assign c_i33_119_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_118(CONSTANT,7)
    assign c_i32_118_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7(BITJOIN,71)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7(BITSELECT,72)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_q[31:0]);

    // c_i32_117(CONSTANT,6)
    assign c_i32_117_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4(BITJOIN,68)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4(BITSELECT,69)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_q[31:0]);

    // i_unnamed_mmul5(COMPARE,28)@1 + 1
    assign i_unnamed_mmul5_a = $unsigned({{2{c_i32_117_q[31]}}, c_i32_117_q});
    assign i_unnamed_mmul5_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul5_o <= 34'b0;
        end
        else if (SE_i_unnamed_mmul5_backEN == 1'b1)
        begin
            i_unnamed_mmul5_o <= $unsigned($signed(i_unnamed_mmul5_a) - $signed(i_unnamed_mmul5_b));
        end
    end
    assign i_unnamed_mmul5_c[0] = i_unnamed_mmul5_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax_mmul8(MUX,22)@2
    assign i_smax_mmul8_s = i_unnamed_mmul5_c;
    always @(i_smax_mmul8_s or c_i32_117_q or bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_b)
    begin
        unique case (i_smax_mmul8_s)
            1'b0 : i_smax_mmul8_q = c_i32_117_q;
            1'b1 : i_smax_mmul8_q = bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_b;
            default : i_smax_mmul8_q = 32'b0;
        endcase
    end

    // i_unnamed_mmul9(ADD,29)@2
    assign i_unnamed_mmul9_a = {1'b0, i_smax_mmul8_q};
    assign i_unnamed_mmul9_b = {1'b0, c_i32_118_q};
    assign i_unnamed_mmul9_o = $unsigned(i_unnamed_mmul9_a) + $unsigned(i_unnamed_mmul9_b);
    assign i_unnamed_mmul9_q = i_unnamed_mmul9_o[32:0];

    // bgTrunc_i_unnamed_mmul9_sel_x(BITSELECT,55)@2
    assign bgTrunc_i_unnamed_mmul9_sel_x_b = i_unnamed_mmul9_q[31:0];

    // i_unnamed_mmul10_sel_x(BITSELECT,60)@2
    assign i_unnamed_mmul10_sel_x_b = {1'b0, bgTrunc_i_unnamed_mmul9_sel_x_b[31:0]};

    // i_unnamed_mmul10_vt_select_31(BITSELECT,26)@2
    assign i_unnamed_mmul10_vt_select_31_b = i_unnamed_mmul10_sel_x_b[31:0];

    // i_unnamed_mmul10_vt_join(BITJOIN,25)@2
    assign i_unnamed_mmul10_vt_join_q = {GND_q, i_unnamed_mmul10_vt_select_31_b};

    // i_unnamed_mmul11(ADD,27)@2
    assign i_unnamed_mmul11_a = {1'b0, i_unnamed_mmul10_vt_join_q};
    assign i_unnamed_mmul11_b = {1'b0, c_i33_119_q};
    assign i_unnamed_mmul11_o = $unsigned(i_unnamed_mmul11_a) + $unsigned(i_unnamed_mmul11_b);
    assign i_unnamed_mmul11_q = i_unnamed_mmul11_o[33:0];

    // bgTrunc_i_unnamed_mmul11_sel_x(BITSELECT,54)@2
    assign bgTrunc_i_unnamed_mmul11_sel_x_b = i_unnamed_mmul11_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_mmul1_mmul13(BLACKBOX,17)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_ffwd_source_i33_unnamed_1_mmul0 thei_llvm_fpga_ffwd_source_i33_unnamed_mmul1_mmul13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bgTrunc_i_unnamed_mmul11_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i33_unnamed_mmul1_mmul13_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_mmul1_mmul13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_mmul1_mmul13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4(STALLENABLE,89)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_backStall = SE_i_unnamed_mmul5_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_wireValid = i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_out_valid_out;

    // SE_i_unnamed_mmul5(STALLENABLE,98)
    // Valid signal propagation
    assign SE_i_unnamed_mmul5_V0 = SE_i_unnamed_mmul5_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_mmul5_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_backStall & SE_i_unnamed_mmul5_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_mmul5_backEN = ~ (SE_i_unnamed_mmul5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_mmul5_v_s_0 = SE_i_unnamed_mmul5_backEN & SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_V0;
    // Backward Stall generation
    assign SE_i_unnamed_mmul5_backStall = ~ (SE_i_unnamed_mmul5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_mmul5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_mmul5_backEN == 1'b0)
            begin
                SE_i_unnamed_mmul5_R_v_0 <= SE_i_unnamed_mmul5_R_v_0 & SE_i_unnamed_mmul5_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_mmul5_R_v_0 <= SE_i_unnamed_mmul5_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7(STALLENABLE,91)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_mmul1_mmul13_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_and0 = i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_wireValid = SE_i_unnamed_mmul5_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_and0;

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7(BLACKBOX,20)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_backStall),
        .in_valid_in(bubble_out_mmul_B0_merge_reg_4_reg_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_mmul_B0_merge_reg_4_reg(STALLENABLE,136)
    // Valid signal propagation
    assign bubble_out_mmul_B0_merge_reg_4_reg_V0 = bubble_out_mmul_B0_merge_reg_4_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_mmul_B0_merge_reg_4_reg_s_tv_0 = i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul7_out_stall_out & bubble_out_mmul_B0_merge_reg_4_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_mmul_B0_merge_reg_4_reg_backEN = ~ (bubble_out_mmul_B0_merge_reg_4_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_mmul_B0_merge_reg_4_reg_v_s_0 = bubble_out_mmul_B0_merge_reg_4_reg_backEN & SE_out_mmul_B0_merge_reg_V3;
    // Backward Stall generation
    assign bubble_out_mmul_B0_merge_reg_4_reg_backStall = ~ (bubble_out_mmul_B0_merge_reg_4_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_mmul_B0_merge_reg_4_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_mmul_B0_merge_reg_4_reg_backEN == 1'b0)
            begin
                bubble_out_mmul_B0_merge_reg_4_reg_R_v_0 <= bubble_out_mmul_B0_merge_reg_4_reg_R_v_0 & bubble_out_mmul_B0_merge_reg_4_reg_s_tv_0;
            end
            else
            begin
                bubble_out_mmul_B0_merge_reg_4_reg_R_v_0 <= bubble_out_mmul_B0_merge_reg_4_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg(STALLENABLE,135)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_s_tv_0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12(STALLENABLE,83)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_out_valid_out;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1(BITJOIN,74)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1(BITSELECT,75)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_q[31:0]);

    // c_i32_016_recast_x(CONSTANT,56)
    assign c_i32_016_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp28_mmul2(COMPARE,15)@1
    assign i_cmp28_mmul2_a = $unsigned({{2{c_i32_016_recast_x_q[31]}}, c_i32_016_recast_x_q});
    assign i_cmp28_mmul2_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_b});
    assign i_cmp28_mmul2_o = $unsigned($signed(i_cmp28_mmul2_a) - $signed(i_cmp28_mmul2_b));
    assign i_cmp28_mmul2_c[0] = i_cmp28_mmul2_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12(BLACKBOX,16)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_ffwd_source_i1_unnamed_0_mmul0 thei_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_cmp28_mmul2_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1(STALLENABLE,93)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_wireValid = i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_valid_out;

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1(BLACKBOX,21)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_backStall),
        .in_valid_in(SE_out_mmul_B0_merge_reg_V2),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4(BLACKBOX,19)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_backStall),
        .in_valid_in(SE_out_mmul_B0_merge_reg_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,102)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = mmul_B0_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // mmul_B0_merge_reg(BLACKBOX,39)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    mmul_B0_merge_reg themmul_B0_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_mmul_B0_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(mmul_B0_merge_reg_out_stall_out),
        .out_valid_out(mmul_B0_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_mmul_B0_merge_reg(STALLENABLE,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_mmul_B0_merge_reg_fromReg0 <= '0;
            SE_out_mmul_B0_merge_reg_fromReg1 <= '0;
            SE_out_mmul_B0_merge_reg_fromReg2 <= '0;
            SE_out_mmul_B0_merge_reg_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_mmul_B0_merge_reg_fromReg0 <= SE_out_mmul_B0_merge_reg_toReg0;
            // Successor 1
            SE_out_mmul_B0_merge_reg_fromReg1 <= SE_out_mmul_B0_merge_reg_toReg1;
            // Successor 2
            SE_out_mmul_B0_merge_reg_fromReg2 <= SE_out_mmul_B0_merge_reg_toReg2;
            // Successor 3
            SE_out_mmul_B0_merge_reg_fromReg3 <= SE_out_mmul_B0_merge_reg_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_mmul_B0_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_stall_out) & SE_out_mmul_B0_merge_reg_wireValid) | SE_out_mmul_B0_merge_reg_fromReg0;
    assign SE_out_mmul_B0_merge_reg_consumed1 = (~ (i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul4_out_stall_out) & SE_out_mmul_B0_merge_reg_wireValid) | SE_out_mmul_B0_merge_reg_fromReg1;
    assign SE_out_mmul_B0_merge_reg_consumed2 = (~ (i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_stall_out) & SE_out_mmul_B0_merge_reg_wireValid) | SE_out_mmul_B0_merge_reg_fromReg2;
    assign SE_out_mmul_B0_merge_reg_consumed3 = (~ (bubble_out_mmul_B0_merge_reg_4_reg_backStall) & SE_out_mmul_B0_merge_reg_wireValid) | SE_out_mmul_B0_merge_reg_fromReg3;
    // Consuming
    assign SE_out_mmul_B0_merge_reg_StallValid = SE_out_mmul_B0_merge_reg_backStall & SE_out_mmul_B0_merge_reg_wireValid;
    assign SE_out_mmul_B0_merge_reg_toReg0 = SE_out_mmul_B0_merge_reg_StallValid & SE_out_mmul_B0_merge_reg_consumed0;
    assign SE_out_mmul_B0_merge_reg_toReg1 = SE_out_mmul_B0_merge_reg_StallValid & SE_out_mmul_B0_merge_reg_consumed1;
    assign SE_out_mmul_B0_merge_reg_toReg2 = SE_out_mmul_B0_merge_reg_StallValid & SE_out_mmul_B0_merge_reg_consumed2;
    assign SE_out_mmul_B0_merge_reg_toReg3 = SE_out_mmul_B0_merge_reg_StallValid & SE_out_mmul_B0_merge_reg_consumed3;
    // Backward Stall generation
    assign SE_out_mmul_B0_merge_reg_or0 = SE_out_mmul_B0_merge_reg_consumed0;
    assign SE_out_mmul_B0_merge_reg_or1 = SE_out_mmul_B0_merge_reg_consumed1 & SE_out_mmul_B0_merge_reg_or0;
    assign SE_out_mmul_B0_merge_reg_or2 = SE_out_mmul_B0_merge_reg_consumed2 & SE_out_mmul_B0_merge_reg_or1;
    assign SE_out_mmul_B0_merge_reg_wireStall = ~ (SE_out_mmul_B0_merge_reg_consumed3 & SE_out_mmul_B0_merge_reg_or2);
    assign SE_out_mmul_B0_merge_reg_backStall = SE_out_mmul_B0_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_mmul_B0_merge_reg_V0 = SE_out_mmul_B0_merge_reg_wireValid & ~ (SE_out_mmul_B0_merge_reg_fromReg0);
    assign SE_out_mmul_B0_merge_reg_V1 = SE_out_mmul_B0_merge_reg_wireValid & ~ (SE_out_mmul_B0_merge_reg_fromReg1);
    assign SE_out_mmul_B0_merge_reg_V2 = SE_out_mmul_B0_merge_reg_wireValid & ~ (SE_out_mmul_B0_merge_reg_fromReg2);
    assign SE_out_mmul_B0_merge_reg_V3 = SE_out_mmul_B0_merge_reg_wireValid & ~ (SE_out_mmul_B0_merge_reg_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_mmul_B0_merge_reg_wireValid = mmul_B0_merge_reg_out_valid_out;

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0(STALLENABLE,87)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_and0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_mmul1_mmul13_out_valid_out & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_and0;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_1_reg_V0 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_and1;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0(BLACKBOX,18)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    mmul_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_0(in_feedback_in_0),
        .in_feedback_valid_in_0(in_feedback_valid_in_0),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_backStall),
        .in_valid_in(SE_out_mmul_B0_merge_reg_V0),
        .out_data_out(),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_0_sync(GPOUT,13)
    assign out_feedback_stall_out_0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_out_feedback_stall_out_0;

    // regfree_osync(GPOUT,48)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_mmul0_mmul12_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,52)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,58)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i33_unnamed_mmul1_mmul13_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,59)@2
    assign out_valid_out = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmul0_V0;

endmodule
