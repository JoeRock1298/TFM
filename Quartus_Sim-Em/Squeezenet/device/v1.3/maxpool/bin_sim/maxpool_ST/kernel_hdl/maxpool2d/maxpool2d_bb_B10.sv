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

// SystemVerilog created from maxpool2d_bb_B10
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B10 (
    input wire [31:0] in_add19140_0,
    input wire [31:0] in_add19140_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked13_0,
    input wire [0:0] in_forked13_1,
    input wire [0:0] in_forked31137_0,
    input wire [0:0] in_forked31137_1,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17106_0,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17106_1,
    input wire [63:0] in_input_im_addr_041_replace_phi37_pop22124_0,
    input wire [63:0] in_input_im_addr_041_replace_phi37_pop22124_1,
    input wire [63:0] in_input_im_addr_041_replace_phi38_pop30143_0,
    input wire [63:0] in_input_im_addr_041_replace_phi38_pop30143_1,
    input wire [63:0] in_input_im_addr_041_replace_phi73_0,
    input wire [63:0] in_input_im_addr_041_replace_phi73_1,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_j_034_pop20118_0,
    input wire [31:0] in_j_034_pop20118_1,
    input wire [31:0] in_j_034_pop2055_pop36138_0,
    input wire [31:0] in_j_034_pop2055_pop36138_1,
    input wire [511:0] in_lm_maxpool2d_avm_readdata,
    input wire [0:0] in_lm_maxpool2d_avm_readdatavalid,
    input wire [0:0] in_lm_maxpool2d_avm_waitrequest,
    input wire [0:0] in_lm_maxpool2d_avm_writeack,
    input wire [31:0] in_mul2547_pop25133_0,
    input wire [31:0] in_mul2547_pop25133_1,
    input wire [31:0] in_mul2548_pop33145_0,
    input wire [31:0] in_mul2548_pop33145_1,
    input wire [31:0] in_mul2591_0,
    input wire [31:0] in_mul2591_1,
    input wire [31:0] in_mul44_pop24130_0,
    input wire [31:0] in_mul44_pop24130_1,
    input wire [31:0] in_mul45_pop32139_0,
    input wire [31:0] in_mul45_pop32139_1,
    input wire [31:0] in_mul86_0,
    input wire [31:0] in_mul86_1,
    input wire [0:0] in_notcmp14141_0,
    input wire [0:0] in_notcmp14141_1,
    input wire [0:0] in_notcmp19115_0,
    input wire [0:0] in_notcmp19115_1,
    input wire [0:0] in_notcmp1953_pop35147_0,
    input wire [0:0] in_notcmp1953_pop35147_1,
    input wire [0:0] in_notcmp2350_pop26136_0,
    input wire [0:0] in_notcmp2350_pop26136_1,
    input wire [0:0] in_notcmp2351_pop34146_0,
    input wire [0:0] in_notcmp2351_pop34146_1,
    input wire [0:0] in_notcmp2396_0,
    input wire [0:0] in_notcmp2396_1,
    input wire [0:0] in_notcmp2740_pop18111_0,
    input wire [0:0] in_notcmp2740_pop18111_1,
    input wire [0:0] in_notcmp2741_pop23127_0,
    input wire [0:0] in_notcmp2741_pop23127_1,
    input wire [0:0] in_notcmp2742_pop31144_0,
    input wire [0:0] in_notcmp2742_pop31144_1,
    input wire [0:0] in_notcmp2780_0,
    input wire [0:0] in_notcmp2780_1,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop16101_0,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop16101_1,
    input wire [63:0] in_output_im_addr_042_replace_phi33_pop21121_0,
    input wire [63:0] in_output_im_addr_042_replace_phi33_pop21121_1,
    input wire [63:0] in_output_im_addr_042_replace_phi34_pop29142_0,
    input wire [63:0] in_output_im_addr_042_replace_phi34_pop29142_1,
    input wire [63:0] in_output_im_addr_042_replace_phi66_0,
    input wire [63:0] in_output_im_addr_042_replace_phi66_1,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_maxpool2d14_0,
    input wire [0:0] in_unnamed_maxpool2d14_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10340,
    output wire [31:0] out_c0_exe11341,
    output wire [0:0] out_c0_exe12342,
    output wire [0:0] out_c0_exe13343,
    output wire [31:0] out_c0_exe14344,
    output wire [0:0] out_c0_exe15345,
    output wire [0:0] out_c0_exe5335,
    output wire [63:0] out_c0_exe9339,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm_maxpool2d_avm_address,
    output wire [4:0] out_lm_maxpool2d_avm_burstcount,
    output wire [63:0] out_lm_maxpool2d_avm_byteenable,
    output wire [0:0] out_lm_maxpool2d_avm_enable,
    output wire [0:0] out_lm_maxpool2d_avm_read,
    output wire [0:0] out_lm_maxpool2d_avm_write,
    output wire [511:0] out_lm_maxpool2d_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_maxpool2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_c0_exe10340;
    wire [31:0] bb_maxpool2d_B10_stall_region_out_c0_exe11341;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_c0_exe12342;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_c0_exe13343;
    wire [31:0] bb_maxpool2d_B10_stall_region_out_c0_exe14344;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_c0_exe15345;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_c0_exe5335;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_c0_exe8338;
    wire [63:0] bb_maxpool2d_B10_stall_region_out_c0_exe9339;
    wire [31:0] bb_maxpool2d_B10_stall_region_out_c1_exe1;
    wire [30:0] bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_address;
    wire [4:0] bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_burstcount;
    wire [63:0] bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_byteenable;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_enable;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_read;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_write;
    wire [511:0] bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_writedata;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_stall_out;
    wire [0:0] bb_maxpool2d_B10_stall_region_out_valid_out;
    wire [0:0] maxpool2d_B10_branch_out_c0_exe10340;
    wire [31:0] maxpool2d_B10_branch_out_c0_exe11341;
    wire [0:0] maxpool2d_B10_branch_out_c0_exe12342;
    wire [0:0] maxpool2d_B10_branch_out_c0_exe13343;
    wire [31:0] maxpool2d_B10_branch_out_c0_exe14344;
    wire [0:0] maxpool2d_B10_branch_out_c0_exe15345;
    wire [0:0] maxpool2d_B10_branch_out_c0_exe5335;
    wire [63:0] maxpool2d_B10_branch_out_c0_exe9339;
    wire [31:0] maxpool2d_B10_branch_out_c1_exe1;
    wire [0:0] maxpool2d_B10_branch_out_stall_out;
    wire [0:0] maxpool2d_B10_branch_out_valid_out_0;
    wire [0:0] maxpool2d_B10_branch_out_valid_out_1;
    wire [31:0] maxpool2d_B10_merge_out_add19140;
    wire [0:0] maxpool2d_B10_merge_out_forked13;
    wire [0:0] maxpool2d_B10_merge_out_forked31137;
    wire [63:0] maxpool2d_B10_merge_out_input_im_addr_041_replace_phi36_pop17106;
    wire [63:0] maxpool2d_B10_merge_out_input_im_addr_041_replace_phi37_pop22124;
    wire [63:0] maxpool2d_B10_merge_out_input_im_addr_041_replace_phi38_pop30143;
    wire [63:0] maxpool2d_B10_merge_out_input_im_addr_041_replace_phi73;
    wire [31:0] maxpool2d_B10_merge_out_j_034_pop20118;
    wire [31:0] maxpool2d_B10_merge_out_j_034_pop2055_pop36138;
    wire [31:0] maxpool2d_B10_merge_out_mul2547_pop25133;
    wire [31:0] maxpool2d_B10_merge_out_mul2548_pop33145;
    wire [31:0] maxpool2d_B10_merge_out_mul2591;
    wire [31:0] maxpool2d_B10_merge_out_mul44_pop24130;
    wire [31:0] maxpool2d_B10_merge_out_mul45_pop32139;
    wire [31:0] maxpool2d_B10_merge_out_mul86;
    wire [0:0] maxpool2d_B10_merge_out_notcmp14141;
    wire [0:0] maxpool2d_B10_merge_out_notcmp19115;
    wire [0:0] maxpool2d_B10_merge_out_notcmp1953_pop35147;
    wire [0:0] maxpool2d_B10_merge_out_notcmp2350_pop26136;
    wire [0:0] maxpool2d_B10_merge_out_notcmp2351_pop34146;
    wire [0:0] maxpool2d_B10_merge_out_notcmp2396;
    wire [0:0] maxpool2d_B10_merge_out_notcmp2740_pop18111;
    wire [0:0] maxpool2d_B10_merge_out_notcmp2741_pop23127;
    wire [0:0] maxpool2d_B10_merge_out_notcmp2742_pop31144;
    wire [0:0] maxpool2d_B10_merge_out_notcmp2780;
    wire [63:0] maxpool2d_B10_merge_out_output_im_addr_042_replace_phi32_pop16101;
    wire [63:0] maxpool2d_B10_merge_out_output_im_addr_042_replace_phi33_pop21121;
    wire [63:0] maxpool2d_B10_merge_out_output_im_addr_042_replace_phi34_pop29142;
    wire [63:0] maxpool2d_B10_merge_out_output_im_addr_042_replace_phi66;
    wire [0:0] maxpool2d_B10_merge_out_stall_out_0;
    wire [0:0] maxpool2d_B10_merge_out_stall_out_1;
    wire [0:0] maxpool2d_B10_merge_out_unnamed_maxpool2d14;
    wire [0:0] maxpool2d_B10_merge_out_valid_out;


    // maxpool2d_B10_merge(BLACKBOX,76)
    maxpool2d_B10_merge themaxpool2d_B10_merge (
        .in_add19140_0(in_add19140_0),
        .in_add19140_1(in_add19140_1),
        .in_forked13_0(in_forked13_0),
        .in_forked13_1(in_forked13_1),
        .in_forked31137_0(in_forked31137_0),
        .in_forked31137_1(in_forked31137_1),
        .in_input_im_addr_041_replace_phi36_pop17106_0(in_input_im_addr_041_replace_phi36_pop17106_0),
        .in_input_im_addr_041_replace_phi36_pop17106_1(in_input_im_addr_041_replace_phi36_pop17106_1),
        .in_input_im_addr_041_replace_phi37_pop22124_0(in_input_im_addr_041_replace_phi37_pop22124_0),
        .in_input_im_addr_041_replace_phi37_pop22124_1(in_input_im_addr_041_replace_phi37_pop22124_1),
        .in_input_im_addr_041_replace_phi38_pop30143_0(in_input_im_addr_041_replace_phi38_pop30143_0),
        .in_input_im_addr_041_replace_phi38_pop30143_1(in_input_im_addr_041_replace_phi38_pop30143_1),
        .in_input_im_addr_041_replace_phi73_0(in_input_im_addr_041_replace_phi73_0),
        .in_input_im_addr_041_replace_phi73_1(in_input_im_addr_041_replace_phi73_1),
        .in_j_034_pop20118_0(in_j_034_pop20118_0),
        .in_j_034_pop20118_1(in_j_034_pop20118_1),
        .in_j_034_pop2055_pop36138_0(in_j_034_pop2055_pop36138_0),
        .in_j_034_pop2055_pop36138_1(in_j_034_pop2055_pop36138_1),
        .in_mul2547_pop25133_0(in_mul2547_pop25133_0),
        .in_mul2547_pop25133_1(in_mul2547_pop25133_1),
        .in_mul2548_pop33145_0(in_mul2548_pop33145_0),
        .in_mul2548_pop33145_1(in_mul2548_pop33145_1),
        .in_mul2591_0(in_mul2591_0),
        .in_mul2591_1(in_mul2591_1),
        .in_mul44_pop24130_0(in_mul44_pop24130_0),
        .in_mul44_pop24130_1(in_mul44_pop24130_1),
        .in_mul45_pop32139_0(in_mul45_pop32139_0),
        .in_mul45_pop32139_1(in_mul45_pop32139_1),
        .in_mul86_0(in_mul86_0),
        .in_mul86_1(in_mul86_1),
        .in_notcmp14141_0(in_notcmp14141_0),
        .in_notcmp14141_1(in_notcmp14141_1),
        .in_notcmp19115_0(in_notcmp19115_0),
        .in_notcmp19115_1(in_notcmp19115_1),
        .in_notcmp1953_pop35147_0(in_notcmp1953_pop35147_0),
        .in_notcmp1953_pop35147_1(in_notcmp1953_pop35147_1),
        .in_notcmp2350_pop26136_0(in_notcmp2350_pop26136_0),
        .in_notcmp2350_pop26136_1(in_notcmp2350_pop26136_1),
        .in_notcmp2351_pop34146_0(in_notcmp2351_pop34146_0),
        .in_notcmp2351_pop34146_1(in_notcmp2351_pop34146_1),
        .in_notcmp2396_0(in_notcmp2396_0),
        .in_notcmp2396_1(in_notcmp2396_1),
        .in_notcmp2740_pop18111_0(in_notcmp2740_pop18111_0),
        .in_notcmp2740_pop18111_1(in_notcmp2740_pop18111_1),
        .in_notcmp2741_pop23127_0(in_notcmp2741_pop23127_0),
        .in_notcmp2741_pop23127_1(in_notcmp2741_pop23127_1),
        .in_notcmp2742_pop31144_0(in_notcmp2742_pop31144_0),
        .in_notcmp2742_pop31144_1(in_notcmp2742_pop31144_1),
        .in_notcmp2780_0(in_notcmp2780_0),
        .in_notcmp2780_1(in_notcmp2780_1),
        .in_output_im_addr_042_replace_phi32_pop16101_0(in_output_im_addr_042_replace_phi32_pop16101_0),
        .in_output_im_addr_042_replace_phi32_pop16101_1(in_output_im_addr_042_replace_phi32_pop16101_1),
        .in_output_im_addr_042_replace_phi33_pop21121_0(in_output_im_addr_042_replace_phi33_pop21121_0),
        .in_output_im_addr_042_replace_phi33_pop21121_1(in_output_im_addr_042_replace_phi33_pop21121_1),
        .in_output_im_addr_042_replace_phi34_pop29142_0(in_output_im_addr_042_replace_phi34_pop29142_0),
        .in_output_im_addr_042_replace_phi34_pop29142_1(in_output_im_addr_042_replace_phi34_pop29142_1),
        .in_output_im_addr_042_replace_phi66_0(in_output_im_addr_042_replace_phi66_0),
        .in_output_im_addr_042_replace_phi66_1(in_output_im_addr_042_replace_phi66_1),
        .in_stall_in(bb_maxpool2d_B10_stall_region_out_stall_out),
        .in_unnamed_maxpool2d14_0(in_unnamed_maxpool2d14_0),
        .in_unnamed_maxpool2d14_1(in_unnamed_maxpool2d14_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add19140(maxpool2d_B10_merge_out_add19140),
        .out_forked13(maxpool2d_B10_merge_out_forked13),
        .out_forked31137(maxpool2d_B10_merge_out_forked31137),
        .out_input_im_addr_041_replace_phi36_pop17106(maxpool2d_B10_merge_out_input_im_addr_041_replace_phi36_pop17106),
        .out_input_im_addr_041_replace_phi37_pop22124(maxpool2d_B10_merge_out_input_im_addr_041_replace_phi37_pop22124),
        .out_input_im_addr_041_replace_phi38_pop30143(maxpool2d_B10_merge_out_input_im_addr_041_replace_phi38_pop30143),
        .out_input_im_addr_041_replace_phi73(maxpool2d_B10_merge_out_input_im_addr_041_replace_phi73),
        .out_j_034_pop20118(maxpool2d_B10_merge_out_j_034_pop20118),
        .out_j_034_pop2055_pop36138(maxpool2d_B10_merge_out_j_034_pop2055_pop36138),
        .out_mul2547_pop25133(maxpool2d_B10_merge_out_mul2547_pop25133),
        .out_mul2548_pop33145(maxpool2d_B10_merge_out_mul2548_pop33145),
        .out_mul2591(maxpool2d_B10_merge_out_mul2591),
        .out_mul44_pop24130(maxpool2d_B10_merge_out_mul44_pop24130),
        .out_mul45_pop32139(maxpool2d_B10_merge_out_mul45_pop32139),
        .out_mul86(maxpool2d_B10_merge_out_mul86),
        .out_notcmp14141(maxpool2d_B10_merge_out_notcmp14141),
        .out_notcmp19115(maxpool2d_B10_merge_out_notcmp19115),
        .out_notcmp1953_pop35147(maxpool2d_B10_merge_out_notcmp1953_pop35147),
        .out_notcmp2350_pop26136(maxpool2d_B10_merge_out_notcmp2350_pop26136),
        .out_notcmp2351_pop34146(maxpool2d_B10_merge_out_notcmp2351_pop34146),
        .out_notcmp2396(maxpool2d_B10_merge_out_notcmp2396),
        .out_notcmp2740_pop18111(maxpool2d_B10_merge_out_notcmp2740_pop18111),
        .out_notcmp2741_pop23127(maxpool2d_B10_merge_out_notcmp2741_pop23127),
        .out_notcmp2742_pop31144(maxpool2d_B10_merge_out_notcmp2742_pop31144),
        .out_notcmp2780(maxpool2d_B10_merge_out_notcmp2780),
        .out_output_im_addr_042_replace_phi32_pop16101(maxpool2d_B10_merge_out_output_im_addr_042_replace_phi32_pop16101),
        .out_output_im_addr_042_replace_phi33_pop21121(maxpool2d_B10_merge_out_output_im_addr_042_replace_phi33_pop21121),
        .out_output_im_addr_042_replace_phi34_pop29142(maxpool2d_B10_merge_out_output_im_addr_042_replace_phi34_pop29142),
        .out_output_im_addr_042_replace_phi66(maxpool2d_B10_merge_out_output_im_addr_042_replace_phi66),
        .out_stall_out_0(maxpool2d_B10_merge_out_stall_out_0),
        .out_stall_out_1(maxpool2d_B10_merge_out_stall_out_1),
        .out_unnamed_maxpool2d14(maxpool2d_B10_merge_out_unnamed_maxpool2d14),
        .out_valid_out(maxpool2d_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B10_stall_region(BLACKBOX,2)
    maxpool2d_bb_B10_stall_region thebb_maxpool2d_B10_stall_region (
        .in_add19140(maxpool2d_B10_merge_out_add19140),
        .in_flush(in_flush),
        .in_forked13(maxpool2d_B10_merge_out_forked13),
        .in_forked31137(maxpool2d_B10_merge_out_forked31137),
        .in_input_im_addr_041_replace_phi36_pop17106(maxpool2d_B10_merge_out_input_im_addr_041_replace_phi36_pop17106),
        .in_input_im_addr_041_replace_phi37_pop22124(maxpool2d_B10_merge_out_input_im_addr_041_replace_phi37_pop22124),
        .in_input_im_addr_041_replace_phi38_pop30143(maxpool2d_B10_merge_out_input_im_addr_041_replace_phi38_pop30143),
        .in_input_im_addr_041_replace_phi73(maxpool2d_B10_merge_out_input_im_addr_041_replace_phi73),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_j_034_pop20118(maxpool2d_B10_merge_out_j_034_pop20118),
        .in_j_034_pop2055_pop36138(maxpool2d_B10_merge_out_j_034_pop2055_pop36138),
        .in_lm_maxpool2d_avm_readdata(in_lm_maxpool2d_avm_readdata),
        .in_lm_maxpool2d_avm_readdatavalid(in_lm_maxpool2d_avm_readdatavalid),
        .in_lm_maxpool2d_avm_waitrequest(in_lm_maxpool2d_avm_waitrequest),
        .in_lm_maxpool2d_avm_writeack(in_lm_maxpool2d_avm_writeack),
        .in_mul2547_pop25133(maxpool2d_B10_merge_out_mul2547_pop25133),
        .in_mul2548_pop33145(maxpool2d_B10_merge_out_mul2548_pop33145),
        .in_mul2591(maxpool2d_B10_merge_out_mul2591),
        .in_mul44_pop24130(maxpool2d_B10_merge_out_mul44_pop24130),
        .in_mul45_pop32139(maxpool2d_B10_merge_out_mul45_pop32139),
        .in_mul86(maxpool2d_B10_merge_out_mul86),
        .in_notcmp14141(maxpool2d_B10_merge_out_notcmp14141),
        .in_notcmp19115(maxpool2d_B10_merge_out_notcmp19115),
        .in_notcmp1953_pop35147(maxpool2d_B10_merge_out_notcmp1953_pop35147),
        .in_notcmp2350_pop26136(maxpool2d_B10_merge_out_notcmp2350_pop26136),
        .in_notcmp2351_pop34146(maxpool2d_B10_merge_out_notcmp2351_pop34146),
        .in_notcmp2396(maxpool2d_B10_merge_out_notcmp2396),
        .in_notcmp2740_pop18111(maxpool2d_B10_merge_out_notcmp2740_pop18111),
        .in_notcmp2741_pop23127(maxpool2d_B10_merge_out_notcmp2741_pop23127),
        .in_notcmp2742_pop31144(maxpool2d_B10_merge_out_notcmp2742_pop31144),
        .in_notcmp2780(maxpool2d_B10_merge_out_notcmp2780),
        .in_output_im_addr_042_replace_phi32_pop16101(maxpool2d_B10_merge_out_output_im_addr_042_replace_phi32_pop16101),
        .in_output_im_addr_042_replace_phi33_pop21121(maxpool2d_B10_merge_out_output_im_addr_042_replace_phi33_pop21121),
        .in_output_im_addr_042_replace_phi34_pop29142(maxpool2d_B10_merge_out_output_im_addr_042_replace_phi34_pop29142),
        .in_output_im_addr_042_replace_phi66(maxpool2d_B10_merge_out_output_im_addr_042_replace_phi66),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(maxpool2d_B10_branch_out_stall_out),
        .in_unnamed_maxpool2d14(maxpool2d_B10_merge_out_unnamed_maxpool2d14),
        .in_valid_in(maxpool2d_B10_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out(bb_maxpool2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out(bb_maxpool2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out),
        .out_c0_exe10340(bb_maxpool2d_B10_stall_region_out_c0_exe10340),
        .out_c0_exe11341(bb_maxpool2d_B10_stall_region_out_c0_exe11341),
        .out_c0_exe12342(bb_maxpool2d_B10_stall_region_out_c0_exe12342),
        .out_c0_exe13343(bb_maxpool2d_B10_stall_region_out_c0_exe13343),
        .out_c0_exe14344(bb_maxpool2d_B10_stall_region_out_c0_exe14344),
        .out_c0_exe15345(bb_maxpool2d_B10_stall_region_out_c0_exe15345),
        .out_c0_exe5335(bb_maxpool2d_B10_stall_region_out_c0_exe5335),
        .out_c0_exe8338(bb_maxpool2d_B10_stall_region_out_c0_exe8338),
        .out_c0_exe9339(bb_maxpool2d_B10_stall_region_out_c0_exe9339),
        .out_c1_exe1(bb_maxpool2d_B10_stall_region_out_c1_exe1),
        .out_lm_maxpool2d_avm_address(bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_address),
        .out_lm_maxpool2d_avm_burstcount(bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_burstcount),
        .out_lm_maxpool2d_avm_byteenable(bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_byteenable),
        .out_lm_maxpool2d_avm_enable(bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_enable),
        .out_lm_maxpool2d_avm_read(bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_read),
        .out_lm_maxpool2d_avm_write(bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_write),
        .out_lm_maxpool2d_avm_writedata(bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_writedata),
        .out_pipeline_valid_out(bb_maxpool2d_B10_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_maxpool2d_B10_stall_region_out_stall_out),
        .out_valid_out(bb_maxpool2d_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B10_branch(BLACKBOX,75)
    maxpool2d_B10_branch themaxpool2d_B10_branch (
        .in_c0_exe10340(bb_maxpool2d_B10_stall_region_out_c0_exe10340),
        .in_c0_exe11341(bb_maxpool2d_B10_stall_region_out_c0_exe11341),
        .in_c0_exe12342(bb_maxpool2d_B10_stall_region_out_c0_exe12342),
        .in_c0_exe13343(bb_maxpool2d_B10_stall_region_out_c0_exe13343),
        .in_c0_exe14344(bb_maxpool2d_B10_stall_region_out_c0_exe14344),
        .in_c0_exe15345(bb_maxpool2d_B10_stall_region_out_c0_exe15345),
        .in_c0_exe5335(bb_maxpool2d_B10_stall_region_out_c0_exe5335),
        .in_c0_exe8338(bb_maxpool2d_B10_stall_region_out_c0_exe8338),
        .in_c0_exe9339(bb_maxpool2d_B10_stall_region_out_c0_exe9339),
        .in_c1_exe1(bb_maxpool2d_B10_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_maxpool2d_B10_stall_region_out_valid_out),
        .out_c0_exe10340(maxpool2d_B10_branch_out_c0_exe10340),
        .out_c0_exe11341(maxpool2d_B10_branch_out_c0_exe11341),
        .out_c0_exe12342(maxpool2d_B10_branch_out_c0_exe12342),
        .out_c0_exe13343(maxpool2d_B10_branch_out_c0_exe13343),
        .out_c0_exe14344(maxpool2d_B10_branch_out_c0_exe14344),
        .out_c0_exe15345(maxpool2d_B10_branch_out_c0_exe15345),
        .out_c0_exe5335(maxpool2d_B10_branch_out_c0_exe5335),
        .out_c0_exe9339(maxpool2d_B10_branch_out_c0_exe9339),
        .out_c1_exe1(maxpool2d_B10_branch_out_c1_exe1),
        .out_stall_out(maxpool2d_B10_branch_out_stall_out),
        .out_valid_out_0(maxpool2d_B10_branch_out_valid_out_0),
        .out_valid_out_1(maxpool2d_B10_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10340(GPOUT,77)
    assign out_c0_exe10340 = maxpool2d_B10_branch_out_c0_exe10340;

    // out_c0_exe11341(GPOUT,78)
    assign out_c0_exe11341 = maxpool2d_B10_branch_out_c0_exe11341;

    // out_c0_exe12342(GPOUT,79)
    assign out_c0_exe12342 = maxpool2d_B10_branch_out_c0_exe12342;

    // out_c0_exe13343(GPOUT,80)
    assign out_c0_exe13343 = maxpool2d_B10_branch_out_c0_exe13343;

    // out_c0_exe14344(GPOUT,81)
    assign out_c0_exe14344 = maxpool2d_B10_branch_out_c0_exe14344;

    // out_c0_exe15345(GPOUT,82)
    assign out_c0_exe15345 = maxpool2d_B10_branch_out_c0_exe15345;

    // out_c0_exe5335(GPOUT,83)
    assign out_c0_exe5335 = maxpool2d_B10_branch_out_c0_exe5335;

    // out_c0_exe9339(GPOUT,84)
    assign out_c0_exe9339 = maxpool2d_B10_branch_out_c0_exe9339;

    // out_c1_exe1(GPOUT,85)
    assign out_c1_exe1 = maxpool2d_B10_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,86)
    assign out_exiting_stall_out = bb_maxpool2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,87)
    assign out_exiting_valid_out = bb_maxpool2d_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_maxpool2d9_exiting_valid_out;

    // out_lm_maxpool2d_avm_address(GPOUT,88)
    assign out_lm_maxpool2d_avm_address = bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_address;

    // out_lm_maxpool2d_avm_burstcount(GPOUT,89)
    assign out_lm_maxpool2d_avm_burstcount = bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_burstcount;

    // out_lm_maxpool2d_avm_byteenable(GPOUT,90)
    assign out_lm_maxpool2d_avm_byteenable = bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_byteenable;

    // out_lm_maxpool2d_avm_enable(GPOUT,91)
    assign out_lm_maxpool2d_avm_enable = bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_enable;

    // out_lm_maxpool2d_avm_read(GPOUT,92)
    assign out_lm_maxpool2d_avm_read = bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_read;

    // out_lm_maxpool2d_avm_write(GPOUT,93)
    assign out_lm_maxpool2d_avm_write = bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_write;

    // out_lm_maxpool2d_avm_writedata(GPOUT,94)
    assign out_lm_maxpool2d_avm_writedata = bb_maxpool2d_B10_stall_region_out_lm_maxpool2d_avm_writedata;

    // out_stall_in_0(GPOUT,95)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,96)
    assign out_stall_out_0 = maxpool2d_B10_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,97)
    assign out_stall_out_1 = maxpool2d_B10_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,98)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,99)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,100)
    assign out_valid_out_0 = maxpool2d_B10_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,101)
    assign out_valid_out_1 = maxpool2d_B10_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,103)
    assign out_pipeline_valid_out = bb_maxpool2d_B10_stall_region_out_pipeline_valid_out;

endmodule
