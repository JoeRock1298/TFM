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

// SystemVerilog created from conv2d1x1_function
// SystemVerilog created on Tue May 23 20:43:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_function (
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [63:0] in_arg_filter_bias,
    input wire [31:0] in_arg_filter_size,
    input wire [63:0] in_arg_filter_weight,
    input wire [31:0] in_arg_input_channels,
    input wire [63:0] in_arg_input_im,
    input wire [31:0] in_arg_input_size,
    input wire [63:0] in_arg_output_im,
    input wire [511:0] in_lm177_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm177_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm177_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm177_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm178_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm178_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm178_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm178_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm70_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm70_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm70_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm70_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm73_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm73_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm73_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm73_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm96_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm96_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm96_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm96_conv2d1x1_avm_writeack,
    input wire [511:0] in_lm_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_lm_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm_conv2d1x1_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_conv2d1x113_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x113_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv2d1x113_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x113_conv2d1x1_avm_writeack,
    input wire [0:0] in_valid_in,
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
    output wire [30:0] out_lm70_conv2d1x1_avm_address,
    output wire [4:0] out_lm70_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm70_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm70_conv2d1x1_avm_enable,
    output wire [0:0] out_lm70_conv2d1x1_avm_read,
    output wire [0:0] out_lm70_conv2d1x1_avm_write,
    output wire [511:0] out_lm70_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm73_conv2d1x1_avm_address,
    output wire [4:0] out_lm73_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm73_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm73_conv2d1x1_avm_enable,
    output wire [0:0] out_lm73_conv2d1x1_avm_read,
    output wire [0:0] out_lm73_conv2d1x1_avm_write,
    output wire [511:0] out_lm73_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm96_conv2d1x1_avm_address,
    output wire [4:0] out_lm96_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm96_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm96_conv2d1x1_avm_enable,
    output wire [0:0] out_lm96_conv2d1x1_avm_read,
    output wire [0:0] out_lm96_conv2d1x1_avm_write,
    output wire [511:0] out_lm96_conv2d1x1_avm_writedata,
    output wire [30:0] out_lm_conv2d1x1_avm_address,
    output wire [4:0] out_lm_conv2d1x1_avm_burstcount,
    output wire [63:0] out_lm_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm_conv2d1x1_avm_enable,
    output wire [0:0] out_lm_conv2d1x1_avm_read,
    output wire [0:0] out_lm_conv2d1x1_avm_write,
    output wire [511:0] out_lm_conv2d1x1_avm_writedata,
    output wire [0:0] out_o_active_unnamed_conv2d1x113,
    output wire [0:0] out_stall_out,
    output wire [30:0] out_unnamed_conv2d1x113_conv2d1x1_avm_address,
    output wire [4:0] out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount,
    output wire [63:0] out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x113_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x113_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x113_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x113_conv2d1x1_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_conv2d1x1_B0_out_feedback_stall_out_0;
    wire [0:0] bb_conv2d1x1_B0_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B0_out_valid_out_0;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe1018;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe1119;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe1220;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe1321;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe1422;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe1523;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe1624;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe1725;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe210;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe311;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe412;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe513;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe614;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe715;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe816;
    wire [31:0] bb_conv2d1x1_B1_out_c0_exe917;
    wire [0:0] bb_conv2d1x1_B1_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_conv2d1x1_B1_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_conv2d1x1_B1_out_intel_reserved_ffwd_2_0;
    wire [32:0] bb_conv2d1x1_B1_out_intel_reserved_ffwd_3_0;
    wire [32:0] bb_conv2d1x1_B1_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_conv2d1x1_B1_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B1_out_valid_out_0;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe10;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe11;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe12;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe13;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe14;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe15;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe16;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe17;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe2;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe3;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe4;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe5;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe6;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe7;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe8;
    wire [31:0] bb_conv2d1x1_B2_out_c0_exe9;
    wire [0:0] bb_conv2d1x1_B2_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B2_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B2_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B2_out_stall_out_1;
    wire [0:0] bb_conv2d1x1_B2_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B2_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B2_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B3_out_feedback_out_0;
    wire [0:0] bb_conv2d1x1_B3_out_feedback_valid_out_0;
    wire [0:0] bb_conv2d1x1_B3_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B3_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe10403;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe11404;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe12405;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe13406;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe14407;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe15408;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe16409;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe17410;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe18411;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe19;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe20;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe21;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe22;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe23;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe2395;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe24;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe25;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe26;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe27;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe28;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe29;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe30;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe31;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe32;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe33;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe3396;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe34;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe35;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe36;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe37;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe38;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe39;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe40;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe41;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe42;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe43;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe4397;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe44;
    wire [0:0] bb_conv2d1x1_B4_out_c0_exe5398;
    wire [32:0] bb_conv2d1x1_B4_out_c0_exe6399;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe8401;
    wire [31:0] bb_conv2d1x1_B4_out_c0_exe9402;
    wire [31:0] bb_conv2d1x1_B4_out_lm96;
    wire [30:0] bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B4_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B4_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B4_out_stall_out_1;
    wire [0:0] bb_conv2d1x1_B4_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B4_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B4_out_valid_out_0;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe10505;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe11506;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe12507;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe13508;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe14509;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe1496;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe15510;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe16511;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe17512;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe18513;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe19514;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe20515;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe21516;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe22517;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe23518;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe24519;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe2497;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe25520;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe26521;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe27522;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe28523;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe29524;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe30525;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe31526;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe32527;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe33528;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe34529;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe3498;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe35530;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe36531;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe37532;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe38533;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe39534;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe40535;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe41536;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe42537;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe43538;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe44539;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe4499;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe45;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe46;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe47;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe48;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe49;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe50;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe51;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe52;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe53;
    wire [32:0] bb_conv2d1x1_B5_out_c0_exe54;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe55;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe5500;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe56;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe57;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe58;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe59;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe60;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe61;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe62;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe63;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe64;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe65;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe6501;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe66;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe67;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe68;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe69;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe70;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe71;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe72;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe73;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe74;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe75;
    wire [0:0] bb_conv2d1x1_B5_out_c0_exe7502;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe8503;
    wire [31:0] bb_conv2d1x1_B5_out_c0_exe9504;
    wire [0:0] bb_conv2d1x1_B5_out_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B5_out_exiting_valid_out;
    wire [0:0] bb_conv2d1x1_B5_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B5_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B5_out_stall_out_1;
    wire [0:0] bb_conv2d1x1_B5_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B5_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B5_out_valid_out_0;
    wire [0:0] bb_conv2d1x1_B6_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B6_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B6_out_valid_out_0;
    wire [31:0] c_float_undef100_q;
    wire [1:0] c_i2_0345_q;
    wire [31:0] c_i32_undef106_q;
    wire [32:0] c_i33_undef114_q;
    wire [0:0] conv2d1x1_B2_x_i_capture;
    wire conv2d1x1_B2_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_clear;
    wire conv2d1x1_B2_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_enable;
    wire conv2d1x1_B2_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_shift;
    wire conv2d1x1_B2_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_stall_pred;
    wire conv2d1x1_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_stall_succ;
    wire conv2d1x1_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_valid_loop;
    wire conv2d1x1_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_valid_pred;
    wire conv2d1x1_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B2_x_i_valid_succ;
    wire conv2d1x1_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_capture;
    wire conv2d1x1_B4_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_clear;
    wire conv2d1x1_B4_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_enable;
    wire conv2d1x1_B4_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_shift;
    wire conv2d1x1_B4_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_stall_pred;
    wire conv2d1x1_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_stall_succ;
    wire conv2d1x1_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_valid_loop;
    wire conv2d1x1_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_valid_pred;
    wire conv2d1x1_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B4_x_i_valid_succ;
    wire conv2d1x1_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B5_x_i_capture;
    wire conv2d1x1_B5_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d1x1_B5_x_i_clear;
    wire conv2d1x1_B5_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d1x1_B5_x_i_enable;
    wire conv2d1x1_B5_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d1x1_B5_x_i_shift;
    wire conv2d1x1_B5_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d1x1_B5_x_i_stall_pred;
    wire conv2d1x1_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B5_x_i_stall_succ;
    wire conv2d1x1_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B5_x_i_valid_loop;
    wire conv2d1x1_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d1x1_B5_x_i_valid_pred;
    wire conv2d1x1_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B5_x_i_valid_succ;
    wire conv2d1x1_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_capture;
    wire conv2d1x1_B8_x_i_capture_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_clear;
    wire conv2d1x1_B8_x_i_clear_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_enable;
    wire conv2d1x1_B8_x_i_enable_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_shift;
    wire conv2d1x1_B8_x_i_shift_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_stall_pred;
    wire conv2d1x1_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_stall_succ;
    wire conv2d1x1_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_valid_loop;
    wire conv2d1x1_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_valid_pred;
    wire conv2d1x1_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2d1x1_B8_x_i_valid_succ;
    wire conv2d1x1_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_conv2d1x16_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_conv2d1x16_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_conv2d1x16_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_conv2d1x16_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_conv2d1x14_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_conv2d1x14_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_conv2d1x14_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_conv2d1x14_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_conv2d1x18_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_conv2d1x18_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_conv2d1x18_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_conv2d1x18_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x110_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x110_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x110_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d1x110_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_conv2d1x10_out_o_stall;
    wire [0:0] loop_limiter_conv2d1x10_out_o_valid;
    wire [0:0] loop_limiter_conv2d1x11_out_o_stall;
    wire [0:0] loop_limiter_conv2d1x11_out_o_valid;
    wire [0:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [32:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [0:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_28_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_29_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_30_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_31_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_32_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_33_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_34_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_35_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_36_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_37_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_38_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_39_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_40_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_41_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_42_tpl;
    wire [31:0] bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_43_tpl;
    wire [0:0] bb_conv2d1x1_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_c0_exe1974135;
    wire [30:0] bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_lsu_unnamed_conv2d1x113_o_active;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_stall_out_0;
    wire [30:0] bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B7_vunroll_x_out_valid_out_0;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe12734;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe13735;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe15737;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe17739;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe18740;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe19741;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe20742;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe21743;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe22744;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe23745;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe24746;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe25747;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe7729;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe8730;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c0_exe9731;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe10;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe11;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe12;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe13;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe14;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe1847;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe2;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe3;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe4;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe5;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe6;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe7;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe8;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_c1_exe9;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_exiting_stall_out;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_exiting_valid_out;
    wire [30:0] bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_writedata;
    wire [30:0] bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_address;
    wire [4:0] bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_burstcount;
    wire [63:0] bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_byteenable;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_enable;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_read;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_write;
    wire [511:0] bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_writedata;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_stall_in_0;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_stall_out_0;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_stall_out_1;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_valid_in_0;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_valid_in_1;
    wire [0:0] bb_conv2d1x1_B8_vunroll_x_out_valid_out_0;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_lm177_0_tpl;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_lm177_1_tpl;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_lm177_2_tpl;
    wire [31:0] bb_conv2d1x1_B8_vunroll_x_out_lm177_3_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [32:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_28_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_29_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_30_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_31_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_32_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_33_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_34_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_35_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_36_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_37_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_38_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_39_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_40_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_41_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_42_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_43_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_44_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_45_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_46_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_47_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_48_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_49_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_50_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_51_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_52_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_53_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_54_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_55_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_56_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_57_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_58_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_59_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_60_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_61_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_62_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_63_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_64_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_65_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_66_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_67_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_68_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_69_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_70_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_71_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_72_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_73_tpl;
    wire [31:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_74_tpl;
    wire [0:0] bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_75_tpl;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_stall;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_valid;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_0_15_tpl;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_1_15_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_2_15_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_3_15_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_22_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_23_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_24_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_25_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_26_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_27_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_28_tpl;
    wire [31:0] bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_29_tpl;


    // c_i2_0345(CONSTANT,156)
    assign c_i2_0345_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going32_conv2d1x18_valid_fifo(BLACKBOX,181)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going32_8_valid_fifo thei_llvm_fpga_pipeline_keep_going32_conv2d1x18_valid_fifo (
        .in_data_in(c_i2_0345_q),
        .in_stall_in(bb_conv2d1x1_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going25_conv2d1x14_valid_fifo(BLACKBOX,179)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going25_4_valid_fifo thei_llvm_fpga_pipeline_keep_going25_conv2d1x14_valid_fifo (
        .in_data_in(c_i2_0345_q),
        .in_stall_in(bb_conv2d1x1_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going21_conv2d1x16_valid_fifo(BLACKBOX,177)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going21_6_valid_fifo thei_llvm_fpga_pipeline_keep_going21_conv2d1x16_valid_fifo (
        .in_data_in(c_i2_0345_q),
        .in_stall_in(bb_conv2d1x1_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef114(CONSTANT,170)
    assign c_i33_undef114_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going_conv2d1x110_valid_fifo(BLACKBOX,183)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_10_valid_fifo thei_llvm_fpga_pipeline_keep_going_conv2d1x110_valid_fifo (
        .in_data_in(c_i2_0345_q),
        .in_stall_in(bb_conv2d1x1_B8_vunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_conv2d1x110_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d1x110_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_conv2d1x110_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B0(BLACKBOX,2)
    conv2d1x1_bb_B0 thebb_conv2d1x1_B0 (
        .in_feedback_in_0(bb_conv2d1x1_B3_out_feedback_out_0),
        .in_feedback_valid_in_0(bb_conv2d1x1_B3_out_feedback_valid_out_0),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_size(in_arg_filter_size),
        .in_filter_weight(in_arg_filter_weight),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_feedback_stall_out_0(bb_conv2d1x1_B0_out_feedback_stall_out_0),
        .out_stall_out_0(bb_conv2d1x1_B0_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B3(BLACKBOX,5)
    conv2d1x1_bb_B3 thebb_conv2d1x1_B3 (
        .in_feedback_stall_in_0(bb_conv2d1x1_B0_out_feedback_stall_out_0),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_0(bb_conv2d1x1_B3_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_conv2d1x1_B3_out_feedback_valid_out_0),
        .out_stall_out_0(bb_conv2d1x1_B3_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B3_sr_0_aunroll_x(BLACKBOX,284)
    conv2d1x1_bb_B3_sr_0 thebb_conv2d1x1_B3_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B3_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B6_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B6(BLACKBOX,8)
    conv2d1x1_bb_B6 thebb_conv2d1x1_B6 (
        .in_c0_exe1974134_0(bb_conv2d1x1_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_conv2d1x1_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv2d1x1_B6_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_conv2d1x1_B6_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B6_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B6_sr_0_aunroll_x(BLACKBOX,287)
    conv2d1x1_bb_B6_sr_0 thebb_conv2d1x1_B6_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B6_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B7_vunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B7_vunroll_x_out_c0_exe1974135),
        .out_o_stall(bb_conv2d1x1_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B7_vunroll_x(BLACKBOX,288)
    conv2d1x1_bb_B7 thebb_conv2d1x1_B7_vunroll_x (
        .in_c0_exe1273429_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_3_tpl),
        .in_c0_exe1373530_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_4_tpl),
        .in_c0_exe1573731_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_5_tpl),
        .in_c0_exe1773932_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_6_tpl),
        .in_c0_exe1874033_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_7_tpl),
        .in_c0_exe1974135_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_8_tpl),
        .in_c0_exe2074236_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_9_tpl),
        .in_c0_exe2174337_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_10_tpl),
        .in_c0_exe2274438_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_11_tpl),
        .in_c0_exe2374539_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_12_tpl),
        .in_c0_exe2474640_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_13_tpl),
        .in_c0_exe2574741_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_14_tpl),
        .in_c0_exe772926_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_0_tpl),
        .in_c0_exe873027_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_1_tpl),
        .in_c0_exe973128_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_2_tpl),
        .in_c1_exe1052_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_25_tpl),
        .in_c1_exe1153_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_26_tpl),
        .in_c1_exe1254_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_27_tpl),
        .in_c1_exe1355_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_28_tpl),
        .in_c1_exe1456_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_29_tpl),
        .in_c1_exe184743_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_16_tpl),
        .in_c1_exe244_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_17_tpl),
        .in_c1_exe345_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_18_tpl),
        .in_c1_exe446_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_19_tpl),
        .in_c1_exe547_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_20_tpl),
        .in_c1_exe648_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_21_tpl),
        .in_c1_exe749_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_22_tpl),
        .in_c1_exe850_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_23_tpl),
        .in_c1_exe951_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_24_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_lm70_conv2d1x1_avm_readdata(in_lm70_conv2d1x1_avm_readdata),
        .in_lm70_conv2d1x1_avm_readdatavalid(in_lm70_conv2d1x1_avm_readdatavalid),
        .in_lm70_conv2d1x1_avm_waitrequest(in_lm70_conv2d1x1_avm_waitrequest),
        .in_lm70_conv2d1x1_avm_writeack(in_lm70_conv2d1x1_avm_writeack),
        .in_lm73_conv2d1x1_avm_readdata(in_lm73_conv2d1x1_avm_readdata),
        .in_lm73_conv2d1x1_avm_readdatavalid(in_lm73_conv2d1x1_avm_readdatavalid),
        .in_lm73_conv2d1x1_avm_waitrequest(in_lm73_conv2d1x1_avm_waitrequest),
        .in_lm73_conv2d1x1_avm_writeack(in_lm73_conv2d1x1_avm_writeack),
        .in_lm_conv2d1x1_avm_readdata(in_lm_conv2d1x1_avm_readdata),
        .in_lm_conv2d1x1_avm_readdatavalid(in_lm_conv2d1x1_avm_readdatavalid),
        .in_lm_conv2d1x1_avm_waitrequest(in_lm_conv2d1x1_avm_waitrequest),
        .in_lm_conv2d1x1_avm_writeack(in_lm_conv2d1x1_avm_writeack),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_conv2d1x1_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_readdata(in_unnamed_conv2d1x113_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x113_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x113_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_writeack(in_unnamed_conv2d1x113_conv2d1x1_avm_writeack),
        .in_valid_in_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_valid),
        .in_lm17742_0_0_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_0_15_tpl),
        .in_lm17742_0_1_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_1_15_tpl),
        .in_lm17742_0_2_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_2_15_tpl),
        .in_lm17742_0_3_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_3_15_tpl),
        .out_c0_exe1974135(bb_conv2d1x1_B7_vunroll_x_out_c0_exe1974135),
        .out_lm70_conv2d1x1_avm_address(bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_address),
        .out_lm70_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_burstcount),
        .out_lm70_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_byteenable),
        .out_lm70_conv2d1x1_avm_enable(bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_enable),
        .out_lm70_conv2d1x1_avm_read(bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_read),
        .out_lm70_conv2d1x1_avm_write(bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_write),
        .out_lm70_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_writedata),
        .out_lm73_conv2d1x1_avm_address(bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_address),
        .out_lm73_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_burstcount),
        .out_lm73_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_byteenable),
        .out_lm73_conv2d1x1_avm_enable(bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_enable),
        .out_lm73_conv2d1x1_avm_read(bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_read),
        .out_lm73_conv2d1x1_avm_write(bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_write),
        .out_lm73_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_writedata),
        .out_lm_conv2d1x1_avm_address(bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_writedata),
        .out_lsu_unnamed_conv2d1x113_o_active(bb_conv2d1x1_B7_vunroll_x_out_lsu_unnamed_conv2d1x113_o_active),
        .out_stall_in_0(bb_conv2d1x1_B7_vunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B7_vunroll_x_out_stall_out_0),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_address(bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount(bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable(bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_enable(bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_read(bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_write(bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_writedata(bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata),
        .out_valid_out_0(bb_conv2d1x1_B7_vunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x(BLACKBOX,291)
    conv2d1x1_bb_B7_sr_0 thebb_conv2d1x1_B7_sr_0_aunroll_vunroll_x (
        .in_i_stall(bb_conv2d1x1_B7_vunroll_x_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B8_vunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe7729),
        .in_i_data_0_15_tpl(bb_conv2d1x1_B8_vunroll_x_out_lm177_0_tpl),
        .in_i_data_1_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe8730),
        .in_i_data_1_15_tpl(bb_conv2d1x1_B8_vunroll_x_out_lm177_1_tpl),
        .in_i_data_2_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe9731),
        .in_i_data_2_15_tpl(bb_conv2d1x1_B8_vunroll_x_out_lm177_2_tpl),
        .in_i_data_3_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe12734),
        .in_i_data_3_15_tpl(bb_conv2d1x1_B8_vunroll_x_out_lm177_3_tpl),
        .in_i_data_4_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe13735),
        .in_i_data_5_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe15737),
        .in_i_data_6_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe17739),
        .in_i_data_7_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe18740),
        .in_i_data_8_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe19741),
        .in_i_data_9_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe20742),
        .in_i_data_10_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe21743),
        .in_i_data_11_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe22744),
        .in_i_data_12_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe23745),
        .in_i_data_13_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe24746),
        .in_i_data_14_tpl(bb_conv2d1x1_B8_vunroll_x_out_c0_exe25747),
        .in_i_data_16_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe1847),
        .in_i_data_17_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe2),
        .in_i_data_18_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe3),
        .in_i_data_19_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe4),
        .in_i_data_20_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe5),
        .in_i_data_21_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe6),
        .in_i_data_22_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe7),
        .in_i_data_23_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe8),
        .in_i_data_24_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe9),
        .in_i_data_25_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe10),
        .in_i_data_26_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe11),
        .in_i_data_27_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe12),
        .in_i_data_28_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe13),
        .in_i_data_29_tpl(bb_conv2d1x1_B8_vunroll_x_out_c1_exe14),
        .out_o_stall(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_0_tpl),
        .out_o_data_0_15_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_0_15_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_1_tpl),
        .out_o_data_1_15_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_1_15_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_2_tpl),
        .out_o_data_2_15_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_2_15_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_3_tpl),
        .out_o_data_3_15_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_3_15_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_14_tpl),
        .out_o_data_16_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_data_29_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv2d1x110_sr(BLACKBOX,182)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going_10_sr thei_llvm_fpga_pipeline_keep_going_conv2d1x110_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_conv2d1x110_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B8_vunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_conv2d1x110_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_conv2d1x110_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B8_vunroll_x(BLACKBOX,289)
    conv2d1x1_bb_B8 thebb_conv2d1x1_B8_vunroll_x (
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_forked17105_pop68312_0(GND_q),
        .in_forked17105_pop68312_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_45_tpl),
        .in_forked17244_0(GND_q),
        .in_forked17244_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_forked59311_0(GND_q),
        .in_forked59311_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_44_tpl),
        .in_forked59_and313_0(GND_q),
        .in_forked59_and313_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_46_tpl),
        .in_forked_0(GND_q),
        .in_forked_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_ij_067_pop51318_0(c_i32_undef106_q),
        .in_ij_067_pop51318_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_52_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_intel_reserved_ffwd_3_0(bb_conv2d1x1_B1_out_intel_reserved_ffwd_3_0),
        .in_lm177_conv2d1x1_avm_readdata(in_lm177_conv2d1x1_avm_readdata),
        .in_lm177_conv2d1x1_avm_readdatavalid(in_lm177_conv2d1x1_avm_readdatavalid),
        .in_lm177_conv2d1x1_avm_waitrequest(in_lm177_conv2d1x1_avm_waitrequest),
        .in_lm177_conv2d1x1_avm_writeack(in_lm177_conv2d1x1_avm_writeack),
        .in_lm178_conv2d1x1_avm_readdata(in_lm178_conv2d1x1_avm_readdata),
        .in_lm178_conv2d1x1_avm_readdatavalid(in_lm178_conv2d1x1_avm_readdatavalid),
        .in_lm178_conv2d1x1_avm_waitrequest(in_lm178_conv2d1x1_avm_waitrequest),
        .in_lm178_conv2d1x1_avm_writeack(in_lm178_conv2d1x1_avm_writeack),
        .in_lm96111_pop73338_0(c_float_undef100_q),
        .in_lm96111_pop73338_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_72_tpl),
        .in_lm96253_0(c_float_undef100_q),
        .in_lm96253_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_mul107_pop69335_0(c_i32_undef106_q),
        .in_mul107_pop69335_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_69_tpl),
        .in_mul21113_pop74339_0(c_i32_undef106_q),
        .in_mul21113_pop74339_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_73_tpl),
        .in_mul21256_0(c_i32_undef106_q),
        .in_mul21256_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_mul247_0(c_i32_undef106_q),
        .in_mul247_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_mul97115_pop75340_0(c_i32_undef106_q),
        .in_mul97115_pop75340_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_74_tpl),
        .in_mul97259_0(c_i32_undef106_q),
        .in_mul97259_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_notcmp19317_0(GND_q),
        .in_notcmp19317_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_51_tpl),
        .in_notcmp24117_pop77341_0(GND_q),
        .in_notcmp24117_pop77341_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_75_tpl),
        .in_notcmp24262_0(GND_q),
        .in_notcmp24262_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_or316_0(GND_q),
        .in_or316_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_50_tpl),
        .in_output_im(in_arg_output_im),
        .in_phi_decision102_xor109_pop72314_0(GND_q),
        .in_phi_decision102_xor109_pop72314_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_47_tpl),
        .in_phi_decision102_xor250_0(GND_q),
        .in_phi_decision102_xor250_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_conv2d1x110_sr_out_o_stall),
        .in_pop12268_0(c_float_undef100_q),
        .in_pop12268_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_29_tpl),
        .in_pop53320_0(c_float_undef100_q),
        .in_pop53320_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_54_tpl),
        .in_pop70336_0(GND_q),
        .in_pop70336_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_70_tpl),
        .in_pop71337_0(GND_q),
        .in_pop71337_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_71_tpl),
        .in_pop76315_0(GND_q),
        .in_pop76315_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_49_tpl),
        .in_spec_select155_0(c_float_undef100_q),
        .in_spec_select155_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_spec_select323161_0(c_float_undef100_q),
        .in_spec_select323161_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_spec_select32363_pop13271_0(c_float_undef100_q),
        .in_spec_select32363_pop13271_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_30_tpl),
        .in_spec_select32364_pop54321_0(c_float_undef100_q),
        .in_spec_select32364_pop54321_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_55_tpl),
        .in_spec_select324167_0(c_float_undef100_q),
        .in_spec_select324167_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_spec_select32466_pop14274_0(c_float_undef100_q),
        .in_spec_select32466_pop14274_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_31_tpl),
        .in_spec_select32467_pop55322_0(c_float_undef100_q),
        .in_spec_select32467_pop55322_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_56_tpl),
        .in_spec_select325173_0(c_float_undef100_q),
        .in_spec_select325173_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_spec_select32569_pop15277_0(c_float_undef100_q),
        .in_spec_select32569_pop15277_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_32_tpl),
        .in_spec_select32570_pop56323_0(c_float_undef100_q),
        .in_spec_select32570_pop56323_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_57_tpl),
        .in_spec_select326179_0(c_float_undef100_q),
        .in_spec_select326179_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_spec_select32672_pop16280_0(c_float_undef100_q),
        .in_spec_select32672_pop16280_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_33_tpl),
        .in_spec_select32673_pop57324_0(c_float_undef100_q),
        .in_spec_select32673_pop57324_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_58_tpl),
        .in_spec_select327185_0(c_float_undef100_q),
        .in_spec_select327185_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_spec_select32775_pop17283_0(c_float_undef100_q),
        .in_spec_select32775_pop17283_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_34_tpl),
        .in_spec_select32776_pop58325_0(c_float_undef100_q),
        .in_spec_select32776_pop58325_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_59_tpl),
        .in_spec_select328191_0(c_float_undef100_q),
        .in_spec_select328191_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_spec_select32878_pop18286_0(c_float_undef100_q),
        .in_spec_select32878_pop18286_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_35_tpl),
        .in_spec_select32879_pop59326_0(c_float_undef100_q),
        .in_spec_select32879_pop59326_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_60_tpl),
        .in_spec_select329197_0(c_float_undef100_q),
        .in_spec_select329197_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_spec_select32981_pop19289_0(c_float_undef100_q),
        .in_spec_select32981_pop19289_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_36_tpl),
        .in_spec_select32982_pop60327_0(c_float_undef100_q),
        .in_spec_select32982_pop60327_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_61_tpl),
        .in_spec_select330203_0(c_float_undef100_q),
        .in_spec_select330203_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_spec_select33084_pop20292_0(c_float_undef100_q),
        .in_spec_select33084_pop20292_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_37_tpl),
        .in_spec_select33085_pop61328_0(c_float_undef100_q),
        .in_spec_select33085_pop61328_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_62_tpl),
        .in_spec_select331209_0(c_float_undef100_q),
        .in_spec_select331209_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_spec_select33187_pop21295_0(c_float_undef100_q),
        .in_spec_select33187_pop21295_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_38_tpl),
        .in_spec_select33188_pop62329_0(c_float_undef100_q),
        .in_spec_select33188_pop62329_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_63_tpl),
        .in_spec_select332215_0(c_float_undef100_q),
        .in_spec_select332215_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_spec_select33290_pop22298_0(c_float_undef100_q),
        .in_spec_select33290_pop22298_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_39_tpl),
        .in_spec_select33291_pop63330_0(c_float_undef100_q),
        .in_spec_select33291_pop63330_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_64_tpl),
        .in_spec_select333221_0(c_float_undef100_q),
        .in_spec_select333221_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_spec_select33393_pop23301_0(c_float_undef100_q),
        .in_spec_select33393_pop23301_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_40_tpl),
        .in_spec_select33394_pop64331_0(c_float_undef100_q),
        .in_spec_select33394_pop64331_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_65_tpl),
        .in_spec_select334227_0(c_float_undef100_q),
        .in_spec_select334227_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_spec_select33496_pop24302_0(c_float_undef100_q),
        .in_spec_select33496_pop24302_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_41_tpl),
        .in_spec_select33497_pop65332_0(c_float_undef100_q),
        .in_spec_select33497_pop65332_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_66_tpl),
        .in_spec_select335100_pop66333_0(c_float_undef100_q),
        .in_spec_select335100_pop66333_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_67_tpl),
        .in_spec_select335233_0(c_float_undef100_q),
        .in_spec_select335233_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_spec_select33599_pop25305_0(c_float_undef100_q),
        .in_spec_select33599_pop25305_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_42_tpl),
        .in_spec_select336102_pop26308_0(c_float_undef100_q),
        .in_spec_select336102_pop26308_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_43_tpl),
        .in_spec_select336103_pop67334_0(c_float_undef100_q),
        .in_spec_select336103_pop67334_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_68_tpl),
        .in_spec_select336239_0(c_float_undef100_q),
        .in_spec_select336239_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_spec_select60_pop11265_0(c_float_undef100_q),
        .in_spec_select60_pop11265_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_28_tpl),
        .in_spec_select61_pop52319_0(c_float_undef100_q),
        .in_spec_select61_pop52319_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_53_tpl),
        .in_stall_in_0(bb_conv2d1x1_B7_sr_0_aunroll_vunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv2d1x114_0(c_float_undef100_q),
        .in_unnamed_conv2d1x114_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv2d1x115_0(GND_q),
        .in_unnamed_conv2d1x115_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_unnamed_conv2d1x116_0(GND_q),
        .in_unnamed_conv2d1x116_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_unnamed_conv2d1x117_0(c_i33_undef114_q),
        .in_unnamed_conv2d1x117_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_unnamed_conv2d1x118_0(GND_q),
        .in_unnamed_conv2d1x118_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_unnamed_conv2d1x119_0(GND_q),
        .in_unnamed_conv2d1x119_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_48_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_conv2d1x110_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe12734(bb_conv2d1x1_B8_vunroll_x_out_c0_exe12734),
        .out_c0_exe13735(bb_conv2d1x1_B8_vunroll_x_out_c0_exe13735),
        .out_c0_exe15737(bb_conv2d1x1_B8_vunroll_x_out_c0_exe15737),
        .out_c0_exe17739(bb_conv2d1x1_B8_vunroll_x_out_c0_exe17739),
        .out_c0_exe18740(bb_conv2d1x1_B8_vunroll_x_out_c0_exe18740),
        .out_c0_exe19741(bb_conv2d1x1_B8_vunroll_x_out_c0_exe19741),
        .out_c0_exe20742(bb_conv2d1x1_B8_vunroll_x_out_c0_exe20742),
        .out_c0_exe21743(bb_conv2d1x1_B8_vunroll_x_out_c0_exe21743),
        .out_c0_exe22744(bb_conv2d1x1_B8_vunroll_x_out_c0_exe22744),
        .out_c0_exe23745(bb_conv2d1x1_B8_vunroll_x_out_c0_exe23745),
        .out_c0_exe24746(bb_conv2d1x1_B8_vunroll_x_out_c0_exe24746),
        .out_c0_exe25747(bb_conv2d1x1_B8_vunroll_x_out_c0_exe25747),
        .out_c0_exe7729(bb_conv2d1x1_B8_vunroll_x_out_c0_exe7729),
        .out_c0_exe8730(bb_conv2d1x1_B8_vunroll_x_out_c0_exe8730),
        .out_c0_exe9731(bb_conv2d1x1_B8_vunroll_x_out_c0_exe9731),
        .out_c1_exe10(bb_conv2d1x1_B8_vunroll_x_out_c1_exe10),
        .out_c1_exe11(bb_conv2d1x1_B8_vunroll_x_out_c1_exe11),
        .out_c1_exe12(bb_conv2d1x1_B8_vunroll_x_out_c1_exe12),
        .out_c1_exe13(bb_conv2d1x1_B8_vunroll_x_out_c1_exe13),
        .out_c1_exe14(bb_conv2d1x1_B8_vunroll_x_out_c1_exe14),
        .out_c1_exe1847(bb_conv2d1x1_B8_vunroll_x_out_c1_exe1847),
        .out_c1_exe2(bb_conv2d1x1_B8_vunroll_x_out_c1_exe2),
        .out_c1_exe3(bb_conv2d1x1_B8_vunroll_x_out_c1_exe3),
        .out_c1_exe4(bb_conv2d1x1_B8_vunroll_x_out_c1_exe4),
        .out_c1_exe5(bb_conv2d1x1_B8_vunroll_x_out_c1_exe5),
        .out_c1_exe6(bb_conv2d1x1_B8_vunroll_x_out_c1_exe6),
        .out_c1_exe7(bb_conv2d1x1_B8_vunroll_x_out_c1_exe7),
        .out_c1_exe8(bb_conv2d1x1_B8_vunroll_x_out_c1_exe8),
        .out_c1_exe9(bb_conv2d1x1_B8_vunroll_x_out_c1_exe9),
        .out_exiting_stall_out(bb_conv2d1x1_B8_vunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d1x1_B8_vunroll_x_out_exiting_valid_out),
        .out_lm177_conv2d1x1_avm_address(bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_address),
        .out_lm177_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_burstcount),
        .out_lm177_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_byteenable),
        .out_lm177_conv2d1x1_avm_enable(bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_enable),
        .out_lm177_conv2d1x1_avm_read(bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_read),
        .out_lm177_conv2d1x1_avm_write(bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_write),
        .out_lm177_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_writedata),
        .out_lm178_conv2d1x1_avm_address(bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_address),
        .out_lm178_conv2d1x1_avm_burstcount(bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_burstcount),
        .out_lm178_conv2d1x1_avm_byteenable(bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_byteenable),
        .out_lm178_conv2d1x1_avm_enable(bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_enable),
        .out_lm178_conv2d1x1_avm_read(bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_read),
        .out_lm178_conv2d1x1_avm_write(bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_write),
        .out_lm178_conv2d1x1_avm_writedata(bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d1x1_B8_vunroll_x_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv2d1x1_B8_vunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B8_vunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B8_vunroll_x_out_stall_out_1),
        .out_valid_in_0(bb_conv2d1x1_B8_vunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B8_vunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B8_vunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .out_lm177_0_tpl(bb_conv2d1x1_B8_vunroll_x_out_lm177_0_tpl),
        .out_lm177_1_tpl(bb_conv2d1x1_B8_vunroll_x_out_lm177_1_tpl),
        .out_lm177_2_tpl(bb_conv2d1x1_B8_vunroll_x_out_lm177_2_tpl),
        .out_lm177_3_tpl(bb_conv2d1x1_B8_vunroll_x_out_lm177_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B8_sr_1_aunroll_x(BLACKBOX,290)
    conv2d1x1_bb_B8_sr_1 thebb_conv2d1x1_B8_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B8_vunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x11_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B5_out_c0_exe33528),
        .in_i_data_2_tpl(bb_conv2d1x1_B5_out_c0_exe34529),
        .in_i_data_3_tpl(bb_conv2d1x1_B5_out_c0_exe35530),
        .in_i_data_4_tpl(bb_conv2d1x1_B5_out_c0_exe36531),
        .in_i_data_5_tpl(bb_conv2d1x1_B5_out_c0_exe37532),
        .in_i_data_6_tpl(bb_conv2d1x1_B5_out_c0_exe38533),
        .in_i_data_7_tpl(bb_conv2d1x1_B5_out_c0_exe39534),
        .in_i_data_8_tpl(bb_conv2d1x1_B5_out_c0_exe40535),
        .in_i_data_9_tpl(bb_conv2d1x1_B5_out_c0_exe41536),
        .in_i_data_10_tpl(bb_conv2d1x1_B5_out_c0_exe42537),
        .in_i_data_11_tpl(bb_conv2d1x1_B5_out_c0_exe43538),
        .in_i_data_12_tpl(bb_conv2d1x1_B5_out_c0_exe44539),
        .in_i_data_13_tpl(bb_conv2d1x1_B5_out_c0_exe45),
        .in_i_data_14_tpl(bb_conv2d1x1_B5_out_c0_exe46),
        .in_i_data_15_tpl(bb_conv2d1x1_B5_out_c0_exe47),
        .in_i_data_16_tpl(bb_conv2d1x1_B5_out_c0_exe48),
        .in_i_data_17_tpl(bb_conv2d1x1_B5_out_c0_exe49),
        .in_i_data_18_tpl(bb_conv2d1x1_B5_out_c0_exe50),
        .in_i_data_19_tpl(bb_conv2d1x1_B5_out_c0_exe51),
        .in_i_data_20_tpl(bb_conv2d1x1_B5_out_c0_exe52),
        .in_i_data_21_tpl(bb_conv2d1x1_B5_out_c0_exe53),
        .in_i_data_22_tpl(bb_conv2d1x1_B5_out_c0_exe54),
        .in_i_data_23_tpl(bb_conv2d1x1_B5_out_c0_exe55),
        .in_i_data_24_tpl(bb_conv2d1x1_B5_out_c0_exe56),
        .in_i_data_25_tpl(bb_conv2d1x1_B5_out_c0_exe57),
        .in_i_data_26_tpl(bb_conv2d1x1_B5_out_c0_exe58),
        .in_i_data_27_tpl(bb_conv2d1x1_B5_out_c0_exe59),
        .in_i_data_28_tpl(bb_conv2d1x1_B5_out_c0_exe60),
        .in_i_data_29_tpl(bb_conv2d1x1_B5_out_c0_exe61),
        .in_i_data_30_tpl(bb_conv2d1x1_B5_out_c0_exe62),
        .in_i_data_31_tpl(bb_conv2d1x1_B5_out_c0_exe63),
        .in_i_data_32_tpl(bb_conv2d1x1_B5_out_c0_exe64),
        .in_i_data_33_tpl(bb_conv2d1x1_B5_out_c0_exe65),
        .in_i_data_34_tpl(bb_conv2d1x1_B5_out_c0_exe66),
        .in_i_data_35_tpl(bb_conv2d1x1_B5_out_c0_exe67),
        .in_i_data_36_tpl(bb_conv2d1x1_B5_out_c0_exe68),
        .in_i_data_37_tpl(bb_conv2d1x1_B5_out_c0_exe69),
        .in_i_data_38_tpl(bb_conv2d1x1_B5_out_c0_exe70),
        .in_i_data_39_tpl(bb_conv2d1x1_B5_out_c0_exe71),
        .in_i_data_40_tpl(bb_conv2d1x1_B5_out_c0_exe72),
        .in_i_data_41_tpl(bb_conv2d1x1_B5_out_c0_exe73),
        .in_i_data_42_tpl(bb_conv2d1x1_B5_out_c0_exe74),
        .in_i_data_43_tpl(bb_conv2d1x1_B5_out_c0_exe75),
        .in_i_data_44_tpl(bb_conv2d1x1_B5_out_c0_exe32527),
        .in_i_data_45_tpl(bb_conv2d1x1_B5_out_c0_exe1496),
        .in_i_data_46_tpl(bb_conv2d1x1_B5_out_c0_exe2497),
        .in_i_data_47_tpl(bb_conv2d1x1_B5_out_c0_exe3498),
        .in_i_data_48_tpl(bb_conv2d1x1_B5_out_c0_exe4499),
        .in_i_data_49_tpl(bb_conv2d1x1_B5_out_c0_exe5500),
        .in_i_data_50_tpl(bb_conv2d1x1_B5_out_c0_exe6501),
        .in_i_data_51_tpl(bb_conv2d1x1_B5_out_c0_exe7502),
        .in_i_data_52_tpl(bb_conv2d1x1_B5_out_c0_exe8503),
        .in_i_data_53_tpl(bb_conv2d1x1_B5_out_c0_exe9504),
        .in_i_data_54_tpl(bb_conv2d1x1_B5_out_c0_exe10505),
        .in_i_data_55_tpl(bb_conv2d1x1_B5_out_c0_exe11506),
        .in_i_data_56_tpl(bb_conv2d1x1_B5_out_c0_exe12507),
        .in_i_data_57_tpl(bb_conv2d1x1_B5_out_c0_exe13508),
        .in_i_data_58_tpl(bb_conv2d1x1_B5_out_c0_exe14509),
        .in_i_data_59_tpl(bb_conv2d1x1_B5_out_c0_exe15510),
        .in_i_data_60_tpl(bb_conv2d1x1_B5_out_c0_exe16511),
        .in_i_data_61_tpl(bb_conv2d1x1_B5_out_c0_exe17512),
        .in_i_data_62_tpl(bb_conv2d1x1_B5_out_c0_exe18513),
        .in_i_data_63_tpl(bb_conv2d1x1_B5_out_c0_exe19514),
        .in_i_data_64_tpl(bb_conv2d1x1_B5_out_c0_exe20515),
        .in_i_data_65_tpl(bb_conv2d1x1_B5_out_c0_exe21516),
        .in_i_data_66_tpl(bb_conv2d1x1_B5_out_c0_exe22517),
        .in_i_data_67_tpl(bb_conv2d1x1_B5_out_c0_exe23518),
        .in_i_data_68_tpl(bb_conv2d1x1_B5_out_c0_exe24519),
        .in_i_data_69_tpl(bb_conv2d1x1_B5_out_c0_exe25520),
        .in_i_data_70_tpl(bb_conv2d1x1_B5_out_c0_exe26521),
        .in_i_data_71_tpl(bb_conv2d1x1_B5_out_c0_exe27522),
        .in_i_data_72_tpl(bb_conv2d1x1_B5_out_c0_exe28523),
        .in_i_data_73_tpl(bb_conv2d1x1_B5_out_c0_exe29524),
        .in_i_data_74_tpl(bb_conv2d1x1_B5_out_c0_exe30525),
        .in_i_data_75_tpl(bb_conv2d1x1_B5_out_c0_exe31526),
        .out_o_stall(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_39_tpl),
        .out_o_data_40_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_40_tpl),
        .out_o_data_41_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_41_tpl),
        .out_o_data_42_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_42_tpl),
        .out_o_data_43_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_43_tpl),
        .out_o_data_44_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_44_tpl),
        .out_o_data_45_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_45_tpl),
        .out_o_data_46_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_46_tpl),
        .out_o_data_47_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_47_tpl),
        .out_o_data_48_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_48_tpl),
        .out_o_data_49_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_49_tpl),
        .out_o_data_50_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_50_tpl),
        .out_o_data_51_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_51_tpl),
        .out_o_data_52_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_52_tpl),
        .out_o_data_53_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_53_tpl),
        .out_o_data_54_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_54_tpl),
        .out_o_data_55_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_55_tpl),
        .out_o_data_56_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_56_tpl),
        .out_o_data_57_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_57_tpl),
        .out_o_data_58_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_58_tpl),
        .out_o_data_59_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_59_tpl),
        .out_o_data_60_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_60_tpl),
        .out_o_data_61_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_61_tpl),
        .out_o_data_62_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_62_tpl),
        .out_o_data_63_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_63_tpl),
        .out_o_data_64_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_64_tpl),
        .out_o_data_65_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_65_tpl),
        .out_o_data_66_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_66_tpl),
        .out_o_data_67_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_67_tpl),
        .out_o_data_68_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_68_tpl),
        .out_o_data_69_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_69_tpl),
        .out_o_data_70_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_70_tpl),
        .out_o_data_71_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_71_tpl),
        .out_o_data_72_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_72_tpl),
        .out_o_data_73_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_73_tpl),
        .out_o_data_74_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_74_tpl),
        .out_o_data_75_tpl(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_data_75_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x11(BLACKBOX,229)
    conv2d1x1_loop_limiter_1 theloop_limiter_conv2d1x11 (
        .in_i_stall(bb_conv2d1x1_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d1x1_B8_vunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_conv2d1x1_B5_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d1x1_B8_vunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d1x11_out_o_stall),
        .out_o_valid(loop_limiter_conv2d1x11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going21_conv2d1x16_sr(BLACKBOX,176)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going21_6_sr thei_llvm_fpga_pipeline_keep_going21_conv2d1x16_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef106(CONSTANT,160)
    assign c_i32_undef106_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_conv2d1x1_B5(BLACKBOX,7)
    conv2d1x1_bb_B5 thebb_conv2d1x1_B5 (
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_forked17242_0(GND_q),
        .in_forked17242_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_forked59_0(GND_q),
        .in_forked59_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_lm96251_0(c_float_undef100_q),
        .in_lm96251_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_mul21254_0(c_i32_undef106_q),
        .in_mul21254_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_mul245_0(c_i32_undef106_q),
        .in_mul245_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_mul97257_0(c_i32_undef106_q),
        .in_mul97257_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_notcmp24260_0(GND_q),
        .in_notcmp24260_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_output_im(in_arg_output_im),
        .in_phi_decision102_xor248_0(GND_q),
        .in_phi_decision102_xor248_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_sr_out_o_stall),
        .in_pop12266_0(c_float_undef100_q),
        .in_pop12266_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_29_tpl),
        .in_spec_select156_0(c_float_undef100_q),
        .in_spec_select156_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_spec_select323162_0(c_float_undef100_q),
        .in_spec_select323162_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_spec_select32363_pop13269_0(c_float_undef100_q),
        .in_spec_select32363_pop13269_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_30_tpl),
        .in_spec_select324168_0(c_float_undef100_q),
        .in_spec_select324168_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_spec_select32466_pop14272_0(c_float_undef100_q),
        .in_spec_select32466_pop14272_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_31_tpl),
        .in_spec_select325174_0(c_float_undef100_q),
        .in_spec_select325174_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_spec_select32569_pop15275_0(c_float_undef100_q),
        .in_spec_select32569_pop15275_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_32_tpl),
        .in_spec_select326180_0(c_float_undef100_q),
        .in_spec_select326180_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_spec_select32672_pop16278_0(c_float_undef100_q),
        .in_spec_select32672_pop16278_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_33_tpl),
        .in_spec_select327186_0(c_float_undef100_q),
        .in_spec_select327186_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_spec_select32775_pop17281_0(c_float_undef100_q),
        .in_spec_select32775_pop17281_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_34_tpl),
        .in_spec_select328192_0(c_float_undef100_q),
        .in_spec_select328192_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_spec_select32878_pop18284_0(c_float_undef100_q),
        .in_spec_select32878_pop18284_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_35_tpl),
        .in_spec_select329198_0(c_float_undef100_q),
        .in_spec_select329198_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_spec_select32981_pop19287_0(c_float_undef100_q),
        .in_spec_select32981_pop19287_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_36_tpl),
        .in_spec_select330204_0(c_float_undef100_q),
        .in_spec_select330204_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_spec_select33084_pop20290_0(c_float_undef100_q),
        .in_spec_select33084_pop20290_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_37_tpl),
        .in_spec_select331210_0(c_float_undef100_q),
        .in_spec_select331210_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_spec_select33187_pop21293_0(c_float_undef100_q),
        .in_spec_select33187_pop21293_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_38_tpl),
        .in_spec_select332216_0(c_float_undef100_q),
        .in_spec_select332216_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_spec_select33290_pop22296_0(c_float_undef100_q),
        .in_spec_select33290_pop22296_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_39_tpl),
        .in_spec_select333222_0(c_float_undef100_q),
        .in_spec_select333222_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_spec_select33393_pop23299_0(c_float_undef100_q),
        .in_spec_select33393_pop23299_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_40_tpl),
        .in_spec_select334228_0(c_float_undef100_q),
        .in_spec_select334228_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_spec_select33496_pop24303_0(c_float_undef100_q),
        .in_spec_select33496_pop24303_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_41_tpl),
        .in_spec_select335234_0(c_float_undef100_q),
        .in_spec_select335234_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_spec_select33599_pop25306_0(c_float_undef100_q),
        .in_spec_select33599_pop25306_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_42_tpl),
        .in_spec_select336102_pop26309_0(c_float_undef100_q),
        .in_spec_select336102_pop26309_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_43_tpl),
        .in_spec_select336240_0(c_float_undef100_q),
        .in_spec_select336240_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_spec_select60_pop11263_0(c_float_undef100_q),
        .in_spec_select60_pop11263_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_28_tpl),
        .in_stall_in_0(loop_limiter_conv2d1x11_out_o_stall),
        .in_unnamed_conv2d1x110_0(GND_q),
        .in_unnamed_conv2d1x110_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_unnamed_conv2d1x111_0(c_i33_undef114_q),
        .in_unnamed_conv2d1x111_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_unnamed_conv2d1x112_0(GND_q),
        .in_unnamed_conv2d1x112_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_unnamed_conv2d1x18_0(c_float_undef100_q),
        .in_unnamed_conv2d1x18_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv2d1x19_0(GND_q),
        .in_unnamed_conv2d1x19_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10505(bb_conv2d1x1_B5_out_c0_exe10505),
        .out_c0_exe11506(bb_conv2d1x1_B5_out_c0_exe11506),
        .out_c0_exe12507(bb_conv2d1x1_B5_out_c0_exe12507),
        .out_c0_exe13508(bb_conv2d1x1_B5_out_c0_exe13508),
        .out_c0_exe14509(bb_conv2d1x1_B5_out_c0_exe14509),
        .out_c0_exe1496(bb_conv2d1x1_B5_out_c0_exe1496),
        .out_c0_exe15510(bb_conv2d1x1_B5_out_c0_exe15510),
        .out_c0_exe16511(bb_conv2d1x1_B5_out_c0_exe16511),
        .out_c0_exe17512(bb_conv2d1x1_B5_out_c0_exe17512),
        .out_c0_exe18513(bb_conv2d1x1_B5_out_c0_exe18513),
        .out_c0_exe19514(bb_conv2d1x1_B5_out_c0_exe19514),
        .out_c0_exe20515(bb_conv2d1x1_B5_out_c0_exe20515),
        .out_c0_exe21516(bb_conv2d1x1_B5_out_c0_exe21516),
        .out_c0_exe22517(bb_conv2d1x1_B5_out_c0_exe22517),
        .out_c0_exe23518(bb_conv2d1x1_B5_out_c0_exe23518),
        .out_c0_exe24519(bb_conv2d1x1_B5_out_c0_exe24519),
        .out_c0_exe2497(bb_conv2d1x1_B5_out_c0_exe2497),
        .out_c0_exe25520(bb_conv2d1x1_B5_out_c0_exe25520),
        .out_c0_exe26521(bb_conv2d1x1_B5_out_c0_exe26521),
        .out_c0_exe27522(bb_conv2d1x1_B5_out_c0_exe27522),
        .out_c0_exe28523(bb_conv2d1x1_B5_out_c0_exe28523),
        .out_c0_exe29524(bb_conv2d1x1_B5_out_c0_exe29524),
        .out_c0_exe30525(bb_conv2d1x1_B5_out_c0_exe30525),
        .out_c0_exe31526(bb_conv2d1x1_B5_out_c0_exe31526),
        .out_c0_exe32527(bb_conv2d1x1_B5_out_c0_exe32527),
        .out_c0_exe33528(bb_conv2d1x1_B5_out_c0_exe33528),
        .out_c0_exe34529(bb_conv2d1x1_B5_out_c0_exe34529),
        .out_c0_exe3498(bb_conv2d1x1_B5_out_c0_exe3498),
        .out_c0_exe35530(bb_conv2d1x1_B5_out_c0_exe35530),
        .out_c0_exe36531(bb_conv2d1x1_B5_out_c0_exe36531),
        .out_c0_exe37532(bb_conv2d1x1_B5_out_c0_exe37532),
        .out_c0_exe38533(bb_conv2d1x1_B5_out_c0_exe38533),
        .out_c0_exe39534(bb_conv2d1x1_B5_out_c0_exe39534),
        .out_c0_exe40535(bb_conv2d1x1_B5_out_c0_exe40535),
        .out_c0_exe41536(bb_conv2d1x1_B5_out_c0_exe41536),
        .out_c0_exe42537(bb_conv2d1x1_B5_out_c0_exe42537),
        .out_c0_exe43538(bb_conv2d1x1_B5_out_c0_exe43538),
        .out_c0_exe44539(bb_conv2d1x1_B5_out_c0_exe44539),
        .out_c0_exe4499(bb_conv2d1x1_B5_out_c0_exe4499),
        .out_c0_exe45(bb_conv2d1x1_B5_out_c0_exe45),
        .out_c0_exe46(bb_conv2d1x1_B5_out_c0_exe46),
        .out_c0_exe47(bb_conv2d1x1_B5_out_c0_exe47),
        .out_c0_exe48(bb_conv2d1x1_B5_out_c0_exe48),
        .out_c0_exe49(bb_conv2d1x1_B5_out_c0_exe49),
        .out_c0_exe50(bb_conv2d1x1_B5_out_c0_exe50),
        .out_c0_exe51(bb_conv2d1x1_B5_out_c0_exe51),
        .out_c0_exe52(bb_conv2d1x1_B5_out_c0_exe52),
        .out_c0_exe53(bb_conv2d1x1_B5_out_c0_exe53),
        .out_c0_exe54(bb_conv2d1x1_B5_out_c0_exe54),
        .out_c0_exe55(bb_conv2d1x1_B5_out_c0_exe55),
        .out_c0_exe5500(bb_conv2d1x1_B5_out_c0_exe5500),
        .out_c0_exe56(bb_conv2d1x1_B5_out_c0_exe56),
        .out_c0_exe57(bb_conv2d1x1_B5_out_c0_exe57),
        .out_c0_exe58(bb_conv2d1x1_B5_out_c0_exe58),
        .out_c0_exe59(bb_conv2d1x1_B5_out_c0_exe59),
        .out_c0_exe60(bb_conv2d1x1_B5_out_c0_exe60),
        .out_c0_exe61(bb_conv2d1x1_B5_out_c0_exe61),
        .out_c0_exe62(bb_conv2d1x1_B5_out_c0_exe62),
        .out_c0_exe63(bb_conv2d1x1_B5_out_c0_exe63),
        .out_c0_exe64(bb_conv2d1x1_B5_out_c0_exe64),
        .out_c0_exe65(bb_conv2d1x1_B5_out_c0_exe65),
        .out_c0_exe6501(bb_conv2d1x1_B5_out_c0_exe6501),
        .out_c0_exe66(bb_conv2d1x1_B5_out_c0_exe66),
        .out_c0_exe67(bb_conv2d1x1_B5_out_c0_exe67),
        .out_c0_exe68(bb_conv2d1x1_B5_out_c0_exe68),
        .out_c0_exe69(bb_conv2d1x1_B5_out_c0_exe69),
        .out_c0_exe70(bb_conv2d1x1_B5_out_c0_exe70),
        .out_c0_exe71(bb_conv2d1x1_B5_out_c0_exe71),
        .out_c0_exe72(bb_conv2d1x1_B5_out_c0_exe72),
        .out_c0_exe73(bb_conv2d1x1_B5_out_c0_exe73),
        .out_c0_exe74(bb_conv2d1x1_B5_out_c0_exe74),
        .out_c0_exe75(bb_conv2d1x1_B5_out_c0_exe75),
        .out_c0_exe7502(bb_conv2d1x1_B5_out_c0_exe7502),
        .out_c0_exe8503(bb_conv2d1x1_B5_out_c0_exe8503),
        .out_c0_exe9504(bb_conv2d1x1_B5_out_c0_exe9504),
        .out_exiting_stall_out(bb_conv2d1x1_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2d1x1_B5_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_conv2d1x1_B5_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2d1x1_B5_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B5_out_stall_out_1),
        .out_valid_in_0(bb_conv2d1x1_B5_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B5_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B5_sr_1_aunroll_x(BLACKBOX,286)
    conv2d1x1_bb_B5_sr_1 thebb_conv2d1x1_B5_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_conv2d1x10_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B4_out_c0_exe29),
        .in_i_data_2_tpl(bb_conv2d1x1_B4_out_c0_exe30),
        .in_i_data_3_tpl(bb_conv2d1x1_B4_out_c0_exe31),
        .in_i_data_4_tpl(bb_conv2d1x1_B4_out_c0_exe32),
        .in_i_data_5_tpl(bb_conv2d1x1_B4_out_c0_exe33),
        .in_i_data_6_tpl(bb_conv2d1x1_B4_out_c0_exe34),
        .in_i_data_7_tpl(bb_conv2d1x1_B4_out_c0_exe35),
        .in_i_data_8_tpl(bb_conv2d1x1_B4_out_c0_exe36),
        .in_i_data_9_tpl(bb_conv2d1x1_B4_out_c0_exe37),
        .in_i_data_10_tpl(bb_conv2d1x1_B4_out_c0_exe38),
        .in_i_data_11_tpl(bb_conv2d1x1_B4_out_c0_exe39),
        .in_i_data_12_tpl(bb_conv2d1x1_B4_out_c0_exe40),
        .in_i_data_13_tpl(bb_conv2d1x1_B4_out_c0_exe41),
        .in_i_data_14_tpl(bb_conv2d1x1_B4_out_c0_exe42),
        .in_i_data_15_tpl(bb_conv2d1x1_B4_out_c0_exe43),
        .in_i_data_16_tpl(bb_conv2d1x1_B4_out_c0_exe44),
        .in_i_data_17_tpl(bb_conv2d1x1_B4_out_c0_exe28),
        .in_i_data_18_tpl(bb_conv2d1x1_B4_out_c0_exe2395),
        .in_i_data_19_tpl(bb_conv2d1x1_B4_out_c0_exe3396),
        .in_i_data_20_tpl(bb_conv2d1x1_B4_out_c0_exe4397),
        .in_i_data_21_tpl(bb_conv2d1x1_B4_out_c0_exe5398),
        .in_i_data_22_tpl(bb_conv2d1x1_B4_out_c0_exe6399),
        .in_i_data_23_tpl(bb_conv2d1x1_B4_out_lm96),
        .in_i_data_24_tpl(bb_conv2d1x1_B4_out_c0_exe8401),
        .in_i_data_25_tpl(bb_conv2d1x1_B4_out_c0_exe9402),
        .in_i_data_26_tpl(bb_conv2d1x1_B4_out_c0_exe10403),
        .in_i_data_27_tpl(bb_conv2d1x1_B4_out_c0_exe11404),
        .in_i_data_28_tpl(bb_conv2d1x1_B4_out_c0_exe12405),
        .in_i_data_29_tpl(bb_conv2d1x1_B4_out_c0_exe13406),
        .in_i_data_30_tpl(bb_conv2d1x1_B4_out_c0_exe14407),
        .in_i_data_31_tpl(bb_conv2d1x1_B4_out_c0_exe15408),
        .in_i_data_32_tpl(bb_conv2d1x1_B4_out_c0_exe16409),
        .in_i_data_33_tpl(bb_conv2d1x1_B4_out_c0_exe17410),
        .in_i_data_34_tpl(bb_conv2d1x1_B4_out_c0_exe18411),
        .in_i_data_35_tpl(bb_conv2d1x1_B4_out_c0_exe19),
        .in_i_data_36_tpl(bb_conv2d1x1_B4_out_c0_exe20),
        .in_i_data_37_tpl(bb_conv2d1x1_B4_out_c0_exe21),
        .in_i_data_38_tpl(bb_conv2d1x1_B4_out_c0_exe22),
        .in_i_data_39_tpl(bb_conv2d1x1_B4_out_c0_exe23),
        .in_i_data_40_tpl(bb_conv2d1x1_B4_out_c0_exe24),
        .in_i_data_41_tpl(bb_conv2d1x1_B4_out_c0_exe25),
        .in_i_data_42_tpl(bb_conv2d1x1_B4_out_c0_exe26),
        .in_i_data_43_tpl(bb_conv2d1x1_B4_out_c0_exe27),
        .out_o_stall(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_39_tpl),
        .out_o_data_40_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_40_tpl),
        .out_o_data_41_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_41_tpl),
        .out_o_data_42_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_42_tpl),
        .out_o_data_43_tpl(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_data_43_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv2d1x10(BLACKBOX,228)
    conv2d1x1_loop_limiter_0 theloop_limiter_conv2d1x10 (
        .in_i_stall(bb_conv2d1x1_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2d1x1_B5_out_exiting_stall_out),
        .in_i_valid(bb_conv2d1x1_B4_out_valid_out_0),
        .in_i_valid_exit(bb_conv2d1x1_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv2d1x10_out_o_stall),
        .out_o_valid(loop_limiter_conv2d1x10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_undef100(FLOATCONSTANT,9)
    assign c_float_undef100_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going25_conv2d1x14_sr(BLACKBOX,178)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going25_4_sr thei_llvm_fpga_pipeline_keep_going25_conv2d1x14_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4(BLACKBOX,6)
    conv2d1x1_bb_B4 thebb_conv2d1x1_B4 (
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_weight(in_arg_filter_weight),
        .in_flush(in_start),
        .in_forked17_0(GND_q),
        .in_forked17_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_intel_reserved_ffwd_0_0(bb_conv2d1x1_B1_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_conv2d1x1_B1_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_conv2d1x1_B1_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(bb_conv2d1x1_B1_out_intel_reserved_ffwd_4_0),
        .in_lm96_conv2d1x1_avm_readdata(in_lm96_conv2d1x1_avm_readdata),
        .in_lm96_conv2d1x1_avm_readdatavalid(in_lm96_conv2d1x1_avm_readdatavalid),
        .in_lm96_conv2d1x1_avm_waitrequest(in_lm96_conv2d1x1_avm_waitrequest),
        .in_lm96_conv2d1x1_avm_writeack(in_lm96_conv2d1x1_avm_writeack),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_sr_out_o_stall),
        .in_spec_select152_0(c_float_undef100_q),
        .in_spec_select152_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_spec_select323158_0(c_float_undef100_q),
        .in_spec_select323158_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_spec_select324164_0(c_float_undef100_q),
        .in_spec_select324164_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_spec_select325170_0(c_float_undef100_q),
        .in_spec_select325170_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_spec_select326176_0(c_float_undef100_q),
        .in_spec_select326176_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_spec_select327182_0(c_float_undef100_q),
        .in_spec_select327182_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_spec_select328188_0(c_float_undef100_q),
        .in_spec_select328188_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_spec_select329194_0(c_float_undef100_q),
        .in_spec_select329194_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_spec_select330200_0(c_float_undef100_q),
        .in_spec_select330200_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_spec_select331206_0(c_float_undef100_q),
        .in_spec_select331206_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_spec_select332212_0(c_float_undef100_q),
        .in_spec_select332212_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_spec_select333218_0(c_float_undef100_q),
        .in_spec_select333218_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_spec_select334224_0(c_float_undef100_q),
        .in_spec_select334224_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_spec_select335230_0(c_float_undef100_q),
        .in_spec_select335230_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_spec_select336236_0(c_float_undef100_q),
        .in_spec_select336236_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_stall_in_0(loop_limiter_conv2d1x10_out_o_stall),
        .in_unnamed_conv2d1x16_0(c_float_undef100_q),
        .in_unnamed_conv2d1x16_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going25_conv2d1x14_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10403(bb_conv2d1x1_B4_out_c0_exe10403),
        .out_c0_exe11404(bb_conv2d1x1_B4_out_c0_exe11404),
        .out_c0_exe12405(bb_conv2d1x1_B4_out_c0_exe12405),
        .out_c0_exe13406(bb_conv2d1x1_B4_out_c0_exe13406),
        .out_c0_exe14407(bb_conv2d1x1_B4_out_c0_exe14407),
        .out_c0_exe15408(bb_conv2d1x1_B4_out_c0_exe15408),
        .out_c0_exe16409(bb_conv2d1x1_B4_out_c0_exe16409),
        .out_c0_exe17410(bb_conv2d1x1_B4_out_c0_exe17410),
        .out_c0_exe18411(bb_conv2d1x1_B4_out_c0_exe18411),
        .out_c0_exe19(bb_conv2d1x1_B4_out_c0_exe19),
        .out_c0_exe20(bb_conv2d1x1_B4_out_c0_exe20),
        .out_c0_exe21(bb_conv2d1x1_B4_out_c0_exe21),
        .out_c0_exe22(bb_conv2d1x1_B4_out_c0_exe22),
        .out_c0_exe23(bb_conv2d1x1_B4_out_c0_exe23),
        .out_c0_exe2395(bb_conv2d1x1_B4_out_c0_exe2395),
        .out_c0_exe24(bb_conv2d1x1_B4_out_c0_exe24),
        .out_c0_exe25(bb_conv2d1x1_B4_out_c0_exe25),
        .out_c0_exe26(bb_conv2d1x1_B4_out_c0_exe26),
        .out_c0_exe27(bb_conv2d1x1_B4_out_c0_exe27),
        .out_c0_exe28(bb_conv2d1x1_B4_out_c0_exe28),
        .out_c0_exe29(bb_conv2d1x1_B4_out_c0_exe29),
        .out_c0_exe30(bb_conv2d1x1_B4_out_c0_exe30),
        .out_c0_exe31(bb_conv2d1x1_B4_out_c0_exe31),
        .out_c0_exe32(bb_conv2d1x1_B4_out_c0_exe32),
        .out_c0_exe33(bb_conv2d1x1_B4_out_c0_exe33),
        .out_c0_exe3396(bb_conv2d1x1_B4_out_c0_exe3396),
        .out_c0_exe34(bb_conv2d1x1_B4_out_c0_exe34),
        .out_c0_exe35(bb_conv2d1x1_B4_out_c0_exe35),
        .out_c0_exe36(bb_conv2d1x1_B4_out_c0_exe36),
        .out_c0_exe37(bb_conv2d1x1_B4_out_c0_exe37),
        .out_c0_exe38(bb_conv2d1x1_B4_out_c0_exe38),
        .out_c0_exe39(bb_conv2d1x1_B4_out_c0_exe39),
        .out_c0_exe40(bb_conv2d1x1_B4_out_c0_exe40),
        .out_c0_exe41(bb_conv2d1x1_B4_out_c0_exe41),
        .out_c0_exe42(bb_conv2d1x1_B4_out_c0_exe42),
        .out_c0_exe43(bb_conv2d1x1_B4_out_c0_exe43),
        .out_c0_exe4397(bb_conv2d1x1_B4_out_c0_exe4397),
        .out_c0_exe44(bb_conv2d1x1_B4_out_c0_exe44),
        .out_c0_exe5398(bb_conv2d1x1_B4_out_c0_exe5398),
        .out_c0_exe6399(bb_conv2d1x1_B4_out_c0_exe6399),
        .out_c0_exe8401(bb_conv2d1x1_B4_out_c0_exe8401),
        .out_c0_exe9402(bb_conv2d1x1_B4_out_c0_exe9402),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_lm96(bb_conv2d1x1_B4_out_lm96),
        .out_lm96_conv2d1x1_avm_address(bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_address),
        .out_lm96_conv2d1x1_avm_burstcount(bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_burstcount),
        .out_lm96_conv2d1x1_avm_byteenable(bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_byteenable),
        .out_lm96_conv2d1x1_avm_enable(bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_enable),
        .out_lm96_conv2d1x1_avm_read(bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_read),
        .out_lm96_conv2d1x1_avm_write(bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_write),
        .out_lm96_conv2d1x1_avm_writedata(bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_writedata),
        .out_pipeline_valid_out(bb_conv2d1x1_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2d1x1_B4_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B4_out_stall_out_1),
        .out_valid_in_0(bb_conv2d1x1_B4_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B4_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B4_sr_1_aunroll_x(BLACKBOX,285)
    conv2d1x1_bb_B4_sr_1 thebb_conv2d1x1_B4_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B4_out_stall_out_1),
        .in_i_valid(bb_conv2d1x1_B1_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2d1x1_B1_out_c0_exe210),
        .in_i_data_2_tpl(bb_conv2d1x1_B1_out_c0_exe311),
        .in_i_data_3_tpl(bb_conv2d1x1_B1_out_c0_exe412),
        .in_i_data_4_tpl(bb_conv2d1x1_B1_out_c0_exe513),
        .in_i_data_5_tpl(bb_conv2d1x1_B1_out_c0_exe614),
        .in_i_data_6_tpl(bb_conv2d1x1_B1_out_c0_exe715),
        .in_i_data_7_tpl(bb_conv2d1x1_B1_out_c0_exe816),
        .in_i_data_8_tpl(bb_conv2d1x1_B1_out_c0_exe917),
        .in_i_data_9_tpl(bb_conv2d1x1_B1_out_c0_exe1018),
        .in_i_data_10_tpl(bb_conv2d1x1_B1_out_c0_exe1119),
        .in_i_data_11_tpl(bb_conv2d1x1_B1_out_c0_exe1220),
        .in_i_data_12_tpl(bb_conv2d1x1_B1_out_c0_exe1321),
        .in_i_data_13_tpl(bb_conv2d1x1_B1_out_c0_exe1422),
        .in_i_data_14_tpl(bb_conv2d1x1_B1_out_c0_exe1523),
        .in_i_data_15_tpl(bb_conv2d1x1_B1_out_c0_exe1624),
        .in_i_data_16_tpl(bb_conv2d1x1_B1_out_c0_exe1725),
        .out_o_stall(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_data_16_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1(BLACKBOX,3)
    conv2d1x1_bb_B1 thebb_conv2d1x1_B1 (
        .in_c0_exe1018_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1119_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1220_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1321_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1422_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe1523_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe1624_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe1725_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe210_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe311_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe412_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe513_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe614_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe715_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe816_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe917_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_size(in_arg_filter_size),
        .in_filter_weight(in_arg_filter_weight),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_im(in_arg_output_im),
        .in_stall_in_0(bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1018(bb_conv2d1x1_B1_out_c0_exe1018),
        .out_c0_exe1119(bb_conv2d1x1_B1_out_c0_exe1119),
        .out_c0_exe1220(bb_conv2d1x1_B1_out_c0_exe1220),
        .out_c0_exe1321(bb_conv2d1x1_B1_out_c0_exe1321),
        .out_c0_exe1422(bb_conv2d1x1_B1_out_c0_exe1422),
        .out_c0_exe1523(bb_conv2d1x1_B1_out_c0_exe1523),
        .out_c0_exe1624(bb_conv2d1x1_B1_out_c0_exe1624),
        .out_c0_exe1725(bb_conv2d1x1_B1_out_c0_exe1725),
        .out_c0_exe210(bb_conv2d1x1_B1_out_c0_exe210),
        .out_c0_exe311(bb_conv2d1x1_B1_out_c0_exe311),
        .out_c0_exe412(bb_conv2d1x1_B1_out_c0_exe412),
        .out_c0_exe513(bb_conv2d1x1_B1_out_c0_exe513),
        .out_c0_exe614(bb_conv2d1x1_B1_out_c0_exe614),
        .out_c0_exe715(bb_conv2d1x1_B1_out_c0_exe715),
        .out_c0_exe816(bb_conv2d1x1_B1_out_c0_exe816),
        .out_c0_exe917(bb_conv2d1x1_B1_out_c0_exe917),
        .out_intel_reserved_ffwd_0_0(bb_conv2d1x1_B1_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_conv2d1x1_B1_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_conv2d1x1_B1_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_conv2d1x1_B1_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_conv2d1x1_B1_out_intel_reserved_ffwd_4_0),
        .out_stall_out_0(bb_conv2d1x1_B1_out_stall_out_0),
        .out_valid_out_0(bb_conv2d1x1_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B1_sr_0_aunroll_x(BLACKBOX,282)
    conv2d1x1_bb_B1_sr_0 thebb_conv2d1x1_B1_sr_0_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B1_out_stall_out_0),
        .in_i_valid(bb_conv2d1x1_B2_out_valid_out_0),
        .in_i_data_0_tpl(bb_conv2d1x1_B2_out_c0_exe2),
        .in_i_data_1_tpl(bb_conv2d1x1_B2_out_c0_exe3),
        .in_i_data_2_tpl(bb_conv2d1x1_B2_out_c0_exe4),
        .in_i_data_3_tpl(bb_conv2d1x1_B2_out_c0_exe5),
        .in_i_data_4_tpl(bb_conv2d1x1_B2_out_c0_exe6),
        .in_i_data_5_tpl(bb_conv2d1x1_B2_out_c0_exe7),
        .in_i_data_6_tpl(bb_conv2d1x1_B2_out_c0_exe8),
        .in_i_data_7_tpl(bb_conv2d1x1_B2_out_c0_exe9),
        .in_i_data_8_tpl(bb_conv2d1x1_B2_out_c0_exe10),
        .in_i_data_9_tpl(bb_conv2d1x1_B2_out_c0_exe11),
        .in_i_data_10_tpl(bb_conv2d1x1_B2_out_c0_exe12),
        .in_i_data_11_tpl(bb_conv2d1x1_B2_out_c0_exe13),
        .in_i_data_12_tpl(bb_conv2d1x1_B2_out_c0_exe14),
        .in_i_data_13_tpl(bb_conv2d1x1_B2_out_c0_exe15),
        .in_i_data_14_tpl(bb_conv2d1x1_B2_out_c0_exe16),
        .in_i_data_15_tpl(bb_conv2d1x1_B2_out_c0_exe17),
        .out_o_stall(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_data_15_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going32_conv2d1x18_sr(BLACKBOX,180)
    conv2d1x1_i_llvm_fpga_pipeline_keep_going32_8_sr thei_llvm_fpga_pipeline_keep_going32_conv2d1x18_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2d1x1_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2(BLACKBOX,4)
    conv2d1x1_bb_B2 thebb_conv2d1x1_B2 (
        .in_filter_bias(in_arg_filter_bias),
        .in_filter_size(in_arg_filter_size),
        .in_filter_weight(in_arg_filter_weight),
        .in_forked29_0(GND_q),
        .in_forked29_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_channels(in_arg_input_channels),
        .in_input_im(in_arg_input_im),
        .in_input_size(in_arg_input_size),
        .in_output_im(in_arg_output_im),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_sr_out_o_stall),
        .in_stall_in_0(bb_conv2d1x1_B1_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_conv2d1x1_B2_out_c0_exe10),
        .out_c0_exe11(bb_conv2d1x1_B2_out_c0_exe11),
        .out_c0_exe12(bb_conv2d1x1_B2_out_c0_exe12),
        .out_c0_exe13(bb_conv2d1x1_B2_out_c0_exe13),
        .out_c0_exe14(bb_conv2d1x1_B2_out_c0_exe14),
        .out_c0_exe15(bb_conv2d1x1_B2_out_c0_exe15),
        .out_c0_exe16(bb_conv2d1x1_B2_out_c0_exe16),
        .out_c0_exe17(bb_conv2d1x1_B2_out_c0_exe17),
        .out_c0_exe2(bb_conv2d1x1_B2_out_c0_exe2),
        .out_c0_exe3(bb_conv2d1x1_B2_out_c0_exe3),
        .out_c0_exe4(bb_conv2d1x1_B2_out_c0_exe4),
        .out_c0_exe5(bb_conv2d1x1_B2_out_c0_exe5),
        .out_c0_exe6(bb_conv2d1x1_B2_out_c0_exe6),
        .out_c0_exe7(bb_conv2d1x1_B2_out_c0_exe7),
        .out_c0_exe8(bb_conv2d1x1_B2_out_c0_exe8),
        .out_c0_exe9(bb_conv2d1x1_B2_out_c0_exe9),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_pipeline_valid_out(bb_conv2d1x1_B2_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv2d1x1_B2_out_stall_in_0),
        .out_stall_out_0(bb_conv2d1x1_B2_out_stall_out_0),
        .out_stall_out_1(bb_conv2d1x1_B2_out_stall_out_1),
        .out_valid_in_0(bb_conv2d1x1_B2_out_valid_in_0),
        .out_valid_in_1(bb_conv2d1x1_B2_out_valid_in_1),
        .out_valid_out_0(bb_conv2d1x1_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2d1x1_B2_sr_1_aunroll_x(BLACKBOX,283)
    conv2d1x1_bb_B2_sr_1 thebb_conv2d1x1_B2_sr_1_aunroll_x (
        .in_i_stall(bb_conv2d1x1_B2_out_stall_out_1),
        .in_i_valid(bb_conv2d1x1_B0_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // conv2d1x1_B2_x(EXTIFACE,172)
    assign conv2d1x1_B2_x_i_capture = GND_q;
    assign conv2d1x1_B2_x_i_clear = GND_q;
    assign conv2d1x1_B2_x_i_enable = VCC_q;
    assign conv2d1x1_B2_x_i_shift = GND_q;
    assign conv2d1x1_B2_x_i_stall_pred = bb_conv2d1x1_B2_sr_1_aunroll_x_out_o_stall;
    assign conv2d1x1_B2_x_i_stall_succ = bb_conv2d1x1_B2_out_stall_in_0;
    assign conv2d1x1_B2_x_i_valid_loop = bb_conv2d1x1_B2_out_valid_in_0;
    assign conv2d1x1_B2_x_i_valid_pred = bb_conv2d1x1_B2_out_valid_in_1;
    assign conv2d1x1_B2_x_i_valid_succ = bb_conv2d1x1_B2_out_valid_out_0;
    assign conv2d1x1_B2_x_i_capture_bitsignaltemp = conv2d1x1_B2_x_i_capture[0];
    assign conv2d1x1_B2_x_i_clear_bitsignaltemp = conv2d1x1_B2_x_i_clear[0];
    assign conv2d1x1_B2_x_i_enable_bitsignaltemp = conv2d1x1_B2_x_i_enable[0];
    assign conv2d1x1_B2_x_i_shift_bitsignaltemp = conv2d1x1_B2_x_i_shift[0];
    assign conv2d1x1_B2_x_i_stall_pred_bitsignaltemp = conv2d1x1_B2_x_i_stall_pred[0];
    assign conv2d1x1_B2_x_i_stall_succ_bitsignaltemp = conv2d1x1_B2_x_i_stall_succ[0];
    assign conv2d1x1_B2_x_i_valid_loop_bitsignaltemp = conv2d1x1_B2_x_i_valid_loop[0];
    assign conv2d1x1_B2_x_i_valid_pred_bitsignaltemp = conv2d1x1_B2_x_i_valid_pred[0];
    assign conv2d1x1_B2_x_i_valid_succ_bitsignaltemp = conv2d1x1_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d1x1.B2")
    ) theconv2d1x1_B2_x (
        .i_capture(conv2d1x1_B2_x_i_capture_bitsignaltemp),
        .i_clear(conv2d1x1_B2_x_i_clear_bitsignaltemp),
        .i_enable(conv2d1x1_B2_x_i_enable_bitsignaltemp),
        .i_shift(conv2d1x1_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d1x1_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d1x1_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d1x1_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d1x1_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d1x1_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B4_x(EXTIFACE,173)
    assign conv2d1x1_B4_x_i_capture = GND_q;
    assign conv2d1x1_B4_x_i_clear = GND_q;
    assign conv2d1x1_B4_x_i_enable = VCC_q;
    assign conv2d1x1_B4_x_i_shift = GND_q;
    assign conv2d1x1_B4_x_i_stall_pred = bb_conv2d1x1_B4_sr_1_aunroll_x_out_o_stall;
    assign conv2d1x1_B4_x_i_stall_succ = bb_conv2d1x1_B6_out_stall_in_0;
    assign conv2d1x1_B4_x_i_valid_loop = bb_conv2d1x1_B4_out_valid_in_0;
    assign conv2d1x1_B4_x_i_valid_pred = bb_conv2d1x1_B4_out_valid_in_1;
    assign conv2d1x1_B4_x_i_valid_succ = bb_conv2d1x1_B6_out_valid_out_0;
    assign conv2d1x1_B4_x_i_capture_bitsignaltemp = conv2d1x1_B4_x_i_capture[0];
    assign conv2d1x1_B4_x_i_clear_bitsignaltemp = conv2d1x1_B4_x_i_clear[0];
    assign conv2d1x1_B4_x_i_enable_bitsignaltemp = conv2d1x1_B4_x_i_enable[0];
    assign conv2d1x1_B4_x_i_shift_bitsignaltemp = conv2d1x1_B4_x_i_shift[0];
    assign conv2d1x1_B4_x_i_stall_pred_bitsignaltemp = conv2d1x1_B4_x_i_stall_pred[0];
    assign conv2d1x1_B4_x_i_stall_succ_bitsignaltemp = conv2d1x1_B4_x_i_stall_succ[0];
    assign conv2d1x1_B4_x_i_valid_loop_bitsignaltemp = conv2d1x1_B4_x_i_valid_loop[0];
    assign conv2d1x1_B4_x_i_valid_pred_bitsignaltemp = conv2d1x1_B4_x_i_valid_pred[0];
    assign conv2d1x1_B4_x_i_valid_succ_bitsignaltemp = conv2d1x1_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d1x1.B4")
    ) theconv2d1x1_B4_x (
        .i_capture(conv2d1x1_B4_x_i_capture_bitsignaltemp),
        .i_clear(conv2d1x1_B4_x_i_clear_bitsignaltemp),
        .i_enable(conv2d1x1_B4_x_i_enable_bitsignaltemp),
        .i_shift(conv2d1x1_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d1x1_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d1x1_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d1x1_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d1x1_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d1x1_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B5_x(EXTIFACE,174)
    assign conv2d1x1_B5_x_i_capture = GND_q;
    assign conv2d1x1_B5_x_i_clear = GND_q;
    assign conv2d1x1_B5_x_i_enable = VCC_q;
    assign conv2d1x1_B5_x_i_shift = GND_q;
    assign conv2d1x1_B5_x_i_stall_pred = loop_limiter_conv2d1x10_out_o_stall;
    assign conv2d1x1_B5_x_i_stall_succ = bb_conv2d1x1_B7_vunroll_x_out_stall_in_0;
    assign conv2d1x1_B5_x_i_valid_loop = bb_conv2d1x1_B5_out_valid_in_0;
    assign conv2d1x1_B5_x_i_valid_pred = bb_conv2d1x1_B5_out_valid_in_1;
    assign conv2d1x1_B5_x_i_valid_succ = bb_conv2d1x1_B7_vunroll_x_out_valid_out_0;
    assign conv2d1x1_B5_x_i_capture_bitsignaltemp = conv2d1x1_B5_x_i_capture[0];
    assign conv2d1x1_B5_x_i_clear_bitsignaltemp = conv2d1x1_B5_x_i_clear[0];
    assign conv2d1x1_B5_x_i_enable_bitsignaltemp = conv2d1x1_B5_x_i_enable[0];
    assign conv2d1x1_B5_x_i_shift_bitsignaltemp = conv2d1x1_B5_x_i_shift[0];
    assign conv2d1x1_B5_x_i_stall_pred_bitsignaltemp = conv2d1x1_B5_x_i_stall_pred[0];
    assign conv2d1x1_B5_x_i_stall_succ_bitsignaltemp = conv2d1x1_B5_x_i_stall_succ[0];
    assign conv2d1x1_B5_x_i_valid_loop_bitsignaltemp = conv2d1x1_B5_x_i_valid_loop[0];
    assign conv2d1x1_B5_x_i_valid_pred_bitsignaltemp = conv2d1x1_B5_x_i_valid_pred[0];
    assign conv2d1x1_B5_x_i_valid_succ_bitsignaltemp = conv2d1x1_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d1x1.B5")
    ) theconv2d1x1_B5_x (
        .i_capture(conv2d1x1_B5_x_i_capture_bitsignaltemp),
        .i_clear(conv2d1x1_B5_x_i_clear_bitsignaltemp),
        .i_enable(conv2d1x1_B5_x_i_enable_bitsignaltemp),
        .i_shift(conv2d1x1_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d1x1_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d1x1_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d1x1_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d1x1_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d1x1_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2d1x1_B8_x(EXTIFACE,175)
    assign conv2d1x1_B8_x_i_capture = GND_q;
    assign conv2d1x1_B8_x_i_clear = GND_q;
    assign conv2d1x1_B8_x_i_enable = VCC_q;
    assign conv2d1x1_B8_x_i_shift = GND_q;
    assign conv2d1x1_B8_x_i_stall_pred = loop_limiter_conv2d1x11_out_o_stall;
    assign conv2d1x1_B8_x_i_stall_succ = bb_conv2d1x1_B8_vunroll_x_out_stall_in_0;
    assign conv2d1x1_B8_x_i_valid_loop = bb_conv2d1x1_B8_vunroll_x_out_valid_in_0;
    assign conv2d1x1_B8_x_i_valid_pred = bb_conv2d1x1_B8_vunroll_x_out_valid_in_1;
    assign conv2d1x1_B8_x_i_valid_succ = bb_conv2d1x1_B8_vunroll_x_out_valid_out_0;
    assign conv2d1x1_B8_x_i_capture_bitsignaltemp = conv2d1x1_B8_x_i_capture[0];
    assign conv2d1x1_B8_x_i_clear_bitsignaltemp = conv2d1x1_B8_x_i_clear[0];
    assign conv2d1x1_B8_x_i_enable_bitsignaltemp = conv2d1x1_B8_x_i_enable[0];
    assign conv2d1x1_B8_x_i_shift_bitsignaltemp = conv2d1x1_B8_x_i_shift[0];
    assign conv2d1x1_B8_x_i_stall_pred_bitsignaltemp = conv2d1x1_B8_x_i_stall_pred[0];
    assign conv2d1x1_B8_x_i_stall_succ_bitsignaltemp = conv2d1x1_B8_x_i_stall_succ[0];
    assign conv2d1x1_B8_x_i_valid_loop_bitsignaltemp = conv2d1x1_B8_x_i_valid_loop[0];
    assign conv2d1x1_B8_x_i_valid_pred_bitsignaltemp = conv2d1x1_B8_x_i_valid_pred[0];
    assign conv2d1x1_B8_x_i_valid_succ_bitsignaltemp = conv2d1x1_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2d1x1.B8")
    ) theconv2d1x1_B8_x (
        .i_capture(conv2d1x1_B8_x_i_capture_bitsignaltemp),
        .i_clear(conv2d1x1_B8_x_i_clear_bitsignaltemp),
        .i_enable(conv2d1x1_B8_x_i_enable_bitsignaltemp),
        .i_shift(conv2d1x1_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2d1x1_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2d1x1_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2d1x1_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2d1x1_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2d1x1_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm177_conv2d1x1_avm_address(GPOUT,230)
    assign out_lm177_conv2d1x1_avm_address = bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_address;

    // out_lm177_conv2d1x1_avm_burstcount(GPOUT,231)
    assign out_lm177_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_burstcount;

    // out_lm177_conv2d1x1_avm_byteenable(GPOUT,232)
    assign out_lm177_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_byteenable;

    // out_lm177_conv2d1x1_avm_enable(GPOUT,233)
    assign out_lm177_conv2d1x1_avm_enable = bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_enable;

    // out_lm177_conv2d1x1_avm_read(GPOUT,234)
    assign out_lm177_conv2d1x1_avm_read = bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_read;

    // out_lm177_conv2d1x1_avm_write(GPOUT,235)
    assign out_lm177_conv2d1x1_avm_write = bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_write;

    // out_lm177_conv2d1x1_avm_writedata(GPOUT,236)
    assign out_lm177_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_vunroll_x_out_lm177_conv2d1x1_avm_writedata;

    // out_lm178_conv2d1x1_avm_address(GPOUT,237)
    assign out_lm178_conv2d1x1_avm_address = bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_address;

    // out_lm178_conv2d1x1_avm_burstcount(GPOUT,238)
    assign out_lm178_conv2d1x1_avm_burstcount = bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_burstcount;

    // out_lm178_conv2d1x1_avm_byteenable(GPOUT,239)
    assign out_lm178_conv2d1x1_avm_byteenable = bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_byteenable;

    // out_lm178_conv2d1x1_avm_enable(GPOUT,240)
    assign out_lm178_conv2d1x1_avm_enable = bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_enable;

    // out_lm178_conv2d1x1_avm_read(GPOUT,241)
    assign out_lm178_conv2d1x1_avm_read = bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_read;

    // out_lm178_conv2d1x1_avm_write(GPOUT,242)
    assign out_lm178_conv2d1x1_avm_write = bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_write;

    // out_lm178_conv2d1x1_avm_writedata(GPOUT,243)
    assign out_lm178_conv2d1x1_avm_writedata = bb_conv2d1x1_B8_vunroll_x_out_lm178_conv2d1x1_avm_writedata;

    // out_lm70_conv2d1x1_avm_address(GPOUT,244)
    assign out_lm70_conv2d1x1_avm_address = bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_address;

    // out_lm70_conv2d1x1_avm_burstcount(GPOUT,245)
    assign out_lm70_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_burstcount;

    // out_lm70_conv2d1x1_avm_byteenable(GPOUT,246)
    assign out_lm70_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_byteenable;

    // out_lm70_conv2d1x1_avm_enable(GPOUT,247)
    assign out_lm70_conv2d1x1_avm_enable = bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_enable;

    // out_lm70_conv2d1x1_avm_read(GPOUT,248)
    assign out_lm70_conv2d1x1_avm_read = bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_read;

    // out_lm70_conv2d1x1_avm_write(GPOUT,249)
    assign out_lm70_conv2d1x1_avm_write = bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_write;

    // out_lm70_conv2d1x1_avm_writedata(GPOUT,250)
    assign out_lm70_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_vunroll_x_out_lm70_conv2d1x1_avm_writedata;

    // out_lm73_conv2d1x1_avm_address(GPOUT,251)
    assign out_lm73_conv2d1x1_avm_address = bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_address;

    // out_lm73_conv2d1x1_avm_burstcount(GPOUT,252)
    assign out_lm73_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_burstcount;

    // out_lm73_conv2d1x1_avm_byteenable(GPOUT,253)
    assign out_lm73_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_byteenable;

    // out_lm73_conv2d1x1_avm_enable(GPOUT,254)
    assign out_lm73_conv2d1x1_avm_enable = bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_enable;

    // out_lm73_conv2d1x1_avm_read(GPOUT,255)
    assign out_lm73_conv2d1x1_avm_read = bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_read;

    // out_lm73_conv2d1x1_avm_write(GPOUT,256)
    assign out_lm73_conv2d1x1_avm_write = bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_write;

    // out_lm73_conv2d1x1_avm_writedata(GPOUT,257)
    assign out_lm73_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_vunroll_x_out_lm73_conv2d1x1_avm_writedata;

    // out_lm96_conv2d1x1_avm_address(GPOUT,258)
    assign out_lm96_conv2d1x1_avm_address = bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_address;

    // out_lm96_conv2d1x1_avm_burstcount(GPOUT,259)
    assign out_lm96_conv2d1x1_avm_burstcount = bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_burstcount;

    // out_lm96_conv2d1x1_avm_byteenable(GPOUT,260)
    assign out_lm96_conv2d1x1_avm_byteenable = bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_byteenable;

    // out_lm96_conv2d1x1_avm_enable(GPOUT,261)
    assign out_lm96_conv2d1x1_avm_enable = bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_enable;

    // out_lm96_conv2d1x1_avm_read(GPOUT,262)
    assign out_lm96_conv2d1x1_avm_read = bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_read;

    // out_lm96_conv2d1x1_avm_write(GPOUT,263)
    assign out_lm96_conv2d1x1_avm_write = bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_write;

    // out_lm96_conv2d1x1_avm_writedata(GPOUT,264)
    assign out_lm96_conv2d1x1_avm_writedata = bb_conv2d1x1_B4_out_lm96_conv2d1x1_avm_writedata;

    // out_lm_conv2d1x1_avm_address(GPOUT,265)
    assign out_lm_conv2d1x1_avm_address = bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_address;

    // out_lm_conv2d1x1_avm_burstcount(GPOUT,266)
    assign out_lm_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_burstcount;

    // out_lm_conv2d1x1_avm_byteenable(GPOUT,267)
    assign out_lm_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_byteenable;

    // out_lm_conv2d1x1_avm_enable(GPOUT,268)
    assign out_lm_conv2d1x1_avm_enable = bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_enable;

    // out_lm_conv2d1x1_avm_read(GPOUT,269)
    assign out_lm_conv2d1x1_avm_read = bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_read;

    // out_lm_conv2d1x1_avm_write(GPOUT,270)
    assign out_lm_conv2d1x1_avm_write = bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_write;

    // out_lm_conv2d1x1_avm_writedata(GPOUT,271)
    assign out_lm_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_vunroll_x_out_lm_conv2d1x1_avm_writedata;

    // out_o_active_unnamed_conv2d1x113(GPOUT,272)
    assign out_o_active_unnamed_conv2d1x113 = bb_conv2d1x1_B7_vunroll_x_out_lsu_unnamed_conv2d1x113_o_active;

    // out_stall_out(GPOUT,273)
    assign out_stall_out = bb_conv2d1x1_B0_out_stall_out_0;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_address(GPOUT,274)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_address = bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_address;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount(GPOUT,275)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount = bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable(GPOUT,276)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable = bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_enable(GPOUT,277)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_enable = bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_enable;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_read(GPOUT,278)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_read = bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_read;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_write(GPOUT,279)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_write = bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_write;

    // out_unnamed_conv2d1x113_conv2d1x1_avm_writedata(GPOUT,280)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_writedata = bb_conv2d1x1_B7_vunroll_x_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata;

    // out_valid_out(GPOUT,281)
    assign out_valid_out = bb_conv2d1x1_B3_out_valid_out_0;

endmodule
