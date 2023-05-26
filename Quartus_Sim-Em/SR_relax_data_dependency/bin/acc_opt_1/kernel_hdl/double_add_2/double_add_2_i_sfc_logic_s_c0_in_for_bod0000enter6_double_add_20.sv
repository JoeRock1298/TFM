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

// SystemVerilog created from double_add_2_i_sfc_logic_s_c0_in_for_bod0000enter6_double_add_20
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_i_sfc_logic_s_c0_in_for_bod0000enter6_double_add_20 (
    input wire [63:0] in_unnamed_double_add_22_double_add_2_avm_readdata,
    input wire [0:0] in_unnamed_double_add_22_double_add_2_avm_writeack,
    input wire [0:0] in_unnamed_double_add_22_double_add_2_avm_waitrequest,
    input wire [0:0] in_unnamed_double_add_22_double_add_2_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_double_add_26_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_double_add_26_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_unnamed_double_add_22_double_add_2_avm_address,
    output wire [0:0] out_unnamed_double_add_22_double_add_2_avm_enable,
    output wire [0:0] out_unnamed_double_add_22_double_add_2_avm_read,
    output wire [0:0] out_unnamed_double_add_22_double_add_2_avm_write,
    output wire [63:0] out_unnamed_double_add_22_double_add_2_avm_writedata,
    output wire [7:0] out_unnamed_double_add_22_double_add_2_avm_byteenable,
    output wire [0:0] out_unnamed_double_add_22_double_add_2_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_double_add_23,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_double_0_000000e_0046_q;
    wire [63:0] c_double_add_2_shift_reg_pmem_q;
    wire [31:0] c_i32_045_q;
    wire [31:0] c_i32_147_q;
    wire [3:0] c_i4_742_q;
    wire [4:0] c_i5_1148_q;
    wire [4:0] c_i5_150_q;
    wire [2:0] i_arrayidx1_double_add_214_vt_const_2_q;
    wire [63:0] i_arrayidx1_double_add_214_vt_join_q;
    wire [60:0] i_arrayidx1_double_add_214_vt_select_63_b;
    wire [3:0] i_cleanups_shl38_double_add_25_vt_join_q;
    wire [2:0] i_cleanups_shl38_double_add_25_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor40_double_add_24_q;
    wire [5:0] i_fpga_indvars_iv_next13_double_add_226_a;
    wire [5:0] i_fpga_indvars_iv_next13_double_add_226_b;
    logic [5:0] i_fpga_indvars_iv_next13_double_add_226_o;
    wire [5:0] i_fpga_indvars_iv_next13_double_add_226_q;
    wire [63:0] i_idxprom_double_add_213_vt_join_q;
    wire [31:0] i_idxprom_double_add_213_vt_select_31_b;
    wire [32:0] i_inc_double_add_216_a;
    wire [32:0] i_inc_double_add_216_b;
    logic [32:0] i_inc_double_add_216_o;
    wire [32:0] i_inc_double_add_216_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_double_add_26_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_double_add_26_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_double_add_26_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_double_add_26_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_double_add_26_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_021_pop19_double_add_212_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_021_pop19_double_add_212_out_feedback_stall_out_19;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22_out_feedback_stall_out_21;
    wire [3:0] i_llvm_fpga_pop_i4_initerations32_pop20_double_add_27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations32_pop20_double_add_27_out_feedback_stall_out_20;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv12_pop18_double_add_218_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv12_pop18_double_add_218_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration36_double_add_211_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration36_double_add_211_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_double_add_222_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_double_add_222_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_i_021_push19_double_add_217_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_i_021_push19_double_add_217_out_feedback_valid_out_19;
    wire [7:0] i_llvm_fpga_push_i4_cleanups37_push21_double_add_225_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i4_cleanups37_push21_double_add_225_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i4_initerations32_push20_double_add_29_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i4_initerations32_push20_double_add_29_out_feedback_valid_out_20;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv12_push18_double_add_227_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv12_push18_double_add_227_out_feedback_valid_out_18;
    wire [0:0] i_masked43_double_add_228_qi;
    reg [0:0] i_masked43_double_add_228_q;
    wire [0:0] i_next_cleanups42_double_add_224_s;
    reg [3:0] i_next_cleanups42_double_add_224_q;
    wire [3:0] i_next_initerations33_double_add_28_vt_join_q;
    wire [2:0] i_next_initerations33_double_add_28_vt_select_2_b;
    wire [0:0] i_notcmp30_double_add_221_q;
    wire [0:0] i_or41_double_add_223_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next13_double_add_226_sel_x_b;
    wire [31:0] bgTrunc_i_inc_double_add_216_sel_x_b;
    wire [7:0] i_arrayidx1_double_add_20_add_x_a;
    wire [7:0] i_arrayidx1_double_add_20_add_x_b;
    logic [7:0] i_arrayidx1_double_add_20_add_x_o;
    wire [7:0] i_arrayidx1_double_add_20_add_x_q;
    wire [63:0] i_arrayidx1_double_add_20_append_upper_bits_x_q;
    wire [3:0] i_arrayidx1_double_add_20_narrow_x_b;
    wire [6:0] i_arrayidx1_double_add_20_shift_join_x_q;
    wire [6:0] i_arrayidx1_double_add_20_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx1_double_add_20_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup39_double_add_23_sel_x_b;
    wire [63:0] i_idxprom_double_add_213_sel_x_b;
    wire [0:0] i_last_initeration35_double_add_210_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    wire [0:0] i_exitcond14_double_add_219_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl38_double_add_20_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl38_double_add_20_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid117_i_cleanups_shl38_double_add_20_shift_x_q;
    wire [0:0] leftShiftStage0_uid119_i_cleanups_shl38_double_add_20_shift_x_s;
    reg [3:0] leftShiftStage0_uid119_i_cleanups_shl38_double_add_20_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid123_i_next_initerations33_double_add_20_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid125_i_next_initerations33_double_add_20_shift_x_q;
    wire [0:0] rightShiftStage0_uid127_i_next_initerations33_double_add_20_shift_x_s;
    reg [3:0] rightShiftStage0_uid127_i_next_initerations33_double_add_20_shift_x_q;
    wire [56:0] i_arrayidx1_double_add_20_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx1_double_add_20_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together65_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_1_q;
    reg [0:0] redist3_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_2_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together65_aunroll_x_in_i_valid_1(DELAY,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together65_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together65_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_1(DELAY,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl38_double_add_20_shift_x(BITSELECT,115)@2
    assign leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl38_double_add_20_shift_x_in = i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl38_double_add_20_shift_x_b = leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl38_double_add_20_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid117_i_cleanups_shl38_double_add_20_shift_x(BITJOIN,116)@2
    assign leftShiftStage0Idx1_uid117_i_cleanups_shl38_double_add_20_shift_x_q = {leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl38_double_add_20_shift_x_b, GND_q};

    // leftShiftStage0_uid119_i_cleanups_shl38_double_add_20_shift_x(MUX,118)@2
    assign leftShiftStage0_uid119_i_cleanups_shl38_double_add_20_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid119_i_cleanups_shl38_double_add_20_shift_x_s or i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22_out_data_out or leftShiftStage0Idx1_uid117_i_cleanups_shl38_double_add_20_shift_x_q)
    begin
        unique case (leftShiftStage0_uid119_i_cleanups_shl38_double_add_20_shift_x_s)
            1'b0 : leftShiftStage0_uid119_i_cleanups_shl38_double_add_20_shift_x_q = i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22_out_data_out;
            1'b1 : leftShiftStage0_uid119_i_cleanups_shl38_double_add_20_shift_x_q = leftShiftStage0Idx1_uid117_i_cleanups_shl38_double_add_20_shift_x_q;
            default : leftShiftStage0_uid119_i_cleanups_shl38_double_add_20_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl38_double_add_25_vt_select_3(BITSELECT,32)@2
    assign i_cleanups_shl38_double_add_25_vt_select_3_b = leftShiftStage0_uid119_i_cleanups_shl38_double_add_20_shift_x_q[3:1];

    // i_cleanups_shl38_double_add_25_vt_join(BITJOIN,31)@2
    assign i_cleanups_shl38_double_add_25_vt_join_q = {i_cleanups_shl38_double_add_25_vt_select_3_b, GND_q};

    // i_first_cleanup_xor40_double_add_24(LOGICAL,35)@2
    assign i_first_cleanup_xor40_double_add_24_q = i_first_cleanup39_double_add_23_sel_x_b ^ VCC_q;

    // i_notcmp30_double_add_221(LOGICAL,60)@2
    assign i_notcmp30_double_add_221_q = i_exitcond14_double_add_219_cmp_nsign_q ^ VCC_q;

    // i_or41_double_add_223(LOGICAL,61)@2
    assign i_or41_double_add_223_q = i_notcmp30_double_add_221_q | i_first_cleanup_xor40_double_add_24_q;

    // i_next_cleanups42_double_add_224(MUX,56)@2
    assign i_next_cleanups42_double_add_224_s = i_or41_double_add_223_q;
    always @(i_next_cleanups42_double_add_224_s or i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22_out_data_out or i_cleanups_shl38_double_add_25_vt_join_q)
    begin
        unique case (i_next_cleanups42_double_add_224_s)
            1'b0 : i_next_cleanups42_double_add_224_q = i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22_out_data_out;
            1'b1 : i_next_cleanups42_double_add_224_q = i_cleanups_shl38_double_add_25_vt_join_q;
            default : i_next_cleanups42_double_add_224_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups37_push21_double_add_225(BLACKBOX,52)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    double_add_2_i_llvm_fpga_push_i4_cleanups37_push21_0 thei_llvm_fpga_push_i4_cleanups37_push21_double_add_225 (
        .in_data_in(i_next_cleanups42_double_add_224_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22_out_feedback_stall_out_21),
        .in_keep_going34(redist2_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together65_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i4_cleanups37_push21_double_add_225_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i4_cleanups37_push21_double_add_225_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i4_742(CONSTANT,22)
    assign c_i4_742_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22(BLACKBOX,46)@2
    // out out_feedback_stall_out_21@20000000
    double_add_2_i_llvm_fpga_pop_i4_cleanups37_pop21_0 thei_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22 (
        .in_data_in(c_i4_742_q),
        .in_dir(redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i4_cleanups37_push21_double_add_225_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i4_cleanups37_push21_double_add_225_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together65_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup39_double_add_23_sel_x(BITSELECT,87)@2
    assign i_first_cleanup39_double_add_23_sel_x_b = i_llvm_fpga_pop_i4_cleanups37_pop21_double_add_22_out_data_out[0:0];

    // c_i5_150(CONSTANT,24)
    assign c_i5_150_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next13_double_add_226(ADD,36)@2
    assign i_fpga_indvars_iv_next13_double_add_226_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv12_pop18_double_add_218_out_data_out};
    assign i_fpga_indvars_iv_next13_double_add_226_b = {1'b0, c_i5_150_q};
    assign i_fpga_indvars_iv_next13_double_add_226_o = $unsigned(i_fpga_indvars_iv_next13_double_add_226_a) + $unsigned(i_fpga_indvars_iv_next13_double_add_226_b);
    assign i_fpga_indvars_iv_next13_double_add_226_q = i_fpga_indvars_iv_next13_double_add_226_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next13_double_add_226_sel_x(BITSELECT,67)@2
    assign bgTrunc_i_fpga_indvars_iv_next13_double_add_226_sel_x_b = i_fpga_indvars_iv_next13_double_add_226_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv12_push18_double_add_227(BLACKBOX,54)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    double_add_2_i_llvm_fpga_push_i5_fpga_indvars_iv12_push18_0 thei_llvm_fpga_push_i5_fpga_indvars_iv12_push18_double_add_227 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next13_double_add_226_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i5_fpga_indvars_iv12_pop18_double_add_218_out_feedback_stall_out_18),
        .in_keep_going34(redist2_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together65_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i5_fpga_indvars_iv12_push18_double_add_227_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i5_fpga_indvars_iv12_push18_double_add_227_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_1148(CONSTANT,23)
    assign c_i5_1148_q = $unsigned(5'b01011);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv12_pop18_double_add_218(BLACKBOX,48)@2
    // out out_feedback_stall_out_18@20000000
    double_add_2_i_llvm_fpga_pop_i5_fpga_indvars_iv12_pop18_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv12_pop18_double_add_218 (
        .in_data_in(c_i5_1148_q),
        .in_dir(redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i5_fpga_indvars_iv12_push18_double_add_227_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i5_fpga_indvars_iv12_push18_double_add_227_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together65_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv12_pop18_double_add_218_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i5_fpga_indvars_iv12_pop18_double_add_218_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond14_double_add_219_cmp_nsign(LOGICAL,111)@2
    assign i_exitcond14_double_add_219_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv12_pop18_double_add_218_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond44_double_add_222(BLACKBOX,50)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    double_add_2_i_llvm_fpga_push_i1_notexitcond44_0 thei_llvm_fpga_push_i1_notexitcond44_double_add_222 (
        .in_data_in(i_exitcond14_double_add_219_cmp_nsign_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going34_double_add_26_out_not_exitcond_stall_out),
        .in_first_cleanup39(i_first_cleanup39_double_add_23_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together65_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_notexitcond44_double_add_222_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_notexitcond44_double_add_222_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,99)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid123_i_next_initerations33_double_add_20_shift_x(BITSELECT,122)@2
    assign rightShiftStage0Idx1Rng1_uid123_i_next_initerations33_double_add_20_shift_x_b = i_llvm_fpga_pop_i4_initerations32_pop20_double_add_27_out_data_out[3:1];

    // rightShiftStage0Idx1_uid125_i_next_initerations33_double_add_20_shift_x(BITJOIN,124)@2
    assign rightShiftStage0Idx1_uid125_i_next_initerations33_double_add_20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid123_i_next_initerations33_double_add_20_shift_x_b};

    // valid_fanout_reg1(REG,97)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,98)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i4_initerations32_push20_double_add_29(BLACKBOX,53)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    double_add_2_i_llvm_fpga_push_i4_initerations32_push20_0 thei_llvm_fpga_push_i4_initerations32_push20_double_add_29 (
        .in_data_in(i_next_initerations33_double_add_28_vt_join_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i4_initerations32_pop20_double_add_27_out_feedback_stall_out_20),
        .in_keep_going34(redist2_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i4_initerations32_push20_double_add_29_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i4_initerations32_push20_double_add_29_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations32_pop20_double_add_27(BLACKBOX,47)@2
    // out out_feedback_stall_out_20@20000000
    double_add_2_i_llvm_fpga_pop_i4_initerations32_pop20_0 thei_llvm_fpga_pop_i4_initerations32_pop20_double_add_27 (
        .in_data_in(c_i4_742_q),
        .in_dir(redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i4_initerations32_push20_double_add_29_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i4_initerations32_push20_double_add_29_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations32_pop20_double_add_27_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i4_initerations32_pop20_double_add_27_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid127_i_next_initerations33_double_add_20_shift_x(MUX,126)@2
    assign rightShiftStage0_uid127_i_next_initerations33_double_add_20_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid127_i_next_initerations33_double_add_20_shift_x_s or i_llvm_fpga_pop_i4_initerations32_pop20_double_add_27_out_data_out or rightShiftStage0Idx1_uid125_i_next_initerations33_double_add_20_shift_x_q)
    begin
        unique case (rightShiftStage0_uid127_i_next_initerations33_double_add_20_shift_x_s)
            1'b0 : rightShiftStage0_uid127_i_next_initerations33_double_add_20_shift_x_q = i_llvm_fpga_pop_i4_initerations32_pop20_double_add_27_out_data_out;
            1'b1 : rightShiftStage0_uid127_i_next_initerations33_double_add_20_shift_x_q = rightShiftStage0Idx1_uid125_i_next_initerations33_double_add_20_shift_x_q;
            default : rightShiftStage0_uid127_i_next_initerations33_double_add_20_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations33_double_add_28_vt_select_2(BITSELECT,59)@2
    assign i_next_initerations33_double_add_28_vt_select_2_b = rightShiftStage0_uid127_i_next_initerations33_double_add_20_shift_x_q[2:0];

    // i_next_initerations33_double_add_28_vt_join(BITJOIN,58)@2
    assign i_next_initerations33_double_add_28_vt_join_q = {GND_q, i_next_initerations33_double_add_28_vt_select_2_b};

    // i_last_initeration35_double_add_210_sel_x(BITSELECT,89)@2
    assign i_last_initeration35_double_add_210_sel_x_b = i_next_initerations33_double_add_28_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration36_double_add_211(BLACKBOX,49)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    double_add_2_i_llvm_fpga_push_i1_lastiniteration36_0 thei_llvm_fpga_push_i1_lastiniteration36_double_add_211 (
        .in_data_in(i_last_initeration35_double_add_210_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going34_double_add_26_out_initeration_stall_out),
        .in_keep_going34(redist2_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_lastiniteration36_double_add_211_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_lastiniteration36_double_add_211_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going34_double_add_26(BLACKBOX,44)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    double_add_2_i_llvm_fpga_pipeline_keep_going34_0 thei_llvm_fpga_pipeline_keep_going34_double_add_26 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration36_double_add_211_out_feedback_out_7),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration36_double_add_211_out_feedback_valid_out_7),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond44_double_add_222_out_feedback_out_8),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond44_double_add_222_out_feedback_valid_out_8),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going34_double_add_26_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going34_double_add_26_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going34_double_add_26_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going34_double_add_26_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going34_double_add_26_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_double_add_26_exiting_valid_out = i_llvm_fpga_pipeline_keep_going34_double_add_26_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_double_add_26_exiting_stall_out = i_llvm_fpga_pipeline_keep_going34_double_add_26_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,64)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going34_double_add_26_out_pipeline_valid_out;

    // c_double_0_000000e_0046(FLOATCONSTANT,4)
    assign c_double_0_000000e_0046_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg5(REG,101)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // c_double_add_2_shift_reg_pmem(CONSTANT,5)
    assign c_double_add_2_shift_reg_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_double_add_20_upper_bits_x_merged_bit_select(BITSELECT,128)@2
    assign i_arrayidx1_double_add_20_upper_bits_x_merged_bit_select_b = c_double_add_2_shift_reg_pmem_q[63:7];
    assign i_arrayidx1_double_add_20_upper_bits_x_merged_bit_select_c = c_double_add_2_shift_reg_pmem_q[6:0];

    // c_i32_045(CONSTANT,19)
    assign c_i32_045_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,100)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,102)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_147(CONSTANT,20)
    assign c_i32_147_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_double_add_216(ADD,41)@2
    assign i_inc_double_add_216_a = {1'b0, i_llvm_fpga_pop_i32_i_021_pop19_double_add_212_out_data_out};
    assign i_inc_double_add_216_b = {1'b0, c_i32_147_q};
    assign i_inc_double_add_216_o = $unsigned(i_inc_double_add_216_a) + $unsigned(i_inc_double_add_216_b);
    assign i_inc_double_add_216_q = i_inc_double_add_216_o[32:0];

    // bgTrunc_i_inc_double_add_216_sel_x(BITSELECT,68)@2
    assign bgTrunc_i_inc_double_add_216_sel_x_b = i_inc_double_add_216_q[31:0];

    // i_llvm_fpga_push_i32_i_021_push19_double_add_217(BLACKBOX,51)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    double_add_2_i_llvm_fpga_push_i32_i_021_push19_0 thei_llvm_fpga_push_i32_i_021_push19_double_add_217 (
        .in_data_in(bgTrunc_i_inc_double_add_216_sel_x_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_i_021_pop19_double_add_212_out_feedback_stall_out_19),
        .in_keep_going34(redist2_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_i_021_push19_double_add_217_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_i_021_push19_double_add_217_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_021_pop19_double_add_212(BLACKBOX,45)@2
    // out out_feedback_stall_out_19@20000000
    double_add_2_i_llvm_fpga_pop_i32_i_021_pop19_0 thei_llvm_fpga_pop_i32_i_021_pop19_double_add_212 (
        .in_data_in(c_i32_045_q),
        .in_dir(redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_i_021_push19_double_add_217_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_i_021_push19_double_add_217_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_021_pop19_double_add_212_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_i_021_pop19_double_add_212_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_double_add_213_sel_x(BITSELECT,88)@2
    assign i_idxprom_double_add_213_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_021_pop19_double_add_212_out_data_out[31:0]};

    // i_idxprom_double_add_213_vt_select_31(BITSELECT,40)@2
    assign i_idxprom_double_add_213_vt_select_31_b = i_idxprom_double_add_213_sel_x_b[31:0];

    // i_idxprom_double_add_213_vt_join(BITJOIN,39)@2
    assign i_idxprom_double_add_213_vt_join_q = {c_i32_045_q, i_idxprom_double_add_213_vt_select_31_b};

    // i_arrayidx1_double_add_20_dupName_0_trunc_sel_x(BITSELECT,81)@2
    assign i_arrayidx1_double_add_20_dupName_0_trunc_sel_x_b = i_idxprom_double_add_213_vt_join_q[6:0];

    // i_arrayidx1_double_add_20_narrow_x(BITSELECT,74)@2
    assign i_arrayidx1_double_add_20_narrow_x_b = i_arrayidx1_double_add_20_dupName_0_trunc_sel_x_b[3:0];

    // i_arrayidx1_double_add_20_shift_join_x(BITJOIN,75)@2
    assign i_arrayidx1_double_add_20_shift_join_x_q = {i_arrayidx1_double_add_20_narrow_x_b, i_arrayidx1_double_add_214_vt_const_2_q};

    // i_arrayidx1_double_add_20_add_x(ADD,71)@2
    assign i_arrayidx1_double_add_20_add_x_a = {1'b0, i_arrayidx1_double_add_20_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_double_add_20_add_x_b = {1'b0, i_arrayidx1_double_add_20_shift_join_x_q};
    assign i_arrayidx1_double_add_20_add_x_o = $unsigned(i_arrayidx1_double_add_20_add_x_a) + $unsigned(i_arrayidx1_double_add_20_add_x_b);
    assign i_arrayidx1_double_add_20_add_x_q = i_arrayidx1_double_add_20_add_x_o[7:0];

    // i_arrayidx1_double_add_20_dupName_2_trunc_sel_x(BITSELECT,82)@2
    assign i_arrayidx1_double_add_20_dupName_2_trunc_sel_x_b = i_arrayidx1_double_add_20_add_x_q[6:0];

    // i_arrayidx1_double_add_20_append_upper_bits_x(BITJOIN,72)@2
    assign i_arrayidx1_double_add_20_append_upper_bits_x_q = {i_arrayidx1_double_add_20_upper_bits_x_merged_bit_select_b, i_arrayidx1_double_add_20_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_double_add_214_vt_select_63(BITSELECT,29)@2
    assign i_arrayidx1_double_add_214_vt_select_63_b = i_arrayidx1_double_add_20_append_upper_bits_x_q[63:3];

    // i_arrayidx1_double_add_214_vt_const_2(CONSTANT,27)
    assign i_arrayidx1_double_add_214_vt_const_2_q = $unsigned(3'b000);

    // i_arrayidx1_double_add_214_vt_join(BITJOIN,28)@2
    assign i_arrayidx1_double_add_214_vt_join_q = {i_arrayidx1_double_add_214_vt_select_63_b, i_arrayidx1_double_add_214_vt_const_2_q};

    // i_llvm_fpga_mem_unnamed_double_add_22_double_add_215(BLACKBOX,43)@2
    // out out_o_stall@3
    // out out_o_valid@3
    // out out_unnamed_double_add_22_double_add_2_avm_address@20000000
    // out out_unnamed_double_add_22_double_add_2_avm_burstcount@20000000
    // out out_unnamed_double_add_22_double_add_2_avm_byteenable@20000000
    // out out_unnamed_double_add_22_double_add_2_avm_enable@20000000
    // out out_unnamed_double_add_22_double_add_2_avm_read@20000000
    // out out_unnamed_double_add_22_double_add_2_avm_write@20000000
    // out out_unnamed_double_add_22_double_add_2_avm_writedata@20000000
    double_add_2_i_llvm_fpga_mem_unnamed_2_double_add_20 thei_llvm_fpga_mem_unnamed_double_add_22_double_add_215 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_double_add_214_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor40_double_add_24_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_i_writedata(c_double_0_000000e_0046_q),
        .in_unnamed_double_add_22_double_add_2_avm_readdata(in_unnamed_double_add_22_double_add_2_avm_readdata),
        .in_unnamed_double_add_22_double_add_2_avm_readdatavalid(in_unnamed_double_add_22_double_add_2_avm_readdatavalid),
        .in_unnamed_double_add_22_double_add_2_avm_waitrequest(in_unnamed_double_add_22_double_add_2_avm_waitrequest),
        .in_unnamed_double_add_22_double_add_2_avm_writeack(in_unnamed_double_add_22_double_add_2_avm_writeack),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_double_add_22_double_add_2_avm_address(i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_address),
        .out_unnamed_double_add_22_double_add_2_avm_burstcount(i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_burstcount),
        .out_unnamed_double_add_22_double_add_2_avm_byteenable(i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_byteenable),
        .out_unnamed_double_add_22_double_add_2_avm_enable(i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_enable),
        .out_unnamed_double_add_22_double_add_2_avm_read(i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_read),
        .out_unnamed_double_add_22_double_add_2_avm_write(i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_write),
        .out_unnamed_double_add_22_double_add_2_avm_writedata(i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,70)
    assign out_unnamed_double_add_22_double_add_2_avm_address = i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_address;
    assign out_unnamed_double_add_22_double_add_2_avm_enable = i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_enable;
    assign out_unnamed_double_add_22_double_add_2_avm_read = i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_read;
    assign out_unnamed_double_add_22_double_add_2_avm_write = i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_write;
    assign out_unnamed_double_add_22_double_add_2_avm_writedata = i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_writedata;
    assign out_unnamed_double_add_22_double_add_2_avm_byteenable = i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_byteenable;
    assign out_unnamed_double_add_22_double_add_2_avm_burstcount = i_llvm_fpga_mem_unnamed_double_add_22_double_add_215_out_unnamed_double_add_22_double_add_2_avm_burstcount;

    // valid_fanout_reg0(REG,96)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_masked43_double_add_228(LOGICAL,55)@2 + 1
    assign i_masked43_double_add_228_qi = i_notcmp30_double_add_221_q & i_first_cleanup39_double_add_23_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked43_double_add_228_delay ( .xin(i_masked43_double_add_228_qi), .xout(i_masked43_double_add_228_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_2(DELAY,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_2_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_2_q <= $unsigned(redist2_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_1_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,94)@3
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist3_i_llvm_fpga_pipeline_keep_going34_double_add_26_out_data_out_2_q;
    assign out_c0_exi2_2_tpl = i_masked43_double_add_228_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_double_add_23 = GND_q;

endmodule
