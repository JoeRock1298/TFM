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

// SystemVerilog created from conv2d1x1_bb_B7
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B7 (
    output wire [15:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [31:0] in_c0_exe1753124_0,
    input wire [31:0] in_c0_exe1853225_0,
    input wire [0:0] in_c0_exe1953327_0,
    input wire [0:0] in_c0_exe2053428_0,
    input wire [63:0] in_c0_exe2153529_0,
    input wire [0:0] in_c0_exe351721_0,
    input wire [0:0] in_c0_exe451822_0,
    input wire [31:0] in_c0_exe551923_0,
    input wire [31:0] in_c1_exe1039_0,
    input wire [31:0] in_c1_exe1140_0,
    input wire [31:0] in_c1_exe1241_0,
    input wire [31:0] in_c1_exe1342_0,
    input wire [31:0] in_c1_exe1443_0,
    input wire [31:0] in_c1_exe1544_0,
    input wire [31:0] in_c1_exe159230_0,
    input wire [31:0] in_c1_exe1645_0,
    input wire [31:0] in_c1_exe1746_0,
    input wire [31:0] in_c1_exe1847_0,
    input wire [31:0] in_c1_exe1948_0,
    input wire [31:0] in_c1_exe2049_0,
    input wire [31:0] in_c1_exe2150_0,
    input wire [31:0] in_c1_exe2251_0,
    input wire [31:0] in_c1_exe231_0,
    input wire [31:0] in_c1_exe2352_0,
    input wire [31:0] in_c1_exe2453_0,
    input wire [31:0] in_c1_exe2554_0,
    input wire [31:0] in_c1_exe2655_0,
    input wire [31:0] in_c1_exe2756_0,
    input wire [31:0] in_c1_exe2857_0,
    input wire [31:0] in_c1_exe2958_0,
    input wire [31:0] in_c1_exe3059_0,
    input wire [31:0] in_c1_exe3160_0,
    input wire [31:0] in_c1_exe3261_0,
    input wire [31:0] in_c1_exe332_0,
    input wire [31:0] in_c1_exe3362_0,
    input wire [31:0] in_c1_exe3463_0,
    input wire [31:0] in_c1_exe3564_0,
    input wire [31:0] in_c1_exe3665_0,
    input wire [31:0] in_c1_exe3766_0,
    input wire [31:0] in_c1_exe3867_0,
    input wire [31:0] in_c1_exe3968_0,
    input wire [31:0] in_c1_exe4069_0,
    input wire [31:0] in_c1_exe4170_0,
    input wire [31:0] in_c1_exe4271_0,
    input wire [31:0] in_c1_exe433_0,
    input wire [31:0] in_c1_exe4372_0,
    input wire [31:0] in_c1_exe4473_0,
    input wire [31:0] in_c1_exe4574_0,
    input wire [31:0] in_c1_exe4675_0,
    input wire [31:0] in_c1_exe4776_0,
    input wire [31:0] in_c1_exe4877_0,
    input wire [31:0] in_c1_exe534_0,
    input wire [31:0] in_c1_exe635_0,
    input wire [31:0] in_c1_exe736_0,
    input wire [31:0] in_c1_exe837_0,
    input wire [31:0] in_c1_exe938_0,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [1023:0] in_memdep_13_conv2d1x1_avm_readdata,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_writeack,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [511:0] in_unnamed_conv2d1x116_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1953327,
    output wire [0:0] out_lsu_unnamed_conv2d1x116_o_active,
    output wire [31:0] out_memdep_13_conv2d1x1_avm_address,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_burstcount,
    output wire [127:0] out_memdep_13_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_enable,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_read,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_write,
    output wire [1023:0] out_memdep_13_conv2d1x1_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [30:0] out_unnamed_conv2d1x116_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x116_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x116_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x116_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x116_conv2d1x1_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2d1x1_B7_stall_region_out_c0_exe1953327;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_c0_exe2053428;
    wire [15:0] bb_conv2d1x1_B7_stall_region_out_feedback_out_1;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_feedback_valid_out_1;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_lsu_unnamed_conv2d1x116_o_active;
    wire [31:0] bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_burstcount;
    wire [127:0] bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_write;
    wire [1023:0] bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_stall_out;
    wire [30:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B7_stall_region_out_valid_out;
    wire [0:0] conv2d1x1_B7_branch_out_c0_exe1953327;
    wire [0:0] conv2d1x1_B7_branch_out_stall_out;
    wire [0:0] conv2d1x1_B7_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B7_branch_out_valid_out_1;
    wire [31:0] conv2d1x1_B7_merge_out_c0_exe1753124;
    wire [31:0] conv2d1x1_B7_merge_out_c0_exe1853225;
    wire [0:0] conv2d1x1_B7_merge_out_c0_exe1953327;
    wire [0:0] conv2d1x1_B7_merge_out_c0_exe2053428;
    wire [63:0] conv2d1x1_B7_merge_out_c0_exe2153529;
    wire [0:0] conv2d1x1_B7_merge_out_c0_exe351721;
    wire [0:0] conv2d1x1_B7_merge_out_c0_exe451822;
    wire [31:0] conv2d1x1_B7_merge_out_c0_exe551923;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe1039;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe1140;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe1241;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe1342;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe1443;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe1544;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe159230;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe1645;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe1746;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe1847;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe1948;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe2049;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe2150;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe2251;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe231;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe2352;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe2453;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe2554;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe2655;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe2756;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe2857;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe2958;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe3059;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe3160;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe3261;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe332;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe3362;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe3463;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe3564;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe3665;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe3766;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe3867;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe3968;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe4069;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe4170;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe4271;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe433;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe4372;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe4473;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe4574;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe4675;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe4776;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe4877;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe534;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe635;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe736;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe837;
    wire [31:0] conv2d1x1_B7_merge_out_c1_exe938;
    wire [0:0] conv2d1x1_B7_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B7_merge_out_valid_out;


    // conv2d1x1_B7_branch(BLACKBOX,3)
    conv2d1x1_B7_branch theconv2d1x1_B7_branch (
        .in_c0_exe1953327(bb_conv2d1x1_B7_stall_region_out_c0_exe1953327),
        .in_c0_exe2053428(bb_conv2d1x1_B7_stall_region_out_c0_exe2053428),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2d1x1_B7_stall_region_out_valid_out),
        .out_c0_exe1953327(conv2d1x1_B7_branch_out_c0_exe1953327),
        .out_stall_out(conv2d1x1_B7_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B7_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B7_merge(BLACKBOX,4)
    conv2d1x1_B7_merge theconv2d1x1_B7_merge (
        .in_c0_exe1753124_0(in_c0_exe1753124_0),
        .in_c0_exe1853225_0(in_c0_exe1853225_0),
        .in_c0_exe1953327_0(in_c0_exe1953327_0),
        .in_c0_exe2053428_0(in_c0_exe2053428_0),
        .in_c0_exe2153529_0(in_c0_exe2153529_0),
        .in_c0_exe351721_0(in_c0_exe351721_0),
        .in_c0_exe451822_0(in_c0_exe451822_0),
        .in_c0_exe551923_0(in_c0_exe551923_0),
        .in_c1_exe1039_0(in_c1_exe1039_0),
        .in_c1_exe1140_0(in_c1_exe1140_0),
        .in_c1_exe1241_0(in_c1_exe1241_0),
        .in_c1_exe1342_0(in_c1_exe1342_0),
        .in_c1_exe1443_0(in_c1_exe1443_0),
        .in_c1_exe1544_0(in_c1_exe1544_0),
        .in_c1_exe159230_0(in_c1_exe159230_0),
        .in_c1_exe1645_0(in_c1_exe1645_0),
        .in_c1_exe1746_0(in_c1_exe1746_0),
        .in_c1_exe1847_0(in_c1_exe1847_0),
        .in_c1_exe1948_0(in_c1_exe1948_0),
        .in_c1_exe2049_0(in_c1_exe2049_0),
        .in_c1_exe2150_0(in_c1_exe2150_0),
        .in_c1_exe2251_0(in_c1_exe2251_0),
        .in_c1_exe231_0(in_c1_exe231_0),
        .in_c1_exe2352_0(in_c1_exe2352_0),
        .in_c1_exe2453_0(in_c1_exe2453_0),
        .in_c1_exe2554_0(in_c1_exe2554_0),
        .in_c1_exe2655_0(in_c1_exe2655_0),
        .in_c1_exe2756_0(in_c1_exe2756_0),
        .in_c1_exe2857_0(in_c1_exe2857_0),
        .in_c1_exe2958_0(in_c1_exe2958_0),
        .in_c1_exe3059_0(in_c1_exe3059_0),
        .in_c1_exe3160_0(in_c1_exe3160_0),
        .in_c1_exe3261_0(in_c1_exe3261_0),
        .in_c1_exe332_0(in_c1_exe332_0),
        .in_c1_exe3362_0(in_c1_exe3362_0),
        .in_c1_exe3463_0(in_c1_exe3463_0),
        .in_c1_exe3564_0(in_c1_exe3564_0),
        .in_c1_exe3665_0(in_c1_exe3665_0),
        .in_c1_exe3766_0(in_c1_exe3766_0),
        .in_c1_exe3867_0(in_c1_exe3867_0),
        .in_c1_exe3968_0(in_c1_exe3968_0),
        .in_c1_exe4069_0(in_c1_exe4069_0),
        .in_c1_exe4170_0(in_c1_exe4170_0),
        .in_c1_exe4271_0(in_c1_exe4271_0),
        .in_c1_exe433_0(in_c1_exe433_0),
        .in_c1_exe4372_0(in_c1_exe4372_0),
        .in_c1_exe4473_0(in_c1_exe4473_0),
        .in_c1_exe4574_0(in_c1_exe4574_0),
        .in_c1_exe4675_0(in_c1_exe4675_0),
        .in_c1_exe4776_0(in_c1_exe4776_0),
        .in_c1_exe4877_0(in_c1_exe4877_0),
        .in_c1_exe534_0(in_c1_exe534_0),
        .in_c1_exe635_0(in_c1_exe635_0),
        .in_c1_exe736_0(in_c1_exe736_0),
        .in_c1_exe837_0(in_c1_exe837_0),
        .in_c1_exe938_0(in_c1_exe938_0),
        .in_stall_in(bb_conv2d1x1_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1753124(conv2d1x1_B7_merge_out_c0_exe1753124),
        .out_c0_exe1853225(conv2d1x1_B7_merge_out_c0_exe1853225),
        .out_c0_exe1953327(conv2d1x1_B7_merge_out_c0_exe1953327),
        .out_c0_exe2053428(conv2d1x1_B7_merge_out_c0_exe2053428),
        .out_c0_exe2153529(conv2d1x1_B7_merge_out_c0_exe2153529),
        .out_c0_exe351721(conv2d1x1_B7_merge_out_c0_exe351721),
        .out_c0_exe451822(conv2d1x1_B7_merge_out_c0_exe451822),
        .out_c0_exe551923(conv2d1x1_B7_merge_out_c0_exe551923),
        .out_c1_exe1039(conv2d1x1_B7_merge_out_c1_exe1039),
        .out_c1_exe1140(conv2d1x1_B7_merge_out_c1_exe1140),
        .out_c1_exe1241(conv2d1x1_B7_merge_out_c1_exe1241),
        .out_c1_exe1342(conv2d1x1_B7_merge_out_c1_exe1342),
        .out_c1_exe1443(conv2d1x1_B7_merge_out_c1_exe1443),
        .out_c1_exe1544(conv2d1x1_B7_merge_out_c1_exe1544),
        .out_c1_exe159230(conv2d1x1_B7_merge_out_c1_exe159230),
        .out_c1_exe1645(conv2d1x1_B7_merge_out_c1_exe1645),
        .out_c1_exe1746(conv2d1x1_B7_merge_out_c1_exe1746),
        .out_c1_exe1847(conv2d1x1_B7_merge_out_c1_exe1847),
        .out_c1_exe1948(conv2d1x1_B7_merge_out_c1_exe1948),
        .out_c1_exe2049(conv2d1x1_B7_merge_out_c1_exe2049),
        .out_c1_exe2150(conv2d1x1_B7_merge_out_c1_exe2150),
        .out_c1_exe2251(conv2d1x1_B7_merge_out_c1_exe2251),
        .out_c1_exe231(conv2d1x1_B7_merge_out_c1_exe231),
        .out_c1_exe2352(conv2d1x1_B7_merge_out_c1_exe2352),
        .out_c1_exe2453(conv2d1x1_B7_merge_out_c1_exe2453),
        .out_c1_exe2554(conv2d1x1_B7_merge_out_c1_exe2554),
        .out_c1_exe2655(conv2d1x1_B7_merge_out_c1_exe2655),
        .out_c1_exe2756(conv2d1x1_B7_merge_out_c1_exe2756),
        .out_c1_exe2857(conv2d1x1_B7_merge_out_c1_exe2857),
        .out_c1_exe2958(conv2d1x1_B7_merge_out_c1_exe2958),
        .out_c1_exe3059(conv2d1x1_B7_merge_out_c1_exe3059),
        .out_c1_exe3160(conv2d1x1_B7_merge_out_c1_exe3160),
        .out_c1_exe3261(conv2d1x1_B7_merge_out_c1_exe3261),
        .out_c1_exe332(conv2d1x1_B7_merge_out_c1_exe332),
        .out_c1_exe3362(conv2d1x1_B7_merge_out_c1_exe3362),
        .out_c1_exe3463(conv2d1x1_B7_merge_out_c1_exe3463),
        .out_c1_exe3564(conv2d1x1_B7_merge_out_c1_exe3564),
        .out_c1_exe3665(conv2d1x1_B7_merge_out_c1_exe3665),
        .out_c1_exe3766(conv2d1x1_B7_merge_out_c1_exe3766),
        .out_c1_exe3867(conv2d1x1_B7_merge_out_c1_exe3867),
        .out_c1_exe3968(conv2d1x1_B7_merge_out_c1_exe3968),
        .out_c1_exe4069(conv2d1x1_B7_merge_out_c1_exe4069),
        .out_c1_exe4170(conv2d1x1_B7_merge_out_c1_exe4170),
        .out_c1_exe4271(conv2d1x1_B7_merge_out_c1_exe4271),
        .out_c1_exe433(conv2d1x1_B7_merge_out_c1_exe433),
        .out_c1_exe4372(conv2d1x1_B7_merge_out_c1_exe4372),
        .out_c1_exe4473(conv2d1x1_B7_merge_out_c1_exe4473),
        .out_c1_exe4574(conv2d1x1_B7_merge_out_c1_exe4574),
        .out_c1_exe4675(conv2d1x1_B7_merge_out_c1_exe4675),
        .out_c1_exe4776(conv2d1x1_B7_merge_out_c1_exe4776),
        .out_c1_exe4877(conv2d1x1_B7_merge_out_c1_exe4877),
        .out_c1_exe534(conv2d1x1_B7_merge_out_c1_exe534),
        .out_c1_exe635(conv2d1x1_B7_merge_out_c1_exe635),
        .out_c1_exe736(conv2d1x1_B7_merge_out_c1_exe736),
        .out_c1_exe837(conv2d1x1_B7_merge_out_c1_exe837),
        .out_c1_exe938(conv2d1x1_B7_merge_out_c1_exe938),
        .out_stall_out_0(conv2d1x1_B7_merge_out_stall_out_0),
        .out_valid_out(conv2d1x1_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B7_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B7_stall_region thebb_conv2d1x1_B7_stall_region (
        .in_c0_exe1753124(conv2d1x1_B7_merge_out_c0_exe1753124),
        .in_c0_exe1853225(conv2d1x1_B7_merge_out_c0_exe1853225),
        .in_c0_exe1953327(conv2d1x1_B7_merge_out_c0_exe1953327),
        .in_c0_exe2053428(conv2d1x1_B7_merge_out_c0_exe2053428),
        .in_c0_exe2153529(conv2d1x1_B7_merge_out_c0_exe2153529),
        .in_c0_exe351721(conv2d1x1_B7_merge_out_c0_exe351721),
        .in_c0_exe451822(conv2d1x1_B7_merge_out_c0_exe451822),
        .in_c0_exe551923(conv2d1x1_B7_merge_out_c0_exe551923),
        .in_c1_exe1039(conv2d1x1_B7_merge_out_c1_exe1039),
        .in_c1_exe1140(conv2d1x1_B7_merge_out_c1_exe1140),
        .in_c1_exe1241(conv2d1x1_B7_merge_out_c1_exe1241),
        .in_c1_exe1342(conv2d1x1_B7_merge_out_c1_exe1342),
        .in_c1_exe1443(conv2d1x1_B7_merge_out_c1_exe1443),
        .in_c1_exe1544(conv2d1x1_B7_merge_out_c1_exe1544),
        .in_c1_exe159230(conv2d1x1_B7_merge_out_c1_exe159230),
        .in_c1_exe1645(conv2d1x1_B7_merge_out_c1_exe1645),
        .in_c1_exe1746(conv2d1x1_B7_merge_out_c1_exe1746),
        .in_c1_exe1847(conv2d1x1_B7_merge_out_c1_exe1847),
        .in_c1_exe1948(conv2d1x1_B7_merge_out_c1_exe1948),
        .in_c1_exe2049(conv2d1x1_B7_merge_out_c1_exe2049),
        .in_c1_exe2150(conv2d1x1_B7_merge_out_c1_exe2150),
        .in_c1_exe2251(conv2d1x1_B7_merge_out_c1_exe2251),
        .in_c1_exe231(conv2d1x1_B7_merge_out_c1_exe231),
        .in_c1_exe2352(conv2d1x1_B7_merge_out_c1_exe2352),
        .in_c1_exe2453(conv2d1x1_B7_merge_out_c1_exe2453),
        .in_c1_exe2554(conv2d1x1_B7_merge_out_c1_exe2554),
        .in_c1_exe2655(conv2d1x1_B7_merge_out_c1_exe2655),
        .in_c1_exe2756(conv2d1x1_B7_merge_out_c1_exe2756),
        .in_c1_exe2857(conv2d1x1_B7_merge_out_c1_exe2857),
        .in_c1_exe2958(conv2d1x1_B7_merge_out_c1_exe2958),
        .in_c1_exe3059(conv2d1x1_B7_merge_out_c1_exe3059),
        .in_c1_exe3160(conv2d1x1_B7_merge_out_c1_exe3160),
        .in_c1_exe3261(conv2d1x1_B7_merge_out_c1_exe3261),
        .in_c1_exe332(conv2d1x1_B7_merge_out_c1_exe332),
        .in_c1_exe3362(conv2d1x1_B7_merge_out_c1_exe3362),
        .in_c1_exe3463(conv2d1x1_B7_merge_out_c1_exe3463),
        .in_c1_exe3564(conv2d1x1_B7_merge_out_c1_exe3564),
        .in_c1_exe3665(conv2d1x1_B7_merge_out_c1_exe3665),
        .in_c1_exe3766(conv2d1x1_B7_merge_out_c1_exe3766),
        .in_c1_exe3867(conv2d1x1_B7_merge_out_c1_exe3867),
        .in_c1_exe3968(conv2d1x1_B7_merge_out_c1_exe3968),
        .in_c1_exe4069(conv2d1x1_B7_merge_out_c1_exe4069),
        .in_c1_exe4170(conv2d1x1_B7_merge_out_c1_exe4170),
        .in_c1_exe4271(conv2d1x1_B7_merge_out_c1_exe4271),
        .in_c1_exe433(conv2d1x1_B7_merge_out_c1_exe433),
        .in_c1_exe4372(conv2d1x1_B7_merge_out_c1_exe4372),
        .in_c1_exe4473(conv2d1x1_B7_merge_out_c1_exe4473),
        .in_c1_exe4574(conv2d1x1_B7_merge_out_c1_exe4574),
        .in_c1_exe4675(conv2d1x1_B7_merge_out_c1_exe4675),
        .in_c1_exe4776(conv2d1x1_B7_merge_out_c1_exe4776),
        .in_c1_exe4877(conv2d1x1_B7_merge_out_c1_exe4877),
        .in_c1_exe534(conv2d1x1_B7_merge_out_c1_exe534),
        .in_c1_exe635(conv2d1x1_B7_merge_out_c1_exe635),
        .in_c1_exe736(conv2d1x1_B7_merge_out_c1_exe736),
        .in_c1_exe837(conv2d1x1_B7_merge_out_c1_exe837),
        .in_c1_exe938(conv2d1x1_B7_merge_out_c1_exe938),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_flush(in_flush),
        .in_memdep_13_conv2d1x1_avm_readdata(in_memdep_13_conv2d1x1_avm_readdata),
        .in_memdep_13_conv2d1x1_avm_readdatavalid(in_memdep_13_conv2d1x1_avm_readdatavalid),
        .in_memdep_13_conv2d1x1_avm_waitrequest(in_memdep_13_conv2d1x1_avm_waitrequest),
        .in_memdep_13_conv2d1x1_avm_writeack(in_memdep_13_conv2d1x1_avm_writeack),
        .in_output_im(in_output_im),
        .in_stall_in(conv2d1x1_B7_branch_out_stall_out),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdata(in_unnamed_conv2d1x116_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_writeack(in_unnamed_conv2d1x116_conv2d1x1_avm_writeack),
        .in_valid_in(conv2d1x1_B7_merge_out_valid_out),
        .out_c0_exe1953327(bb_conv2d1x1_B7_stall_region_out_c0_exe1953327),
        .out_c0_exe2053428(bb_conv2d1x1_B7_stall_region_out_c0_exe2053428),
        .out_feedback_out_1(bb_conv2d1x1_B7_stall_region_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_conv2d1x1_B7_stall_region_out_feedback_valid_out_1),
        .out_lsu_unnamed_conv2d1x116_o_active(bb_conv2d1x1_B7_stall_region_out_lsu_unnamed_conv2d1x116_o_active),
        .out_memdep_13_conv2d1x1_avm_address(bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_address),
        .out_memdep_13_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_burstcount),
        .out_memdep_13_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_byteenable),
        .out_memdep_13_conv2d1x1_avm_enable(bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_enable),
        .out_memdep_13_conv2d1x1_avm_read(bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_read),
        .out_memdep_13_conv2d1x1_avm_write(bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_write),
        .out_memdep_13_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_writedata),
        .out_stall_out(bb_conv2d1x1_B7_stall_region_out_stall_out),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_address(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_enable(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_read(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_write(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata),
        .out_valid_out(bb_conv2d1x1_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_1_sync(GPOUT,5)
    assign out_feedback_out_1 = bb_conv2d1x1_B7_stall_region_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,7)
    assign out_feedback_valid_out_1 = bb_conv2d1x1_B7_stall_region_out_feedback_valid_out_1;

    // out_c0_exe1953327(GPOUT,81)
    assign out_c0_exe1953327 = conv2d1x1_B7_branch_out_c0_exe1953327;

    // out_lsu_unnamed_conv2d1x116_o_active(GPOUT,82)
    assign out_lsu_unnamed_conv2d1x116_o_active = bb_conv2d1x1_B7_stall_region_out_lsu_unnamed_conv2d1x116_o_active;

    // out_memdep_13_conv2d1x1_avm_address(GPOUT,83)
    assign out_memdep_13_conv2d1x1_avm_address = bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_address;

    // out_memdep_13_conv2d1x1_avm_burstcount(GPOUT,84)
    assign out_memdep_13_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_burstcount;

    // out_memdep_13_conv2d1x1_avm_byteenable(GPOUT,85)
    assign out_memdep_13_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_byteenable;

    // out_memdep_13_conv2d1x1_avm_enable(GPOUT,86)
    assign out_memdep_13_conv2d1x1_avm_enable = bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_enable;

    // out_memdep_13_conv2d1x1_avm_read(GPOUT,87)
    assign out_memdep_13_conv2d1x1_avm_read = bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_read;

    // out_memdep_13_conv2d1x1_avm_write(GPOUT,88)
    assign out_memdep_13_conv2d1x1_avm_write = bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_write;

    // out_memdep_13_conv2d1x1_avm_writedata(GPOUT,89)
    assign out_memdep_13_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_stall_region_out_memdep_13_conv2d1x1_avm_writedata;

    // out_stall_in_0(GPOUT,90)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,91)
    assign out_stall_out_0 = conv2d1x1_B7_merge_out_stall_out_0;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_address(GPOUT,92)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_address = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount(GPOUT,93)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable(GPOUT,94)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_enable(GPOUT,95)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_enable = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_read(GPOUT,96)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_read = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_write(GPOUT,97)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_write = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x116_conv2d1x1_avm_writedata(GPOUT,98)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_stall_region_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata;

    // out_valid_out_0(GPOUT,99)
    assign out_valid_out_0 = conv2d1x1_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,100)
    assign out_valid_out_1 = conv2d1x1_B7_branch_out_valid_out_1;

endmodule
