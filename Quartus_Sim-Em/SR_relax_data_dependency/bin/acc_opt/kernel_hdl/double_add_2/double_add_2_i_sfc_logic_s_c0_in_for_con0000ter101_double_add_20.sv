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

// SystemVerilog created from double_add_2_i_sfc_logic_s_c0_in_for_con0000ter101_double_add_20
// SystemVerilog created on Tue May 23 13:58:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_i_sfc_logic_s_c0_in_for_con0000ter101_double_add_20 (
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [63:0] in_intel_reserved_ffwd_14_0,
    input wire [63:0] in_intel_reserved_ffwd_15_0,
    input wire [63:0] in_intel_reserved_ffwd_16_0,
    input wire [63:0] in_intel_reserved_ffwd_17_0,
    input wire [63:0] in_intel_reserved_ffwd_18_0,
    input wire [63:0] in_intel_reserved_ffwd_19_0,
    input wire [63:0] in_intel_reserved_ffwd_20_0,
    input wire [63:0] in_intel_reserved_ffwd_21_0,
    input wire [63:0] in_intel_reserved_ffwd_22_0,
    input wire [63:0] in_intel_reserved_ffwd_23_0,
    input wire [63:0] in_intel_reserved_ffwd_24_0,
    input wire [63:0] in_intel_reserved_ffwd_25_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_result,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exi2103_0_tpl,
    output wire [63:0] out_c0_exi2103_1_tpl,
    output wire [63:0] out_c0_exi2103_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_double_add_214,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_double_0_000000e_00101_q;
    wire [63:0] i_add32_10_double_add_259_out_primWireOut;
    wire [63:0] i_add32_11_double_add_260_out_primWireOut;
    wire [63:0] i_add32_1_double_add_250_out_primWireOut;
    wire [63:0] i_add32_2_double_add_251_out_primWireOut;
    wire [63:0] i_add32_3_double_add_252_out_primWireOut;
    wire [63:0] i_add32_4_double_add_253_out_primWireOut;
    wire [63:0] i_add32_5_double_add_254_out_primWireOut;
    wire [63:0] i_add32_6_double_add_255_out_primWireOut;
    wire [63:0] i_add32_7_double_add_256_out_primWireOut;
    wire [63:0] i_add32_8_double_add_257_out_primWireOut;
    wire [63:0] i_add32_9_double_add_258_out_primWireOut;
    wire [63:0] i_add32_double_add_249_out_primWireOut;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_add61_double_add_247_out_dest_data_out_25_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_replace_phi1960_double_add_23_out_dest_data_out_24_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_replace_phi2159_double_add_27_out_dest_data_out_23_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_replace_phi2458_double_add_211_out_dest_data_out_22_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_replace_phi2757_double_add_215_out_dest_data_out_21_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_replace_phi3056_double_add_219_out_dest_data_out_20_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_replace_phi3355_double_add_223_out_dest_data_out_19_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_replace_phi3654_double_add_227_out_dest_data_out_18_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_replace_phi3953_double_add_231_out_dest_data_out_17_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_replace_phi4252_double_add_235_out_dest_data_out_16_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_replace_phi4551_double_add_239_out_dest_data_out_15_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_replace_phi4850_double_add_243_out_dest_data_out_14_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14420_double_add_210_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14523_double_add_214_out_dest_data_out_5_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14626_double_add_218_out_dest_data_out_6_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14729_double_add_222_out_dest_data_out_7_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14832_double_add_226_out_dest_data_out_8_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14935_double_add_230_out_dest_data_out_9_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select15038_double_add_234_out_dest_data_out_10_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select15141_double_add_238_out_dest_data_out_11_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select15244_double_add_242_out_dest_data_out_12_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select15347_double_add_246_out_dest_data_out_13_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select17_double_add_22_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_unnamed_double_add_216_double_add_26_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp31910_double_add_221_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp31911_double_add_217_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp31912_double_add_213_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp31913_double_add_29_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp31914_double_add_25_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp31915_double_add_21_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3194_double_add_245_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3195_double_add_241_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3196_double_add_237_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3197_double_add_233_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3198_double_add_229_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3199_double_add_225_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_select_63_b;
    wire [0:0] i_select33_double_add_244_s;
    reg [63:0] i_select33_double_add_244_q;
    wire [0:0] i_select37_double_add_240_s;
    reg [63:0] i_select37_double_add_240_q;
    wire [0:0] i_select41_double_add_236_s;
    reg [63:0] i_select41_double_add_236_q;
    wire [0:0] i_select45_double_add_232_s;
    reg [63:0] i_select45_double_add_232_q;
    wire [0:0] i_select49_double_add_228_s;
    reg [63:0] i_select49_double_add_228_q;
    wire [0:0] i_select53_double_add_224_s;
    reg [63:0] i_select53_double_add_224_q;
    wire [0:0] i_select57_double_add_220_s;
    reg [63:0] i_select57_double_add_220_q;
    wire [0:0] i_select61_double_add_216_s;
    reg [63:0] i_select61_double_add_216_q;
    wire [0:0] i_select65_double_add_212_s;
    reg [63:0] i_select65_double_add_212_q;
    wire [0:0] i_select69_double_add_28_s;
    reg [63:0] i_select69_double_add_28_q;
    wire [0:0] i_select73_double_add_24_s;
    reg [63:0] i_select73_double_add_24_q;
    wire [0:0] i_select_double_add_248_s;
    reg [63:0] i_select_double_add_248_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    reg [0:0] redist0_sync_together129_in_i_valid_11_q;
    reg [0:0] redist1_sync_together129_in_i_valid_22_q;
    reg [0:0] redist2_sync_together129_in_i_valid_33_q;
    reg [0:0] redist3_sync_together129_in_i_valid_44_q;
    reg [0:0] redist4_sync_together129_in_i_valid_55_q;
    reg [0:0] redist5_sync_together129_in_i_valid_66_q;
    reg [0:0] redist6_sync_together129_in_i_valid_77_q;
    reg [0:0] redist7_sync_together129_in_i_valid_88_q;
    reg [0:0] redist8_sync_together129_in_i_valid_99_q;
    reg [0:0] redist9_sync_together129_in_i_valid_110_q;
    reg [0:0] redist10_sync_together129_in_i_valid_121_q;
    reg [0:0] redist11_sync_together129_in_i_valid_131_q;
    reg [63:0] redist12_i_add32_double_add_249_out_primWireOut_1_q;
    reg [63:0] redist13_i_add32_9_double_add_258_out_primWireOut_1_q;
    reg [63:0] redist14_i_add32_8_double_add_257_out_primWireOut_1_q;
    reg [63:0] redist15_i_add32_7_double_add_256_out_primWireOut_1_q;
    reg [63:0] redist16_i_add32_6_double_add_255_out_primWireOut_1_q;
    reg [63:0] redist17_i_add32_5_double_add_254_out_primWireOut_1_q;
    reg [63:0] redist18_i_add32_4_double_add_253_out_primWireOut_1_q;
    reg [63:0] redist19_i_add32_3_double_add_252_out_primWireOut_1_q;
    reg [63:0] redist20_i_add32_2_double_add_251_out_primWireOut_1_q;
    reg [63:0] redist21_i_add32_1_double_add_250_out_primWireOut_1_q;
    reg [63:0] redist22_i_add32_10_double_add_259_out_primWireOut_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together129_in_i_valid_11(DELAY,171)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together129_in_i_valid_11 ( .xin(in_i_valid), .xout(redist0_sync_together129_in_i_valid_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist1_sync_together129_in_i_valid_22(DELAY,172)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together129_in_i_valid_22 ( .xin(redist0_sync_together129_in_i_valid_11_q), .xout(redist1_sync_together129_in_i_valid_22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_sync_together129_in_i_valid_33(DELAY,173)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together129_in_i_valid_33 ( .xin(redist1_sync_together129_in_i_valid_22_q), .xout(redist2_sync_together129_in_i_valid_33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_sync_together129_in_i_valid_44(DELAY,174)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together129_in_i_valid_44 ( .xin(redist2_sync_together129_in_i_valid_33_q), .xout(redist3_sync_together129_in_i_valid_44_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_sync_together129_in_i_valid_55(DELAY,175)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_sync_together129_in_i_valid_55 ( .xin(redist3_sync_together129_in_i_valid_44_q), .xout(redist4_sync_together129_in_i_valid_55_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_sync_together129_in_i_valid_66(DELAY,176)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together129_in_i_valid_66 ( .xin(redist4_sync_together129_in_i_valid_55_q), .xout(redist5_sync_together129_in_i_valid_66_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_sync_together129_in_i_valid_77(DELAY,177)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_sync_together129_in_i_valid_77 ( .xin(redist5_sync_together129_in_i_valid_66_q), .xout(redist6_sync_together129_in_i_valid_77_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_sync_together129_in_i_valid_88(DELAY,178)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together129_in_i_valid_88 ( .xin(redist6_sync_together129_in_i_valid_77_q), .xout(redist7_sync_together129_in_i_valid_88_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together129_in_i_valid_99(DELAY,179)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together129_in_i_valid_99 ( .xin(redist7_sync_together129_in_i_valid_88_q), .xout(redist8_sync_together129_in_i_valid_99_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_sync_together129_in_i_valid_110(DELAY,180)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together129_in_i_valid_110 ( .xin(redist8_sync_together129_in_i_valid_99_q), .xout(redist9_sync_together129_in_i_valid_110_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together129_in_i_valid_121(DELAY,181)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together129_in_i_valid_121 ( .xin(redist9_sync_together129_in_i_valid_110_q), .xout(redist10_sync_together129_in_i_valid_121_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together129_in_i_valid_131(DELAY,182)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_sync_together129_in_i_valid_131 ( .xin(redist10_sync_together129_in_i_valid_121_q), .xout(redist11_sync_together129_in_i_valid_131_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,133)@131 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist11_sync_together129_in_i_valid_131_q);
        end
    end

    // valid_fanout_reg37(REG,170)@131 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist11_sync_together129_in_i_valid_131_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261(BLACKBOX,88)@0
    // in in_i_dependence@132
    // in in_valid_in@132
    // out out_buffer_out@132
    // out out_valid_out@132
    double_add_2_i_llvm_fpga_sync_buffer_p100000result_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261 (
        .in_buffer_in(in_result),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_select_63(BITSELECT,91)@132
    assign i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_const_9(CONSTANT,89)
    assign i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_join(BITJOIN,90)@132
    assign i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_const_9_q};

    // valid_fanout_reg36(REG,169)@121 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist10_sync_together129_in_i_valid_121_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_add61_double_add_247(BLACKBOX,52)@122
    double_add_2_i_llvm_fpga_ffwd_dest_f64_add61_0 thei_llvm_fpga_ffwd_dest_f64_add61_double_add_247 (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_f64_add61_double_add_247_out_dest_data_out_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg35(REG,168)@121 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist10_sync_together129_in_i_valid_121_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select15347_double_add_246(BLACKBOX,73)@122
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select15347_0 thei_llvm_fpga_ffwd_dest_f64_spec_select15347_double_add_246 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_f64_spec_select15347_double_add_246_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg34(REG,167)@121 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist10_sync_together129_in_i_valid_121_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp3194_double_add_245(BLACKBOX,82)@122
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp3194_0 thei_llvm_fpga_ffwd_dest_i1_cmp3194_double_add_245 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp3194_double_add_245_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select_double_add_248(MUX,103)@122
    assign i_select_double_add_248_s = i_llvm_fpga_ffwd_dest_i1_cmp3194_double_add_245_out_dest_data_out_0_0;
    always @(i_select_double_add_248_s or i_llvm_fpga_ffwd_dest_f64_spec_select15347_double_add_246_out_dest_data_out_13_0 or i_llvm_fpga_ffwd_dest_f64_add61_double_add_247_out_dest_data_out_25_0)
    begin
        unique case (i_select_double_add_248_s)
            1'b0 : i_select_double_add_248_q = i_llvm_fpga_ffwd_dest_f64_spec_select15347_double_add_246_out_dest_data_out_13_0;
            1'b1 : i_select_double_add_248_q = i_llvm_fpga_ffwd_dest_f64_add61_double_add_247_out_dest_data_out_25_0;
            default : i_select_double_add_248_q = 64'b0;
        endcase
    end

    // valid_fanout_reg33(REG,166)@110 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist9_sync_together129_in_i_valid_110_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_replace_phi4850_double_add_243(BLACKBOX,63)@111
    double_add_2_i_llvm_fpga_ffwd_dest_f64_replace_phi4850_0 thei_llvm_fpga_ffwd_dest_f64_replace_phi4850_double_add_243 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_f64_replace_phi4850_double_add_243_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg32(REG,165)@110 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist9_sync_together129_in_i_valid_110_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select15244_double_add_242(BLACKBOX,72)@111
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select15244_0 thei_llvm_fpga_ffwd_dest_f64_spec_select15244_double_add_242 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_f64_spec_select15244_double_add_242_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg31(REG,164)@110 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist9_sync_together129_in_i_valid_110_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp3195_double_add_241(BLACKBOX,83)@111
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp3195_0 thei_llvm_fpga_ffwd_dest_i1_cmp3195_double_add_241 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp3195_double_add_241_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select33_double_add_244(MUX,92)@111
    assign i_select33_double_add_244_s = i_llvm_fpga_ffwd_dest_i1_cmp3195_double_add_241_out_dest_data_out_0_0;
    always @(i_select33_double_add_244_s or i_llvm_fpga_ffwd_dest_f64_spec_select15244_double_add_242_out_dest_data_out_12_0 or i_llvm_fpga_ffwd_dest_f64_replace_phi4850_double_add_243_out_dest_data_out_14_0)
    begin
        unique case (i_select33_double_add_244_s)
            1'b0 : i_select33_double_add_244_q = i_llvm_fpga_ffwd_dest_f64_spec_select15244_double_add_242_out_dest_data_out_12_0;
            1'b1 : i_select33_double_add_244_q = i_llvm_fpga_ffwd_dest_f64_replace_phi4850_double_add_243_out_dest_data_out_14_0;
            default : i_select33_double_add_244_q = 64'b0;
        endcase
    end

    // valid_fanout_reg30(REG,163)@99 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist8_sync_together129_in_i_valid_99_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_replace_phi4551_double_add_239(BLACKBOX,62)@100
    double_add_2_i_llvm_fpga_ffwd_dest_f64_replace_phi4551_0 thei_llvm_fpga_ffwd_dest_f64_replace_phi4551_double_add_239 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_f64_replace_phi4551_double_add_239_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg29(REG,162)@99 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist8_sync_together129_in_i_valid_99_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select15141_double_add_238(BLACKBOX,71)@100
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select15141_0 thei_llvm_fpga_ffwd_dest_f64_spec_select15141_double_add_238 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_f64_spec_select15141_double_add_238_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg28(REG,161)@99 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist8_sync_together129_in_i_valid_99_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp3196_double_add_237(BLACKBOX,84)@100
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp3196_0 thei_llvm_fpga_ffwd_dest_i1_cmp3196_double_add_237 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp3196_double_add_237_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select37_double_add_240(MUX,93)@100
    assign i_select37_double_add_240_s = i_llvm_fpga_ffwd_dest_i1_cmp3196_double_add_237_out_dest_data_out_0_0;
    always @(i_select37_double_add_240_s or i_llvm_fpga_ffwd_dest_f64_spec_select15141_double_add_238_out_dest_data_out_11_0 or i_llvm_fpga_ffwd_dest_f64_replace_phi4551_double_add_239_out_dest_data_out_15_0)
    begin
        unique case (i_select37_double_add_240_s)
            1'b0 : i_select37_double_add_240_q = i_llvm_fpga_ffwd_dest_f64_spec_select15141_double_add_238_out_dest_data_out_11_0;
            1'b1 : i_select37_double_add_240_q = i_llvm_fpga_ffwd_dest_f64_replace_phi4551_double_add_239_out_dest_data_out_15_0;
            default : i_select37_double_add_240_q = 64'b0;
        endcase
    end

    // valid_fanout_reg27(REG,160)@88 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist7_sync_together129_in_i_valid_88_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_replace_phi4252_double_add_235(BLACKBOX,61)@89
    double_add_2_i_llvm_fpga_ffwd_dest_f64_replace_phi4252_0 thei_llvm_fpga_ffwd_dest_f64_replace_phi4252_double_add_235 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_f64_replace_phi4252_double_add_235_out_dest_data_out_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg26(REG,159)@88 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist7_sync_together129_in_i_valid_88_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select15038_double_add_234(BLACKBOX,70)@89
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select15038_0 thei_llvm_fpga_ffwd_dest_f64_spec_select15038_double_add_234 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_f64_spec_select15038_double_add_234_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,158)@88 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist7_sync_together129_in_i_valid_88_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp3197_double_add_233(BLACKBOX,85)@89
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp3197_0 thei_llvm_fpga_ffwd_dest_i1_cmp3197_double_add_233 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp3197_double_add_233_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select41_double_add_236(MUX,94)@89
    assign i_select41_double_add_236_s = i_llvm_fpga_ffwd_dest_i1_cmp3197_double_add_233_out_dest_data_out_0_0;
    always @(i_select41_double_add_236_s or i_llvm_fpga_ffwd_dest_f64_spec_select15038_double_add_234_out_dest_data_out_10_0 or i_llvm_fpga_ffwd_dest_f64_replace_phi4252_double_add_235_out_dest_data_out_16_0)
    begin
        unique case (i_select41_double_add_236_s)
            1'b0 : i_select41_double_add_236_q = i_llvm_fpga_ffwd_dest_f64_spec_select15038_double_add_234_out_dest_data_out_10_0;
            1'b1 : i_select41_double_add_236_q = i_llvm_fpga_ffwd_dest_f64_replace_phi4252_double_add_235_out_dest_data_out_16_0;
            default : i_select41_double_add_236_q = 64'b0;
        endcase
    end

    // valid_fanout_reg24(REG,157)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist6_sync_together129_in_i_valid_77_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_replace_phi3953_double_add_231(BLACKBOX,60)@78
    double_add_2_i_llvm_fpga_ffwd_dest_f64_replace_phi3953_0 thei_llvm_fpga_ffwd_dest_f64_replace_phi3953_double_add_231 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_f64_replace_phi3953_double_add_231_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg23(REG,156)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist6_sync_together129_in_i_valid_77_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14935_double_add_230(BLACKBOX,69)@78
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14935_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14935_double_add_230 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_f64_spec_select14935_double_add_230_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg22(REG,155)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist6_sync_together129_in_i_valid_77_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp3198_double_add_229(BLACKBOX,86)@78
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp3198_0 thei_llvm_fpga_ffwd_dest_i1_cmp3198_double_add_229 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp3198_double_add_229_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select45_double_add_232(MUX,95)@78
    assign i_select45_double_add_232_s = i_llvm_fpga_ffwd_dest_i1_cmp3198_double_add_229_out_dest_data_out_0_0;
    always @(i_select45_double_add_232_s or i_llvm_fpga_ffwd_dest_f64_spec_select14935_double_add_230_out_dest_data_out_9_0 or i_llvm_fpga_ffwd_dest_f64_replace_phi3953_double_add_231_out_dest_data_out_17_0)
    begin
        unique case (i_select45_double_add_232_s)
            1'b0 : i_select45_double_add_232_q = i_llvm_fpga_ffwd_dest_f64_spec_select14935_double_add_230_out_dest_data_out_9_0;
            1'b1 : i_select45_double_add_232_q = i_llvm_fpga_ffwd_dest_f64_replace_phi3953_double_add_231_out_dest_data_out_17_0;
            default : i_select45_double_add_232_q = 64'b0;
        endcase
    end

    // valid_fanout_reg21(REG,154)@66 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist5_sync_together129_in_i_valid_66_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_replace_phi3654_double_add_227(BLACKBOX,59)@67
    double_add_2_i_llvm_fpga_ffwd_dest_f64_replace_phi3654_0 thei_llvm_fpga_ffwd_dest_f64_replace_phi3654_double_add_227 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_f64_replace_phi3654_double_add_227_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg20(REG,153)@66 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist5_sync_together129_in_i_valid_66_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14832_double_add_226(BLACKBOX,68)@67
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14832_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14832_double_add_226 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_f64_spec_select14832_double_add_226_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,152)@66 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist5_sync_together129_in_i_valid_66_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp3199_double_add_225(BLACKBOX,87)@67
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp3199_0 thei_llvm_fpga_ffwd_dest_i1_cmp3199_double_add_225 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp3199_double_add_225_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select49_double_add_228(MUX,96)@67
    assign i_select49_double_add_228_s = i_llvm_fpga_ffwd_dest_i1_cmp3199_double_add_225_out_dest_data_out_0_0;
    always @(i_select49_double_add_228_s or i_llvm_fpga_ffwd_dest_f64_spec_select14832_double_add_226_out_dest_data_out_8_0 or i_llvm_fpga_ffwd_dest_f64_replace_phi3654_double_add_227_out_dest_data_out_18_0)
    begin
        unique case (i_select49_double_add_228_s)
            1'b0 : i_select49_double_add_228_q = i_llvm_fpga_ffwd_dest_f64_spec_select14832_double_add_226_out_dest_data_out_8_0;
            1'b1 : i_select49_double_add_228_q = i_llvm_fpga_ffwd_dest_f64_replace_phi3654_double_add_227_out_dest_data_out_18_0;
            default : i_select49_double_add_228_q = 64'b0;
        endcase
    end

    // valid_fanout_reg18(REG,151)@55 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist4_sync_together129_in_i_valid_55_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_replace_phi3355_double_add_223(BLACKBOX,58)@56
    double_add_2_i_llvm_fpga_ffwd_dest_f64_replace_phi3355_0 thei_llvm_fpga_ffwd_dest_f64_replace_phi3355_double_add_223 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_f64_replace_phi3355_double_add_223_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg17(REG,150)@55 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist4_sync_together129_in_i_valid_55_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14729_double_add_222(BLACKBOX,67)@56
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14729_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14729_double_add_222 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_f64_spec_select14729_double_add_222_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,149)@55 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist4_sync_together129_in_i_valid_55_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp31910_double_add_221(BLACKBOX,76)@56
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp31910_0 thei_llvm_fpga_ffwd_dest_i1_cmp31910_double_add_221 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp31910_double_add_221_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select53_double_add_224(MUX,97)@56
    assign i_select53_double_add_224_s = i_llvm_fpga_ffwd_dest_i1_cmp31910_double_add_221_out_dest_data_out_0_0;
    always @(i_select53_double_add_224_s or i_llvm_fpga_ffwd_dest_f64_spec_select14729_double_add_222_out_dest_data_out_7_0 or i_llvm_fpga_ffwd_dest_f64_replace_phi3355_double_add_223_out_dest_data_out_19_0)
    begin
        unique case (i_select53_double_add_224_s)
            1'b0 : i_select53_double_add_224_q = i_llvm_fpga_ffwd_dest_f64_spec_select14729_double_add_222_out_dest_data_out_7_0;
            1'b1 : i_select53_double_add_224_q = i_llvm_fpga_ffwd_dest_f64_replace_phi3355_double_add_223_out_dest_data_out_19_0;
            default : i_select53_double_add_224_q = 64'b0;
        endcase
    end

    // valid_fanout_reg15(REG,148)@44 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist3_sync_together129_in_i_valid_44_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_replace_phi3056_double_add_219(BLACKBOX,57)@45
    double_add_2_i_llvm_fpga_ffwd_dest_f64_replace_phi3056_0 thei_llvm_fpga_ffwd_dest_f64_replace_phi3056_double_add_219 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_f64_replace_phi3056_double_add_219_out_dest_data_out_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,147)@44 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist3_sync_together129_in_i_valid_44_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14626_double_add_218(BLACKBOX,66)@45
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14626_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14626_double_add_218 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_f64_spec_select14626_double_add_218_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,146)@44 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist3_sync_together129_in_i_valid_44_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp31911_double_add_217(BLACKBOX,77)@45
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp31911_0 thei_llvm_fpga_ffwd_dest_i1_cmp31911_double_add_217 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp31911_double_add_217_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select57_double_add_220(MUX,98)@45
    assign i_select57_double_add_220_s = i_llvm_fpga_ffwd_dest_i1_cmp31911_double_add_217_out_dest_data_out_0_0;
    always @(i_select57_double_add_220_s or i_llvm_fpga_ffwd_dest_f64_spec_select14626_double_add_218_out_dest_data_out_6_0 or i_llvm_fpga_ffwd_dest_f64_replace_phi3056_double_add_219_out_dest_data_out_20_0)
    begin
        unique case (i_select57_double_add_220_s)
            1'b0 : i_select57_double_add_220_q = i_llvm_fpga_ffwd_dest_f64_spec_select14626_double_add_218_out_dest_data_out_6_0;
            1'b1 : i_select57_double_add_220_q = i_llvm_fpga_ffwd_dest_f64_replace_phi3056_double_add_219_out_dest_data_out_20_0;
            default : i_select57_double_add_220_q = 64'b0;
        endcase
    end

    // valid_fanout_reg12(REG,145)@33 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist2_sync_together129_in_i_valid_33_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_replace_phi2757_double_add_215(BLACKBOX,56)@34
    double_add_2_i_llvm_fpga_ffwd_dest_f64_replace_phi2757_0 thei_llvm_fpga_ffwd_dest_f64_replace_phi2757_double_add_215 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_f64_replace_phi2757_double_add_215_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,144)@33 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist2_sync_together129_in_i_valid_33_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14523_double_add_214(BLACKBOX,65)@34
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14523_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14523_double_add_214 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_f64_spec_select14523_double_add_214_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,143)@33 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist2_sync_together129_in_i_valid_33_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp31912_double_add_213(BLACKBOX,78)@34
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp31912_0 thei_llvm_fpga_ffwd_dest_i1_cmp31912_double_add_213 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp31912_double_add_213_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select61_double_add_216(MUX,99)@34
    assign i_select61_double_add_216_s = i_llvm_fpga_ffwd_dest_i1_cmp31912_double_add_213_out_dest_data_out_0_0;
    always @(i_select61_double_add_216_s or i_llvm_fpga_ffwd_dest_f64_spec_select14523_double_add_214_out_dest_data_out_5_0 or i_llvm_fpga_ffwd_dest_f64_replace_phi2757_double_add_215_out_dest_data_out_21_0)
    begin
        unique case (i_select61_double_add_216_s)
            1'b0 : i_select61_double_add_216_q = i_llvm_fpga_ffwd_dest_f64_spec_select14523_double_add_214_out_dest_data_out_5_0;
            1'b1 : i_select61_double_add_216_q = i_llvm_fpga_ffwd_dest_f64_replace_phi2757_double_add_215_out_dest_data_out_21_0;
            default : i_select61_double_add_216_q = 64'b0;
        endcase
    end

    // valid_fanout_reg9(REG,142)@22 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist1_sync_together129_in_i_valid_22_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_replace_phi2458_double_add_211(BLACKBOX,55)@23
    double_add_2_i_llvm_fpga_ffwd_dest_f64_replace_phi2458_0 thei_llvm_fpga_ffwd_dest_f64_replace_phi2458_double_add_211 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_f64_replace_phi2458_double_add_211_out_dest_data_out_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,141)@22 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together129_in_i_valid_22_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14420_double_add_210(BLACKBOX,64)@23
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14420_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14420_double_add_210 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_f64_spec_select14420_double_add_210_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,140)@22 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together129_in_i_valid_22_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp31913_double_add_29(BLACKBOX,79)@23
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp31913_0 thei_llvm_fpga_ffwd_dest_i1_cmp31913_double_add_29 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp31913_double_add_29_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select65_double_add_212(MUX,100)@23
    assign i_select65_double_add_212_s = i_llvm_fpga_ffwd_dest_i1_cmp31913_double_add_29_out_dest_data_out_0_0;
    always @(i_select65_double_add_212_s or i_llvm_fpga_ffwd_dest_f64_spec_select14420_double_add_210_out_dest_data_out_4_0 or i_llvm_fpga_ffwd_dest_f64_replace_phi2458_double_add_211_out_dest_data_out_22_0)
    begin
        unique case (i_select65_double_add_212_s)
            1'b0 : i_select65_double_add_212_q = i_llvm_fpga_ffwd_dest_f64_spec_select14420_double_add_210_out_dest_data_out_4_0;
            1'b1 : i_select65_double_add_212_q = i_llvm_fpga_ffwd_dest_f64_replace_phi2458_double_add_211_out_dest_data_out_22_0;
            default : i_select65_double_add_212_q = 64'b0;
        endcase
    end

    // valid_fanout_reg6(REG,139)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist0_sync_together129_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_replace_phi2159_double_add_27(BLACKBOX,54)@12
    double_add_2_i_llvm_fpga_ffwd_dest_f64_replace_phi2159_0 thei_llvm_fpga_ffwd_dest_f64_replace_phi2159_double_add_27 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_f64_replace_phi2159_double_add_27_out_dest_data_out_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,138)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist0_sync_together129_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_unnamed_double_add_216_double_add_26(BLACKBOX,75)@12
    double_add_2_i_llvm_fpga_ffwd_dest_f64_unnamed_16_double_add_20 thei_llvm_fpga_ffwd_dest_f64_unnamed_double_add_216_double_add_26 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_f64_unnamed_double_add_216_double_add_26_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,137)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist0_sync_together129_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp31914_double_add_25(BLACKBOX,80)@12
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp31914_0 thei_llvm_fpga_ffwd_dest_i1_cmp31914_double_add_25 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp31914_double_add_25_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select69_double_add_28(MUX,101)@12
    assign i_select69_double_add_28_s = i_llvm_fpga_ffwd_dest_i1_cmp31914_double_add_25_out_dest_data_out_0_0;
    always @(i_select69_double_add_28_s or i_llvm_fpga_ffwd_dest_f64_unnamed_double_add_216_double_add_26_out_dest_data_out_3_0 or i_llvm_fpga_ffwd_dest_f64_replace_phi2159_double_add_27_out_dest_data_out_23_0)
    begin
        unique case (i_select69_double_add_28_s)
            1'b0 : i_select69_double_add_28_q = i_llvm_fpga_ffwd_dest_f64_unnamed_double_add_216_double_add_26_out_dest_data_out_3_0;
            1'b1 : i_select69_double_add_28_q = i_llvm_fpga_ffwd_dest_f64_replace_phi2159_double_add_27_out_dest_data_out_23_0;
            default : i_select69_double_add_28_q = 64'b0;
        endcase
    end

    // c_double_0_000000e_00101(FLOATCONSTANT,2)
    assign c_double_0_000000e_00101_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg3(REG,136)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f64_replace_phi1960_double_add_23(BLACKBOX,53)@1
    double_add_2_i_llvm_fpga_ffwd_dest_f64_replace_phi1960_0 thei_llvm_fpga_ffwd_dest_f64_replace_phi1960_double_add_23 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_f64_replace_phi1960_double_add_23_out_dest_data_out_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,135)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f64_spec_select17_double_add_22(BLACKBOX,74)@1
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select17_0 thei_llvm_fpga_ffwd_dest_f64_spec_select17_double_add_22 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_f64_spec_select17_double_add_22_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,134)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp31915_double_add_21(BLACKBOX,81)@1
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp31915_0 thei_llvm_fpga_ffwd_dest_i1_cmp31915_double_add_21 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp31915_double_add_21_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select73_double_add_24(MUX,102)@1
    assign i_select73_double_add_24_s = i_llvm_fpga_ffwd_dest_i1_cmp31915_double_add_21_out_dest_data_out_0_0;
    always @(i_select73_double_add_24_s or i_llvm_fpga_ffwd_dest_f64_spec_select17_double_add_22_out_dest_data_out_2_0 or i_llvm_fpga_ffwd_dest_f64_replace_phi1960_double_add_23_out_dest_data_out_24_0)
    begin
        unique case (i_select73_double_add_24_s)
            1'b0 : i_select73_double_add_24_q = i_llvm_fpga_ffwd_dest_f64_spec_select17_double_add_22_out_dest_data_out_2_0;
            1'b1 : i_select73_double_add_24_q = i_llvm_fpga_ffwd_dest_f64_replace_phi1960_double_add_23_out_dest_data_out_24_0;
            default : i_select73_double_add_24_q = 64'b0;
        endcase
    end

    // i_add32_double_add_249(BLACKBOX,51)@1
    // out out_primWireOut@11
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_double_add_249 (
        .in_0(i_select73_double_add_24_q),
        .in_1(c_double_0_000000e_00101_q),
        .out_primWireOut(i_add32_double_add_249_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_add32_double_add_249_out_primWireOut_1(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_add32_double_add_249_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist12_i_add32_double_add_249_out_primWireOut_1_q <= $unsigned(i_add32_double_add_249_out_primWireOut);
        end
    end

    // i_add32_1_double_add_250(BLACKBOX,42)@12
    // out out_primWireOut@22
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_1_double_add_250 (
        .in_0(redist12_i_add32_double_add_249_out_primWireOut_1_q),
        .in_1(i_select69_double_add_28_q),
        .out_primWireOut(i_add32_1_double_add_250_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_add32_1_double_add_250_out_primWireOut_1(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_add32_1_double_add_250_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist21_i_add32_1_double_add_250_out_primWireOut_1_q <= $unsigned(i_add32_1_double_add_250_out_primWireOut);
        end
    end

    // i_add32_2_double_add_251(BLACKBOX,43)@23
    // out out_primWireOut@33
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_2_double_add_251 (
        .in_0(redist21_i_add32_1_double_add_250_out_primWireOut_1_q),
        .in_1(i_select65_double_add_212_q),
        .out_primWireOut(i_add32_2_double_add_251_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_add32_2_double_add_251_out_primWireOut_1(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_add32_2_double_add_251_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist20_i_add32_2_double_add_251_out_primWireOut_1_q <= $unsigned(i_add32_2_double_add_251_out_primWireOut);
        end
    end

    // i_add32_3_double_add_252(BLACKBOX,44)@34
    // out out_primWireOut@44
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_3_double_add_252 (
        .in_0(redist20_i_add32_2_double_add_251_out_primWireOut_1_q),
        .in_1(i_select61_double_add_216_q),
        .out_primWireOut(i_add32_3_double_add_252_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_add32_3_double_add_252_out_primWireOut_1(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_add32_3_double_add_252_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist19_i_add32_3_double_add_252_out_primWireOut_1_q <= $unsigned(i_add32_3_double_add_252_out_primWireOut);
        end
    end

    // i_add32_4_double_add_253(BLACKBOX,45)@45
    // out out_primWireOut@55
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_4_double_add_253 (
        .in_0(redist19_i_add32_3_double_add_252_out_primWireOut_1_q),
        .in_1(i_select57_double_add_220_q),
        .out_primWireOut(i_add32_4_double_add_253_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_add32_4_double_add_253_out_primWireOut_1(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_add32_4_double_add_253_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist18_i_add32_4_double_add_253_out_primWireOut_1_q <= $unsigned(i_add32_4_double_add_253_out_primWireOut);
        end
    end

    // i_add32_5_double_add_254(BLACKBOX,46)@56
    // out out_primWireOut@66
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_5_double_add_254 (
        .in_0(redist18_i_add32_4_double_add_253_out_primWireOut_1_q),
        .in_1(i_select53_double_add_224_q),
        .out_primWireOut(i_add32_5_double_add_254_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_add32_5_double_add_254_out_primWireOut_1(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_add32_5_double_add_254_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist17_i_add32_5_double_add_254_out_primWireOut_1_q <= $unsigned(i_add32_5_double_add_254_out_primWireOut);
        end
    end

    // i_add32_6_double_add_255(BLACKBOX,47)@67
    // out out_primWireOut@77
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_6_double_add_255 (
        .in_0(redist17_i_add32_5_double_add_254_out_primWireOut_1_q),
        .in_1(i_select49_double_add_228_q),
        .out_primWireOut(i_add32_6_double_add_255_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_add32_6_double_add_255_out_primWireOut_1(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_add32_6_double_add_255_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist16_i_add32_6_double_add_255_out_primWireOut_1_q <= $unsigned(i_add32_6_double_add_255_out_primWireOut);
        end
    end

    // i_add32_7_double_add_256(BLACKBOX,48)@78
    // out out_primWireOut@88
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_7_double_add_256 (
        .in_0(redist16_i_add32_6_double_add_255_out_primWireOut_1_q),
        .in_1(i_select45_double_add_232_q),
        .out_primWireOut(i_add32_7_double_add_256_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_add32_7_double_add_256_out_primWireOut_1(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_add32_7_double_add_256_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist15_i_add32_7_double_add_256_out_primWireOut_1_q <= $unsigned(i_add32_7_double_add_256_out_primWireOut);
        end
    end

    // i_add32_8_double_add_257(BLACKBOX,49)@89
    // out out_primWireOut@99
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_8_double_add_257 (
        .in_0(redist15_i_add32_7_double_add_256_out_primWireOut_1_q),
        .in_1(i_select41_double_add_236_q),
        .out_primWireOut(i_add32_8_double_add_257_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_add32_8_double_add_257_out_primWireOut_1(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_add32_8_double_add_257_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist14_i_add32_8_double_add_257_out_primWireOut_1_q <= $unsigned(i_add32_8_double_add_257_out_primWireOut);
        end
    end

    // i_add32_9_double_add_258(BLACKBOX,50)@100
    // out out_primWireOut@110
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_9_double_add_258 (
        .in_0(redist14_i_add32_8_double_add_257_out_primWireOut_1_q),
        .in_1(i_select37_double_add_240_q),
        .out_primWireOut(i_add32_9_double_add_258_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_add32_9_double_add_258_out_primWireOut_1(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_add32_9_double_add_258_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist13_i_add32_9_double_add_258_out_primWireOut_1_q <= $unsigned(i_add32_9_double_add_258_out_primWireOut);
        end
    end

    // i_add32_10_double_add_259(BLACKBOX,40)@111
    // out out_primWireOut@121
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_10_double_add_259 (
        .in_0(redist13_i_add32_9_double_add_258_out_primWireOut_1_q),
        .in_1(i_select33_double_add_244_q),
        .out_primWireOut(i_add32_10_double_add_259_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_add32_10_double_add_259_out_primWireOut_1(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_add32_10_double_add_259_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist22_i_add32_10_double_add_259_out_primWireOut_1_q <= $unsigned(i_add32_10_double_add_259_out_primWireOut);
        end
    end

    // i_add32_11_double_add_260(BLACKBOX,41)@122
    // out out_primWireOut@132
    double_add_2_flt_i_sfc_logic_s_c0_in_for00000j0ucqp00j0ocqd0j60z thei_add32_11_double_add_260 (
        .in_0(redist22_i_add32_10_double_add_259_out_primWireOut_1_q),
        .in_1(i_select_double_add_248_q),
        .out_primWireOut(i_add32_11_double_add_260_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,132)@132
    assign out_c0_exi2103_0_tpl = GND_q;
    assign out_c0_exi2103_1_tpl = i_add32_11_double_add_260_out_primWireOut;
    assign out_c0_exi2103_2_tpl = i_llvm_fpga_sync_buffer_p1024f64_result_sync_buffer_double_add_261_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_double_add_214 = GND_q;

endmodule
