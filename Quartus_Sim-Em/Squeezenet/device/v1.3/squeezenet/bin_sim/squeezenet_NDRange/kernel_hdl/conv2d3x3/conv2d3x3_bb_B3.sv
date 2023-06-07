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

// SystemVerilog created from conv2d3x3_bb_B3
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B3 (
    input wire [0:0] in_c0_exe1082_0,
    input wire [0:0] in_c0_exe1082_1,
    input wire [63:0] in_c0_exe112_0,
    input wire [63:0] in_c0_exe112_1,
    input wire [31:0] in_c0_exe1186152_0,
    input wire [31:0] in_c0_exe1186152_1,
    input wire [0:0] in_c0_exe1191_0,
    input wire [0:0] in_c0_exe1191_1,
    input wire [31:0] in_c0_exe12102_0,
    input wire [31:0] in_c0_exe12102_1,
    input wire [0:0] in_c0_exe13112_0,
    input wire [0:0] in_c0_exe13112_1,
    input wire [0:0] in_c0_exe14121_0,
    input wire [0:0] in_c0_exe14121_1,
    input wire [0:0] in_c0_exe15131_0,
    input wire [0:0] in_c0_exe15131_1,
    input wire [0:0] in_c0_exe16141_0,
    input wire [0:0] in_c0_exe16141_1,
    input wire [63:0] in_c0_exe323_0,
    input wire [63:0] in_c0_exe323_1,
    input wire [0:0] in_c0_exe432_0,
    input wire [0:0] in_c0_exe432_1,
    input wire [31:0] in_c0_exe534_0,
    input wire [31:0] in_c0_exe534_1,
    input wire [31:0] in_c0_exe650_0,
    input wire [31:0] in_c0_exe650_1,
    input wire [0:0] in_c0_exe753_0,
    input wire [0:0] in_c0_exe753_1,
    input wire [0:0] in_c0_exe862_0,
    input wire [0:0] in_c0_exe862_1,
    input wire [31:0] in_c0_exe972_0,
    input wire [31:0] in_c0_exe972_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_062150_0,
    input wire [31:0] in_j_062150_1,
    input wire [31:0] in_k_059_0,
    input wire [31:0] in_k_059_1,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_stride,
    input wire [31:0] in_tmp_058_0,
    input wire [31:0] in_tmp_058_1,
    input wire [31:0] in_unnamed_conv2d3x33_0,
    input wire [31:0] in_unnamed_conv2d3x33_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1082,
    output wire [63:0] out_c0_exe112,
    output wire [31:0] out_c0_exe1186152,
    output wire [0:0] out_c0_exe1191,
    output wire [31:0] out_c0_exe1195,
    output wire [31:0] out_c0_exe12102,
    output wire [0:0] out_c0_exe13112,
    output wire [0:0] out_c0_exe14121,
    output wire [0:0] out_c0_exe15131,
    output wire [0:0] out_c0_exe16141,
    output wire [31:0] out_c0_exe2196,
    output wire [63:0] out_c0_exe323,
    output wire [0:0] out_c0_exe432,
    output wire [31:0] out_c0_exe534,
    output wire [31:0] out_c0_exe650,
    output wire [0:0] out_c0_exe753,
    output wire [0:0] out_c0_exe862,
    output wire [31:0] out_c0_exe972,
    output wire [31:0] out_j_062150,
    output wire [31:0] out_k_059,
    output wire [31:0] out_mul46_add4,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tmp_058,
    output wire [31:0] out_unnamed_conv2d3x33,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe1082;
    wire [63:0] bb_conv2d3x3_B3_stall_region_out_c0_exe112;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe1186152;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe1191;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe1195;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe12102;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe13112;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe14121;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe15131;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe16141;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe2196;
    wire [63:0] bb_conv2d3x3_B3_stall_region_out_c0_exe323;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe432;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe534;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe650;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe753;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_c0_exe862;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_c0_exe972;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_j_062150;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_k_059;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_mul46_add4;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_stall_out;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_tmp_058;
    wire [31:0] bb_conv2d3x3_B3_stall_region_out_unnamed_conv2d3x33;
    wire [0:0] bb_conv2d3x3_B3_stall_region_out_valid_out;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe1082;
    wire [63:0] conv2d3x3_B3_branch_out_c0_exe112;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe1186152;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe1191;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe1195;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe12102;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe13112;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe14121;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe15131;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe16141;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe2196;
    wire [63:0] conv2d3x3_B3_branch_out_c0_exe323;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe432;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe534;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe650;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe753;
    wire [0:0] conv2d3x3_B3_branch_out_c0_exe862;
    wire [31:0] conv2d3x3_B3_branch_out_c0_exe972;
    wire [31:0] conv2d3x3_B3_branch_out_j_062150;
    wire [31:0] conv2d3x3_B3_branch_out_k_059;
    wire [31:0] conv2d3x3_B3_branch_out_mul46_add4;
    wire [0:0] conv2d3x3_B3_branch_out_stall_out;
    wire [31:0] conv2d3x3_B3_branch_out_tmp_058;
    wire [31:0] conv2d3x3_B3_branch_out_unnamed_conv2d3x33;
    wire [0:0] conv2d3x3_B3_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B3_merge_out_c0_exe1082;
    wire [63:0] conv2d3x3_B3_merge_out_c0_exe112;
    wire [31:0] conv2d3x3_B3_merge_out_c0_exe1186152;
    wire [0:0] conv2d3x3_B3_merge_out_c0_exe1191;
    wire [31:0] conv2d3x3_B3_merge_out_c0_exe12102;
    wire [0:0] conv2d3x3_B3_merge_out_c0_exe13112;
    wire [0:0] conv2d3x3_B3_merge_out_c0_exe14121;
    wire [0:0] conv2d3x3_B3_merge_out_c0_exe15131;
    wire [0:0] conv2d3x3_B3_merge_out_c0_exe16141;
    wire [63:0] conv2d3x3_B3_merge_out_c0_exe323;
    wire [0:0] conv2d3x3_B3_merge_out_c0_exe432;
    wire [31:0] conv2d3x3_B3_merge_out_c0_exe534;
    wire [31:0] conv2d3x3_B3_merge_out_c0_exe650;
    wire [0:0] conv2d3x3_B3_merge_out_c0_exe753;
    wire [0:0] conv2d3x3_B3_merge_out_c0_exe862;
    wire [31:0] conv2d3x3_B3_merge_out_c0_exe972;
    wire [31:0] conv2d3x3_B3_merge_out_j_062150;
    wire [31:0] conv2d3x3_B3_merge_out_k_059;
    wire [0:0] conv2d3x3_B3_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B3_merge_out_stall_out_1;
    wire [31:0] conv2d3x3_B3_merge_out_tmp_058;
    wire [31:0] conv2d3x3_B3_merge_out_unnamed_conv2d3x33;
    wire [0:0] conv2d3x3_B3_merge_out_valid_out;


    // conv2d3x3_B3_merge(BLACKBOX,4)
    conv2d3x3_B3_merge theconv2d3x3_B3_merge (
        .in_c0_exe1082_0(in_c0_exe1082_0),
        .in_c0_exe1082_1(in_c0_exe1082_1),
        .in_c0_exe112_0(in_c0_exe112_0),
        .in_c0_exe112_1(in_c0_exe112_1),
        .in_c0_exe1186152_0(in_c0_exe1186152_0),
        .in_c0_exe1186152_1(in_c0_exe1186152_1),
        .in_c0_exe1191_0(in_c0_exe1191_0),
        .in_c0_exe1191_1(in_c0_exe1191_1),
        .in_c0_exe12102_0(in_c0_exe12102_0),
        .in_c0_exe12102_1(in_c0_exe12102_1),
        .in_c0_exe13112_0(in_c0_exe13112_0),
        .in_c0_exe13112_1(in_c0_exe13112_1),
        .in_c0_exe14121_0(in_c0_exe14121_0),
        .in_c0_exe14121_1(in_c0_exe14121_1),
        .in_c0_exe15131_0(in_c0_exe15131_0),
        .in_c0_exe15131_1(in_c0_exe15131_1),
        .in_c0_exe16141_0(in_c0_exe16141_0),
        .in_c0_exe16141_1(in_c0_exe16141_1),
        .in_c0_exe323_0(in_c0_exe323_0),
        .in_c0_exe323_1(in_c0_exe323_1),
        .in_c0_exe432_0(in_c0_exe432_0),
        .in_c0_exe432_1(in_c0_exe432_1),
        .in_c0_exe534_0(in_c0_exe534_0),
        .in_c0_exe534_1(in_c0_exe534_1),
        .in_c0_exe650_0(in_c0_exe650_0),
        .in_c0_exe650_1(in_c0_exe650_1),
        .in_c0_exe753_0(in_c0_exe753_0),
        .in_c0_exe753_1(in_c0_exe753_1),
        .in_c0_exe862_0(in_c0_exe862_0),
        .in_c0_exe862_1(in_c0_exe862_1),
        .in_c0_exe972_0(in_c0_exe972_0),
        .in_c0_exe972_1(in_c0_exe972_1),
        .in_j_062150_0(in_j_062150_0),
        .in_j_062150_1(in_j_062150_1),
        .in_k_059_0(in_k_059_0),
        .in_k_059_1(in_k_059_1),
        .in_stall_in(bb_conv2d3x3_B3_stall_region_out_stall_out),
        .in_tmp_058_0(in_tmp_058_0),
        .in_tmp_058_1(in_tmp_058_1),
        .in_unnamed_conv2d3x33_0(in_unnamed_conv2d3x33_0),
        .in_unnamed_conv2d3x33_1(in_unnamed_conv2d3x33_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c0_exe1082(conv2d3x3_B3_merge_out_c0_exe1082),
        .out_c0_exe112(conv2d3x3_B3_merge_out_c0_exe112),
        .out_c0_exe1186152(conv2d3x3_B3_merge_out_c0_exe1186152),
        .out_c0_exe1191(conv2d3x3_B3_merge_out_c0_exe1191),
        .out_c0_exe12102(conv2d3x3_B3_merge_out_c0_exe12102),
        .out_c0_exe13112(conv2d3x3_B3_merge_out_c0_exe13112),
        .out_c0_exe14121(conv2d3x3_B3_merge_out_c0_exe14121),
        .out_c0_exe15131(conv2d3x3_B3_merge_out_c0_exe15131),
        .out_c0_exe16141(conv2d3x3_B3_merge_out_c0_exe16141),
        .out_c0_exe323(conv2d3x3_B3_merge_out_c0_exe323),
        .out_c0_exe432(conv2d3x3_B3_merge_out_c0_exe432),
        .out_c0_exe534(conv2d3x3_B3_merge_out_c0_exe534),
        .out_c0_exe650(conv2d3x3_B3_merge_out_c0_exe650),
        .out_c0_exe753(conv2d3x3_B3_merge_out_c0_exe753),
        .out_c0_exe862(conv2d3x3_B3_merge_out_c0_exe862),
        .out_c0_exe972(conv2d3x3_B3_merge_out_c0_exe972),
        .out_j_062150(conv2d3x3_B3_merge_out_j_062150),
        .out_k_059(conv2d3x3_B3_merge_out_k_059),
        .out_stall_out_0(conv2d3x3_B3_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B3_merge_out_stall_out_1),
        .out_tmp_058(conv2d3x3_B3_merge_out_tmp_058),
        .out_unnamed_conv2d3x33(conv2d3x3_B3_merge_out_unnamed_conv2d3x33),
        .out_valid_out(conv2d3x3_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B3_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B3_stall_region thebb_conv2d3x3_B3_stall_region (
        .in_c0_exe1082(conv2d3x3_B3_merge_out_c0_exe1082),
        .in_c0_exe112(conv2d3x3_B3_merge_out_c0_exe112),
        .in_c0_exe1186152(conv2d3x3_B3_merge_out_c0_exe1186152),
        .in_c0_exe1191(conv2d3x3_B3_merge_out_c0_exe1191),
        .in_c0_exe12102(conv2d3x3_B3_merge_out_c0_exe12102),
        .in_c0_exe13112(conv2d3x3_B3_merge_out_c0_exe13112),
        .in_c0_exe14121(conv2d3x3_B3_merge_out_c0_exe14121),
        .in_c0_exe15131(conv2d3x3_B3_merge_out_c0_exe15131),
        .in_c0_exe16141(conv2d3x3_B3_merge_out_c0_exe16141),
        .in_c0_exe323(conv2d3x3_B3_merge_out_c0_exe323),
        .in_c0_exe432(conv2d3x3_B3_merge_out_c0_exe432),
        .in_c0_exe534(conv2d3x3_B3_merge_out_c0_exe534),
        .in_c0_exe650(conv2d3x3_B3_merge_out_c0_exe650),
        .in_c0_exe753(conv2d3x3_B3_merge_out_c0_exe753),
        .in_c0_exe862(conv2d3x3_B3_merge_out_c0_exe862),
        .in_c0_exe972(conv2d3x3_B3_merge_out_c0_exe972),
        .in_input_size(in_input_size),
        .in_j_062150(conv2d3x3_B3_merge_out_j_062150),
        .in_k_059(conv2d3x3_B3_merge_out_k_059),
        .in_stall_in(conv2d3x3_B3_branch_out_stall_out),
        .in_tmp_058(conv2d3x3_B3_merge_out_tmp_058),
        .in_unnamed_conv2d3x33(conv2d3x3_B3_merge_out_unnamed_conv2d3x33),
        .in_valid_in(conv2d3x3_B3_merge_out_valid_out),
        .out_c0_exe1082(bb_conv2d3x3_B3_stall_region_out_c0_exe1082),
        .out_c0_exe112(bb_conv2d3x3_B3_stall_region_out_c0_exe112),
        .out_c0_exe1186152(bb_conv2d3x3_B3_stall_region_out_c0_exe1186152),
        .out_c0_exe1191(bb_conv2d3x3_B3_stall_region_out_c0_exe1191),
        .out_c0_exe1195(bb_conv2d3x3_B3_stall_region_out_c0_exe1195),
        .out_c0_exe12102(bb_conv2d3x3_B3_stall_region_out_c0_exe12102),
        .out_c0_exe13112(bb_conv2d3x3_B3_stall_region_out_c0_exe13112),
        .out_c0_exe14121(bb_conv2d3x3_B3_stall_region_out_c0_exe14121),
        .out_c0_exe15131(bb_conv2d3x3_B3_stall_region_out_c0_exe15131),
        .out_c0_exe16141(bb_conv2d3x3_B3_stall_region_out_c0_exe16141),
        .out_c0_exe2196(bb_conv2d3x3_B3_stall_region_out_c0_exe2196),
        .out_c0_exe323(bb_conv2d3x3_B3_stall_region_out_c0_exe323),
        .out_c0_exe432(bb_conv2d3x3_B3_stall_region_out_c0_exe432),
        .out_c0_exe534(bb_conv2d3x3_B3_stall_region_out_c0_exe534),
        .out_c0_exe650(bb_conv2d3x3_B3_stall_region_out_c0_exe650),
        .out_c0_exe753(bb_conv2d3x3_B3_stall_region_out_c0_exe753),
        .out_c0_exe862(bb_conv2d3x3_B3_stall_region_out_c0_exe862),
        .out_c0_exe972(bb_conv2d3x3_B3_stall_region_out_c0_exe972),
        .out_j_062150(bb_conv2d3x3_B3_stall_region_out_j_062150),
        .out_k_059(bb_conv2d3x3_B3_stall_region_out_k_059),
        .out_mul46_add4(bb_conv2d3x3_B3_stall_region_out_mul46_add4),
        .out_stall_out(bb_conv2d3x3_B3_stall_region_out_stall_out),
        .out_tmp_058(bb_conv2d3x3_B3_stall_region_out_tmp_058),
        .out_unnamed_conv2d3x33(bb_conv2d3x3_B3_stall_region_out_unnamed_conv2d3x33),
        .out_valid_out(bb_conv2d3x3_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B3_branch(BLACKBOX,3)
    conv2d3x3_B3_branch theconv2d3x3_B3_branch (
        .in_c0_exe1082(bb_conv2d3x3_B3_stall_region_out_c0_exe1082),
        .in_c0_exe112(bb_conv2d3x3_B3_stall_region_out_c0_exe112),
        .in_c0_exe1186152(bb_conv2d3x3_B3_stall_region_out_c0_exe1186152),
        .in_c0_exe1191(bb_conv2d3x3_B3_stall_region_out_c0_exe1191),
        .in_c0_exe1195(bb_conv2d3x3_B3_stall_region_out_c0_exe1195),
        .in_c0_exe12102(bb_conv2d3x3_B3_stall_region_out_c0_exe12102),
        .in_c0_exe13112(bb_conv2d3x3_B3_stall_region_out_c0_exe13112),
        .in_c0_exe14121(bb_conv2d3x3_B3_stall_region_out_c0_exe14121),
        .in_c0_exe15131(bb_conv2d3x3_B3_stall_region_out_c0_exe15131),
        .in_c0_exe16141(bb_conv2d3x3_B3_stall_region_out_c0_exe16141),
        .in_c0_exe2196(bb_conv2d3x3_B3_stall_region_out_c0_exe2196),
        .in_c0_exe323(bb_conv2d3x3_B3_stall_region_out_c0_exe323),
        .in_c0_exe432(bb_conv2d3x3_B3_stall_region_out_c0_exe432),
        .in_c0_exe534(bb_conv2d3x3_B3_stall_region_out_c0_exe534),
        .in_c0_exe650(bb_conv2d3x3_B3_stall_region_out_c0_exe650),
        .in_c0_exe753(bb_conv2d3x3_B3_stall_region_out_c0_exe753),
        .in_c0_exe862(bb_conv2d3x3_B3_stall_region_out_c0_exe862),
        .in_c0_exe972(bb_conv2d3x3_B3_stall_region_out_c0_exe972),
        .in_j_062150(bb_conv2d3x3_B3_stall_region_out_j_062150),
        .in_k_059(bb_conv2d3x3_B3_stall_region_out_k_059),
        .in_mul46_add4(bb_conv2d3x3_B3_stall_region_out_mul46_add4),
        .in_stall_in_0(in_stall_in_0),
        .in_tmp_058(bb_conv2d3x3_B3_stall_region_out_tmp_058),
        .in_unnamed_conv2d3x33(bb_conv2d3x3_B3_stall_region_out_unnamed_conv2d3x33),
        .in_valid_in(bb_conv2d3x3_B3_stall_region_out_valid_out),
        .out_c0_exe1082(conv2d3x3_B3_branch_out_c0_exe1082),
        .out_c0_exe112(conv2d3x3_B3_branch_out_c0_exe112),
        .out_c0_exe1186152(conv2d3x3_B3_branch_out_c0_exe1186152),
        .out_c0_exe1191(conv2d3x3_B3_branch_out_c0_exe1191),
        .out_c0_exe1195(conv2d3x3_B3_branch_out_c0_exe1195),
        .out_c0_exe12102(conv2d3x3_B3_branch_out_c0_exe12102),
        .out_c0_exe13112(conv2d3x3_B3_branch_out_c0_exe13112),
        .out_c0_exe14121(conv2d3x3_B3_branch_out_c0_exe14121),
        .out_c0_exe15131(conv2d3x3_B3_branch_out_c0_exe15131),
        .out_c0_exe16141(conv2d3x3_B3_branch_out_c0_exe16141),
        .out_c0_exe2196(conv2d3x3_B3_branch_out_c0_exe2196),
        .out_c0_exe323(conv2d3x3_B3_branch_out_c0_exe323),
        .out_c0_exe432(conv2d3x3_B3_branch_out_c0_exe432),
        .out_c0_exe534(conv2d3x3_B3_branch_out_c0_exe534),
        .out_c0_exe650(conv2d3x3_B3_branch_out_c0_exe650),
        .out_c0_exe753(conv2d3x3_B3_branch_out_c0_exe753),
        .out_c0_exe862(conv2d3x3_B3_branch_out_c0_exe862),
        .out_c0_exe972(conv2d3x3_B3_branch_out_c0_exe972),
        .out_j_062150(conv2d3x3_B3_branch_out_j_062150),
        .out_k_059(conv2d3x3_B3_branch_out_k_059),
        .out_mul46_add4(conv2d3x3_B3_branch_out_mul46_add4),
        .out_stall_out(conv2d3x3_B3_branch_out_stall_out),
        .out_tmp_058(conv2d3x3_B3_branch_out_tmp_058),
        .out_unnamed_conv2d3x33(conv2d3x3_B3_branch_out_unnamed_conv2d3x33),
        .out_valid_out_0(conv2d3x3_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1082(GPOUT,54)
    assign out_c0_exe1082 = conv2d3x3_B3_branch_out_c0_exe1082;

    // out_c0_exe112(GPOUT,55)
    assign out_c0_exe112 = conv2d3x3_B3_branch_out_c0_exe112;

    // out_c0_exe1186152(GPOUT,56)
    assign out_c0_exe1186152 = conv2d3x3_B3_branch_out_c0_exe1186152;

    // out_c0_exe1191(GPOUT,57)
    assign out_c0_exe1191 = conv2d3x3_B3_branch_out_c0_exe1191;

    // out_c0_exe1195(GPOUT,58)
    assign out_c0_exe1195 = conv2d3x3_B3_branch_out_c0_exe1195;

    // out_c0_exe12102(GPOUT,59)
    assign out_c0_exe12102 = conv2d3x3_B3_branch_out_c0_exe12102;

    // out_c0_exe13112(GPOUT,60)
    assign out_c0_exe13112 = conv2d3x3_B3_branch_out_c0_exe13112;

    // out_c0_exe14121(GPOUT,61)
    assign out_c0_exe14121 = conv2d3x3_B3_branch_out_c0_exe14121;

    // out_c0_exe15131(GPOUT,62)
    assign out_c0_exe15131 = conv2d3x3_B3_branch_out_c0_exe15131;

    // out_c0_exe16141(GPOUT,63)
    assign out_c0_exe16141 = conv2d3x3_B3_branch_out_c0_exe16141;

    // out_c0_exe2196(GPOUT,64)
    assign out_c0_exe2196 = conv2d3x3_B3_branch_out_c0_exe2196;

    // out_c0_exe323(GPOUT,65)
    assign out_c0_exe323 = conv2d3x3_B3_branch_out_c0_exe323;

    // out_c0_exe432(GPOUT,66)
    assign out_c0_exe432 = conv2d3x3_B3_branch_out_c0_exe432;

    // out_c0_exe534(GPOUT,67)
    assign out_c0_exe534 = conv2d3x3_B3_branch_out_c0_exe534;

    // out_c0_exe650(GPOUT,68)
    assign out_c0_exe650 = conv2d3x3_B3_branch_out_c0_exe650;

    // out_c0_exe753(GPOUT,69)
    assign out_c0_exe753 = conv2d3x3_B3_branch_out_c0_exe753;

    // out_c0_exe862(GPOUT,70)
    assign out_c0_exe862 = conv2d3x3_B3_branch_out_c0_exe862;

    // out_c0_exe972(GPOUT,71)
    assign out_c0_exe972 = conv2d3x3_B3_branch_out_c0_exe972;

    // out_j_062150(GPOUT,72)
    assign out_j_062150 = conv2d3x3_B3_branch_out_j_062150;

    // out_k_059(GPOUT,73)
    assign out_k_059 = conv2d3x3_B3_branch_out_k_059;

    // out_mul46_add4(GPOUT,74)
    assign out_mul46_add4 = conv2d3x3_B3_branch_out_mul46_add4;

    // out_stall_out_0(GPOUT,75)
    assign out_stall_out_0 = conv2d3x3_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,76)
    assign out_stall_out_1 = conv2d3x3_B3_merge_out_stall_out_1;

    // out_tmp_058(GPOUT,77)
    assign out_tmp_058 = conv2d3x3_B3_branch_out_tmp_058;

    // out_unnamed_conv2d3x33(GPOUT,78)
    assign out_unnamed_conv2d3x33 = conv2d3x3_B3_branch_out_unnamed_conv2d3x33;

    // out_valid_in_0(GPOUT,79)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,80)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,81)
    assign out_valid_out_0 = conv2d3x3_B3_branch_out_valid_out_0;

endmodule
