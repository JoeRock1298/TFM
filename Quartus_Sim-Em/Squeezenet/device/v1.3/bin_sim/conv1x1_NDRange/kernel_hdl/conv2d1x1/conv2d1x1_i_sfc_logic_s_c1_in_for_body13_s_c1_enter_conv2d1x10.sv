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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c1_in_for_body13_s_c1_enter_conv2d1x10
// SystemVerilog created on Wed May 17 11:22:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c1_in_for_body13_s_c1_enter_conv2d1x10 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x11,
    input wire [0:0] in_c1_eni8_0_tpl,
    input wire [31:0] in_c1_eni8_0_1_tpl,
    input wire [31:0] in_c1_eni8_1_1_tpl,
    input wire [31:0] in_c1_eni8_2_1_tpl,
    input wire [31:0] in_c1_eni8_3_1_tpl,
    input wire [31:0] in_c1_eni8_2_tpl,
    input wire [31:0] in_c1_eni8_3_tpl,
    input wire [31:0] in_c1_eni8_4_tpl,
    input wire [31:0] in_c1_eni8_5_tpl,
    input wire [31:0] in_c1_eni8_6_tpl,
    input wire [0:0] in_c1_eni8_7_tpl,
    input wire [31:0] in_c1_eni8_8_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_add53_conv2d1x117_out_primWireOut;
    wire [0:0] i_tmp_0_lcssa_sel_conv2d1x118_s;
    reg [31:0] i_tmp_0_lcssa_sel_conv2d1x118_q;
    wire [31:0] i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod16_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut;
    wire [31:0] i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut;
    reg [31:0] redist0_sync_together22_aunroll_vunroll_x_in_c1_eni8_1_1_tpl_1_q;
    reg [31:0] redist3_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_tpl_1_q;
    reg [0:0] redist7_sync_together22_aunroll_vunroll_x_in_c1_eni8_7_tpl_14_q;
    reg [0:0] redist9_sync_together22_aunroll_vunroll_x_in_i_valid_14_q;
    reg [31:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_outputreg0_q;
    wire redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_reset0;
    wire [31:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_ia;
    wire [0:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_aa;
    wire [0:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_ab;
    wire [31:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_iq;
    wire [31:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_q;
    wire [0:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_rdcnt_i;
    reg [0:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_cmpReg_q;
    wire [0:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_notEnable_q;
    wire [0:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_sticky_ena_q;
    wire [0:0] redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_enaAnd_q;
    wire redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_reset0;
    wire [31:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_ia;
    wire [2:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_aa;
    wire [2:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_ab;
    wire [31:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_iq;
    wire [31:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_q;
    wire [2:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_i;
    (* preserve *) reg redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_eq;
    reg [2:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_wraddr_q;
    wire [3:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_last_q;
    wire [3:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmp_b;
    wire [0:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmpReg_q;
    wire [0:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_notEnable_q;
    wire [0:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_sticky_ena_q;
    wire [0:0] redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_enaAnd_q;
    wire redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_reset0;
    wire [31:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_ia;
    wire [2:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_aa;
    wire [2:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_ab;
    wire [31:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_iq;
    wire [31:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_q;
    wire [2:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_i;
    (* preserve *) reg redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_eq;
    reg [2:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_wraddr_q;
    wire [3:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_last_q;
    wire [3:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmp_b;
    wire [0:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmpReg_q;
    wire [0:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_notEnable_q;
    wire [0:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_sticky_ena_q;
    wire [0:0] redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_enaAnd_q;
    reg [31:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_outputreg0_q;
    wire redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_reset0;
    wire [31:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_ia;
    wire [0:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_aa;
    wire [0:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_ab;
    wire [31:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_iq;
    wire [31:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_q;
    wire [0:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_rdcnt_i;
    reg [0:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_cmpReg_q;
    wire [0:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_notEnable_q;
    wire [0:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_sticky_ena_q;
    wire [0:0] redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_enaAnd_q;
    reg [31:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_outputreg0_q;
    wire redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_reset0;
    wire [31:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_ia;
    wire [3:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_aa;
    wire [3:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_ab;
    wire [31:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_iq;
    wire [31:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_q;
    wire [3:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_q;
    (* preserve *) reg [3:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_i;
    (* preserve *) reg redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_eq;
    reg [3:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_wraddr_q;
    wire [3:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_last_q;
    wire [0:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_cmpReg_q;
    wire [0:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_notEnable_q;
    wire [0:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_sticky_ena_q;
    wire [0:0] redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_enaAnd_q;
    reg [31:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_outputreg0_q;
    wire redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_reset0;
    wire [31:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_ia;
    wire [3:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_aa;
    wire [3:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_ab;
    wire [31:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_iq;
    wire [31:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_q;
    wire [3:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_q;
    (* preserve *) reg [3:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_i;
    (* preserve *) reg redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_eq;
    reg [3:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_wraddr_q;
    wire [4:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_last_q;
    wire [4:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmp_b;
    wire [0:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmp_q;
    (* dont_merge *) reg [0:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmpReg_q;
    wire [0:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_notEnable_q;
    wire [0:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_sticky_ena_q;
    wire [0:0] redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist9_sync_together22_aunroll_vunroll_x_in_i_valid_14(DELAY,19)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together22_aunroll_vunroll_x_in_i_valid_14 ( .xin(in_i_valid), .xout(redist9_sync_together22_aunroll_vunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist0_sync_together22_aunroll_vunroll_x_in_c1_eni8_1_1_tpl_1(DELAY,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together22_aunroll_vunroll_x_in_c1_eni8_1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together22_aunroll_vunroll_x_in_c1_eni8_1_1_tpl_1_q <= $unsigned(in_c1_eni8_1_1_tpl);
        end
    end

    // redist3_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_tpl_1(DELAY,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_tpl_1_q <= $unsigned(in_c1_eni8_2_tpl);
        end
    end

    // i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x(BLACKBOX,7)@137
    // in in_0@138
    // in in_1@138
    // out out_primWireOut@142
    conv2d1x1_flt_i_llvm_fpga_dot_product_f30001q0cp0jv24cp06c00qfzo thei_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x (
        .in_0(redist3_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_tpl_1_q),
        .in_1(redist0_sync_together22_aunroll_vunroll_x_in_c1_eni8_1_1_tpl_1_q),
        .in_2(in_c1_eni8_3_tpl),
        .in_3(in_c1_eni8_0_1_tpl),
        .out_primWireOut(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_notEnable(LOGICAL,54)
    assign redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_nor(LOGICAL,55)
    assign redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_nor_q = ~ (redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_notEnable_q | redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_sticky_ena_q);

    // redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_cmpReg(REG,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_sticky_ena(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_nor_q == 1'b1)
        begin
            redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_sticky_ena_q <= $unsigned(redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_cmpReg_q);
        end
    end

    // redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_enaAnd(LOGICAL,57)
    assign redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_enaAnd_q = redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_sticky_ena_q & VCC_q;

    // redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_rdcnt(COUNTER,51)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_rdcnt_i <= $unsigned(redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_rdcnt_q = redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_rdcnt_i[0:0];

    // redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_wraddr(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_wraddr_q <= $unsigned(redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_rdcnt_q);
        end
    end

    // redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem(DUALMEM,50)
    assign redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_ia = $unsigned(in_c1_eni8_5_tpl);
    assign redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_aa = redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_wraddr_q;
    assign redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_ab = redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_rdcnt_q;
    assign redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_dmem (
        .clocken1(redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_aa),
        .data_a(redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_ab),
        .q_b(redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_iq),
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
    assign redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_q = redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_iq[31:0];

    // redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_outputreg0(DELAY,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_outputreg0_q <= $unsigned(redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_mem_q);
        end
    end

    // redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_notEnable(LOGICAL,25)
    assign redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_nor(LOGICAL,26)
    assign redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_nor_q = ~ (redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_notEnable_q | redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_sticky_ena_q);

    // redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_cmpReg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_sticky_ena(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_nor_q == 1'b1)
        begin
            redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_sticky_ena_q <= $unsigned(redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_cmpReg_q);
        end
    end

    // redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_enaAnd(LOGICAL,28)
    assign redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_enaAnd_q = redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_sticky_ena_q & VCC_q;

    // redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_rdcnt(COUNTER,22)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_rdcnt_i <= $unsigned(redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_rdcnt_q = redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_rdcnt_i[0:0];

    // redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_wraddr(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_wraddr_q <= $unsigned(redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_rdcnt_q);
        end
    end

    // redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem(DUALMEM,21)
    assign redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_ia = $unsigned(in_c1_eni8_2_1_tpl);
    assign redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_aa = redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_wraddr_q;
    assign redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_ab = redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_rdcnt_q;
    assign redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_dmem (
        .clocken1(redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_aa),
        .data_a(redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_ab),
        .q_b(redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_iq),
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
    assign redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_q = redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_iq[31:0];

    // redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_outputreg0(DELAY,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_outputreg0_q <= $unsigned(redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_mem_q);
        end
    end

    // redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_notEnable(LOGICAL,45)
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_nor(LOGICAL,46)
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_nor_q = ~ (redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_notEnable_q | redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_sticky_ena_q);

    // redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_last(CONSTANT,42)
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmp(LOGICAL,43)
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmp_b = {1'b0, redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_q};
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmp_q = $unsigned(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_last_q == redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmpReg(REG,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmpReg_q <= $unsigned(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmp_q);
        end
    end

    // redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_sticky_ena(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_nor_q == 1'b1)
        begin
            redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_sticky_ena_q <= $unsigned(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_cmpReg_q);
        end
    end

    // redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_enaAnd(LOGICAL,48)
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_enaAnd_q = redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_sticky_ena_q & VCC_q;

    // redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt(COUNTER,40)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_i <= 3'd0;
            redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_i == 3'd4)
            begin
                redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_i <= $unsigned(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_i <= $unsigned(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_q = redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_i[2:0];

    // redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_wraddr(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_wraddr_q <= $unsigned(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_q);
        end
    end

    // redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem(DUALMEM,39)
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_ia = $unsigned(in_c1_eni8_4_tpl);
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_aa = redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_wraddr_q;
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_ab = redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_rdcnt_q;
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_reset0 = ~ (resetn);
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
    ) redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_dmem (
        .clocken1(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_aa),
        .data_a(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_ab),
        .q_b(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_iq),
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
    assign redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_q = redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_iq[31:0];

    // redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_notEnable(LOGICAL,35)
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_nor(LOGICAL,36)
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_nor_q = ~ (redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_notEnable_q | redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_sticky_ena_q);

    // redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_last(CONSTANT,32)
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmp(LOGICAL,33)
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmp_b = {1'b0, redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_q};
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmp_q = $unsigned(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_last_q == redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmpReg(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmpReg_q <= $unsigned(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmp_q);
        end
    end

    // redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_sticky_ena(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_nor_q == 1'b1)
        begin
            redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_sticky_ena_q <= $unsigned(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_cmpReg_q);
        end
    end

    // redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_enaAnd(LOGICAL,38)
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_enaAnd_q = redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_sticky_ena_q & VCC_q;

    // redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt(COUNTER,30)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_i <= 3'd0;
            redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_i == 3'd4)
            begin
                redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_i <= $unsigned(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_i <= $unsigned(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_q = redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_i[2:0];

    // redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_wraddr(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_wraddr_q <= $unsigned(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_q);
        end
    end

    // redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem(DUALMEM,29)
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_ia = $unsigned(in_c1_eni8_3_1_tpl);
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_aa = redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_wraddr_q;
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_ab = redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_rdcnt_q;
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_reset0 = ~ (resetn);
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
    ) redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_dmem (
        .clocken1(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_aa),
        .data_a(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_ab),
        .q_b(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_iq),
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
    assign redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_q = redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_iq[31:0];

    // i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod16_conv2d1x10_dspb_native_dot_product_vunroll_x(BLACKBOX,6)@141
    // in in_0@144
    // in in_1@144
    // in in_scalarProductPortChainin@142
    // out out_primWireOut@148
    conv2d1x1_flt_i_llvm_fpga_dot_product_f30000q0cp0jv24cp06c00qfzo thei_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod16_conv2d1x10_dspb_native_dot_product_vunroll_x (
        .in_0(redist2_sync_together22_aunroll_vunroll_x_in_c1_eni8_3_1_tpl_7_mem_q),
        .in_1(redist4_sync_together22_aunroll_vunroll_x_in_c1_eni8_4_tpl_7_mem_q),
        .in_2(redist1_sync_together22_aunroll_vunroll_x_in_c1_eni8_2_1_tpl_4_outputreg0_q),
        .in_3(redist5_sync_together22_aunroll_vunroll_x_in_c1_eni8_5_tpl_4_outputreg0_q),
        .in_scalarProductPortChainin(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .out_primWireOut(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod16_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_notEnable(LOGICAL,65)
    assign redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_nor(LOGICAL,66)
    assign redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_nor_q = ~ (redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_notEnable_q | redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_sticky_ena_q);

    // redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_last(CONSTANT,62)
    assign redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_last_q = $unsigned(4'b0111);

    // redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_cmp(LOGICAL,63)
    assign redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_cmp_q = $unsigned(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_last_q == redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_q ? 1'b1 : 1'b0);

    // redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_cmpReg(REG,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_cmpReg_q <= $unsigned(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_cmp_q);
        end
    end

    // redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_sticky_ena(REG,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_nor_q == 1'b1)
        begin
            redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_sticky_ena_q <= $unsigned(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_cmpReg_q);
        end
    end

    // redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_enaAnd(LOGICAL,68)
    assign redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_enaAnd_q = redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_sticky_ena_q & VCC_q;

    // redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt(COUNTER,60)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_i <= 4'd0;
            redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_i == 4'd7)
            begin
                redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_eq <= 1'b0;
            end
            if (redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_eq == 1'b1)
            begin
                redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_i <= $unsigned(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_i <= $unsigned(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_q = redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_i[3:0];

    // redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_wraddr(REG,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_wraddr_q <= $unsigned(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_q);
        end
    end

    // redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem(DUALMEM,59)
    assign redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_ia = $unsigned(in_c1_eni8_6_tpl);
    assign redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_aa = redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_wraddr_q;
    assign redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_ab = redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_rdcnt_q;
    assign redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_reset0 = ~ (resetn);
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
    ) redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_dmem (
        .clocken1(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_aa),
        .data_a(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_ab),
        .q_b(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_iq),
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
    assign redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_q = redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_iq[31:0];

    // redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_outputreg0(DELAY,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_outputreg0_q <= '0;
        end
        else
        begin
            redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_outputreg0_q <= $unsigned(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_mem_q);
        end
    end

    // i_add53_conv2d1x117(BLACKBOX,3)@148
    // out out_primWireOut@151
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo00003a0054c2a6344c246w65 thei_add53_conv2d1x117 (
        .in_0(redist6_sync_together22_aunroll_vunroll_x_in_c1_eni8_6_tpl_11_outputreg0_q),
        .in_1(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod16_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .out_primWireOut(i_add53_conv2d1x117_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_notEnable(LOGICAL,76)
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_nor(LOGICAL,77)
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_nor_q = ~ (redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_notEnable_q | redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_sticky_ena_q);

    // redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_last(CONSTANT,73)
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_last_q = $unsigned(5'b01010);

    // redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmp(LOGICAL,74)
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmp_b = {1'b0, redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_q};
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmp_q = $unsigned(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_last_q == redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmp_b ? 1'b1 : 1'b0);

    // redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmpReg(REG,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmpReg_q <= $unsigned(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmp_q);
        end
    end

    // redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_sticky_ena(REG,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_nor_q == 1'b1)
        begin
            redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_sticky_ena_q <= $unsigned(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_cmpReg_q);
        end
    end

    // redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_enaAnd(LOGICAL,79)
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_enaAnd_q = redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_sticky_ena_q & VCC_q;

    // redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt(COUNTER,71)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_i <= 4'd0;
            redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_i == 4'd10)
            begin
                redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_eq <= 1'b0;
            end
            if (redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_eq == 1'b1)
            begin
                redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_i <= $unsigned(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_i <= $unsigned(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_q = redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_i[3:0];

    // redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_wraddr(REG,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_wraddr_q <= $unsigned(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_q);
        end
    end

    // redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem(DUALMEM,70)
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_ia = $unsigned(in_c1_eni8_8_tpl);
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_aa = redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_wraddr_q;
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_ab = redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_rdcnt_q;
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(12),
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
    ) redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_dmem (
        .clocken1(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_aa),
        .data_a(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_ab),
        .q_b(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_iq),
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
    assign redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_q = redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_iq[31:0];

    // redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_outputreg0(DELAY,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_outputreg0_q <= '0;
        end
        else
        begin
            redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_outputreg0_q <= $unsigned(redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_mem_q);
        end
    end

    // redist7_sync_together22_aunroll_vunroll_x_in_c1_eni8_7_tpl_14(DELAY,17)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together22_aunroll_vunroll_x_in_c1_eni8_7_tpl_14 ( .xin(in_c1_eni8_7_tpl), .xout(redist7_sync_together22_aunroll_vunroll_x_in_c1_eni8_7_tpl_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_tmp_0_lcssa_sel_conv2d1x118(MUX,4)@151
    assign i_tmp_0_lcssa_sel_conv2d1x118_s = redist7_sync_together22_aunroll_vunroll_x_in_c1_eni8_7_tpl_14_q;
    always @(i_tmp_0_lcssa_sel_conv2d1x118_s or redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_outputreg0_q or i_add53_conv2d1x117_out_primWireOut)
    begin
        unique case (i_tmp_0_lcssa_sel_conv2d1x118_s)
            1'b0 : i_tmp_0_lcssa_sel_conv2d1x118_q = redist8_sync_together22_aunroll_vunroll_x_in_c1_eni8_8_tpl_14_outputreg0_q;
            1'b1 : i_tmp_0_lcssa_sel_conv2d1x118_q = i_add53_conv2d1x117_out_primWireOut;
            default : i_tmp_0_lcssa_sel_conv2d1x118_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,8)@151
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_tmp_0_lcssa_sel_conv2d1x118_q;
    assign out_o_valid = redist9_sync_together22_aunroll_vunroll_x_in_i_valid_14_q;
    assign out_unnamed_conv2d1x11 = GND_q;

endmodule
