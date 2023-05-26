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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_cond140000_enter409_conv2d1x10
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_cond140000_enter409_conv2d1x10 (
    input wire [1023:0] in_memdep_13_conv2d1x1_avm_readdata,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_writeack,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_readdatavalid,
    output wire [31:0] out_memdep_13_conv2d1x1_avm_address,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_enable,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_read,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_write,
    output wire [1023:0] out_memdep_13_conv2d1x1_avm_writedata,
    output wire [127:0] out_memdep_13_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_c0_exi1431_0_tpl,
    output wire [9:0] out_c0_exi1431_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c0_eni26_0_tpl,
    input wire [31:0] in_c0_eni26_1_tpl,
    input wire [31:0] in_c0_eni26_2_tpl,
    input wire [31:0] in_c0_eni26_3_tpl,
    input wire [31:0] in_c0_eni26_4_tpl,
    input wire [31:0] in_c0_eni26_5_tpl,
    input wire [31:0] in_c0_eni26_6_tpl,
    input wire [31:0] in_c0_eni26_7_tpl,
    input wire [31:0] in_c0_eni26_8_tpl,
    input wire [31:0] in_c0_eni26_9_tpl,
    input wire [31:0] in_c0_eni26_10_tpl,
    input wire [31:0] in_c0_eni26_11_tpl,
    input wire [31:0] in_c0_eni26_12_tpl,
    input wire [31:0] in_c0_eni26_13_tpl,
    input wire [31:0] in_c0_eni26_14_tpl,
    input wire [31:0] in_c0_eni26_15_tpl,
    input wire [31:0] in_c0_eni26_16_tpl,
    input wire [31:0] in_c0_eni26_17_tpl,
    input wire [31:0] in_c0_eni26_18_tpl,
    input wire [31:0] in_c0_eni26_19_tpl,
    input wire [31:0] in_c0_eni26_20_tpl,
    input wire [31:0] in_c0_eni26_21_tpl,
    input wire [31:0] in_c0_eni26_22_tpl,
    input wire [31:0] in_c0_eni26_23_tpl,
    input wire [31:0] in_c0_eni26_24_tpl,
    input wire [0:0] in_c0_eni26_25_tpl,
    input wire [63:0] in_c0_eni26_26_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_462970041693686988817_q;
    wire [8:0] i_ap_dep525_ext_conv2d1x112_vt_const_9_q;
    wire [9:0] i_ap_dep525_ext_conv2d1x112_vt_join_q;
    wire [0:0] i_ap_dep525_ext_conv2d1x112_vt_select_0_b;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_c0_ene1410_fanout_adaptor_conv2d1x12_q;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_c0_ene2411_fanout_adaptor_conv2d1x13_q;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_c0_ene3412_fanout_adaptor_conv2d1x14_q;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_c0_ene4413_fanout_adaptor_conv2d1x15_q;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_c0_ene5414_fanout_adaptor_conv2d1x16_q;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_c0_ene6415_fanout_adaptor_conv2d1x17_q;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_c0_ene7416_fanout_adaptor_conv2d1x18_q;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_c0_ene8417_fanout_adaptor_conv2d1x19_q;
    wire [9:0] i_ap_dep525_ext_conv2d1x112_sel_x_b;
    wire [31:0] i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_burstcount;
    wire [127:0] i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_write;
    wire [1023:0] i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_o_writeack;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [31:0] redist1_sync_together21_aunroll_x_in_c0_eni26_9_tpl_1_q;
    reg [31:0] redist2_sync_together21_aunroll_x_in_c0_eni26_10_tpl_1_q;
    reg [31:0] redist3_sync_together21_aunroll_x_in_c0_eni26_11_tpl_1_q;
    reg [31:0] redist4_sync_together21_aunroll_x_in_c0_eni26_12_tpl_1_q;
    reg [31:0] redist5_sync_together21_aunroll_x_in_c0_eni26_13_tpl_1_q;
    reg [31:0] redist6_sync_together21_aunroll_x_in_c0_eni26_14_tpl_1_q;
    reg [31:0] redist7_sync_together21_aunroll_x_in_c0_eni26_15_tpl_1_q;
    reg [31:0] redist8_sync_together21_aunroll_x_in_c0_eni26_16_tpl_1_q;
    reg [31:0] redist9_sync_together21_aunroll_x_in_c0_eni26_17_tpl_1_q;
    reg [31:0] redist10_sync_together21_aunroll_x_in_c0_eni26_18_tpl_1_q;
    reg [31:0] redist11_sync_together21_aunroll_x_in_c0_eni26_19_tpl_1_q;
    reg [31:0] redist12_sync_together21_aunroll_x_in_c0_eni26_20_tpl_1_q;
    reg [31:0] redist13_sync_together21_aunroll_x_in_c0_eni26_21_tpl_1_q;
    reg [31:0] redist14_sync_together21_aunroll_x_in_c0_eni26_22_tpl_1_q;
    reg [31:0] redist15_sync_together21_aunroll_x_in_c0_eni26_23_tpl_1_q;
    reg [31:0] redist16_sync_together21_aunroll_x_in_c0_eni26_24_tpl_1_q;
    reg [0:0] redist17_sync_together21_aunroll_x_in_c0_eni26_25_tpl_1_q;
    reg [63:0] redist18_sync_together21_aunroll_x_in_c0_eni26_26_tpl_1_q;


    // i_llvm_fpga_fanout_f32_c0_ene1410_fanout_adaptor_conv2d1x12(REG,10)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_c0_ene1410_fanout_adaptor_conv2d1x12_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            i_llvm_fpga_fanout_f32_c0_ene1410_fanout_adaptor_conv2d1x12_q <= $unsigned(in_c0_eni26_1_tpl);
        end
    end

    // i_llvm_fpga_fanout_f32_c0_ene2411_fanout_adaptor_conv2d1x13(REG,11)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_c0_ene2411_fanout_adaptor_conv2d1x13_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            i_llvm_fpga_fanout_f32_c0_ene2411_fanout_adaptor_conv2d1x13_q <= $unsigned(in_c0_eni26_2_tpl);
        end
    end

    // i_llvm_fpga_fanout_f32_c0_ene3412_fanout_adaptor_conv2d1x14(REG,12)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_c0_ene3412_fanout_adaptor_conv2d1x14_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            i_llvm_fpga_fanout_f32_c0_ene3412_fanout_adaptor_conv2d1x14_q <= $unsigned(in_c0_eni26_3_tpl);
        end
    end

    // i_llvm_fpga_fanout_f32_c0_ene4413_fanout_adaptor_conv2d1x15(REG,13)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_c0_ene4413_fanout_adaptor_conv2d1x15_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            i_llvm_fpga_fanout_f32_c0_ene4413_fanout_adaptor_conv2d1x15_q <= $unsigned(in_c0_eni26_4_tpl);
        end
    end

    // i_llvm_fpga_fanout_f32_c0_ene5414_fanout_adaptor_conv2d1x16(REG,14)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_c0_ene5414_fanout_adaptor_conv2d1x16_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            i_llvm_fpga_fanout_f32_c0_ene5414_fanout_adaptor_conv2d1x16_q <= $unsigned(in_c0_eni26_5_tpl);
        end
    end

    // i_llvm_fpga_fanout_f32_c0_ene6415_fanout_adaptor_conv2d1x17(REG,15)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_c0_ene6415_fanout_adaptor_conv2d1x17_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            i_llvm_fpga_fanout_f32_c0_ene6415_fanout_adaptor_conv2d1x17_q <= $unsigned(in_c0_eni26_6_tpl);
        end
    end

    // i_llvm_fpga_fanout_f32_c0_ene7416_fanout_adaptor_conv2d1x18(REG,16)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_c0_ene7416_fanout_adaptor_conv2d1x18_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            i_llvm_fpga_fanout_f32_c0_ene7416_fanout_adaptor_conv2d1x18_q <= $unsigned(in_c0_eni26_7_tpl);
        end
    end

    // i_llvm_fpga_fanout_f32_c0_ene8417_fanout_adaptor_conv2d1x19(REG,17)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_c0_ene8417_fanout_adaptor_conv2d1x19_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            i_llvm_fpga_fanout_f32_c0_ene8417_fanout_adaptor_conv2d1x19_q <= $unsigned(in_c0_eni26_8_tpl);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist12_sync_together21_aunroll_x_in_c0_eni26_20_tpl_1(DELAY,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together21_aunroll_x_in_c0_eni26_20_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together21_aunroll_x_in_c0_eni26_20_tpl_1_q <= $unsigned(in_c0_eni26_20_tpl);
        end
    end

    // redist10_sync_together21_aunroll_x_in_c0_eni26_18_tpl_1(DELAY,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together21_aunroll_x_in_c0_eni26_18_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together21_aunroll_x_in_c0_eni26_18_tpl_1_q <= $unsigned(in_c0_eni26_18_tpl);
        end
    end

    // redist8_sync_together21_aunroll_x_in_c0_eni26_16_tpl_1(DELAY,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together21_aunroll_x_in_c0_eni26_16_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together21_aunroll_x_in_c0_eni26_16_tpl_1_q <= $unsigned(in_c0_eni26_16_tpl);
        end
    end

    // redist6_sync_together21_aunroll_x_in_c0_eni26_14_tpl_1(DELAY,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together21_aunroll_x_in_c0_eni26_14_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together21_aunroll_x_in_c0_eni26_14_tpl_1_q <= $unsigned(in_c0_eni26_14_tpl);
        end
    end

    // redist4_sync_together21_aunroll_x_in_c0_eni26_12_tpl_1(DELAY,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together21_aunroll_x_in_c0_eni26_12_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together21_aunroll_x_in_c0_eni26_12_tpl_1_q <= $unsigned(in_c0_eni26_12_tpl);
        end
    end

    // redist16_sync_together21_aunroll_x_in_c0_eni26_24_tpl_1(DELAY,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together21_aunroll_x_in_c0_eni26_24_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together21_aunroll_x_in_c0_eni26_24_tpl_1_q <= $unsigned(in_c0_eni26_24_tpl);
        end
    end

    // redist15_sync_together21_aunroll_x_in_c0_eni26_23_tpl_1(DELAY,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together21_aunroll_x_in_c0_eni26_23_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together21_aunroll_x_in_c0_eni26_23_tpl_1_q <= $unsigned(in_c0_eni26_23_tpl);
        end
    end

    // redist14_sync_together21_aunroll_x_in_c0_eni26_22_tpl_1(DELAY,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together21_aunroll_x_in_c0_eni26_22_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together21_aunroll_x_in_c0_eni26_22_tpl_1_q <= $unsigned(in_c0_eni26_22_tpl);
        end
    end

    // redist13_sync_together21_aunroll_x_in_c0_eni26_21_tpl_1(DELAY,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together21_aunroll_x_in_c0_eni26_21_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together21_aunroll_x_in_c0_eni26_21_tpl_1_q <= $unsigned(in_c0_eni26_21_tpl);
        end
    end

    // redist11_sync_together21_aunroll_x_in_c0_eni26_19_tpl_1(DELAY,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together21_aunroll_x_in_c0_eni26_19_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together21_aunroll_x_in_c0_eni26_19_tpl_1_q <= $unsigned(in_c0_eni26_19_tpl);
        end
    end

    // redist9_sync_together21_aunroll_x_in_c0_eni26_17_tpl_1(DELAY,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together21_aunroll_x_in_c0_eni26_17_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together21_aunroll_x_in_c0_eni26_17_tpl_1_q <= $unsigned(in_c0_eni26_17_tpl);
        end
    end

    // redist7_sync_together21_aunroll_x_in_c0_eni26_15_tpl_1(DELAY,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together21_aunroll_x_in_c0_eni26_15_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together21_aunroll_x_in_c0_eni26_15_tpl_1_q <= $unsigned(in_c0_eni26_15_tpl);
        end
    end

    // redist5_sync_together21_aunroll_x_in_c0_eni26_13_tpl_1(DELAY,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together21_aunroll_x_in_c0_eni26_13_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together21_aunroll_x_in_c0_eni26_13_tpl_1_q <= $unsigned(in_c0_eni26_13_tpl);
        end
    end

    // redist3_sync_together21_aunroll_x_in_c0_eni26_11_tpl_1(DELAY,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni26_11_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni26_11_tpl_1_q <= $unsigned(in_c0_eni26_11_tpl);
        end
    end

    // redist2_sync_together21_aunroll_x_in_c0_eni26_10_tpl_1(DELAY,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together21_aunroll_x_in_c0_eni26_10_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together21_aunroll_x_in_c0_eni26_10_tpl_1_q <= $unsigned(in_c0_eni26_10_tpl);
        end
    end

    // redist1_sync_together21_aunroll_x_in_c0_eni26_9_tpl_1(DELAY,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together21_aunroll_x_in_c0_eni26_9_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together21_aunroll_x_in_c0_eni26_9_tpl_1_q <= $unsigned(in_c0_eni26_9_tpl);
        end
    end

    // valid_fanout_reg1(REG,25)@0 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist17_sync_together21_aunroll_x_in_c0_eni26_25_tpl_1(DELAY,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together21_aunroll_x_in_c0_eni26_25_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together21_aunroll_x_in_c0_eni26_25_tpl_1_q <= $unsigned(in_c0_eni26_25_tpl);
        end
    end

    // c_i64_462970041693686988817(CONSTANT,3)
    assign c_i64_462970041693686988817_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // redist18_sync_together21_aunroll_x_in_c0_eni26_26_tpl_1(DELAY,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together21_aunroll_x_in_c0_eni26_26_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together21_aunroll_x_in_c0_eni26_26_tpl_1_q <= $unsigned(in_c0_eni26_26_tpl);
        end
    end

    // i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x(BLACKBOX,21)@1
    // out out_memdep_13_conv2d1x1_avm_address@20000000
    // out out_memdep_13_conv2d1x1_avm_burstcount@20000000
    // out out_memdep_13_conv2d1x1_avm_byteenable@20000000
    // out out_memdep_13_conv2d1x1_avm_enable@20000000
    // out out_memdep_13_conv2d1x1_avm_read@20000000
    // out out_memdep_13_conv2d1x1_avm_write@20000000
    // out out_memdep_13_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@2
    // out out_o_valid@2
    // out out_o_writeack@2
    conv2d1x1_i_llvm_fpga_mem_memdep_13_0 thei_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x (
        .in_AddrOffset(redist18_sync_together21_aunroll_x_in_c0_eni26_26_tpl_1_q),
        .in_flush(in_flush),
        .in_i_address(c_i64_462970041693686988817_q),
        .in_i_predicate(redist17_sync_together21_aunroll_x_in_c0_eni26_25_tpl_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_memdep_13_conv2d1x1_avm_readdata(in_memdep_13_conv2d1x1_avm_readdata),
        .in_memdep_13_conv2d1x1_avm_readdatavalid(in_memdep_13_conv2d1x1_avm_readdatavalid),
        .in_memdep_13_conv2d1x1_avm_waitrequest(in_memdep_13_conv2d1x1_avm_waitrequest),
        .in_memdep_13_conv2d1x1_avm_writeack(in_memdep_13_conv2d1x1_avm_writeack),
        .in_i_writedata_0_tpl(redist1_sync_together21_aunroll_x_in_c0_eni26_9_tpl_1_q),
        .in_i_writedata_1_tpl(redist2_sync_together21_aunroll_x_in_c0_eni26_10_tpl_1_q),
        .in_i_writedata_2_tpl(redist3_sync_together21_aunroll_x_in_c0_eni26_11_tpl_1_q),
        .in_i_writedata_3_tpl(redist5_sync_together21_aunroll_x_in_c0_eni26_13_tpl_1_q),
        .in_i_writedata_4_tpl(redist7_sync_together21_aunroll_x_in_c0_eni26_15_tpl_1_q),
        .in_i_writedata_5_tpl(redist9_sync_together21_aunroll_x_in_c0_eni26_17_tpl_1_q),
        .in_i_writedata_6_tpl(redist11_sync_together21_aunroll_x_in_c0_eni26_19_tpl_1_q),
        .in_i_writedata_7_tpl(redist13_sync_together21_aunroll_x_in_c0_eni26_21_tpl_1_q),
        .in_i_writedata_8_tpl(redist14_sync_together21_aunroll_x_in_c0_eni26_22_tpl_1_q),
        .in_i_writedata_9_tpl(redist15_sync_together21_aunroll_x_in_c0_eni26_23_tpl_1_q),
        .in_i_writedata_10_tpl(redist16_sync_together21_aunroll_x_in_c0_eni26_24_tpl_1_q),
        .in_i_writedata_11_tpl(redist4_sync_together21_aunroll_x_in_c0_eni26_12_tpl_1_q),
        .in_i_writedata_12_tpl(redist6_sync_together21_aunroll_x_in_c0_eni26_14_tpl_1_q),
        .in_i_writedata_13_tpl(redist8_sync_together21_aunroll_x_in_c0_eni26_16_tpl_1_q),
        .in_i_writedata_14_tpl(redist10_sync_together21_aunroll_x_in_c0_eni26_18_tpl_1_q),
        .in_i_writedata_15_tpl(redist12_sync_together21_aunroll_x_in_c0_eni26_20_tpl_1_q),
        .in_i_writedata_16_tpl(i_llvm_fpga_fanout_f32_c0_ene8417_fanout_adaptor_conv2d1x19_q),
        .in_i_writedata_17_tpl(i_llvm_fpga_fanout_f32_c0_ene7416_fanout_adaptor_conv2d1x18_q),
        .in_i_writedata_18_tpl(i_llvm_fpga_fanout_f32_c0_ene6415_fanout_adaptor_conv2d1x17_q),
        .in_i_writedata_19_tpl(i_llvm_fpga_fanout_f32_c0_ene5414_fanout_adaptor_conv2d1x16_q),
        .in_i_writedata_20_tpl(i_llvm_fpga_fanout_f32_c0_ene4413_fanout_adaptor_conv2d1x15_q),
        .in_i_writedata_21_tpl(i_llvm_fpga_fanout_f32_c0_ene3412_fanout_adaptor_conv2d1x14_q),
        .in_i_writedata_22_tpl(i_llvm_fpga_fanout_f32_c0_ene2411_fanout_adaptor_conv2d1x13_q),
        .in_i_writedata_23_tpl(i_llvm_fpga_fanout_f32_c0_ene1410_fanout_adaptor_conv2d1x12_q),
        .in_i_writedata_24_tpl(i_llvm_fpga_fanout_f32_c0_ene8417_fanout_adaptor_conv2d1x19_q),
        .in_i_writedata_25_tpl(i_llvm_fpga_fanout_f32_c0_ene7416_fanout_adaptor_conv2d1x18_q),
        .in_i_writedata_26_tpl(i_llvm_fpga_fanout_f32_c0_ene6415_fanout_adaptor_conv2d1x17_q),
        .in_i_writedata_27_tpl(i_llvm_fpga_fanout_f32_c0_ene5414_fanout_adaptor_conv2d1x16_q),
        .in_i_writedata_28_tpl(i_llvm_fpga_fanout_f32_c0_ene4413_fanout_adaptor_conv2d1x15_q),
        .in_i_writedata_29_tpl(i_llvm_fpga_fanout_f32_c0_ene3412_fanout_adaptor_conv2d1x14_q),
        .in_i_writedata_30_tpl(i_llvm_fpga_fanout_f32_c0_ene2411_fanout_adaptor_conv2d1x13_q),
        .in_i_writedata_31_tpl(i_llvm_fpga_fanout_f32_c0_ene1410_fanout_adaptor_conv2d1x12_q),
        .out_memdep_13_conv2d1x1_avm_address(i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_address),
        .out_memdep_13_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_burstcount),
        .out_memdep_13_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_byteenable),
        .out_memdep_13_conv2d1x1_avm_enable(i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_enable),
        .out_memdep_13_conv2d1x1_avm_read(i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_read),
        .out_memdep_13_conv2d1x1_avm_write(i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_write),
        .out_memdep_13_conv2d1x1_avm_writedata(i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_memdep_13_conv2d1x1_avm_address = i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_address;
    assign out_memdep_13_conv2d1x1_avm_enable = i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_enable;
    assign out_memdep_13_conv2d1x1_avm_read = i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_read;
    assign out_memdep_13_conv2d1x1_avm_write = i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_write;
    assign out_memdep_13_conv2d1x1_avm_writedata = i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_writedata;
    assign out_memdep_13_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_byteenable;
    assign out_memdep_13_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_memdep_13_conv2d1x1_avm_burstcount;

    // valid_fanout_reg0(REG,24)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // i_ap_dep525_ext_conv2d1x112_vt_const_9(CONSTANT,7)
    assign i_ap_dep525_ext_conv2d1x112_vt_const_9_q = $unsigned(9'b000000000);

    // i_ap_dep525_ext_conv2d1x112_sel_x(BITSELECT,20)@2
    assign i_ap_dep525_ext_conv2d1x112_sel_x_b = {9'b000000000, i_llvm_fpga_mem_memdep_13_conv2d1x111_aunroll_x_out_o_writeack[0:0]};

    // i_ap_dep525_ext_conv2d1x112_vt_select_0(BITSELECT,9)@2
    assign i_ap_dep525_ext_conv2d1x112_vt_select_0_b = i_ap_dep525_ext_conv2d1x112_sel_x_b[0:0];

    // i_ap_dep525_ext_conv2d1x112_vt_join(BITJOIN,8)@2
    assign i_ap_dep525_ext_conv2d1x112_vt_join_q = {i_ap_dep525_ext_conv2d1x112_vt_const_9_q, i_ap_dep525_ext_conv2d1x112_vt_select_0_b};

    // sync_out_aunroll_x(GPOUT,22)@2
    assign out_c0_exi1431_0_tpl = GND_q;
    assign out_c0_exi1431_1_tpl = i_ap_dep525_ext_conv2d1x112_vt_join_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_conv2d1x16 = GND_q;

endmodule
