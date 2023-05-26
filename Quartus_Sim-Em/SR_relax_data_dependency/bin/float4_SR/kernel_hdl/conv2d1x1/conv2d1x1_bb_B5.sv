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

// SystemVerilog created from conv2d1x1_bb_B5
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B5 (
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_forked17242_0,
    input wire [0:0] in_forked17242_1,
    input wire [0:0] in_forked59_0,
    input wire [0:0] in_forked59_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_lm96251_0,
    input wire [31:0] in_lm96251_1,
    input wire [31:0] in_mul21254_0,
    input wire [31:0] in_mul21254_1,
    input wire [31:0] in_mul245_0,
    input wire [31:0] in_mul245_1,
    input wire [31:0] in_mul97257_0,
    input wire [31:0] in_mul97257_1,
    input wire [0:0] in_notcmp24260_0,
    input wire [0:0] in_notcmp24260_1,
    input wire [63:0] in_output_im,
    input wire [0:0] in_phi_decision102_xor248_0,
    input wire [0:0] in_phi_decision102_xor248_1,
    input wire [31:0] in_pop12266_0,
    input wire [31:0] in_pop12266_1,
    input wire [31:0] in_spec_select156_0,
    input wire [31:0] in_spec_select156_1,
    input wire [31:0] in_spec_select323162_0,
    input wire [31:0] in_spec_select323162_1,
    input wire [31:0] in_spec_select32363_pop13269_0,
    input wire [31:0] in_spec_select32363_pop13269_1,
    input wire [31:0] in_spec_select324168_0,
    input wire [31:0] in_spec_select324168_1,
    input wire [31:0] in_spec_select32466_pop14272_0,
    input wire [31:0] in_spec_select32466_pop14272_1,
    input wire [31:0] in_spec_select325174_0,
    input wire [31:0] in_spec_select325174_1,
    input wire [31:0] in_spec_select32569_pop15275_0,
    input wire [31:0] in_spec_select32569_pop15275_1,
    input wire [31:0] in_spec_select326180_0,
    input wire [31:0] in_spec_select326180_1,
    input wire [31:0] in_spec_select32672_pop16278_0,
    input wire [31:0] in_spec_select32672_pop16278_1,
    input wire [31:0] in_spec_select327186_0,
    input wire [31:0] in_spec_select327186_1,
    input wire [31:0] in_spec_select32775_pop17281_0,
    input wire [31:0] in_spec_select32775_pop17281_1,
    input wire [31:0] in_spec_select328192_0,
    input wire [31:0] in_spec_select328192_1,
    input wire [31:0] in_spec_select32878_pop18284_0,
    input wire [31:0] in_spec_select32878_pop18284_1,
    input wire [31:0] in_spec_select329198_0,
    input wire [31:0] in_spec_select329198_1,
    input wire [31:0] in_spec_select32981_pop19287_0,
    input wire [31:0] in_spec_select32981_pop19287_1,
    input wire [31:0] in_spec_select330204_0,
    input wire [31:0] in_spec_select330204_1,
    input wire [31:0] in_spec_select33084_pop20290_0,
    input wire [31:0] in_spec_select33084_pop20290_1,
    input wire [31:0] in_spec_select331210_0,
    input wire [31:0] in_spec_select331210_1,
    input wire [31:0] in_spec_select33187_pop21293_0,
    input wire [31:0] in_spec_select33187_pop21293_1,
    input wire [31:0] in_spec_select332216_0,
    input wire [31:0] in_spec_select332216_1,
    input wire [31:0] in_spec_select33290_pop22296_0,
    input wire [31:0] in_spec_select33290_pop22296_1,
    input wire [31:0] in_spec_select333222_0,
    input wire [31:0] in_spec_select333222_1,
    input wire [31:0] in_spec_select33393_pop23299_0,
    input wire [31:0] in_spec_select33393_pop23299_1,
    input wire [31:0] in_spec_select334228_0,
    input wire [31:0] in_spec_select334228_1,
    input wire [31:0] in_spec_select33496_pop24303_0,
    input wire [31:0] in_spec_select33496_pop24303_1,
    input wire [31:0] in_spec_select335234_0,
    input wire [31:0] in_spec_select335234_1,
    input wire [31:0] in_spec_select33599_pop25306_0,
    input wire [31:0] in_spec_select33599_pop25306_1,
    input wire [31:0] in_spec_select336102_pop26309_0,
    input wire [31:0] in_spec_select336102_pop26309_1,
    input wire [31:0] in_spec_select336240_0,
    input wire [31:0] in_spec_select336240_1,
    input wire [31:0] in_spec_select60_pop11263_0,
    input wire [31:0] in_spec_select60_pop11263_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_conv2d1x110_0,
    input wire [0:0] in_unnamed_conv2d1x110_1,
    input wire [32:0] in_unnamed_conv2d1x111_0,
    input wire [32:0] in_unnamed_conv2d1x111_1,
    input wire [0:0] in_unnamed_conv2d1x112_0,
    input wire [0:0] in_unnamed_conv2d1x112_1,
    input wire [31:0] in_unnamed_conv2d1x18_0,
    input wire [31:0] in_unnamed_conv2d1x18_1,
    input wire [0:0] in_unnamed_conv2d1x19_0,
    input wire [0:0] in_unnamed_conv2d1x19_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10505,
    output wire [31:0] out_c0_exe11506,
    output wire [31:0] out_c0_exe12507,
    output wire [31:0] out_c0_exe13508,
    output wire [31:0] out_c0_exe14509,
    output wire [0:0] out_c0_exe1496,
    output wire [31:0] out_c0_exe15510,
    output wire [31:0] out_c0_exe16511,
    output wire [31:0] out_c0_exe17512,
    output wire [31:0] out_c0_exe18513,
    output wire [31:0] out_c0_exe19514,
    output wire [31:0] out_c0_exe20515,
    output wire [31:0] out_c0_exe21516,
    output wire [31:0] out_c0_exe22517,
    output wire [31:0] out_c0_exe23518,
    output wire [31:0] out_c0_exe24519,
    output wire [0:0] out_c0_exe2497,
    output wire [31:0] out_c0_exe25520,
    output wire [0:0] out_c0_exe26521,
    output wire [0:0] out_c0_exe27522,
    output wire [31:0] out_c0_exe28523,
    output wire [31:0] out_c0_exe29524,
    output wire [31:0] out_c0_exe30525,
    output wire [0:0] out_c0_exe31526,
    output wire [0:0] out_c0_exe32527,
    output wire [31:0] out_c0_exe33528,
    output wire [31:0] out_c0_exe34529,
    output wire [0:0] out_c0_exe3498,
    output wire [31:0] out_c0_exe35530,
    output wire [31:0] out_c0_exe36531,
    output wire [31:0] out_c0_exe37532,
    output wire [31:0] out_c0_exe38533,
    output wire [31:0] out_c0_exe39534,
    output wire [31:0] out_c0_exe40535,
    output wire [31:0] out_c0_exe41536,
    output wire [31:0] out_c0_exe42537,
    output wire [31:0] out_c0_exe43538,
    output wire [31:0] out_c0_exe44539,
    output wire [0:0] out_c0_exe4499,
    output wire [31:0] out_c0_exe45,
    output wire [31:0] out_c0_exe46,
    output wire [31:0] out_c0_exe47,
    output wire [31:0] out_c0_exe48,
    output wire [0:0] out_c0_exe49,
    output wire [31:0] out_c0_exe50,
    output wire [0:0] out_c0_exe51,
    output wire [0:0] out_c0_exe52,
    output wire [0:0] out_c0_exe53,
    output wire [32:0] out_c0_exe54,
    output wire [31:0] out_c0_exe55,
    output wire [0:0] out_c0_exe5500,
    output wire [31:0] out_c0_exe56,
    output wire [31:0] out_c0_exe57,
    output wire [0:0] out_c0_exe58,
    output wire [0:0] out_c0_exe59,
    output wire [31:0] out_c0_exe60,
    output wire [31:0] out_c0_exe61,
    output wire [31:0] out_c0_exe62,
    output wire [31:0] out_c0_exe63,
    output wire [31:0] out_c0_exe64,
    output wire [31:0] out_c0_exe65,
    output wire [0:0] out_c0_exe6501,
    output wire [31:0] out_c0_exe66,
    output wire [31:0] out_c0_exe67,
    output wire [31:0] out_c0_exe68,
    output wire [31:0] out_c0_exe69,
    output wire [31:0] out_c0_exe70,
    output wire [31:0] out_c0_exe71,
    output wire [31:0] out_c0_exe72,
    output wire [31:0] out_c0_exe73,
    output wire [31:0] out_c0_exe74,
    output wire [31:0] out_c0_exe75,
    output wire [0:0] out_c0_exe7502,
    output wire [31:0] out_c0_exe8503,
    output wire [31:0] out_c0_exe9504,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d1x1_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe10505;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe11506;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe12507;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe13508;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe14509;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1496;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe15510;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe16511;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe17512;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe18513;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe19514;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe20515;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe21516;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe22517;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe23518;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe24519;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe2497;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe25520;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe26521;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe27522;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe28523;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe29524;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe30525;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe31526;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe32527;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe33528;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe34529;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe3498;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe35530;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe36531;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe37532;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe38533;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe39534;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe40535;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe41536;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe42537;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe43538;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe44539;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe4499;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe45;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe46;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe47;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe48;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe49;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe50;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe51;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe52;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe53;
    wire [32:0] bb_conv2d1x1_B5_stall_region_out_c0_exe54;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe55;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe5500;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe56;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe57;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe58;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe59;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe60;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe61;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe62;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe63;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe64;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe65;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe6501;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe66;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe67;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe68;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe69;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe70;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe71;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe72;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe73;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe74;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe75;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe7502;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe8503;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe9504;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_valid_out;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe10505;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe11506;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe12507;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe13508;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe14509;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe1496;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe15510;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe16511;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe17512;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe18513;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe19514;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe20515;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe21516;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe22517;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe23518;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe24519;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe2497;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe25520;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe26521;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe27522;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe28523;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe29524;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe30525;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe31526;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe32527;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe33528;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe34529;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe3498;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe35530;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe36531;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe37532;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe38533;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe39534;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe40535;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe41536;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe42537;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe43538;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe44539;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe4499;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe45;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe46;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe47;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe48;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe49;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe50;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe51;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe52;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe53;
    wire [32:0] conv2d1x1_B5_branch_out_c0_exe54;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe55;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe5500;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe56;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe57;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe58;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe59;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe60;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe61;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe62;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe63;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe64;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe65;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe6501;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe66;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe67;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe68;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe69;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe70;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe71;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe72;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe73;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe74;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe75;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe7502;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe8503;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe9504;
    wire [0:0] conv2d1x1_B5_branch_out_stall_out;
    wire [0:0] conv2d1x1_B5_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B5_merge_out_forked17242;
    wire [0:0] conv2d1x1_B5_merge_out_forked59;
    wire [31:0] conv2d1x1_B5_merge_out_lm96251;
    wire [31:0] conv2d1x1_B5_merge_out_mul21254;
    wire [31:0] conv2d1x1_B5_merge_out_mul245;
    wire [31:0] conv2d1x1_B5_merge_out_mul97257;
    wire [0:0] conv2d1x1_B5_merge_out_notcmp24260;
    wire [0:0] conv2d1x1_B5_merge_out_phi_decision102_xor248;
    wire [31:0] conv2d1x1_B5_merge_out_pop12266;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select156;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select323162;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select32363_pop13269;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select324168;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select32466_pop14272;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select325174;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select32569_pop15275;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select326180;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select32672_pop16278;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select327186;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select32775_pop17281;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select328192;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select32878_pop18284;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select329198;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select32981_pop19287;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select330204;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select33084_pop20290;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select331210;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select33187_pop21293;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select332216;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select33290_pop22296;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select333222;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select33393_pop23299;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select334228;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select33496_pop24303;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select335234;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select33599_pop25306;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select336102_pop26309;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select336240;
    wire [31:0] conv2d1x1_B5_merge_out_spec_select60_pop11263;
    wire [0:0] conv2d1x1_B5_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B5_merge_out_stall_out_1;
    wire [0:0] conv2d1x1_B5_merge_out_unnamed_conv2d1x110;
    wire [32:0] conv2d1x1_B5_merge_out_unnamed_conv2d1x111;
    wire [0:0] conv2d1x1_B5_merge_out_unnamed_conv2d1x112;
    wire [31:0] conv2d1x1_B5_merge_out_unnamed_conv2d1x18;
    wire [0:0] conv2d1x1_B5_merge_out_unnamed_conv2d1x19;
    wire [0:0] conv2d1x1_B5_merge_out_valid_out;


    // conv2d1x1_B5_merge(BLACKBOX,4)
    conv2d1x1_B5_merge theconv2d1x1_B5_merge (
        .in_forked17242_0(in_forked17242_0),
        .in_forked17242_1(in_forked17242_1),
        .in_forked59_0(in_forked59_0),
        .in_forked59_1(in_forked59_1),
        .in_lm96251_0(in_lm96251_0),
        .in_lm96251_1(in_lm96251_1),
        .in_mul21254_0(in_mul21254_0),
        .in_mul21254_1(in_mul21254_1),
        .in_mul245_0(in_mul245_0),
        .in_mul245_1(in_mul245_1),
        .in_mul97257_0(in_mul97257_0),
        .in_mul97257_1(in_mul97257_1),
        .in_notcmp24260_0(in_notcmp24260_0),
        .in_notcmp24260_1(in_notcmp24260_1),
        .in_phi_decision102_xor248_0(in_phi_decision102_xor248_0),
        .in_phi_decision102_xor248_1(in_phi_decision102_xor248_1),
        .in_pop12266_0(in_pop12266_0),
        .in_pop12266_1(in_pop12266_1),
        .in_spec_select156_0(in_spec_select156_0),
        .in_spec_select156_1(in_spec_select156_1),
        .in_spec_select323162_0(in_spec_select323162_0),
        .in_spec_select323162_1(in_spec_select323162_1),
        .in_spec_select32363_pop13269_0(in_spec_select32363_pop13269_0),
        .in_spec_select32363_pop13269_1(in_spec_select32363_pop13269_1),
        .in_spec_select324168_0(in_spec_select324168_0),
        .in_spec_select324168_1(in_spec_select324168_1),
        .in_spec_select32466_pop14272_0(in_spec_select32466_pop14272_0),
        .in_spec_select32466_pop14272_1(in_spec_select32466_pop14272_1),
        .in_spec_select325174_0(in_spec_select325174_0),
        .in_spec_select325174_1(in_spec_select325174_1),
        .in_spec_select32569_pop15275_0(in_spec_select32569_pop15275_0),
        .in_spec_select32569_pop15275_1(in_spec_select32569_pop15275_1),
        .in_spec_select326180_0(in_spec_select326180_0),
        .in_spec_select326180_1(in_spec_select326180_1),
        .in_spec_select32672_pop16278_0(in_spec_select32672_pop16278_0),
        .in_spec_select32672_pop16278_1(in_spec_select32672_pop16278_1),
        .in_spec_select327186_0(in_spec_select327186_0),
        .in_spec_select327186_1(in_spec_select327186_1),
        .in_spec_select32775_pop17281_0(in_spec_select32775_pop17281_0),
        .in_spec_select32775_pop17281_1(in_spec_select32775_pop17281_1),
        .in_spec_select328192_0(in_spec_select328192_0),
        .in_spec_select328192_1(in_spec_select328192_1),
        .in_spec_select32878_pop18284_0(in_spec_select32878_pop18284_0),
        .in_spec_select32878_pop18284_1(in_spec_select32878_pop18284_1),
        .in_spec_select329198_0(in_spec_select329198_0),
        .in_spec_select329198_1(in_spec_select329198_1),
        .in_spec_select32981_pop19287_0(in_spec_select32981_pop19287_0),
        .in_spec_select32981_pop19287_1(in_spec_select32981_pop19287_1),
        .in_spec_select330204_0(in_spec_select330204_0),
        .in_spec_select330204_1(in_spec_select330204_1),
        .in_spec_select33084_pop20290_0(in_spec_select33084_pop20290_0),
        .in_spec_select33084_pop20290_1(in_spec_select33084_pop20290_1),
        .in_spec_select331210_0(in_spec_select331210_0),
        .in_spec_select331210_1(in_spec_select331210_1),
        .in_spec_select33187_pop21293_0(in_spec_select33187_pop21293_0),
        .in_spec_select33187_pop21293_1(in_spec_select33187_pop21293_1),
        .in_spec_select332216_0(in_spec_select332216_0),
        .in_spec_select332216_1(in_spec_select332216_1),
        .in_spec_select33290_pop22296_0(in_spec_select33290_pop22296_0),
        .in_spec_select33290_pop22296_1(in_spec_select33290_pop22296_1),
        .in_spec_select333222_0(in_spec_select333222_0),
        .in_spec_select333222_1(in_spec_select333222_1),
        .in_spec_select33393_pop23299_0(in_spec_select33393_pop23299_0),
        .in_spec_select33393_pop23299_1(in_spec_select33393_pop23299_1),
        .in_spec_select334228_0(in_spec_select334228_0),
        .in_spec_select334228_1(in_spec_select334228_1),
        .in_spec_select33496_pop24303_0(in_spec_select33496_pop24303_0),
        .in_spec_select33496_pop24303_1(in_spec_select33496_pop24303_1),
        .in_spec_select335234_0(in_spec_select335234_0),
        .in_spec_select335234_1(in_spec_select335234_1),
        .in_spec_select33599_pop25306_0(in_spec_select33599_pop25306_0),
        .in_spec_select33599_pop25306_1(in_spec_select33599_pop25306_1),
        .in_spec_select336102_pop26309_0(in_spec_select336102_pop26309_0),
        .in_spec_select336102_pop26309_1(in_spec_select336102_pop26309_1),
        .in_spec_select336240_0(in_spec_select336240_0),
        .in_spec_select336240_1(in_spec_select336240_1),
        .in_spec_select60_pop11263_0(in_spec_select60_pop11263_0),
        .in_spec_select60_pop11263_1(in_spec_select60_pop11263_1),
        .in_stall_in(bb_conv2d1x1_B5_stall_region_out_stall_out),
        .in_unnamed_conv2d1x110_0(in_unnamed_conv2d1x110_0),
        .in_unnamed_conv2d1x110_1(in_unnamed_conv2d1x110_1),
        .in_unnamed_conv2d1x111_0(in_unnamed_conv2d1x111_0),
        .in_unnamed_conv2d1x111_1(in_unnamed_conv2d1x111_1),
        .in_unnamed_conv2d1x112_0(in_unnamed_conv2d1x112_0),
        .in_unnamed_conv2d1x112_1(in_unnamed_conv2d1x112_1),
        .in_unnamed_conv2d1x18_0(in_unnamed_conv2d1x18_0),
        .in_unnamed_conv2d1x18_1(in_unnamed_conv2d1x18_1),
        .in_unnamed_conv2d1x19_0(in_unnamed_conv2d1x19_0),
        .in_unnamed_conv2d1x19_1(in_unnamed_conv2d1x19_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked17242(conv2d1x1_B5_merge_out_forked17242),
        .out_forked59(conv2d1x1_B5_merge_out_forked59),
        .out_lm96251(conv2d1x1_B5_merge_out_lm96251),
        .out_mul21254(conv2d1x1_B5_merge_out_mul21254),
        .out_mul245(conv2d1x1_B5_merge_out_mul245),
        .out_mul97257(conv2d1x1_B5_merge_out_mul97257),
        .out_notcmp24260(conv2d1x1_B5_merge_out_notcmp24260),
        .out_phi_decision102_xor248(conv2d1x1_B5_merge_out_phi_decision102_xor248),
        .out_pop12266(conv2d1x1_B5_merge_out_pop12266),
        .out_spec_select156(conv2d1x1_B5_merge_out_spec_select156),
        .out_spec_select323162(conv2d1x1_B5_merge_out_spec_select323162),
        .out_spec_select32363_pop13269(conv2d1x1_B5_merge_out_spec_select32363_pop13269),
        .out_spec_select324168(conv2d1x1_B5_merge_out_spec_select324168),
        .out_spec_select32466_pop14272(conv2d1x1_B5_merge_out_spec_select32466_pop14272),
        .out_spec_select325174(conv2d1x1_B5_merge_out_spec_select325174),
        .out_spec_select32569_pop15275(conv2d1x1_B5_merge_out_spec_select32569_pop15275),
        .out_spec_select326180(conv2d1x1_B5_merge_out_spec_select326180),
        .out_spec_select32672_pop16278(conv2d1x1_B5_merge_out_spec_select32672_pop16278),
        .out_spec_select327186(conv2d1x1_B5_merge_out_spec_select327186),
        .out_spec_select32775_pop17281(conv2d1x1_B5_merge_out_spec_select32775_pop17281),
        .out_spec_select328192(conv2d1x1_B5_merge_out_spec_select328192),
        .out_spec_select32878_pop18284(conv2d1x1_B5_merge_out_spec_select32878_pop18284),
        .out_spec_select329198(conv2d1x1_B5_merge_out_spec_select329198),
        .out_spec_select32981_pop19287(conv2d1x1_B5_merge_out_spec_select32981_pop19287),
        .out_spec_select330204(conv2d1x1_B5_merge_out_spec_select330204),
        .out_spec_select33084_pop20290(conv2d1x1_B5_merge_out_spec_select33084_pop20290),
        .out_spec_select331210(conv2d1x1_B5_merge_out_spec_select331210),
        .out_spec_select33187_pop21293(conv2d1x1_B5_merge_out_spec_select33187_pop21293),
        .out_spec_select332216(conv2d1x1_B5_merge_out_spec_select332216),
        .out_spec_select33290_pop22296(conv2d1x1_B5_merge_out_spec_select33290_pop22296),
        .out_spec_select333222(conv2d1x1_B5_merge_out_spec_select333222),
        .out_spec_select33393_pop23299(conv2d1x1_B5_merge_out_spec_select33393_pop23299),
        .out_spec_select334228(conv2d1x1_B5_merge_out_spec_select334228),
        .out_spec_select33496_pop24303(conv2d1x1_B5_merge_out_spec_select33496_pop24303),
        .out_spec_select335234(conv2d1x1_B5_merge_out_spec_select335234),
        .out_spec_select33599_pop25306(conv2d1x1_B5_merge_out_spec_select33599_pop25306),
        .out_spec_select336102_pop26309(conv2d1x1_B5_merge_out_spec_select336102_pop26309),
        .out_spec_select336240(conv2d1x1_B5_merge_out_spec_select336240),
        .out_spec_select60_pop11263(conv2d1x1_B5_merge_out_spec_select60_pop11263),
        .out_stall_out_0(conv2d1x1_B5_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B5_merge_out_stall_out_1),
        .out_unnamed_conv2d1x110(conv2d1x1_B5_merge_out_unnamed_conv2d1x110),
        .out_unnamed_conv2d1x111(conv2d1x1_B5_merge_out_unnamed_conv2d1x111),
        .out_unnamed_conv2d1x112(conv2d1x1_B5_merge_out_unnamed_conv2d1x112),
        .out_unnamed_conv2d1x18(conv2d1x1_B5_merge_out_unnamed_conv2d1x18),
        .out_unnamed_conv2d1x19(conv2d1x1_B5_merge_out_unnamed_conv2d1x19),
        .out_valid_out(conv2d1x1_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B5_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B5_stall_region thebb_conv2d1x1_B5_stall_region (
        .in_forked17242(conv2d1x1_B5_merge_out_forked17242),
        .in_forked59(conv2d1x1_B5_merge_out_forked59),
        .in_lm96251(conv2d1x1_B5_merge_out_lm96251),
        .in_mul21254(conv2d1x1_B5_merge_out_mul21254),
        .in_mul245(conv2d1x1_B5_merge_out_mul245),
        .in_mul97257(conv2d1x1_B5_merge_out_mul97257),
        .in_notcmp24260(conv2d1x1_B5_merge_out_notcmp24260),
        .in_phi_decision102_xor248(conv2d1x1_B5_merge_out_phi_decision102_xor248),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop12266(conv2d1x1_B5_merge_out_pop12266),
        .in_spec_select156(conv2d1x1_B5_merge_out_spec_select156),
        .in_spec_select323162(conv2d1x1_B5_merge_out_spec_select323162),
        .in_spec_select32363_pop13269(conv2d1x1_B5_merge_out_spec_select32363_pop13269),
        .in_spec_select324168(conv2d1x1_B5_merge_out_spec_select324168),
        .in_spec_select32466_pop14272(conv2d1x1_B5_merge_out_spec_select32466_pop14272),
        .in_spec_select325174(conv2d1x1_B5_merge_out_spec_select325174),
        .in_spec_select32569_pop15275(conv2d1x1_B5_merge_out_spec_select32569_pop15275),
        .in_spec_select326180(conv2d1x1_B5_merge_out_spec_select326180),
        .in_spec_select32672_pop16278(conv2d1x1_B5_merge_out_spec_select32672_pop16278),
        .in_spec_select327186(conv2d1x1_B5_merge_out_spec_select327186),
        .in_spec_select32775_pop17281(conv2d1x1_B5_merge_out_spec_select32775_pop17281),
        .in_spec_select328192(conv2d1x1_B5_merge_out_spec_select328192),
        .in_spec_select32878_pop18284(conv2d1x1_B5_merge_out_spec_select32878_pop18284),
        .in_spec_select329198(conv2d1x1_B5_merge_out_spec_select329198),
        .in_spec_select32981_pop19287(conv2d1x1_B5_merge_out_spec_select32981_pop19287),
        .in_spec_select330204(conv2d1x1_B5_merge_out_spec_select330204),
        .in_spec_select33084_pop20290(conv2d1x1_B5_merge_out_spec_select33084_pop20290),
        .in_spec_select331210(conv2d1x1_B5_merge_out_spec_select331210),
        .in_spec_select33187_pop21293(conv2d1x1_B5_merge_out_spec_select33187_pop21293),
        .in_spec_select332216(conv2d1x1_B5_merge_out_spec_select332216),
        .in_spec_select33290_pop22296(conv2d1x1_B5_merge_out_spec_select33290_pop22296),
        .in_spec_select333222(conv2d1x1_B5_merge_out_spec_select333222),
        .in_spec_select33393_pop23299(conv2d1x1_B5_merge_out_spec_select33393_pop23299),
        .in_spec_select334228(conv2d1x1_B5_merge_out_spec_select334228),
        .in_spec_select33496_pop24303(conv2d1x1_B5_merge_out_spec_select33496_pop24303),
        .in_spec_select335234(conv2d1x1_B5_merge_out_spec_select335234),
        .in_spec_select33599_pop25306(conv2d1x1_B5_merge_out_spec_select33599_pop25306),
        .in_spec_select336102_pop26309(conv2d1x1_B5_merge_out_spec_select336102_pop26309),
        .in_spec_select336240(conv2d1x1_B5_merge_out_spec_select336240),
        .in_spec_select60_pop11263(conv2d1x1_B5_merge_out_spec_select60_pop11263),
        .in_stall_in(conv2d1x1_B5_branch_out_stall_out),
        .in_unnamed_conv2d1x110(conv2d1x1_B5_merge_out_unnamed_conv2d1x110),
        .in_unnamed_conv2d1x111(conv2d1x1_B5_merge_out_unnamed_conv2d1x111),
        .in_unnamed_conv2d1x112(conv2d1x1_B5_merge_out_unnamed_conv2d1x112),
        .in_unnamed_conv2d1x18(conv2d1x1_B5_merge_out_unnamed_conv2d1x18),
        .in_unnamed_conv2d1x19(conv2d1x1_B5_merge_out_unnamed_conv2d1x19),
        .in_valid_in(conv2d1x1_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out(bb_conv2d1x1_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out(bb_conv2d1x1_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out),
        .out_c0_exe10505(bb_conv2d1x1_B5_stall_region_out_c0_exe10505),
        .out_c0_exe11506(bb_conv2d1x1_B5_stall_region_out_c0_exe11506),
        .out_c0_exe12507(bb_conv2d1x1_B5_stall_region_out_c0_exe12507),
        .out_c0_exe13508(bb_conv2d1x1_B5_stall_region_out_c0_exe13508),
        .out_c0_exe14509(bb_conv2d1x1_B5_stall_region_out_c0_exe14509),
        .out_c0_exe1496(bb_conv2d1x1_B5_stall_region_out_c0_exe1496),
        .out_c0_exe15510(bb_conv2d1x1_B5_stall_region_out_c0_exe15510),
        .out_c0_exe16511(bb_conv2d1x1_B5_stall_region_out_c0_exe16511),
        .out_c0_exe17512(bb_conv2d1x1_B5_stall_region_out_c0_exe17512),
        .out_c0_exe18513(bb_conv2d1x1_B5_stall_region_out_c0_exe18513),
        .out_c0_exe19514(bb_conv2d1x1_B5_stall_region_out_c0_exe19514),
        .out_c0_exe20515(bb_conv2d1x1_B5_stall_region_out_c0_exe20515),
        .out_c0_exe21516(bb_conv2d1x1_B5_stall_region_out_c0_exe21516),
        .out_c0_exe22517(bb_conv2d1x1_B5_stall_region_out_c0_exe22517),
        .out_c0_exe23518(bb_conv2d1x1_B5_stall_region_out_c0_exe23518),
        .out_c0_exe24519(bb_conv2d1x1_B5_stall_region_out_c0_exe24519),
        .out_c0_exe2497(bb_conv2d1x1_B5_stall_region_out_c0_exe2497),
        .out_c0_exe25520(bb_conv2d1x1_B5_stall_region_out_c0_exe25520),
        .out_c0_exe26521(bb_conv2d1x1_B5_stall_region_out_c0_exe26521),
        .out_c0_exe27522(bb_conv2d1x1_B5_stall_region_out_c0_exe27522),
        .out_c0_exe28523(bb_conv2d1x1_B5_stall_region_out_c0_exe28523),
        .out_c0_exe29524(bb_conv2d1x1_B5_stall_region_out_c0_exe29524),
        .out_c0_exe30525(bb_conv2d1x1_B5_stall_region_out_c0_exe30525),
        .out_c0_exe31526(bb_conv2d1x1_B5_stall_region_out_c0_exe31526),
        .out_c0_exe32527(bb_conv2d1x1_B5_stall_region_out_c0_exe32527),
        .out_c0_exe33528(bb_conv2d1x1_B5_stall_region_out_c0_exe33528),
        .out_c0_exe34529(bb_conv2d1x1_B5_stall_region_out_c0_exe34529),
        .out_c0_exe3498(bb_conv2d1x1_B5_stall_region_out_c0_exe3498),
        .out_c0_exe35530(bb_conv2d1x1_B5_stall_region_out_c0_exe35530),
        .out_c0_exe36531(bb_conv2d1x1_B5_stall_region_out_c0_exe36531),
        .out_c0_exe37532(bb_conv2d1x1_B5_stall_region_out_c0_exe37532),
        .out_c0_exe38533(bb_conv2d1x1_B5_stall_region_out_c0_exe38533),
        .out_c0_exe39534(bb_conv2d1x1_B5_stall_region_out_c0_exe39534),
        .out_c0_exe40535(bb_conv2d1x1_B5_stall_region_out_c0_exe40535),
        .out_c0_exe41536(bb_conv2d1x1_B5_stall_region_out_c0_exe41536),
        .out_c0_exe42537(bb_conv2d1x1_B5_stall_region_out_c0_exe42537),
        .out_c0_exe43538(bb_conv2d1x1_B5_stall_region_out_c0_exe43538),
        .out_c0_exe44539(bb_conv2d1x1_B5_stall_region_out_c0_exe44539),
        .out_c0_exe4499(bb_conv2d1x1_B5_stall_region_out_c0_exe4499),
        .out_c0_exe45(bb_conv2d1x1_B5_stall_region_out_c0_exe45),
        .out_c0_exe46(bb_conv2d1x1_B5_stall_region_out_c0_exe46),
        .out_c0_exe47(bb_conv2d1x1_B5_stall_region_out_c0_exe47),
        .out_c0_exe48(bb_conv2d1x1_B5_stall_region_out_c0_exe48),
        .out_c0_exe49(bb_conv2d1x1_B5_stall_region_out_c0_exe49),
        .out_c0_exe50(bb_conv2d1x1_B5_stall_region_out_c0_exe50),
        .out_c0_exe51(bb_conv2d1x1_B5_stall_region_out_c0_exe51),
        .out_c0_exe52(bb_conv2d1x1_B5_stall_region_out_c0_exe52),
        .out_c0_exe53(bb_conv2d1x1_B5_stall_region_out_c0_exe53),
        .out_c0_exe54(bb_conv2d1x1_B5_stall_region_out_c0_exe54),
        .out_c0_exe55(bb_conv2d1x1_B5_stall_region_out_c0_exe55),
        .out_c0_exe5500(bb_conv2d1x1_B5_stall_region_out_c0_exe5500),
        .out_c0_exe56(bb_conv2d1x1_B5_stall_region_out_c0_exe56),
        .out_c0_exe57(bb_conv2d1x1_B5_stall_region_out_c0_exe57),
        .out_c0_exe58(bb_conv2d1x1_B5_stall_region_out_c0_exe58),
        .out_c0_exe59(bb_conv2d1x1_B5_stall_region_out_c0_exe59),
        .out_c0_exe60(bb_conv2d1x1_B5_stall_region_out_c0_exe60),
        .out_c0_exe61(bb_conv2d1x1_B5_stall_region_out_c0_exe61),
        .out_c0_exe62(bb_conv2d1x1_B5_stall_region_out_c0_exe62),
        .out_c0_exe63(bb_conv2d1x1_B5_stall_region_out_c0_exe63),
        .out_c0_exe64(bb_conv2d1x1_B5_stall_region_out_c0_exe64),
        .out_c0_exe65(bb_conv2d1x1_B5_stall_region_out_c0_exe65),
        .out_c0_exe6501(bb_conv2d1x1_B5_stall_region_out_c0_exe6501),
        .out_c0_exe66(bb_conv2d1x1_B5_stall_region_out_c0_exe66),
        .out_c0_exe67(bb_conv2d1x1_B5_stall_region_out_c0_exe67),
        .out_c0_exe68(bb_conv2d1x1_B5_stall_region_out_c0_exe68),
        .out_c0_exe69(bb_conv2d1x1_B5_stall_region_out_c0_exe69),
        .out_c0_exe70(bb_conv2d1x1_B5_stall_region_out_c0_exe70),
        .out_c0_exe71(bb_conv2d1x1_B5_stall_region_out_c0_exe71),
        .out_c0_exe72(bb_conv2d1x1_B5_stall_region_out_c0_exe72),
        .out_c0_exe73(bb_conv2d1x1_B5_stall_region_out_c0_exe73),
        .out_c0_exe74(bb_conv2d1x1_B5_stall_region_out_c0_exe74),
        .out_c0_exe75(bb_conv2d1x1_B5_stall_region_out_c0_exe75),
        .out_c0_exe7502(bb_conv2d1x1_B5_stall_region_out_c0_exe7502),
        .out_c0_exe8503(bb_conv2d1x1_B5_stall_region_out_c0_exe8503),
        .out_c0_exe9504(bb_conv2d1x1_B5_stall_region_out_c0_exe9504),
        .out_pipeline_valid_out(bb_conv2d1x1_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d1x1_B5_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B5_branch(BLACKBOX,3)
    conv2d1x1_B5_branch theconv2d1x1_B5_branch (
        .in_c0_exe10505(bb_conv2d1x1_B5_stall_region_out_c0_exe10505),
        .in_c0_exe11506(bb_conv2d1x1_B5_stall_region_out_c0_exe11506),
        .in_c0_exe12507(bb_conv2d1x1_B5_stall_region_out_c0_exe12507),
        .in_c0_exe13508(bb_conv2d1x1_B5_stall_region_out_c0_exe13508),
        .in_c0_exe14509(bb_conv2d1x1_B5_stall_region_out_c0_exe14509),
        .in_c0_exe1496(bb_conv2d1x1_B5_stall_region_out_c0_exe1496),
        .in_c0_exe15510(bb_conv2d1x1_B5_stall_region_out_c0_exe15510),
        .in_c0_exe16511(bb_conv2d1x1_B5_stall_region_out_c0_exe16511),
        .in_c0_exe17512(bb_conv2d1x1_B5_stall_region_out_c0_exe17512),
        .in_c0_exe18513(bb_conv2d1x1_B5_stall_region_out_c0_exe18513),
        .in_c0_exe19514(bb_conv2d1x1_B5_stall_region_out_c0_exe19514),
        .in_c0_exe20515(bb_conv2d1x1_B5_stall_region_out_c0_exe20515),
        .in_c0_exe21516(bb_conv2d1x1_B5_stall_region_out_c0_exe21516),
        .in_c0_exe22517(bb_conv2d1x1_B5_stall_region_out_c0_exe22517),
        .in_c0_exe23518(bb_conv2d1x1_B5_stall_region_out_c0_exe23518),
        .in_c0_exe24519(bb_conv2d1x1_B5_stall_region_out_c0_exe24519),
        .in_c0_exe2497(bb_conv2d1x1_B5_stall_region_out_c0_exe2497),
        .in_c0_exe25520(bb_conv2d1x1_B5_stall_region_out_c0_exe25520),
        .in_c0_exe26521(bb_conv2d1x1_B5_stall_region_out_c0_exe26521),
        .in_c0_exe27522(bb_conv2d1x1_B5_stall_region_out_c0_exe27522),
        .in_c0_exe28523(bb_conv2d1x1_B5_stall_region_out_c0_exe28523),
        .in_c0_exe29524(bb_conv2d1x1_B5_stall_region_out_c0_exe29524),
        .in_c0_exe30525(bb_conv2d1x1_B5_stall_region_out_c0_exe30525),
        .in_c0_exe31526(bb_conv2d1x1_B5_stall_region_out_c0_exe31526),
        .in_c0_exe32527(bb_conv2d1x1_B5_stall_region_out_c0_exe32527),
        .in_c0_exe33528(bb_conv2d1x1_B5_stall_region_out_c0_exe33528),
        .in_c0_exe34529(bb_conv2d1x1_B5_stall_region_out_c0_exe34529),
        .in_c0_exe3498(bb_conv2d1x1_B5_stall_region_out_c0_exe3498),
        .in_c0_exe35530(bb_conv2d1x1_B5_stall_region_out_c0_exe35530),
        .in_c0_exe36531(bb_conv2d1x1_B5_stall_region_out_c0_exe36531),
        .in_c0_exe37532(bb_conv2d1x1_B5_stall_region_out_c0_exe37532),
        .in_c0_exe38533(bb_conv2d1x1_B5_stall_region_out_c0_exe38533),
        .in_c0_exe39534(bb_conv2d1x1_B5_stall_region_out_c0_exe39534),
        .in_c0_exe40535(bb_conv2d1x1_B5_stall_region_out_c0_exe40535),
        .in_c0_exe41536(bb_conv2d1x1_B5_stall_region_out_c0_exe41536),
        .in_c0_exe42537(bb_conv2d1x1_B5_stall_region_out_c0_exe42537),
        .in_c0_exe43538(bb_conv2d1x1_B5_stall_region_out_c0_exe43538),
        .in_c0_exe44539(bb_conv2d1x1_B5_stall_region_out_c0_exe44539),
        .in_c0_exe4499(bb_conv2d1x1_B5_stall_region_out_c0_exe4499),
        .in_c0_exe45(bb_conv2d1x1_B5_stall_region_out_c0_exe45),
        .in_c0_exe46(bb_conv2d1x1_B5_stall_region_out_c0_exe46),
        .in_c0_exe47(bb_conv2d1x1_B5_stall_region_out_c0_exe47),
        .in_c0_exe48(bb_conv2d1x1_B5_stall_region_out_c0_exe48),
        .in_c0_exe49(bb_conv2d1x1_B5_stall_region_out_c0_exe49),
        .in_c0_exe50(bb_conv2d1x1_B5_stall_region_out_c0_exe50),
        .in_c0_exe51(bb_conv2d1x1_B5_stall_region_out_c0_exe51),
        .in_c0_exe52(bb_conv2d1x1_B5_stall_region_out_c0_exe52),
        .in_c0_exe53(bb_conv2d1x1_B5_stall_region_out_c0_exe53),
        .in_c0_exe54(bb_conv2d1x1_B5_stall_region_out_c0_exe54),
        .in_c0_exe55(bb_conv2d1x1_B5_stall_region_out_c0_exe55),
        .in_c0_exe5500(bb_conv2d1x1_B5_stall_region_out_c0_exe5500),
        .in_c0_exe56(bb_conv2d1x1_B5_stall_region_out_c0_exe56),
        .in_c0_exe57(bb_conv2d1x1_B5_stall_region_out_c0_exe57),
        .in_c0_exe58(bb_conv2d1x1_B5_stall_region_out_c0_exe58),
        .in_c0_exe59(bb_conv2d1x1_B5_stall_region_out_c0_exe59),
        .in_c0_exe60(bb_conv2d1x1_B5_stall_region_out_c0_exe60),
        .in_c0_exe61(bb_conv2d1x1_B5_stall_region_out_c0_exe61),
        .in_c0_exe62(bb_conv2d1x1_B5_stall_region_out_c0_exe62),
        .in_c0_exe63(bb_conv2d1x1_B5_stall_region_out_c0_exe63),
        .in_c0_exe64(bb_conv2d1x1_B5_stall_region_out_c0_exe64),
        .in_c0_exe65(bb_conv2d1x1_B5_stall_region_out_c0_exe65),
        .in_c0_exe6501(bb_conv2d1x1_B5_stall_region_out_c0_exe6501),
        .in_c0_exe66(bb_conv2d1x1_B5_stall_region_out_c0_exe66),
        .in_c0_exe67(bb_conv2d1x1_B5_stall_region_out_c0_exe67),
        .in_c0_exe68(bb_conv2d1x1_B5_stall_region_out_c0_exe68),
        .in_c0_exe69(bb_conv2d1x1_B5_stall_region_out_c0_exe69),
        .in_c0_exe70(bb_conv2d1x1_B5_stall_region_out_c0_exe70),
        .in_c0_exe71(bb_conv2d1x1_B5_stall_region_out_c0_exe71),
        .in_c0_exe72(bb_conv2d1x1_B5_stall_region_out_c0_exe72),
        .in_c0_exe73(bb_conv2d1x1_B5_stall_region_out_c0_exe73),
        .in_c0_exe74(bb_conv2d1x1_B5_stall_region_out_c0_exe74),
        .in_c0_exe75(bb_conv2d1x1_B5_stall_region_out_c0_exe75),
        .in_c0_exe7502(bb_conv2d1x1_B5_stall_region_out_c0_exe7502),
        .in_c0_exe8503(bb_conv2d1x1_B5_stall_region_out_c0_exe8503),
        .in_c0_exe9504(bb_conv2d1x1_B5_stall_region_out_c0_exe9504),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d1x1_B5_stall_region_out_valid_out),
        .out_c0_exe10505(conv2d1x1_B5_branch_out_c0_exe10505),
        .out_c0_exe11506(conv2d1x1_B5_branch_out_c0_exe11506),
        .out_c0_exe12507(conv2d1x1_B5_branch_out_c0_exe12507),
        .out_c0_exe13508(conv2d1x1_B5_branch_out_c0_exe13508),
        .out_c0_exe14509(conv2d1x1_B5_branch_out_c0_exe14509),
        .out_c0_exe1496(conv2d1x1_B5_branch_out_c0_exe1496),
        .out_c0_exe15510(conv2d1x1_B5_branch_out_c0_exe15510),
        .out_c0_exe16511(conv2d1x1_B5_branch_out_c0_exe16511),
        .out_c0_exe17512(conv2d1x1_B5_branch_out_c0_exe17512),
        .out_c0_exe18513(conv2d1x1_B5_branch_out_c0_exe18513),
        .out_c0_exe19514(conv2d1x1_B5_branch_out_c0_exe19514),
        .out_c0_exe20515(conv2d1x1_B5_branch_out_c0_exe20515),
        .out_c0_exe21516(conv2d1x1_B5_branch_out_c0_exe21516),
        .out_c0_exe22517(conv2d1x1_B5_branch_out_c0_exe22517),
        .out_c0_exe23518(conv2d1x1_B5_branch_out_c0_exe23518),
        .out_c0_exe24519(conv2d1x1_B5_branch_out_c0_exe24519),
        .out_c0_exe2497(conv2d1x1_B5_branch_out_c0_exe2497),
        .out_c0_exe25520(conv2d1x1_B5_branch_out_c0_exe25520),
        .out_c0_exe26521(conv2d1x1_B5_branch_out_c0_exe26521),
        .out_c0_exe27522(conv2d1x1_B5_branch_out_c0_exe27522),
        .out_c0_exe28523(conv2d1x1_B5_branch_out_c0_exe28523),
        .out_c0_exe29524(conv2d1x1_B5_branch_out_c0_exe29524),
        .out_c0_exe30525(conv2d1x1_B5_branch_out_c0_exe30525),
        .out_c0_exe31526(conv2d1x1_B5_branch_out_c0_exe31526),
        .out_c0_exe32527(conv2d1x1_B5_branch_out_c0_exe32527),
        .out_c0_exe33528(conv2d1x1_B5_branch_out_c0_exe33528),
        .out_c0_exe34529(conv2d1x1_B5_branch_out_c0_exe34529),
        .out_c0_exe3498(conv2d1x1_B5_branch_out_c0_exe3498),
        .out_c0_exe35530(conv2d1x1_B5_branch_out_c0_exe35530),
        .out_c0_exe36531(conv2d1x1_B5_branch_out_c0_exe36531),
        .out_c0_exe37532(conv2d1x1_B5_branch_out_c0_exe37532),
        .out_c0_exe38533(conv2d1x1_B5_branch_out_c0_exe38533),
        .out_c0_exe39534(conv2d1x1_B5_branch_out_c0_exe39534),
        .out_c0_exe40535(conv2d1x1_B5_branch_out_c0_exe40535),
        .out_c0_exe41536(conv2d1x1_B5_branch_out_c0_exe41536),
        .out_c0_exe42537(conv2d1x1_B5_branch_out_c0_exe42537),
        .out_c0_exe43538(conv2d1x1_B5_branch_out_c0_exe43538),
        .out_c0_exe44539(conv2d1x1_B5_branch_out_c0_exe44539),
        .out_c0_exe4499(conv2d1x1_B5_branch_out_c0_exe4499),
        .out_c0_exe45(conv2d1x1_B5_branch_out_c0_exe45),
        .out_c0_exe46(conv2d1x1_B5_branch_out_c0_exe46),
        .out_c0_exe47(conv2d1x1_B5_branch_out_c0_exe47),
        .out_c0_exe48(conv2d1x1_B5_branch_out_c0_exe48),
        .out_c0_exe49(conv2d1x1_B5_branch_out_c0_exe49),
        .out_c0_exe50(conv2d1x1_B5_branch_out_c0_exe50),
        .out_c0_exe51(conv2d1x1_B5_branch_out_c0_exe51),
        .out_c0_exe52(conv2d1x1_B5_branch_out_c0_exe52),
        .out_c0_exe53(conv2d1x1_B5_branch_out_c0_exe53),
        .out_c0_exe54(conv2d1x1_B5_branch_out_c0_exe54),
        .out_c0_exe55(conv2d1x1_B5_branch_out_c0_exe55),
        .out_c0_exe5500(conv2d1x1_B5_branch_out_c0_exe5500),
        .out_c0_exe56(conv2d1x1_B5_branch_out_c0_exe56),
        .out_c0_exe57(conv2d1x1_B5_branch_out_c0_exe57),
        .out_c0_exe58(conv2d1x1_B5_branch_out_c0_exe58),
        .out_c0_exe59(conv2d1x1_B5_branch_out_c0_exe59),
        .out_c0_exe60(conv2d1x1_B5_branch_out_c0_exe60),
        .out_c0_exe61(conv2d1x1_B5_branch_out_c0_exe61),
        .out_c0_exe62(conv2d1x1_B5_branch_out_c0_exe62),
        .out_c0_exe63(conv2d1x1_B5_branch_out_c0_exe63),
        .out_c0_exe64(conv2d1x1_B5_branch_out_c0_exe64),
        .out_c0_exe65(conv2d1x1_B5_branch_out_c0_exe65),
        .out_c0_exe6501(conv2d1x1_B5_branch_out_c0_exe6501),
        .out_c0_exe66(conv2d1x1_B5_branch_out_c0_exe66),
        .out_c0_exe67(conv2d1x1_B5_branch_out_c0_exe67),
        .out_c0_exe68(conv2d1x1_B5_branch_out_c0_exe68),
        .out_c0_exe69(conv2d1x1_B5_branch_out_c0_exe69),
        .out_c0_exe70(conv2d1x1_B5_branch_out_c0_exe70),
        .out_c0_exe71(conv2d1x1_B5_branch_out_c0_exe71),
        .out_c0_exe72(conv2d1x1_B5_branch_out_c0_exe72),
        .out_c0_exe73(conv2d1x1_B5_branch_out_c0_exe73),
        .out_c0_exe74(conv2d1x1_B5_branch_out_c0_exe74),
        .out_c0_exe75(conv2d1x1_B5_branch_out_c0_exe75),
        .out_c0_exe7502(conv2d1x1_B5_branch_out_c0_exe7502),
        .out_c0_exe8503(conv2d1x1_B5_branch_out_c0_exe8503),
        .out_c0_exe9504(conv2d1x1_B5_branch_out_c0_exe9504),
        .out_stall_out(conv2d1x1_B5_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10505(GPOUT,101)
    assign out_c0_exe10505 = conv2d1x1_B5_branch_out_c0_exe10505;

    // out_c0_exe11506(GPOUT,102)
    assign out_c0_exe11506 = conv2d1x1_B5_branch_out_c0_exe11506;

    // out_c0_exe12507(GPOUT,103)
    assign out_c0_exe12507 = conv2d1x1_B5_branch_out_c0_exe12507;

    // out_c0_exe13508(GPOUT,104)
    assign out_c0_exe13508 = conv2d1x1_B5_branch_out_c0_exe13508;

    // out_c0_exe14509(GPOUT,105)
    assign out_c0_exe14509 = conv2d1x1_B5_branch_out_c0_exe14509;

    // out_c0_exe1496(GPOUT,106)
    assign out_c0_exe1496 = conv2d1x1_B5_branch_out_c0_exe1496;

    // out_c0_exe15510(GPOUT,107)
    assign out_c0_exe15510 = conv2d1x1_B5_branch_out_c0_exe15510;

    // out_c0_exe16511(GPOUT,108)
    assign out_c0_exe16511 = conv2d1x1_B5_branch_out_c0_exe16511;

    // out_c0_exe17512(GPOUT,109)
    assign out_c0_exe17512 = conv2d1x1_B5_branch_out_c0_exe17512;

    // out_c0_exe18513(GPOUT,110)
    assign out_c0_exe18513 = conv2d1x1_B5_branch_out_c0_exe18513;

    // out_c0_exe19514(GPOUT,111)
    assign out_c0_exe19514 = conv2d1x1_B5_branch_out_c0_exe19514;

    // out_c0_exe20515(GPOUT,112)
    assign out_c0_exe20515 = conv2d1x1_B5_branch_out_c0_exe20515;

    // out_c0_exe21516(GPOUT,113)
    assign out_c0_exe21516 = conv2d1x1_B5_branch_out_c0_exe21516;

    // out_c0_exe22517(GPOUT,114)
    assign out_c0_exe22517 = conv2d1x1_B5_branch_out_c0_exe22517;

    // out_c0_exe23518(GPOUT,115)
    assign out_c0_exe23518 = conv2d1x1_B5_branch_out_c0_exe23518;

    // out_c0_exe24519(GPOUT,116)
    assign out_c0_exe24519 = conv2d1x1_B5_branch_out_c0_exe24519;

    // out_c0_exe2497(GPOUT,117)
    assign out_c0_exe2497 = conv2d1x1_B5_branch_out_c0_exe2497;

    // out_c0_exe25520(GPOUT,118)
    assign out_c0_exe25520 = conv2d1x1_B5_branch_out_c0_exe25520;

    // out_c0_exe26521(GPOUT,119)
    assign out_c0_exe26521 = conv2d1x1_B5_branch_out_c0_exe26521;

    // out_c0_exe27522(GPOUT,120)
    assign out_c0_exe27522 = conv2d1x1_B5_branch_out_c0_exe27522;

    // out_c0_exe28523(GPOUT,121)
    assign out_c0_exe28523 = conv2d1x1_B5_branch_out_c0_exe28523;

    // out_c0_exe29524(GPOUT,122)
    assign out_c0_exe29524 = conv2d1x1_B5_branch_out_c0_exe29524;

    // out_c0_exe30525(GPOUT,123)
    assign out_c0_exe30525 = conv2d1x1_B5_branch_out_c0_exe30525;

    // out_c0_exe31526(GPOUT,124)
    assign out_c0_exe31526 = conv2d1x1_B5_branch_out_c0_exe31526;

    // out_c0_exe32527(GPOUT,125)
    assign out_c0_exe32527 = conv2d1x1_B5_branch_out_c0_exe32527;

    // out_c0_exe33528(GPOUT,126)
    assign out_c0_exe33528 = conv2d1x1_B5_branch_out_c0_exe33528;

    // out_c0_exe34529(GPOUT,127)
    assign out_c0_exe34529 = conv2d1x1_B5_branch_out_c0_exe34529;

    // out_c0_exe3498(GPOUT,128)
    assign out_c0_exe3498 = conv2d1x1_B5_branch_out_c0_exe3498;

    // out_c0_exe35530(GPOUT,129)
    assign out_c0_exe35530 = conv2d1x1_B5_branch_out_c0_exe35530;

    // out_c0_exe36531(GPOUT,130)
    assign out_c0_exe36531 = conv2d1x1_B5_branch_out_c0_exe36531;

    // out_c0_exe37532(GPOUT,131)
    assign out_c0_exe37532 = conv2d1x1_B5_branch_out_c0_exe37532;

    // out_c0_exe38533(GPOUT,132)
    assign out_c0_exe38533 = conv2d1x1_B5_branch_out_c0_exe38533;

    // out_c0_exe39534(GPOUT,133)
    assign out_c0_exe39534 = conv2d1x1_B5_branch_out_c0_exe39534;

    // out_c0_exe40535(GPOUT,134)
    assign out_c0_exe40535 = conv2d1x1_B5_branch_out_c0_exe40535;

    // out_c0_exe41536(GPOUT,135)
    assign out_c0_exe41536 = conv2d1x1_B5_branch_out_c0_exe41536;

    // out_c0_exe42537(GPOUT,136)
    assign out_c0_exe42537 = conv2d1x1_B5_branch_out_c0_exe42537;

    // out_c0_exe43538(GPOUT,137)
    assign out_c0_exe43538 = conv2d1x1_B5_branch_out_c0_exe43538;

    // out_c0_exe44539(GPOUT,138)
    assign out_c0_exe44539 = conv2d1x1_B5_branch_out_c0_exe44539;

    // out_c0_exe4499(GPOUT,139)
    assign out_c0_exe4499 = conv2d1x1_B5_branch_out_c0_exe4499;

    // out_c0_exe45(GPOUT,140)
    assign out_c0_exe45 = conv2d1x1_B5_branch_out_c0_exe45;

    // out_c0_exe46(GPOUT,141)
    assign out_c0_exe46 = conv2d1x1_B5_branch_out_c0_exe46;

    // out_c0_exe47(GPOUT,142)
    assign out_c0_exe47 = conv2d1x1_B5_branch_out_c0_exe47;

    // out_c0_exe48(GPOUT,143)
    assign out_c0_exe48 = conv2d1x1_B5_branch_out_c0_exe48;

    // out_c0_exe49(GPOUT,144)
    assign out_c0_exe49 = conv2d1x1_B5_branch_out_c0_exe49;

    // out_c0_exe50(GPOUT,145)
    assign out_c0_exe50 = conv2d1x1_B5_branch_out_c0_exe50;

    // out_c0_exe51(GPOUT,146)
    assign out_c0_exe51 = conv2d1x1_B5_branch_out_c0_exe51;

    // out_c0_exe52(GPOUT,147)
    assign out_c0_exe52 = conv2d1x1_B5_branch_out_c0_exe52;

    // out_c0_exe53(GPOUT,148)
    assign out_c0_exe53 = conv2d1x1_B5_branch_out_c0_exe53;

    // out_c0_exe54(GPOUT,149)
    assign out_c0_exe54 = conv2d1x1_B5_branch_out_c0_exe54;

    // out_c0_exe55(GPOUT,150)
    assign out_c0_exe55 = conv2d1x1_B5_branch_out_c0_exe55;

    // out_c0_exe5500(GPOUT,151)
    assign out_c0_exe5500 = conv2d1x1_B5_branch_out_c0_exe5500;

    // out_c0_exe56(GPOUT,152)
    assign out_c0_exe56 = conv2d1x1_B5_branch_out_c0_exe56;

    // out_c0_exe57(GPOUT,153)
    assign out_c0_exe57 = conv2d1x1_B5_branch_out_c0_exe57;

    // out_c0_exe58(GPOUT,154)
    assign out_c0_exe58 = conv2d1x1_B5_branch_out_c0_exe58;

    // out_c0_exe59(GPOUT,155)
    assign out_c0_exe59 = conv2d1x1_B5_branch_out_c0_exe59;

    // out_c0_exe60(GPOUT,156)
    assign out_c0_exe60 = conv2d1x1_B5_branch_out_c0_exe60;

    // out_c0_exe61(GPOUT,157)
    assign out_c0_exe61 = conv2d1x1_B5_branch_out_c0_exe61;

    // out_c0_exe62(GPOUT,158)
    assign out_c0_exe62 = conv2d1x1_B5_branch_out_c0_exe62;

    // out_c0_exe63(GPOUT,159)
    assign out_c0_exe63 = conv2d1x1_B5_branch_out_c0_exe63;

    // out_c0_exe64(GPOUT,160)
    assign out_c0_exe64 = conv2d1x1_B5_branch_out_c0_exe64;

    // out_c0_exe65(GPOUT,161)
    assign out_c0_exe65 = conv2d1x1_B5_branch_out_c0_exe65;

    // out_c0_exe6501(GPOUT,162)
    assign out_c0_exe6501 = conv2d1x1_B5_branch_out_c0_exe6501;

    // out_c0_exe66(GPOUT,163)
    assign out_c0_exe66 = conv2d1x1_B5_branch_out_c0_exe66;

    // out_c0_exe67(GPOUT,164)
    assign out_c0_exe67 = conv2d1x1_B5_branch_out_c0_exe67;

    // out_c0_exe68(GPOUT,165)
    assign out_c0_exe68 = conv2d1x1_B5_branch_out_c0_exe68;

    // out_c0_exe69(GPOUT,166)
    assign out_c0_exe69 = conv2d1x1_B5_branch_out_c0_exe69;

    // out_c0_exe70(GPOUT,167)
    assign out_c0_exe70 = conv2d1x1_B5_branch_out_c0_exe70;

    // out_c0_exe71(GPOUT,168)
    assign out_c0_exe71 = conv2d1x1_B5_branch_out_c0_exe71;

    // out_c0_exe72(GPOUT,169)
    assign out_c0_exe72 = conv2d1x1_B5_branch_out_c0_exe72;

    // out_c0_exe73(GPOUT,170)
    assign out_c0_exe73 = conv2d1x1_B5_branch_out_c0_exe73;

    // out_c0_exe74(GPOUT,171)
    assign out_c0_exe74 = conv2d1x1_B5_branch_out_c0_exe74;

    // out_c0_exe75(GPOUT,172)
    assign out_c0_exe75 = conv2d1x1_B5_branch_out_c0_exe75;

    // out_c0_exe7502(GPOUT,173)
    assign out_c0_exe7502 = conv2d1x1_B5_branch_out_c0_exe7502;

    // out_c0_exe8503(GPOUT,174)
    assign out_c0_exe8503 = conv2d1x1_B5_branch_out_c0_exe8503;

    // out_c0_exe9504(GPOUT,175)
    assign out_c0_exe9504 = conv2d1x1_B5_branch_out_c0_exe9504;

    // out_exiting_stall_out(GPOUT,176)
    assign out_exiting_stall_out = bb_conv2d1x1_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,177)
    assign out_exiting_valid_out = bb_conv2d1x1_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out;

    // out_stall_out_0(GPOUT,178)
    assign out_stall_out_0 = conv2d1x1_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,179)
    assign out_stall_out_1 = conv2d1x1_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,180)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,181)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,182)
    assign out_valid_out_0 = conv2d1x1_B5_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,184)
    assign out_pipeline_valid_out = bb_conv2d1x1_B5_stall_region_out_pipeline_valid_out;

endmodule
