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

// SystemVerilog created from mmul_bb_B6
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B6 (
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [63:0] in_C,
    input wire [31:0] in_N,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked10_0,
    input wire [0:0] in_forked10_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_j_025_pop1139_0,
    input wire [31:0] in_j_025_pop1139_1,
    input wire [511:0] in_lm7_mmul_avm_readdata,
    input wire [0:0] in_lm7_mmul_avm_readdatavalid,
    input wire [0:0] in_lm7_mmul_avm_waitrequest,
    input wire [0:0] in_lm7_mmul_avm_writeack,
    input wire [511:0] in_lm_mmul_avm_readdata,
    input wire [0:0] in_lm_mmul_avm_readdatavalid,
    input wire [0:0] in_lm_mmul_avm_waitrequest,
    input wire [0:0] in_lm_mmul_avm_writeack,
    input wire [0:0] in_memdep_phi17_pop924_pop1644_0,
    input wire [0:0] in_memdep_phi17_pop924_pop1644_1,
    input wire [0:0] in_memdep_phi17_pop937_0,
    input wire [0:0] in_memdep_phi17_pop937_1,
    input wire [0:0] in_memdep_phi_pop1240_0,
    input wire [0:0] in_memdep_phi_pop1240_1,
    input wire [31:0] in_mul20_pop1341_0,
    input wire [31:0] in_mul20_pop1341_1,
    input wire [31:0] in_mul31_0,
    input wire [31:0] in_mul31_1,
    input wire [0:0] in_notcmp1238_0,
    input wire [0:0] in_notcmp1238_1,
    input wire [0:0] in_notcmp1622_pop1543_0,
    input wire [0:0] in_notcmp1622_pop1543_1,
    input wire [0:0] in_notcmp1634_0,
    input wire [0:0] in_notcmp1634_1,
    input wire [0:0] in_pop1442_0,
    input wire [0:0] in_pop1442_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_mmul6_0,
    input wire [0:0] in_unnamed_mmul6_1,
    input wire [0:0] in_unnamed_mmul7_0,
    input wire [0:0] in_unnamed_mmul7_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe11101,
    output wire [0:0] out_c0_exe12102,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe292,
    output wire [31:0] out_c0_exe393,
    output wire [31:0] out_c0_exe797,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [30:0] out_lm7_mmul_avm_address,
    output wire [4:0] out_lm7_mmul_avm_burstcount,
    output wire [63:0] out_lm7_mmul_avm_byteenable,
    output wire [0:0] out_lm7_mmul_avm_enable,
    output wire [0:0] out_lm7_mmul_avm_read,
    output wire [0:0] out_lm7_mmul_avm_write,
    output wire [511:0] out_lm7_mmul_avm_writedata,
    output wire [30:0] out_lm_mmul_avm_address,
    output wire [4:0] out_lm_mmul_avm_burstcount,
    output wire [63:0] out_lm_mmul_avm_byteenable,
    output wire [0:0] out_lm_mmul_avm_enable,
    output wire [0:0] out_lm_mmul_avm_read,
    output wire [0:0] out_lm_mmul_avm_write,
    output wire [511:0] out_lm_mmul_avm_writedata,
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

    wire [0:0] bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out;
    wire [0:0] bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out;
    wire [0:0] bb_mmul_B6_stall_region_out_c0_exe10100;
    wire [0:0] bb_mmul_B6_stall_region_out_c0_exe11101;
    wire [0:0] bb_mmul_B6_stall_region_out_c0_exe12102;
    wire [0:0] bb_mmul_B6_stall_region_out_c0_exe13;
    wire [0:0] bb_mmul_B6_stall_region_out_c0_exe14;
    wire [0:0] bb_mmul_B6_stall_region_out_c0_exe292;
    wire [31:0] bb_mmul_B6_stall_region_out_c0_exe393;
    wire [31:0] bb_mmul_B6_stall_region_out_c0_exe797;
    wire [31:0] bb_mmul_B6_stall_region_out_c1_exe1;
    wire [30:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_address;
    wire [4:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_enable;
    wire [0:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_read;
    wire [0:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_write;
    wire [511:0] bb_mmul_B6_stall_region_out_lm7_mmul_avm_writedata;
    wire [30:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_address;
    wire [4:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_enable;
    wire [0:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_read;
    wire [0:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_write;
    wire [511:0] bb_mmul_B6_stall_region_out_lm_mmul_avm_writedata;
    wire [0:0] bb_mmul_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_mmul_B6_stall_region_out_stall_out;
    wire [0:0] bb_mmul_B6_stall_region_out_valid_out;
    wire [0:0] mmul_B6_branch_out_c0_exe11101;
    wire [0:0] mmul_B6_branch_out_c0_exe12102;
    wire [0:0] mmul_B6_branch_out_c0_exe13;
    wire [0:0] mmul_B6_branch_out_c0_exe14;
    wire [0:0] mmul_B6_branch_out_c0_exe292;
    wire [31:0] mmul_B6_branch_out_c0_exe393;
    wire [31:0] mmul_B6_branch_out_c0_exe797;
    wire [31:0] mmul_B6_branch_out_c1_exe1;
    wire [0:0] mmul_B6_branch_out_stall_out;
    wire [0:0] mmul_B6_branch_out_valid_out_0;
    wire [0:0] mmul_B6_branch_out_valid_out_1;
    wire [0:0] mmul_B6_merge_out_forked10;
    wire [31:0] mmul_B6_merge_out_j_025_pop1139;
    wire [0:0] mmul_B6_merge_out_memdep_phi17_pop924_pop1644;
    wire [0:0] mmul_B6_merge_out_memdep_phi17_pop937;
    wire [0:0] mmul_B6_merge_out_memdep_phi_pop1240;
    wire [31:0] mmul_B6_merge_out_mul20_pop1341;
    wire [31:0] mmul_B6_merge_out_mul31;
    wire [0:0] mmul_B6_merge_out_notcmp1238;
    wire [0:0] mmul_B6_merge_out_notcmp1622_pop1543;
    wire [0:0] mmul_B6_merge_out_notcmp1634;
    wire [0:0] mmul_B6_merge_out_pop1442;
    wire [0:0] mmul_B6_merge_out_stall_out_0;
    wire [0:0] mmul_B6_merge_out_stall_out_1;
    wire [0:0] mmul_B6_merge_out_unnamed_mmul6;
    wire [0:0] mmul_B6_merge_out_unnamed_mmul7;
    wire [0:0] mmul_B6_merge_out_valid_out;


    // mmul_B6_merge(BLACKBOX,49)
    mmul_B6_merge themmul_B6_merge (
        .in_forked10_0(in_forked10_0),
        .in_forked10_1(in_forked10_1),
        .in_j_025_pop1139_0(in_j_025_pop1139_0),
        .in_j_025_pop1139_1(in_j_025_pop1139_1),
        .in_memdep_phi17_pop924_pop1644_0(in_memdep_phi17_pop924_pop1644_0),
        .in_memdep_phi17_pop924_pop1644_1(in_memdep_phi17_pop924_pop1644_1),
        .in_memdep_phi17_pop937_0(in_memdep_phi17_pop937_0),
        .in_memdep_phi17_pop937_1(in_memdep_phi17_pop937_1),
        .in_memdep_phi_pop1240_0(in_memdep_phi_pop1240_0),
        .in_memdep_phi_pop1240_1(in_memdep_phi_pop1240_1),
        .in_mul20_pop1341_0(in_mul20_pop1341_0),
        .in_mul20_pop1341_1(in_mul20_pop1341_1),
        .in_mul31_0(in_mul31_0),
        .in_mul31_1(in_mul31_1),
        .in_notcmp1238_0(in_notcmp1238_0),
        .in_notcmp1238_1(in_notcmp1238_1),
        .in_notcmp1622_pop1543_0(in_notcmp1622_pop1543_0),
        .in_notcmp1622_pop1543_1(in_notcmp1622_pop1543_1),
        .in_notcmp1634_0(in_notcmp1634_0),
        .in_notcmp1634_1(in_notcmp1634_1),
        .in_pop1442_0(in_pop1442_0),
        .in_pop1442_1(in_pop1442_1),
        .in_stall_in(bb_mmul_B6_stall_region_out_stall_out),
        .in_unnamed_mmul6_0(in_unnamed_mmul6_0),
        .in_unnamed_mmul6_1(in_unnamed_mmul6_1),
        .in_unnamed_mmul7_0(in_unnamed_mmul7_0),
        .in_unnamed_mmul7_1(in_unnamed_mmul7_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked10(mmul_B6_merge_out_forked10),
        .out_j_025_pop1139(mmul_B6_merge_out_j_025_pop1139),
        .out_memdep_phi17_pop924_pop1644(mmul_B6_merge_out_memdep_phi17_pop924_pop1644),
        .out_memdep_phi17_pop937(mmul_B6_merge_out_memdep_phi17_pop937),
        .out_memdep_phi_pop1240(mmul_B6_merge_out_memdep_phi_pop1240),
        .out_mul20_pop1341(mmul_B6_merge_out_mul20_pop1341),
        .out_mul31(mmul_B6_merge_out_mul31),
        .out_notcmp1238(mmul_B6_merge_out_notcmp1238),
        .out_notcmp1622_pop1543(mmul_B6_merge_out_notcmp1622_pop1543),
        .out_notcmp1634(mmul_B6_merge_out_notcmp1634),
        .out_pop1442(mmul_B6_merge_out_pop1442),
        .out_stall_out_0(mmul_B6_merge_out_stall_out_0),
        .out_stall_out_1(mmul_B6_merge_out_stall_out_1),
        .out_unnamed_mmul6(mmul_B6_merge_out_unnamed_mmul6),
        .out_unnamed_mmul7(mmul_B6_merge_out_unnamed_mmul7),
        .out_valid_out(mmul_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B6_stall_region(BLACKBOX,2)
    mmul_bb_B6_stall_region thebb_mmul_B6_stall_region (
        .in_A(in_A),
        .in_B(in_B),
        .in_N(in_N),
        .in_flush(in_flush),
        .in_forked10(mmul_B6_merge_out_forked10),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_j_025_pop1139(mmul_B6_merge_out_j_025_pop1139),
        .in_lm7_mmul_avm_readdata(in_lm7_mmul_avm_readdata),
        .in_lm7_mmul_avm_readdatavalid(in_lm7_mmul_avm_readdatavalid),
        .in_lm7_mmul_avm_waitrequest(in_lm7_mmul_avm_waitrequest),
        .in_lm7_mmul_avm_writeack(in_lm7_mmul_avm_writeack),
        .in_lm_mmul_avm_readdata(in_lm_mmul_avm_readdata),
        .in_lm_mmul_avm_readdatavalid(in_lm_mmul_avm_readdatavalid),
        .in_lm_mmul_avm_waitrequest(in_lm_mmul_avm_waitrequest),
        .in_lm_mmul_avm_writeack(in_lm_mmul_avm_writeack),
        .in_memdep_phi17_pop924_pop1644(mmul_B6_merge_out_memdep_phi17_pop924_pop1644),
        .in_memdep_phi17_pop937(mmul_B6_merge_out_memdep_phi17_pop937),
        .in_memdep_phi_pop1240(mmul_B6_merge_out_memdep_phi_pop1240),
        .in_mul20_pop1341(mmul_B6_merge_out_mul20_pop1341),
        .in_mul31(mmul_B6_merge_out_mul31),
        .in_notcmp1238(mmul_B6_merge_out_notcmp1238),
        .in_notcmp1622_pop1543(mmul_B6_merge_out_notcmp1622_pop1543),
        .in_notcmp1634(mmul_B6_merge_out_notcmp1634),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop1442(mmul_B6_merge_out_pop1442),
        .in_stall_in(mmul_B6_branch_out_stall_out),
        .in_unnamed_mmul6(mmul_B6_merge_out_unnamed_mmul6),
        .in_unnamed_mmul7(mmul_B6_merge_out_unnamed_mmul7),
        .in_valid_in(mmul_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out(bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out(bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out),
        .out_c0_exe10100(bb_mmul_B6_stall_region_out_c0_exe10100),
        .out_c0_exe11101(bb_mmul_B6_stall_region_out_c0_exe11101),
        .out_c0_exe12102(bb_mmul_B6_stall_region_out_c0_exe12102),
        .out_c0_exe13(bb_mmul_B6_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_mmul_B6_stall_region_out_c0_exe14),
        .out_c0_exe292(bb_mmul_B6_stall_region_out_c0_exe292),
        .out_c0_exe393(bb_mmul_B6_stall_region_out_c0_exe393),
        .out_c0_exe797(bb_mmul_B6_stall_region_out_c0_exe797),
        .out_c1_exe1(bb_mmul_B6_stall_region_out_c1_exe1),
        .out_lm7_mmul_avm_address(bb_mmul_B6_stall_region_out_lm7_mmul_avm_address),
        .out_lm7_mmul_avm_burstcount(bb_mmul_B6_stall_region_out_lm7_mmul_avm_burstcount),
        .out_lm7_mmul_avm_byteenable(bb_mmul_B6_stall_region_out_lm7_mmul_avm_byteenable),
        .out_lm7_mmul_avm_enable(bb_mmul_B6_stall_region_out_lm7_mmul_avm_enable),
        .out_lm7_mmul_avm_read(bb_mmul_B6_stall_region_out_lm7_mmul_avm_read),
        .out_lm7_mmul_avm_write(bb_mmul_B6_stall_region_out_lm7_mmul_avm_write),
        .out_lm7_mmul_avm_writedata(bb_mmul_B6_stall_region_out_lm7_mmul_avm_writedata),
        .out_lm_mmul_avm_address(bb_mmul_B6_stall_region_out_lm_mmul_avm_address),
        .out_lm_mmul_avm_burstcount(bb_mmul_B6_stall_region_out_lm_mmul_avm_burstcount),
        .out_lm_mmul_avm_byteenable(bb_mmul_B6_stall_region_out_lm_mmul_avm_byteenable),
        .out_lm_mmul_avm_enable(bb_mmul_B6_stall_region_out_lm_mmul_avm_enable),
        .out_lm_mmul_avm_read(bb_mmul_B6_stall_region_out_lm_mmul_avm_read),
        .out_lm_mmul_avm_write(bb_mmul_B6_stall_region_out_lm_mmul_avm_write),
        .out_lm_mmul_avm_writedata(bb_mmul_B6_stall_region_out_lm_mmul_avm_writedata),
        .out_pipeline_valid_out(bb_mmul_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_mmul_B6_stall_region_out_stall_out),
        .out_valid_out(bb_mmul_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B6_branch(BLACKBOX,48)
    mmul_B6_branch themmul_B6_branch (
        .in_c0_exe10100(bb_mmul_B6_stall_region_out_c0_exe10100),
        .in_c0_exe11101(bb_mmul_B6_stall_region_out_c0_exe11101),
        .in_c0_exe12102(bb_mmul_B6_stall_region_out_c0_exe12102),
        .in_c0_exe13(bb_mmul_B6_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_mmul_B6_stall_region_out_c0_exe14),
        .in_c0_exe292(bb_mmul_B6_stall_region_out_c0_exe292),
        .in_c0_exe393(bb_mmul_B6_stall_region_out_c0_exe393),
        .in_c0_exe797(bb_mmul_B6_stall_region_out_c0_exe797),
        .in_c1_exe1(bb_mmul_B6_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_mmul_B6_stall_region_out_valid_out),
        .out_c0_exe11101(mmul_B6_branch_out_c0_exe11101),
        .out_c0_exe12102(mmul_B6_branch_out_c0_exe12102),
        .out_c0_exe13(mmul_B6_branch_out_c0_exe13),
        .out_c0_exe14(mmul_B6_branch_out_c0_exe14),
        .out_c0_exe292(mmul_B6_branch_out_c0_exe292),
        .out_c0_exe393(mmul_B6_branch_out_c0_exe393),
        .out_c0_exe797(mmul_B6_branch_out_c0_exe797),
        .out_c1_exe1(mmul_B6_branch_out_c1_exe1),
        .out_stall_out(mmul_B6_branch_out_stall_out),
        .out_valid_out_0(mmul_B6_branch_out_valid_out_0),
        .out_valid_out_1(mmul_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe11101(GPOUT,50)
    assign out_c0_exe11101 = mmul_B6_branch_out_c0_exe11101;

    // out_c0_exe12102(GPOUT,51)
    assign out_c0_exe12102 = mmul_B6_branch_out_c0_exe12102;

    // out_c0_exe13(GPOUT,52)
    assign out_c0_exe13 = mmul_B6_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,53)
    assign out_c0_exe14 = mmul_B6_branch_out_c0_exe14;

    // out_c0_exe292(GPOUT,54)
    assign out_c0_exe292 = mmul_B6_branch_out_c0_exe292;

    // out_c0_exe393(GPOUT,55)
    assign out_c0_exe393 = mmul_B6_branch_out_c0_exe393;

    // out_c0_exe797(GPOUT,56)
    assign out_c0_exe797 = mmul_B6_branch_out_c0_exe797;

    // out_c1_exe1(GPOUT,57)
    assign out_c1_exe1 = mmul_B6_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,58)
    assign out_exiting_stall_out = bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,59)
    assign out_exiting_valid_out = bb_mmul_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out;

    // out_lm7_mmul_avm_address(GPOUT,60)
    assign out_lm7_mmul_avm_address = bb_mmul_B6_stall_region_out_lm7_mmul_avm_address;

    // out_lm7_mmul_avm_burstcount(GPOUT,61)
    assign out_lm7_mmul_avm_burstcount = bb_mmul_B6_stall_region_out_lm7_mmul_avm_burstcount;

    // out_lm7_mmul_avm_byteenable(GPOUT,62)
    assign out_lm7_mmul_avm_byteenable = bb_mmul_B6_stall_region_out_lm7_mmul_avm_byteenable;

    // out_lm7_mmul_avm_enable(GPOUT,63)
    assign out_lm7_mmul_avm_enable = bb_mmul_B6_stall_region_out_lm7_mmul_avm_enable;

    // out_lm7_mmul_avm_read(GPOUT,64)
    assign out_lm7_mmul_avm_read = bb_mmul_B6_stall_region_out_lm7_mmul_avm_read;

    // out_lm7_mmul_avm_write(GPOUT,65)
    assign out_lm7_mmul_avm_write = bb_mmul_B6_stall_region_out_lm7_mmul_avm_write;

    // out_lm7_mmul_avm_writedata(GPOUT,66)
    assign out_lm7_mmul_avm_writedata = bb_mmul_B6_stall_region_out_lm7_mmul_avm_writedata;

    // out_lm_mmul_avm_address(GPOUT,67)
    assign out_lm_mmul_avm_address = bb_mmul_B6_stall_region_out_lm_mmul_avm_address;

    // out_lm_mmul_avm_burstcount(GPOUT,68)
    assign out_lm_mmul_avm_burstcount = bb_mmul_B6_stall_region_out_lm_mmul_avm_burstcount;

    // out_lm_mmul_avm_byteenable(GPOUT,69)
    assign out_lm_mmul_avm_byteenable = bb_mmul_B6_stall_region_out_lm_mmul_avm_byteenable;

    // out_lm_mmul_avm_enable(GPOUT,70)
    assign out_lm_mmul_avm_enable = bb_mmul_B6_stall_region_out_lm_mmul_avm_enable;

    // out_lm_mmul_avm_read(GPOUT,71)
    assign out_lm_mmul_avm_read = bb_mmul_B6_stall_region_out_lm_mmul_avm_read;

    // out_lm_mmul_avm_write(GPOUT,72)
    assign out_lm_mmul_avm_write = bb_mmul_B6_stall_region_out_lm_mmul_avm_write;

    // out_lm_mmul_avm_writedata(GPOUT,73)
    assign out_lm_mmul_avm_writedata = bb_mmul_B6_stall_region_out_lm_mmul_avm_writedata;

    // out_stall_in_0(GPOUT,74)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,75)
    assign out_stall_out_0 = mmul_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,76)
    assign out_stall_out_1 = mmul_B6_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,77)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,78)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,79)
    assign out_valid_out_0 = mmul_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,80)
    assign out_valid_out_1 = mmul_B6_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,82)
    assign out_pipeline_valid_out = bb_mmul_B6_stall_region_out_pipeline_valid_out;

endmodule
