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

// SystemVerilog created from conv2d1x1_bb_B8_stall_region
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B8_stall_region (
    input wire [511:0] in_lm220_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm220_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm220_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm220_conv2d1x1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_weight,
    input wire [0:0] in_flush,
    input wire [63:0] in_input_im,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_ap_pop_ext5168,
    input wire [31:0] in_arrayidx131_10_promoted_e162,
    input wire [31:0] in_arrayidx131_11_promoted_e163,
    input wire [31:0] in_arrayidx131_12_promoted_e164,
    input wire [31:0] in_arrayidx131_13_promoted_e165,
    input wire [31:0] in_arrayidx131_14_promoted_e166,
    input wire [31:0] in_arrayidx131_15_promoted_e167,
    input wire [31:0] in_arrayidx131_3_promoted_e155,
    input wire [31:0] in_arrayidx131_4_promoted_e156,
    input wire [31:0] in_arrayidx131_5_promoted_e157,
    input wire [31:0] in_arrayidx131_6_promoted_e158,
    input wire [31:0] in_arrayidx131_7_promoted_e159,
    input wire [31:0] in_arrayidx131_8_promoted_e160,
    input wire [31:0] in_arrayidx131_9_promoted_e161,
    input wire [0:0] in_forked,
    input wire [31:0] in_ij_0104_pop1374_pop36188,
    input wire [31:0] in_lm115,
    input wire [31:0] in_lm60_pop30178,
    input wire [31:0] in_mul110,
    input wire [31:0] in_mul156125,
    input wire [31:0] in_mul15666_pop32182,
    input wire [31:0] in_mul21120,
    input wire [31:0] in_mul2163_pop31180,
    input wire [31:0] in_mul57_pop26174,
    input wire [0:0] in_notcmp4672_pop35186,
    input wire [0:0] in_notcmp51130,
    input wire [0:0] in_notcmp5169_pop33184,
    input wire [0:0] in_pop27170,
    input wire [0:0] in_pop28172,
    input wire [0:0] in_pop29176,
    input wire [31:0] in_pre109_e145,
    input wire [31:0] in_pre110_e146,
    input wire [31:0] in_pre111_e147,
    input wire [31:0] in_pre112_e148,
    input wire [31:0] in_pre113_e149,
    input wire [31:0] in_pre114_e150,
    input wire [31:0] in_pre115_e151,
    input wire [31:0] in_pre116_e152,
    input wire [31:0] in_pre117_e153,
    input wire [31:0] in_pre118_e154,
    input wire [31:0] in_pre_e144,
    input wire [0:0] in_unnamed_conv2d1x117,
    input wire [0:0] in_unnamed_conv2d1x118,
    input wire [0:0] in_unnamed_conv2d1x119,
    input wire [32:0] in_unnamed_conv2d1x120,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm222_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm222_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm222_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm222_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm220_conv2d1x1_avm_address,
    output wire [0:0] out_lm220_conv2d1x1_avm_enable,
    output wire [0:0] out_lm220_conv2d1x1_avm_read,
    output wire [0:0] out_lm220_conv2d1x1_avm_write,
    output wire [511:0] out_lm220_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm220_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm220_conv2d1x1_avm_burstcount,
    output wire [0:0] out_c0_exe16530,
    output wire [31:0] out_c0_exe17531,
    output wire [31:0] out_c0_exe18532,
    output wire [0:0] out_c0_exe19533,
    output wire [0:0] out_c0_exe20534,
    output wire [63:0] out_c0_exe21535,
    output wire [0:0] out_c0_exe3517,
    output wire [0:0] out_c0_exe4518,
    output wire [31:0] out_c0_exe5519,
    output wire [31:0] out_c1_exe10,
    output wire [31:0] out_c1_exe11,
    output wire [31:0] out_c1_exe12,
    output wire [31:0] out_c1_exe13,
    output wire [31:0] out_c1_exe14,
    output wire [31:0] out_c1_exe15,
    output wire [31:0] out_c1_exe1592,
    output wire [31:0] out_c1_exe16,
    output wire [31:0] out_c1_exe17,
    output wire [31:0] out_c1_exe18,
    output wire [31:0] out_c1_exe19,
    output wire [31:0] out_c1_exe2,
    output wire [31:0] out_c1_exe20,
    output wire [31:0] out_c1_exe21,
    output wire [31:0] out_c1_exe22,
    output wire [31:0] out_c1_exe23,
    output wire [31:0] out_c1_exe24,
    output wire [31:0] out_c1_exe25,
    output wire [31:0] out_c1_exe26,
    output wire [31:0] out_c1_exe27,
    output wire [31:0] out_c1_exe28,
    output wire [31:0] out_c1_exe29,
    output wire [31:0] out_c1_exe3,
    output wire [31:0] out_c1_exe30,
    output wire [31:0] out_c1_exe31,
    output wire [31:0] out_c1_exe32,
    output wire [31:0] out_c1_exe33,
    output wire [31:0] out_c1_exe34,
    output wire [31:0] out_c1_exe35,
    output wire [31:0] out_c1_exe36,
    output wire [31:0] out_c1_exe37,
    output wire [31:0] out_c1_exe38,
    output wire [31:0] out_c1_exe39,
    output wire [31:0] out_c1_exe4,
    output wire [31:0] out_c1_exe40,
    output wire [31:0] out_c1_exe41,
    output wire [31:0] out_c1_exe42,
    output wire [31:0] out_c1_exe43,
    output wire [31:0] out_c1_exe44,
    output wire [31:0] out_c1_exe45,
    output wire [31:0] out_c1_exe46,
    output wire [31:0] out_c1_exe47,
    output wire [31:0] out_c1_exe48,
    output wire [31:0] out_c1_exe5,
    output wire [31:0] out_c1_exe6,
    output wire [31:0] out_c1_exe7,
    output wire [31:0] out_c1_exe8,
    output wire [31:0] out_c1_exe9,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_lm223_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm223_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm223_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm223_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm222_conv2d1x1_avm_address,
    output wire [0:0] out_lm222_conv2d1x1_avm_enable,
    output wire [0:0] out_lm222_conv2d1x1_avm_read,
    output wire [0:0] out_lm222_conv2d1x1_avm_write,
    output wire [511:0] out_lm222_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm222_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm222_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm225_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm225_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm225_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm225_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm223_conv2d1x1_avm_address,
    output wire [0:0] out_lm223_conv2d1x1_avm_enable,
    output wire [0:0] out_lm223_conv2d1x1_avm_read,
    output wire [0:0] out_lm223_conv2d1x1_avm_write,
    output wire [511:0] out_lm223_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm223_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm223_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm227_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm227_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm227_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm227_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm225_conv2d1x1_avm_address,
    output wire [0:0] out_lm225_conv2d1x1_avm_enable,
    output wire [0:0] out_lm225_conv2d1x1_avm_read,
    output wire [0:0] out_lm225_conv2d1x1_avm_write,
    output wire [511:0] out_lm225_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm225_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm225_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm229_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm229_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm229_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm229_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm227_conv2d1x1_avm_address,
    output wire [0:0] out_lm227_conv2d1x1_avm_enable,
    output wire [0:0] out_lm227_conv2d1x1_avm_read,
    output wire [0:0] out_lm227_conv2d1x1_avm_write,
    output wire [511:0] out_lm227_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm227_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm227_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm231_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm231_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm231_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm231_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm229_conv2d1x1_avm_address,
    output wire [0:0] out_lm229_conv2d1x1_avm_enable,
    output wire [0:0] out_lm229_conv2d1x1_avm_read,
    output wire [0:0] out_lm229_conv2d1x1_avm_write,
    output wire [511:0] out_lm229_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm229_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm229_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm233_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm233_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm233_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm233_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm231_conv2d1x1_avm_address,
    output wire [0:0] out_lm231_conv2d1x1_avm_enable,
    output wire [0:0] out_lm231_conv2d1x1_avm_read,
    output wire [0:0] out_lm231_conv2d1x1_avm_write,
    output wire [511:0] out_lm231_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm231_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm231_conv2d1x1_avm_burstcount,
    input wire [511:0] in_lm235_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm235_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm235_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm235_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm233_conv2d1x1_avm_address,
    output wire [0:0] out_lm233_conv2d1x1_avm_enable,
    output wire [0:0] out_lm233_conv2d1x1_avm_read,
    output wire [0:0] out_lm233_conv2d1x1_avm_write,
    output wire [511:0] out_lm233_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm233_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm233_conv2d1x1_avm_burstcount,
    output wire [30:0] out_lm235_conv2d1x1_avm_address,
    output wire [0:0] out_lm235_conv2d1x1_avm_enable,
    output wire [0:0] out_lm235_conv2d1x1_avm_read,
    output wire [0:0] out_lm235_conv2d1x1_avm_write,
    output wire [511:0] out_lm235_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm235_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm235_conv2d1x1_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor_conv2d1x14_q;
    wire [30:0] i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm220_conv2d1x15_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm220_conv2d1x15_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm220_conv2d1x15_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm223_conv2d1x17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm223_conv2d1x17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm223_conv2d1x17_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm225_conv2d1x18_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm225_conv2d1x18_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm225_conv2d1x18_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm227_conv2d1x19_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm227_conv2d1x19_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm227_conv2d1x19_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm229_conv2d1x110_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm229_conv2d1x110_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm229_conv2d1x110_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm231_conv2d1x111_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm231_conv2d1x111_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm231_conv2d1x111_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm233_conv2d1x112_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm233_conv2d1x112_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm233_conv2d1x112_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm235_conv2d1x113_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm235_conv2d1x113_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm235_conv2d1x113_out_o_valid;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [32:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_26_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_27_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_28_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_29_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_30_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_31_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_32_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_33_tpl;
    wire [63:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_34_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_35_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_36_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_37_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_38_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_39_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_40_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_41_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_42_tpl;
    wire [0:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_43_tpl;
    wire [31:0] conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_44_tpl;
    wire [30:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_3_tpl;
    wire [31:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_4_tpl;
    wire [31:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_5_tpl;
    wire [31:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_6_tpl;
    wire [31:0] i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_8_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_9_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_10_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_11_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_12_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_13_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_14_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_20_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_21_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_22_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_32_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_33_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_34_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_35_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_36_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_37_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_38_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_39_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_40_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_41_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_42_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_43_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_44_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_45_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_46_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_47_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_48_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_49_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_50_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_51_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_52_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_53_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_54_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_55_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_1_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_2_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_3_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_4_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_5_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_6_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_7_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_8_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_9_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_10_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_11_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_12_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_13_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_14_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_15_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_16_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_17_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_18_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_19_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_20_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_21_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_22_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_23_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_24_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_25_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_26_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_27_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_28_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_29_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_30_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_31_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_32_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_33_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_34_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_35_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_36_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_37_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_38_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_39_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_40_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_41_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_42_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_43_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_44_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_45_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_46_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_47_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_48_tpl;
    wire [575:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [63:0] sel_for_coalesced_delay_0_e;
    wire [63:0] sel_for_coalesced_delay_0_f;
    wire [63:0] sel_for_coalesced_delay_0_g;
    wire [63:0] sel_for_coalesced_delay_0_h;
    wire [63:0] sel_for_coalesced_delay_0_i;
    wire [63:0] sel_for_coalesced_delay_0_j;
    wire [771:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [31:0] sel_for_coalesced_delay_1_e;
    wire [31:0] sel_for_coalesced_delay_1_f;
    wire [31:0] sel_for_coalesced_delay_1_g;
    wire [31:0] sel_for_coalesced_delay_1_h;
    wire [31:0] sel_for_coalesced_delay_1_i;
    wire [31:0] sel_for_coalesced_delay_1_j;
    wire [31:0] sel_for_coalesced_delay_1_k;
    wire [31:0] sel_for_coalesced_delay_1_l;
    wire [31:0] sel_for_coalesced_delay_1_m;
    wire [31:0] sel_for_coalesced_delay_1_n;
    wire [31:0] sel_for_coalesced_delay_1_o;
    wire [31:0] sel_for_coalesced_delay_1_p;
    wire [31:0] sel_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_r;
    wire [31:0] sel_for_coalesced_delay_1_s;
    wire [31:0] sel_for_coalesced_delay_1_t;
    wire [31:0] sel_for_coalesced_delay_1_u;
    wire [31:0] sel_for_coalesced_delay_1_v;
    wire [31:0] sel_for_coalesced_delay_1_w;
    wire [31:0] sel_for_coalesced_delay_1_x;
    wire [31:0] sel_for_coalesced_delay_1_y;
    wire [0:0] sel_for_coalesced_delay_1_z;
    wire [0:0] sel_for_coalesced_delay_1_aa;
    wire [0:0] sel_for_coalesced_delay_1_bb;
    wire [0:0] sel_for_coalesced_delay_1_cc;
    wire [163:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [31:0] sel_for_coalesced_delay_2_c;
    wire [31:0] sel_for_coalesced_delay_2_d;
    wire [31:0] sel_for_coalesced_delay_2_e;
    wire [0:0] sel_for_coalesced_delay_2_f;
    wire [0:0] sel_for_coalesced_delay_2_g;
    wire [0:0] sel_for_coalesced_delay_2_h;
    wire [0:0] sel_for_coalesced_delay_2_i;
    wire [255:0] join_for_coalesced_delay_3_q;
    wire [31:0] sel_for_coalesced_delay_3_b;
    wire [31:0] sel_for_coalesced_delay_3_c;
    wire [31:0] sel_for_coalesced_delay_3_d;
    wire [31:0] sel_for_coalesced_delay_3_e;
    wire [31:0] sel_for_coalesced_delay_3_f;
    wire [31:0] sel_for_coalesced_delay_3_g;
    wire [31:0] sel_for_coalesced_delay_3_h;
    wire [31:0] sel_for_coalesced_delay_3_i;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_in;
    wire redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_in;
    wire redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_data_in;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_out;
    wire redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_out;
    wire redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_data_out;
    reg [575:0] coalesced_delay_0_0_q;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [771:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [771:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [163:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [163:0] coalesced_delay_2_fifo_data_out;
    wire [0:0] coalesced_delay_3_fifo_valid_in;
    wire coalesced_delay_3_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_3_fifo_stall_in;
    wire coalesced_delay_3_fifo_stall_in_bitsignaltemp;
    wire [255:0] coalesced_delay_3_fifo_data_in;
    wire [0:0] coalesced_delay_3_fifo_valid_out;
    wire coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_3_fifo_stall_out;
    wire coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    wire [255:0] coalesced_delay_3_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm220_conv2d1x15_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm220_conv2d1x15_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm223_conv2d1x17_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm223_conv2d1x17_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm225_conv2d1x18_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm225_conv2d1x18_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm227_conv2d1x19_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm227_conv2d1x19_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm229_conv2d1x110_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm229_conv2d1x110_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm231_conv2d1x111_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm231_conv2d1x111_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm233_conv2d1x112_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm233_conv2d1x112_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm235_conv2d1x113_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm235_conv2d1x113_b;
    wire [1162:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [31:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [0:0] bubble_select_stall_entry_z;
    wire [0:0] bubble_select_stall_entry_aa;
    wire [0:0] bubble_select_stall_entry_bb;
    wire [0:0] bubble_select_stall_entry_cc;
    wire [0:0] bubble_select_stall_entry_dd;
    wire [0:0] bubble_select_stall_entry_ee;
    wire [31:0] bubble_select_stall_entry_ff;
    wire [31:0] bubble_select_stall_entry_gg;
    wire [31:0] bubble_select_stall_entry_hh;
    wire [31:0] bubble_select_stall_entry_ii;
    wire [31:0] bubble_select_stall_entry_jj;
    wire [31:0] bubble_select_stall_entry_kk;
    wire [31:0] bubble_select_stall_entry_ll;
    wire [31:0] bubble_select_stall_entry_mm;
    wire [31:0] bubble_select_stall_entry_nn;
    wire [31:0] bubble_select_stall_entry_oo;
    wire [31:0] bubble_select_stall_entry_pp;
    wire [0:0] bubble_select_stall_entry_qq;
    wire [0:0] bubble_select_stall_entry_rr;
    wire [0:0] bubble_select_stall_entry_ss;
    wire [32:0] bubble_select_stall_entry_tt;
    wire [1162:0] bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_f;
    wire [32:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_p;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_t;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_u;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_v;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_w;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_x;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_y;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_z;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_aa;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_bb;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_cc;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_dd;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ee;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ff;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_gg;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_hh;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ii;
    wire [63:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_jj;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_kk;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ll;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_mm;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_nn;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_oo;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_pp;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_qq;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_rr;
    wire [0:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ss;
    wire [31:0] bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_tt;
    wire [255:0] bubble_join_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_f;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_i;
    wire [1512:0] bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_h;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_i;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_j;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_k;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_l;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_m;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_n;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_o;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_t;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_u;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_v;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_w;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_x;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_y;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_z;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_aa;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_bb;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_cc;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_dd;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ee;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ff;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_gg;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_hh;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ii;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_jj;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_kk;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ll;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_mm;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_nn;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_oo;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_pp;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_qq;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_rr;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ss;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_tt;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_uu;
    wire [1535:0] bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_s;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_u;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_w;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_x;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_y;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_z;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_aa;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_bb;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_cc;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_dd;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ee;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ff;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_gg;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_hh;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ii;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_jj;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_kk;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ll;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_mm;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_nn;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_oo;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_pp;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_qq;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_rr;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ss;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_tt;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_uu;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_vv;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ww;
    wire [0:0] bubble_join_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_q;
    wire [0:0] bubble_select_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_b;
    wire [771:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [771:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [163:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [163:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [255:0] bubble_join_coalesced_delay_3_fifo_q;
    wire [255:0] bubble_select_coalesced_delay_3_fifo_b;
    reg [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_0;
    reg [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_1;
    reg [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_2;
    reg [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_3;
    reg [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_4;
    reg [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_5;
    reg [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_6;
    reg [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_7;
    reg [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_8;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_0;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_1;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_2;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_3;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_4;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_5;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_6;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_7;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_8;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or0;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or1;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or2;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or3;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or4;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or5;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or6;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or7;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backStall;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V0;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V1;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V2;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V3;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V4;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V5;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V6;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V7;
    wire [0:0] SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V8;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and3;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and4;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and5;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and6;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2d1x1_B8_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2d1x1_B8_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_V2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_2_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_2_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_2_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_3_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_3_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_3_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_3_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_3_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,171)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x120, in_unnamed_conv2d1x119, in_unnamed_conv2d1x118, in_unnamed_conv2d1x117, in_pre_e144, in_pre118_e154, in_pre117_e153, in_pre116_e152, in_pre115_e151, in_pre114_e150, in_pre113_e149, in_pre112_e148, in_pre111_e147, in_pre110_e146, in_pre109_e145, in_pop29176, in_pop28172, in_pop27170, in_notcmp5169_pop33184, in_notcmp51130, in_notcmp4672_pop35186, in_mul57_pop26174, in_mul2163_pop31180, in_mul21120, in_mul15666_pop32182, in_mul156125, in_mul110, in_lm60_pop30178, in_lm115, in_ij_0104_pop1374_pop36188, in_forked, in_arrayidx131_9_promoted_e161, in_arrayidx131_8_promoted_e160, in_arrayidx131_7_promoted_e159, in_arrayidx131_6_promoted_e158, in_arrayidx131_5_promoted_e157, in_arrayidx131_4_promoted_e156, in_arrayidx131_3_promoted_e155, in_arrayidx131_15_promoted_e167, in_arrayidx131_14_promoted_e166, in_arrayidx131_13_promoted_e165, in_arrayidx131_12_promoted_e164, in_arrayidx131_11_promoted_e163, in_arrayidx131_10_promoted_e162, in_ap_pop_ext5168};

    // bubble_select_stall_entry(BITSELECT,172)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[127:96]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[191:160]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[223:192]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[255:224]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[287:256]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[319:288]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[351:320]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[383:352]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[415:384]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[447:416]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[479:448]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[480:480]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[512:481]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[544:513]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[576:545]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[608:577]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[640:609]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[672:641]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[704:673]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[736:705]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[768:737]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[769:769]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[770:770]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[771:771]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[772:772]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[773:773]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[774:774]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[806:775]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[838:807]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[870:839]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[902:871]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[934:903]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[966:935]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[998:967]);
    assign bubble_select_stall_entry_mm = $unsigned(bubble_join_stall_entry_q[1030:999]);
    assign bubble_select_stall_entry_nn = $unsigned(bubble_join_stall_entry_q[1062:1031]);
    assign bubble_select_stall_entry_oo = $unsigned(bubble_join_stall_entry_q[1094:1063]);
    assign bubble_select_stall_entry_pp = $unsigned(bubble_join_stall_entry_q[1126:1095]);
    assign bubble_select_stall_entry_qq = $unsigned(bubble_join_stall_entry_q[1127:1127]);
    assign bubble_select_stall_entry_rr = $unsigned(bubble_join_stall_entry_q[1128:1128]);
    assign bubble_select_stall_entry_ss = $unsigned(bubble_join_stall_entry_q[1129:1129]);
    assign bubble_select_stall_entry_tt = $unsigned(bubble_join_stall_entry_q[1162:1130]);

    // SE_stall_entry(STALLENABLE,218)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B8_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B8_merge_reg_aunroll_x(BLACKBOX,53)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    // out out_data_out_16_tpl@1
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    // out out_data_out_19_tpl@1
    // out out_data_out_20_tpl@1
    // out out_data_out_21_tpl@1
    // out out_data_out_22_tpl@1
    // out out_data_out_23_tpl@1
    // out out_data_out_24_tpl@1
    // out out_data_out_25_tpl@1
    // out out_data_out_26_tpl@1
    // out out_data_out_27_tpl@1
    // out out_data_out_28_tpl@1
    // out out_data_out_29_tpl@1
    // out out_data_out_30_tpl@1
    // out out_data_out_31_tpl@1
    // out out_data_out_32_tpl@1
    // out out_data_out_33_tpl@1
    // out out_data_out_34_tpl@1
    // out out_data_out_35_tpl@1
    // out out_data_out_36_tpl@1
    // out out_data_out_37_tpl@1
    // out out_data_out_38_tpl@1
    // out out_data_out_39_tpl@1
    // out out_data_out_40_tpl@1
    // out out_data_out_41_tpl@1
    // out out_data_out_42_tpl@1
    // out out_data_out_43_tpl@1
    // out out_data_out_44_tpl@1
    conv2d1x1_B8_merge_reg theconv2d1x1_B8_merge_reg_aunroll_x (
        .in_stall_in(SE_out_conv2d1x1_B8_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_p),
        .in_data_in_1_tpl(bubble_select_stall_entry_t),
        .in_data_in_2_tpl(bubble_select_stall_entry_qq),
        .in_data_in_3_tpl(bubble_select_stall_entry_rr),
        .in_data_in_4_tpl(bubble_select_stall_entry_ss),
        .in_data_in_5_tpl(bubble_select_stall_entry_tt),
        .in_data_in_6_tpl(bubble_select_stall_entry_r),
        .in_data_in_7_tpl(bubble_select_stall_entry_w),
        .in_data_in_8_tpl(bubble_select_stall_entry_u),
        .in_data_in_9_tpl(bubble_select_stall_entry_aa),
        .in_data_in_10_tpl(bubble_select_stall_entry_pp),
        .in_data_in_11_tpl(bubble_select_stall_entry_ff),
        .in_data_in_12_tpl(bubble_select_stall_entry_gg),
        .in_data_in_13_tpl(bubble_select_stall_entry_hh),
        .in_data_in_14_tpl(bubble_select_stall_entry_ii),
        .in_data_in_15_tpl(bubble_select_stall_entry_jj),
        .in_data_in_16_tpl(bubble_select_stall_entry_kk),
        .in_data_in_17_tpl(bubble_select_stall_entry_ll),
        .in_data_in_18_tpl(bubble_select_stall_entry_mm),
        .in_data_in_19_tpl(bubble_select_stall_entry_nn),
        .in_data_in_20_tpl(bubble_select_stall_entry_oo),
        .in_data_in_21_tpl(bubble_select_stall_entry_i),
        .in_data_in_22_tpl(bubble_select_stall_entry_j),
        .in_data_in_23_tpl(bubble_select_stall_entry_k),
        .in_data_in_24_tpl(bubble_select_stall_entry_l),
        .in_data_in_25_tpl(bubble_select_stall_entry_m),
        .in_data_in_26_tpl(bubble_select_stall_entry_n),
        .in_data_in_27_tpl(bubble_select_stall_entry_o),
        .in_data_in_28_tpl(bubble_select_stall_entry_c),
        .in_data_in_29_tpl(bubble_select_stall_entry_d),
        .in_data_in_30_tpl(bubble_select_stall_entry_e),
        .in_data_in_31_tpl(bubble_select_stall_entry_f),
        .in_data_in_32_tpl(bubble_select_stall_entry_g),
        .in_data_in_33_tpl(bubble_select_stall_entry_h),
        .in_data_in_34_tpl(bubble_select_stall_entry_b),
        .in_data_in_35_tpl(bubble_select_stall_entry_cc),
        .in_data_in_36_tpl(bubble_select_stall_entry_dd),
        .in_data_in_37_tpl(bubble_select_stall_entry_y),
        .in_data_in_38_tpl(bubble_select_stall_entry_ee),
        .in_data_in_39_tpl(bubble_select_stall_entry_s),
        .in_data_in_40_tpl(bubble_select_stall_entry_x),
        .in_data_in_41_tpl(bubble_select_stall_entry_v),
        .in_data_in_42_tpl(bubble_select_stall_entry_bb),
        .in_data_in_43_tpl(bubble_select_stall_entry_z),
        .in_data_in_44_tpl(bubble_select_stall_entry_q),
        .out_stall_out(conv2d1x1_B8_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2d1x1_B8_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_39_tpl),
        .out_data_out_40_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_40_tpl),
        .out_data_out_41_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_41_tpl),
        .out_data_out_42_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_42_tpl),
        .out_data_out_43_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_43_tpl),
        .out_data_out_44_tpl(conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_44_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv2d1x1_B8_merge_reg_aunroll_x(BITJOIN,175)
    assign bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q = {conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_44_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_43_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_42_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_41_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_40_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_39_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_38_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_37_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_36_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_35_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_34_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_33_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_32_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_31_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_30_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_29_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_28_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_27_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_26_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_25_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_24_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_23_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_22_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_21_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_20_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_19_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_18_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_17_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_16_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_15_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_14_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_13_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_12_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_11_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_10_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_9_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_8_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_7_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_6_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_5_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_4_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_3_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_2_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_1_tpl, conv2d1x1_B8_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2d1x1_B8_merge_reg_aunroll_x(BITSELECT,176)
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[68:36]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[100:69]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[132:101]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[164:133]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[165:165]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[197:166]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[229:198]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[261:230]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[293:262]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[325:294]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[357:326]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[389:358]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[421:390]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[453:422]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[485:454]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_v = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[517:486]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_w = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[549:518]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_x = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[581:550]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_y = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[613:582]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_z = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[645:614]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_aa = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[677:646]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_bb = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[709:678]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_cc = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[741:710]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_dd = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[773:742]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ee = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[805:774]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ff = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[837:806]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_gg = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[869:838]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_hh = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[901:870]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ii = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[933:902]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_jj = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[997:934]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_kk = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[998:998]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ll = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[999:999]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_mm = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1031:1000]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_nn = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1032:1032]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_oo = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1064:1033]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_pp = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1096:1065]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_qq = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1128:1097]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_rr = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1129:1129]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ss = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1130:1130]);
    assign bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_tt = $unsigned(bubble_join_conv2d1x1_B8_merge_reg_aunroll_x_q[1162:1131]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_conv2d1x1_B8_merge_reg_aunroll_x(STALLENABLE,221)
    // Valid signal propagation
    assign SE_out_conv2d1x1_B8_merge_reg_aunroll_x_V0 = SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B8_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_o_stall | ~ (SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B8_merge_reg_aunroll_x_wireValid = conv2d1x1_B8_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x(BITJOIN,182)
    assign bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q = {i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_55_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_54_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_53_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_52_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_51_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_50_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_49_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_48_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_47_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_46_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_45_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_44_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_43_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_42_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_41_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_40_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_39_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_38_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_37_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_36_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_35_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_34_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_33_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_32_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_22_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_21_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_20_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_19_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_18_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_17_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_16_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_15_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_14_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_13_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_12_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_11_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_10_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_9_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_8_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_7_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_6_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_5_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_3_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_2_tpl, i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x(BITSELECT,183)
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[35:4]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[99:36]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[100:100]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[164:101]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[228:165]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[292:229]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[356:293]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[420:357]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[484:421]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[548:485]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[612:549]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[613:613]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[645:614]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[677:646]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[678:678]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[679:679]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[743:680]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[744:744]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[776:745]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[808:777]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[840:809]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[872:841]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[904:873]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[936:905]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[968:937]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1000:969]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1032:1001]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1064:1033]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_hh = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1096:1065]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ii = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1128:1097]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_jj = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1160:1129]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_kk = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1192:1161]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ll = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1224:1193]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_mm = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1256:1225]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_nn = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1288:1257]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_oo = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1320:1289]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_pp = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1352:1321]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_qq = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1384:1353]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_rr = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1416:1385]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ss = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1448:1417]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_tt = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1480:1449]);
    assign bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_uu = $unsigned(bubble_join_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q[1512:1481]);

    // join_for_coalesced_delay_2(BITJOIN,136)
    assign join_for_coalesced_delay_2_q = {bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_u, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_t, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_v};

    // i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor_conv2d1x14(REG,8)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor_conv2d1x14_q <= $unsigned(1'b0);
        end
        else if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b1)
        begin
            i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor_conv2d1x14_q <= bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_h;
        end
    end

    // join_for_coalesced_delay_0(BITJOIN,130)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_g};

    // coalesced_delay_0_0(REG,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(576'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,131)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[191:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[255:192]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[319:256]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[383:320]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[447:384]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[511:448]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[575:512]);

    // i_llvm_fpga_mem_lm220_conv2d1x15(BLACKBOX,9)@10
    // in in_i_stall@20000000
    // out out_lm220_conv2d1x1_avm_address@20000000
    // out out_lm220_conv2d1x1_avm_burstcount@20000000
    // out out_lm220_conv2d1x1_avm_byteenable@20000000
    // out out_lm220_conv2d1x1_avm_enable@20000000
    // out out_lm220_conv2d1x1_avm_read@20000000
    // out out_lm220_conv2d1x1_avm_write@20000000
    // out out_lm220_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@140
    // out out_o_stall@20000000
    // out out_o_valid@140
    conv2d1x1_i_llvm_fpga_mem_lm220_0 thei_llvm_fpga_mem_lm220_conv2d1x15 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor_conv2d1x14_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_backStall),
        .in_i_valid(SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V0),
        .in_lm220_conv2d1x1_avm_readdata(in_lm220_conv2d1x1_avm_readdata),
        .in_lm220_conv2d1x1_avm_readdatavalid(in_lm220_conv2d1x1_avm_readdatavalid),
        .in_lm220_conv2d1x1_avm_waitrequest(in_lm220_conv2d1x1_avm_waitrequest),
        .in_lm220_conv2d1x1_avm_writeack(in_lm220_conv2d1x1_avm_writeack),
        .out_lm220_conv2d1x1_avm_address(i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_address),
        .out_lm220_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_burstcount),
        .out_lm220_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_byteenable),
        .out_lm220_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_enable),
        .out_lm220_conv2d1x1_avm_read(i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_read),
        .out_lm220_conv2d1x1_avm_write(i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_write),
        .out_lm220_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm220_conv2d1x15_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm220_conv2d1x15_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm220_conv2d1x15_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm220_conv2d1x15(BITJOIN,147)
    assign bubble_join_i_llvm_fpga_mem_lm220_conv2d1x15_q = i_llvm_fpga_mem_lm220_conv2d1x15_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm220_conv2d1x15(BITSELECT,148)
    assign bubble_select_i_llvm_fpga_mem_lm220_conv2d1x15_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm220_conv2d1x15_q[31:0]);

    // i_llvm_fpga_mem_lm223_conv2d1x17(BLACKBOX,10)@10
    // in in_i_stall@20000000
    // out out_lm223_conv2d1x1_avm_address@20000000
    // out out_lm223_conv2d1x1_avm_burstcount@20000000
    // out out_lm223_conv2d1x1_avm_byteenable@20000000
    // out out_lm223_conv2d1x1_avm_enable@20000000
    // out out_lm223_conv2d1x1_avm_read@20000000
    // out out_lm223_conv2d1x1_avm_write@20000000
    // out out_lm223_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@140
    // out out_o_stall@20000000
    // out out_o_valid@140
    conv2d1x1_i_llvm_fpga_mem_lm223_0 thei_llvm_fpga_mem_lm223_conv2d1x17 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_d),
        .in_i_predicate(i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor_conv2d1x14_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_backStall),
        .in_i_valid(SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V1),
        .in_lm223_conv2d1x1_avm_readdata(in_lm223_conv2d1x1_avm_readdata),
        .in_lm223_conv2d1x1_avm_readdatavalid(in_lm223_conv2d1x1_avm_readdatavalid),
        .in_lm223_conv2d1x1_avm_waitrequest(in_lm223_conv2d1x1_avm_waitrequest),
        .in_lm223_conv2d1x1_avm_writeack(in_lm223_conv2d1x1_avm_writeack),
        .out_lm223_conv2d1x1_avm_address(i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_address),
        .out_lm223_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_burstcount),
        .out_lm223_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_byteenable),
        .out_lm223_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_enable),
        .out_lm223_conv2d1x1_avm_read(i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_read),
        .out_lm223_conv2d1x1_avm_write(i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_write),
        .out_lm223_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm223_conv2d1x17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm223_conv2d1x17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm223_conv2d1x17_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm223_conv2d1x17(BITJOIN,150)
    assign bubble_join_i_llvm_fpga_mem_lm223_conv2d1x17_q = i_llvm_fpga_mem_lm223_conv2d1x17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm223_conv2d1x17(BITSELECT,151)
    assign bubble_select_i_llvm_fpga_mem_lm223_conv2d1x17_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm223_conv2d1x17_q[31:0]);

    // i_llvm_fpga_mem_lm225_conv2d1x18(BLACKBOX,11)@10
    // in in_i_stall@20000000
    // out out_lm225_conv2d1x1_avm_address@20000000
    // out out_lm225_conv2d1x1_avm_burstcount@20000000
    // out out_lm225_conv2d1x1_avm_byteenable@20000000
    // out out_lm225_conv2d1x1_avm_enable@20000000
    // out out_lm225_conv2d1x1_avm_read@20000000
    // out out_lm225_conv2d1x1_avm_write@20000000
    // out out_lm225_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@140
    // out out_o_stall@20000000
    // out out_o_valid@140
    conv2d1x1_i_llvm_fpga_mem_lm225_0 thei_llvm_fpga_mem_lm225_conv2d1x18 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_e),
        .in_i_predicate(i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor_conv2d1x14_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_backStall),
        .in_i_valid(SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V2),
        .in_lm225_conv2d1x1_avm_readdata(in_lm225_conv2d1x1_avm_readdata),
        .in_lm225_conv2d1x1_avm_readdatavalid(in_lm225_conv2d1x1_avm_readdatavalid),
        .in_lm225_conv2d1x1_avm_waitrequest(in_lm225_conv2d1x1_avm_waitrequest),
        .in_lm225_conv2d1x1_avm_writeack(in_lm225_conv2d1x1_avm_writeack),
        .out_lm225_conv2d1x1_avm_address(i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_address),
        .out_lm225_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_burstcount),
        .out_lm225_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_byteenable),
        .out_lm225_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_enable),
        .out_lm225_conv2d1x1_avm_read(i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_read),
        .out_lm225_conv2d1x1_avm_write(i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_write),
        .out_lm225_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm225_conv2d1x18_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm225_conv2d1x18_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm225_conv2d1x18_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm225_conv2d1x18(BITJOIN,153)
    assign bubble_join_i_llvm_fpga_mem_lm225_conv2d1x18_q = i_llvm_fpga_mem_lm225_conv2d1x18_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm225_conv2d1x18(BITSELECT,154)
    assign bubble_select_i_llvm_fpga_mem_lm225_conv2d1x18_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm225_conv2d1x18_q[31:0]);

    // i_llvm_fpga_mem_lm227_conv2d1x19(BLACKBOX,12)@10
    // in in_i_stall@20000000
    // out out_lm227_conv2d1x1_avm_address@20000000
    // out out_lm227_conv2d1x1_avm_burstcount@20000000
    // out out_lm227_conv2d1x1_avm_byteenable@20000000
    // out out_lm227_conv2d1x1_avm_enable@20000000
    // out out_lm227_conv2d1x1_avm_read@20000000
    // out out_lm227_conv2d1x1_avm_write@20000000
    // out out_lm227_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@140
    // out out_o_stall@20000000
    // out out_o_valid@140
    conv2d1x1_i_llvm_fpga_mem_lm227_0 thei_llvm_fpga_mem_lm227_conv2d1x19 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_f),
        .in_i_predicate(i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor_conv2d1x14_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_backStall),
        .in_i_valid(SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V3),
        .in_lm227_conv2d1x1_avm_readdata(in_lm227_conv2d1x1_avm_readdata),
        .in_lm227_conv2d1x1_avm_readdatavalid(in_lm227_conv2d1x1_avm_readdatavalid),
        .in_lm227_conv2d1x1_avm_waitrequest(in_lm227_conv2d1x1_avm_waitrequest),
        .in_lm227_conv2d1x1_avm_writeack(in_lm227_conv2d1x1_avm_writeack),
        .out_lm227_conv2d1x1_avm_address(i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_address),
        .out_lm227_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_burstcount),
        .out_lm227_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_byteenable),
        .out_lm227_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_enable),
        .out_lm227_conv2d1x1_avm_read(i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_read),
        .out_lm227_conv2d1x1_avm_write(i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_write),
        .out_lm227_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm227_conv2d1x19_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm227_conv2d1x19_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm227_conv2d1x19_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm227_conv2d1x19(BITJOIN,156)
    assign bubble_join_i_llvm_fpga_mem_lm227_conv2d1x19_q = i_llvm_fpga_mem_lm227_conv2d1x19_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm227_conv2d1x19(BITSELECT,157)
    assign bubble_select_i_llvm_fpga_mem_lm227_conv2d1x19_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm227_conv2d1x19_q[31:0]);

    // i_llvm_fpga_mem_lm229_conv2d1x110(BLACKBOX,13)@10
    // in in_i_stall@20000000
    // out out_lm229_conv2d1x1_avm_address@20000000
    // out out_lm229_conv2d1x1_avm_burstcount@20000000
    // out out_lm229_conv2d1x1_avm_byteenable@20000000
    // out out_lm229_conv2d1x1_avm_enable@20000000
    // out out_lm229_conv2d1x1_avm_read@20000000
    // out out_lm229_conv2d1x1_avm_write@20000000
    // out out_lm229_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@140
    // out out_o_stall@20000000
    // out out_o_valid@140
    conv2d1x1_i_llvm_fpga_mem_lm229_0 thei_llvm_fpga_mem_lm229_conv2d1x110 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_g),
        .in_i_predicate(i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor_conv2d1x14_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_backStall),
        .in_i_valid(SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V4),
        .in_lm229_conv2d1x1_avm_readdata(in_lm229_conv2d1x1_avm_readdata),
        .in_lm229_conv2d1x1_avm_readdatavalid(in_lm229_conv2d1x1_avm_readdatavalid),
        .in_lm229_conv2d1x1_avm_waitrequest(in_lm229_conv2d1x1_avm_waitrequest),
        .in_lm229_conv2d1x1_avm_writeack(in_lm229_conv2d1x1_avm_writeack),
        .out_lm229_conv2d1x1_avm_address(i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_address),
        .out_lm229_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_burstcount),
        .out_lm229_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_byteenable),
        .out_lm229_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_enable),
        .out_lm229_conv2d1x1_avm_read(i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_read),
        .out_lm229_conv2d1x1_avm_write(i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_write),
        .out_lm229_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm229_conv2d1x110_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm229_conv2d1x110_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm229_conv2d1x110_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm229_conv2d1x110(BITJOIN,159)
    assign bubble_join_i_llvm_fpga_mem_lm229_conv2d1x110_q = i_llvm_fpga_mem_lm229_conv2d1x110_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm229_conv2d1x110(BITSELECT,160)
    assign bubble_select_i_llvm_fpga_mem_lm229_conv2d1x110_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm229_conv2d1x110_q[31:0]);

    // i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13(REG,7)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_q <= $unsigned(1'b0);
        end
        else if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b1)
        begin
            i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_q <= bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_h;
        end
    end

    // i_llvm_fpga_mem_lm231_conv2d1x111(BLACKBOX,14)@10
    // in in_i_stall@20000000
    // out out_lm231_conv2d1x1_avm_address@20000000
    // out out_lm231_conv2d1x1_avm_burstcount@20000000
    // out out_lm231_conv2d1x1_avm_byteenable@20000000
    // out out_lm231_conv2d1x1_avm_enable@20000000
    // out out_lm231_conv2d1x1_avm_read@20000000
    // out out_lm231_conv2d1x1_avm_write@20000000
    // out out_lm231_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@140
    // out out_o_stall@20000000
    // out out_o_valid@140
    conv2d1x1_i_llvm_fpga_mem_lm231_0 thei_llvm_fpga_mem_lm231_conv2d1x111 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_h),
        .in_i_predicate(i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_backStall),
        .in_i_valid(SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V6),
        .in_lm231_conv2d1x1_avm_readdata(in_lm231_conv2d1x1_avm_readdata),
        .in_lm231_conv2d1x1_avm_readdatavalid(in_lm231_conv2d1x1_avm_readdatavalid),
        .in_lm231_conv2d1x1_avm_waitrequest(in_lm231_conv2d1x1_avm_waitrequest),
        .in_lm231_conv2d1x1_avm_writeack(in_lm231_conv2d1x1_avm_writeack),
        .out_lm231_conv2d1x1_avm_address(i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_address),
        .out_lm231_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_burstcount),
        .out_lm231_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_byteenable),
        .out_lm231_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_enable),
        .out_lm231_conv2d1x1_avm_read(i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_read),
        .out_lm231_conv2d1x1_avm_write(i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_write),
        .out_lm231_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm231_conv2d1x111_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm231_conv2d1x111_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm231_conv2d1x111_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm231_conv2d1x111(BITJOIN,162)
    assign bubble_join_i_llvm_fpga_mem_lm231_conv2d1x111_q = i_llvm_fpga_mem_lm231_conv2d1x111_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm231_conv2d1x111(BITSELECT,163)
    assign bubble_select_i_llvm_fpga_mem_lm231_conv2d1x111_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm231_conv2d1x111_q[31:0]);

    // i_llvm_fpga_mem_lm233_conv2d1x112(BLACKBOX,15)@10
    // in in_i_stall@20000000
    // out out_lm233_conv2d1x1_avm_address@20000000
    // out out_lm233_conv2d1x1_avm_burstcount@20000000
    // out out_lm233_conv2d1x1_avm_byteenable@20000000
    // out out_lm233_conv2d1x1_avm_enable@20000000
    // out out_lm233_conv2d1x1_avm_read@20000000
    // out out_lm233_conv2d1x1_avm_write@20000000
    // out out_lm233_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@140
    // out out_o_stall@20000000
    // out out_o_valid@140
    conv2d1x1_i_llvm_fpga_mem_lm233_0 thei_llvm_fpga_mem_lm233_conv2d1x112 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_i),
        .in_i_predicate(i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_backStall),
        .in_i_valid(SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V7),
        .in_lm233_conv2d1x1_avm_readdata(in_lm233_conv2d1x1_avm_readdata),
        .in_lm233_conv2d1x1_avm_readdatavalid(in_lm233_conv2d1x1_avm_readdatavalid),
        .in_lm233_conv2d1x1_avm_waitrequest(in_lm233_conv2d1x1_avm_waitrequest),
        .in_lm233_conv2d1x1_avm_writeack(in_lm233_conv2d1x1_avm_writeack),
        .out_lm233_conv2d1x1_avm_address(i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_address),
        .out_lm233_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_burstcount),
        .out_lm233_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_byteenable),
        .out_lm233_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_enable),
        .out_lm233_conv2d1x1_avm_read(i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_read),
        .out_lm233_conv2d1x1_avm_write(i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_write),
        .out_lm233_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm233_conv2d1x112_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm233_conv2d1x112_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm233_conv2d1x112_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm233_conv2d1x112(BITJOIN,165)
    assign bubble_join_i_llvm_fpga_mem_lm233_conv2d1x112_q = i_llvm_fpga_mem_lm233_conv2d1x112_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm233_conv2d1x112(BITSELECT,166)
    assign bubble_select_i_llvm_fpga_mem_lm233_conv2d1x112_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm233_conv2d1x112_q[31:0]);

    // i_llvm_fpga_mem_lm235_conv2d1x113(BLACKBOX,16)@10
    // in in_i_stall@20000000
    // out out_lm235_conv2d1x1_avm_address@20000000
    // out out_lm235_conv2d1x1_avm_burstcount@20000000
    // out out_lm235_conv2d1x1_avm_byteenable@20000000
    // out out_lm235_conv2d1x1_avm_enable@20000000
    // out out_lm235_conv2d1x1_avm_read@20000000
    // out out_lm235_conv2d1x1_avm_write@20000000
    // out out_lm235_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@140
    // out out_o_stall@20000000
    // out out_o_valid@140
    conv2d1x1_i_llvm_fpga_mem_lm235_0 thei_llvm_fpga_mem_lm235_conv2d1x113 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_j),
        .in_i_predicate(i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_backStall),
        .in_i_valid(SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V8),
        .in_lm235_conv2d1x1_avm_readdata(in_lm235_conv2d1x1_avm_readdata),
        .in_lm235_conv2d1x1_avm_readdatavalid(in_lm235_conv2d1x1_avm_readdatavalid),
        .in_lm235_conv2d1x1_avm_waitrequest(in_lm235_conv2d1x1_avm_waitrequest),
        .in_lm235_conv2d1x1_avm_writeack(in_lm235_conv2d1x1_avm_writeack),
        .out_lm235_conv2d1x1_avm_address(i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_address),
        .out_lm235_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_burstcount),
        .out_lm235_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_byteenable),
        .out_lm235_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_enable),
        .out_lm235_conv2d1x1_avm_read(i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_read),
        .out_lm235_conv2d1x1_avm_write(i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_write),
        .out_lm235_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm235_conv2d1x113_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm235_conv2d1x113_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm235_conv2d1x113_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm235_conv2d1x113(BITJOIN,168)
    assign bubble_join_i_llvm_fpga_mem_lm235_conv2d1x113_q = i_llvm_fpga_mem_lm235_conv2d1x113_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm235_conv2d1x113(BITSELECT,169)
    assign bubble_select_i_llvm_fpga_mem_lm235_conv2d1x113_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm235_conv2d1x113_q[31:0]);

    // join_for_coalesced_delay_3(BITJOIN,139)
    assign join_for_coalesced_delay_3_q = {bubble_select_i_llvm_fpga_mem_lm220_conv2d1x15_b, bubble_select_i_llvm_fpga_mem_lm223_conv2d1x17_b, bubble_select_i_llvm_fpga_mem_lm225_conv2d1x18_b, bubble_select_i_llvm_fpga_mem_lm227_conv2d1x19_b, bubble_select_i_llvm_fpga_mem_lm229_conv2d1x110_b, bubble_select_i_llvm_fpga_mem_lm231_conv2d1x111_b, bubble_select_i_llvm_fpga_mem_lm233_conv2d1x112_b, bubble_select_i_llvm_fpga_mem_lm235_conv2d1x113_b};

    // SE_out_i_llvm_fpga_mem_lm235_conv2d1x113(STALLENABLE,217)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_V0 = SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_backStall = coalesced_delay_3_fifo_stall_out | ~ (SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and0 = i_llvm_fpga_mem_lm235_conv2d1x113_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and1 = i_llvm_fpga_mem_lm233_conv2d1x112_out_o_valid & SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and0;
    assign SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and2 = i_llvm_fpga_mem_lm231_conv2d1x111_out_o_valid & SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and1;
    assign SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and3 = i_llvm_fpga_mem_lm229_conv2d1x110_out_o_valid & SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and2;
    assign SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and4 = i_llvm_fpga_mem_lm227_conv2d1x19_out_o_valid & SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and3;
    assign SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and5 = i_llvm_fpga_mem_lm225_conv2d1x18_out_o_valid & SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and4;
    assign SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and6 = i_llvm_fpga_mem_lm223_conv2d1x17_out_o_valid & SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and5;
    assign SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_wireValid = i_llvm_fpga_mem_lm220_conv2d1x15_out_o_valid & SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_and6;

    // coalesced_delay_3_fifo(STALLFIFO,145)
    assign coalesced_delay_3_fifo_valid_in = SE_out_i_llvm_fpga_mem_lm235_conv2d1x113_V0;
    assign coalesced_delay_3_fifo_stall_in = SE_out_coalesced_delay_3_fifo_backStall;
    assign coalesced_delay_3_fifo_data_in = join_for_coalesced_delay_3_q;
    assign coalesced_delay_3_fifo_valid_in_bitsignaltemp = coalesced_delay_3_fifo_valid_in[0];
    assign coalesced_delay_3_fifo_stall_in_bitsignaltemp = coalesced_delay_3_fifo_stall_in[0];
    assign coalesced_delay_3_fifo_valid_out[0] = coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_3_fifo_stall_out[0] = coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(256),
        .IMPL("ram")
    ) thecoalesced_delay_3_fifo (
        .valid_in(coalesced_delay_3_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_3_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_3_q),
        .valid_out(coalesced_delay_3_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_3_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_3_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_coalesced_delay_3_fifo(BITJOIN,198)
    assign bubble_join_coalesced_delay_3_fifo_q = coalesced_delay_3_fifo_data_out;

    // bubble_select_coalesced_delay_3_fifo(BITSELECT,199)
    assign bubble_select_coalesced_delay_3_fifo_b = $unsigned(bubble_join_coalesced_delay_3_fifo_q[255:0]);

    // sel_for_coalesced_delay_3(BITSELECT,140)
    assign sel_for_coalesced_delay_3_b = $unsigned(bubble_select_coalesced_delay_3_fifo_b[31:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(bubble_select_coalesced_delay_3_fifo_b[63:32]);
    assign sel_for_coalesced_delay_3_d = $unsigned(bubble_select_coalesced_delay_3_fifo_b[95:64]);
    assign sel_for_coalesced_delay_3_e = $unsigned(bubble_select_coalesced_delay_3_fifo_b[127:96]);
    assign sel_for_coalesced_delay_3_f = $unsigned(bubble_select_coalesced_delay_3_fifo_b[159:128]);
    assign sel_for_coalesced_delay_3_g = $unsigned(bubble_select_coalesced_delay_3_fifo_b[191:160]);
    assign sel_for_coalesced_delay_3_h = $unsigned(bubble_select_coalesced_delay_3_fifo_b[223:192]);
    assign sel_for_coalesced_delay_3_i = $unsigned(bubble_select_coalesced_delay_3_fifo_b[255:224]);

    // i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x(BLACKBOX,72)@10
    // in in_i_stall@20000000
    // out out_lm222_conv2d1x1_avm_address@20000000
    // out out_lm222_conv2d1x1_avm_burstcount@20000000
    // out out_lm222_conv2d1x1_avm_byteenable@20000000
    // out out_lm222_conv2d1x1_avm_enable@20000000
    // out out_lm222_conv2d1x1_avm_read@20000000
    // out out_lm222_conv2d1x1_avm_write@20000000
    // out out_lm222_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@148
    // out out_o_readdata_0_tpl@148
    // out out_o_readdata_1_tpl@148
    // out out_o_readdata_2_tpl@148
    // out out_o_readdata_3_tpl@148
    // out out_o_readdata_4_tpl@148
    // out out_o_readdata_5_tpl@148
    // out out_o_readdata_6_tpl@148
    // out out_o_readdata_7_tpl@148
    conv2d1x1_i_llvm_fpga_mem_lm222_0 thei_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_c),
        .in_i_predicate(i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor_conv2d1x14_q),
        .in_i_stall(SE_out_coalesced_delay_3_fifo_backStall),
        .in_i_valid(SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V5),
        .in_lm222_conv2d1x1_avm_readdata(in_lm222_conv2d1x1_avm_readdata),
        .in_lm222_conv2d1x1_avm_readdatavalid(in_lm222_conv2d1x1_avm_readdatavalid),
        .in_lm222_conv2d1x1_avm_waitrequest(in_lm222_conv2d1x1_avm_waitrequest),
        .in_lm222_conv2d1x1_avm_writeack(in_lm222_conv2d1x1_avm_writeack),
        .out_lm222_conv2d1x1_avm_address(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_address),
        .out_lm222_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_burstcount),
        .out_lm222_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_byteenable),
        .out_lm222_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_enable),
        .out_lm222_conv2d1x1_avm_read(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_read),
        .out_lm222_conv2d1x1_avm_write(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_write),
        .out_lm222_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_valid),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_3_tpl),
        .out_o_readdata_4_tpl(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_4_tpl),
        .out_o_readdata_5_tpl(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_5_tpl),
        .out_o_readdata_6_tpl(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_6_tpl),
        .out_o_readdata_7_tpl(i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x(BITJOIN,179)
    assign bubble_join_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_q = {i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_7_tpl, i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_6_tpl, i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_5_tpl, i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_4_tpl, i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_3_tpl, i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_2_tpl, i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_1_tpl, i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_readdata_0_tpl};

    // bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x(BITSELECT,180)
    assign bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_q[63:32]);
    assign bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_q[223:192]);
    assign bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_q[255:224]);

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (SE_out_coalesced_delay_3_fifo_backStall) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_wireValid = coalesced_delay_1_fifo_valid_out;

    // SE_out_coalesced_delay_3_fifo(STALLENABLE,244)
    // Valid signal propagation
    assign SE_out_coalesced_delay_3_fifo_V0 = SE_out_coalesced_delay_3_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_3_fifo_backStall = i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_3_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_3_fifo_and0 = coalesced_delay_3_fifo_valid_out;
    assign SE_out_coalesced_delay_3_fifo_and1 = i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_valid & SE_out_coalesced_delay_3_fifo_and0;
    assign SE_out_coalesced_delay_3_fifo_wireValid = SE_out_coalesced_delay_1_fifo_V0 & SE_out_coalesced_delay_3_fifo_and1;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,192)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,193)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[771:0]);

    // sel_for_coalesced_delay_1(BITSELECT,134)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:96]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[159:128]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[191:160]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[223:192]);
    assign sel_for_coalesced_delay_1_i = $unsigned(bubble_select_coalesced_delay_1_fifo_b[255:224]);
    assign sel_for_coalesced_delay_1_j = $unsigned(bubble_select_coalesced_delay_1_fifo_b[287:256]);
    assign sel_for_coalesced_delay_1_k = $unsigned(bubble_select_coalesced_delay_1_fifo_b[319:288]);
    assign sel_for_coalesced_delay_1_l = $unsigned(bubble_select_coalesced_delay_1_fifo_b[351:320]);
    assign sel_for_coalesced_delay_1_m = $unsigned(bubble_select_coalesced_delay_1_fifo_b[383:352]);
    assign sel_for_coalesced_delay_1_n = $unsigned(bubble_select_coalesced_delay_1_fifo_b[415:384]);
    assign sel_for_coalesced_delay_1_o = $unsigned(bubble_select_coalesced_delay_1_fifo_b[447:416]);
    assign sel_for_coalesced_delay_1_p = $unsigned(bubble_select_coalesced_delay_1_fifo_b[479:448]);
    assign sel_for_coalesced_delay_1_q = $unsigned(bubble_select_coalesced_delay_1_fifo_b[511:480]);
    assign sel_for_coalesced_delay_1_r = $unsigned(bubble_select_coalesced_delay_1_fifo_b[543:512]);
    assign sel_for_coalesced_delay_1_s = $unsigned(bubble_select_coalesced_delay_1_fifo_b[575:544]);
    assign sel_for_coalesced_delay_1_t = $unsigned(bubble_select_coalesced_delay_1_fifo_b[607:576]);
    assign sel_for_coalesced_delay_1_u = $unsigned(bubble_select_coalesced_delay_1_fifo_b[639:608]);
    assign sel_for_coalesced_delay_1_v = $unsigned(bubble_select_coalesced_delay_1_fifo_b[671:640]);
    assign sel_for_coalesced_delay_1_w = $unsigned(bubble_select_coalesced_delay_1_fifo_b[703:672]);
    assign sel_for_coalesced_delay_1_x = $unsigned(bubble_select_coalesced_delay_1_fifo_b[735:704]);
    assign sel_for_coalesced_delay_1_y = $unsigned(bubble_select_coalesced_delay_1_fifo_b[767:736]);
    assign sel_for_coalesced_delay_1_z = $unsigned(bubble_select_coalesced_delay_1_fifo_b[768:768]);
    assign sel_for_coalesced_delay_1_aa = $unsigned(bubble_select_coalesced_delay_1_fifo_b[769:769]);
    assign sel_for_coalesced_delay_1_bb = $unsigned(bubble_select_coalesced_delay_1_fifo_b[770:770]);
    assign sel_for_coalesced_delay_1_cc = $unsigned(bubble_select_coalesced_delay_1_fifo_b[771:771]);

    // i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x(BLACKBOX,74)@148
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@156
    // out out_c1_exit591_0_tpl@156
    // out out_c1_exit591_1_tpl@156
    // out out_c1_exit591_2_tpl@156
    // out out_c1_exit591_3_tpl@156
    // out out_c1_exit591_4_tpl@156
    // out out_c1_exit591_5_tpl@156
    // out out_c1_exit591_6_tpl@156
    // out out_c1_exit591_7_tpl@156
    // out out_c1_exit591_8_tpl@156
    // out out_c1_exit591_9_tpl@156
    // out out_c1_exit591_10_tpl@156
    // out out_c1_exit591_11_tpl@156
    // out out_c1_exit591_12_tpl@156
    // out out_c1_exit591_13_tpl@156
    // out out_c1_exit591_14_tpl@156
    // out out_c1_exit591_15_tpl@156
    // out out_c1_exit591_16_tpl@156
    // out out_c1_exit591_17_tpl@156
    // out out_c1_exit591_18_tpl@156
    // out out_c1_exit591_19_tpl@156
    // out out_c1_exit591_20_tpl@156
    // out out_c1_exit591_21_tpl@156
    // out out_c1_exit591_22_tpl@156
    // out out_c1_exit591_23_tpl@156
    // out out_c1_exit591_24_tpl@156
    // out out_c1_exit591_25_tpl@156
    // out out_c1_exit591_26_tpl@156
    // out out_c1_exit591_27_tpl@156
    // out out_c1_exit591_28_tpl@156
    // out out_c1_exit591_29_tpl@156
    // out out_c1_exit591_30_tpl@156
    // out out_c1_exit591_31_tpl@156
    // out out_c1_exit591_32_tpl@156
    // out out_c1_exit591_33_tpl@156
    // out out_c1_exit591_34_tpl@156
    // out out_c1_exit591_35_tpl@156
    // out out_c1_exit591_36_tpl@156
    // out out_c1_exit591_37_tpl@156
    // out out_c1_exit591_38_tpl@156
    // out out_c1_exit591_39_tpl@156
    // out out_c1_exit591_40_tpl@156
    // out out_c1_exit591_41_tpl@156
    // out out_c1_exit591_42_tpl@156
    // out out_c1_exit591_43_tpl@156
    // out out_c1_exit591_44_tpl@156
    // out out_c1_exit591_45_tpl@156
    // out out_c1_exit591_46_tpl@156
    // out out_c1_exit591_47_tpl@156
    // out out_c1_exit591_48_tpl@156
    conv2d1x1_i_sfc_s_c1_in_for_body14_s_c1_enter564_conv2d1x115 thei_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x (
        .in_c0_exe1515(sel_for_coalesced_delay_1_z),
        .in_c0_exe22536(sel_for_coalesced_delay_1_aa),
        .in_i_stall(SE_out_coalesced_delay_2_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_3_fifo_V0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_c1_eni37_0_tpl(GND_q),
        .in_c1_eni37_0_20_tpl(bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_b),
        .in_c1_eni37_1_tpl(sel_for_coalesced_delay_1_q),
        .in_c1_eni37_1_20_tpl(bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_c),
        .in_c1_eni37_2_tpl(sel_for_coalesced_delay_1_aa),
        .in_c1_eni37_2_20_tpl(bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_d),
        .in_c1_eni37_3_tpl(sel_for_coalesced_delay_1_p),
        .in_c1_eni37_3_20_tpl(bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_e),
        .in_c1_eni37_4_tpl(sel_for_coalesced_delay_1_b),
        .in_c1_eni37_4_20_tpl(bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_f),
        .in_c1_eni37_5_tpl(sel_for_coalesced_delay_1_o),
        .in_c1_eni37_5_20_tpl(bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_g),
        .in_c1_eni37_6_tpl(sel_for_coalesced_delay_1_n),
        .in_c1_eni37_6_20_tpl(bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_h),
        .in_c1_eni37_7_tpl(sel_for_coalesced_delay_1_m),
        .in_c1_eni37_7_20_tpl(bubble_select_i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_i),
        .in_c1_eni37_8_tpl(sel_for_coalesced_delay_1_l),
        .in_c1_eni37_9_tpl(sel_for_coalesced_delay_1_k),
        .in_c1_eni37_10_tpl(sel_for_coalesced_delay_1_j),
        .in_c1_eni37_11_tpl(sel_for_coalesced_delay_1_i),
        .in_c1_eni37_12_tpl(sel_for_coalesced_delay_1_h),
        .in_c1_eni37_13_tpl(sel_for_coalesced_delay_1_g),
        .in_c1_eni37_14_tpl(sel_for_coalesced_delay_1_f),
        .in_c1_eni37_15_tpl(sel_for_coalesced_delay_1_e),
        .in_c1_eni37_16_tpl(sel_for_coalesced_delay_1_d),
        .in_c1_eni37_17_tpl(sel_for_coalesced_delay_1_c),
        .in_c1_eni37_18_tpl(sel_for_coalesced_delay_1_z),
        .in_c1_eni37_19_tpl(sel_for_coalesced_delay_1_bb),
        .in_c1_eni37_21_tpl(sel_for_coalesced_delay_1_y),
        .in_c1_eni37_22_tpl(sel_for_coalesced_delay_3_i),
        .in_c1_eni37_23_tpl(sel_for_coalesced_delay_1_x),
        .in_c1_eni37_24_tpl(sel_for_coalesced_delay_3_h),
        .in_c1_eni37_25_tpl(sel_for_coalesced_delay_1_w),
        .in_c1_eni37_26_tpl(sel_for_coalesced_delay_3_g),
        .in_c1_eni37_27_tpl(sel_for_coalesced_delay_1_v),
        .in_c1_eni37_28_tpl(sel_for_coalesced_delay_3_f),
        .in_c1_eni37_29_tpl(sel_for_coalesced_delay_1_u),
        .in_c1_eni37_30_tpl(sel_for_coalesced_delay_3_e),
        .in_c1_eni37_31_tpl(sel_for_coalesced_delay_1_t),
        .in_c1_eni37_32_tpl(sel_for_coalesced_delay_3_d),
        .in_c1_eni37_33_tpl(sel_for_coalesced_delay_1_s),
        .in_c1_eni37_34_tpl(sel_for_coalesced_delay_3_c),
        .in_c1_eni37_35_tpl(sel_for_coalesced_delay_1_r),
        .in_c1_eni37_36_tpl(sel_for_coalesced_delay_3_b),
        .in_c1_eni37_37_tpl(sel_for_coalesced_delay_1_cc),
        .out_o_stall(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_o_valid),
        .out_c1_exit591_0_tpl(),
        .out_c1_exit591_1_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_1_tpl),
        .out_c1_exit591_2_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_2_tpl),
        .out_c1_exit591_3_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_3_tpl),
        .out_c1_exit591_4_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_4_tpl),
        .out_c1_exit591_5_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_5_tpl),
        .out_c1_exit591_6_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_6_tpl),
        .out_c1_exit591_7_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_7_tpl),
        .out_c1_exit591_8_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_8_tpl),
        .out_c1_exit591_9_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_9_tpl),
        .out_c1_exit591_10_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_10_tpl),
        .out_c1_exit591_11_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_11_tpl),
        .out_c1_exit591_12_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_12_tpl),
        .out_c1_exit591_13_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_13_tpl),
        .out_c1_exit591_14_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_14_tpl),
        .out_c1_exit591_15_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_15_tpl),
        .out_c1_exit591_16_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_16_tpl),
        .out_c1_exit591_17_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_17_tpl),
        .out_c1_exit591_18_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_18_tpl),
        .out_c1_exit591_19_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_19_tpl),
        .out_c1_exit591_20_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_20_tpl),
        .out_c1_exit591_21_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_21_tpl),
        .out_c1_exit591_22_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_22_tpl),
        .out_c1_exit591_23_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_23_tpl),
        .out_c1_exit591_24_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_24_tpl),
        .out_c1_exit591_25_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_25_tpl),
        .out_c1_exit591_26_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_26_tpl),
        .out_c1_exit591_27_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_27_tpl),
        .out_c1_exit591_28_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_28_tpl),
        .out_c1_exit591_29_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_29_tpl),
        .out_c1_exit591_30_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_30_tpl),
        .out_c1_exit591_31_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_31_tpl),
        .out_c1_exit591_32_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_32_tpl),
        .out_c1_exit591_33_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_33_tpl),
        .out_c1_exit591_34_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_34_tpl),
        .out_c1_exit591_35_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_35_tpl),
        .out_c1_exit591_36_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_36_tpl),
        .out_c1_exit591_37_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_37_tpl),
        .out_c1_exit591_38_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_38_tpl),
        .out_c1_exit591_39_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_39_tpl),
        .out_c1_exit591_40_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_40_tpl),
        .out_c1_exit591_41_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_41_tpl),
        .out_c1_exit591_42_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_42_tpl),
        .out_c1_exit591_43_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_43_tpl),
        .out_c1_exit591_44_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_44_tpl),
        .out_c1_exit591_45_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_45_tpl),
        .out_c1_exit591_46_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_46_tpl),
        .out_c1_exit591_47_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_47_tpl),
        .out_c1_exit591_48_tpl(i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_48_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo(STALLFIFO,141)
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_in = SE_out_coalesced_delay_1_fifo_V1;
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_data_in = sel_for_coalesced_delay_1_bb;
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_in_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_in[0];
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_in_bitsignaltemp = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_in[0];
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_out[0] = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_out_bitsignaltemp;
    assign redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_out[0] = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo (
        .valid_in(redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_in_bitsignaltemp),
        .data_in(sel_for_coalesced_delay_1_bb),
        .valid_out(redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_2_fifo(STALLENABLE,242)
    // Valid signal propagation
    assign SE_out_coalesced_delay_2_fifo_V0 = SE_out_coalesced_delay_2_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_2_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_2_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_2_fifo_and0 = coalesced_delay_2_fifo_valid_out;
    assign SE_out_coalesced_delay_2_fifo_and1 = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_valid_out & SE_out_coalesced_delay_2_fifo_and0;
    assign SE_out_coalesced_delay_2_fifo_wireValid = i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_o_valid & SE_out_coalesced_delay_2_fifo_and1;

    // coalesced_delay_2_fifo(STALLFIFO,144)
    assign coalesced_delay_2_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_V2;
    assign coalesced_delay_2_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(148),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(164),
        .IMPL("ram")
    ) thecoalesced_delay_2_fifo (
        .valid_in(coalesced_delay_2_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_2_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_2_q),
        .valid_out(coalesced_delay_2_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_2_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_2_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_1(BITJOIN,133)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_w, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_x, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_y, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_z, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_aa, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_bb, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_cc, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_dd, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ee, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ff, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_gg, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ii, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_jj, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_kk, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ll, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_mm, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_nn, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_oo, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_pp, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_qq, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_rr, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_ss, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_tt, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_uu, bubble_select_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_hh};

    // coalesced_delay_1_fifo(STALLFIFO,143)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_V1;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(140),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(772),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13(STALLENABLE,200)
    // Valid signal propagation
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V0 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_0;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V1 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_1;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V2 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_2;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V3 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_3;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V4 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_4;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V5 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_5;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V6 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_6;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V7 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_7;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_V8 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_8;
    // Stall signal propagation
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_0 = i_llvm_fpga_mem_lm220_conv2d1x15_out_o_stall & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_0;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_1 = i_llvm_fpga_mem_lm223_conv2d1x17_out_o_stall & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_1;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_2 = i_llvm_fpga_mem_lm225_conv2d1x18_out_o_stall & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_2;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_3 = i_llvm_fpga_mem_lm227_conv2d1x19_out_o_stall & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_3;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_4 = i_llvm_fpga_mem_lm229_conv2d1x110_out_o_stall & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_4;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_5 = i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_o_stall & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_5;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_6 = i_llvm_fpga_mem_lm231_conv2d1x111_out_o_stall & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_6;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_7 = i_llvm_fpga_mem_lm233_conv2d1x112_out_o_stall & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_7;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_8 = i_llvm_fpga_mem_lm235_conv2d1x113_out_o_stall & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_8;
    // Backward Enable generation
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or0 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_0;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or1 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_1 | SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or0;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or2 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_2 | SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or1;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or3 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_3 | SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or2;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or4 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_4 | SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or3;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or5 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_5 | SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or4;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or6 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_6 | SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or5;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or7 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_7 | SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or6;
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN = ~ (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_8 | SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_or7);
    // Determine whether to write valid data into the first register stage
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0 = SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_V0;
    // Backward Stall generation
    assign SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backStall = ~ (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_0 <= 1'b0;
            SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_1 <= 1'b0;
            SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_2 <= 1'b0;
            SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_3 <= 1'b0;
            SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_4 <= 1'b0;
            SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_5 <= 1'b0;
            SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_6 <= 1'b0;
            SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_7 <= 1'b0;
            SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_8 <= 1'b0;
        end
        else
        begin
            if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b0)
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_0 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_0 & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_0;
            end
            else
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_0 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0;
            end

            if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b0)
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_1 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_1 & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_1;
            end
            else
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_1 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0;
            end

            if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b0)
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_2 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_2 & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_2;
            end
            else
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_2 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0;
            end

            if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b0)
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_3 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_3 & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_3;
            end
            else
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_3 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0;
            end

            if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b0)
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_4 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_4 & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_4;
            end
            else
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_4 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0;
            end

            if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b0)
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_5 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_5 & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_5;
            end
            else
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_5 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0;
            end

            if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b0)
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_6 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_6 & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_6;
            end
            else
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_6 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0;
            end

            if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b0)
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_7 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_7 & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_7;
            end
            else
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_7 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0;
            end

            if (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backEN == 1'b0)
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_8 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_8 & SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_s_tv_8;
            end
            else
            begin
                SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_R_v_8 <= SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x(STALLENABLE,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed0 = (~ (SE_i_llvm_fpga_fanout_i1_c0_exe7521_fanout_adaptor593_conv2d1x13_backStall) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed1 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed2 = (~ (coalesced_delay_2_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_wireValid = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x(BLACKBOX,73)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit514_0_tpl@9
    // out out_c0_exit514_1_tpl@9
    // out out_c0_exit514_2_tpl@9
    // out out_c0_exit514_3_tpl@9
    // out out_c0_exit514_4_tpl@9
    // out out_c0_exit514_5_tpl@9
    // out out_c0_exit514_6_tpl@9
    // out out_c0_exit514_7_tpl@9
    // out out_c0_exit514_8_tpl@9
    // out out_c0_exit514_9_tpl@9
    // out out_c0_exit514_10_tpl@9
    // out out_c0_exit514_11_tpl@9
    // out out_c0_exit514_12_tpl@9
    // out out_c0_exit514_13_tpl@9
    // out out_c0_exit514_14_tpl@9
    // out out_c0_exit514_15_tpl@9
    // out out_c0_exit514_16_tpl@9
    // out out_c0_exit514_17_tpl@9
    // out out_c0_exit514_18_tpl@9
    // out out_c0_exit514_19_tpl@9
    // out out_c0_exit514_20_tpl@9
    // out out_c0_exit514_21_tpl@9
    // out out_c0_exit514_22_tpl@9
    // out out_c0_exit514_23_tpl@9
    // out out_c0_exit514_24_tpl@9
    // out out_c0_exit514_25_tpl@9
    // out out_c0_exit514_26_tpl@9
    // out out_c0_exit514_27_tpl@9
    // out out_c0_exit514_28_tpl@9
    // out out_c0_exit514_29_tpl@9
    // out out_c0_exit514_30_tpl@9
    // out out_c0_exit514_31_tpl@9
    // out out_c0_exit514_32_tpl@9
    // out out_c0_exit514_33_tpl@9
    // out out_c0_exit514_34_tpl@9
    // out out_c0_exit514_35_tpl@9
    // out out_c0_exit514_36_tpl@9
    // out out_c0_exit514_37_tpl@9
    // out out_c0_exit514_38_tpl@9
    // out out_c0_exit514_39_tpl@9
    // out out_c0_exit514_40_tpl@9
    // out out_c0_exit514_41_tpl@9
    // out out_c0_exit514_42_tpl@9
    // out out_c0_exit514_43_tpl@9
    // out out_c0_exit514_44_tpl@9
    // out out_c0_exit514_45_tpl@9
    // out out_c0_exit514_46_tpl@9
    // out out_c0_exit514_47_tpl@9
    // out out_c0_exit514_48_tpl@9
    // out out_c0_exit514_49_tpl@9
    // out out_c0_exit514_50_tpl@9
    // out out_c0_exit514_51_tpl@9
    // out out_c0_exit514_52_tpl@9
    // out out_c0_exit514_53_tpl@9
    // out out_c0_exit514_54_tpl@9
    // out out_c0_exit514_55_tpl@9
    conv2d1x1_i_sfc_s_c0_in_for_body14_s_c0_enter46381_conv2d1x11 thei_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x (
        .in_filter_weight(in_filter_weight),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2d1x1_B8_merge_reg_aunroll_x_V0),
        .in_input_im(in_input_im),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni45_0_tpl(GND_q),
        .in_c0_eni45_1_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_b),
        .in_c0_eni45_2_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_nn),
        .in_c0_eni45_3_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_kk),
        .in_c0_eni45_4_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_mm),
        .in_c0_eni45_5_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_tt),
        .in_c0_eni45_6_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_pp),
        .in_c0_eni45_7_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ll),
        .in_c0_eni45_8_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_oo),
        .in_c0_eni45_9_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_qq),
        .in_c0_eni45_10_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_rr),
        .in_c0_eni45_11_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ss),
        .in_c0_eni45_12_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_jj),
        .in_c0_eni45_13_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_c),
        .in_c0_eni45_14_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_d),
        .in_c0_eni45_15_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_e),
        .in_c0_eni45_16_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_f),
        .in_c0_eni45_17_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_g),
        .in_c0_eni45_18_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_h),
        .in_c0_eni45_19_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_i),
        .in_c0_eni45_20_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_j),
        .in_c0_eni45_21_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_k),
        .in_c0_eni45_22_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_l),
        .in_c0_eni45_23_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_m),
        .in_c0_eni45_24_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_n),
        .in_c0_eni45_25_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_o),
        .in_c0_eni45_26_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_p),
        .in_c0_eni45_27_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_q),
        .in_c0_eni45_28_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_r),
        .in_c0_eni45_29_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_s),
        .in_c0_eni45_30_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_t),
        .in_c0_eni45_31_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_u),
        .in_c0_eni45_32_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_v),
        .in_c0_eni45_33_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_w),
        .in_c0_eni45_34_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_x),
        .in_c0_eni45_35_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_y),
        .in_c0_eni45_36_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_z),
        .in_c0_eni45_37_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_aa),
        .in_c0_eni45_38_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_bb),
        .in_c0_eni45_39_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_cc),
        .in_c0_eni45_40_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_dd),
        .in_c0_eni45_41_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ee),
        .in_c0_eni45_42_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ff),
        .in_c0_eni45_43_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_gg),
        .in_c0_eni45_44_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_hh),
        .in_c0_eni45_45_tpl(bubble_select_conv2d1x1_B8_merge_reg_aunroll_x_ii),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit514_0_tpl(),
        .out_c0_exit514_1_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_1_tpl),
        .out_c0_exit514_2_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_2_tpl),
        .out_c0_exit514_3_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_3_tpl),
        .out_c0_exit514_4_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl),
        .out_c0_exit514_5_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_5_tpl),
        .out_c0_exit514_6_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_6_tpl),
        .out_c0_exit514_7_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_7_tpl),
        .out_c0_exit514_8_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_8_tpl),
        .out_c0_exit514_9_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_9_tpl),
        .out_c0_exit514_10_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_10_tpl),
        .out_c0_exit514_11_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_11_tpl),
        .out_c0_exit514_12_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_12_tpl),
        .out_c0_exit514_13_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_13_tpl),
        .out_c0_exit514_14_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_14_tpl),
        .out_c0_exit514_15_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_15_tpl),
        .out_c0_exit514_16_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_16_tpl),
        .out_c0_exit514_17_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_17_tpl),
        .out_c0_exit514_18_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_18_tpl),
        .out_c0_exit514_19_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_19_tpl),
        .out_c0_exit514_20_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_20_tpl),
        .out_c0_exit514_21_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_21_tpl),
        .out_c0_exit514_22_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_22_tpl),
        .out_c0_exit514_23_tpl(),
        .out_c0_exit514_24_tpl(),
        .out_c0_exit514_25_tpl(),
        .out_c0_exit514_26_tpl(),
        .out_c0_exit514_27_tpl(),
        .out_c0_exit514_28_tpl(),
        .out_c0_exit514_29_tpl(),
        .out_c0_exit514_30_tpl(),
        .out_c0_exit514_31_tpl(),
        .out_c0_exit514_32_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_32_tpl),
        .out_c0_exit514_33_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_33_tpl),
        .out_c0_exit514_34_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_34_tpl),
        .out_c0_exit514_35_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_35_tpl),
        .out_c0_exit514_36_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_36_tpl),
        .out_c0_exit514_37_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_37_tpl),
        .out_c0_exit514_38_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_38_tpl),
        .out_c0_exit514_39_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_39_tpl),
        .out_c0_exit514_40_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_40_tpl),
        .out_c0_exit514_41_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_41_tpl),
        .out_c0_exit514_42_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_42_tpl),
        .out_c0_exit514_43_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_43_tpl),
        .out_c0_exit514_44_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_44_tpl),
        .out_c0_exit514_45_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_45_tpl),
        .out_c0_exit514_46_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_46_tpl),
        .out_c0_exit514_47_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_47_tpl),
        .out_c0_exit514_48_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_48_tpl),
        .out_c0_exit514_49_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_49_tpl),
        .out_c0_exit514_50_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_50_tpl),
        .out_c0_exit514_51_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_51_tpl),
        .out_c0_exit514_52_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_52_tpl),
        .out_c0_exit514_53_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_53_tpl),
        .out_c0_exit514_54_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_54_tpl),
        .out_c0_exit514_55_tpl(i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_55_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d1x16_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,42)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,51)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,55)
    assign out_lm220_conv2d1x1_avm_address = i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_address;
    assign out_lm220_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_enable;
    assign out_lm220_conv2d1x1_avm_read = i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_read;
    assign out_lm220_conv2d1x1_avm_write = i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_write;
    assign out_lm220_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_writedata;
    assign out_lm220_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_byteenable;
    assign out_lm220_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm220_conv2d1x15_out_lm220_conv2d1x1_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x(BITJOIN,185)
    assign bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q = {i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_48_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_47_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_46_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_45_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_44_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_43_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_42_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_41_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_40_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_39_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_38_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_37_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_36_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_35_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_34_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_33_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_32_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_31_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_30_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_29_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_28_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_27_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_26_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_25_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_24_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_23_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_22_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_21_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_20_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_19_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_18_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_17_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_16_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_15_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_14_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_13_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_12_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_11_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_10_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_9_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_8_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_7_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_6_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_5_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_4_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_3_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_2_tpl, i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_out_c1_exit591_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x(BITSELECT,186)
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_e = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[127:96]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_f = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[159:128]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_g = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[191:160]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_h = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[223:192]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_i = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[255:224]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_j = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[287:256]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_k = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[319:288]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_l = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[351:320]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_m = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[383:352]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_n = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[415:384]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_o = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[447:416]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_p = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[479:448]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[511:480]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_r = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[543:512]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_s = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[575:544]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_t = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[607:576]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_u = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[639:608]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_v = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[671:640]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_w = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[703:672]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_x = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[735:704]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_y = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[767:736]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_z = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[799:768]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[831:800]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[863:832]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[895:864]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[927:896]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[959:928]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[991:960]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1023:992]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_hh = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1055:1024]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ii = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1087:1056]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_jj = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1119:1088]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_kk = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1151:1120]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ll = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1183:1152]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_mm = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1215:1184]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_nn = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1247:1216]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_oo = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1279:1248]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_pp = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1311:1280]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_qq = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1343:1312]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_rr = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1375:1344]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ss = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1407:1376]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_tt = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1439:1408]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_uu = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1471:1440]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_vv = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1503:1472]);
    assign bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ww = $unsigned(bubble_join_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q[1535:1504]);

    // bubble_join_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo(BITJOIN,189)
    assign bubble_join_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_q = redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_data_out;

    // bubble_select_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo(BITSELECT,190)
    assign bubble_select_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_b = $unsigned(bubble_join_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_q[0:0]);

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,195)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,196)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[163:0]);

    // sel_for_coalesced_delay_2(BITSELECT,137)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[95:64]);
    assign sel_for_coalesced_delay_2_d = $unsigned(bubble_select_coalesced_delay_2_fifo_b[127:96]);
    assign sel_for_coalesced_delay_2_e = $unsigned(bubble_select_coalesced_delay_2_fifo_b[159:128]);
    assign sel_for_coalesced_delay_2_f = $unsigned(bubble_select_coalesced_delay_2_fifo_b[160:160]);
    assign sel_for_coalesced_delay_2_g = $unsigned(bubble_select_coalesced_delay_2_fifo_b[161:161]);
    assign sel_for_coalesced_delay_2_h = $unsigned(bubble_select_coalesced_delay_2_fifo_b[162:162]);
    assign sel_for_coalesced_delay_2_i = $unsigned(bubble_select_coalesced_delay_2_fifo_b[163:163]);

    // dupName_0_sync_out_x(GPOUT,56)@156
    assign out_c0_exe16530 = sel_for_coalesced_delay_2_g;
    assign out_c0_exe17531 = sel_for_coalesced_delay_2_d;
    assign out_c0_exe18532 = sel_for_coalesced_delay_2_e;
    assign out_c0_exe19533 = sel_for_coalesced_delay_2_h;
    assign out_c0_exe20534 = sel_for_coalesced_delay_2_i;
    assign out_c0_exe21535 = sel_for_coalesced_delay_2_b;
    assign out_c0_exe3517 = sel_for_coalesced_delay_2_f;
    assign out_c0_exe4518 = bubble_select_redist4_i_sfc_s_c0_in_for_body14_conv2d1x1s_c0_enter46381_conv2d1x11_aunroll_x_out_c0_exit514_4_tpl_147_fifo_b;
    assign out_c0_exe5519 = sel_for_coalesced_delay_2_c;
    assign out_c1_exe10 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_k;
    assign out_c1_exe11 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_l;
    assign out_c1_exe12 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_m;
    assign out_c1_exe13 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_n;
    assign out_c1_exe14 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_o;
    assign out_c1_exe15 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_p;
    assign out_c1_exe1592 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_b;
    assign out_c1_exe16 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_q;
    assign out_c1_exe17 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_r;
    assign out_c1_exe18 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_s;
    assign out_c1_exe19 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_t;
    assign out_c1_exe2 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_c;
    assign out_c1_exe20 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_u;
    assign out_c1_exe21 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_v;
    assign out_c1_exe22 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_w;
    assign out_c1_exe23 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_x;
    assign out_c1_exe24 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_y;
    assign out_c1_exe25 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_z;
    assign out_c1_exe26 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_aa;
    assign out_c1_exe27 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_bb;
    assign out_c1_exe28 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_cc;
    assign out_c1_exe29 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_dd;
    assign out_c1_exe3 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_d;
    assign out_c1_exe30 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ee;
    assign out_c1_exe31 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ff;
    assign out_c1_exe32 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_gg;
    assign out_c1_exe33 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_hh;
    assign out_c1_exe34 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ii;
    assign out_c1_exe35 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_jj;
    assign out_c1_exe36 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_kk;
    assign out_c1_exe37 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ll;
    assign out_c1_exe38 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_mm;
    assign out_c1_exe39 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_nn;
    assign out_c1_exe4 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_e;
    assign out_c1_exe40 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_oo;
    assign out_c1_exe41 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_pp;
    assign out_c1_exe42 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_qq;
    assign out_c1_exe43 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_rr;
    assign out_c1_exe44 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ss;
    assign out_c1_exe45 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_tt;
    assign out_c1_exe46 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_uu;
    assign out_c1_exe47 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_vv;
    assign out_c1_exe48 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_ww;
    assign out_c1_exe5 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_f;
    assign out_c1_exe6 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_g;
    assign out_c1_exe7 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_h;
    assign out_c1_exe8 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_i;
    assign out_c1_exe9 = bubble_select_i_sfc_s_c1_in_for_body14_conv2d1x1s_c1_enter564_conv2d1x115_aunroll_vunroll_x_j;
    assign out_valid_out = SE_out_coalesced_delay_2_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,58)
    assign out_lm222_conv2d1x1_avm_address = i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_address;
    assign out_lm222_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_enable;
    assign out_lm222_conv2d1x1_avm_read = i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_read;
    assign out_lm222_conv2d1x1_avm_write = i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_write;
    assign out_lm222_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_writedata;
    assign out_lm222_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_byteenable;
    assign out_lm222_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm222_conv2d1x16_vunroll_x_out_lm222_conv2d1x1_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,60)
    assign out_lm223_conv2d1x1_avm_address = i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_address;
    assign out_lm223_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_enable;
    assign out_lm223_conv2d1x1_avm_read = i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_read;
    assign out_lm223_conv2d1x1_avm_write = i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_write;
    assign out_lm223_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_writedata;
    assign out_lm223_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_byteenable;
    assign out_lm223_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm223_conv2d1x17_out_lm223_conv2d1x1_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,62)
    assign out_lm225_conv2d1x1_avm_address = i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_address;
    assign out_lm225_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_enable;
    assign out_lm225_conv2d1x1_avm_read = i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_read;
    assign out_lm225_conv2d1x1_avm_write = i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_write;
    assign out_lm225_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_writedata;
    assign out_lm225_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_byteenable;
    assign out_lm225_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm225_conv2d1x18_out_lm225_conv2d1x1_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,64)
    assign out_lm227_conv2d1x1_avm_address = i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_address;
    assign out_lm227_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_enable;
    assign out_lm227_conv2d1x1_avm_read = i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_read;
    assign out_lm227_conv2d1x1_avm_write = i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_write;
    assign out_lm227_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_writedata;
    assign out_lm227_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_byteenable;
    assign out_lm227_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm227_conv2d1x19_out_lm227_conv2d1x1_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,66)
    assign out_lm229_conv2d1x1_avm_address = i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_address;
    assign out_lm229_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_enable;
    assign out_lm229_conv2d1x1_avm_read = i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_read;
    assign out_lm229_conv2d1x1_avm_write = i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_write;
    assign out_lm229_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_writedata;
    assign out_lm229_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_byteenable;
    assign out_lm229_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm229_conv2d1x110_out_lm229_conv2d1x1_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,68)
    assign out_lm231_conv2d1x1_avm_address = i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_address;
    assign out_lm231_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_enable;
    assign out_lm231_conv2d1x1_avm_read = i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_read;
    assign out_lm231_conv2d1x1_avm_write = i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_write;
    assign out_lm231_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_writedata;
    assign out_lm231_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_byteenable;
    assign out_lm231_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm231_conv2d1x111_out_lm231_conv2d1x1_avm_burstcount;

    // dupName_7_ext_sig_sync_out_x(GPOUT,70)
    assign out_lm233_conv2d1x1_avm_address = i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_address;
    assign out_lm233_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_enable;
    assign out_lm233_conv2d1x1_avm_read = i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_read;
    assign out_lm233_conv2d1x1_avm_write = i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_write;
    assign out_lm233_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_writedata;
    assign out_lm233_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_byteenable;
    assign out_lm233_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm233_conv2d1x112_out_lm233_conv2d1x1_avm_burstcount;

    // dupName_8_ext_sig_sync_out_x(GPOUT,71)
    assign out_lm235_conv2d1x1_avm_address = i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_address;
    assign out_lm235_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_enable;
    assign out_lm235_conv2d1x1_avm_read = i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_read;
    assign out_lm235_conv2d1x1_avm_write = i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_write;
    assign out_lm235_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_writedata;
    assign out_lm235_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_byteenable;
    assign out_lm235_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm235_conv2d1x113_out_lm235_conv2d1x1_avm_burstcount;

endmodule
