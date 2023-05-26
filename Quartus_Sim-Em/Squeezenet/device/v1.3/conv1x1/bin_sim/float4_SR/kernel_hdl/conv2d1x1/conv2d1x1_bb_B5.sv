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
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B5 (
    input wire [31:0] in_c0_exe103218_0,
    input wire [0:0] in_c0_exe113229_0,
    input wire [0:0] in_c0_exe1232310_0,
    input wire [31:0] in_c0_exe1332411_0,
    input wire [31:0] in_c0_exe1432512_0,
    input wire [0:0] in_c0_exe1532613_0,
    input wire [0:0] in_c0_exe1632714_0,
    input wire [0:0] in_c0_exe1732815_0,
    input wire [32:0] in_c0_exe1832916_0,
    input wire [31:0] in_c0_exe1933017_0,
    input wire [31:0] in_c0_exe2033118_0,
    input wire [31:0] in_c0_exe2119_0,
    input wire [0:0] in_c0_exe2220_0,
    input wire [63:0] in_c0_exe23131_0,
    input wire [0:0] in_c0_exe33142_0,
    input wire [0:0] in_c0_exe43153_0,
    input wire [31:0] in_c0_exe63174_0,
    input wire [0:0] in_c0_exe73185_0,
    input wire [31:0] in_c0_exe83196_0,
    input wire [31:0] in_c0_exe93207_0,
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [511:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writeack,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe10260,
    output wire [31:0] out_c0_exe103218,
    output wire [31:0] out_c0_exe11261,
    output wire [0:0] out_c0_exe113229,
    output wire [31:0] out_c0_exe12262,
    output wire [0:0] out_c0_exe1232310,
    output wire [31:0] out_c0_exe1251,
    output wire [31:0] out_c0_exe13263,
    output wire [31:0] out_c0_exe1332411,
    output wire [31:0] out_c0_exe14264,
    output wire [31:0] out_c0_exe1432512,
    output wire [31:0] out_c0_exe15265,
    output wire [0:0] out_c0_exe1532613,
    output wire [31:0] out_c0_exe16266,
    output wire [0:0] out_c0_exe1632714,
    output wire [0:0] out_c0_exe1732815,
    output wire [32:0] out_c0_exe1832916,
    output wire [31:0] out_c0_exe1933017,
    output wire [31:0] out_c0_exe2033118,
    output wire [31:0] out_c0_exe2119,
    output wire [0:0] out_c0_exe2220,
    output wire [31:0] out_c0_exe2252,
    output wire [63:0] out_c0_exe23131,
    output wire [31:0] out_c0_exe3253,
    output wire [0:0] out_c0_exe33142,
    output wire [31:0] out_c0_exe4254,
    output wire [0:0] out_c0_exe43153,
    output wire [31:0] out_c0_exe5255,
    output wire [31:0] out_c0_exe6256,
    output wire [31:0] out_c0_exe63174,
    output wire [31:0] out_c0_exe7257,
    output wire [0:0] out_c0_exe73185,
    output wire [31:0] out_c0_exe8258,
    output wire [31:0] out_c0_exe83196,
    output wire [31:0] out_c0_exe9259,
    output wire [31:0] out_c0_exe93207,
    output wire [31:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount,
    output wire [63:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write,
    output wire [511:0] out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe10260;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe103218;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe11261;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe113229;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe12262;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1232310;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1251;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe13263;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1332411;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe14264;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1432512;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe15265;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1532613;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe16266;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1632714;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1732815;
    wire [32:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1832916;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe1933017;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe2033118;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe2119;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe2220;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe2252;
    wire [63:0] bb_conv2d1x1_B5_stall_region_out_c0_exe23131;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe3253;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe33142;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe4254;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe43153;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe5255;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe6256;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe63174;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe7257;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_c0_exe73185;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe8258;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe83196;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe9259;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_c0_exe93207;
    wire [31:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_stall_out;
    wire [0:0] bb_conv2d1x1_B5_stall_region_out_valid_out;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe10260;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe103218;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe11261;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe113229;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe12262;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe1232310;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe1251;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe13263;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe1332411;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe14264;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe1432512;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe15265;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe1532613;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe16266;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe1632714;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe1732815;
    wire [32:0] conv2d1x1_B5_branch_out_c0_exe1832916;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe1933017;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe2033118;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe2119;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe2220;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe2252;
    wire [63:0] conv2d1x1_B5_branch_out_c0_exe23131;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe3253;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe33142;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe4254;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe43153;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe5255;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe6256;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe63174;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe7257;
    wire [0:0] conv2d1x1_B5_branch_out_c0_exe73185;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe8258;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe83196;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe9259;
    wire [31:0] conv2d1x1_B5_branch_out_c0_exe93207;
    wire [0:0] conv2d1x1_B5_branch_out_stall_out;
    wire [0:0] conv2d1x1_B5_branch_out_valid_out_0;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe103218;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe113229;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe1232310;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe1332411;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe1432512;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe1532613;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe1632714;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe1732815;
    wire [32:0] conv2d1x1_B5_merge_out_c0_exe1832916;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe1933017;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe2033118;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe2119;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe2220;
    wire [63:0] conv2d1x1_B5_merge_out_c0_exe23131;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe33142;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe43153;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe63174;
    wire [0:0] conv2d1x1_B5_merge_out_c0_exe73185;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe83196;
    wire [31:0] conv2d1x1_B5_merge_out_c0_exe93207;
    wire [0:0] conv2d1x1_B5_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B5_merge_out_valid_out;


    // conv2d1x1_B5_merge(BLACKBOX,4)
    conv2d1x1_B5_merge theconv2d1x1_B5_merge (
        .in_c0_exe103218_0(in_c0_exe103218_0),
        .in_c0_exe113229_0(in_c0_exe113229_0),
        .in_c0_exe1232310_0(in_c0_exe1232310_0),
        .in_c0_exe1332411_0(in_c0_exe1332411_0),
        .in_c0_exe1432512_0(in_c0_exe1432512_0),
        .in_c0_exe1532613_0(in_c0_exe1532613_0),
        .in_c0_exe1632714_0(in_c0_exe1632714_0),
        .in_c0_exe1732815_0(in_c0_exe1732815_0),
        .in_c0_exe1832916_0(in_c0_exe1832916_0),
        .in_c0_exe1933017_0(in_c0_exe1933017_0),
        .in_c0_exe2033118_0(in_c0_exe2033118_0),
        .in_c0_exe2119_0(in_c0_exe2119_0),
        .in_c0_exe2220_0(in_c0_exe2220_0),
        .in_c0_exe23131_0(in_c0_exe23131_0),
        .in_c0_exe33142_0(in_c0_exe33142_0),
        .in_c0_exe43153_0(in_c0_exe43153_0),
        .in_c0_exe63174_0(in_c0_exe63174_0),
        .in_c0_exe73185_0(in_c0_exe73185_0),
        .in_c0_exe83196_0(in_c0_exe83196_0),
        .in_c0_exe93207_0(in_c0_exe93207_0),
        .in_stall_in(bb_conv2d1x1_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe103218(conv2d1x1_B5_merge_out_c0_exe103218),
        .out_c0_exe113229(conv2d1x1_B5_merge_out_c0_exe113229),
        .out_c0_exe1232310(conv2d1x1_B5_merge_out_c0_exe1232310),
        .out_c0_exe1332411(conv2d1x1_B5_merge_out_c0_exe1332411),
        .out_c0_exe1432512(conv2d1x1_B5_merge_out_c0_exe1432512),
        .out_c0_exe1532613(conv2d1x1_B5_merge_out_c0_exe1532613),
        .out_c0_exe1632714(conv2d1x1_B5_merge_out_c0_exe1632714),
        .out_c0_exe1732815(conv2d1x1_B5_merge_out_c0_exe1732815),
        .out_c0_exe1832916(conv2d1x1_B5_merge_out_c0_exe1832916),
        .out_c0_exe1933017(conv2d1x1_B5_merge_out_c0_exe1933017),
        .out_c0_exe2033118(conv2d1x1_B5_merge_out_c0_exe2033118),
        .out_c0_exe2119(conv2d1x1_B5_merge_out_c0_exe2119),
        .out_c0_exe2220(conv2d1x1_B5_merge_out_c0_exe2220),
        .out_c0_exe23131(conv2d1x1_B5_merge_out_c0_exe23131),
        .out_c0_exe33142(conv2d1x1_B5_merge_out_c0_exe33142),
        .out_c0_exe43153(conv2d1x1_B5_merge_out_c0_exe43153),
        .out_c0_exe63174(conv2d1x1_B5_merge_out_c0_exe63174),
        .out_c0_exe73185(conv2d1x1_B5_merge_out_c0_exe73185),
        .out_c0_exe83196(conv2d1x1_B5_merge_out_c0_exe83196),
        .out_c0_exe93207(conv2d1x1_B5_merge_out_c0_exe93207),
        .out_stall_out_0(conv2d1x1_B5_merge_out_stall_out_0),
        .out_valid_out(conv2d1x1_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B5_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B5_stall_region thebb_conv2d1x1_B5_stall_region (
        .in_c0_exe103218(conv2d1x1_B5_merge_out_c0_exe103218),
        .in_c0_exe113229(conv2d1x1_B5_merge_out_c0_exe113229),
        .in_c0_exe1232310(conv2d1x1_B5_merge_out_c0_exe1232310),
        .in_c0_exe1332411(conv2d1x1_B5_merge_out_c0_exe1332411),
        .in_c0_exe1432512(conv2d1x1_B5_merge_out_c0_exe1432512),
        .in_c0_exe1532613(conv2d1x1_B5_merge_out_c0_exe1532613),
        .in_c0_exe1632714(conv2d1x1_B5_merge_out_c0_exe1632714),
        .in_c0_exe1732815(conv2d1x1_B5_merge_out_c0_exe1732815),
        .in_c0_exe1832916(conv2d1x1_B5_merge_out_c0_exe1832916),
        .in_c0_exe1933017(conv2d1x1_B5_merge_out_c0_exe1933017),
        .in_c0_exe2033118(conv2d1x1_B5_merge_out_c0_exe2033118),
        .in_c0_exe2119(conv2d1x1_B5_merge_out_c0_exe2119),
        .in_c0_exe2220(conv2d1x1_B5_merge_out_c0_exe2220),
        .in_c0_exe23131(conv2d1x1_B5_merge_out_c0_exe23131),
        .in_c0_exe33142(conv2d1x1_B5_merge_out_c0_exe33142),
        .in_c0_exe43153(conv2d1x1_B5_merge_out_c0_exe43153),
        .in_c0_exe63174(conv2d1x1_B5_merge_out_c0_exe63174),
        .in_c0_exe73185(conv2d1x1_B5_merge_out_c0_exe73185),
        .in_c0_exe83196(conv2d1x1_B5_merge_out_c0_exe83196),
        .in_c0_exe93207(conv2d1x1_B5_merge_out_c0_exe93207),
        .in_flush(in_flush),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdata),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdatavalid(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_readdatavalid),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_waitrequest(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_waitrequest),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writeack(in_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writeack),
        .in_stall_in(conv2d1x1_B5_branch_out_stall_out),
        .in_valid_in(conv2d1x1_B5_merge_out_valid_out),
        .out_c0_exe10260(bb_conv2d1x1_B5_stall_region_out_c0_exe10260),
        .out_c0_exe103218(bb_conv2d1x1_B5_stall_region_out_c0_exe103218),
        .out_c0_exe11261(bb_conv2d1x1_B5_stall_region_out_c0_exe11261),
        .out_c0_exe113229(bb_conv2d1x1_B5_stall_region_out_c0_exe113229),
        .out_c0_exe12262(bb_conv2d1x1_B5_stall_region_out_c0_exe12262),
        .out_c0_exe1232310(bb_conv2d1x1_B5_stall_region_out_c0_exe1232310),
        .out_c0_exe1251(bb_conv2d1x1_B5_stall_region_out_c0_exe1251),
        .out_c0_exe13263(bb_conv2d1x1_B5_stall_region_out_c0_exe13263),
        .out_c0_exe1332411(bb_conv2d1x1_B5_stall_region_out_c0_exe1332411),
        .out_c0_exe14264(bb_conv2d1x1_B5_stall_region_out_c0_exe14264),
        .out_c0_exe1432512(bb_conv2d1x1_B5_stall_region_out_c0_exe1432512),
        .out_c0_exe15265(bb_conv2d1x1_B5_stall_region_out_c0_exe15265),
        .out_c0_exe1532613(bb_conv2d1x1_B5_stall_region_out_c0_exe1532613),
        .out_c0_exe16266(bb_conv2d1x1_B5_stall_region_out_c0_exe16266),
        .out_c0_exe1632714(bb_conv2d1x1_B5_stall_region_out_c0_exe1632714),
        .out_c0_exe1732815(bb_conv2d1x1_B5_stall_region_out_c0_exe1732815),
        .out_c0_exe1832916(bb_conv2d1x1_B5_stall_region_out_c0_exe1832916),
        .out_c0_exe1933017(bb_conv2d1x1_B5_stall_region_out_c0_exe1933017),
        .out_c0_exe2033118(bb_conv2d1x1_B5_stall_region_out_c0_exe2033118),
        .out_c0_exe2119(bb_conv2d1x1_B5_stall_region_out_c0_exe2119),
        .out_c0_exe2220(bb_conv2d1x1_B5_stall_region_out_c0_exe2220),
        .out_c0_exe2252(bb_conv2d1x1_B5_stall_region_out_c0_exe2252),
        .out_c0_exe23131(bb_conv2d1x1_B5_stall_region_out_c0_exe23131),
        .out_c0_exe3253(bb_conv2d1x1_B5_stall_region_out_c0_exe3253),
        .out_c0_exe33142(bb_conv2d1x1_B5_stall_region_out_c0_exe33142),
        .out_c0_exe4254(bb_conv2d1x1_B5_stall_region_out_c0_exe4254),
        .out_c0_exe43153(bb_conv2d1x1_B5_stall_region_out_c0_exe43153),
        .out_c0_exe5255(bb_conv2d1x1_B5_stall_region_out_c0_exe5255),
        .out_c0_exe6256(bb_conv2d1x1_B5_stall_region_out_c0_exe6256),
        .out_c0_exe63174(bb_conv2d1x1_B5_stall_region_out_c0_exe63174),
        .out_c0_exe7257(bb_conv2d1x1_B5_stall_region_out_c0_exe7257),
        .out_c0_exe73185(bb_conv2d1x1_B5_stall_region_out_c0_exe73185),
        .out_c0_exe8258(bb_conv2d1x1_B5_stall_region_out_c0_exe8258),
        .out_c0_exe83196(bb_conv2d1x1_B5_stall_region_out_c0_exe83196),
        .out_c0_exe9259(bb_conv2d1x1_B5_stall_region_out_c0_exe9259),
        .out_c0_exe93207(bb_conv2d1x1_B5_stall_region_out_c0_exe93207),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata(bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata),
        .out_stall_out(bb_conv2d1x1_B5_stall_region_out_stall_out),
        .out_valid_out(bb_conv2d1x1_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B5_branch(BLACKBOX,3)
    conv2d1x1_B5_branch theconv2d1x1_B5_branch (
        .in_c0_exe10260(bb_conv2d1x1_B5_stall_region_out_c0_exe10260),
        .in_c0_exe103218(bb_conv2d1x1_B5_stall_region_out_c0_exe103218),
        .in_c0_exe11261(bb_conv2d1x1_B5_stall_region_out_c0_exe11261),
        .in_c0_exe113229(bb_conv2d1x1_B5_stall_region_out_c0_exe113229),
        .in_c0_exe12262(bb_conv2d1x1_B5_stall_region_out_c0_exe12262),
        .in_c0_exe1232310(bb_conv2d1x1_B5_stall_region_out_c0_exe1232310),
        .in_c0_exe1251(bb_conv2d1x1_B5_stall_region_out_c0_exe1251),
        .in_c0_exe13263(bb_conv2d1x1_B5_stall_region_out_c0_exe13263),
        .in_c0_exe1332411(bb_conv2d1x1_B5_stall_region_out_c0_exe1332411),
        .in_c0_exe14264(bb_conv2d1x1_B5_stall_region_out_c0_exe14264),
        .in_c0_exe1432512(bb_conv2d1x1_B5_stall_region_out_c0_exe1432512),
        .in_c0_exe15265(bb_conv2d1x1_B5_stall_region_out_c0_exe15265),
        .in_c0_exe1532613(bb_conv2d1x1_B5_stall_region_out_c0_exe1532613),
        .in_c0_exe16266(bb_conv2d1x1_B5_stall_region_out_c0_exe16266),
        .in_c0_exe1632714(bb_conv2d1x1_B5_stall_region_out_c0_exe1632714),
        .in_c0_exe1732815(bb_conv2d1x1_B5_stall_region_out_c0_exe1732815),
        .in_c0_exe1832916(bb_conv2d1x1_B5_stall_region_out_c0_exe1832916),
        .in_c0_exe1933017(bb_conv2d1x1_B5_stall_region_out_c0_exe1933017),
        .in_c0_exe2033118(bb_conv2d1x1_B5_stall_region_out_c0_exe2033118),
        .in_c0_exe2119(bb_conv2d1x1_B5_stall_region_out_c0_exe2119),
        .in_c0_exe2220(bb_conv2d1x1_B5_stall_region_out_c0_exe2220),
        .in_c0_exe2252(bb_conv2d1x1_B5_stall_region_out_c0_exe2252),
        .in_c0_exe23131(bb_conv2d1x1_B5_stall_region_out_c0_exe23131),
        .in_c0_exe3253(bb_conv2d1x1_B5_stall_region_out_c0_exe3253),
        .in_c0_exe33142(bb_conv2d1x1_B5_stall_region_out_c0_exe33142),
        .in_c0_exe4254(bb_conv2d1x1_B5_stall_region_out_c0_exe4254),
        .in_c0_exe43153(bb_conv2d1x1_B5_stall_region_out_c0_exe43153),
        .in_c0_exe5255(bb_conv2d1x1_B5_stall_region_out_c0_exe5255),
        .in_c0_exe6256(bb_conv2d1x1_B5_stall_region_out_c0_exe6256),
        .in_c0_exe63174(bb_conv2d1x1_B5_stall_region_out_c0_exe63174),
        .in_c0_exe7257(bb_conv2d1x1_B5_stall_region_out_c0_exe7257),
        .in_c0_exe73185(bb_conv2d1x1_B5_stall_region_out_c0_exe73185),
        .in_c0_exe8258(bb_conv2d1x1_B5_stall_region_out_c0_exe8258),
        .in_c0_exe83196(bb_conv2d1x1_B5_stall_region_out_c0_exe83196),
        .in_c0_exe9259(bb_conv2d1x1_B5_stall_region_out_c0_exe9259),
        .in_c0_exe93207(bb_conv2d1x1_B5_stall_region_out_c0_exe93207),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2d1x1_B5_stall_region_out_valid_out),
        .out_c0_exe10260(conv2d1x1_B5_branch_out_c0_exe10260),
        .out_c0_exe103218(conv2d1x1_B5_branch_out_c0_exe103218),
        .out_c0_exe11261(conv2d1x1_B5_branch_out_c0_exe11261),
        .out_c0_exe113229(conv2d1x1_B5_branch_out_c0_exe113229),
        .out_c0_exe12262(conv2d1x1_B5_branch_out_c0_exe12262),
        .out_c0_exe1232310(conv2d1x1_B5_branch_out_c0_exe1232310),
        .out_c0_exe1251(conv2d1x1_B5_branch_out_c0_exe1251),
        .out_c0_exe13263(conv2d1x1_B5_branch_out_c0_exe13263),
        .out_c0_exe1332411(conv2d1x1_B5_branch_out_c0_exe1332411),
        .out_c0_exe14264(conv2d1x1_B5_branch_out_c0_exe14264),
        .out_c0_exe1432512(conv2d1x1_B5_branch_out_c0_exe1432512),
        .out_c0_exe15265(conv2d1x1_B5_branch_out_c0_exe15265),
        .out_c0_exe1532613(conv2d1x1_B5_branch_out_c0_exe1532613),
        .out_c0_exe16266(conv2d1x1_B5_branch_out_c0_exe16266),
        .out_c0_exe1632714(conv2d1x1_B5_branch_out_c0_exe1632714),
        .out_c0_exe1732815(conv2d1x1_B5_branch_out_c0_exe1732815),
        .out_c0_exe1832916(conv2d1x1_B5_branch_out_c0_exe1832916),
        .out_c0_exe1933017(conv2d1x1_B5_branch_out_c0_exe1933017),
        .out_c0_exe2033118(conv2d1x1_B5_branch_out_c0_exe2033118),
        .out_c0_exe2119(conv2d1x1_B5_branch_out_c0_exe2119),
        .out_c0_exe2220(conv2d1x1_B5_branch_out_c0_exe2220),
        .out_c0_exe2252(conv2d1x1_B5_branch_out_c0_exe2252),
        .out_c0_exe23131(conv2d1x1_B5_branch_out_c0_exe23131),
        .out_c0_exe3253(conv2d1x1_B5_branch_out_c0_exe3253),
        .out_c0_exe33142(conv2d1x1_B5_branch_out_c0_exe33142),
        .out_c0_exe4254(conv2d1x1_B5_branch_out_c0_exe4254),
        .out_c0_exe43153(conv2d1x1_B5_branch_out_c0_exe43153),
        .out_c0_exe5255(conv2d1x1_B5_branch_out_c0_exe5255),
        .out_c0_exe6256(conv2d1x1_B5_branch_out_c0_exe6256),
        .out_c0_exe63174(conv2d1x1_B5_branch_out_c0_exe63174),
        .out_c0_exe7257(conv2d1x1_B5_branch_out_c0_exe7257),
        .out_c0_exe73185(conv2d1x1_B5_branch_out_c0_exe73185),
        .out_c0_exe8258(conv2d1x1_B5_branch_out_c0_exe8258),
        .out_c0_exe83196(conv2d1x1_B5_branch_out_c0_exe83196),
        .out_c0_exe9259(conv2d1x1_B5_branch_out_c0_exe9259),
        .out_c0_exe93207(conv2d1x1_B5_branch_out_c0_exe93207),
        .out_stall_out(conv2d1x1_B5_branch_out_stall_out),
        .out_valid_out_0(conv2d1x1_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10260(GPOUT,37)
    assign out_c0_exe10260 = conv2d1x1_B5_branch_out_c0_exe10260;

    // out_c0_exe103218(GPOUT,38)
    assign out_c0_exe103218 = conv2d1x1_B5_branch_out_c0_exe103218;

    // out_c0_exe11261(GPOUT,39)
    assign out_c0_exe11261 = conv2d1x1_B5_branch_out_c0_exe11261;

    // out_c0_exe113229(GPOUT,40)
    assign out_c0_exe113229 = conv2d1x1_B5_branch_out_c0_exe113229;

    // out_c0_exe12262(GPOUT,41)
    assign out_c0_exe12262 = conv2d1x1_B5_branch_out_c0_exe12262;

    // out_c0_exe1232310(GPOUT,42)
    assign out_c0_exe1232310 = conv2d1x1_B5_branch_out_c0_exe1232310;

    // out_c0_exe1251(GPOUT,43)
    assign out_c0_exe1251 = conv2d1x1_B5_branch_out_c0_exe1251;

    // out_c0_exe13263(GPOUT,44)
    assign out_c0_exe13263 = conv2d1x1_B5_branch_out_c0_exe13263;

    // out_c0_exe1332411(GPOUT,45)
    assign out_c0_exe1332411 = conv2d1x1_B5_branch_out_c0_exe1332411;

    // out_c0_exe14264(GPOUT,46)
    assign out_c0_exe14264 = conv2d1x1_B5_branch_out_c0_exe14264;

    // out_c0_exe1432512(GPOUT,47)
    assign out_c0_exe1432512 = conv2d1x1_B5_branch_out_c0_exe1432512;

    // out_c0_exe15265(GPOUT,48)
    assign out_c0_exe15265 = conv2d1x1_B5_branch_out_c0_exe15265;

    // out_c0_exe1532613(GPOUT,49)
    assign out_c0_exe1532613 = conv2d1x1_B5_branch_out_c0_exe1532613;

    // out_c0_exe16266(GPOUT,50)
    assign out_c0_exe16266 = conv2d1x1_B5_branch_out_c0_exe16266;

    // out_c0_exe1632714(GPOUT,51)
    assign out_c0_exe1632714 = conv2d1x1_B5_branch_out_c0_exe1632714;

    // out_c0_exe1732815(GPOUT,52)
    assign out_c0_exe1732815 = conv2d1x1_B5_branch_out_c0_exe1732815;

    // out_c0_exe1832916(GPOUT,53)
    assign out_c0_exe1832916 = conv2d1x1_B5_branch_out_c0_exe1832916;

    // out_c0_exe1933017(GPOUT,54)
    assign out_c0_exe1933017 = conv2d1x1_B5_branch_out_c0_exe1933017;

    // out_c0_exe2033118(GPOUT,55)
    assign out_c0_exe2033118 = conv2d1x1_B5_branch_out_c0_exe2033118;

    // out_c0_exe2119(GPOUT,56)
    assign out_c0_exe2119 = conv2d1x1_B5_branch_out_c0_exe2119;

    // out_c0_exe2220(GPOUT,57)
    assign out_c0_exe2220 = conv2d1x1_B5_branch_out_c0_exe2220;

    // out_c0_exe2252(GPOUT,58)
    assign out_c0_exe2252 = conv2d1x1_B5_branch_out_c0_exe2252;

    // out_c0_exe23131(GPOUT,59)
    assign out_c0_exe23131 = conv2d1x1_B5_branch_out_c0_exe23131;

    // out_c0_exe3253(GPOUT,60)
    assign out_c0_exe3253 = conv2d1x1_B5_branch_out_c0_exe3253;

    // out_c0_exe33142(GPOUT,61)
    assign out_c0_exe33142 = conv2d1x1_B5_branch_out_c0_exe33142;

    // out_c0_exe4254(GPOUT,62)
    assign out_c0_exe4254 = conv2d1x1_B5_branch_out_c0_exe4254;

    // out_c0_exe43153(GPOUT,63)
    assign out_c0_exe43153 = conv2d1x1_B5_branch_out_c0_exe43153;

    // out_c0_exe5255(GPOUT,64)
    assign out_c0_exe5255 = conv2d1x1_B5_branch_out_c0_exe5255;

    // out_c0_exe6256(GPOUT,65)
    assign out_c0_exe6256 = conv2d1x1_B5_branch_out_c0_exe6256;

    // out_c0_exe63174(GPOUT,66)
    assign out_c0_exe63174 = conv2d1x1_B5_branch_out_c0_exe63174;

    // out_c0_exe7257(GPOUT,67)
    assign out_c0_exe7257 = conv2d1x1_B5_branch_out_c0_exe7257;

    // out_c0_exe73185(GPOUT,68)
    assign out_c0_exe73185 = conv2d1x1_B5_branch_out_c0_exe73185;

    // out_c0_exe8258(GPOUT,69)
    assign out_c0_exe8258 = conv2d1x1_B5_branch_out_c0_exe8258;

    // out_c0_exe83196(GPOUT,70)
    assign out_c0_exe83196 = conv2d1x1_B5_branch_out_c0_exe83196;

    // out_c0_exe9259(GPOUT,71)
    assign out_c0_exe9259 = conv2d1x1_B5_branch_out_c0_exe9259;

    // out_c0_exe93207(GPOUT,72)
    assign out_c0_exe93207 = conv2d1x1_B5_branch_out_c0_exe93207;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address(GPOUT,73)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_address;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount(GPOUT,74)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_burstcount;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable(GPOUT,75)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_byteenable;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable(GPOUT,76)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_enable;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read(GPOUT,77)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_read;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write(GPOUT,78)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_write;

    // out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata(GPOUT,79)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata = bb_conv2d1x1_B5_stall_region_out_memcoalesce_load_conv2d1x1_fpgaunique_176_conv2d1x1_avm_writedata;

    // out_stall_out_0(GPOUT,80)
    assign out_stall_out_0 = conv2d1x1_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,81)
    assign out_valid_out_0 = conv2d1x1_B5_branch_out_valid_out_0;

endmodule
