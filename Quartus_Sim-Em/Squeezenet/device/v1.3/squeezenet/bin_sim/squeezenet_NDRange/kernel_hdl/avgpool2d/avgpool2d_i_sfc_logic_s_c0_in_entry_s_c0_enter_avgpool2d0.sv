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

// SystemVerilog created from avgpool2d_i_sfc_logic_s_c0_in_entry_s_c0_enter_avgpool2d0
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_i_sfc_logic_s_c0_in_entry_s_c0_enter_avgpool2d0 (
    input wire [63:0] in_input_im,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [31:0] out_c0_exi2_1_tpl,
    output wire [63:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_avgpool2d0,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [63:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] i_add_ptr1_avgpool2d6_vt_const_1_q;
    wire [63:0] i_add_ptr1_avgpool2d6_vt_join_q;
    wire [61:0] i_add_ptr1_avgpool2d6_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_select_63_b;
    wire [31:0] bgTrunc_i_mul_avgpool2d3_sel_x_b;
    wire [64:0] i_add_ptr1_avgpool2d0_add_x_a;
    wire [64:0] i_add_ptr1_avgpool2d0_add_x_b;
    logic [64:0] i_add_ptr1_avgpool2d0_add_x_o;
    wire [64:0] i_add_ptr1_avgpool2d0_add_x_q;
    wire [61:0] i_add_ptr1_avgpool2d0_narrow_x_b;
    wire [63:0] i_add_ptr1_avgpool2d0_shift_join_x_q;
    wire [63:0] i_add_ptr1_avgpool2d0_dupName_0_trunc_sel_x_b;
    wire [31:0] i_conv_avgpool2d2_sel_x_b;
    wire [63:0] i_idx_ext_avgpool2d4_sel_x_b;
    wire [63:0] i_mul_avgpool2d3_extender_x_q;
    wire [23:0] i_mul_avgpool2d3_multconst_x_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    wire [39:0] i_mul_avgpool2d3_sums_align_1_q;
    wire [39:0] i_mul_avgpool2d3_sums_align_1_qint;
    wire [40:0] i_mul_avgpool2d3_sums_result_add_0_0_a;
    wire [40:0] i_mul_avgpool2d3_sums_result_add_0_0_b;
    logic [40:0] i_mul_avgpool2d3_sums_result_add_0_0_o;
    wire [40:0] i_mul_avgpool2d3_sums_result_add_0_0_q;
    wire [1:0] lowRangeB_uid56_i_mul_avgpool2d3_im0_in;
    wire [1:0] lowRangeB_uid56_i_mul_avgpool2d3_im0_b;
    wire [11:0] highBBits_uid57_i_mul_avgpool2d3_im0_b;
    wire [14:0] lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_a;
    wire [14:0] lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_b;
    logic [14:0] lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_o;
    wire [14:0] lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_q;
    wire [16:0] lev1_a0_uid59_i_mul_avgpool2d3_im0_q;
    wire [2:0] lowRangeB_uid62_i_mul_avgpool2d3_im0_in;
    wire [2:0] lowRangeB_uid62_i_mul_avgpool2d3_im0_b;
    wire [10:0] highBBits_uid63_i_mul_avgpool2d3_im0_b;
    wire [14:0] lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_a;
    wire [14:0] lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_b;
    logic [14:0] lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_o;
    wire [14:0] lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_q;
    wire [17:0] lev1_a0_uid65_i_mul_avgpool2d3_im0_q;
    wire [17:0] NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_a;
    wire [17:0] NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_b;
    logic [17:0] NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_o;
    wire [17:0] NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_q;
    wire [22:0] NodeSum_uid70_i_mul_avgpool2d3_im0_q;
    wire [21:0] sR_uid73_i_mul_avgpool2d3_im0_in;
    wire [21:0] sR_uid73_i_mul_avgpool2d3_im0_b;
    wire [1:0] lowRangeB_uid121_i_mul_avgpool2d3_im3_in;
    wire [1:0] lowRangeB_uid121_i_mul_avgpool2d3_im3_b;
    wire [15:0] highBBits_uid122_i_mul_avgpool2d3_im3_b;
    wire [18:0] lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_a;
    wire [18:0] lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_b;
    logic [18:0] lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_o;
    wire [18:0] lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_q;
    wire [20:0] lev1_a0_uid124_i_mul_avgpool2d3_im3_q;
    wire [2:0] lowRangeB_uid127_i_mul_avgpool2d3_im3_in;
    wire [2:0] lowRangeB_uid127_i_mul_avgpool2d3_im3_b;
    wire [14:0] highBBits_uid128_i_mul_avgpool2d3_im3_b;
    wire [18:0] lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_a;
    wire [18:0] lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_b;
    logic [18:0] lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_o;
    wire [18:0] lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_q;
    wire [21:0] lev1_a0_uid130_i_mul_avgpool2d3_im3_q;
    wire [21:0] NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_a;
    wire [21:0] NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_b;
    logic [21:0] NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_o;
    wire [21:0] NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_q;
    wire [26:0] NodeSum_uid135_i_mul_avgpool2d3_im3_q;
    wire [25:0] sR_uid138_i_mul_avgpool2d3_im3_in;
    wire [25:0] sR_uid138_i_mul_avgpool2d3_im3_b;
    wire [13:0] i_mul_avgpool2d3_bs1_merged_bit_select_b;
    wire [17:0] i_mul_avgpool2d3_bs1_merged_bit_select_c;
    wire [4:0] lowRangeB_uid67_i_mul_avgpool2d3_im0_merged_bit_select_b;
    wire [12:0] lowRangeB_uid67_i_mul_avgpool2d3_im0_merged_bit_select_c;
    wire [4:0] lowRangeB_uid132_i_mul_avgpool2d3_im3_merged_bit_select_b;
    wire [16:0] lowRangeB_uid132_i_mul_avgpool2d3_im3_merged_bit_select_c;
    reg [25:0] redist0_sR_uid138_i_mul_avgpool2d3_im3_b_1_q;
    reg [21:0] redist1_sR_uid73_i_mul_avgpool2d3_im0_b_1_q;
    reg [31:0] redist2_i_conv_avgpool2d2_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,33)@1 + 1
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

    // i_mul_avgpool2d3_multconst_x(CONSTANT,30)
    assign i_mul_avgpool2d3_multconst_x_q = $unsigned(24'b000000000000000000000000);

    // highBBits_uid57_i_mul_avgpool2d3_im0(BITSELECT,56)@1
    assign highBBits_uid57_i_mul_avgpool2d3_im0_b = i_mul_avgpool2d3_bs1_merged_bit_select_b[13:2];

    // i_conv_avgpool2d2_sel_x(BITSELECT,27)@1
    assign i_conv_avgpool2d2_sel_x_b = in_c0_eni1_1_tpl[31:0];

    // i_mul_avgpool2d3_bs1_merged_bit_select(BITSELECT,184)@1
    assign i_mul_avgpool2d3_bs1_merged_bit_select_b = i_conv_avgpool2d2_sel_x_b[31:18];
    assign i_mul_avgpool2d3_bs1_merged_bit_select_c = i_conv_avgpool2d2_sel_x_b[17:0];

    // lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0(ADD,57)@1
    assign lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_a = {1'b0, i_mul_avgpool2d3_bs1_merged_bit_select_b};
    assign lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_b = {3'b000, highBBits_uid57_i_mul_avgpool2d3_im0_b};
    assign lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_o = $unsigned(lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_a) + $unsigned(lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_b);
    assign lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_q = lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_o[14:0];

    // lowRangeB_uid56_i_mul_avgpool2d3_im0(BITSELECT,55)@1
    assign lowRangeB_uid56_i_mul_avgpool2d3_im0_in = i_mul_avgpool2d3_bs1_merged_bit_select_b[1:0];
    assign lowRangeB_uid56_i_mul_avgpool2d3_im0_b = lowRangeB_uid56_i_mul_avgpool2d3_im0_in[1:0];

    // lev1_a0_uid59_i_mul_avgpool2d3_im0(BITJOIN,58)@1
    assign lev1_a0_uid59_i_mul_avgpool2d3_im0_q = {lev1_a0sumAHighB_uid58_i_mul_avgpool2d3_im0_q, lowRangeB_uid56_i_mul_avgpool2d3_im0_b};

    // NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0(ADD,68)@1
    assign NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_a = {1'b0, lev1_a0_uid59_i_mul_avgpool2d3_im0_q};
    assign NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_b = {5'b00000, lowRangeB_uid67_i_mul_avgpool2d3_im0_merged_bit_select_c};
    assign NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_o = $unsigned(NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_a) + $unsigned(NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_b);
    assign NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_q = NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_o[17:0];

    // highBBits_uid63_i_mul_avgpool2d3_im0(BITSELECT,62)@1
    assign highBBits_uid63_i_mul_avgpool2d3_im0_b = i_mul_avgpool2d3_bs1_merged_bit_select_b[13:3];

    // lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0(ADD,63)@1
    assign lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_a = {1'b0, i_mul_avgpool2d3_bs1_merged_bit_select_b};
    assign lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_b = {4'b0000, highBBits_uid63_i_mul_avgpool2d3_im0_b};
    assign lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_o = $unsigned(lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_a) + $unsigned(lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_b);
    assign lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_q = lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_o[14:0];

    // lowRangeB_uid62_i_mul_avgpool2d3_im0(BITSELECT,61)@1
    assign lowRangeB_uid62_i_mul_avgpool2d3_im0_in = i_mul_avgpool2d3_bs1_merged_bit_select_b[2:0];
    assign lowRangeB_uid62_i_mul_avgpool2d3_im0_b = lowRangeB_uid62_i_mul_avgpool2d3_im0_in[2:0];

    // lev1_a0_uid65_i_mul_avgpool2d3_im0(BITJOIN,64)@1
    assign lev1_a0_uid65_i_mul_avgpool2d3_im0_q = {lev1_a0sumAHighB_uid64_i_mul_avgpool2d3_im0_q, lowRangeB_uid62_i_mul_avgpool2d3_im0_b};

    // lowRangeB_uid67_i_mul_avgpool2d3_im0_merged_bit_select(BITSELECT,185)@1
    assign lowRangeB_uid67_i_mul_avgpool2d3_im0_merged_bit_select_b = lev1_a0_uid65_i_mul_avgpool2d3_im0_q[4:0];
    assign lowRangeB_uid67_i_mul_avgpool2d3_im0_merged_bit_select_c = lev1_a0_uid65_i_mul_avgpool2d3_im0_q[17:5];

    // NodeSum_uid70_i_mul_avgpool2d3_im0(BITJOIN,69)@1
    assign NodeSum_uid70_i_mul_avgpool2d3_im0_q = {NodeSumsumAHighB_uid69_i_mul_avgpool2d3_im0_q, lowRangeB_uid67_i_mul_avgpool2d3_im0_merged_bit_select_b};

    // sR_uid73_i_mul_avgpool2d3_im0(BITSELECT,72)@1
    assign sR_uid73_i_mul_avgpool2d3_im0_in = NodeSum_uid70_i_mul_avgpool2d3_im0_q[21:0];
    assign sR_uid73_i_mul_avgpool2d3_im0_b = sR_uid73_i_mul_avgpool2d3_im0_in[21:0];

    // redist1_sR_uid73_i_mul_avgpool2d3_im0_b_1(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sR_uid73_i_mul_avgpool2d3_im0_b_1_q <= '0;
        end
        else
        begin
            redist1_sR_uid73_i_mul_avgpool2d3_im0_b_1_q <= $unsigned(sR_uid73_i_mul_avgpool2d3_im0_b);
        end
    end

    // i_mul_avgpool2d3_sums_align_1(BITSHIFT,45)@2
    assign i_mul_avgpool2d3_sums_align_1_qint = { redist1_sR_uid73_i_mul_avgpool2d3_im0_b_1_q, 18'b000000000000000000 };
    assign i_mul_avgpool2d3_sums_align_1_q = i_mul_avgpool2d3_sums_align_1_qint[39:0];

    // highBBits_uid122_i_mul_avgpool2d3_im3(BITSELECT,121)@1
    assign highBBits_uid122_i_mul_avgpool2d3_im3_b = i_mul_avgpool2d3_bs1_merged_bit_select_c[17:2];

    // lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3(ADD,122)@1
    assign lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_a = {1'b0, i_mul_avgpool2d3_bs1_merged_bit_select_c};
    assign lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_b = {3'b000, highBBits_uid122_i_mul_avgpool2d3_im3_b};
    assign lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_o = $unsigned(lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_a) + $unsigned(lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_b);
    assign lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_q = lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_o[18:0];

    // lowRangeB_uid121_i_mul_avgpool2d3_im3(BITSELECT,120)@1
    assign lowRangeB_uid121_i_mul_avgpool2d3_im3_in = i_mul_avgpool2d3_bs1_merged_bit_select_c[1:0];
    assign lowRangeB_uid121_i_mul_avgpool2d3_im3_b = lowRangeB_uid121_i_mul_avgpool2d3_im3_in[1:0];

    // lev1_a0_uid124_i_mul_avgpool2d3_im3(BITJOIN,123)@1
    assign lev1_a0_uid124_i_mul_avgpool2d3_im3_q = {lev1_a0sumAHighB_uid123_i_mul_avgpool2d3_im3_q, lowRangeB_uid121_i_mul_avgpool2d3_im3_b};

    // NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3(ADD,133)@1
    assign NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_a = {1'b0, lev1_a0_uid124_i_mul_avgpool2d3_im3_q};
    assign NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_b = {5'b00000, lowRangeB_uid132_i_mul_avgpool2d3_im3_merged_bit_select_c};
    assign NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_o = $unsigned(NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_a) + $unsigned(NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_b);
    assign NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_q = NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_o[21:0];

    // highBBits_uid128_i_mul_avgpool2d3_im3(BITSELECT,127)@1
    assign highBBits_uid128_i_mul_avgpool2d3_im3_b = i_mul_avgpool2d3_bs1_merged_bit_select_c[17:3];

    // lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3(ADD,128)@1
    assign lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_a = {1'b0, i_mul_avgpool2d3_bs1_merged_bit_select_c};
    assign lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_b = {4'b0000, highBBits_uid128_i_mul_avgpool2d3_im3_b};
    assign lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_o = $unsigned(lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_a) + $unsigned(lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_b);
    assign lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_q = lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_o[18:0];

    // lowRangeB_uid127_i_mul_avgpool2d3_im3(BITSELECT,126)@1
    assign lowRangeB_uid127_i_mul_avgpool2d3_im3_in = i_mul_avgpool2d3_bs1_merged_bit_select_c[2:0];
    assign lowRangeB_uid127_i_mul_avgpool2d3_im3_b = lowRangeB_uid127_i_mul_avgpool2d3_im3_in[2:0];

    // lev1_a0_uid130_i_mul_avgpool2d3_im3(BITJOIN,129)@1
    assign lev1_a0_uid130_i_mul_avgpool2d3_im3_q = {lev1_a0sumAHighB_uid129_i_mul_avgpool2d3_im3_q, lowRangeB_uid127_i_mul_avgpool2d3_im3_b};

    // lowRangeB_uid132_i_mul_avgpool2d3_im3_merged_bit_select(BITSELECT,186)@1
    assign lowRangeB_uid132_i_mul_avgpool2d3_im3_merged_bit_select_b = lev1_a0_uid130_i_mul_avgpool2d3_im3_q[4:0];
    assign lowRangeB_uid132_i_mul_avgpool2d3_im3_merged_bit_select_c = lev1_a0_uid130_i_mul_avgpool2d3_im3_q[21:5];

    // NodeSum_uid135_i_mul_avgpool2d3_im3(BITJOIN,134)@1
    assign NodeSum_uid135_i_mul_avgpool2d3_im3_q = {NodeSumsumAHighB_uid134_i_mul_avgpool2d3_im3_q, lowRangeB_uid132_i_mul_avgpool2d3_im3_merged_bit_select_b};

    // sR_uid138_i_mul_avgpool2d3_im3(BITSELECT,137)@1
    assign sR_uid138_i_mul_avgpool2d3_im3_in = NodeSum_uid135_i_mul_avgpool2d3_im3_q[25:0];
    assign sR_uid138_i_mul_avgpool2d3_im3_b = sR_uid138_i_mul_avgpool2d3_im3_in[25:0];

    // redist0_sR_uid138_i_mul_avgpool2d3_im3_b_1(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sR_uid138_i_mul_avgpool2d3_im3_b_1_q <= '0;
        end
        else
        begin
            redist0_sR_uid138_i_mul_avgpool2d3_im3_b_1_q <= $unsigned(sR_uid138_i_mul_avgpool2d3_im3_b);
        end
    end

    // i_mul_avgpool2d3_sums_result_add_0_0(ADD,47)@2
    assign i_mul_avgpool2d3_sums_result_add_0_0_a = {15'b000000000000000, redist0_sR_uid138_i_mul_avgpool2d3_im3_b_1_q};
    assign i_mul_avgpool2d3_sums_result_add_0_0_b = {1'b0, i_mul_avgpool2d3_sums_align_1_q};
    assign i_mul_avgpool2d3_sums_result_add_0_0_o = $unsigned(i_mul_avgpool2d3_sums_result_add_0_0_a) + $unsigned(i_mul_avgpool2d3_sums_result_add_0_0_b);
    assign i_mul_avgpool2d3_sums_result_add_0_0_q = i_mul_avgpool2d3_sums_result_add_0_0_o[40:0];

    // i_mul_avgpool2d3_extender_x(BITJOIN,29)@2
    assign i_mul_avgpool2d3_extender_x_q = {i_mul_avgpool2d3_multconst_x_q, i_mul_avgpool2d3_sums_result_add_0_0_q[39:0]};

    // bgTrunc_i_mul_avgpool2d3_sel_x(BITSELECT,19)@2
    assign bgTrunc_i_mul_avgpool2d3_sel_x_b = i_mul_avgpool2d3_extender_x_q[31:0];

    // i_idx_ext_avgpool2d4_sel_x(BITSELECT,28)@2
    assign i_idx_ext_avgpool2d4_sel_x_b = $unsigned({{32{bgTrunc_i_mul_avgpool2d3_sel_x_b[31]}}, bgTrunc_i_mul_avgpool2d3_sel_x_b[31:0]});

    // i_add_ptr1_avgpool2d0_narrow_x(BITSELECT,23)@2
    assign i_add_ptr1_avgpool2d0_narrow_x_b = i_idx_ext_avgpool2d4_sel_x_b[61:0];

    // i_add_ptr1_avgpool2d0_shift_join_x(BITJOIN,24)@2
    assign i_add_ptr1_avgpool2d0_shift_join_x_q = {i_add_ptr1_avgpool2d0_narrow_x_b, i_add_ptr1_avgpool2d6_vt_const_1_q};

    // valid_fanout_reg1(REG,34)@1 + 1
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

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5(BLACKBOX,11)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    avgpool2d_i_llvm_fpga_sync_buffer_p1024f0000put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_select_63(BITSELECT,14)@2
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_const_9(CONSTANT,12)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_join(BITJOIN,13)@2
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_const_9_q};

    // i_add_ptr1_avgpool2d0_add_x(ADD,21)@2
    assign i_add_ptr1_avgpool2d0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d5_vt_join_q};
    assign i_add_ptr1_avgpool2d0_add_x_b = {1'b0, i_add_ptr1_avgpool2d0_shift_join_x_q};
    assign i_add_ptr1_avgpool2d0_add_x_o = $unsigned(i_add_ptr1_avgpool2d0_add_x_a) + $unsigned(i_add_ptr1_avgpool2d0_add_x_b);
    assign i_add_ptr1_avgpool2d0_add_x_q = i_add_ptr1_avgpool2d0_add_x_o[64:0];

    // i_add_ptr1_avgpool2d0_dupName_0_trunc_sel_x(BITSELECT,26)@2
    assign i_add_ptr1_avgpool2d0_dupName_0_trunc_sel_x_b = i_add_ptr1_avgpool2d0_add_x_q[63:0];

    // i_add_ptr1_avgpool2d6_vt_select_63(BITSELECT,7)@2
    assign i_add_ptr1_avgpool2d6_vt_select_63_b = i_add_ptr1_avgpool2d0_dupName_0_trunc_sel_x_b[63:2];

    // i_add_ptr1_avgpool2d6_vt_const_1(CONSTANT,5)
    assign i_add_ptr1_avgpool2d6_vt_const_1_q = $unsigned(2'b00);

    // i_add_ptr1_avgpool2d6_vt_join(BITJOIN,6)@2
    assign i_add_ptr1_avgpool2d6_vt_join_q = {i_add_ptr1_avgpool2d6_vt_select_63_b, i_add_ptr1_avgpool2d6_vt_const_1_q};

    // redist2_i_conv_avgpool2d2_sel_x_b_1(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_conv_avgpool2d2_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist2_i_conv_avgpool2d2_sel_x_b_1_q <= $unsigned(i_conv_avgpool2d2_sel_x_b);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,31)@2
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist2_i_conv_avgpool2d2_sel_x_b_1_q;
    assign out_c0_exi2_2_tpl = i_add_ptr1_avgpool2d6_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_avgpool2d0 = GND_q;

endmodule
