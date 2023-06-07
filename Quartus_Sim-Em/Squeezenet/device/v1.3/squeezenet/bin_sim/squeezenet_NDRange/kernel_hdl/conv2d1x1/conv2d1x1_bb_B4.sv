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

// SystemVerilog created from conv2d1x1_bb_B4
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B4 (
    input wire [63:0] in_acl_global_id_132_0,
    input wire [63:0] in_acl_global_id_132_1,
    input wire [63:0] in_c0_exe11_0,
    input wire [63:0] in_c0_exe11_1,
    input wire [31:0] in_c0_exe14927_0,
    input wire [31:0] in_c0_exe14927_1,
    input wire [31:0] in_c0_exe34_0,
    input wire [31:0] in_c0_exe34_1,
    input wire [63:0] in_c0_exe48_0,
    input wire [63:0] in_c0_exe48_1,
    input wire [0:0] in_c0_exe511_0,
    input wire [0:0] in_c0_exe511_1,
    input wire [0:0] in_c0_exe613_0,
    input wire [0:0] in_c0_exe613_1,
    input wire [0:0] in_c0_exe716_0,
    input wire [0:0] in_c0_exe716_1,
    input wire [0:0] in_c0_exe820_0,
    input wire [0:0] in_c0_exe820_1,
    input wire [0:0] in_c0_exe922_0,
    input wire [0:0] in_c0_exe922_1,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_05926_0,
    input wire [31:0] in_j_05926_1,
    input wire [31:0] in_k_057_0,
    input wire [31:0] in_k_057_1,
    input wire [511:0] in_lm11_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm11_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm11_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm11_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm12_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm12_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm12_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm12_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm14_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm14_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm14_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm14_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm16_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm16_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm16_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm16_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm_conv2d1x1_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_tmp_056_0,
    input wire [31:0] in_tmp_056_1,
    input wire [31:0] in_unnamed_conv2d1x16_0,
    input wire [31:0] in_unnamed_conv2d1x16_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_acl_global_id_132,
    output wire [63:0] out_c0_exe11,
    output wire [31:0] out_c0_exe14927,
    output wire [31:0] out_c0_exe34,
    output wire [63:0] out_c0_exe48,
    output wire [0:0] out_c0_exe511,
    output wire [31:0] out_c0_exe572,
    output wire [0:0] out_c0_exe613,
    output wire [0:0] out_c0_exe716,
    output wire [0:0] out_c0_exe820,
    output wire [0:0] out_c0_exe922,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_j_05926,
    output wire [30:0] out_lm11_conv2d1x1_avm_address,
    output wire [4:0] out_lm11_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm11_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm11_conv2d1x1_avm_enable,
    output wire [0:0] out_lm11_conv2d1x1_avm_read,
    output wire [0:0] out_lm11_conv2d1x1_avm_write,
    output wire [511:0] out_lm11_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm12_conv2d1x1_avm_address,
    output wire [4:0] out_lm12_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm12_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm12_conv2d1x1_avm_enable,
    output wire [0:0] out_lm12_conv2d1x1_avm_read,
    output wire [0:0] out_lm12_conv2d1x1_avm_write,
    output wire [511:0] out_lm12_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm14_conv2d1x1_avm_address,
    output wire [4:0] out_lm14_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm14_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm14_conv2d1x1_avm_enable,
    output wire [0:0] out_lm14_conv2d1x1_avm_read,
    output wire [0:0] out_lm14_conv2d1x1_avm_write,
    output wire [511:0] out_lm14_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm16_conv2d1x1_avm_address,
    output wire [4:0] out_lm16_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm16_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm16_conv2d1x1_avm_enable,
    output wire [0:0] out_lm16_conv2d1x1_avm_read,
    output wire [0:0] out_lm16_conv2d1x1_avm_write,
    output wire [511:0] out_lm16_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm_conv2d1x1_avm_address,
    output wire [4:0] out_lm_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm_conv2d1x1_avm_enable,
    output wire [0:0] out_lm_conv2d1x1_avm_read,
    output wire [0:0] out_lm_conv2d1x1_avm_write,
    output wire [511:0] out_lm_conv2d1x1_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d1x16,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_conv2d1x1_B4_stall_region_out_acl_global_id_132;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_c0_exe11;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe14927;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe34;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_c0_exe48;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe511;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c0_exe572;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe613;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe673;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe716;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe820;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_c0_exe922;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_c1_exe1;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_j_05926;
    wire [30:0] bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_stall_out;
    wire [31:0] bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x16;
    wire [0:0] bb_conv2d1x1_B4_stall_region_out_valid_out;
    wire [63:0] conv2d1x1_B4_branch_out_acl_global_id_132;
    wire [63:0] conv2d1x1_B4_branch_out_c0_exe11;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe14927;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe34;
    wire [63:0] conv2d1x1_B4_branch_out_c0_exe48;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe511;
    wire [31:0] conv2d1x1_B4_branch_out_c0_exe572;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe613;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe716;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe820;
    wire [0:0] conv2d1x1_B4_branch_out_c0_exe922;
    wire [31:0] conv2d1x1_B4_branch_out_c1_exe1;
    wire [31:0] conv2d1x1_B4_branch_out_j_05926;
    wire [0:0] conv2d1x1_B4_branch_out_stall_out;
    wire [31:0] conv2d1x1_B4_branch_out_unnamed_conv2d1x16;
    wire [0:0] conv2d1x1_B4_branch_out_valid_out_0;
    wire [0:0] conv2d1x1_B4_branch_out_valid_out_1;
    wire [63:0] conv2d1x1_B4_merge_out_acl_global_id_132;
    wire [63:0] conv2d1x1_B4_merge_out_c0_exe11;
    wire [31:0] conv2d1x1_B4_merge_out_c0_exe14927;
    wire [31:0] conv2d1x1_B4_merge_out_c0_exe34;
    wire [63:0] conv2d1x1_B4_merge_out_c0_exe48;
    wire [0:0] conv2d1x1_B4_merge_out_c0_exe511;
    wire [0:0] conv2d1x1_B4_merge_out_c0_exe613;
    wire [0:0] conv2d1x1_B4_merge_out_c0_exe716;
    wire [0:0] conv2d1x1_B4_merge_out_c0_exe820;
    wire [0:0] conv2d1x1_B4_merge_out_c0_exe922;
    wire [31:0] conv2d1x1_B4_merge_out_j_05926;
    wire [31:0] conv2d1x1_B4_merge_out_k_057;
    wire [0:0] conv2d1x1_B4_merge_out_stall_out_0;
    wire [0:0] conv2d1x1_B4_merge_out_stall_out_1;
    wire [31:0] conv2d1x1_B4_merge_out_tmp_056;
    wire [31:0] conv2d1x1_B4_merge_out_unnamed_conv2d1x16;
    wire [0:0] conv2d1x1_B4_merge_out_valid_out;


    // conv2d1x1_B4_merge(BLACKBOX,4)
    conv2d1x1_B4_merge theconv2d1x1_B4_merge (
        .in_acl_global_id_132_0(in_acl_global_id_132_0),
        .in_acl_global_id_132_1(in_acl_global_id_132_1),
        .in_c0_exe11_0(in_c0_exe11_0),
        .in_c0_exe11_1(in_c0_exe11_1),
        .in_c0_exe14927_0(in_c0_exe14927_0),
        .in_c0_exe14927_1(in_c0_exe14927_1),
        .in_c0_exe34_0(in_c0_exe34_0),
        .in_c0_exe34_1(in_c0_exe34_1),
        .in_c0_exe48_0(in_c0_exe48_0),
        .in_c0_exe48_1(in_c0_exe48_1),
        .in_c0_exe511_0(in_c0_exe511_0),
        .in_c0_exe511_1(in_c0_exe511_1),
        .in_c0_exe613_0(in_c0_exe613_0),
        .in_c0_exe613_1(in_c0_exe613_1),
        .in_c0_exe716_0(in_c0_exe716_0),
        .in_c0_exe716_1(in_c0_exe716_1),
        .in_c0_exe820_0(in_c0_exe820_0),
        .in_c0_exe820_1(in_c0_exe820_1),
        .in_c0_exe922_0(in_c0_exe922_0),
        .in_c0_exe922_1(in_c0_exe922_1),
        .in_j_05926_0(in_j_05926_0),
        .in_j_05926_1(in_j_05926_1),
        .in_k_057_0(in_k_057_0),
        .in_k_057_1(in_k_057_1),
        .in_stall_in(bb_conv2d1x1_B4_stall_region_out_stall_out),
        .in_tmp_056_0(in_tmp_056_0),
        .in_tmp_056_1(in_tmp_056_1),
        .in_unnamed_conv2d1x16_0(in_unnamed_conv2d1x16_0),
        .in_unnamed_conv2d1x16_1(in_unnamed_conv2d1x16_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_acl_global_id_132(conv2d1x1_B4_merge_out_acl_global_id_132),
        .out_c0_exe11(conv2d1x1_B4_merge_out_c0_exe11),
        .out_c0_exe14927(conv2d1x1_B4_merge_out_c0_exe14927),
        .out_c0_exe34(conv2d1x1_B4_merge_out_c0_exe34),
        .out_c0_exe48(conv2d1x1_B4_merge_out_c0_exe48),
        .out_c0_exe511(conv2d1x1_B4_merge_out_c0_exe511),
        .out_c0_exe613(conv2d1x1_B4_merge_out_c0_exe613),
        .out_c0_exe716(conv2d1x1_B4_merge_out_c0_exe716),
        .out_c0_exe820(conv2d1x1_B4_merge_out_c0_exe820),
        .out_c0_exe922(conv2d1x1_B4_merge_out_c0_exe922),
        .out_j_05926(conv2d1x1_B4_merge_out_j_05926),
        .out_k_057(conv2d1x1_B4_merge_out_k_057),
        .out_stall_out_0(conv2d1x1_B4_merge_out_stall_out_0),
        .out_stall_out_1(conv2d1x1_B4_merge_out_stall_out_1),
        .out_tmp_056(conv2d1x1_B4_merge_out_tmp_056),
        .out_unnamed_conv2d1x16(conv2d1x1_B4_merge_out_unnamed_conv2d1x16),
        .out_valid_out(conv2d1x1_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4_stall_region(BLACKBOX,2)
    conv2d1x1_bb_B4_stall_region thebb_conv2d1x1_B4_stall_region (
        .in_acl_global_id_132(conv2d1x1_B4_merge_out_acl_global_id_132),
        .in_c0_exe11(conv2d1x1_B4_merge_out_c0_exe11),
        .in_c0_exe14927(conv2d1x1_B4_merge_out_c0_exe14927),
        .in_c0_exe34(conv2d1x1_B4_merge_out_c0_exe34),
        .in_c0_exe48(conv2d1x1_B4_merge_out_c0_exe48),
        .in_c0_exe511(conv2d1x1_B4_merge_out_c0_exe511),
        .in_c0_exe613(conv2d1x1_B4_merge_out_c0_exe613),
        .in_c0_exe716(conv2d1x1_B4_merge_out_c0_exe716),
        .in_c0_exe820(conv2d1x1_B4_merge_out_c0_exe820),
        .in_c0_exe922(conv2d1x1_B4_merge_out_c0_exe922),
        .in_flush(in_flush),
        .in_input_channels(in_input_channels),
        .in_input_im(in_input_im),
        .in_j_05926(conv2d1x1_B4_merge_out_j_05926),
        .in_k_057(conv2d1x1_B4_merge_out_k_057),
        .in_lm11_conv2d1x1_avm_readdata(in_lm11_conv2d1x1_avm_readdata),
        .in_lm11_conv2d1x1_avm_readdatavalid(in_lm11_conv2d1x1_avm_readdatavalid),
        .in_lm11_conv2d1x1_avm_waitrequest(in_lm11_conv2d1x1_avm_waitrequest),
        .in_lm11_conv2d1x1_avm_writeack(in_lm11_conv2d1x1_avm_writeack),
        .in_lm12_conv2d1x1_avm_readdata(in_lm12_conv2d1x1_avm_readdata),
        .in_lm12_conv2d1x1_avm_readdatavalid(in_lm12_conv2d1x1_avm_readdatavalid),
        .in_lm12_conv2d1x1_avm_waitrequest(in_lm12_conv2d1x1_avm_waitrequest),
        .in_lm12_conv2d1x1_avm_writeack(in_lm12_conv2d1x1_avm_writeack),
        .in_lm14_conv2d1x1_avm_readdata(in_lm14_conv2d1x1_avm_readdata),
        .in_lm14_conv2d1x1_avm_readdatavalid(in_lm14_conv2d1x1_avm_readdatavalid),
        .in_lm14_conv2d1x1_avm_waitrequest(in_lm14_conv2d1x1_avm_waitrequest),
        .in_lm14_conv2d1x1_avm_writeack(in_lm14_conv2d1x1_avm_writeack),
        .in_lm16_conv2d1x1_avm_readdata(in_lm16_conv2d1x1_avm_readdata),
        .in_lm16_conv2d1x1_avm_readdatavalid(in_lm16_conv2d1x1_avm_readdatavalid),
        .in_lm16_conv2d1x1_avm_waitrequest(in_lm16_conv2d1x1_avm_waitrequest),
        .in_lm16_conv2d1x1_avm_writeack(in_lm16_conv2d1x1_avm_writeack),
        .in_lm_conv2d1x1_avm_readdata(in_lm_conv2d1x1_avm_readdata),
        .in_lm_conv2d1x1_avm_readdatavalid(in_lm_conv2d1x1_avm_readdatavalid),
        .in_lm_conv2d1x1_avm_waitrequest(in_lm_conv2d1x1_avm_waitrequest),
        .in_lm_conv2d1x1_avm_writeack(in_lm_conv2d1x1_avm_writeack),
        .in_stall_in(conv2d1x1_B4_branch_out_stall_out),
        .in_tmp_056(conv2d1x1_B4_merge_out_tmp_056),
        .in_unnamed_conv2d1x16(conv2d1x1_B4_merge_out_unnamed_conv2d1x16),
        .in_valid_in(conv2d1x1_B4_merge_out_valid_out),
        .out_acl_global_id_132(bb_conv2d1x1_B4_stall_region_out_acl_global_id_132),
        .out_c0_exe11(bb_conv2d1x1_B4_stall_region_out_c0_exe11),
        .out_c0_exe14927(bb_conv2d1x1_B4_stall_region_out_c0_exe14927),
        .out_c0_exe34(bb_conv2d1x1_B4_stall_region_out_c0_exe34),
        .out_c0_exe48(bb_conv2d1x1_B4_stall_region_out_c0_exe48),
        .out_c0_exe511(bb_conv2d1x1_B4_stall_region_out_c0_exe511),
        .out_c0_exe572(bb_conv2d1x1_B4_stall_region_out_c0_exe572),
        .out_c0_exe613(bb_conv2d1x1_B4_stall_region_out_c0_exe613),
        .out_c0_exe673(bb_conv2d1x1_B4_stall_region_out_c0_exe673),
        .out_c0_exe716(bb_conv2d1x1_B4_stall_region_out_c0_exe716),
        .out_c0_exe820(bb_conv2d1x1_B4_stall_region_out_c0_exe820),
        .out_c0_exe922(bb_conv2d1x1_B4_stall_region_out_c0_exe922),
        .out_c1_exe1(bb_conv2d1x1_B4_stall_region_out_c1_exe1),
        .out_j_05926(bb_conv2d1x1_B4_stall_region_out_j_05926),
        .out_lm11_conv2d1x1_avm_address(bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_address),
        .out_lm11_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_burstcount),
        .out_lm11_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_byteenable),
        .out_lm11_conv2d1x1_avm_enable(bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_enable),
        .out_lm11_conv2d1x1_avm_read(bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_read),
        .out_lm11_conv2d1x1_avm_write(bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_write),
        .out_lm11_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_writedata),
        .out_lm12_conv2d1x1_avm_address(bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_address),
        .out_lm12_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_burstcount),
        .out_lm12_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_byteenable),
        .out_lm12_conv2d1x1_avm_enable(bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_enable),
        .out_lm12_conv2d1x1_avm_read(bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_read),
        .out_lm12_conv2d1x1_avm_write(bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_write),
        .out_lm12_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_writedata),
        .out_lm14_conv2d1x1_avm_address(bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_address),
        .out_lm14_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_burstcount),
        .out_lm14_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_byteenable),
        .out_lm14_conv2d1x1_avm_enable(bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_enable),
        .out_lm14_conv2d1x1_avm_read(bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_read),
        .out_lm14_conv2d1x1_avm_write(bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_write),
        .out_lm14_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_writedata),
        .out_lm16_conv2d1x1_avm_address(bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_address),
        .out_lm16_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_burstcount),
        .out_lm16_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_byteenable),
        .out_lm16_conv2d1x1_avm_enable(bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_enable),
        .out_lm16_conv2d1x1_avm_read(bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_read),
        .out_lm16_conv2d1x1_avm_write(bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_write),
        .out_lm16_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_writedata),
        .out_lm_conv2d1x1_avm_address(bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_writedata),
        .out_stall_out(bb_conv2d1x1_B4_stall_region_out_stall_out),
        .out_unnamed_conv2d1x16(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x16),
        .out_valid_out(bb_conv2d1x1_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B4_branch(BLACKBOX,3)
    conv2d1x1_B4_branch theconv2d1x1_B4_branch (
        .in_acl_global_id_132(bb_conv2d1x1_B4_stall_region_out_acl_global_id_132),
        .in_c0_exe11(bb_conv2d1x1_B4_stall_region_out_c0_exe11),
        .in_c0_exe14927(bb_conv2d1x1_B4_stall_region_out_c0_exe14927),
        .in_c0_exe34(bb_conv2d1x1_B4_stall_region_out_c0_exe34),
        .in_c0_exe48(bb_conv2d1x1_B4_stall_region_out_c0_exe48),
        .in_c0_exe511(bb_conv2d1x1_B4_stall_region_out_c0_exe511),
        .in_c0_exe572(bb_conv2d1x1_B4_stall_region_out_c0_exe572),
        .in_c0_exe613(bb_conv2d1x1_B4_stall_region_out_c0_exe613),
        .in_c0_exe673(bb_conv2d1x1_B4_stall_region_out_c0_exe673),
        .in_c0_exe716(bb_conv2d1x1_B4_stall_region_out_c0_exe716),
        .in_c0_exe820(bb_conv2d1x1_B4_stall_region_out_c0_exe820),
        .in_c0_exe922(bb_conv2d1x1_B4_stall_region_out_c0_exe922),
        .in_c1_exe1(bb_conv2d1x1_B4_stall_region_out_c1_exe1),
        .in_j_05926(bb_conv2d1x1_B4_stall_region_out_j_05926),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_conv2d1x16(bb_conv2d1x1_B4_stall_region_out_unnamed_conv2d1x16),
        .in_valid_in(bb_conv2d1x1_B4_stall_region_out_valid_out),
        .out_acl_global_id_132(conv2d1x1_B4_branch_out_acl_global_id_132),
        .out_c0_exe11(conv2d1x1_B4_branch_out_c0_exe11),
        .out_c0_exe14927(conv2d1x1_B4_branch_out_c0_exe14927),
        .out_c0_exe34(conv2d1x1_B4_branch_out_c0_exe34),
        .out_c0_exe48(conv2d1x1_B4_branch_out_c0_exe48),
        .out_c0_exe511(conv2d1x1_B4_branch_out_c0_exe511),
        .out_c0_exe572(conv2d1x1_B4_branch_out_c0_exe572),
        .out_c0_exe613(conv2d1x1_B4_branch_out_c0_exe613),
        .out_c0_exe716(conv2d1x1_B4_branch_out_c0_exe716),
        .out_c0_exe820(conv2d1x1_B4_branch_out_c0_exe820),
        .out_c0_exe922(conv2d1x1_B4_branch_out_c0_exe922),
        .out_c1_exe1(conv2d1x1_B4_branch_out_c1_exe1),
        .out_j_05926(conv2d1x1_B4_branch_out_j_05926),
        .out_stall_out(conv2d1x1_B4_branch_out_stall_out),
        .out_unnamed_conv2d1x16(conv2d1x1_B4_branch_out_unnamed_conv2d1x16),
        .out_valid_out_0(conv2d1x1_B4_branch_out_valid_out_0),
        .out_valid_out_1(conv2d1x1_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_acl_global_id_132(GPOUT,61)
    assign out_acl_global_id_132 = conv2d1x1_B4_branch_out_acl_global_id_132;

    // out_c0_exe11(GPOUT,62)
    assign out_c0_exe11 = conv2d1x1_B4_branch_out_c0_exe11;

    // out_c0_exe14927(GPOUT,63)
    assign out_c0_exe14927 = conv2d1x1_B4_branch_out_c0_exe14927;

    // out_c0_exe34(GPOUT,64)
    assign out_c0_exe34 = conv2d1x1_B4_branch_out_c0_exe34;

    // out_c0_exe48(GPOUT,65)
    assign out_c0_exe48 = conv2d1x1_B4_branch_out_c0_exe48;

    // out_c0_exe511(GPOUT,66)
    assign out_c0_exe511 = conv2d1x1_B4_branch_out_c0_exe511;

    // out_c0_exe572(GPOUT,67)
    assign out_c0_exe572 = conv2d1x1_B4_branch_out_c0_exe572;

    // out_c0_exe613(GPOUT,68)
    assign out_c0_exe613 = conv2d1x1_B4_branch_out_c0_exe613;

    // out_c0_exe716(GPOUT,69)
    assign out_c0_exe716 = conv2d1x1_B4_branch_out_c0_exe716;

    // out_c0_exe820(GPOUT,70)
    assign out_c0_exe820 = conv2d1x1_B4_branch_out_c0_exe820;

    // out_c0_exe922(GPOUT,71)
    assign out_c0_exe922 = conv2d1x1_B4_branch_out_c0_exe922;

    // out_c1_exe1(GPOUT,72)
    assign out_c1_exe1 = conv2d1x1_B4_branch_out_c1_exe1;

    // out_j_05926(GPOUT,73)
    assign out_j_05926 = conv2d1x1_B4_branch_out_j_05926;

    // out_lm11_conv2d1x1_avm_address(GPOUT,74)
    assign out_lm11_conv2d1x1_avm_address = bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_address;

    // out_lm11_conv2d1x1_avm_burstcount(GPOUT,75)
    assign out_lm11_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_burstcount;

    // out_lm11_conv2d1x1_avm_byteenable(GPOUT,76)
    assign out_lm11_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_byteenable;

    // out_lm11_conv2d1x1_avm_enable(GPOUT,77)
    assign out_lm11_conv2d1x1_avm_enable = bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_enable;

    // out_lm11_conv2d1x1_avm_read(GPOUT,78)
    assign out_lm11_conv2d1x1_avm_read = bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_read;

    // out_lm11_conv2d1x1_avm_write(GPOUT,79)
    assign out_lm11_conv2d1x1_avm_write = bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_write;

    // out_lm11_conv2d1x1_avm_writedata(GPOUT,80)
    assign out_lm11_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_stall_region_out_lm11_conv2d1x1_avm_writedata;

    // out_lm12_conv2d1x1_avm_address(GPOUT,81)
    assign out_lm12_conv2d1x1_avm_address = bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_address;

    // out_lm12_conv2d1x1_avm_burstcount(GPOUT,82)
    assign out_lm12_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_burstcount;

    // out_lm12_conv2d1x1_avm_byteenable(GPOUT,83)
    assign out_lm12_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_byteenable;

    // out_lm12_conv2d1x1_avm_enable(GPOUT,84)
    assign out_lm12_conv2d1x1_avm_enable = bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_enable;

    // out_lm12_conv2d1x1_avm_read(GPOUT,85)
    assign out_lm12_conv2d1x1_avm_read = bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_read;

    // out_lm12_conv2d1x1_avm_write(GPOUT,86)
    assign out_lm12_conv2d1x1_avm_write = bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_write;

    // out_lm12_conv2d1x1_avm_writedata(GPOUT,87)
    assign out_lm12_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_stall_region_out_lm12_conv2d1x1_avm_writedata;

    // out_lm14_conv2d1x1_avm_address(GPOUT,88)
    assign out_lm14_conv2d1x1_avm_address = bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_address;

    // out_lm14_conv2d1x1_avm_burstcount(GPOUT,89)
    assign out_lm14_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_burstcount;

    // out_lm14_conv2d1x1_avm_byteenable(GPOUT,90)
    assign out_lm14_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_byteenable;

    // out_lm14_conv2d1x1_avm_enable(GPOUT,91)
    assign out_lm14_conv2d1x1_avm_enable = bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_enable;

    // out_lm14_conv2d1x1_avm_read(GPOUT,92)
    assign out_lm14_conv2d1x1_avm_read = bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_read;

    // out_lm14_conv2d1x1_avm_write(GPOUT,93)
    assign out_lm14_conv2d1x1_avm_write = bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_write;

    // out_lm14_conv2d1x1_avm_writedata(GPOUT,94)
    assign out_lm14_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_stall_region_out_lm14_conv2d1x1_avm_writedata;

    // out_lm16_conv2d1x1_avm_address(GPOUT,95)
    assign out_lm16_conv2d1x1_avm_address = bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_address;

    // out_lm16_conv2d1x1_avm_burstcount(GPOUT,96)
    assign out_lm16_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_burstcount;

    // out_lm16_conv2d1x1_avm_byteenable(GPOUT,97)
    assign out_lm16_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_byteenable;

    // out_lm16_conv2d1x1_avm_enable(GPOUT,98)
    assign out_lm16_conv2d1x1_avm_enable = bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_enable;

    // out_lm16_conv2d1x1_avm_read(GPOUT,99)
    assign out_lm16_conv2d1x1_avm_read = bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_read;

    // out_lm16_conv2d1x1_avm_write(GPOUT,100)
    assign out_lm16_conv2d1x1_avm_write = bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_write;

    // out_lm16_conv2d1x1_avm_writedata(GPOUT,101)
    assign out_lm16_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_stall_region_out_lm16_conv2d1x1_avm_writedata;

    // out_lm_conv2d1x1_avm_address(GPOUT,102)
    assign out_lm_conv2d1x1_avm_address = bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_address;

    // out_lm_conv2d1x1_avm_burstcount(GPOUT,103)
    assign out_lm_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_burstcount;

    // out_lm_conv2d1x1_avm_byteenable(GPOUT,104)
    assign out_lm_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_byteenable;

    // out_lm_conv2d1x1_avm_enable(GPOUT,105)
    assign out_lm_conv2d1x1_avm_enable = bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_enable;

    // out_lm_conv2d1x1_avm_read(GPOUT,106)
    assign out_lm_conv2d1x1_avm_read = bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_read;

    // out_lm_conv2d1x1_avm_write(GPOUT,107)
    assign out_lm_conv2d1x1_avm_write = bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_write;

    // out_lm_conv2d1x1_avm_writedata(GPOUT,108)
    assign out_lm_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_stall_region_out_lm_conv2d1x1_avm_writedata;

    // out_stall_in_0(GPOUT,109)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,110)
    assign out_stall_out_0 = conv2d1x1_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,111)
    assign out_stall_out_1 = conv2d1x1_B4_merge_out_stall_out_1;

    // out_unnamed_conv2d1x16(GPOUT,112)
    assign out_unnamed_conv2d1x16 = conv2d1x1_B4_branch_out_unnamed_conv2d1x16;

    // out_valid_in_0(GPOUT,113)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,114)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,115)
    assign out_valid_out_0 = conv2d1x1_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,116)
    assign out_valid_out_1 = conv2d1x1_B4_branch_out_valid_out_1;

endmodule
