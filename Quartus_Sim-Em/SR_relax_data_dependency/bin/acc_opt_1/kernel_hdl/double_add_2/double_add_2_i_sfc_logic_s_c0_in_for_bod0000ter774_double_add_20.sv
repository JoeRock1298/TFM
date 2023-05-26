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

// SystemVerilog created from double_add_2_i_sfc_logic_s_c0_in_for_bod0000ter774_double_add_20
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_i_sfc_logic_s_c0_in_for_bod0000ter774_double_add_20 (
    input wire [63:0] in_unnamed_double_add_29_double_add_2_avm_readdata,
    input wire [0:0] in_unnamed_double_add_29_double_add_2_avm_writeack,
    input wire [0:0] in_unnamed_double_add_29_double_add_2_avm_waitrequest,
    input wire [0:0] in_unnamed_double_add_29_double_add_2_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_unnamed_double_add_29_double_add_2_avm_address,
    output wire [0:0] out_unnamed_double_add_29_double_add_2_avm_enable,
    output wire [0:0] out_unnamed_double_add_29_double_add_2_avm_read,
    output wire [0:0] out_unnamed_double_add_29_double_add_2_avm_write,
    output wire [63:0] out_unnamed_double_add_29_double_add_2_avm_writedata,
    output wire [7:0] out_unnamed_double_add_29_double_add_2_avm_byteenable,
    output wire [0:0] out_unnamed_double_add_29_double_add_2_avm_burstcount,
    output wire [0:0] out_c0_exi280_0_tpl,
    output wire [0:0] out_c0_exi280_1_tpl,
    output wire [0:0] out_c0_exi280_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_double_add_23,
    input wire [0:0] in_c0_eni176_0_tpl,
    input wire [0:0] in_c0_eni176_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_double_0_000000e_0053_q;
    wire [63:0] c_double_add_2_shift_reg_pmem_q;
    wire [31:0] c_i32_052_q;
    wire [31:0] c_i32_154_q;
    wire [3:0] c_i4_749_q;
    wire [4:0] c_i5_1055_q;
    wire [4:0] c_i5_157_q;
    wire [63:0] i_add32_double_add_217_out_primWireOut;
    wire [2:0] i_arrayidx312_double_add_214_vt_const_2_q;
    wire [63:0] i_arrayidx312_double_add_214_vt_join_q;
    wire [60:0] i_arrayidx312_double_add_214_vt_select_63_b;
    wire [3:0] i_cleanups_shl_double_add_25_vt_join_q;
    wire [2:0] i_cleanups_shl_double_add_25_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_double_add_24_q;
    wire [5:0] i_fpga_indvars_iv_next_double_add_229_a;
    wire [5:0] i_fpga_indvars_iv_next_double_add_229_b;
    logic [5:0] i_fpga_indvars_iv_next_double_add_229_o;
    wire [5:0] i_fpga_indvars_iv_next_double_add_229_q;
    wire [63:0] i_idxprom30_double_add_213_vt_join_q;
    wire [31:0] i_idxprom30_double_add_213_vt_select_31_b;
    wire [32:0] i_inc34_double_add_219_a;
    wire [32:0] i_inc34_double_add_219_b;
    logic [32:0] i_inc34_double_add_219_o;
    wire [32:0] i_inc34_double_add_219_q;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_210_double_add_231_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_double_add_26_out_pipeline_valid_out;
    wire [63:0] i_llvm_fpga_pop_f64_temp_sum_016_pop11_double_add_216_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_temp_sum_016_pop11_double_add_216_out_feedback_stall_out_11;
    wire [31:0] i_llvm_fpga_pop_i32_i25_017_pop10_double_add_212_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i25_017_pop10_double_add_212_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22_out_feedback_stall_out_13;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop12_double_add_27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop12_double_add_27_out_feedback_stall_out_12;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_double_add_221_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_double_add_221_out_feedback_stall_out_9;
    wire [63:0] i_llvm_fpga_push_f64_temp_sum_016_push11_double_add_218_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_f64_temp_sum_016_push11_double_add_218_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_double_add_225_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_double_add_225_out_feedback_valid_out_2;
    wire [31:0] i_llvm_fpga_push_i32_i25_017_push10_double_add_220_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i32_i25_017_push10_double_add_220_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push13_double_add_228_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push13_double_add_228_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push12_double_add_29_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push12_double_add_29_out_feedback_valid_out_12;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push9_double_add_230_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push9_double_add_230_out_feedback_valid_out_9;
    wire [0:0] i_masked_double_add_232_qi;
    reg [0:0] i_masked_double_add_232_q;
    wire [0:0] i_next_cleanups_double_add_227_s;
    reg [3:0] i_next_cleanups_double_add_227_q;
    wire [3:0] i_next_initerations_double_add_28_vt_join_q;
    wire [2:0] i_next_initerations_double_add_28_vt_select_2_b;
    wire [0:0] i_notcmp_double_add_224_q;
    wire [0:0] i_or_double_add_226_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_double_add_229_sel_x_b;
    wire [31:0] bgTrunc_i_inc34_double_add_219_sel_x_b;
    wire [7:0] i_arrayidx312_double_add_20_add_x_a;
    wire [7:0] i_arrayidx312_double_add_20_add_x_b;
    logic [7:0] i_arrayidx312_double_add_20_add_x_o;
    wire [7:0] i_arrayidx312_double_add_20_add_x_q;
    wire [63:0] i_arrayidx312_double_add_20_append_upper_bits_x_q;
    wire [3:0] i_arrayidx312_double_add_20_narrow_x_b;
    wire [6:0] i_arrayidx312_double_add_20_shift_join_x_q;
    wire [6:0] i_arrayidx312_double_add_20_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx312_double_add_20_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_double_add_23_sel_x_b;
    wire [63:0] i_idxprom30_double_add_213_sel_x_b;
    wire [0:0] i_last_initeration_double_add_210_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    wire [0:0] i_exitcond_double_add_222_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid127_i_cleanups_shl_double_add_20_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid127_i_cleanups_shl_double_add_20_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid128_i_cleanups_shl_double_add_20_shift_x_q;
    wire [0:0] leftShiftStage0_uid130_i_cleanups_shl_double_add_20_shift_x_s;
    reg [3:0] leftShiftStage0_uid130_i_cleanups_shl_double_add_20_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid134_i_next_initerations_double_add_20_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid136_i_next_initerations_double_add_20_shift_x_q;
    wire [0:0] rightShiftStage0_uid138_i_next_initerations_double_add_20_shift_x_s;
    reg [3:0] rightShiftStage0_uid138_i_next_initerations_double_add_20_shift_x_q;
    wire [56:0] i_arrayidx312_double_add_20_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx312_double_add_20_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together74_aunroll_x_in_c0_eni176_1_tpl_9_q;
    reg [0:0] redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_q;
    reg [0:0] redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_0;
    reg [0:0] redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_1;
    reg [0:0] redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_2;
    reg [0:0] redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_3;
    reg [0:0] redist2_sync_together74_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist3_sync_together74_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist4_sync_together74_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist4_sync_together74_aunroll_x_in_i_valid_13_delay_0;
    reg [0:0] redist4_sync_together74_aunroll_x_in_i_valid_13_delay_1;
    reg [0:0] redist4_sync_together74_aunroll_x_in_i_valid_13_delay_2;
    reg [0:0] redist5_sync_together74_aunroll_x_in_i_valid_23_q;
    reg [0:0] redist6_i_masked_double_add_232_q_15_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_15_q;
    reg [0:0] redist8_i_first_cleanup_xor_double_add_24_q_15_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together74_aunroll_x_in_i_valid_8(DELAY,142)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together74_aunroll_x_in_i_valid_8 ( .xin(in_i_valid), .xout(redist2_sync_together74_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_sync_together74_aunroll_x_in_i_valid_9(DELAY,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together74_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist3_sync_together74_aunroll_x_in_i_valid_9_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_8_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid127_i_cleanups_shl_double_add_20_shift_x(BITSELECT,126)@10
    assign leftShiftStage0Idx1Rng1_uid127_i_cleanups_shl_double_add_20_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid127_i_cleanups_shl_double_add_20_shift_x_b = leftShiftStage0Idx1Rng1_uid127_i_cleanups_shl_double_add_20_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid128_i_cleanups_shl_double_add_20_shift_x(BITJOIN,127)@10
    assign leftShiftStage0Idx1_uid128_i_cleanups_shl_double_add_20_shift_x_q = {leftShiftStage0Idx1Rng1_uid127_i_cleanups_shl_double_add_20_shift_x_b, GND_q};

    // leftShiftStage0_uid130_i_cleanups_shl_double_add_20_shift_x(MUX,129)@10
    assign leftShiftStage0_uid130_i_cleanups_shl_double_add_20_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid130_i_cleanups_shl_double_add_20_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22_out_data_out or leftShiftStage0Idx1_uid128_i_cleanups_shl_double_add_20_shift_x_q)
    begin
        unique case (leftShiftStage0_uid130_i_cleanups_shl_double_add_20_shift_x_s)
            1'b0 : leftShiftStage0_uid130_i_cleanups_shl_double_add_20_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22_out_data_out;
            1'b1 : leftShiftStage0_uid130_i_cleanups_shl_double_add_20_shift_x_q = leftShiftStage0Idx1_uid128_i_cleanups_shl_double_add_20_shift_x_q;
            default : leftShiftStage0_uid130_i_cleanups_shl_double_add_20_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_double_add_25_vt_select_3(BITSELECT,36)@10
    assign i_cleanups_shl_double_add_25_vt_select_3_b = leftShiftStage0_uid130_i_cleanups_shl_double_add_20_shift_x_q[3:1];

    // i_cleanups_shl_double_add_25_vt_join(BITJOIN,35)@10
    assign i_cleanups_shl_double_add_25_vt_join_q = {i_cleanups_shl_double_add_25_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_double_add_24(LOGICAL,39)@10
    assign i_first_cleanup_xor_double_add_24_q = i_first_cleanup_double_add_23_sel_x_b ^ VCC_q;

    // i_notcmp_double_add_224(LOGICAL,67)@10
    assign i_notcmp_double_add_224_q = i_exitcond_double_add_222_cmp_nsign_q ^ VCC_q;

    // i_or_double_add_226(LOGICAL,68)@10
    assign i_or_double_add_226_q = i_notcmp_double_add_224_q | i_first_cleanup_xor_double_add_24_q;

    // i_next_cleanups_double_add_227(MUX,63)@10
    assign i_next_cleanups_double_add_227_s = i_or_double_add_226_q;
    always @(i_next_cleanups_double_add_227_s or i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22_out_data_out or i_cleanups_shl_double_add_25_vt_join_q)
    begin
        unique case (i_next_cleanups_double_add_227_s)
            1'b0 : i_next_cleanups_double_add_227_q = i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22_out_data_out;
            1'b1 : i_next_cleanups_double_add_227_q = i_cleanups_shl_double_add_25_vt_join_q;
            default : i_next_cleanups_double_add_227_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push13_double_add_228(BLACKBOX,59)@10
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    double_add_2_i_llvm_fpga_push_i4_cleanups_push13_0 thei_llvm_fpga_push_i4_cleanups_push13_double_add_228 (
        .in_data_in(i_next_cleanups_double_add_227_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22_out_feedback_stall_out_13),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together74_aunroll_x_in_i_valid_9_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i4_cleanups_push13_double_add_228_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i4_cleanups_push13_double_add_228_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_749(CONSTANT,25)
    assign c_i4_749_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22(BLACKBOX,52)@10
    // out out_feedback_stall_out_13@20000000
    double_add_2_i_llvm_fpga_pop_i4_cleanups_pop13_0 thei_llvm_fpga_pop_i4_cleanups_pop13_double_add_22 (
        .in_data_in(c_i4_749_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni176_1_tpl_9_q),
        .in_feedback_in_13(i_llvm_fpga_push_i4_cleanups_push13_double_add_228_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i4_cleanups_push13_double_add_228_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together74_aunroll_x_in_i_valid_9_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_double_add_23_sel_x(BITSELECT,95)@10
    assign i_first_cleanup_double_add_23_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop13_double_add_22_out_data_out[0:0];

    // c_i5_157(CONSTANT,27)
    assign c_i5_157_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_double_add_229(ADD,40)@10
    assign i_fpga_indvars_iv_next_double_add_229_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_double_add_221_out_data_out};
    assign i_fpga_indvars_iv_next_double_add_229_b = {1'b0, c_i5_157_q};
    assign i_fpga_indvars_iv_next_double_add_229_o = $unsigned(i_fpga_indvars_iv_next_double_add_229_a) + $unsigned(i_fpga_indvars_iv_next_double_add_229_b);
    assign i_fpga_indvars_iv_next_double_add_229_q = i_fpga_indvars_iv_next_double_add_229_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_double_add_229_sel_x(BITSELECT,75)@10
    assign bgTrunc_i_fpga_indvars_iv_next_double_add_229_sel_x_b = i_fpga_indvars_iv_next_double_add_229_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push9_double_add_230(BLACKBOX,61)@10
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    double_add_2_i_llvm_fpga_push_i5_fpga_indvars_iv_push9_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push9_double_add_230 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_double_add_229_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_double_add_221_out_feedback_stall_out_9),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together74_aunroll_x_in_i_valid_9_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i5_fpga_indvars_iv_push9_double_add_230_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i5_fpga_indvars_iv_push9_double_add_230_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_1055(CONSTANT,26)
    assign c_i5_1055_q = $unsigned(5'b01010);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_double_add_221(BLACKBOX,54)@10
    // out out_feedback_stall_out_9@20000000
    double_add_2_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_double_add_221 (
        .in_data_in(c_i5_1055_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni176_1_tpl_9_q),
        .in_feedback_in_9(i_llvm_fpga_push_i5_fpga_indvars_iv_push9_double_add_230_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i5_fpga_indvars_iv_push9_double_add_230_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together74_aunroll_x_in_i_valid_9_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_double_add_221_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_double_add_221_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_double_add_222_cmp_nsign(LOGICAL,122)@10
    assign i_exitcond_double_add_222_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop9_double_add_221_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond_double_add_225(BLACKBOX,57)@10
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    double_add_2_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_double_add_225 (
        .in_data_in(i_exitcond_double_add_222_cmp_nsign_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_double_add_26_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_double_add_23_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together74_aunroll_x_in_i_valid_9_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_double_add_225_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_double_add_225_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,107)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_8_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid134_i_next_initerations_double_add_20_shift_x(BITSELECT,133)@10
    assign rightShiftStage0Idx1Rng1_uid134_i_next_initerations_double_add_20_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop12_double_add_27_out_data_out[3:1];

    // rightShiftStage0Idx1_uid136_i_next_initerations_double_add_20_shift_x(BITJOIN,135)@10
    assign rightShiftStage0Idx1_uid136_i_next_initerations_double_add_20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid134_i_next_initerations_double_add_20_shift_x_b};

    // valid_fanout_reg1(REG,105)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg2(REG,106)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push12_double_add_29(BLACKBOX,60)@10
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    double_add_2_i_llvm_fpga_push_i4_initerations_push12_0 thei_llvm_fpga_push_i4_initerations_push12_double_add_29 (
        .in_data_in(i_next_initerations_double_add_28_vt_join_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i4_initerations_pop12_double_add_27_out_feedback_stall_out_12),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i4_initerations_push12_double_add_29_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i4_initerations_push12_double_add_29_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop12_double_add_27(BLACKBOX,53)@10
    // out out_feedback_stall_out_12@20000000
    double_add_2_i_llvm_fpga_pop_i4_initerations_pop12_0 thei_llvm_fpga_pop_i4_initerations_pop12_double_add_27 (
        .in_data_in(c_i4_749_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni176_1_tpl_9_q),
        .in_feedback_in_12(i_llvm_fpga_push_i4_initerations_push12_double_add_29_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i4_initerations_push12_double_add_29_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop12_double_add_27_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i4_initerations_pop12_double_add_27_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid138_i_next_initerations_double_add_20_shift_x(MUX,137)@10
    assign rightShiftStage0_uid138_i_next_initerations_double_add_20_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid138_i_next_initerations_double_add_20_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop12_double_add_27_out_data_out or rightShiftStage0Idx1_uid136_i_next_initerations_double_add_20_shift_x_q)
    begin
        unique case (rightShiftStage0_uid138_i_next_initerations_double_add_20_shift_x_s)
            1'b0 : rightShiftStage0_uid138_i_next_initerations_double_add_20_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop12_double_add_27_out_data_out;
            1'b1 : rightShiftStage0_uid138_i_next_initerations_double_add_20_shift_x_q = rightShiftStage0Idx1_uid136_i_next_initerations_double_add_20_shift_x_q;
            default : rightShiftStage0_uid138_i_next_initerations_double_add_20_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_double_add_28_vt_select_2(BITSELECT,66)@10
    assign i_next_initerations_double_add_28_vt_select_2_b = rightShiftStage0_uid138_i_next_initerations_double_add_20_shift_x_q[2:0];

    // i_next_initerations_double_add_28_vt_join(BITJOIN,65)@10
    assign i_next_initerations_double_add_28_vt_join_q = {GND_q, i_next_initerations_double_add_28_vt_select_2_b};

    // i_last_initeration_double_add_210_sel_x(BITSELECT,97)@10
    assign i_last_initeration_double_add_210_sel_x_b = i_next_initerations_double_add_28_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_double_add_211(BLACKBOX,56)@10
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    double_add_2_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_double_add_211 (
        .in_data_in(i_last_initeration_double_add_210_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_double_add_26_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together74_aunroll_x_in_c0_eni176_1_tpl_9(DELAY,140)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together74_aunroll_x_in_c0_eni176_1_tpl_9 ( .xin(in_c0_eni176_1_tpl), .xout(redist0_sync_together74_aunroll_x_in_c0_eni176_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pipeline_keep_going_double_add_26(BLACKBOX,49)@10
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    double_add_2_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_double_add_26 (
        .in_data_in(redist0_sync_together74_aunroll_x_in_c0_eni176_1_tpl_9_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_double_add_211_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_double_add_225_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_double_add_225_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together74_aunroll_x_in_i_valid_9_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_double_add_26_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,29)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_double_add_26_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_double_add_26_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,71)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_double_add_26_out_pipeline_valid_out;

    // redist4_sync_together74_aunroll_x_in_i_valid_13(DELAY,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together74_aunroll_x_in_i_valid_13_delay_0 <= '0;
            redist4_sync_together74_aunroll_x_in_i_valid_13_delay_1 <= '0;
            redist4_sync_together74_aunroll_x_in_i_valid_13_delay_2 <= '0;
            redist4_sync_together74_aunroll_x_in_i_valid_13_q <= '0;
        end
        else
        begin
            redist4_sync_together74_aunroll_x_in_i_valid_13_delay_0 <= $unsigned(redist3_sync_together74_aunroll_x_in_i_valid_9_q);
            redist4_sync_together74_aunroll_x_in_i_valid_13_delay_1 <= redist4_sync_together74_aunroll_x_in_i_valid_13_delay_0;
            redist4_sync_together74_aunroll_x_in_i_valid_13_delay_2 <= redist4_sync_together74_aunroll_x_in_i_valid_13_delay_1;
            redist4_sync_together74_aunroll_x_in_i_valid_13_q <= redist4_sync_together74_aunroll_x_in_i_valid_13_delay_2;
        end
    end

    // redist5_sync_together74_aunroll_x_in_i_valid_23(DELAY,145)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together74_aunroll_x_in_i_valid_23 ( .xin(redist4_sync_together74_aunroll_x_in_i_valid_13_q), .xout(redist5_sync_together74_aunroll_x_in_i_valid_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg9(REG,113)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist5_sync_together74_aunroll_x_in_i_valid_23_q);
        end
    end

    // valid_fanout_reg5(REG,109)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_8_q);
        end
    end

    // c_double_add_2_shift_reg_pmem(CONSTANT,5)
    assign c_double_add_2_shift_reg_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx312_double_add_20_upper_bits_x_merged_bit_select(BITSELECT,139)@10
    assign i_arrayidx312_double_add_20_upper_bits_x_merged_bit_select_b = c_double_add_2_shift_reg_pmem_q[63:7];
    assign i_arrayidx312_double_add_20_upper_bits_x_merged_bit_select_c = c_double_add_2_shift_reg_pmem_q[6:0];

    // c_i32_052(CONSTANT,22)
    assign c_i32_052_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,108)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg8(REG,112)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_8_q);
        end
    end

    // c_i32_154(CONSTANT,23)
    assign c_i32_154_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc34_double_add_219(ADD,45)@10
    assign i_inc34_double_add_219_a = {1'b0, i_llvm_fpga_pop_i32_i25_017_pop10_double_add_212_out_data_out};
    assign i_inc34_double_add_219_b = {1'b0, c_i32_154_q};
    assign i_inc34_double_add_219_o = $unsigned(i_inc34_double_add_219_a) + $unsigned(i_inc34_double_add_219_b);
    assign i_inc34_double_add_219_q = i_inc34_double_add_219_o[32:0];

    // bgTrunc_i_inc34_double_add_219_sel_x(BITSELECT,76)@10
    assign bgTrunc_i_inc34_double_add_219_sel_x_b = i_inc34_double_add_219_q[31:0];

    // i_llvm_fpga_push_i32_i25_017_push10_double_add_220(BLACKBOX,58)@10
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    double_add_2_i_llvm_fpga_push_i32_i25_017_push10_0 thei_llvm_fpga_push_i32_i25_017_push10_double_add_220 (
        .in_data_in(bgTrunc_i_inc34_double_add_219_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i32_i25_017_pop10_double_add_212_out_feedback_stall_out_10),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i32_i25_017_push10_double_add_220_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i32_i25_017_push10_double_add_220_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i25_017_pop10_double_add_212(BLACKBOX,51)@10
    // out out_feedback_stall_out_10@20000000
    double_add_2_i_llvm_fpga_pop_i32_i25_017_pop10_0 thei_llvm_fpga_pop_i32_i25_017_pop10_double_add_212 (
        .in_data_in(c_i32_052_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni176_1_tpl_9_q),
        .in_feedback_in_10(i_llvm_fpga_push_i32_i25_017_push10_double_add_220_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i32_i25_017_push10_double_add_220_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i25_017_pop10_double_add_212_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i32_i25_017_pop10_double_add_212_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom30_double_add_213_sel_x(BITSELECT,96)@10
    assign i_idxprom30_double_add_213_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i25_017_pop10_double_add_212_out_data_out[31:0]};

    // i_idxprom30_double_add_213_vt_select_31(BITSELECT,44)@10
    assign i_idxprom30_double_add_213_vt_select_31_b = i_idxprom30_double_add_213_sel_x_b[31:0];

    // i_idxprom30_double_add_213_vt_join(BITJOIN,43)@10
    assign i_idxprom30_double_add_213_vt_join_q = {c_i32_052_q, i_idxprom30_double_add_213_vt_select_31_b};

    // i_arrayidx312_double_add_20_dupName_0_trunc_sel_x(BITSELECT,89)@10
    assign i_arrayidx312_double_add_20_dupName_0_trunc_sel_x_b = i_idxprom30_double_add_213_vt_join_q[6:0];

    // i_arrayidx312_double_add_20_narrow_x(BITSELECT,82)@10
    assign i_arrayidx312_double_add_20_narrow_x_b = i_arrayidx312_double_add_20_dupName_0_trunc_sel_x_b[3:0];

    // i_arrayidx312_double_add_20_shift_join_x(BITJOIN,83)@10
    assign i_arrayidx312_double_add_20_shift_join_x_q = {i_arrayidx312_double_add_20_narrow_x_b, i_arrayidx312_double_add_214_vt_const_2_q};

    // i_arrayidx312_double_add_20_add_x(ADD,79)@10
    assign i_arrayidx312_double_add_20_add_x_a = {1'b0, i_arrayidx312_double_add_20_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx312_double_add_20_add_x_b = {1'b0, i_arrayidx312_double_add_20_shift_join_x_q};
    assign i_arrayidx312_double_add_20_add_x_o = $unsigned(i_arrayidx312_double_add_20_add_x_a) + $unsigned(i_arrayidx312_double_add_20_add_x_b);
    assign i_arrayidx312_double_add_20_add_x_q = i_arrayidx312_double_add_20_add_x_o[7:0];

    // i_arrayidx312_double_add_20_dupName_2_trunc_sel_x(BITSELECT,90)@10
    assign i_arrayidx312_double_add_20_dupName_2_trunc_sel_x_b = i_arrayidx312_double_add_20_add_x_q[6:0];

    // i_arrayidx312_double_add_20_append_upper_bits_x(BITJOIN,80)@10
    assign i_arrayidx312_double_add_20_append_upper_bits_x_q = {i_arrayidx312_double_add_20_upper_bits_x_merged_bit_select_b, i_arrayidx312_double_add_20_dupName_2_trunc_sel_x_b};

    // i_arrayidx312_double_add_214_vt_select_63(BITSELECT,33)@10
    assign i_arrayidx312_double_add_214_vt_select_63_b = i_arrayidx312_double_add_20_append_upper_bits_x_q[63:3];

    // i_arrayidx312_double_add_214_vt_const_2(CONSTANT,31)
    assign i_arrayidx312_double_add_214_vt_const_2_q = $unsigned(3'b000);

    // i_arrayidx312_double_add_214_vt_join(BITJOIN,32)@10
    assign i_arrayidx312_double_add_214_vt_join_q = {i_arrayidx312_double_add_214_vt_select_63_b, i_arrayidx312_double_add_214_vt_const_2_q};

    // i_llvm_fpga_mem_unnamed_double_add_29_double_add_215(BLACKBOX,48)@10
    // in in_i_stall@20000000
    // out out_o_readdata@15
    // out out_o_stall@14
    // out out_o_valid@15
    // out out_unnamed_double_add_29_double_add_2_avm_address@20000000
    // out out_unnamed_double_add_29_double_add_2_avm_burstcount@20000000
    // out out_unnamed_double_add_29_double_add_2_avm_byteenable@20000000
    // out out_unnamed_double_add_29_double_add_2_avm_enable@20000000
    // out out_unnamed_double_add_29_double_add_2_avm_read@20000000
    // out out_unnamed_double_add_29_double_add_2_avm_write@20000000
    // out out_unnamed_double_add_29_double_add_2_avm_writedata@20000000
    double_add_2_i_llvm_fpga_mem_unnamed_9_double_add_20 thei_llvm_fpga_mem_unnamed_double_add_29_double_add_215 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx312_double_add_214_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_double_add_24_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_double_add_29_double_add_2_avm_readdata(in_unnamed_double_add_29_double_add_2_avm_readdata),
        .in_unnamed_double_add_29_double_add_2_avm_readdatavalid(in_unnamed_double_add_29_double_add_2_avm_readdatavalid),
        .in_unnamed_double_add_29_double_add_2_avm_waitrequest(in_unnamed_double_add_29_double_add_2_avm_waitrequest),
        .in_unnamed_double_add_29_double_add_2_avm_writeack(in_unnamed_double_add_29_double_add_2_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_double_add_29_double_add_2_avm_address(i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_address),
        .out_unnamed_double_add_29_double_add_2_avm_burstcount(i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_burstcount),
        .out_unnamed_double_add_29_double_add_2_avm_byteenable(i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_byteenable),
        .out_unnamed_double_add_29_double_add_2_avm_enable(i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_enable),
        .out_unnamed_double_add_29_double_add_2_avm_read(i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_read),
        .out_unnamed_double_add_29_double_add_2_avm_write(i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_write),
        .out_unnamed_double_add_29_double_add_2_avm_writedata(i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,110)@14 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist4_sync_together74_aunroll_x_in_i_valid_13_q);
        end
    end

    // valid_fanout_reg7(REG,111)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together74_aunroll_x_in_i_valid_23_q);
        end
    end

    // redist7_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_15(DELAY,147)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_15 ( .xin(i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out), .xout(redist7_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_f64_temp_sum_016_push11_double_add_218(BLACKBOX,55)@25
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    double_add_2_i_llvm_fpga_push_f64_temp_sum_016_push11_0 thei_llvm_fpga_push_f64_temp_sum_016_push11_double_add_218 (
        .in_data_in(i_add32_double_add_217_out_primWireOut),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_f64_temp_sum_016_pop11_double_add_216_out_feedback_stall_out_11),
        .in_keep_going(redist7_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_15_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_f64_temp_sum_016_push11_double_add_218_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_f64_temp_sum_016_push11_double_add_218_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14(DELAY,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_0 <= '0;
            redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_1 <= '0;
            redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_2 <= '0;
            redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_3 <= '0;
            redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_q <= '0;
        end
        else
        begin
            redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_0 <= $unsigned(redist0_sync_together74_aunroll_x_in_c0_eni176_1_tpl_9_q);
            redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_1 <= redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_0;
            redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_2 <= redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_1;
            redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_3 <= redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_2;
            redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_q <= redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_delay_3;
        end
    end

    // c_double_0_000000e_0053(FLOATCONSTANT,4)
    assign c_double_0_000000e_0053_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_f64_temp_sum_016_pop11_double_add_216(BLACKBOX,50)@15
    // out out_feedback_stall_out_11@20000000
    double_add_2_i_llvm_fpga_pop_f64_temp_sum_016_pop11_0 thei_llvm_fpga_pop_f64_temp_sum_016_pop11_double_add_216 (
        .in_data_in(c_double_0_000000e_0053_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni176_1_tpl_14_q),
        .in_feedback_in_11(i_llvm_fpga_push_f64_temp_sum_016_push11_double_add_218_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_f64_temp_sum_016_push11_double_add_218_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_f64_temp_sum_016_pop11_double_add_216_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_f64_temp_sum_016_pop11_double_add_216_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add32_double_add_217(BLACKBOX,30)@15
    // out out_primWireOut@25
    double_add_2_flt_i_sfc_logic_s_c0_in_for0000cdd6oq3cd06o20cp0doz thei_add32_double_add_217 (
        .in_0(i_llvm_fpga_pop_f64_temp_sum_016_pop11_double_add_216_out_data_out),
        .in_1(i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_o_readdata),
        .out_primWireOut(i_add32_double_add_217_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_first_cleanup_xor_double_add_24_q_15(DELAY,148)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_first_cleanup_xor_double_add_24_q_15 ( .xin(i_first_cleanup_xor_double_add_24_q), .xout(redist8_i_first_cleanup_xor_double_add_24_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_210_double_add_231(BLACKBOX,47)@25
    // out out_intel_reserved_ffwd_2_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_10_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_210_double_add_231 (
        .in_predicate_in(redist8_i_first_cleanup_xor_double_add_24_q_15_q),
        .in_src_data_in_2_0(i_add32_double_add_217_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_210_double_add_231_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,73)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_210_double_add_231_out_intel_reserved_ffwd_2_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,78)
    assign out_unnamed_double_add_29_double_add_2_avm_address = i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_address;
    assign out_unnamed_double_add_29_double_add_2_avm_enable = i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_enable;
    assign out_unnamed_double_add_29_double_add_2_avm_read = i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_read;
    assign out_unnamed_double_add_29_double_add_2_avm_write = i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_write;
    assign out_unnamed_double_add_29_double_add_2_avm_writedata = i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_writedata;
    assign out_unnamed_double_add_29_double_add_2_avm_byteenable = i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_byteenable;
    assign out_unnamed_double_add_29_double_add_2_avm_burstcount = i_llvm_fpga_mem_unnamed_double_add_29_double_add_215_out_unnamed_double_add_29_double_add_2_avm_burstcount;

    // valid_fanout_reg0(REG,104)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together74_aunroll_x_in_i_valid_23_q);
        end
    end

    // i_masked_double_add_232(LOGICAL,62)@10 + 1
    assign i_masked_double_add_232_qi = i_notcmp_double_add_224_q & i_first_cleanup_double_add_23_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_double_add_232_delay ( .xin(i_masked_double_add_232_qi), .xout(i_masked_double_add_232_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_i_masked_double_add_232_q_15(DELAY,146)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_i_masked_double_add_232_q_15 ( .xin(i_masked_double_add_232_q), .xout(redist6_i_masked_double_add_232_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,102)@25
    assign out_c0_exi280_0_tpl = GND_q;
    assign out_c0_exi280_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going_double_add_26_out_data_out_15_q;
    assign out_c0_exi280_2_tpl = redist6_i_masked_double_add_232_q_15_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_double_add_23 = GND_q;

endmodule
