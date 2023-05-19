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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c1_in_for_body8_s_c1_enter_conv2d1x10
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c1_in_for_body8_s_c1_enter_conv2d1x10 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x18,
    input wire [0:0] in_c1_eni9_0_tpl,
    input wire [31:0] in_c1_eni9_0_1_tpl,
    input wire [31:0] in_c1_eni9_1_1_tpl,
    input wire [31:0] in_c1_eni9_2_1_tpl,
    input wire [31:0] in_c1_eni9_3_1_tpl,
    input wire [31:0] in_c1_eni9_2_tpl,
    input wire [31:0] in_c1_eni9_3_tpl,
    input wire [31:0] in_c1_eni9_4_tpl,
    input wire [31:0] in_c1_eni9_5_tpl,
    input wire [31:0] in_c1_eni9_6_tpl,
    input wire [0:0] in_c1_eni9_7_tpl,
    input wire [0:0] in_c1_eni9_8_tpl,
    input wire [0:0] in_c1_eni9_9_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_add47_conv2d1x118_out_primWireOut;
    wire [31:0] i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_f32_tmp_046_pop22_conv2d1x117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_tmp_046_pop22_conv2d1x117_out_feedback_stall_out_22;
    wire [31:0] i_llvm_fpga_push_f32_lm43_push30_conv2d1x121_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_f32_lm43_push30_conv2d1x121_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_f32_tmp_046_push22_conv2d1x119_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_f32_tmp_046_push22_conv2d1x119_out_feedback_valid_out_22;
    wire [0:0] i_tmp_0_lcssa_select_conv2d1x122_s;
    reg [31:0] i_tmp_0_lcssa_select_conv2d1x122_q;
    wire [31:0] i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod55_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut;
    wire [31:0] i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    reg [31:0] redist0_sync_together33_aunroll_vunroll_x_in_c1_eni9_1_1_tpl_1_q;
    reg [31:0] redist3_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_tpl_1_q;
    reg [0:0] redist7_sync_together33_aunroll_vunroll_x_in_c1_eni9_7_tpl_11_q;
    reg [0:0] redist8_sync_together33_aunroll_vunroll_x_in_c1_eni9_8_tpl_14_q;
    reg [0:0] redist9_sync_together33_aunroll_vunroll_x_in_c1_eni9_9_tpl_14_q;
    reg [0:0] redist10_sync_together33_aunroll_vunroll_x_in_i_valid_10_q;
    reg [0:0] redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_q;
    reg [0:0] redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_delay_0;
    reg [0:0] redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_delay_1;
    reg [31:0] redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_q;
    reg [31:0] redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_delay_0;
    reg [31:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_outputreg0_q;
    wire redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_reset0;
    wire [31:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_ia;
    wire [0:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_aa;
    wire [0:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_ab;
    wire [31:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_iq;
    wire [31:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_q;
    wire [0:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_rdcnt_i;
    reg [0:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_cmpReg_q;
    wire [0:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_notEnable_q;
    wire [0:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_sticky_ena_q;
    wire [0:0] redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_enaAnd_q;
    wire redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_reset0;
    wire [31:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_ia;
    wire [2:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_aa;
    wire [2:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_ab;
    wire [31:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_iq;
    wire [31:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_q;
    wire [2:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_i;
    (* preserve *) reg redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_eq;
    reg [2:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_wraddr_q;
    wire [3:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_last_q;
    wire [3:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmp_b;
    wire [0:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmpReg_q;
    wire [0:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_notEnable_q;
    wire [0:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_sticky_ena_q;
    wire [0:0] redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_enaAnd_q;
    wire redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_reset0;
    wire [31:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_ia;
    wire [2:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_aa;
    wire [2:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_ab;
    wire [31:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_iq;
    wire [31:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_q;
    wire [2:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_i;
    (* preserve *) reg redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_eq;
    reg [2:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_wraddr_q;
    wire [3:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_last_q;
    wire [3:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmp_b;
    wire [0:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmpReg_q;
    wire [0:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_notEnable_q;
    wire [0:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_sticky_ena_q;
    wire [0:0] redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_enaAnd_q;
    reg [31:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_outputreg0_q;
    wire redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_reset0;
    wire [31:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_ia;
    wire [0:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_aa;
    wire [0:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_ab;
    wire [31:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_iq;
    wire [31:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_q;
    wire [0:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_rdcnt_i;
    reg [0:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_cmpReg_q;
    wire [0:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_notEnable_q;
    wire [0:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_sticky_ena_q;
    wire [0:0] redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_enaAnd_q;
    reg [31:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_outputreg0_q;
    wire redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_reset0;
    wire [31:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_ia;
    wire [3:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_aa;
    wire [3:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_ab;
    wire [31:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_iq;
    wire [31:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_q;
    wire [3:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_q;
    (* preserve *) reg [3:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_i;
    (* preserve *) reg redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_eq;
    reg [3:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_wraddr_q;
    wire [3:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_last_q;
    wire [0:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_cmpReg_q;
    wire [0:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_notEnable_q;
    wire [0:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_sticky_ena_q;
    wire [0:0] redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_enaAnd_q;
    reg [31:0] redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist10_sync_together33_aunroll_vunroll_x_in_i_valid_10(DELAY,32)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together33_aunroll_vunroll_x_in_i_valid_10 ( .xin(in_i_valid), .xout(redist10_sync_together33_aunroll_vunroll_x_in_i_valid_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13(DELAY,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_delay_0 <= '0;
            redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_delay_1 <= '0;
            redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_q <= '0;
        end
        else
        begin
            redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_delay_0 <= $unsigned(redist10_sync_together33_aunroll_vunroll_x_in_i_valid_10_q);
            redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_delay_1 <= redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_delay_0;
            redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_q <= redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_delay_1;
        end
    end

    // valid_fanout_reg0(REG,17)@151 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_q);
        end
    end

    // redist0_sync_together33_aunroll_vunroll_x_in_c1_eni9_1_1_tpl_1(DELAY,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together33_aunroll_vunroll_x_in_c1_eni9_1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together33_aunroll_vunroll_x_in_c1_eni9_1_1_tpl_1_q <= $unsigned(in_c1_eni9_1_1_tpl);
        end
    end

    // redist3_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_tpl_1(DELAY,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_tpl_1_q <= $unsigned(in_c1_eni9_2_tpl);
        end
    end

    // i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x(BLACKBOX,14)@138
    // in in_0@139
    // in in_1@139
    // out out_primWireOut@143
    conv2d1x1_flt_i_llvm_fpga_dot_product_f30001q0cp0jv24cp06c00qfzo thei_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x (
        .in_0(redist3_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_tpl_1_q),
        .in_1(redist0_sync_together33_aunroll_vunroll_x_in_c1_eni9_1_1_tpl_1_q),
        .in_2(in_c1_eni9_3_tpl),
        .in_3(in_c1_eni9_0_1_tpl),
        .out_primWireOut(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_notEnable(LOGICAL,69)
    assign redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_nor(LOGICAL,70)
    assign redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_nor_q = ~ (redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_notEnable_q | redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_sticky_ena_q);

    // redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_cmpReg(REG,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_sticky_ena(REG,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_nor_q == 1'b1)
        begin
            redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_sticky_ena_q <= $unsigned(redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_cmpReg_q);
        end
    end

    // redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_enaAnd(LOGICAL,72)
    assign redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_enaAnd_q = redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_sticky_ena_q & VCC_q;

    // redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_rdcnt(COUNTER,66)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_rdcnt_i <= $unsigned(redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_rdcnt_q = redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_rdcnt_i[0:0];

    // redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_wraddr(REG,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_wraddr_q <= $unsigned(redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_rdcnt_q);
        end
    end

    // redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem(DUALMEM,65)
    assign redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_ia = $unsigned(in_c1_eni9_5_tpl);
    assign redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_aa = redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_wraddr_q;
    assign redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_ab = redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_rdcnt_q;
    assign redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_dmem (
        .clocken1(redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_aa),
        .data_a(redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_ab),
        .q_b(redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_q = redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_iq[31:0];

    // redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_outputreg0(DELAY,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_outputreg0_q <= $unsigned(redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_mem_q);
        end
    end

    // redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_notEnable(LOGICAL,40)
    assign redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_nor(LOGICAL,41)
    assign redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_nor_q = ~ (redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_notEnable_q | redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_sticky_ena_q);

    // redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_cmpReg(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_sticky_ena(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_nor_q == 1'b1)
        begin
            redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_sticky_ena_q <= $unsigned(redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_cmpReg_q);
        end
    end

    // redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_enaAnd(LOGICAL,43)
    assign redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_enaAnd_q = redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_sticky_ena_q & VCC_q;

    // redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_rdcnt(COUNTER,37)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_rdcnt_i <= $unsigned(redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_rdcnt_q = redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_rdcnt_i[0:0];

    // redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_wraddr(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_wraddr_q <= $unsigned(redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_rdcnt_q);
        end
    end

    // redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem(DUALMEM,36)
    assign redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_ia = $unsigned(in_c1_eni9_2_1_tpl);
    assign redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_aa = redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_wraddr_q;
    assign redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_ab = redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_rdcnt_q;
    assign redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_dmem (
        .clocken1(redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_aa),
        .data_a(redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_ab),
        .q_b(redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_q = redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_iq[31:0];

    // redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_outputreg0(DELAY,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_outputreg0_q <= $unsigned(redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_mem_q);
        end
    end

    // redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_notEnable(LOGICAL,60)
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_nor(LOGICAL,61)
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_nor_q = ~ (redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_notEnable_q | redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_sticky_ena_q);

    // redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_last(CONSTANT,57)
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmp(LOGICAL,58)
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmp_b = {1'b0, redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_q};
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmp_q = $unsigned(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_last_q == redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmpReg(REG,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmpReg_q <= $unsigned(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmp_q);
        end
    end

    // redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_sticky_ena(REG,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_nor_q == 1'b1)
        begin
            redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_sticky_ena_q <= $unsigned(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_cmpReg_q);
        end
    end

    // redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_enaAnd(LOGICAL,63)
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_enaAnd_q = redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_sticky_ena_q & VCC_q;

    // redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt(COUNTER,55)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_i <= 3'd0;
            redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_i == 3'd4)
            begin
                redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_i <= $unsigned(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_i <= $unsigned(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_q = redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_i[2:0];

    // redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_wraddr(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_wraddr_q <= $unsigned(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_q);
        end
    end

    // redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem(DUALMEM,54)
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_ia = $unsigned(in_c1_eni9_4_tpl);
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_aa = redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_wraddr_q;
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_ab = redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_rdcnt_q;
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_dmem (
        .clocken1(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_aa),
        .data_a(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_ab),
        .q_b(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_q = redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_iq[31:0];

    // redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_notEnable(LOGICAL,50)
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_nor(LOGICAL,51)
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_nor_q = ~ (redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_notEnable_q | redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_sticky_ena_q);

    // redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_last(CONSTANT,47)
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmp(LOGICAL,48)
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmp_b = {1'b0, redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_q};
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmp_q = $unsigned(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_last_q == redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmpReg(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmpReg_q <= $unsigned(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmp_q);
        end
    end

    // redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_sticky_ena(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_nor_q == 1'b1)
        begin
            redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_sticky_ena_q <= $unsigned(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_cmpReg_q);
        end
    end

    // redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_enaAnd(LOGICAL,53)
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_enaAnd_q = redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_sticky_ena_q & VCC_q;

    // redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt(COUNTER,45)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_i <= 3'd0;
            redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_i == 3'd4)
            begin
                redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_i <= $unsigned(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_i <= $unsigned(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_q = redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_i[2:0];

    // redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_wraddr(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_wraddr_q <= $unsigned(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_q);
        end
    end

    // redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem(DUALMEM,44)
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_ia = $unsigned(in_c1_eni9_3_1_tpl);
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_aa = redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_wraddr_q;
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_ab = redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_rdcnt_q;
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_dmem (
        .clocken1(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_aa),
        .data_a(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_ab),
        .q_b(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_q = redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_iq[31:0];

    // i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod55_conv2d1x10_dspb_native_dot_product_vunroll_x(BLACKBOX,13)@142
    // in in_0@145
    // in in_1@145
    // in in_scalarProductPortChainin@143
    // out out_primWireOut@149
    conv2d1x1_flt_i_llvm_fpga_dot_product_f30000q0cp0jv24cp06c00qfzo thei_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod55_conv2d1x10_dspb_native_dot_product_vunroll_x (
        .in_0(redist2_sync_together33_aunroll_vunroll_x_in_c1_eni9_3_1_tpl_7_mem_q),
        .in_1(redist4_sync_together33_aunroll_vunroll_x_in_c1_eni9_4_tpl_7_mem_q),
        .in_2(redist1_sync_together33_aunroll_vunroll_x_in_c1_eni9_2_1_tpl_4_outputreg0_q),
        .in_3(redist5_sync_together33_aunroll_vunroll_x_in_c1_eni9_5_tpl_4_outputreg0_q),
        .in_scalarProductPortChainin(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .out_primWireOut(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod55_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,18)@148 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist10_sync_together33_aunroll_vunroll_x_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg2(REG,19)@151 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_q);
        end
    end

    // redist8_sync_together33_aunroll_vunroll_x_in_c1_eni9_8_tpl_14(DELAY,30)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together33_aunroll_vunroll_x_in_c1_eni9_8_tpl_14 ( .xin(in_c1_eni9_8_tpl), .xout(redist8_sync_together33_aunroll_vunroll_x_in_c1_eni9_8_tpl_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_f32_tmp_046_push22_conv2d1x119(BLACKBOX,10)@152
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    conv2d1x1_i_llvm_fpga_push_f32_tmp_046_push22_0 thei_llvm_fpga_push_f32_tmp_046_push22_conv2d1x119 (
        .in_c1_ene8(redist8_sync_together33_aunroll_vunroll_x_in_c1_eni9_8_tpl_14_q),
        .in_data_in(i_add47_conv2d1x118_out_primWireOut),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_f32_tmp_046_pop22_conv2d1x117_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_f32_tmp_046_push22_conv2d1x119_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_f32_tmp_046_push22_conv2d1x119_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together33_aunroll_vunroll_x_in_c1_eni9_7_tpl_11(DELAY,29)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together33_aunroll_vunroll_x_in_c1_eni9_7_tpl_11 ( .xin(in_c1_eni9_7_tpl), .xout(redist7_sync_together33_aunroll_vunroll_x_in_c1_eni9_7_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_notEnable(LOGICAL,80)
    assign redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_nor(LOGICAL,81)
    assign redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_nor_q = ~ (redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_notEnable_q | redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_sticky_ena_q);

    // redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_last(CONSTANT,77)
    assign redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_last_q = $unsigned(4'b0111);

    // redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_cmp(LOGICAL,78)
    assign redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_cmp_q = $unsigned(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_last_q == redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_q ? 1'b1 : 1'b0);

    // redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_cmpReg(REG,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_cmpReg_q <= $unsigned(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_cmp_q);
        end
    end

    // redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_sticky_ena(REG,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_nor_q == 1'b1)
        begin
            redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_sticky_ena_q <= $unsigned(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_cmpReg_q);
        end
    end

    // redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_enaAnd(LOGICAL,83)
    assign redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_enaAnd_q = redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_sticky_ena_q & VCC_q;

    // redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt(COUNTER,75)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_i <= 4'd0;
            redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_i == 4'd7)
            begin
                redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_eq <= 1'b0;
            end
            if (redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_eq == 1'b1)
            begin
                redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_i <= $unsigned(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_i <= $unsigned(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_q = redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_i[3:0];

    // redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_wraddr(REG,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_wraddr_q <= $unsigned(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_q);
        end
    end

    // redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem(DUALMEM,74)
    assign redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_ia = $unsigned(in_c1_eni9_6_tpl);
    assign redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_aa = redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_wraddr_q;
    assign redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_ab = redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_rdcnt_q;
    assign redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(9),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(9),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_dmem (
        .clocken1(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_aa),
        .data_a(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_ab),
        .q_b(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_q = redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_iq[31:0];

    // redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_outputreg0(DELAY,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_outputreg0_q <= '0;
        end
        else
        begin
            redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_outputreg0_q <= $unsigned(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_mem_q);
        end
    end

    // i_llvm_fpga_pop_f32_tmp_046_pop22_conv2d1x117(BLACKBOX,8)@149
    // out out_feedback_stall_out_22@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_tmp_046_pop22_0 thei_llvm_fpga_pop_f32_tmp_046_pop22_conv2d1x117 (
        .in_data_in(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_outputreg0_q),
        .in_dir(redist7_sync_together33_aunroll_vunroll_x_in_c1_eni9_7_tpl_11_q),
        .in_feedback_in_22(i_llvm_fpga_push_f32_tmp_046_push22_conv2d1x119_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_f32_tmp_046_push22_conv2d1x119_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_f32_tmp_046_pop22_conv2d1x117_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_f32_tmp_046_pop22_conv2d1x117_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add47_conv2d1x118(BLACKBOX,6)@149
    // out out_primWireOut@152
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo00003a0054c2a6344c246w65 thei_add47_conv2d1x118 (
        .in_0(i_llvm_fpga_pop_f32_tmp_046_pop22_conv2d1x117_out_data_out),
        .in_1(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod55_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .out_primWireOut(i_add47_conv2d1x118_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,20)@148 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist10_sync_together33_aunroll_vunroll_x_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg4(REG,21)@151 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist11_sync_together33_aunroll_vunroll_x_in_i_valid_13_q);
        end
    end

    // i_llvm_fpga_push_f32_lm43_push30_conv2d1x121(BLACKBOX,9)@152
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    conv2d1x1_i_llvm_fpga_push_f32_lm43_push30_0 thei_llvm_fpga_push_f32_lm43_push30_conv2d1x121 (
        .in_c1_ene8(redist8_sync_together33_aunroll_vunroll_x_in_c1_eni9_8_tpl_14_q),
        .in_data_in(redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_outputreg0_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_feedback_stall_out_30),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_f32_lm43_push30_conv2d1x121_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_f32_lm43_push30_conv2d1x121_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120(BLACKBOX,7)@149
    // out out_feedback_stall_out_30@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_lm43_pop30_0 thei_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120 (
        .in_data_in(redist6_sync_together33_aunroll_vunroll_x_in_c1_eni9_6_tpl_11_outputreg0_q),
        .in_dir(redist7_sync_together33_aunroll_vunroll_x_in_c1_eni9_7_tpl_11_q),
        .in_feedback_in_30(i_llvm_fpga_push_f32_lm43_push30_conv2d1x121_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_f32_lm43_push30_conv2d1x121_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3(DELAY,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_delay_0 <= '0;
            redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out);
            redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_q <= redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_delay_0;
        end
    end

    // redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_outputreg0(DELAY,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_outputreg0_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_outputreg0_q <= $unsigned(redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_q);
        end
    end

    // redist9_sync_together33_aunroll_vunroll_x_in_c1_eni9_9_tpl_14(DELAY,31)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together33_aunroll_vunroll_x_in_c1_eni9_9_tpl_14 ( .xin(in_c1_eni9_9_tpl), .xout(redist9_sync_together33_aunroll_vunroll_x_in_c1_eni9_9_tpl_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_tmp_0_lcssa_select_conv2d1x122(MUX,11)@152
    assign i_tmp_0_lcssa_select_conv2d1x122_s = redist9_sync_together33_aunroll_vunroll_x_in_c1_eni9_9_tpl_14_q;
    always @(i_tmp_0_lcssa_select_conv2d1x122_s or redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_outputreg0_q or i_add47_conv2d1x118_out_primWireOut)
    begin
        unique case (i_tmp_0_lcssa_select_conv2d1x122_s)
            1'b0 : i_tmp_0_lcssa_select_conv2d1x122_q = redist12_i_llvm_fpga_pop_f32_lm43_pop30_conv2d1x120_out_data_out_3_outputreg0_q;
            1'b1 : i_tmp_0_lcssa_select_conv2d1x122_q = i_add47_conv2d1x118_out_primWireOut;
            default : i_tmp_0_lcssa_select_conv2d1x122_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,15)@152
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_tmp_0_lcssa_select_conv2d1x122_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x18 = GND_q;

endmodule
