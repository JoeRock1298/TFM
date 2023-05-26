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
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B5 (
    input wire [31:0] in_c0_exe103758_0,
    input wire [0:0] in_c0_exe113769_0,
    input wire [0:0] in_c0_exe1237710_0,
    input wire [31:0] in_c0_exe1337811_0,
    input wire [31:0] in_c0_exe1437912_0,
    input wire [0:0] in_c0_exe1538013_0,
    input wire [0:0] in_c0_exe1638114_0,
    input wire [0:0] in_c0_exe1738215_0,
    input wire [32:0] in_c0_exe1838316_0,
    input wire [31:0] in_c0_exe1938417_0,
    input wire [31:0] in_c0_exe2038518_0,
    input wire [31:0] in_c0_exe2138619_0,
    input wire [0:0] in_c0_exe2238720_0,
    input wire [63:0] in_c0_exe23671_0,
    input wire [0:0] in_c0_exe33682_0,
    input wire [0:0] in_c0_exe43693_0,
    input wire [31:0] in_c0_exe63714_0,
    input wire [0:0] in_c0_exe73725_0,
    input wire [31:0] in_c0_exe83736_0,
    input wire [31:0] in_c0_exe93747_0,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [1023:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe10308,
    output wire [31:0] out_c0_exe103758,
    output wire [31:0] out_c0_exe11309,
    output wire [0:0] out_c0_exe113769,
    output wire [31:0] out_c0_exe12310,
    output wire [0:0] out_c0_exe1237710,
    output wire [31:0] out_c0_exe1299,
    output wire [31:0] out_c0_exe13311,
    output wire [31:0] out_c0_exe1337811,
    output wire [31:0] out_c0_exe14312,
    output wire [31:0] out_c0_exe1437912,
    output wire [31:0] out_c0_exe15313,
    output wire [0:0] out_c0_exe1538013,
    output wire [31:0] out_c0_exe16314,
    output wire [0:0] out_c0_exe1638114,
    output wire [31:0] out_c0_exe17315,
    output wire [0:0] out_c0_exe1738215,
    output wire [31:0] out_c0_exe18316,
    output wire [32:0] out_c0_exe1838316,
    output wire [31:0] out_c0_exe19317,
    output wire [31:0] out_c0_exe1938417,
    output wire [31:0] out_c0_exe20318,
    output wire [31:0] out_c0_exe2038518,
    output wire [31:0] out_c0_exe21,
    output wire [31:0] out_c0_exe2138619,
    output wire [31:0] out_c0_exe22,
    output wire [0:0] out_c0_exe2238720,
    output wire [31:0] out_c0_exe23,
    output wire [31:0] out_c0_exe2300,
    output wire [63:0] out_c0_exe23671,
    output wire [31:0] out_c0_exe24,
    output wire [31:0] out_c0_exe3301,
    output wire [0:0] out_c0_exe33682,
    output wire [31:0] out_c0_exe4302,
    output wire [0:0] out_c0_exe43693,
    output wire [31:0] out_c0_exe5303,
    output wire [31:0] out_c0_exe6304,
    output wire [31:0] out_c0_exe63714,
    output wire [31:0] out_c0_exe7305,
    output wire [0:0] out_c0_exe73725,
    output wire [31:0] out_c0_exe8306,
    output wire [31:0] out_c0_exe83736,
    output wire [31:0] out_c0_exe9307,
    output wire [31:0] out_c0_exe93747,
    output wire [31:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount,
    output wire [127:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write,
    output wire [1023:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe10308;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe103758;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe11309;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe113769;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe12310;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1237710;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1299;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe13311;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1337811;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe14312;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1437912;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe15313;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1538013;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe16314;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1638114;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe17315;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1738215;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe18316;
    wire [32:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1838316;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe19317;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1938417;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe20318;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe2038518;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe21;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe2138619;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe22;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe2238720;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe23;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe2300;
    wire [63:0] bb_conv2d1x1_B5_stall_region_out_c0_exe23671;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe24;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe3301;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe33682;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe4302;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe43693;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe5303;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe6304;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe63714;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe7305;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe73725;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe8306;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe83736;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe9307;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe93747;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount;
    wire [127:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write;
    wire [1023:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_valid_out;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe10308;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe103758;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe11309;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe113769;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe12310;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe1237710;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe1299;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe13311;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe1337811;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe14312;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe1437912;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe15313;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe1538013;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe16314;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe1638114;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe17315;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe1738215;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe18316;
    wire [32:0] conv2d1x1_B5_branch_out_c0_exe1838316;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe19317;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe1938417;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe20318;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe2038518;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe21;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe2138619;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe22;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe2238720;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe23;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe2300;
    wire [63:0] conv2d1x1_B5_branch_out_c0_exe23671;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe24;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe3301;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe33682;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe4302;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe43693;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe5303;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe6304;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe63714;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe7305;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe73725;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe8306;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe83736;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe9307;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe93747;
    wire [0:0] conv2d1x1_B5_branch_out_stall_out;
    wire [0:0] conv2d1x1_B5_branch_out_valid_out_0;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe103758;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe113769;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe1237710;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe1337811;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe1437912;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe1538013;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe1638114;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe1738215;
    wire [32:0] conv2d1x1_B5_merge_out_c0_exe1838316;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe1938417;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe2038518;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe2138619;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe2238720;
    wire [63:0] conv2d1x1_B5_merge_out_c0_exe23671;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe33682;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe43693;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe63714;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe73725;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe83736;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe93747;
    wire [0:0] conv2d1x1_B5_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B5_merge_out_valid_out;


    // conv2d1x1_B5_merge(BLACKBOX,4)
    conv2d1x1_B5_merge theconv2d1x1_B5_merge (
        .in_c0_exe103758_0(in_c0_exe103758_0),
        .in_c0_exe113769_0(in_c0_exe113769_0),
        .in_c0_exe1237710_0(in_c0_exe1237710_0),
        .in_c0_exe1337811_0(in_c0_exe1337811_0),
        .in_c0_exe1437912_0(in_c0_exe1437912_0),
        .in_c0_exe1538013_0(in_c0_exe1538013_0),
        .in_c0_exe1638114_0(in_c0_exe1638114_0),
        .in_c0_exe1738215_0(in_c0_exe1738215_0),
        .in_c0_exe1838316_0(in_c0_exe1838316_0),
        .in_c0_exe1938417_0(in_c0_exe1938417_0),
        .in_c0_exe2038518_0(in_c0_exe2038518_0),
        .in_c0_exe2138619_0(in_c0_exe2138619_0),
        .in_c0_exe2238720_0(in_c0_exe2238720_0),
        .in_c0_exe23671_0(in_c0_exe23671_0),
        .in_c0_exe33682_0(in_c0_exe33682_0),
        .in_c0_exe43693_0(in_c0_exe43693_0),
        .in_c0_exe63714_0(in_c0_exe63714_0),
        .in_c0_exe73725_0(in_c0_exe73725_0),
        .in_c0_exe83736_0(in_c0_exe83736_0),
        .in_c0_exe93747_0(in_c0_exe93747_0),
        .in_stall_in(bb_conv2d1x1_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe103758(conv2d1x1_B5_merge_out_c0_exe103758),
        .out_c0_exe113769(conv2d1x1_B5_merge_out_c0_exe113769),
        .out_c0_exe1237710(conv2d1x1_B5_merge_out_c0_exe1237710),
        .out_c0_exe1337811(conv2d1x1_B5_merge_out_c0_exe1337811),
        .out_c0_exe1437912(conv2d1x1_B5_merge_out_c0_exe1437912),
        .out_c0_exe1538013(conv2d1x1_B5_merge_out_c0_exe1538013),
        .out_c0_exe1638114(conv2d1x1_B5_merge_out_c0_exe1638114),
        .out_c0_exe1738215(conv2d1x1_B5_merge_out_c0_exe1738215),
        .out_c0_exe1838316(conv2d1x1_B5_merge_out_c0_exe1838316),
        .out_c0_exe1938417(conv2d1x1_B5_merge_out_c0_exe1938417),
        .out_c0_exe2038518(conv2d1x1_B5_merge_out_c0_exe2038518),
        .out_c0_exe2138619(conv2d1x1_B5_merge_out_c0_exe2138619),
        .out_c0_exe2238720(conv2d1x1_B5_merge_out_c0_exe2238720),
        .out_c0_exe23671(conv2d1x1_B5_merge_out_c0_exe23671),
        .out_c0_exe33682(conv2d1x1_B5_merge_out_c0_exe33682),
        .out_c0_exe43693(conv2d1x1_B5_merge_out_c0_exe43693),
        .out_c0_exe63714(conv2d1x1_B5_merge_out_c0_exe63714),
        .out_c0_exe73725(conv2d1x1_B5_merge_out_c0_exe73725),
        .out_c0_exe83736(conv2d1x1_B5_merge_out_c0_exe83736),
        .out_c0_exe93747(conv2d1x1_B5_merge_out_c0_exe93747),
        .out_stall_out_0(conv2d1x1_B5_merge_out_stall_out_0),
        .out_valid_out(conv2d1x1_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B5_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B5_stall_region thebb_conv2d1x1_B5_stall_region (
        .in_c0_exe103758(conv2d1x1_B5_merge_out_c0_exe103758),
        .in_c0_exe113769(conv2d1x1_B5_merge_out_c0_exe113769),
        .in_c0_exe1237710(conv2d1x1_B5_merge_out_c0_exe1237710),
        .in_c0_exe1337811(conv2d1x1_B5_merge_out_c0_exe1337811),
        .in_c0_exe1437912(conv2d1x1_B5_merge_out_c0_exe1437912),
        .in_c0_exe1538013(conv2d1x1_B5_merge_out_c0_exe1538013),
        .in_c0_exe1638114(conv2d1x1_B5_merge_out_c0_exe1638114),
        .in_c0_exe1738215(conv2d1x1_B5_merge_out_c0_exe1738215),
        .in_c0_exe1838316(conv2d1x1_B5_merge_out_c0_exe1838316),
        .in_c0_exe1938417(conv2d1x1_B5_merge_out_c0_exe1938417),
        .in_c0_exe2038518(conv2d1x1_B5_merge_out_c0_exe2038518),
        .in_c0_exe2138619(conv2d1x1_B5_merge_out_c0_exe2138619),
        .in_c0_exe2238720(conv2d1x1_B5_merge_out_c0_exe2238720),
        .in_c0_exe23671(conv2d1x1_B5_merge_out_c0_exe23671),
        .in_c0_exe33682(conv2d1x1_B5_merge_out_c0_exe33682),
        .in_c0_exe43693(conv2d1x1_B5_merge_out_c0_exe43693),
        .in_c0_exe63714(conv2d1x1_B5_merge_out_c0_exe63714),
        .in_c0_exe73725(conv2d1x1_B5_merge_out_c0_exe73725),
        .in_c0_exe83736(conv2d1x1_B5_merge_out_c0_exe83736),
        .in_c0_exe93747(conv2d1x1_B5_merge_out_c0_exe93747),
        .in_flush(in_flush),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack),
        .in_stall_in(conv2d1x1_B5_branch_out_stall_out),
        .in_valid_in(conv2d1x1_B5_merge_out_valid_out),
        .out_c0_exe10308(bb_conv2d1x1_B5_stall_region_out_c0_exe10308),
        .out_c0_exe103758(bb_conv2d1x1_B5_stall_region_out_c0_exe103758),
        .out_c0_exe11309(bb_conv2d1x1_B5_stall_region_out_c0_exe11309),
        .out_c0_exe113769(bb_conv2d1x1_B5_stall_region_out_c0_exe113769),
        .out_c0_exe12310(bb_conv2d1x1_B5_stall_region_out_c0_exe12310),
        .out_c0_exe1237710(bb_conv2d1x1_B5_stall_region_out_c0_exe1237710),
        .out_c0_exe1299(bb_conv2d1x1_B5_stall_region_out_c0_exe1299),
        .out_c0_exe13311(bb_conv2d1x1_B5_stall_region_out_c0_exe13311),
        .out_c0_exe1337811(bb_conv2d1x1_B5_stall_region_out_c0_exe1337811),
        .out_c0_exe14312(bb_conv2d1x1_B5_stall_region_out_c0_exe14312),
        .out_c0_exe1437912(bb_conv2d1x1_B5_stall_region_out_c0_exe1437912),
        .out_c0_exe15313(bb_conv2d1x1_B5_stall_region_out_c0_exe15313),
        .out_c0_exe1538013(bb_conv2d1x1_B5_stall_region_out_c0_exe1538013),
        .out_c0_exe16314(bb_conv2d1x1_B5_stall_region_out_c0_exe16314),
        .out_c0_exe1638114(bb_conv2d1x1_B5_stall_region_out_c0_exe1638114),
        .out_c0_exe17315(bb_conv2d1x1_B5_stall_region_out_c0_exe17315),
        .out_c0_exe1738215(bb_conv2d1x1_B5_stall_region_out_c0_exe1738215),
        .out_c0_exe18316(bb_conv2d1x1_B5_stall_region_out_c0_exe18316),
        .out_c0_exe1838316(bb_conv2d1x1_B5_stall_region_out_c0_exe1838316),
        .out_c0_exe19317(bb_conv2d1x1_B5_stall_region_out_c0_exe19317),
        .out_c0_exe1938417(bb_conv2d1x1_B5_stall_region_out_c0_exe1938417),
        .out_c0_exe20318(bb_conv2d1x1_B5_stall_region_out_c0_exe20318),
        .out_c0_exe2038518(bb_conv2d1x1_B5_stall_region_out_c0_exe2038518),
        .out_c0_exe21(bb_conv2d1x1_B5_stall_region_out_c0_exe21),
        .out_c0_exe2138619(bb_conv2d1x1_B5_stall_region_out_c0_exe2138619),
        .out_c0_exe22(bb_conv2d1x1_B5_stall_region_out_c0_exe22),
        .out_c0_exe2238720(bb_conv2d1x1_B5_stall_region_out_c0_exe2238720),
        .out_c0_exe23(bb_conv2d1x1_B5_stall_region_out_c0_exe23),
        .out_c0_exe2300(bb_conv2d1x1_B5_stall_region_out_c0_exe2300),
        .out_c0_exe23671(bb_conv2d1x1_B5_stall_region_out_c0_exe23671),
        .out_c0_exe24(bb_conv2d1x1_B5_stall_region_out_c0_exe24),
        .out_c0_exe3301(bb_conv2d1x1_B5_stall_region_out_c0_exe3301),
        .out_c0_exe33682(bb_conv2d1x1_B5_stall_region_out_c0_exe33682),
        .out_c0_exe4302(bb_conv2d1x1_B5_stall_region_out_c0_exe4302),
        .out_c0_exe43693(bb_conv2d1x1_B5_stall_region_out_c0_exe43693),
        .out_c0_exe5303(bb_conv2d1x1_B5_stall_region_out_c0_exe5303),
        .out_c0_exe6304(bb_conv2d1x1_B5_stall_region_out_c0_exe6304),
        .out_c0_exe63714(bb_conv2d1x1_B5_stall_region_out_c0_exe63714),
        .out_c0_exe7305(bb_conv2d1x1_B5_stall_region_out_c0_exe7305),
        .out_c0_exe73725(bb_conv2d1x1_B5_stall_region_out_c0_exe73725),
        .out_c0_exe8306(bb_conv2d1x1_B5_stall_region_out_c0_exe8306),
        .out_c0_exe83736(bb_conv2d1x1_B5_stall_region_out_c0_exe83736),
        .out_c0_exe9307(bb_conv2d1x1_B5_stall_region_out_c0_exe9307),
        .out_c0_exe93747(bb_conv2d1x1_B5_stall_region_out_c0_exe93747),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata),
        .out_stall_out(bb_conv2d1x1_B5_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B5_branch(BLACKBOX,3)
    conv2d1x1_B5_branch theconv2d1x1_B5_branch (
        .in_c0_exe10308(bb_conv2d1x1_B5_stall_region_out_c0_exe10308),
        .in_c0_exe103758(bb_conv2d1x1_B5_stall_region_out_c0_exe103758),
        .in_c0_exe11309(bb_conv2d1x1_B5_stall_region_out_c0_exe11309),
        .in_c0_exe113769(bb_conv2d1x1_B5_stall_region_out_c0_exe113769),
        .in_c0_exe12310(bb_conv2d1x1_B5_stall_region_out_c0_exe12310),
        .in_c0_exe1237710(bb_conv2d1x1_B5_stall_region_out_c0_exe1237710),
        .in_c0_exe1299(bb_conv2d1x1_B5_stall_region_out_c0_exe1299),
        .in_c0_exe13311(bb_conv2d1x1_B5_stall_region_out_c0_exe13311),
        .in_c0_exe1337811(bb_conv2d1x1_B5_stall_region_out_c0_exe1337811),
        .in_c0_exe14312(bb_conv2d1x1_B5_stall_region_out_c0_exe14312),
        .in_c0_exe1437912(bb_conv2d1x1_B5_stall_region_out_c0_exe1437912),
        .in_c0_exe15313(bb_conv2d1x1_B5_stall_region_out_c0_exe15313),
        .in_c0_exe1538013(bb_conv2d1x1_B5_stall_region_out_c0_exe1538013),
        .in_c0_exe16314(bb_conv2d1x1_B5_stall_region_out_c0_exe16314),
        .in_c0_exe1638114(bb_conv2d1x1_B5_stall_region_out_c0_exe1638114),
        .in_c0_exe17315(bb_conv2d1x1_B5_stall_region_out_c0_exe17315),
        .in_c0_exe1738215(bb_conv2d1x1_B5_stall_region_out_c0_exe1738215),
        .in_c0_exe18316(bb_conv2d1x1_B5_stall_region_out_c0_exe18316),
        .in_c0_exe1838316(bb_conv2d1x1_B5_stall_region_out_c0_exe1838316),
        .in_c0_exe19317(bb_conv2d1x1_B5_stall_region_out_c0_exe19317),
        .in_c0_exe1938417(bb_conv2d1x1_B5_stall_region_out_c0_exe1938417),
        .in_c0_exe20318(bb_conv2d1x1_B5_stall_region_out_c0_exe20318),
        .in_c0_exe2038518(bb_conv2d1x1_B5_stall_region_out_c0_exe2038518),
        .in_c0_exe21(bb_conv2d1x1_B5_stall_region_out_c0_exe21),
        .in_c0_exe2138619(bb_conv2d1x1_B5_stall_region_out_c0_exe2138619),
        .in_c0_exe22(bb_conv2d1x1_B5_stall_region_out_c0_exe22),
        .in_c0_exe2238720(bb_conv2d1x1_B5_stall_region_out_c0_exe2238720),
        .in_c0_exe23(bb_conv2d1x1_B5_stall_region_out_c0_exe23),
        .in_c0_exe2300(bb_conv2d1x1_B5_stall_region_out_c0_exe2300),
        .in_c0_exe23671(bb_conv2d1x1_B5_stall_region_out_c0_exe23671),
        .in_c0_exe24(bb_conv2d1x1_B5_stall_region_out_c0_exe24),
        .in_c0_exe3301(bb_conv2d1x1_B5_stall_region_out_c0_exe3301),
        .in_c0_exe33682(bb_conv2d1x1_B5_stall_region_out_c0_exe33682),
        .in_c0_exe4302(bb_conv2d1x1_B5_stall_region_out_c0_exe4302),
        .in_c0_exe43693(bb_conv2d1x1_B5_stall_region_out_c0_exe43693),
        .in_c0_exe5303(bb_conv2d1x1_B5_stall_region_out_c0_exe5303),
        .in_c0_exe6304(bb_conv2d1x1_B5_stall_region_out_c0_exe6304),
        .in_c0_exe63714(bb_conv2d1x1_B5_stall_region_out_c0_exe63714),
        .in_c0_exe7305(bb_conv2d1x1_B5_stall_region_out_c0_exe7305),
        .in_c0_exe73725(bb_conv2d1x1_B5_stall_region_out_c0_exe73725),
        .in_c0_exe8306(bb_conv2d1x1_B5_stall_region_out_c0_exe8306),
        .in_c0_exe83736(bb_conv2d1x1_B5_stall_region_out_c0_exe83736),
        .in_c0_exe9307(bb_conv2d1x1_B5_stall_region_out_c0_exe9307),
        .in_c0_exe93747(bb_conv2d1x1_B5_stall_region_out_c0_exe93747),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d1x1_B5_stall_region_out_valid_out),
        .out_c0_exe10308(conv2d1x1_B5_branch_out_c0_exe10308),
        .out_c0_exe103758(conv2d1x1_B5_branch_out_c0_exe103758),
        .out_c0_exe11309(conv2d1x1_B5_branch_out_c0_exe11309),
        .out_c0_exe113769(conv2d1x1_B5_branch_out_c0_exe113769),
        .out_c0_exe12310(conv2d1x1_B5_branch_out_c0_exe12310),
        .out_c0_exe1237710(conv2d1x1_B5_branch_out_c0_exe1237710),
        .out_c0_exe1299(conv2d1x1_B5_branch_out_c0_exe1299),
        .out_c0_exe13311(conv2d1x1_B5_branch_out_c0_exe13311),
        .out_c0_exe1337811(conv2d1x1_B5_branch_out_c0_exe1337811),
        .out_c0_exe14312(conv2d1x1_B5_branch_out_c0_exe14312),
        .out_c0_exe1437912(conv2d1x1_B5_branch_out_c0_exe1437912),
        .out_c0_exe15313(conv2d1x1_B5_branch_out_c0_exe15313),
        .out_c0_exe1538013(conv2d1x1_B5_branch_out_c0_exe1538013),
        .out_c0_exe16314(conv2d1x1_B5_branch_out_c0_exe16314),
        .out_c0_exe1638114(conv2d1x1_B5_branch_out_c0_exe1638114),
        .out_c0_exe17315(conv2d1x1_B5_branch_out_c0_exe17315),
        .out_c0_exe1738215(conv2d1x1_B5_branch_out_c0_exe1738215),
        .out_c0_exe18316(conv2d1x1_B5_branch_out_c0_exe18316),
        .out_c0_exe1838316(conv2d1x1_B5_branch_out_c0_exe1838316),
        .out_c0_exe19317(conv2d1x1_B5_branch_out_c0_exe19317),
        .out_c0_exe1938417(conv2d1x1_B5_branch_out_c0_exe1938417),
        .out_c0_exe20318(conv2d1x1_B5_branch_out_c0_exe20318),
        .out_c0_exe2038518(conv2d1x1_B5_branch_out_c0_exe2038518),
        .out_c0_exe21(conv2d1x1_B5_branch_out_c0_exe21),
        .out_c0_exe2138619(conv2d1x1_B5_branch_out_c0_exe2138619),
        .out_c0_exe22(conv2d1x1_B5_branch_out_c0_exe22),
        .out_c0_exe2238720(conv2d1x1_B5_branch_out_c0_exe2238720),
        .out_c0_exe23(conv2d1x1_B5_branch_out_c0_exe23),
        .out_c0_exe2300(conv2d1x1_B5_branch_out_c0_exe2300),
        .out_c0_exe23671(conv2d1x1_B5_branch_out_c0_exe23671),
        .out_c0_exe24(conv2d1x1_B5_branch_out_c0_exe24),
        .out_c0_exe3301(conv2d1x1_B5_branch_out_c0_exe3301),
        .out_c0_exe33682(conv2d1x1_B5_branch_out_c0_exe33682),
        .out_c0_exe4302(conv2d1x1_B5_branch_out_c0_exe4302),
        .out_c0_exe43693(conv2d1x1_B5_branch_out_c0_exe43693),
        .out_c0_exe5303(conv2d1x1_B5_branch_out_c0_exe5303),
        .out_c0_exe6304(conv2d1x1_B5_branch_out_c0_exe6304),
        .out_c0_exe63714(conv2d1x1_B5_branch_out_c0_exe63714),
        .out_c0_exe7305(conv2d1x1_B5_branch_out_c0_exe7305),
        .out_c0_exe73725(conv2d1x1_B5_branch_out_c0_exe73725),
        .out_c0_exe8306(conv2d1x1_B5_branch_out_c0_exe8306),
        .out_c0_exe83736(conv2d1x1_B5_branch_out_c0_exe83736),
        .out_c0_exe9307(conv2d1x1_B5_branch_out_c0_exe9307),
        .out_c0_exe93747(conv2d1x1_B5_branch_out_c0_exe93747),
        .out_stall_out(conv2d1x1_B5_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10308(GPOUT,37)
    assign out_c0_exe10308 = conv2d1x1_B5_branch_out_c0_exe10308;

    // out_c0_exe103758(GPOUT,38)
    assign out_c0_exe103758 = conv2d1x1_B5_branch_out_c0_exe103758;

    // out_c0_exe11309(GPOUT,39)
    assign out_c0_exe11309 = conv2d1x1_B5_branch_out_c0_exe11309;

    // out_c0_exe113769(GPOUT,40)
    assign out_c0_exe113769 = conv2d1x1_B5_branch_out_c0_exe113769;

    // out_c0_exe12310(GPOUT,41)
    assign out_c0_exe12310 = conv2d1x1_B5_branch_out_c0_exe12310;

    // out_c0_exe1237710(GPOUT,42)
    assign out_c0_exe1237710 = conv2d1x1_B5_branch_out_c0_exe1237710;

    // out_c0_exe1299(GPOUT,43)
    assign out_c0_exe1299 = conv2d1x1_B5_branch_out_c0_exe1299;

    // out_c0_exe13311(GPOUT,44)
    assign out_c0_exe13311 = conv2d1x1_B5_branch_out_c0_exe13311;

    // out_c0_exe1337811(GPOUT,45)
    assign out_c0_exe1337811 = conv2d1x1_B5_branch_out_c0_exe1337811;

    // out_c0_exe14312(GPOUT,46)
    assign out_c0_exe14312 = conv2d1x1_B5_branch_out_c0_exe14312;

    // out_c0_exe1437912(GPOUT,47)
    assign out_c0_exe1437912 = conv2d1x1_B5_branch_out_c0_exe1437912;

    // out_c0_exe15313(GPOUT,48)
    assign out_c0_exe15313 = conv2d1x1_B5_branch_out_c0_exe15313;

    // out_c0_exe1538013(GPOUT,49)
    assign out_c0_exe1538013 = conv2d1x1_B5_branch_out_c0_exe1538013;

    // out_c0_exe16314(GPOUT,50)
    assign out_c0_exe16314 = conv2d1x1_B5_branch_out_c0_exe16314;

    // out_c0_exe1638114(GPOUT,51)
    assign out_c0_exe1638114 = conv2d1x1_B5_branch_out_c0_exe1638114;

    // out_c0_exe17315(GPOUT,52)
    assign out_c0_exe17315 = conv2d1x1_B5_branch_out_c0_exe17315;

    // out_c0_exe1738215(GPOUT,53)
    assign out_c0_exe1738215 = conv2d1x1_B5_branch_out_c0_exe1738215;

    // out_c0_exe18316(GPOUT,54)
    assign out_c0_exe18316 = conv2d1x1_B5_branch_out_c0_exe18316;

    // out_c0_exe1838316(GPOUT,55)
    assign out_c0_exe1838316 = conv2d1x1_B5_branch_out_c0_exe1838316;

    // out_c0_exe19317(GPOUT,56)
    assign out_c0_exe19317 = conv2d1x1_B5_branch_out_c0_exe19317;

    // out_c0_exe1938417(GPOUT,57)
    assign out_c0_exe1938417 = conv2d1x1_B5_branch_out_c0_exe1938417;

    // out_c0_exe20318(GPOUT,58)
    assign out_c0_exe20318 = conv2d1x1_B5_branch_out_c0_exe20318;

    // out_c0_exe2038518(GPOUT,59)
    assign out_c0_exe2038518 = conv2d1x1_B5_branch_out_c0_exe2038518;

    // out_c0_exe21(GPOUT,60)
    assign out_c0_exe21 = conv2d1x1_B5_branch_out_c0_exe21;

    // out_c0_exe2138619(GPOUT,61)
    assign out_c0_exe2138619 = conv2d1x1_B5_branch_out_c0_exe2138619;

    // out_c0_exe22(GPOUT,62)
    assign out_c0_exe22 = conv2d1x1_B5_branch_out_c0_exe22;

    // out_c0_exe2238720(GPOUT,63)
    assign out_c0_exe2238720 = conv2d1x1_B5_branch_out_c0_exe2238720;

    // out_c0_exe23(GPOUT,64)
    assign out_c0_exe23 = conv2d1x1_B5_branch_out_c0_exe23;

    // out_c0_exe2300(GPOUT,65)
    assign out_c0_exe2300 = conv2d1x1_B5_branch_out_c0_exe2300;

    // out_c0_exe23671(GPOUT,66)
    assign out_c0_exe23671 = conv2d1x1_B5_branch_out_c0_exe23671;

    // out_c0_exe24(GPOUT,67)
    assign out_c0_exe24 = conv2d1x1_B5_branch_out_c0_exe24;

    // out_c0_exe3301(GPOUT,68)
    assign out_c0_exe3301 = conv2d1x1_B5_branch_out_c0_exe3301;

    // out_c0_exe33682(GPOUT,69)
    assign out_c0_exe33682 = conv2d1x1_B5_branch_out_c0_exe33682;

    // out_c0_exe4302(GPOUT,70)
    assign out_c0_exe4302 = conv2d1x1_B5_branch_out_c0_exe4302;

    // out_c0_exe43693(GPOUT,71)
    assign out_c0_exe43693 = conv2d1x1_B5_branch_out_c0_exe43693;

    // out_c0_exe5303(GPOUT,72)
    assign out_c0_exe5303 = conv2d1x1_B5_branch_out_c0_exe5303;

    // out_c0_exe6304(GPOUT,73)
    assign out_c0_exe6304 = conv2d1x1_B5_branch_out_c0_exe6304;

    // out_c0_exe63714(GPOUT,74)
    assign out_c0_exe63714 = conv2d1x1_B5_branch_out_c0_exe63714;

    // out_c0_exe7305(GPOUT,75)
    assign out_c0_exe7305 = conv2d1x1_B5_branch_out_c0_exe7305;

    // out_c0_exe73725(GPOUT,76)
    assign out_c0_exe73725 = conv2d1x1_B5_branch_out_c0_exe73725;

    // out_c0_exe8306(GPOUT,77)
    assign out_c0_exe8306 = conv2d1x1_B5_branch_out_c0_exe8306;

    // out_c0_exe83736(GPOUT,78)
    assign out_c0_exe83736 = conv2d1x1_B5_branch_out_c0_exe83736;

    // out_c0_exe9307(GPOUT,79)
    assign out_c0_exe9307 = conv2d1x1_B5_branch_out_c0_exe9307;

    // out_c0_exe93747(GPOUT,80)
    assign out_c0_exe93747 = conv2d1x1_B5_branch_out_c0_exe93747;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address(GPOUT,81)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount(GPOUT,82)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable(GPOUT,83)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable(GPOUT,84)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read(GPOUT,85)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write(GPOUT,86)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata(GPOUT,87)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata;

    // out_stall_out_0(GPOUT,88)
    assign out_stall_out_0 = conv2d1x1_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,89)
    assign out_valid_out_0 = conv2d1x1_B5_branch_out_valid_out_0;

endmodule
