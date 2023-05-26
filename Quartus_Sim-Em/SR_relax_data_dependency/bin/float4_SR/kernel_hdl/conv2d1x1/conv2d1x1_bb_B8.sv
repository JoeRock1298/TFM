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

// SystemVerilog created from conv2d1x1_bb_B8
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B8 (
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked17105_pop68312_0,
    input wire [0:0] in_forked17105_pop68312_1,
    input wire [0:0] in_forked17244_0,
    input wire [0:0] in_forked17244_1,
    input wire [0:0] in_forked59311_0,
    input wire [0:0] in_forked59311_1,
    input wire [0:0] in_forked59_and313_0,
    input wire [0:0] in_forked59_and313_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_ij_067_pop51318_0,
    input wire [31:0] in_ij_067_pop51318_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [511:0] in_lm177_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm177_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm177_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm177_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm178_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm178_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm178_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm178_conv2d1x1_avm_writeack,
    input wire [31:0] in_lm96111_pop73338_0,
    input wire [31:0] in_lm96111_pop73338_1,
    input wire [31:0] in_lm96253_0,
    input wire [31:0] in_lm96253_1,
    input wire [31:0] in_mul107_pop69335_0,
    input wire [31:0] in_mul107_pop69335_1,
    input wire [31:0] in_mul21113_pop74339_0,
    input wire [31:0] in_mul21113_pop74339_1,
    input wire [31:0] in_mul21256_0,
    input wire [31:0] in_mul21256_1,
    input wire [31:0] in_mul247_0,
    input wire [31:0] in_mul247_1,
    input wire [31:0] in_mul97115_pop75340_0,
    input wire [31:0] in_mul97115_pop75340_1,
    input wire [31:0] in_mul97259_0,
    input wire [31:0] in_mul97259_1,
    input wire [0:0] in_notcmp19317_0,
    input wire [0:0] in_notcmp19317_1,
    input wire [0:0] in_notcmp24117_pop77341_0,
    input wire [0:0] in_notcmp24117_pop77341_1,
    input wire [0:0] in_notcmp24262_0,
    input wire [0:0] in_notcmp24262_1,
    input wire [0:0] in_or316_0,
    input wire [0:0] in_or316_1,
    input wire [63:0] in_output_im,
    input wire [0:0] in_phi_decision102_xor109_pop72314_0,
    input wire [0:0] in_phi_decision102_xor109_pop72314_1,
    input wire [0:0] in_phi_decision102_xor250_0,
    input wire [0:0] in_phi_decision102_xor250_1,
    input wire [31:0] in_pop12268_0,
    input wire [31:0] in_pop12268_1,
    input wire [31:0] in_pop53320_0,
    input wire [31:0] in_pop53320_1,
    input wire [0:0] in_pop70336_0,
    input wire [0:0] in_pop70336_1,
    input wire [0:0] in_pop71337_0,
    input wire [0:0] in_pop71337_1,
    input wire [0:0] in_pop76315_0,
    input wire [0:0] in_pop76315_1,
    input wire [31:0] in_spec_select155_0,
    input wire [31:0] in_spec_select155_1,
    input wire [31:0] in_spec_select323161_0,
    input wire [31:0] in_spec_select323161_1,
    input wire [31:0] in_spec_select32363_pop13271_0,
    input wire [31:0] in_spec_select32363_pop13271_1,
    input wire [31:0] in_spec_select32364_pop54321_0,
    input wire [31:0] in_spec_select32364_pop54321_1,
    input wire [31:0] in_spec_select324167_0,
    input wire [31:0] in_spec_select324167_1,
    input wire [31:0] in_spec_select32466_pop14274_0,
    input wire [31:0] in_spec_select32466_pop14274_1,
    input wire [31:0] in_spec_select32467_pop55322_0,
    input wire [31:0] in_spec_select32467_pop55322_1,
    input wire [31:0] in_spec_select325173_0,
    input wire [31:0] in_spec_select325173_1,
    input wire [31:0] in_spec_select32569_pop15277_0,
    input wire [31:0] in_spec_select32569_pop15277_1,
    input wire [31:0] in_spec_select32570_pop56323_0,
    input wire [31:0] in_spec_select32570_pop56323_1,
    input wire [31:0] in_spec_select326179_0,
    input wire [31:0] in_spec_select326179_1,
    input wire [31:0] in_spec_select32672_pop16280_0,
    input wire [31:0] in_spec_select32672_pop16280_1,
    input wire [31:0] in_spec_select32673_pop57324_0,
    input wire [31:0] in_spec_select32673_pop57324_1,
    input wire [31:0] in_spec_select327185_0,
    input wire [31:0] in_spec_select327185_1,
    input wire [31:0] in_spec_select32775_pop17283_0,
    input wire [31:0] in_spec_select32775_pop17283_1,
    input wire [31:0] in_spec_select32776_pop58325_0,
    input wire [31:0] in_spec_select32776_pop58325_1,
    input wire [31:0] in_spec_select328191_0,
    input wire [31:0] in_spec_select328191_1,
    input wire [31:0] in_spec_select32878_pop18286_0,
    input wire [31:0] in_spec_select32878_pop18286_1,
    input wire [31:0] in_spec_select32879_pop59326_0,
    input wire [31:0] in_spec_select32879_pop59326_1,
    input wire [31:0] in_spec_select329197_0,
    input wire [31:0] in_spec_select329197_1,
    input wire [31:0] in_spec_select32981_pop19289_0,
    input wire [31:0] in_spec_select32981_pop19289_1,
    input wire [31:0] in_spec_select32982_pop60327_0,
    input wire [31:0] in_spec_select32982_pop60327_1,
    input wire [31:0] in_spec_select330203_0,
    input wire [31:0] in_spec_select330203_1,
    input wire [31:0] in_spec_select33084_pop20292_0,
    input wire [31:0] in_spec_select33084_pop20292_1,
    input wire [31:0] in_spec_select33085_pop61328_0,
    input wire [31:0] in_spec_select33085_pop61328_1,
    input wire [31:0] in_spec_select331209_0,
    input wire [31:0] in_spec_select331209_1,
    input wire [31:0] in_spec_select33187_pop21295_0,
    input wire [31:0] in_spec_select33187_pop21295_1,
    input wire [31:0] in_spec_select33188_pop62329_0,
    input wire [31:0] in_spec_select33188_pop62329_1,
    input wire [31:0] in_spec_select332215_0,
    input wire [31:0] in_spec_select332215_1,
    input wire [31:0] in_spec_select33290_pop22298_0,
    input wire [31:0] in_spec_select33290_pop22298_1,
    input wire [31:0] in_spec_select33291_pop63330_0,
    input wire [31:0] in_spec_select33291_pop63330_1,
    input wire [31:0] in_spec_select333221_0,
    input wire [31:0] in_spec_select333221_1,
    input wire [31:0] in_spec_select33393_pop23301_0,
    input wire [31:0] in_spec_select33393_pop23301_1,
    input wire [31:0] in_spec_select33394_pop64331_0,
    input wire [31:0] in_spec_select33394_pop64331_1,
    input wire [31:0] in_spec_select334227_0,
    input wire [31:0] in_spec_select334227_1,
    input wire [31:0] in_spec_select33496_pop24302_0,
    input wire [31:0] in_spec_select33496_pop24302_1,
    input wire [31:0] in_spec_select33497_pop65332_0,
    input wire [31:0] in_spec_select33497_pop65332_1,
    input wire [31:0] in_spec_select335100_pop66333_0,
    input wire [31:0] in_spec_select335100_pop66333_1,
    input wire [31:0] in_spec_select335233_0,
    input wire [31:0] in_spec_select335233_1,
    input wire [31:0] in_spec_select33599_pop25305_0,
    input wire [31:0] in_spec_select33599_pop25305_1,
    input wire [31:0] in_spec_select336102_pop26308_0,
    input wire [31:0] in_spec_select336102_pop26308_1,
    input wire [31:0] in_spec_select336103_pop67334_0,
    input wire [31:0] in_spec_select336103_pop67334_1,
    input wire [31:0] in_spec_select336239_0,
    input wire [31:0] in_spec_select336239_1,
    input wire [31:0] in_spec_select60_pop11265_0,
    input wire [31:0] in_spec_select60_pop11265_1,
    input wire [31:0] in_spec_select61_pop52319_0,
    input wire [31:0] in_spec_select61_pop52319_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv2d1x114_0,
    input wire [31:0] in_unnamed_conv2d1x114_1,
    input wire [0:0] in_unnamed_conv2d1x115_0,
    input wire [0:0] in_unnamed_conv2d1x115_1,
    input wire [0:0] in_unnamed_conv2d1x116_0,
    input wire [0:0] in_unnamed_conv2d1x116_1,
    input wire [32:0] in_unnamed_conv2d1x117_0,
    input wire [32:0] in_unnamed_conv2d1x117_1,
    input wire [0:0] in_unnamed_conv2d1x118_0,
    input wire [0:0] in_unnamed_conv2d1x118_1,
    input wire [0:0] in_unnamed_conv2d1x119_0,
    input wire [0:0] in_unnamed_conv2d1x119_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [31:0] out_c0_exe12734,
    output wire [31:0] out_c0_exe13735,
    output wire [0:0] out_c0_exe15737,
    output wire [31:0] out_c0_exe17739,
    output wire [31:0] out_c0_exe18740,
    output wire [0:0] out_c0_exe19741,
    output wire [31:0] out_c0_exe20742,
    output wire [31:0] out_c0_exe21743,
    output wire [31:0] out_c0_exe22744,
    output wire [0:0] out_c0_exe23745,
    output wire [0:0] out_c0_exe24746,
    output wire [0:0] out_c0_exe25747,
    output wire [0:0] out_c0_exe7729,
    output wire [0:0] out_c0_exe8730,
    output wire [31:0] out_c0_exe9731,
    output wire [31:0] out_c1_exe10,
    output wire [31:0] out_c1_exe11,
    output wire [31:0] out_c1_exe12,
    output wire [31:0] out_c1_exe13,
    output wire [31:0] out_c1_exe14,
    output wire [31:0] out_c1_exe1847,
    output wire [31:0] out_c1_exe2,
    output wire [31:0] out_c1_exe3,
    output wire [31:0] out_c1_exe4,
    output wire [31:0] out_c1_exe5,
    output wire [31:0] out_c1_exe6,
    output wire [31:0] out_c1_exe7,
    output wire [31:0] out_c1_exe8,
    output wire [31:0] out_c1_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm177_conv2d1x1_avm_address,
    output wire [4:0] out_lm177_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm177_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm177_conv2d1x1_avm_enable,
    output wire [0:0] out_lm177_conv2d1x1_avm_read,
    output wire [0:0] out_lm177_conv2d1x1_avm_write,
    output wire [511:0] out_lm177_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm178_conv2d1x1_avm_address,
    output wire [4:0] out_lm178_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm178_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm178_conv2d1x1_avm_enable,
    output wire [0:0] out_lm178_conv2d1x1_avm_read,
    output wire [0:0] out_lm178_conv2d1x1_avm_write,
    output wire [511:0] out_lm178_conv2d1x1_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    output wire [31:0] out_lm177_0_tpl,
    output wire [31:0] out_lm177_1_tpl,
    output wire [31:0] out_lm177_2_tpl,
    output wire [31:0] out_lm177_3_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe12734;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe13735;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe15737;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe16738;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe17739;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe18740;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe19741;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe20742;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe21743;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe22744;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe23745;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe24746;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe25747;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe7729;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_c0_exe8730;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c0_exe9731;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe10;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe11;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe12;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe13;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe14;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe1847;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe2;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe3;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe4;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe5;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe6;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe7;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe8;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_c1_exe9;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B8_stall_region_out_valid_out;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_lm177_0_tpl;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_lm177_1_tpl;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_lm177_2_tpl;
    wire [31:0] bb_conv2d1x1_B8_stall_region_out_lm177_3_tpl;
    wire [0:0] conv2d1x1_B8_merge_out_forked;
    wire [0:0] conv2d1x1_B8_merge_out_forked17105_pop68312;
    wire [0:0] conv2d1x1_B8_merge_out_forked17244;
    wire [0:0] conv2d1x1_B8_merge_out_forked59311;
    wire [0:0] conv2d1x1_B8_merge_out_forked59_and313;
    wire [31:0] conv2d1x1_B8_merge_out_ij_067_pop51318;
    wire [31:0] conv2d1x1_B8_merge_out_lm96111_pop73338;
    wire [31:0] conv2d1x1_B8_merge_out_lm96253;
    wire [31:0] conv2d1x1_B8_merge_out_mul107_pop69335;
    wire [31:0] conv2d1x1_B8_merge_out_mul21113_pop74339;
    wire [31:0] conv2d1x1_B8_merge_out_mul21256;
    wire [31:0] conv2d1x1_B8_merge_out_mul247;
    wire [31:0] conv2d1x1_B8_merge_out_mul97115_pop75340;
    wire [31:0] conv2d1x1_B8_merge_out_mul97259;
    wire [0:0] conv2d1x1_B8_merge_out_notcmp19317;
    wire [0:0] conv2d1x1_B8_merge_out_notcmp24117_pop77341;
    wire [0:0] conv2d1x1_B8_merge_out_notcmp24262;
    wire [0:0] conv2d1x1_B8_merge_out_or316;
    wire [0:0] conv2d1x1_B8_merge_out_phi_decision102_xor109_pop72314;
    wire [0:0] conv2d1x1_B8_merge_out_phi_decision102_xor250;
    wire [31:0] conv2d1x1_B8_merge_out_pop12268;
    wire [31:0] conv2d1x1_B8_merge_out_pop53320;
    wire [0:0] conv2d1x1_B8_merge_out_pop70336;
    wire [0:0] conv2d1x1_B8_merge_out_pop71337;
    wire [0:0] conv2d1x1_B8_merge_out_pop76315;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select155;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select323161;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32363_pop13271;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32364_pop54321;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select324167;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32466_pop14274;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32467_pop55322;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select325173;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32569_pop15277;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32570_pop56323;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select326179;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32672_pop16280;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32673_pop57324;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select327185;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32775_pop17283;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32776_pop58325;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select328191;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32878_pop18286;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32879_pop59326;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select329197;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32981_pop19289;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select32982_pop60327;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select330203;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select33084_pop20292;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select33085_pop61328;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select331209;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select33187_pop21295;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select33188_pop62329;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select332215;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select33290_pop22298;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select33291_pop63330;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select333221;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select33393_pop23301;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select33394_pop64331;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select334227;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select33496_pop24302;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select33497_pop65332;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select335100_pop66333;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select335233;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select33599_pop25305;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select336102_pop26308;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select336103_pop67334;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select336239;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select60_pop11265;
    wire [31:0] conv2d1x1_B8_merge_out_spec_select61_pop52319;
    wire [0:0] conv2d1x1_B8_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B8_merge_out_stall_out_1;
    wire [31:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x114;
    wire [0:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x115;
    wire [0:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x116;
    wire [32:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x117;
    wire [0:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x118;
    wire [0:0] conv2d1x1_B8_merge_out_unnamed_conv2d1x119;
    wire [0:0] conv2d1x1_B8_merge_out_valid_out;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe12734;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe13735;
    wire [0:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe15737;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe17739;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe18740;
    wire [0:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe19741;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe20742;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe21743;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe22744;
    wire [0:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe23745;
    wire [0:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe24746;
    wire [0:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe25747;
    wire [0:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe7729;
    wire [0:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe8730;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c0_exe9731;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe10;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe11;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe12;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe13;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe14;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe1847;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe2;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe3;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe4;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe5;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe6;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe7;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe8;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_c1_exe9;
    wire [0:0] conv2d1x1_B8_branch_vunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B8_branch_vunroll_x_out_valid_out_0;
    wire [0:0] conv2d1x1_B8_branch_vunroll_x_out_valid_out_1;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_lm177_0_tpl;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_lm177_1_tpl;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_lm177_2_tpl;
    wire [31:0] conv2d1x1_B8_branch_vunroll_x_out_lm177_3_tpl;


    // conv2d1x1_B8_branch_vunroll_x(BLACKBOX,177)
    conv2d1x1_B8_branch theconv2d1x1_B8_branch_vunroll_x (
        .in_c0_exe12734(bb_conv2d1x1_B8_stall_region_out_c0_exe12734),
        .in_c0_exe13735(bb_conv2d1x1_B8_stall_region_out_c0_exe13735),
        .in_c0_exe15737(bb_conv2d1x1_B8_stall_region_out_c0_exe15737),
        .in_c0_exe16738(bb_conv2d1x1_B8_stall_region_out_c0_exe16738),
        .in_c0_exe17739(bb_conv2d1x1_B8_stall_region_out_c0_exe17739),
        .in_c0_exe18740(bb_conv2d1x1_B8_stall_region_out_c0_exe18740),
        .in_c0_exe19741(bb_conv2d1x1_B8_stall_region_out_c0_exe19741),
        .in_c0_exe20742(bb_conv2d1x1_B8_stall_region_out_c0_exe20742),
        .in_c0_exe21743(bb_conv2d1x1_B8_stall_region_out_c0_exe21743),
        .in_c0_exe22744(bb_conv2d1x1_B8_stall_region_out_c0_exe22744),
        .in_c0_exe23745(bb_conv2d1x1_B8_stall_region_out_c0_exe23745),
        .in_c0_exe24746(bb_conv2d1x1_B8_stall_region_out_c0_exe24746),
        .in_c0_exe25747(bb_conv2d1x1_B8_stall_region_out_c0_exe25747),
        .in_c0_exe7729(bb_conv2d1x1_B8_stall_region_out_c0_exe7729),
        .in_c0_exe8730(bb_conv2d1x1_B8_stall_region_out_c0_exe8730),
        .in_c0_exe9731(bb_conv2d1x1_B8_stall_region_out_c0_exe9731),
        .in_c1_exe10(bb_conv2d1x1_B8_stall_region_out_c1_exe10),
        .in_c1_exe11(bb_conv2d1x1_B8_stall_region_out_c1_exe11),
        .in_c1_exe12(bb_conv2d1x1_B8_stall_region_out_c1_exe12),
        .in_c1_exe13(bb_conv2d1x1_B8_stall_region_out_c1_exe13),
        .in_c1_exe14(bb_conv2d1x1_B8_stall_region_out_c1_exe14),
        .in_c1_exe1847(bb_conv2d1x1_B8_stall_region_out_c1_exe1847),
        .in_c1_exe2(bb_conv2d1x1_B8_stall_region_out_c1_exe2),
        .in_c1_exe3(bb_conv2d1x1_B8_stall_region_out_c1_exe3),
        .in_c1_exe4(bb_conv2d1x1_B8_stall_region_out_c1_exe4),
        .in_c1_exe5(bb_conv2d1x1_B8_stall_region_out_c1_exe5),
        .in_c1_exe6(bb_conv2d1x1_B8_stall_region_out_c1_exe6),
        .in_c1_exe7(bb_conv2d1x1_B8_stall_region_out_c1_exe7),
        .in_c1_exe8(bb_conv2d1x1_B8_stall_region_out_c1_exe8),
        .in_c1_exe9(bb_conv2d1x1_B8_stall_region_out_c1_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d1x1_B8_stall_region_out_valid_out),
        .in_lm177_0_tpl(bb_conv2d1x1_B8_stall_region_out_lm177_0_tpl),
        .in_lm177_1_tpl(bb_conv2d1x1_B8_stall_region_out_lm177_1_tpl),
        .in_lm177_2_tpl(bb_conv2d1x1_B8_stall_region_out_lm177_2_tpl),
        .in_lm177_3_tpl(bb_conv2d1x1_B8_stall_region_out_lm177_3_tpl),
        .out_c0_exe12734(conv2d1x1_B8_branch_vunroll_x_out_c0_exe12734),
        .out_c0_exe13735(conv2d1x1_B8_branch_vunroll_x_out_c0_exe13735),
        .out_c0_exe15737(conv2d1x1_B8_branch_vunroll_x_out_c0_exe15737),
        .out_c0_exe17739(conv2d1x1_B8_branch_vunroll_x_out_c0_exe17739),
        .out_c0_exe18740(conv2d1x1_B8_branch_vunroll_x_out_c0_exe18740),
        .out_c0_exe19741(conv2d1x1_B8_branch_vunroll_x_out_c0_exe19741),
        .out_c0_exe20742(conv2d1x1_B8_branch_vunroll_x_out_c0_exe20742),
        .out_c0_exe21743(conv2d1x1_B8_branch_vunroll_x_out_c0_exe21743),
        .out_c0_exe22744(conv2d1x1_B8_branch_vunroll_x_out_c0_exe22744),
        .out_c0_exe23745(conv2d1x1_B8_branch_vunroll_x_out_c0_exe23745),
        .out_c0_exe24746(conv2d1x1_B8_branch_vunroll_x_out_c0_exe24746),
        .out_c0_exe25747(conv2d1x1_B8_branch_vunroll_x_out_c0_exe25747),
        .out_c0_exe7729(conv2d1x1_B8_branch_vunroll_x_out_c0_exe7729),
        .out_c0_exe8730(conv2d1x1_B8_branch_vunroll_x_out_c0_exe8730),
        .out_c0_exe9731(conv2d1x1_B8_branch_vunroll_x_out_c0_exe9731),
        .out_c1_exe10(conv2d1x1_B8_branch_vunroll_x_out_c1_exe10),
        .out_c1_exe11(conv2d1x1_B8_branch_vunroll_x_out_c1_exe11),
        .out_c1_exe12(conv2d1x1_B8_branch_vunroll_x_out_c1_exe12),
        .out_c1_exe13(conv2d1x1_B8_branch_vunroll_x_out_c1_exe13),
        .out_c1_exe14(conv2d1x1_B8_branch_vunroll_x_out_c1_exe14),
        .out_c1_exe1847(conv2d1x1_B8_branch_vunroll_x_out_c1_exe1847),
        .out_c1_exe2(conv2d1x1_B8_branch_vunroll_x_out_c1_exe2),
        .out_c1_exe3(conv2d1x1_B8_branch_vunroll_x_out_c1_exe3),
        .out_c1_exe4(conv2d1x1_B8_branch_vunroll_x_out_c1_exe4),
        .out_c1_exe5(conv2d1x1_B8_branch_vunroll_x_out_c1_exe5),
        .out_c1_exe6(conv2d1x1_B8_branch_vunroll_x_out_c1_exe6),
        .out_c1_exe7(conv2d1x1_B8_branch_vunroll_x_out_c1_exe7),
        .out_c1_exe8(conv2d1x1_B8_branch_vunroll_x_out_c1_exe8),
        .out_c1_exe9(conv2d1x1_B8_branch_vunroll_x_out_c1_exe9),
        .out_stall_out(conv2d1x1_B8_branch_vunroll_x_out_stall_out),
        .out_valid_out_0(conv2d1x1_B8_branch_vunroll_x_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B8_branch_vunroll_x_out_valid_out_1),
        .out_lm177_0_tpl(conv2d1x1_B8_branch_vunroll_x_out_lm177_0_tpl),
        .out_lm177_1_tpl(conv2d1x1_B8_branch_vunroll_x_out_lm177_1_tpl),
        .out_lm177_2_tpl(conv2d1x1_B8_branch_vunroll_x_out_lm177_2_tpl),
        .out_lm177_3_tpl(conv2d1x1_B8_branch_vunroll_x_out_lm177_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B8_merge(BLACKBOX,3)
    conv2d1x1_B8_merge theconv2d1x1_B8_merge (
        .in_forked17105_pop68312_0(in_forked17105_pop68312_0),
        .in_forked17105_pop68312_1(in_forked17105_pop68312_1),
        .in_forked17244_0(in_forked17244_0),
        .in_forked17244_1(in_forked17244_1),
        .in_forked59311_0(in_forked59311_0),
        .in_forked59311_1(in_forked59311_1),
        .in_forked59_and313_0(in_forked59_and313_0),
        .in_forked59_and313_1(in_forked59_and313_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_ij_067_pop51318_0(in_ij_067_pop51318_0),
        .in_ij_067_pop51318_1(in_ij_067_pop51318_1),
        .in_lm96111_pop73338_0(in_lm96111_pop73338_0),
        .in_lm96111_pop73338_1(in_lm96111_pop73338_1),
        .in_lm96253_0(in_lm96253_0),
        .in_lm96253_1(in_lm96253_1),
        .in_mul107_pop69335_0(in_mul107_pop69335_0),
        .in_mul107_pop69335_1(in_mul107_pop69335_1),
        .in_mul21113_pop74339_0(in_mul21113_pop74339_0),
        .in_mul21113_pop74339_1(in_mul21113_pop74339_1),
        .in_mul21256_0(in_mul21256_0),
        .in_mul21256_1(in_mul21256_1),
        .in_mul247_0(in_mul247_0),
        .in_mul247_1(in_mul247_1),
        .in_mul97115_pop75340_0(in_mul97115_pop75340_0),
        .in_mul97115_pop75340_1(in_mul97115_pop75340_1),
        .in_mul97259_0(in_mul97259_0),
        .in_mul97259_1(in_mul97259_1),
        .in_notcmp19317_0(in_notcmp19317_0),
        .in_notcmp19317_1(in_notcmp19317_1),
        .in_notcmp24117_pop77341_0(in_notcmp24117_pop77341_0),
        .in_notcmp24117_pop77341_1(in_notcmp24117_pop77341_1),
        .in_notcmp24262_0(in_notcmp24262_0),
        .in_notcmp24262_1(in_notcmp24262_1),
        .in_or316_0(in_or316_0),
        .in_or316_1(in_or316_1),
        .in_phi_decision102_xor109_pop72314_0(in_phi_decision102_xor109_pop72314_0),
        .in_phi_decision102_xor109_pop72314_1(in_phi_decision102_xor109_pop72314_1),
        .in_phi_decision102_xor250_0(in_phi_decision102_xor250_0),
        .in_phi_decision102_xor250_1(in_phi_decision102_xor250_1),
        .in_pop12268_0(in_pop12268_0),
        .in_pop12268_1(in_pop12268_1),
        .in_pop53320_0(in_pop53320_0),
        .in_pop53320_1(in_pop53320_1),
        .in_pop70336_0(in_pop70336_0),
        .in_pop70336_1(in_pop70336_1),
        .in_pop71337_0(in_pop71337_0),
        .in_pop71337_1(in_pop71337_1),
        .in_pop76315_0(in_pop76315_0),
        .in_pop76315_1(in_pop76315_1),
        .in_spec_select155_0(in_spec_select155_0),
        .in_spec_select155_1(in_spec_select155_1),
        .in_spec_select323161_0(in_spec_select323161_0),
        .in_spec_select323161_1(in_spec_select323161_1),
        .in_spec_select32363_pop13271_0(in_spec_select32363_pop13271_0),
        .in_spec_select32363_pop13271_1(in_spec_select32363_pop13271_1),
        .in_spec_select32364_pop54321_0(in_spec_select32364_pop54321_0),
        .in_spec_select32364_pop54321_1(in_spec_select32364_pop54321_1),
        .in_spec_select324167_0(in_spec_select324167_0),
        .in_spec_select324167_1(in_spec_select324167_1),
        .in_spec_select32466_pop14274_0(in_spec_select32466_pop14274_0),
        .in_spec_select32466_pop14274_1(in_spec_select32466_pop14274_1),
        .in_spec_select32467_pop55322_0(in_spec_select32467_pop55322_0),
        .in_spec_select32467_pop55322_1(in_spec_select32467_pop55322_1),
        .in_spec_select325173_0(in_spec_select325173_0),
        .in_spec_select325173_1(in_spec_select325173_1),
        .in_spec_select32569_pop15277_0(in_spec_select32569_pop15277_0),
        .in_spec_select32569_pop15277_1(in_spec_select32569_pop15277_1),
        .in_spec_select32570_pop56323_0(in_spec_select32570_pop56323_0),
        .in_spec_select32570_pop56323_1(in_spec_select32570_pop56323_1),
        .in_spec_select326179_0(in_spec_select326179_0),
        .in_spec_select326179_1(in_spec_select326179_1),
        .in_spec_select32672_pop16280_0(in_spec_select32672_pop16280_0),
        .in_spec_select32672_pop16280_1(in_spec_select32672_pop16280_1),
        .in_spec_select32673_pop57324_0(in_spec_select32673_pop57324_0),
        .in_spec_select32673_pop57324_1(in_spec_select32673_pop57324_1),
        .in_spec_select327185_0(in_spec_select327185_0),
        .in_spec_select327185_1(in_spec_select327185_1),
        .in_spec_select32775_pop17283_0(in_spec_select32775_pop17283_0),
        .in_spec_select32775_pop17283_1(in_spec_select32775_pop17283_1),
        .in_spec_select32776_pop58325_0(in_spec_select32776_pop58325_0),
        .in_spec_select32776_pop58325_1(in_spec_select32776_pop58325_1),
        .in_spec_select328191_0(in_spec_select328191_0),
        .in_spec_select328191_1(in_spec_select328191_1),
        .in_spec_select32878_pop18286_0(in_spec_select32878_pop18286_0),
        .in_spec_select32878_pop18286_1(in_spec_select32878_pop18286_1),
        .in_spec_select32879_pop59326_0(in_spec_select32879_pop59326_0),
        .in_spec_select32879_pop59326_1(in_spec_select32879_pop59326_1),
        .in_spec_select329197_0(in_spec_select329197_0),
        .in_spec_select329197_1(in_spec_select329197_1),
        .in_spec_select32981_pop19289_0(in_spec_select32981_pop19289_0),
        .in_spec_select32981_pop19289_1(in_spec_select32981_pop19289_1),
        .in_spec_select32982_pop60327_0(in_spec_select32982_pop60327_0),
        .in_spec_select32982_pop60327_1(in_spec_select32982_pop60327_1),
        .in_spec_select330203_0(in_spec_select330203_0),
        .in_spec_select330203_1(in_spec_select330203_1),
        .in_spec_select33084_pop20292_0(in_spec_select33084_pop20292_0),
        .in_spec_select33084_pop20292_1(in_spec_select33084_pop20292_1),
        .in_spec_select33085_pop61328_0(in_spec_select33085_pop61328_0),
        .in_spec_select33085_pop61328_1(in_spec_select33085_pop61328_1),
        .in_spec_select331209_0(in_spec_select331209_0),
        .in_spec_select331209_1(in_spec_select331209_1),
        .in_spec_select33187_pop21295_0(in_spec_select33187_pop21295_0),
        .in_spec_select33187_pop21295_1(in_spec_select33187_pop21295_1),
        .in_spec_select33188_pop62329_0(in_spec_select33188_pop62329_0),
        .in_spec_select33188_pop62329_1(in_spec_select33188_pop62329_1),
        .in_spec_select332215_0(in_spec_select332215_0),
        .in_spec_select332215_1(in_spec_select332215_1),
        .in_spec_select33290_pop22298_0(in_spec_select33290_pop22298_0),
        .in_spec_select33290_pop22298_1(in_spec_select33290_pop22298_1),
        .in_spec_select33291_pop63330_0(in_spec_select33291_pop63330_0),
        .in_spec_select33291_pop63330_1(in_spec_select33291_pop63330_1),
        .in_spec_select333221_0(in_spec_select333221_0),
        .in_spec_select333221_1(in_spec_select333221_1),
        .in_spec_select33393_pop23301_0(in_spec_select33393_pop23301_0),
        .in_spec_select33393_pop23301_1(in_spec_select33393_pop23301_1),
        .in_spec_select33394_pop64331_0(in_spec_select33394_pop64331_0),
        .in_spec_select33394_pop64331_1(in_spec_select33394_pop64331_1),
        .in_spec_select334227_0(in_spec_select334227_0),
        .in_spec_select334227_1(in_spec_select334227_1),
        .in_spec_select33496_pop24302_0(in_spec_select33496_pop24302_0),
        .in_spec_select33496_pop24302_1(in_spec_select33496_pop24302_1),
        .in_spec_select33497_pop65332_0(in_spec_select33497_pop65332_0),
        .in_spec_select33497_pop65332_1(in_spec_select33497_pop65332_1),
        .in_spec_select335100_pop66333_0(in_spec_select335100_pop66333_0),
        .in_spec_select335100_pop66333_1(in_spec_select335100_pop66333_1),
        .in_spec_select335233_0(in_spec_select335233_0),
        .in_spec_select335233_1(in_spec_select335233_1),
        .in_spec_select33599_pop25305_0(in_spec_select33599_pop25305_0),
        .in_spec_select33599_pop25305_1(in_spec_select33599_pop25305_1),
        .in_spec_select336102_pop26308_0(in_spec_select336102_pop26308_0),
        .in_spec_select336102_pop26308_1(in_spec_select336102_pop26308_1),
        .in_spec_select336103_pop67334_0(in_spec_select336103_pop67334_0),
        .in_spec_select336103_pop67334_1(in_spec_select336103_pop67334_1),
        .in_spec_select336239_0(in_spec_select336239_0),
        .in_spec_select336239_1(in_spec_select336239_1),
        .in_spec_select60_pop11265_0(in_spec_select60_pop11265_0),
        .in_spec_select60_pop11265_1(in_spec_select60_pop11265_1),
        .in_spec_select61_pop52319_0(in_spec_select61_pop52319_0),
        .in_spec_select61_pop52319_1(in_spec_select61_pop52319_1),
        .in_stall_in(bb_conv2d1x1_B8_stall_region_out_stall_out),
        .in_unnamed_conv2d1x114_0(in_unnamed_conv2d1x114_0),
        .in_unnamed_conv2d1x114_1(in_unnamed_conv2d1x114_1),
        .in_unnamed_conv2d1x115_0(in_unnamed_conv2d1x115_0),
        .in_unnamed_conv2d1x115_1(in_unnamed_conv2d1x115_1),
        .in_unnamed_conv2d1x116_0(in_unnamed_conv2d1x116_0),
        .in_unnamed_conv2d1x116_1(in_unnamed_conv2d1x116_1),
        .in_unnamed_conv2d1x117_0(in_unnamed_conv2d1x117_0),
        .in_unnamed_conv2d1x117_1(in_unnamed_conv2d1x117_1),
        .in_unnamed_conv2d1x118_0(in_unnamed_conv2d1x118_0),
        .in_unnamed_conv2d1x118_1(in_unnamed_conv2d1x118_1),
        .in_unnamed_conv2d1x119_0(in_unnamed_conv2d1x119_0),
        .in_unnamed_conv2d1x119_1(in_unnamed_conv2d1x119_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(conv2d1x1_B8_merge_out_forked),
        .out_forked17105_pop68312(conv2d1x1_B8_merge_out_forked17105_pop68312),
        .out_forked17244(conv2d1x1_B8_merge_out_forked17244),
        .out_forked59311(conv2d1x1_B8_merge_out_forked59311),
        .out_forked59_and313(conv2d1x1_B8_merge_out_forked59_and313),
        .out_ij_067_pop51318(conv2d1x1_B8_merge_out_ij_067_pop51318),
        .out_lm96111_pop73338(conv2d1x1_B8_merge_out_lm96111_pop73338),
        .out_lm96253(conv2d1x1_B8_merge_out_lm96253),
        .out_mul107_pop69335(conv2d1x1_B8_merge_out_mul107_pop69335),
        .out_mul21113_pop74339(conv2d1x1_B8_merge_out_mul21113_pop74339),
        .out_mul21256(conv2d1x1_B8_merge_out_mul21256),
        .out_mul247(conv2d1x1_B8_merge_out_mul247),
        .out_mul97115_pop75340(conv2d1x1_B8_merge_out_mul97115_pop75340),
        .out_mul97259(conv2d1x1_B8_merge_out_mul97259),
        .out_notcmp19317(conv2d1x1_B8_merge_out_notcmp19317),
        .out_notcmp24117_pop77341(conv2d1x1_B8_merge_out_notcmp24117_pop77341),
        .out_notcmp24262(conv2d1x1_B8_merge_out_notcmp24262),
        .out_or316(conv2d1x1_B8_merge_out_or316),
        .out_phi_decision102_xor109_pop72314(conv2d1x1_B8_merge_out_phi_decision102_xor109_pop72314),
        .out_phi_decision102_xor250(conv2d1x1_B8_merge_out_phi_decision102_xor250),
        .out_pop12268(conv2d1x1_B8_merge_out_pop12268),
        .out_pop53320(conv2d1x1_B8_merge_out_pop53320),
        .out_pop70336(conv2d1x1_B8_merge_out_pop70336),
        .out_pop71337(conv2d1x1_B8_merge_out_pop71337),
        .out_pop76315(conv2d1x1_B8_merge_out_pop76315),
        .out_spec_select155(conv2d1x1_B8_merge_out_spec_select155),
        .out_spec_select323161(conv2d1x1_B8_merge_out_spec_select323161),
        .out_spec_select32363_pop13271(conv2d1x1_B8_merge_out_spec_select32363_pop13271),
        .out_spec_select32364_pop54321(conv2d1x1_B8_merge_out_spec_select32364_pop54321),
        .out_spec_select324167(conv2d1x1_B8_merge_out_spec_select324167),
        .out_spec_select32466_pop14274(conv2d1x1_B8_merge_out_spec_select32466_pop14274),
        .out_spec_select32467_pop55322(conv2d1x1_B8_merge_out_spec_select32467_pop55322),
        .out_spec_select325173(conv2d1x1_B8_merge_out_spec_select325173),
        .out_spec_select32569_pop15277(conv2d1x1_B8_merge_out_spec_select32569_pop15277),
        .out_spec_select32570_pop56323(conv2d1x1_B8_merge_out_spec_select32570_pop56323),
        .out_spec_select326179(conv2d1x1_B8_merge_out_spec_select326179),
        .out_spec_select32672_pop16280(conv2d1x1_B8_merge_out_spec_select32672_pop16280),
        .out_spec_select32673_pop57324(conv2d1x1_B8_merge_out_spec_select32673_pop57324),
        .out_spec_select327185(conv2d1x1_B8_merge_out_spec_select327185),
        .out_spec_select32775_pop17283(conv2d1x1_B8_merge_out_spec_select32775_pop17283),
        .out_spec_select32776_pop58325(conv2d1x1_B8_merge_out_spec_select32776_pop58325),
        .out_spec_select328191(conv2d1x1_B8_merge_out_spec_select328191),
        .out_spec_select32878_pop18286(conv2d1x1_B8_merge_out_spec_select32878_pop18286),
        .out_spec_select32879_pop59326(conv2d1x1_B8_merge_out_spec_select32879_pop59326),
        .out_spec_select329197(conv2d1x1_B8_merge_out_spec_select329197),
        .out_spec_select32981_pop19289(conv2d1x1_B8_merge_out_spec_select32981_pop19289),
        .out_spec_select32982_pop60327(conv2d1x1_B8_merge_out_spec_select32982_pop60327),
        .out_spec_select330203(conv2d1x1_B8_merge_out_spec_select330203),
        .out_spec_select33084_pop20292(conv2d1x1_B8_merge_out_spec_select33084_pop20292),
        .out_spec_select33085_pop61328(conv2d1x1_B8_merge_out_spec_select33085_pop61328),
        .out_spec_select331209(conv2d1x1_B8_merge_out_spec_select331209),
        .out_spec_select33187_pop21295(conv2d1x1_B8_merge_out_spec_select33187_pop21295),
        .out_spec_select33188_pop62329(conv2d1x1_B8_merge_out_spec_select33188_pop62329),
        .out_spec_select332215(conv2d1x1_B8_merge_out_spec_select332215),
        .out_spec_select33290_pop22298(conv2d1x1_B8_merge_out_spec_select33290_pop22298),
        .out_spec_select33291_pop63330(conv2d1x1_B8_merge_out_spec_select33291_pop63330),
        .out_spec_select333221(conv2d1x1_B8_merge_out_spec_select333221),
        .out_spec_select33393_pop23301(conv2d1x1_B8_merge_out_spec_select33393_pop23301),
        .out_spec_select33394_pop64331(conv2d1x1_B8_merge_out_spec_select33394_pop64331),
        .out_spec_select334227(conv2d1x1_B8_merge_out_spec_select334227),
        .out_spec_select33496_pop24302(conv2d1x1_B8_merge_out_spec_select33496_pop24302),
        .out_spec_select33497_pop65332(conv2d1x1_B8_merge_out_spec_select33497_pop65332),
        .out_spec_select335100_pop66333(conv2d1x1_B8_merge_out_spec_select335100_pop66333),
        .out_spec_select335233(conv2d1x1_B8_merge_out_spec_select335233),
        .out_spec_select33599_pop25305(conv2d1x1_B8_merge_out_spec_select33599_pop25305),
        .out_spec_select336102_pop26308(conv2d1x1_B8_merge_out_spec_select336102_pop26308),
        .out_spec_select336103_pop67334(conv2d1x1_B8_merge_out_spec_select336103_pop67334),
        .out_spec_select336239(conv2d1x1_B8_merge_out_spec_select336239),
        .out_spec_select60_pop11265(conv2d1x1_B8_merge_out_spec_select60_pop11265),
        .out_spec_select61_pop52319(conv2d1x1_B8_merge_out_spec_select61_pop52319),
        .out_stall_out_0(conv2d1x1_B8_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B8_merge_out_stall_out_1),
        .out_unnamed_conv2d1x114(conv2d1x1_B8_merge_out_unnamed_conv2d1x114),
        .out_unnamed_conv2d1x115(conv2d1x1_B8_merge_out_unnamed_conv2d1x115),
        .out_unnamed_conv2d1x116(conv2d1x1_B8_merge_out_unnamed_conv2d1x116),
        .out_unnamed_conv2d1x117(conv2d1x1_B8_merge_out_unnamed_conv2d1x117),
        .out_unnamed_conv2d1x118(conv2d1x1_B8_merge_out_unnamed_conv2d1x118),
        .out_unnamed_conv2d1x119(conv2d1x1_B8_merge_out_unnamed_conv2d1x119),
        .out_valid_out(conv2d1x1_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B8_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B8_stall_region thebb_conv2d1x1_B8_stall_region (
        .in_filter_weight(in_filter_weight),
        .in_flush(in_flush),
        .in_forked(conv2d1x1_B8_merge_out_forked),
        .in_forked17105_pop68312(conv2d1x1_B8_merge_out_forked17105_pop68312),
        .in_forked17244(conv2d1x1_B8_merge_out_forked17244),
        .in_forked59311(conv2d1x1_B8_merge_out_forked59311),
        .in_forked59_and313(conv2d1x1_B8_merge_out_forked59_and313),
        .in_ij_067_pop51318(conv2d1x1_B8_merge_out_ij_067_pop51318),
        .in_input_im(in_input_im),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_lm177_conv2d1x1_avm_readdata(in_lm177_conv2d1x1_avm_readdata),
        .in_lm177_conv2d1x1_avm_readdatavalid(in_lm177_conv2d1x1_avm_readdatavalid),
        .in_lm177_conv2d1x1_avm_waitrequest(in_lm177_conv2d1x1_avm_waitrequest),
        .in_lm177_conv2d1x1_avm_writeack(in_lm177_conv2d1x1_avm_writeack),
        .in_lm178_conv2d1x1_avm_readdata(in_lm178_conv2d1x1_avm_readdata),
        .in_lm178_conv2d1x1_avm_readdatavalid(in_lm178_conv2d1x1_avm_readdatavalid),
        .in_lm178_conv2d1x1_avm_waitrequest(in_lm178_conv2d1x1_avm_waitrequest),
        .in_lm178_conv2d1x1_avm_writeack(in_lm178_conv2d1x1_avm_writeack),
        .in_lm96111_pop73338(conv2d1x1_B8_merge_out_lm96111_pop73338),
        .in_lm96253(conv2d1x1_B8_merge_out_lm96253),
        .in_mul107_pop69335(conv2d1x1_B8_merge_out_mul107_pop69335),
        .in_mul21113_pop74339(conv2d1x1_B8_merge_out_mul21113_pop74339),
        .in_mul21256(conv2d1x1_B8_merge_out_mul21256),
        .in_mul247(conv2d1x1_B8_merge_out_mul247),
        .in_mul97115_pop75340(conv2d1x1_B8_merge_out_mul97115_pop75340),
        .in_mul97259(conv2d1x1_B8_merge_out_mul97259),
        .in_notcmp19317(conv2d1x1_B8_merge_out_notcmp19317),
        .in_notcmp24117_pop77341(conv2d1x1_B8_merge_out_notcmp24117_pop77341),
        .in_notcmp24262(conv2d1x1_B8_merge_out_notcmp24262),
        .in_or316(conv2d1x1_B8_merge_out_or316),
        .in_phi_decision102_xor109_pop72314(conv2d1x1_B8_merge_out_phi_decision102_xor109_pop72314),
        .in_phi_decision102_xor250(conv2d1x1_B8_merge_out_phi_decision102_xor250),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop12268(conv2d1x1_B8_merge_out_pop12268),
        .in_pop53320(conv2d1x1_B8_merge_out_pop53320),
        .in_pop70336(conv2d1x1_B8_merge_out_pop70336),
        .in_pop71337(conv2d1x1_B8_merge_out_pop71337),
        .in_pop76315(conv2d1x1_B8_merge_out_pop76315),
        .in_spec_select155(conv2d1x1_B8_merge_out_spec_select155),
        .in_spec_select323161(conv2d1x1_B8_merge_out_spec_select323161),
        .in_spec_select32363_pop13271(conv2d1x1_B8_merge_out_spec_select32363_pop13271),
        .in_spec_select32364_pop54321(conv2d1x1_B8_merge_out_spec_select32364_pop54321),
        .in_spec_select324167(conv2d1x1_B8_merge_out_spec_select324167),
        .in_spec_select32466_pop14274(conv2d1x1_B8_merge_out_spec_select32466_pop14274),
        .in_spec_select32467_pop55322(conv2d1x1_B8_merge_out_spec_select32467_pop55322),
        .in_spec_select325173(conv2d1x1_B8_merge_out_spec_select325173),
        .in_spec_select32569_pop15277(conv2d1x1_B8_merge_out_spec_select32569_pop15277),
        .in_spec_select32570_pop56323(conv2d1x1_B8_merge_out_spec_select32570_pop56323),
        .in_spec_select326179(conv2d1x1_B8_merge_out_spec_select326179),
        .in_spec_select32672_pop16280(conv2d1x1_B8_merge_out_spec_select32672_pop16280),
        .in_spec_select32673_pop57324(conv2d1x1_B8_merge_out_spec_select32673_pop57324),
        .in_spec_select327185(conv2d1x1_B8_merge_out_spec_select327185),
        .in_spec_select32775_pop17283(conv2d1x1_B8_merge_out_spec_select32775_pop17283),
        .in_spec_select32776_pop58325(conv2d1x1_B8_merge_out_spec_select32776_pop58325),
        .in_spec_select328191(conv2d1x1_B8_merge_out_spec_select328191),
        .in_spec_select32878_pop18286(conv2d1x1_B8_merge_out_spec_select32878_pop18286),
        .in_spec_select32879_pop59326(conv2d1x1_B8_merge_out_spec_select32879_pop59326),
        .in_spec_select329197(conv2d1x1_B8_merge_out_spec_select329197),
        .in_spec_select32981_pop19289(conv2d1x1_B8_merge_out_spec_select32981_pop19289),
        .in_spec_select32982_pop60327(conv2d1x1_B8_merge_out_spec_select32982_pop60327),
        .in_spec_select330203(conv2d1x1_B8_merge_out_spec_select330203),
        .in_spec_select33084_pop20292(conv2d1x1_B8_merge_out_spec_select33084_pop20292),
        .in_spec_select33085_pop61328(conv2d1x1_B8_merge_out_spec_select33085_pop61328),
        .in_spec_select331209(conv2d1x1_B8_merge_out_spec_select331209),
        .in_spec_select33187_pop21295(conv2d1x1_B8_merge_out_spec_select33187_pop21295),
        .in_spec_select33188_pop62329(conv2d1x1_B8_merge_out_spec_select33188_pop62329),
        .in_spec_select332215(conv2d1x1_B8_merge_out_spec_select332215),
        .in_spec_select33290_pop22298(conv2d1x1_B8_merge_out_spec_select33290_pop22298),
        .in_spec_select33291_pop63330(conv2d1x1_B8_merge_out_spec_select33291_pop63330),
        .in_spec_select333221(conv2d1x1_B8_merge_out_spec_select333221),
        .in_spec_select33393_pop23301(conv2d1x1_B8_merge_out_spec_select33393_pop23301),
        .in_spec_select33394_pop64331(conv2d1x1_B8_merge_out_spec_select33394_pop64331),
        .in_spec_select334227(conv2d1x1_B8_merge_out_spec_select334227),
        .in_spec_select33496_pop24302(conv2d1x1_B8_merge_out_spec_select33496_pop24302),
        .in_spec_select33497_pop65332(conv2d1x1_B8_merge_out_spec_select33497_pop65332),
        .in_spec_select335100_pop66333(conv2d1x1_B8_merge_out_spec_select335100_pop66333),
        .in_spec_select335233(conv2d1x1_B8_merge_out_spec_select335233),
        .in_spec_select33599_pop25305(conv2d1x1_B8_merge_out_spec_select33599_pop25305),
        .in_spec_select336102_pop26308(conv2d1x1_B8_merge_out_spec_select336102_pop26308),
        .in_spec_select336103_pop67334(conv2d1x1_B8_merge_out_spec_select336103_pop67334),
        .in_spec_select336239(conv2d1x1_B8_merge_out_spec_select336239),
        .in_spec_select60_pop11265(conv2d1x1_B8_merge_out_spec_select60_pop11265),
        .in_spec_select61_pop52319(conv2d1x1_B8_merge_out_spec_select61_pop52319),
        .in_stall_in(conv2d1x1_B8_branch_vunroll_x_out_stall_out),
        .in_unnamed_conv2d1x114(conv2d1x1_B8_merge_out_unnamed_conv2d1x114),
        .in_unnamed_conv2d1x115(conv2d1x1_B8_merge_out_unnamed_conv2d1x115),
        .in_unnamed_conv2d1x116(conv2d1x1_B8_merge_out_unnamed_conv2d1x116),
        .in_unnamed_conv2d1x117(conv2d1x1_B8_merge_out_unnamed_conv2d1x117),
        .in_unnamed_conv2d1x118(conv2d1x1_B8_merge_out_unnamed_conv2d1x118),
        .in_unnamed_conv2d1x119(conv2d1x1_B8_merge_out_unnamed_conv2d1x119),
        .in_valid_in(conv2d1x1_B8_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out(bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out(bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out),
        .out_c0_exe12734(bb_conv2d1x1_B8_stall_region_out_c0_exe12734),
        .out_c0_exe13735(bb_conv2d1x1_B8_stall_region_out_c0_exe13735),
        .out_c0_exe15737(bb_conv2d1x1_B8_stall_region_out_c0_exe15737),
        .out_c0_exe16738(bb_conv2d1x1_B8_stall_region_out_c0_exe16738),
        .out_c0_exe17739(bb_conv2d1x1_B8_stall_region_out_c0_exe17739),
        .out_c0_exe18740(bb_conv2d1x1_B8_stall_region_out_c0_exe18740),
        .out_c0_exe19741(bb_conv2d1x1_B8_stall_region_out_c0_exe19741),
        .out_c0_exe20742(bb_conv2d1x1_B8_stall_region_out_c0_exe20742),
        .out_c0_exe21743(bb_conv2d1x1_B8_stall_region_out_c0_exe21743),
        .out_c0_exe22744(bb_conv2d1x1_B8_stall_region_out_c0_exe22744),
        .out_c0_exe23745(bb_conv2d1x1_B8_stall_region_out_c0_exe23745),
        .out_c0_exe24746(bb_conv2d1x1_B8_stall_region_out_c0_exe24746),
        .out_c0_exe25747(bb_conv2d1x1_B8_stall_region_out_c0_exe25747),
        .out_c0_exe7729(bb_conv2d1x1_B8_stall_region_out_c0_exe7729),
        .out_c0_exe8730(bb_conv2d1x1_B8_stall_region_out_c0_exe8730),
        .out_c0_exe9731(bb_conv2d1x1_B8_stall_region_out_c0_exe9731),
        .out_c1_exe10(bb_conv2d1x1_B8_stall_region_out_c1_exe10),
        .out_c1_exe11(bb_conv2d1x1_B8_stall_region_out_c1_exe11),
        .out_c1_exe12(bb_conv2d1x1_B8_stall_region_out_c1_exe12),
        .out_c1_exe13(bb_conv2d1x1_B8_stall_region_out_c1_exe13),
        .out_c1_exe14(bb_conv2d1x1_B8_stall_region_out_c1_exe14),
        .out_c1_exe1847(bb_conv2d1x1_B8_stall_region_out_c1_exe1847),
        .out_c1_exe2(bb_conv2d1x1_B8_stall_region_out_c1_exe2),
        .out_c1_exe3(bb_conv2d1x1_B8_stall_region_out_c1_exe3),
        .out_c1_exe4(bb_conv2d1x1_B8_stall_region_out_c1_exe4),
        .out_c1_exe5(bb_conv2d1x1_B8_stall_region_out_c1_exe5),
        .out_c1_exe6(bb_conv2d1x1_B8_stall_region_out_c1_exe6),
        .out_c1_exe7(bb_conv2d1x1_B8_stall_region_out_c1_exe7),
        .out_c1_exe8(bb_conv2d1x1_B8_stall_region_out_c1_exe8),
        .out_c1_exe9(bb_conv2d1x1_B8_stall_region_out_c1_exe9),
        .out_lm177_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_address),
        .out_lm177_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_burstcount),
        .out_lm177_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_byteenable),
        .out_lm177_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_enable),
        .out_lm177_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_read),
        .out_lm177_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_write),
        .out_lm177_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_writedata),
        .out_lm178_conv2d1x1_avm_address(bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_address),
        .out_lm178_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_burstcount),
        .out_lm178_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_byteenable),
        .out_lm178_conv2d1x1_avm_enable(bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_enable),
        .out_lm178_conv2d1x1_avm_read(bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_read),
        .out_lm178_conv2d1x1_avm_write(bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_write),
        .out_lm178_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d1x1_B8_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d1x1_B8_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B8_stall_region_out_valid_out),
        .out_lm177_0_tpl(bb_conv2d1x1_B8_stall_region_out_lm177_0_tpl),
        .out_lm177_1_tpl(bb_conv2d1x1_B8_stall_region_out_lm177_1_tpl),
        .out_lm177_2_tpl(bb_conv2d1x1_B8_stall_region_out_lm177_2_tpl),
        .out_lm177_3_tpl(bb_conv2d1x1_B8_stall_region_out_lm177_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,176)
    assign out_pipeline_valid_out = bb_conv2d1x1_B8_stall_region_out_pipeline_valid_out;

    // out_c0_exe12734(GPOUT,178)
    assign out_c0_exe12734 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe12734;

    // out_c0_exe13735(GPOUT,179)
    assign out_c0_exe13735 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe13735;

    // out_c0_exe15737(GPOUT,180)
    assign out_c0_exe15737 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe15737;

    // out_c0_exe17739(GPOUT,181)
    assign out_c0_exe17739 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe17739;

    // out_c0_exe18740(GPOUT,182)
    assign out_c0_exe18740 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe18740;

    // out_c0_exe19741(GPOUT,183)
    assign out_c0_exe19741 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe19741;

    // out_c0_exe20742(GPOUT,184)
    assign out_c0_exe20742 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe20742;

    // out_c0_exe21743(GPOUT,185)
    assign out_c0_exe21743 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe21743;

    // out_c0_exe22744(GPOUT,186)
    assign out_c0_exe22744 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe22744;

    // out_c0_exe23745(GPOUT,187)
    assign out_c0_exe23745 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe23745;

    // out_c0_exe24746(GPOUT,188)
    assign out_c0_exe24746 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe24746;

    // out_c0_exe25747(GPOUT,189)
    assign out_c0_exe25747 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe25747;

    // out_c0_exe7729(GPOUT,190)
    assign out_c0_exe7729 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe7729;

    // out_c0_exe8730(GPOUT,191)
    assign out_c0_exe8730 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe8730;

    // out_c0_exe9731(GPOUT,192)
    assign out_c0_exe9731 = conv2d1x1_B8_branch_vunroll_x_out_c0_exe9731;

    // out_c1_exe10(GPOUT,193)
    assign out_c1_exe10 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe10;

    // out_c1_exe11(GPOUT,194)
    assign out_c1_exe11 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe11;

    // out_c1_exe12(GPOUT,195)
    assign out_c1_exe12 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe12;

    // out_c1_exe13(GPOUT,196)
    assign out_c1_exe13 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe13;

    // out_c1_exe14(GPOUT,197)
    assign out_c1_exe14 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe14;

    // out_c1_exe1847(GPOUT,198)
    assign out_c1_exe1847 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe1847;

    // out_c1_exe2(GPOUT,199)
    assign out_c1_exe2 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe2;

    // out_c1_exe3(GPOUT,200)
    assign out_c1_exe3 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe3;

    // out_c1_exe4(GPOUT,201)
    assign out_c1_exe4 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe4;

    // out_c1_exe5(GPOUT,202)
    assign out_c1_exe5 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe5;

    // out_c1_exe6(GPOUT,203)
    assign out_c1_exe6 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe6;

    // out_c1_exe7(GPOUT,204)
    assign out_c1_exe7 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe7;

    // out_c1_exe8(GPOUT,205)
    assign out_c1_exe8 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe8;

    // out_c1_exe9(GPOUT,206)
    assign out_c1_exe9 = conv2d1x1_B8_branch_vunroll_x_out_c1_exe9;

    // out_exiting_stall_out(GPOUT,207)
    assign out_exiting_stall_out = bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,208)
    assign out_exiting_valid_out = bb_conv2d1x1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x110_exiting_valid_out;

    // out_lm177_conv2d1x1_avm_address(GPOUT,209)
    assign out_lm177_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_address;

    // out_lm177_conv2d1x1_avm_burstcount(GPOUT,210)
    assign out_lm177_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_burstcount;

    // out_lm177_conv2d1x1_avm_byteenable(GPOUT,211)
    assign out_lm177_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_byteenable;

    // out_lm177_conv2d1x1_avm_enable(GPOUT,212)
    assign out_lm177_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_enable;

    // out_lm177_conv2d1x1_avm_read(GPOUT,213)
    assign out_lm177_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_read;

    // out_lm177_conv2d1x1_avm_write(GPOUT,214)
    assign out_lm177_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_write;

    // out_lm177_conv2d1x1_avm_writedata(GPOUT,215)
    assign out_lm177_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm177_conv2d1x1_avm_writedata;

    // out_lm178_conv2d1x1_avm_address(GPOUT,216)
    assign out_lm178_conv2d1x1_avm_address = bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_address;

    // out_lm178_conv2d1x1_avm_burstcount(GPOUT,217)
    assign out_lm178_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_burstcount;

    // out_lm178_conv2d1x1_avm_byteenable(GPOUT,218)
    assign out_lm178_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_byteenable;

    // out_lm178_conv2d1x1_avm_enable(GPOUT,219)
    assign out_lm178_conv2d1x1_avm_enable = bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_enable;

    // out_lm178_conv2d1x1_avm_read(GPOUT,220)
    assign out_lm178_conv2d1x1_avm_read = bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_read;

    // out_lm178_conv2d1x1_avm_write(GPOUT,221)
    assign out_lm178_conv2d1x1_avm_write = bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_write;

    // out_lm178_conv2d1x1_avm_writedata(GPOUT,222)
    assign out_lm178_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_stall_region_out_lm178_conv2d1x1_avm_writedata;

    // out_stall_in_0(GPOUT,223)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,224)
    assign out_stall_out_0 = conv2d1x1_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,225)
    assign out_stall_out_1 = conv2d1x1_B8_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,226)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,227)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,228)
    assign out_valid_out_0 = conv2d1x1_B8_branch_vunroll_x_out_valid_out_0;

    // out_valid_out_1(GPOUT,229)
    assign out_valid_out_1 = conv2d1x1_B8_branch_vunroll_x_out_valid_out_1;

    // out_lm177_0_tpl(GPOUT,230)
    assign out_lm177_0_tpl = conv2d1x1_B8_branch_vunroll_x_out_lm177_0_tpl;

    // out_lm177_1_tpl(GPOUT,231)
    assign out_lm177_1_tpl = conv2d1x1_B8_branch_vunroll_x_out_lm177_1_tpl;

    // out_lm177_2_tpl(GPOUT,232)
    assign out_lm177_2_tpl = conv2d1x1_B8_branch_vunroll_x_out_lm177_2_tpl;

    // out_lm177_3_tpl(GPOUT,233)
    assign out_lm177_3_tpl = conv2d1x1_B8_branch_vunroll_x_out_lm177_3_tpl;

endmodule
