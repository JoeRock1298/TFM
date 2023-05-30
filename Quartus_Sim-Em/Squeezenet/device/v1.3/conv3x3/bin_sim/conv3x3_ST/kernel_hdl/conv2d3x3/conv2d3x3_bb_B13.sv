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

// SystemVerilog created from conv2d3x3_bb_B13
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B13 (
    input wire [31:0] in_acl_11462_0,
    input wire [31:0] in_acl_11462_1,
    input wire [31:0] in_add112_pop79470_0,
    input wire [31:0] in_add112_pop79470_1,
    input wire [31:0] in_add24189_pop100452_0,
    input wire [31:0] in_add24189_pop100452_1,
    input wire [31:0] in_add242_0,
    input wire [31:0] in_add242_1,
    input wire [31:0] in_add35_2501_0,
    input wire [31:0] in_add35_2501_1,
    input wire [31:0] in_add41_2502_0,
    input wire [31:0] in_add41_2502_1,
    input wire [0:0] in_cmp26122_pop81474_0,
    input wire [0:0] in_cmp26122_pop81474_1,
    input wire [0:0] in_cmp26260_0,
    input wire [0:0] in_cmp26260_1,
    input wire [0:0] in_cmp26_1137_pop84454_0,
    input wire [0:0] in_cmp26_1137_pop84454_1,
    input wire [0:0] in_cmp26_1287_0,
    input wire [0:0] in_cmp26_1287_1,
    input wire [0:0] in_cmp26_2152_pop87482_0,
    input wire [0:0] in_cmp26_2152_pop87482_1,
    input wire [0:0] in_cmp26_2314_0,
    input wire [0:0] in_cmp26_2314_1,
    input wire [0:0] in_cmp27127_pop82476_0,
    input wire [0:0] in_cmp27127_pop82476_1,
    input wire [0:0] in_cmp27269_0,
    input wire [0:0] in_cmp27269_1,
    input wire [0:0] in_cmp27_1142_pop85456_0,
    input wire [0:0] in_cmp27_1142_pop85456_1,
    input wire [0:0] in_cmp27_1296_0,
    input wire [0:0] in_cmp27_1296_1,
    input wire [0:0] in_cmp27_2157_pop88484_0,
    input wire [0:0] in_cmp27_2157_pop88484_1,
    input wire [0:0] in_cmp27_2323_0,
    input wire [0:0] in_cmp27_2323_1,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight_addr_067_replace_phi199_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi199_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19341_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19341_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi89_pop75460_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi89_pop75460_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked37_0,
    input wire [0:0] in_forked37_1,
    input wire [31:0] in_inc50185_pop96497_0,
    input wire [31:0] in_inc50185_pop96497_1,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_061_pop24177_pop93494_0,
    input wire [31:0] in_j_061_pop24177_pop93494_1,
    input wire [511:0] in_lm20_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm20_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm20_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm20_conv2d3x3_avm_writeack,
    input wire [511:0] in_lm22_conv2d3x3_avm_readdata,
    input wire [0:0] in_lm22_conv2d3x3_avm_readdatavalid,
    input wire [0:0] in_lm22_conv2d3x3_avm_waitrequest,
    input wire [0:0] in_lm22_conv2d3x3_avm_writeack,
    input wire [31:0] in_lm25101_pop77466_0,
    input wire [31:0] in_lm25101_pop77466_1,
    input wire [31:0] in_lm25221_0,
    input wire [31:0] in_lm25221_1,
    input wire [31:0] in_lm2597_pop21359_0,
    input wire [31:0] in_lm2597_pop21359_1,
    input wire [31:0] in_mul56117_pop80472_0,
    input wire [31:0] in_mul56117_pop80472_1,
    input wire [31:0] in_mul56251_0,
    input wire [31:0] in_mul56251_1,
    input wire [0:0] in_notcmp73173_pop92492_0,
    input wire [0:0] in_notcmp73173_pop92492_1,
    input wire [0:0] in_notcmp77162_pop89486_0,
    input wire [0:0] in_notcmp77162_pop89486_1,
    input wire [0:0] in_notcmp77332_0,
    input wire [0:0] in_notcmp77332_1,
    input wire [0:0] in_notcmp81103_pop22368_0,
    input wire [0:0] in_notcmp81103_pop22368_1,
    input wire [0:0] in_notcmp81107_pop78468_0,
    input wire [0:0] in_notcmp81107_pop78468_1,
    input wire [0:0] in_notcmp81232_0,
    input wire [0:0] in_notcmp81232_1,
    input wire [63:0] in_output_im_addr_068_replace_phi210_0,
    input wire [63:0] in_output_im_addr_068_replace_phi210_1,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20350_0,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20350_1,
    input wire [63:0] in_output_im_addr_068_replace_phi95_pop76464_0,
    input wire [63:0] in_output_im_addr_068_replace_phi95_pop76464_1,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [31:0] in_pad_sync_buffer169_pop91490_0,
    input wire [31:0] in_pad_sync_buffer169_pop91490_1,
    input wire [0:0] in_pop94458_0,
    input wire [0:0] in_pop94458_1,
    input wire [0:0] in_pop97499_0,
    input wire [0:0] in_pop97499_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_stride,
    input wire [31:0] in_stride_sync_buffer165_pop90488_0,
    input wire [31:0] in_stride_sync_buffer165_pop90488_1,
    input wire [31:0] in_sub_1132_pop83478_0,
    input wire [31:0] in_sub_1132_pop83478_1,
    input wire [31:0] in_sub_1278_0,
    input wire [31:0] in_sub_1278_1,
    input wire [31:0] in_sub_2147_pop86480_0,
    input wire [31:0] in_sub_2147_pop86480_1,
    input wire [31:0] in_sub_2305_0,
    input wire [31:0] in_sub_2305_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe111148,
    output wire [63:0] out_c0_exe121149,
    output wire [31:0] out_c0_exe131150,
    output wire [31:0] out_c0_exe141151,
    output wire [0:0] out_c0_exe151152,
    output wire [0:0] out_c0_exe161153,
    output wire [31:0] out_c0_exe171154,
    output wire [31:0] out_c0_exe181155,
    output wire [31:0] out_c0_exe191156,
    output wire [0:0] out_c0_exe201157,
    output wire [0:0] out_c0_exe211158,
    output wire [31:0] out_c0_exe221159,
    output wire [0:0] out_c0_exe231160,
    output wire [0:0] out_c0_exe241161,
    output wire [31:0] out_c0_exe251162,
    output wire [0:0] out_c0_exe261163,
    output wire [0:0] out_c0_exe271164,
    output wire [31:0] out_c0_exe281165,
    output wire [31:0] out_c0_exe291166,
    output wire [0:0] out_c0_exe301167,
    output wire [0:0] out_c0_exe311168,
    output wire [0:0] out_c0_exe31140,
    output wire [31:0] out_c0_exe321169,
    output wire [31:0] out_c0_exe331170,
    output wire [31:0] out_c0_exe341171,
    output wire [0:0] out_c0_exe351172,
    output wire [63:0] out_c0_exe371174,
    output wire [63:0] out_c0_exe381175,
    output wire [31:0] out_c0_exe391176,
    output wire [0:0] out_c0_exe401177,
    output wire [31:0] out_c0_exe411178,
    output wire [0:0] out_c0_exe41141,
    output wire [31:0] out_c0_exe421179,
    output wire [0:0] out_c0_exe431180,
    output wire [0:0] out_c0_exe441181,
    output wire [31:0] out_c0_exe451182,
    output wire [0:0] out_c0_exe461183,
    output wire [0:0] out_c0_exe471184,
    output wire [31:0] out_c0_exe481185,
    output wire [0:0] out_c0_exe491186,
    output wire [0:0] out_c0_exe501187,
    output wire [0:0] out_c0_exe511188,
    output wire [63:0] out_c0_exe521189,
    output wire [63:0] out_c0_exe53,
    output wire [31:0] out_c0_exe54,
    output wire [0:0] out_c0_exe55,
    output wire [0:0] out_c0_exe61143,
    output wire [63:0] out_c0_exe81145,
    output wire [31:0] out_c1_exe11205,
    output wire [31:0] out_c1_exe2,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm20_conv2d3x3_avm_address,
    output wire [4:0] out_lm20_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm20_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm20_conv2d3x3_avm_enable,
    output wire [0:0] out_lm20_conv2d3x3_avm_read,
    output wire [0:0] out_lm20_conv2d3x3_avm_write,
    output wire [511:0] out_lm20_conv2d3x3_avm_writedata,
    output wire [30:0] out_lm22_conv2d3x3_avm_address,
    output wire [4:0] out_lm22_conv2d3x3_avm_burstcount,
    output wire [63:0] out_lm22_conv2d3x3_avm_byteenable,
    output wire [0:0] out_lm22_conv2d3x3_avm_enable,
    output wire [0:0] out_lm22_conv2d3x3_avm_read,
    output wire [0:0] out_lm22_conv2d3x3_avm_write,
    output wire [511:0] out_lm22_conv2d3x3_avm_writedata,
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

    wire [0:0] bb_conv2d3x3_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe101147;
    wire [63:0] bb_conv2d3x3_B13_stall_region_out_c0_exe111148;
    wire [63:0] bb_conv2d3x3_B13_stall_region_out_c0_exe121149;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe131150;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe141151;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe151152;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe161153;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe171154;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe181155;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe191156;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe201157;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe211158;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe221159;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe231160;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe241161;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe251162;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe261163;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe271164;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe281165;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe291166;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe301167;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe311168;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe31140;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe321169;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe331170;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe341171;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe351172;
    wire [63:0] bb_conv2d3x3_B13_stall_region_out_c0_exe371174;
    wire [63:0] bb_conv2d3x3_B13_stall_region_out_c0_exe381175;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe391176;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe401177;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe411178;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe41141;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe421179;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe431180;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe441181;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe451182;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe461183;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe471184;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe481185;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe491186;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe501187;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe511188;
    wire [63:0] bb_conv2d3x3_B13_stall_region_out_c0_exe521189;
    wire [63:0] bb_conv2d3x3_B13_stall_region_out_c0_exe53;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c0_exe54;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe55;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_c0_exe61143;
    wire [63:0] bb_conv2d3x3_B13_stall_region_out_c0_exe81145;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c1_exe11205;
    wire [31:0] bb_conv2d3x3_B13_stall_region_out_c1_exe2;
    wire [30:0] bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_writedata;
    wire [30:0] bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_address;
    wire [4:0] bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_burstcount;
    wire [63:0] bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_byteenable;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_enable;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_read;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_write;
    wire [511:0] bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_writedata;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_stall_out;
    wire [0:0] bb_conv2d3x3_B13_stall_region_out_valid_out;
    wire [63:0] conv2d3x3_B13_branch_out_c0_exe111148;
    wire [63:0] conv2d3x3_B13_branch_out_c0_exe121149;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe131150;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe141151;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe151152;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe161153;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe171154;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe181155;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe191156;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe201157;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe211158;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe221159;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe231160;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe241161;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe251162;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe261163;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe271164;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe281165;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe291166;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe301167;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe311168;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe31140;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe321169;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe331170;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe341171;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe351172;
    wire [63:0] conv2d3x3_B13_branch_out_c0_exe371174;
    wire [63:0] conv2d3x3_B13_branch_out_c0_exe381175;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe391176;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe401177;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe411178;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe41141;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe421179;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe431180;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe441181;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe451182;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe461183;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe471184;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe481185;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe491186;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe501187;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe511188;
    wire [63:0] conv2d3x3_B13_branch_out_c0_exe521189;
    wire [63:0] conv2d3x3_B13_branch_out_c0_exe53;
    wire [31:0] conv2d3x3_B13_branch_out_c0_exe54;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe55;
    wire [0:0] conv2d3x3_B13_branch_out_c0_exe61143;
    wire [63:0] conv2d3x3_B13_branch_out_c0_exe81145;
    wire [31:0] conv2d3x3_B13_branch_out_c1_exe11205;
    wire [31:0] conv2d3x3_B13_branch_out_c1_exe2;
    wire [0:0] conv2d3x3_B13_branch_out_stall_out;
    wire [0:0] conv2d3x3_B13_branch_out_valid_out_0;
    wire [0:0] conv2d3x3_B13_branch_out_valid_out_1;
    wire [31:0] conv2d3x3_B13_merge_out_acl_11462;
    wire [31:0] conv2d3x3_B13_merge_out_add112_pop79470;
    wire [31:0] conv2d3x3_B13_merge_out_add24189_pop100452;
    wire [31:0] conv2d3x3_B13_merge_out_add242;
    wire [31:0] conv2d3x3_B13_merge_out_add35_2501;
    wire [31:0] conv2d3x3_B13_merge_out_add41_2502;
    wire [0:0] conv2d3x3_B13_merge_out_cmp26122_pop81474;
    wire [0:0] conv2d3x3_B13_merge_out_cmp26260;
    wire [0:0] conv2d3x3_B13_merge_out_cmp26_1137_pop84454;
    wire [0:0] conv2d3x3_B13_merge_out_cmp26_1287;
    wire [0:0] conv2d3x3_B13_merge_out_cmp26_2152_pop87482;
    wire [0:0] conv2d3x3_B13_merge_out_cmp26_2314;
    wire [0:0] conv2d3x3_B13_merge_out_cmp27127_pop82476;
    wire [0:0] conv2d3x3_B13_merge_out_cmp27269;
    wire [0:0] conv2d3x3_B13_merge_out_cmp27_1142_pop85456;
    wire [0:0] conv2d3x3_B13_merge_out_cmp27_1296;
    wire [0:0] conv2d3x3_B13_merge_out_cmp27_2157_pop88484;
    wire [0:0] conv2d3x3_B13_merge_out_cmp27_2323;
    wire [63:0] conv2d3x3_B13_merge_out_filter_weight_addr_067_replace_phi199;
    wire [63:0] conv2d3x3_B13_merge_out_filter_weight_addr_067_replace_phi85_pop19341;
    wire [63:0] conv2d3x3_B13_merge_out_filter_weight_addr_067_replace_phi89_pop75460;
    wire [0:0] conv2d3x3_B13_merge_out_forked37;
    wire [31:0] conv2d3x3_B13_merge_out_inc50185_pop96497;
    wire [31:0] conv2d3x3_B13_merge_out_j_061_pop24177_pop93494;
    wire [31:0] conv2d3x3_B13_merge_out_lm25101_pop77466;
    wire [31:0] conv2d3x3_B13_merge_out_lm25221;
    wire [31:0] conv2d3x3_B13_merge_out_lm2597_pop21359;
    wire [31:0] conv2d3x3_B13_merge_out_mul56117_pop80472;
    wire [31:0] conv2d3x3_B13_merge_out_mul56251;
    wire [0:0] conv2d3x3_B13_merge_out_notcmp73173_pop92492;
    wire [0:0] conv2d3x3_B13_merge_out_notcmp77162_pop89486;
    wire [0:0] conv2d3x3_B13_merge_out_notcmp77332;
    wire [0:0] conv2d3x3_B13_merge_out_notcmp81103_pop22368;
    wire [0:0] conv2d3x3_B13_merge_out_notcmp81107_pop78468;
    wire [0:0] conv2d3x3_B13_merge_out_notcmp81232;
    wire [63:0] conv2d3x3_B13_merge_out_output_im_addr_068_replace_phi210;
    wire [63:0] conv2d3x3_B13_merge_out_output_im_addr_068_replace_phi91_pop20350;
    wire [63:0] conv2d3x3_B13_merge_out_output_im_addr_068_replace_phi95_pop76464;
    wire [31:0] conv2d3x3_B13_merge_out_pad_sync_buffer169_pop91490;
    wire [0:0] conv2d3x3_B13_merge_out_pop94458;
    wire [0:0] conv2d3x3_B13_merge_out_pop97499;
    wire [0:0] conv2d3x3_B13_merge_out_stall_out_0;
    wire [0:0] conv2d3x3_B13_merge_out_stall_out_1;
    wire [31:0] conv2d3x3_B13_merge_out_stride_sync_buffer165_pop90488;
    wire [31:0] conv2d3x3_B13_merge_out_sub_1132_pop83478;
    wire [31:0] conv2d3x3_B13_merge_out_sub_1278;
    wire [31:0] conv2d3x3_B13_merge_out_sub_2147_pop86480;
    wire [31:0] conv2d3x3_B13_merge_out_sub_2305;
    wire [0:0] conv2d3x3_B13_merge_out_valid_out;


    // conv2d3x3_B13_merge(BLACKBOX,4)
    conv2d3x3_B13_merge theconv2d3x3_B13_merge (
        .in_acl_11462_0(in_acl_11462_0),
        .in_acl_11462_1(in_acl_11462_1),
        .in_add112_pop79470_0(in_add112_pop79470_0),
        .in_add112_pop79470_1(in_add112_pop79470_1),
        .in_add24189_pop100452_0(in_add24189_pop100452_0),
        .in_add24189_pop100452_1(in_add24189_pop100452_1),
        .in_add242_0(in_add242_0),
        .in_add242_1(in_add242_1),
        .in_add35_2501_0(in_add35_2501_0),
        .in_add35_2501_1(in_add35_2501_1),
        .in_add41_2502_0(in_add41_2502_0),
        .in_add41_2502_1(in_add41_2502_1),
        .in_cmp26122_pop81474_0(in_cmp26122_pop81474_0),
        .in_cmp26122_pop81474_1(in_cmp26122_pop81474_1),
        .in_cmp26260_0(in_cmp26260_0),
        .in_cmp26260_1(in_cmp26260_1),
        .in_cmp26_1137_pop84454_0(in_cmp26_1137_pop84454_0),
        .in_cmp26_1137_pop84454_1(in_cmp26_1137_pop84454_1),
        .in_cmp26_1287_0(in_cmp26_1287_0),
        .in_cmp26_1287_1(in_cmp26_1287_1),
        .in_cmp26_2152_pop87482_0(in_cmp26_2152_pop87482_0),
        .in_cmp26_2152_pop87482_1(in_cmp26_2152_pop87482_1),
        .in_cmp26_2314_0(in_cmp26_2314_0),
        .in_cmp26_2314_1(in_cmp26_2314_1),
        .in_cmp27127_pop82476_0(in_cmp27127_pop82476_0),
        .in_cmp27127_pop82476_1(in_cmp27127_pop82476_1),
        .in_cmp27269_0(in_cmp27269_0),
        .in_cmp27269_1(in_cmp27269_1),
        .in_cmp27_1142_pop85456_0(in_cmp27_1142_pop85456_0),
        .in_cmp27_1142_pop85456_1(in_cmp27_1142_pop85456_1),
        .in_cmp27_1296_0(in_cmp27_1296_0),
        .in_cmp27_1296_1(in_cmp27_1296_1),
        .in_cmp27_2157_pop88484_0(in_cmp27_2157_pop88484_0),
        .in_cmp27_2157_pop88484_1(in_cmp27_2157_pop88484_1),
        .in_cmp27_2323_0(in_cmp27_2323_0),
        .in_cmp27_2323_1(in_cmp27_2323_1),
        .in_filter_weight_addr_067_replace_phi199_0(in_filter_weight_addr_067_replace_phi199_0),
        .in_filter_weight_addr_067_replace_phi199_1(in_filter_weight_addr_067_replace_phi199_1),
        .in_filter_weight_addr_067_replace_phi85_pop19341_0(in_filter_weight_addr_067_replace_phi85_pop19341_0),
        .in_filter_weight_addr_067_replace_phi85_pop19341_1(in_filter_weight_addr_067_replace_phi85_pop19341_1),
        .in_filter_weight_addr_067_replace_phi89_pop75460_0(in_filter_weight_addr_067_replace_phi89_pop75460_0),
        .in_filter_weight_addr_067_replace_phi89_pop75460_1(in_filter_weight_addr_067_replace_phi89_pop75460_1),
        .in_forked37_0(in_forked37_0),
        .in_forked37_1(in_forked37_1),
        .in_inc50185_pop96497_0(in_inc50185_pop96497_0),
        .in_inc50185_pop96497_1(in_inc50185_pop96497_1),
        .in_j_061_pop24177_pop93494_0(in_j_061_pop24177_pop93494_0),
        .in_j_061_pop24177_pop93494_1(in_j_061_pop24177_pop93494_1),
        .in_lm25101_pop77466_0(in_lm25101_pop77466_0),
        .in_lm25101_pop77466_1(in_lm25101_pop77466_1),
        .in_lm25221_0(in_lm25221_0),
        .in_lm25221_1(in_lm25221_1),
        .in_lm2597_pop21359_0(in_lm2597_pop21359_0),
        .in_lm2597_pop21359_1(in_lm2597_pop21359_1),
        .in_mul56117_pop80472_0(in_mul56117_pop80472_0),
        .in_mul56117_pop80472_1(in_mul56117_pop80472_1),
        .in_mul56251_0(in_mul56251_0),
        .in_mul56251_1(in_mul56251_1),
        .in_notcmp73173_pop92492_0(in_notcmp73173_pop92492_0),
        .in_notcmp73173_pop92492_1(in_notcmp73173_pop92492_1),
        .in_notcmp77162_pop89486_0(in_notcmp77162_pop89486_0),
        .in_notcmp77162_pop89486_1(in_notcmp77162_pop89486_1),
        .in_notcmp77332_0(in_notcmp77332_0),
        .in_notcmp77332_1(in_notcmp77332_1),
        .in_notcmp81103_pop22368_0(in_notcmp81103_pop22368_0),
        .in_notcmp81103_pop22368_1(in_notcmp81103_pop22368_1),
        .in_notcmp81107_pop78468_0(in_notcmp81107_pop78468_0),
        .in_notcmp81107_pop78468_1(in_notcmp81107_pop78468_1),
        .in_notcmp81232_0(in_notcmp81232_0),
        .in_notcmp81232_1(in_notcmp81232_1),
        .in_output_im_addr_068_replace_phi210_0(in_output_im_addr_068_replace_phi210_0),
        .in_output_im_addr_068_replace_phi210_1(in_output_im_addr_068_replace_phi210_1),
        .in_output_im_addr_068_replace_phi91_pop20350_0(in_output_im_addr_068_replace_phi91_pop20350_0),
        .in_output_im_addr_068_replace_phi91_pop20350_1(in_output_im_addr_068_replace_phi91_pop20350_1),
        .in_output_im_addr_068_replace_phi95_pop76464_0(in_output_im_addr_068_replace_phi95_pop76464_0),
        .in_output_im_addr_068_replace_phi95_pop76464_1(in_output_im_addr_068_replace_phi95_pop76464_1),
        .in_pad_sync_buffer169_pop91490_0(in_pad_sync_buffer169_pop91490_0),
        .in_pad_sync_buffer169_pop91490_1(in_pad_sync_buffer169_pop91490_1),
        .in_pop94458_0(in_pop94458_0),
        .in_pop94458_1(in_pop94458_1),
        .in_pop97499_0(in_pop97499_0),
        .in_pop97499_1(in_pop97499_1),
        .in_stall_in(bb_conv2d3x3_B13_stall_region_out_stall_out),
        .in_stride_sync_buffer165_pop90488_0(in_stride_sync_buffer165_pop90488_0),
        .in_stride_sync_buffer165_pop90488_1(in_stride_sync_buffer165_pop90488_1),
        .in_sub_1132_pop83478_0(in_sub_1132_pop83478_0),
        .in_sub_1132_pop83478_1(in_sub_1132_pop83478_1),
        .in_sub_1278_0(in_sub_1278_0),
        .in_sub_1278_1(in_sub_1278_1),
        .in_sub_2147_pop86480_0(in_sub_2147_pop86480_0),
        .in_sub_2147_pop86480_1(in_sub_2147_pop86480_1),
        .in_sub_2305_0(in_sub_2305_0),
        .in_sub_2305_1(in_sub_2305_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_acl_11462(conv2d3x3_B13_merge_out_acl_11462),
        .out_add112_pop79470(conv2d3x3_B13_merge_out_add112_pop79470),
        .out_add24189_pop100452(conv2d3x3_B13_merge_out_add24189_pop100452),
        .out_add242(conv2d3x3_B13_merge_out_add242),
        .out_add35_2501(conv2d3x3_B13_merge_out_add35_2501),
        .out_add41_2502(conv2d3x3_B13_merge_out_add41_2502),
        .out_cmp26122_pop81474(conv2d3x3_B13_merge_out_cmp26122_pop81474),
        .out_cmp26260(conv2d3x3_B13_merge_out_cmp26260),
        .out_cmp26_1137_pop84454(conv2d3x3_B13_merge_out_cmp26_1137_pop84454),
        .out_cmp26_1287(conv2d3x3_B13_merge_out_cmp26_1287),
        .out_cmp26_2152_pop87482(conv2d3x3_B13_merge_out_cmp26_2152_pop87482),
        .out_cmp26_2314(conv2d3x3_B13_merge_out_cmp26_2314),
        .out_cmp27127_pop82476(conv2d3x3_B13_merge_out_cmp27127_pop82476),
        .out_cmp27269(conv2d3x3_B13_merge_out_cmp27269),
        .out_cmp27_1142_pop85456(conv2d3x3_B13_merge_out_cmp27_1142_pop85456),
        .out_cmp27_1296(conv2d3x3_B13_merge_out_cmp27_1296),
        .out_cmp27_2157_pop88484(conv2d3x3_B13_merge_out_cmp27_2157_pop88484),
        .out_cmp27_2323(conv2d3x3_B13_merge_out_cmp27_2323),
        .out_filter_weight_addr_067_replace_phi199(conv2d3x3_B13_merge_out_filter_weight_addr_067_replace_phi199),
        .out_filter_weight_addr_067_replace_phi85_pop19341(conv2d3x3_B13_merge_out_filter_weight_addr_067_replace_phi85_pop19341),
        .out_filter_weight_addr_067_replace_phi89_pop75460(conv2d3x3_B13_merge_out_filter_weight_addr_067_replace_phi89_pop75460),
        .out_forked37(conv2d3x3_B13_merge_out_forked37),
        .out_inc50185_pop96497(conv2d3x3_B13_merge_out_inc50185_pop96497),
        .out_j_061_pop24177_pop93494(conv2d3x3_B13_merge_out_j_061_pop24177_pop93494),
        .out_lm25101_pop77466(conv2d3x3_B13_merge_out_lm25101_pop77466),
        .out_lm25221(conv2d3x3_B13_merge_out_lm25221),
        .out_lm2597_pop21359(conv2d3x3_B13_merge_out_lm2597_pop21359),
        .out_mul56117_pop80472(conv2d3x3_B13_merge_out_mul56117_pop80472),
        .out_mul56251(conv2d3x3_B13_merge_out_mul56251),
        .out_notcmp73173_pop92492(conv2d3x3_B13_merge_out_notcmp73173_pop92492),
        .out_notcmp77162_pop89486(conv2d3x3_B13_merge_out_notcmp77162_pop89486),
        .out_notcmp77332(conv2d3x3_B13_merge_out_notcmp77332),
        .out_notcmp81103_pop22368(conv2d3x3_B13_merge_out_notcmp81103_pop22368),
        .out_notcmp81107_pop78468(conv2d3x3_B13_merge_out_notcmp81107_pop78468),
        .out_notcmp81232(conv2d3x3_B13_merge_out_notcmp81232),
        .out_output_im_addr_068_replace_phi210(conv2d3x3_B13_merge_out_output_im_addr_068_replace_phi210),
        .out_output_im_addr_068_replace_phi91_pop20350(conv2d3x3_B13_merge_out_output_im_addr_068_replace_phi91_pop20350),
        .out_output_im_addr_068_replace_phi95_pop76464(conv2d3x3_B13_merge_out_output_im_addr_068_replace_phi95_pop76464),
        .out_pad_sync_buffer169_pop91490(conv2d3x3_B13_merge_out_pad_sync_buffer169_pop91490),
        .out_pop94458(conv2d3x3_B13_merge_out_pop94458),
        .out_pop97499(conv2d3x3_B13_merge_out_pop97499),
        .out_stall_out_0(conv2d3x3_B13_merge_out_stall_out_0),
        .out_stall_out_1(conv2d3x3_B13_merge_out_stall_out_1),
        .out_stride_sync_buffer165_pop90488(conv2d3x3_B13_merge_out_stride_sync_buffer165_pop90488),
        .out_sub_1132_pop83478(conv2d3x3_B13_merge_out_sub_1132_pop83478),
        .out_sub_1278(conv2d3x3_B13_merge_out_sub_1278),
        .out_sub_2147_pop86480(conv2d3x3_B13_merge_out_sub_2147_pop86480),
        .out_sub_2305(conv2d3x3_B13_merge_out_sub_2305),
        .out_valid_out(conv2d3x3_B13_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d3x3_B13_stall_region(BLACKBOX,2)
    conv2d3x3_bb_B13_stall_region thebb_conv2d3x3_B13_stall_region (
        .in_acl_11462(conv2d3x3_B13_merge_out_acl_11462),
        .in_add112_pop79470(conv2d3x3_B13_merge_out_add112_pop79470),
        .in_add24189_pop100452(conv2d3x3_B13_merge_out_add24189_pop100452),
        .in_add242(conv2d3x3_B13_merge_out_add242),
        .in_add35_2501(conv2d3x3_B13_merge_out_add35_2501),
        .in_add41_2502(conv2d3x3_B13_merge_out_add41_2502),
        .in_cmp26122_pop81474(conv2d3x3_B13_merge_out_cmp26122_pop81474),
        .in_cmp26260(conv2d3x3_B13_merge_out_cmp26260),
        .in_cmp26_1137_pop84454(conv2d3x3_B13_merge_out_cmp26_1137_pop84454),
        .in_cmp26_1287(conv2d3x3_B13_merge_out_cmp26_1287),
        .in_cmp26_2152_pop87482(conv2d3x3_B13_merge_out_cmp26_2152_pop87482),
        .in_cmp26_2314(conv2d3x3_B13_merge_out_cmp26_2314),
        .in_cmp27127_pop82476(conv2d3x3_B13_merge_out_cmp27127_pop82476),
        .in_cmp27269(conv2d3x3_B13_merge_out_cmp27269),
        .in_cmp27_1142_pop85456(conv2d3x3_B13_merge_out_cmp27_1142_pop85456),
        .in_cmp27_1296(conv2d3x3_B13_merge_out_cmp27_1296),
        .in_cmp27_2157_pop88484(conv2d3x3_B13_merge_out_cmp27_2157_pop88484),
        .in_cmp27_2323(conv2d3x3_B13_merge_out_cmp27_2323),
        .in_filter_weight_addr_067_replace_phi199(conv2d3x3_B13_merge_out_filter_weight_addr_067_replace_phi199),
        .in_filter_weight_addr_067_replace_phi85_pop19341(conv2d3x3_B13_merge_out_filter_weight_addr_067_replace_phi85_pop19341),
        .in_filter_weight_addr_067_replace_phi89_pop75460(conv2d3x3_B13_merge_out_filter_weight_addr_067_replace_phi89_pop75460),
        .in_flush(in_flush),
        .in_forked37(conv2d3x3_B13_merge_out_forked37),
        .in_inc50185_pop96497(conv2d3x3_B13_merge_out_inc50185_pop96497),
        .in_input_im(in_input_im),
        .in_input_size(in_input_size),
        .in_j_061_pop24177_pop93494(conv2d3x3_B13_merge_out_j_061_pop24177_pop93494),
        .in_lm20_conv2d3x3_avm_readdata(in_lm20_conv2d3x3_avm_readdata),
        .in_lm20_conv2d3x3_avm_readdatavalid(in_lm20_conv2d3x3_avm_readdatavalid),
        .in_lm20_conv2d3x3_avm_waitrequest(in_lm20_conv2d3x3_avm_waitrequest),
        .in_lm20_conv2d3x3_avm_writeack(in_lm20_conv2d3x3_avm_writeack),
        .in_lm22_conv2d3x3_avm_readdata(in_lm22_conv2d3x3_avm_readdata),
        .in_lm22_conv2d3x3_avm_readdatavalid(in_lm22_conv2d3x3_avm_readdatavalid),
        .in_lm22_conv2d3x3_avm_waitrequest(in_lm22_conv2d3x3_avm_waitrequest),
        .in_lm22_conv2d3x3_avm_writeack(in_lm22_conv2d3x3_avm_writeack),
        .in_lm25101_pop77466(conv2d3x3_B13_merge_out_lm25101_pop77466),
        .in_lm25221(conv2d3x3_B13_merge_out_lm25221),
        .in_lm2597_pop21359(conv2d3x3_B13_merge_out_lm2597_pop21359),
        .in_mul56117_pop80472(conv2d3x3_B13_merge_out_mul56117_pop80472),
        .in_mul56251(conv2d3x3_B13_merge_out_mul56251),
        .in_notcmp73173_pop92492(conv2d3x3_B13_merge_out_notcmp73173_pop92492),
        .in_notcmp77162_pop89486(conv2d3x3_B13_merge_out_notcmp77162_pop89486),
        .in_notcmp77332(conv2d3x3_B13_merge_out_notcmp77332),
        .in_notcmp81103_pop22368(conv2d3x3_B13_merge_out_notcmp81103_pop22368),
        .in_notcmp81107_pop78468(conv2d3x3_B13_merge_out_notcmp81107_pop78468),
        .in_notcmp81232(conv2d3x3_B13_merge_out_notcmp81232),
        .in_output_im_addr_068_replace_phi210(conv2d3x3_B13_merge_out_output_im_addr_068_replace_phi210),
        .in_output_im_addr_068_replace_phi91_pop20350(conv2d3x3_B13_merge_out_output_im_addr_068_replace_phi91_pop20350),
        .in_output_im_addr_068_replace_phi95_pop76464(conv2d3x3_B13_merge_out_output_im_addr_068_replace_phi95_pop76464),
        .in_pad_sync_buffer169_pop91490(conv2d3x3_B13_merge_out_pad_sync_buffer169_pop91490),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop94458(conv2d3x3_B13_merge_out_pop94458),
        .in_pop97499(conv2d3x3_B13_merge_out_pop97499),
        .in_stall_in(conv2d3x3_B13_branch_out_stall_out),
        .in_stride_sync_buffer165_pop90488(conv2d3x3_B13_merge_out_stride_sync_buffer165_pop90488),
        .in_sub_1132_pop83478(conv2d3x3_B13_merge_out_sub_1132_pop83478),
        .in_sub_1278(conv2d3x3_B13_merge_out_sub_1278),
        .in_sub_2147_pop86480(conv2d3x3_B13_merge_out_sub_2147_pop86480),
        .in_sub_2305(conv2d3x3_B13_merge_out_sub_2305),
        .in_valid_in(conv2d3x3_B13_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out(bb_conv2d3x3_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out(bb_conv2d3x3_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out),
        .out_c0_exe101147(bb_conv2d3x3_B13_stall_region_out_c0_exe101147),
        .out_c0_exe111148(bb_conv2d3x3_B13_stall_region_out_c0_exe111148),
        .out_c0_exe121149(bb_conv2d3x3_B13_stall_region_out_c0_exe121149),
        .out_c0_exe131150(bb_conv2d3x3_B13_stall_region_out_c0_exe131150),
        .out_c0_exe141151(bb_conv2d3x3_B13_stall_region_out_c0_exe141151),
        .out_c0_exe151152(bb_conv2d3x3_B13_stall_region_out_c0_exe151152),
        .out_c0_exe161153(bb_conv2d3x3_B13_stall_region_out_c0_exe161153),
        .out_c0_exe171154(bb_conv2d3x3_B13_stall_region_out_c0_exe171154),
        .out_c0_exe181155(bb_conv2d3x3_B13_stall_region_out_c0_exe181155),
        .out_c0_exe191156(bb_conv2d3x3_B13_stall_region_out_c0_exe191156),
        .out_c0_exe201157(bb_conv2d3x3_B13_stall_region_out_c0_exe201157),
        .out_c0_exe211158(bb_conv2d3x3_B13_stall_region_out_c0_exe211158),
        .out_c0_exe221159(bb_conv2d3x3_B13_stall_region_out_c0_exe221159),
        .out_c0_exe231160(bb_conv2d3x3_B13_stall_region_out_c0_exe231160),
        .out_c0_exe241161(bb_conv2d3x3_B13_stall_region_out_c0_exe241161),
        .out_c0_exe251162(bb_conv2d3x3_B13_stall_region_out_c0_exe251162),
        .out_c0_exe261163(bb_conv2d3x3_B13_stall_region_out_c0_exe261163),
        .out_c0_exe271164(bb_conv2d3x3_B13_stall_region_out_c0_exe271164),
        .out_c0_exe281165(bb_conv2d3x3_B13_stall_region_out_c0_exe281165),
        .out_c0_exe291166(bb_conv2d3x3_B13_stall_region_out_c0_exe291166),
        .out_c0_exe301167(bb_conv2d3x3_B13_stall_region_out_c0_exe301167),
        .out_c0_exe311168(bb_conv2d3x3_B13_stall_region_out_c0_exe311168),
        .out_c0_exe31140(bb_conv2d3x3_B13_stall_region_out_c0_exe31140),
        .out_c0_exe321169(bb_conv2d3x3_B13_stall_region_out_c0_exe321169),
        .out_c0_exe331170(bb_conv2d3x3_B13_stall_region_out_c0_exe331170),
        .out_c0_exe341171(bb_conv2d3x3_B13_stall_region_out_c0_exe341171),
        .out_c0_exe351172(bb_conv2d3x3_B13_stall_region_out_c0_exe351172),
        .out_c0_exe371174(bb_conv2d3x3_B13_stall_region_out_c0_exe371174),
        .out_c0_exe381175(bb_conv2d3x3_B13_stall_region_out_c0_exe381175),
        .out_c0_exe391176(bb_conv2d3x3_B13_stall_region_out_c0_exe391176),
        .out_c0_exe401177(bb_conv2d3x3_B13_stall_region_out_c0_exe401177),
        .out_c0_exe411178(bb_conv2d3x3_B13_stall_region_out_c0_exe411178),
        .out_c0_exe41141(bb_conv2d3x3_B13_stall_region_out_c0_exe41141),
        .out_c0_exe421179(bb_conv2d3x3_B13_stall_region_out_c0_exe421179),
        .out_c0_exe431180(bb_conv2d3x3_B13_stall_region_out_c0_exe431180),
        .out_c0_exe441181(bb_conv2d3x3_B13_stall_region_out_c0_exe441181),
        .out_c0_exe451182(bb_conv2d3x3_B13_stall_region_out_c0_exe451182),
        .out_c0_exe461183(bb_conv2d3x3_B13_stall_region_out_c0_exe461183),
        .out_c0_exe471184(bb_conv2d3x3_B13_stall_region_out_c0_exe471184),
        .out_c0_exe481185(bb_conv2d3x3_B13_stall_region_out_c0_exe481185),
        .out_c0_exe491186(bb_conv2d3x3_B13_stall_region_out_c0_exe491186),
        .out_c0_exe501187(bb_conv2d3x3_B13_stall_region_out_c0_exe501187),
        .out_c0_exe511188(bb_conv2d3x3_B13_stall_region_out_c0_exe511188),
        .out_c0_exe521189(bb_conv2d3x3_B13_stall_region_out_c0_exe521189),
        .out_c0_exe53(bb_conv2d3x3_B13_stall_region_out_c0_exe53),
        .out_c0_exe54(bb_conv2d3x3_B13_stall_region_out_c0_exe54),
        .out_c0_exe55(bb_conv2d3x3_B13_stall_region_out_c0_exe55),
        .out_c0_exe61143(bb_conv2d3x3_B13_stall_region_out_c0_exe61143),
        .out_c0_exe81145(bb_conv2d3x3_B13_stall_region_out_c0_exe81145),
        .out_c1_exe11205(bb_conv2d3x3_B13_stall_region_out_c1_exe11205),
        .out_c1_exe2(bb_conv2d3x3_B13_stall_region_out_c1_exe2),
        .out_lm20_conv2d3x3_avm_address(bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_address),
        .out_lm20_conv2d3x3_avm_burstcount(bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_burstcount),
        .out_lm20_conv2d3x3_avm_byteenable(bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_byteenable),
        .out_lm20_conv2d3x3_avm_enable(bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_enable),
        .out_lm20_conv2d3x3_avm_read(bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_read),
        .out_lm20_conv2d3x3_avm_write(bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_write),
        .out_lm20_conv2d3x3_avm_writedata(bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_writedata),
        .out_lm22_conv2d3x3_avm_address(bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_address),
        .out_lm22_conv2d3x3_avm_burstcount(bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_burstcount),
        .out_lm22_conv2d3x3_avm_byteenable(bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_byteenable),
        .out_lm22_conv2d3x3_avm_enable(bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_enable),
        .out_lm22_conv2d3x3_avm_read(bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_read),
        .out_lm22_conv2d3x3_avm_write(bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_write),
        .out_lm22_conv2d3x3_avm_writedata(bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d3x3_B13_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2d3x3_B13_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d3x3_B13_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d3x3_B13_branch(BLACKBOX,3)
    conv2d3x3_B13_branch theconv2d3x3_B13_branch (
        .in_c0_exe101147(bb_conv2d3x3_B13_stall_region_out_c0_exe101147),
        .in_c0_exe111148(bb_conv2d3x3_B13_stall_region_out_c0_exe111148),
        .in_c0_exe121149(bb_conv2d3x3_B13_stall_region_out_c0_exe121149),
        .in_c0_exe131150(bb_conv2d3x3_B13_stall_region_out_c0_exe131150),
        .in_c0_exe141151(bb_conv2d3x3_B13_stall_region_out_c0_exe141151),
        .in_c0_exe151152(bb_conv2d3x3_B13_stall_region_out_c0_exe151152),
        .in_c0_exe161153(bb_conv2d3x3_B13_stall_region_out_c0_exe161153),
        .in_c0_exe171154(bb_conv2d3x3_B13_stall_region_out_c0_exe171154),
        .in_c0_exe181155(bb_conv2d3x3_B13_stall_region_out_c0_exe181155),
        .in_c0_exe191156(bb_conv2d3x3_B13_stall_region_out_c0_exe191156),
        .in_c0_exe201157(bb_conv2d3x3_B13_stall_region_out_c0_exe201157),
        .in_c0_exe211158(bb_conv2d3x3_B13_stall_region_out_c0_exe211158),
        .in_c0_exe221159(bb_conv2d3x3_B13_stall_region_out_c0_exe221159),
        .in_c0_exe231160(bb_conv2d3x3_B13_stall_region_out_c0_exe231160),
        .in_c0_exe241161(bb_conv2d3x3_B13_stall_region_out_c0_exe241161),
        .in_c0_exe251162(bb_conv2d3x3_B13_stall_region_out_c0_exe251162),
        .in_c0_exe261163(bb_conv2d3x3_B13_stall_region_out_c0_exe261163),
        .in_c0_exe271164(bb_conv2d3x3_B13_stall_region_out_c0_exe271164),
        .in_c0_exe281165(bb_conv2d3x3_B13_stall_region_out_c0_exe281165),
        .in_c0_exe291166(bb_conv2d3x3_B13_stall_region_out_c0_exe291166),
        .in_c0_exe301167(bb_conv2d3x3_B13_stall_region_out_c0_exe301167),
        .in_c0_exe311168(bb_conv2d3x3_B13_stall_region_out_c0_exe311168),
        .in_c0_exe31140(bb_conv2d3x3_B13_stall_region_out_c0_exe31140),
        .in_c0_exe321169(bb_conv2d3x3_B13_stall_region_out_c0_exe321169),
        .in_c0_exe331170(bb_conv2d3x3_B13_stall_region_out_c0_exe331170),
        .in_c0_exe341171(bb_conv2d3x3_B13_stall_region_out_c0_exe341171),
        .in_c0_exe351172(bb_conv2d3x3_B13_stall_region_out_c0_exe351172),
        .in_c0_exe371174(bb_conv2d3x3_B13_stall_region_out_c0_exe371174),
        .in_c0_exe381175(bb_conv2d3x3_B13_stall_region_out_c0_exe381175),
        .in_c0_exe391176(bb_conv2d3x3_B13_stall_region_out_c0_exe391176),
        .in_c0_exe401177(bb_conv2d3x3_B13_stall_region_out_c0_exe401177),
        .in_c0_exe411178(bb_conv2d3x3_B13_stall_region_out_c0_exe411178),
        .in_c0_exe41141(bb_conv2d3x3_B13_stall_region_out_c0_exe41141),
        .in_c0_exe421179(bb_conv2d3x3_B13_stall_region_out_c0_exe421179),
        .in_c0_exe431180(bb_conv2d3x3_B13_stall_region_out_c0_exe431180),
        .in_c0_exe441181(bb_conv2d3x3_B13_stall_region_out_c0_exe441181),
        .in_c0_exe451182(bb_conv2d3x3_B13_stall_region_out_c0_exe451182),
        .in_c0_exe461183(bb_conv2d3x3_B13_stall_region_out_c0_exe461183),
        .in_c0_exe471184(bb_conv2d3x3_B13_stall_region_out_c0_exe471184),
        .in_c0_exe481185(bb_conv2d3x3_B13_stall_region_out_c0_exe481185),
        .in_c0_exe491186(bb_conv2d3x3_B13_stall_region_out_c0_exe491186),
        .in_c0_exe501187(bb_conv2d3x3_B13_stall_region_out_c0_exe501187),
        .in_c0_exe511188(bb_conv2d3x3_B13_stall_region_out_c0_exe511188),
        .in_c0_exe521189(bb_conv2d3x3_B13_stall_region_out_c0_exe521189),
        .in_c0_exe53(bb_conv2d3x3_B13_stall_region_out_c0_exe53),
        .in_c0_exe54(bb_conv2d3x3_B13_stall_region_out_c0_exe54),
        .in_c0_exe55(bb_conv2d3x3_B13_stall_region_out_c0_exe55),
        .in_c0_exe61143(bb_conv2d3x3_B13_stall_region_out_c0_exe61143),
        .in_c0_exe81145(bb_conv2d3x3_B13_stall_region_out_c0_exe81145),
        .in_c1_exe11205(bb_conv2d3x3_B13_stall_region_out_c1_exe11205),
        .in_c1_exe2(bb_conv2d3x3_B13_stall_region_out_c1_exe2),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d3x3_B13_stall_region_out_valid_out),
        .out_c0_exe111148(conv2d3x3_B13_branch_out_c0_exe111148),
        .out_c0_exe121149(conv2d3x3_B13_branch_out_c0_exe121149),
        .out_c0_exe131150(conv2d3x3_B13_branch_out_c0_exe131150),
        .out_c0_exe141151(conv2d3x3_B13_branch_out_c0_exe141151),
        .out_c0_exe151152(conv2d3x3_B13_branch_out_c0_exe151152),
        .out_c0_exe161153(conv2d3x3_B13_branch_out_c0_exe161153),
        .out_c0_exe171154(conv2d3x3_B13_branch_out_c0_exe171154),
        .out_c0_exe181155(conv2d3x3_B13_branch_out_c0_exe181155),
        .out_c0_exe191156(conv2d3x3_B13_branch_out_c0_exe191156),
        .out_c0_exe201157(conv2d3x3_B13_branch_out_c0_exe201157),
        .out_c0_exe211158(conv2d3x3_B13_branch_out_c0_exe211158),
        .out_c0_exe221159(conv2d3x3_B13_branch_out_c0_exe221159),
        .out_c0_exe231160(conv2d3x3_B13_branch_out_c0_exe231160),
        .out_c0_exe241161(conv2d3x3_B13_branch_out_c0_exe241161),
        .out_c0_exe251162(conv2d3x3_B13_branch_out_c0_exe251162),
        .out_c0_exe261163(conv2d3x3_B13_branch_out_c0_exe261163),
        .out_c0_exe271164(conv2d3x3_B13_branch_out_c0_exe271164),
        .out_c0_exe281165(conv2d3x3_B13_branch_out_c0_exe281165),
        .out_c0_exe291166(conv2d3x3_B13_branch_out_c0_exe291166),
        .out_c0_exe301167(conv2d3x3_B13_branch_out_c0_exe301167),
        .out_c0_exe311168(conv2d3x3_B13_branch_out_c0_exe311168),
        .out_c0_exe31140(conv2d3x3_B13_branch_out_c0_exe31140),
        .out_c0_exe321169(conv2d3x3_B13_branch_out_c0_exe321169),
        .out_c0_exe331170(conv2d3x3_B13_branch_out_c0_exe331170),
        .out_c0_exe341171(conv2d3x3_B13_branch_out_c0_exe341171),
        .out_c0_exe351172(conv2d3x3_B13_branch_out_c0_exe351172),
        .out_c0_exe371174(conv2d3x3_B13_branch_out_c0_exe371174),
        .out_c0_exe381175(conv2d3x3_B13_branch_out_c0_exe381175),
        .out_c0_exe391176(conv2d3x3_B13_branch_out_c0_exe391176),
        .out_c0_exe401177(conv2d3x3_B13_branch_out_c0_exe401177),
        .out_c0_exe411178(conv2d3x3_B13_branch_out_c0_exe411178),
        .out_c0_exe41141(conv2d3x3_B13_branch_out_c0_exe41141),
        .out_c0_exe421179(conv2d3x3_B13_branch_out_c0_exe421179),
        .out_c0_exe431180(conv2d3x3_B13_branch_out_c0_exe431180),
        .out_c0_exe441181(conv2d3x3_B13_branch_out_c0_exe441181),
        .out_c0_exe451182(conv2d3x3_B13_branch_out_c0_exe451182),
        .out_c0_exe461183(conv2d3x3_B13_branch_out_c0_exe461183),
        .out_c0_exe471184(conv2d3x3_B13_branch_out_c0_exe471184),
        .out_c0_exe481185(conv2d3x3_B13_branch_out_c0_exe481185),
        .out_c0_exe491186(conv2d3x3_B13_branch_out_c0_exe491186),
        .out_c0_exe501187(conv2d3x3_B13_branch_out_c0_exe501187),
        .out_c0_exe511188(conv2d3x3_B13_branch_out_c0_exe511188),
        .out_c0_exe521189(conv2d3x3_B13_branch_out_c0_exe521189),
        .out_c0_exe53(conv2d3x3_B13_branch_out_c0_exe53),
        .out_c0_exe54(conv2d3x3_B13_branch_out_c0_exe54),
        .out_c0_exe55(conv2d3x3_B13_branch_out_c0_exe55),
        .out_c0_exe61143(conv2d3x3_B13_branch_out_c0_exe61143),
        .out_c0_exe81145(conv2d3x3_B13_branch_out_c0_exe81145),
        .out_c1_exe11205(conv2d3x3_B13_branch_out_c1_exe11205),
        .out_c1_exe2(conv2d3x3_B13_branch_out_c1_exe2),
        .out_stall_out(conv2d3x3_B13_branch_out_stall_out),
        .out_valid_out_0(conv2d3x3_B13_branch_out_valid_out_0),
        .out_valid_out_1(conv2d3x3_B13_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe111148(GPOUT,117)
    assign out_c0_exe111148 = conv2d3x3_B13_branch_out_c0_exe111148;

    // out_c0_exe121149(GPOUT,118)
    assign out_c0_exe121149 = conv2d3x3_B13_branch_out_c0_exe121149;

    // out_c0_exe131150(GPOUT,119)
    assign out_c0_exe131150 = conv2d3x3_B13_branch_out_c0_exe131150;

    // out_c0_exe141151(GPOUT,120)
    assign out_c0_exe141151 = conv2d3x3_B13_branch_out_c0_exe141151;

    // out_c0_exe151152(GPOUT,121)
    assign out_c0_exe151152 = conv2d3x3_B13_branch_out_c0_exe151152;

    // out_c0_exe161153(GPOUT,122)
    assign out_c0_exe161153 = conv2d3x3_B13_branch_out_c0_exe161153;

    // out_c0_exe171154(GPOUT,123)
    assign out_c0_exe171154 = conv2d3x3_B13_branch_out_c0_exe171154;

    // out_c0_exe181155(GPOUT,124)
    assign out_c0_exe181155 = conv2d3x3_B13_branch_out_c0_exe181155;

    // out_c0_exe191156(GPOUT,125)
    assign out_c0_exe191156 = conv2d3x3_B13_branch_out_c0_exe191156;

    // out_c0_exe201157(GPOUT,126)
    assign out_c0_exe201157 = conv2d3x3_B13_branch_out_c0_exe201157;

    // out_c0_exe211158(GPOUT,127)
    assign out_c0_exe211158 = conv2d3x3_B13_branch_out_c0_exe211158;

    // out_c0_exe221159(GPOUT,128)
    assign out_c0_exe221159 = conv2d3x3_B13_branch_out_c0_exe221159;

    // out_c0_exe231160(GPOUT,129)
    assign out_c0_exe231160 = conv2d3x3_B13_branch_out_c0_exe231160;

    // out_c0_exe241161(GPOUT,130)
    assign out_c0_exe241161 = conv2d3x3_B13_branch_out_c0_exe241161;

    // out_c0_exe251162(GPOUT,131)
    assign out_c0_exe251162 = conv2d3x3_B13_branch_out_c0_exe251162;

    // out_c0_exe261163(GPOUT,132)
    assign out_c0_exe261163 = conv2d3x3_B13_branch_out_c0_exe261163;

    // out_c0_exe271164(GPOUT,133)
    assign out_c0_exe271164 = conv2d3x3_B13_branch_out_c0_exe271164;

    // out_c0_exe281165(GPOUT,134)
    assign out_c0_exe281165 = conv2d3x3_B13_branch_out_c0_exe281165;

    // out_c0_exe291166(GPOUT,135)
    assign out_c0_exe291166 = conv2d3x3_B13_branch_out_c0_exe291166;

    // out_c0_exe301167(GPOUT,136)
    assign out_c0_exe301167 = conv2d3x3_B13_branch_out_c0_exe301167;

    // out_c0_exe311168(GPOUT,137)
    assign out_c0_exe311168 = conv2d3x3_B13_branch_out_c0_exe311168;

    // out_c0_exe31140(GPOUT,138)
    assign out_c0_exe31140 = conv2d3x3_B13_branch_out_c0_exe31140;

    // out_c0_exe321169(GPOUT,139)
    assign out_c0_exe321169 = conv2d3x3_B13_branch_out_c0_exe321169;

    // out_c0_exe331170(GPOUT,140)
    assign out_c0_exe331170 = conv2d3x3_B13_branch_out_c0_exe331170;

    // out_c0_exe341171(GPOUT,141)
    assign out_c0_exe341171 = conv2d3x3_B13_branch_out_c0_exe341171;

    // out_c0_exe351172(GPOUT,142)
    assign out_c0_exe351172 = conv2d3x3_B13_branch_out_c0_exe351172;

    // out_c0_exe371174(GPOUT,143)
    assign out_c0_exe371174 = conv2d3x3_B13_branch_out_c0_exe371174;

    // out_c0_exe381175(GPOUT,144)
    assign out_c0_exe381175 = conv2d3x3_B13_branch_out_c0_exe381175;

    // out_c0_exe391176(GPOUT,145)
    assign out_c0_exe391176 = conv2d3x3_B13_branch_out_c0_exe391176;

    // out_c0_exe401177(GPOUT,146)
    assign out_c0_exe401177 = conv2d3x3_B13_branch_out_c0_exe401177;

    // out_c0_exe411178(GPOUT,147)
    assign out_c0_exe411178 = conv2d3x3_B13_branch_out_c0_exe411178;

    // out_c0_exe41141(GPOUT,148)
    assign out_c0_exe41141 = conv2d3x3_B13_branch_out_c0_exe41141;

    // out_c0_exe421179(GPOUT,149)
    assign out_c0_exe421179 = conv2d3x3_B13_branch_out_c0_exe421179;

    // out_c0_exe431180(GPOUT,150)
    assign out_c0_exe431180 = conv2d3x3_B13_branch_out_c0_exe431180;

    // out_c0_exe441181(GPOUT,151)
    assign out_c0_exe441181 = conv2d3x3_B13_branch_out_c0_exe441181;

    // out_c0_exe451182(GPOUT,152)
    assign out_c0_exe451182 = conv2d3x3_B13_branch_out_c0_exe451182;

    // out_c0_exe461183(GPOUT,153)
    assign out_c0_exe461183 = conv2d3x3_B13_branch_out_c0_exe461183;

    // out_c0_exe471184(GPOUT,154)
    assign out_c0_exe471184 = conv2d3x3_B13_branch_out_c0_exe471184;

    // out_c0_exe481185(GPOUT,155)
    assign out_c0_exe481185 = conv2d3x3_B13_branch_out_c0_exe481185;

    // out_c0_exe491186(GPOUT,156)
    assign out_c0_exe491186 = conv2d3x3_B13_branch_out_c0_exe491186;

    // out_c0_exe501187(GPOUT,157)
    assign out_c0_exe501187 = conv2d3x3_B13_branch_out_c0_exe501187;

    // out_c0_exe511188(GPOUT,158)
    assign out_c0_exe511188 = conv2d3x3_B13_branch_out_c0_exe511188;

    // out_c0_exe521189(GPOUT,159)
    assign out_c0_exe521189 = conv2d3x3_B13_branch_out_c0_exe521189;

    // out_c0_exe53(GPOUT,160)
    assign out_c0_exe53 = conv2d3x3_B13_branch_out_c0_exe53;

    // out_c0_exe54(GPOUT,161)
    assign out_c0_exe54 = conv2d3x3_B13_branch_out_c0_exe54;

    // out_c0_exe55(GPOUT,162)
    assign out_c0_exe55 = conv2d3x3_B13_branch_out_c0_exe55;

    // out_c0_exe61143(GPOUT,163)
    assign out_c0_exe61143 = conv2d3x3_B13_branch_out_c0_exe61143;

    // out_c0_exe81145(GPOUT,164)
    assign out_c0_exe81145 = conv2d3x3_B13_branch_out_c0_exe81145;

    // out_c1_exe11205(GPOUT,165)
    assign out_c1_exe11205 = conv2d3x3_B13_branch_out_c1_exe11205;

    // out_c1_exe2(GPOUT,166)
    assign out_c1_exe2 = conv2d3x3_B13_branch_out_c1_exe2;

    // out_exiting_stall_out(GPOUT,167)
    assign out_exiting_stall_out = bb_conv2d3x3_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,168)
    assign out_exiting_valid_out = bb_conv2d3x3_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out;

    // out_lm20_conv2d3x3_avm_address(GPOUT,169)
    assign out_lm20_conv2d3x3_avm_address = bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_address;

    // out_lm20_conv2d3x3_avm_burstcount(GPOUT,170)
    assign out_lm20_conv2d3x3_avm_burstcount = bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_burstcount;

    // out_lm20_conv2d3x3_avm_byteenable(GPOUT,171)
    assign out_lm20_conv2d3x3_avm_byteenable = bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_byteenable;

    // out_lm20_conv2d3x3_avm_enable(GPOUT,172)
    assign out_lm20_conv2d3x3_avm_enable = bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_enable;

    // out_lm20_conv2d3x3_avm_read(GPOUT,173)
    assign out_lm20_conv2d3x3_avm_read = bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_read;

    // out_lm20_conv2d3x3_avm_write(GPOUT,174)
    assign out_lm20_conv2d3x3_avm_write = bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_write;

    // out_lm20_conv2d3x3_avm_writedata(GPOUT,175)
    assign out_lm20_conv2d3x3_avm_writedata = bb_conv2d3x3_B13_stall_region_out_lm20_conv2d3x3_avm_writedata;

    // out_lm22_conv2d3x3_avm_address(GPOUT,176)
    assign out_lm22_conv2d3x3_avm_address = bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_address;

    // out_lm22_conv2d3x3_avm_burstcount(GPOUT,177)
    assign out_lm22_conv2d3x3_avm_burstcount = bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_burstcount;

    // out_lm22_conv2d3x3_avm_byteenable(GPOUT,178)
    assign out_lm22_conv2d3x3_avm_byteenable = bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_byteenable;

    // out_lm22_conv2d3x3_avm_enable(GPOUT,179)
    assign out_lm22_conv2d3x3_avm_enable = bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_enable;

    // out_lm22_conv2d3x3_avm_read(GPOUT,180)
    assign out_lm22_conv2d3x3_avm_read = bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_read;

    // out_lm22_conv2d3x3_avm_write(GPOUT,181)
    assign out_lm22_conv2d3x3_avm_write = bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_write;

    // out_lm22_conv2d3x3_avm_writedata(GPOUT,182)
    assign out_lm22_conv2d3x3_avm_writedata = bb_conv2d3x3_B13_stall_region_out_lm22_conv2d3x3_avm_writedata;

    // out_stall_in_0(GPOUT,183)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,184)
    assign out_stall_out_0 = conv2d3x3_B13_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,185)
    assign out_stall_out_1 = conv2d3x3_B13_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,186)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,187)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,188)
    assign out_valid_out_0 = conv2d3x3_B13_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,189)
    assign out_valid_out_1 = conv2d3x3_B13_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,191)
    assign out_pipeline_valid_out = bb_conv2d3x3_B13_stall_region_out_pipeline_valid_out;

endmodule
