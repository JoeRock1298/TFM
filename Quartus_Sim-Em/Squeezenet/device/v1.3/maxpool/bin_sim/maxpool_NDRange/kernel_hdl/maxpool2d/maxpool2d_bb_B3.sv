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

// SystemVerilog created from maxpool2d_bb_B3
// SystemVerilog created on Sat Jun  3 12:58:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B3 (
    input wire [63:0] in_c0_exe11_0,
    input wire [63:0] in_c0_exe11_1,
    input wire [31:0] in_c0_exe12819_0,
    input wire [31:0] in_c0_exe12819_1,
    input wire [63:0] in_c0_exe25_0,
    input wire [63:0] in_c0_exe25_1,
    input wire [0:0] in_c0_exe37_0,
    input wire [0:0] in_c0_exe37_1,
    input wire [0:0] in_c0_exe410_0,
    input wire [0:0] in_c0_exe410_1,
    input wire [0:0] in_flush,
    input wire [31:0] in_i_03814_0,
    input wire [31:0] in_i_03814_1,
    input wire [31:0] in_input_size,
    input wire [31:0] in_j_03616_0,
    input wire [31:0] in_j_03616_1,
    input wire [31:0] in_k_034_0,
    input wire [31:0] in_k_034_1,
    input wire [31:0] in_l_032_0,
    input wire [31:0] in_l_032_1,
    input wire [511:0] in_lm_maxpool2d_avm_readdata,
    input wire [0:0] in_lm_maxpool2d_avm_readdatavalid,
    input wire [0:0] in_lm_maxpool2d_avm_waitrequest,
    input wire [0:0] in_lm_maxpool2d_avm_writeack,
    input wire [31:0] in_mul2217_0,
    input wire [31:0] in_mul2217_1,
    input wire [31:0] in_mul2420_0,
    input wire [31:0] in_mul2420_1,
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_tmp_131_0,
    input wire [31:0] in_tmp_131_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12819,
    output wire [63:0] out_c0_exe25,
    output wire [0:0] out_c0_exe37,
    output wire [0:0] out_c0_exe410,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_i_03814,
    output wire [31:0] out_j_03616,
    output wire [31:0] out_k_034_LC_OuterPHI,
    output wire [31:0] out_l_032_LC_InnerPHI,
    output wire [30:0] out_lm_maxpool2d_avm_address,
    output wire [4:0] out_lm_maxpool2d_avm_burstcount,
    output wire [63:0] out_lm_maxpool2d_avm_byteenable,
    output wire [0:0] out_lm_maxpool2d_avm_enable,
    output wire [0:0] out_lm_maxpool2d_avm_read,
    output wire [0:0] out_lm_maxpool2d_avm_write,
    output wire [511:0] out_lm_maxpool2d_avm_writedata,
    output wire [31:0] out_mul2217,
    output wire [31:0] out_mul2420,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_maxpool2d_B3_stall_region_out_c0_exe11;
    wire [31:0] bb_maxpool2d_B3_stall_region_out_c0_exe12819;
    wire [63:0] bb_maxpool2d_B3_stall_region_out_c0_exe25;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_c0_exe37;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_c0_exe410;
    wire [31:0] bb_maxpool2d_B3_stall_region_out_c1_exe1;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_for_cond_cleanup15_LC_COND;
    wire [31:0] bb_maxpool2d_B3_stall_region_out_i_03814;
    wire [31:0] bb_maxpool2d_B3_stall_region_out_j_03616;
    wire [31:0] bb_maxpool2d_B3_stall_region_out_k_034_LC_OuterPHI;
    wire [31:0] bb_maxpool2d_B3_stall_region_out_l_032_LC_InnerPHI;
    wire [30:0] bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_address;
    wire [4:0] bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_burstcount;
    wire [63:0] bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_byteenable;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_enable;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_read;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_write;
    wire [511:0] bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_writedata;
    wire [31:0] bb_maxpool2d_B3_stall_region_out_mul2217;
    wire [31:0] bb_maxpool2d_B3_stall_region_out_mul2420;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_stall_out;
    wire [0:0] bb_maxpool2d_B3_stall_region_out_valid_out;
    wire [63:0] maxpool2d_B3_branch_out_c0_exe11;
    wire [31:0] maxpool2d_B3_branch_out_c0_exe12819;
    wire [63:0] maxpool2d_B3_branch_out_c0_exe25;
    wire [0:0] maxpool2d_B3_branch_out_c0_exe37;
    wire [0:0] maxpool2d_B3_branch_out_c0_exe410;
    wire [31:0] maxpool2d_B3_branch_out_c1_exe1;
    wire [31:0] maxpool2d_B3_branch_out_i_03814;
    wire [31:0] maxpool2d_B3_branch_out_j_03616;
    wire [31:0] maxpool2d_B3_branch_out_k_034_LC_OuterPHI;
    wire [31:0] maxpool2d_B3_branch_out_l_032_LC_InnerPHI;
    wire [31:0] maxpool2d_B3_branch_out_mul2217;
    wire [31:0] maxpool2d_B3_branch_out_mul2420;
    wire [0:0] maxpool2d_B3_branch_out_stall_out;
    wire [0:0] maxpool2d_B3_branch_out_valid_out_0;
    wire [0:0] maxpool2d_B3_branch_out_valid_out_1;
    wire [63:0] maxpool2d_B3_merge_out_c0_exe11;
    wire [31:0] maxpool2d_B3_merge_out_c0_exe12819;
    wire [63:0] maxpool2d_B3_merge_out_c0_exe25;
    wire [0:0] maxpool2d_B3_merge_out_c0_exe37;
    wire [0:0] maxpool2d_B3_merge_out_c0_exe410;
    wire [31:0] maxpool2d_B3_merge_out_i_03814;
    wire [31:0] maxpool2d_B3_merge_out_j_03616;
    wire [31:0] maxpool2d_B3_merge_out_k_034;
    wire [31:0] maxpool2d_B3_merge_out_l_032;
    wire [31:0] maxpool2d_B3_merge_out_mul2217;
    wire [31:0] maxpool2d_B3_merge_out_mul2420;
    wire [0:0] maxpool2d_B3_merge_out_stall_out_0;
    wire [0:0] maxpool2d_B3_merge_out_stall_out_1;
    wire [31:0] maxpool2d_B3_merge_out_tmp_131;
    wire [0:0] maxpool2d_B3_merge_out_valid_out;


    // maxpool2d_B3_merge(BLACKBOX,39)
    maxpool2d_B3_merge themaxpool2d_B3_merge (
        .in_c0_exe11_0(in_c0_exe11_0),
        .in_c0_exe11_1(in_c0_exe11_1),
        .in_c0_exe12819_0(in_c0_exe12819_0),
        .in_c0_exe12819_1(in_c0_exe12819_1),
        .in_c0_exe25_0(in_c0_exe25_0),
        .in_c0_exe25_1(in_c0_exe25_1),
        .in_c0_exe37_0(in_c0_exe37_0),
        .in_c0_exe37_1(in_c0_exe37_1),
        .in_c0_exe410_0(in_c0_exe410_0),
        .in_c0_exe410_1(in_c0_exe410_1),
        .in_i_03814_0(in_i_03814_0),
        .in_i_03814_1(in_i_03814_1),
        .in_j_03616_0(in_j_03616_0),
        .in_j_03616_1(in_j_03616_1),
        .in_k_034_0(in_k_034_0),
        .in_k_034_1(in_k_034_1),
        .in_l_032_0(in_l_032_0),
        .in_l_032_1(in_l_032_1),
        .in_mul2217_0(in_mul2217_0),
        .in_mul2217_1(in_mul2217_1),
        .in_mul2420_0(in_mul2420_0),
        .in_mul2420_1(in_mul2420_1),
        .in_stall_in(bb_maxpool2d_B3_stall_region_out_stall_out),
        .in_tmp_131_0(in_tmp_131_0),
        .in_tmp_131_1(in_tmp_131_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c0_exe11(maxpool2d_B3_merge_out_c0_exe11),
        .out_c0_exe12819(maxpool2d_B3_merge_out_c0_exe12819),
        .out_c0_exe25(maxpool2d_B3_merge_out_c0_exe25),
        .out_c0_exe37(maxpool2d_B3_merge_out_c0_exe37),
        .out_c0_exe410(maxpool2d_B3_merge_out_c0_exe410),
        .out_i_03814(maxpool2d_B3_merge_out_i_03814),
        .out_j_03616(maxpool2d_B3_merge_out_j_03616),
        .out_k_034(maxpool2d_B3_merge_out_k_034),
        .out_l_032(maxpool2d_B3_merge_out_l_032),
        .out_mul2217(maxpool2d_B3_merge_out_mul2217),
        .out_mul2420(maxpool2d_B3_merge_out_mul2420),
        .out_stall_out_0(maxpool2d_B3_merge_out_stall_out_0),
        .out_stall_out_1(maxpool2d_B3_merge_out_stall_out_1),
        .out_tmp_131(maxpool2d_B3_merge_out_tmp_131),
        .out_valid_out(maxpool2d_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_maxpool2d_B3_stall_region(BLACKBOX,2)
    maxpool2d_bb_B3_stall_region thebb_maxpool2d_B3_stall_region (
        .in_c0_exe11(maxpool2d_B3_merge_out_c0_exe11),
        .in_c0_exe12819(maxpool2d_B3_merge_out_c0_exe12819),
        .in_c0_exe25(maxpool2d_B3_merge_out_c0_exe25),
        .in_c0_exe37(maxpool2d_B3_merge_out_c0_exe37),
        .in_c0_exe410(maxpool2d_B3_merge_out_c0_exe410),
        .in_flush(in_flush),
        .in_i_03814(maxpool2d_B3_merge_out_i_03814),
        .in_input_size(in_input_size),
        .in_j_03616(maxpool2d_B3_merge_out_j_03616),
        .in_k_034(maxpool2d_B3_merge_out_k_034),
        .in_l_032(maxpool2d_B3_merge_out_l_032),
        .in_lm_maxpool2d_avm_readdata(in_lm_maxpool2d_avm_readdata),
        .in_lm_maxpool2d_avm_readdatavalid(in_lm_maxpool2d_avm_readdatavalid),
        .in_lm_maxpool2d_avm_waitrequest(in_lm_maxpool2d_avm_waitrequest),
        .in_lm_maxpool2d_avm_writeack(in_lm_maxpool2d_avm_writeack),
        .in_mul2217(maxpool2d_B3_merge_out_mul2217),
        .in_mul2420(maxpool2d_B3_merge_out_mul2420),
        .in_stall_in(maxpool2d_B3_branch_out_stall_out),
        .in_tmp_131(maxpool2d_B3_merge_out_tmp_131),
        .in_valid_in(maxpool2d_B3_merge_out_valid_out),
        .out_c0_exe11(bb_maxpool2d_B3_stall_region_out_c0_exe11),
        .out_c0_exe12819(bb_maxpool2d_B3_stall_region_out_c0_exe12819),
        .out_c0_exe25(bb_maxpool2d_B3_stall_region_out_c0_exe25),
        .out_c0_exe37(bb_maxpool2d_B3_stall_region_out_c0_exe37),
        .out_c0_exe410(bb_maxpool2d_B3_stall_region_out_c0_exe410),
        .out_c1_exe1(bb_maxpool2d_B3_stall_region_out_c1_exe1),
        .out_for_cond_cleanup15_LC_COND(bb_maxpool2d_B3_stall_region_out_for_cond_cleanup15_LC_COND),
        .out_i_03814(bb_maxpool2d_B3_stall_region_out_i_03814),
        .out_j_03616(bb_maxpool2d_B3_stall_region_out_j_03616),
        .out_k_034_LC_OuterPHI(bb_maxpool2d_B3_stall_region_out_k_034_LC_OuterPHI),
        .out_l_032_LC_InnerPHI(bb_maxpool2d_B3_stall_region_out_l_032_LC_InnerPHI),
        .out_lm_maxpool2d_avm_address(bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_address),
        .out_lm_maxpool2d_avm_burstcount(bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_burstcount),
        .out_lm_maxpool2d_avm_byteenable(bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_byteenable),
        .out_lm_maxpool2d_avm_enable(bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_enable),
        .out_lm_maxpool2d_avm_read(bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_read),
        .out_lm_maxpool2d_avm_write(bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_write),
        .out_lm_maxpool2d_avm_writedata(bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_writedata),
        .out_mul2217(bb_maxpool2d_B3_stall_region_out_mul2217),
        .out_mul2420(bb_maxpool2d_B3_stall_region_out_mul2420),
        .out_stall_out(bb_maxpool2d_B3_stall_region_out_stall_out),
        .out_valid_out(bb_maxpool2d_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // maxpool2d_B3_branch(BLACKBOX,38)
    maxpool2d_B3_branch themaxpool2d_B3_branch (
        .in_c0_exe11(bb_maxpool2d_B3_stall_region_out_c0_exe11),
        .in_c0_exe12819(bb_maxpool2d_B3_stall_region_out_c0_exe12819),
        .in_c0_exe25(bb_maxpool2d_B3_stall_region_out_c0_exe25),
        .in_c0_exe37(bb_maxpool2d_B3_stall_region_out_c0_exe37),
        .in_c0_exe410(bb_maxpool2d_B3_stall_region_out_c0_exe410),
        .in_c1_exe1(bb_maxpool2d_B3_stall_region_out_c1_exe1),
        .in_for_cond_cleanup15_LC_COND(bb_maxpool2d_B3_stall_region_out_for_cond_cleanup15_LC_COND),
        .in_i_03814(bb_maxpool2d_B3_stall_region_out_i_03814),
        .in_j_03616(bb_maxpool2d_B3_stall_region_out_j_03616),
        .in_k_034_LC_OuterPHI(bb_maxpool2d_B3_stall_region_out_k_034_LC_OuterPHI),
        .in_l_032_LC_InnerPHI(bb_maxpool2d_B3_stall_region_out_l_032_LC_InnerPHI),
        .in_mul2217(bb_maxpool2d_B3_stall_region_out_mul2217),
        .in_mul2420(bb_maxpool2d_B3_stall_region_out_mul2420),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_maxpool2d_B3_stall_region_out_valid_out),
        .out_c0_exe11(maxpool2d_B3_branch_out_c0_exe11),
        .out_c0_exe12819(maxpool2d_B3_branch_out_c0_exe12819),
        .out_c0_exe25(maxpool2d_B3_branch_out_c0_exe25),
        .out_c0_exe37(maxpool2d_B3_branch_out_c0_exe37),
        .out_c0_exe410(maxpool2d_B3_branch_out_c0_exe410),
        .out_c1_exe1(maxpool2d_B3_branch_out_c1_exe1),
        .out_i_03814(maxpool2d_B3_branch_out_i_03814),
        .out_j_03616(maxpool2d_B3_branch_out_j_03616),
        .out_k_034_LC_OuterPHI(maxpool2d_B3_branch_out_k_034_LC_OuterPHI),
        .out_l_032_LC_InnerPHI(maxpool2d_B3_branch_out_l_032_LC_InnerPHI),
        .out_mul2217(maxpool2d_B3_branch_out_mul2217),
        .out_mul2420(maxpool2d_B3_branch_out_mul2420),
        .out_stall_out(maxpool2d_B3_branch_out_stall_out),
        .out_valid_out_0(maxpool2d_B3_branch_out_valid_out_0),
        .out_valid_out_1(maxpool2d_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe11(GPOUT,40)
    assign out_c0_exe11 = maxpool2d_B3_branch_out_c0_exe11;

    // out_c0_exe12819(GPOUT,41)
    assign out_c0_exe12819 = maxpool2d_B3_branch_out_c0_exe12819;

    // out_c0_exe25(GPOUT,42)
    assign out_c0_exe25 = maxpool2d_B3_branch_out_c0_exe25;

    // out_c0_exe37(GPOUT,43)
    assign out_c0_exe37 = maxpool2d_B3_branch_out_c0_exe37;

    // out_c0_exe410(GPOUT,44)
    assign out_c0_exe410 = maxpool2d_B3_branch_out_c0_exe410;

    // out_c1_exe1(GPOUT,45)
    assign out_c1_exe1 = maxpool2d_B3_branch_out_c1_exe1;

    // out_i_03814(GPOUT,46)
    assign out_i_03814 = maxpool2d_B3_branch_out_i_03814;

    // out_j_03616(GPOUT,47)
    assign out_j_03616 = maxpool2d_B3_branch_out_j_03616;

    // out_k_034_LC_OuterPHI(GPOUT,48)
    assign out_k_034_LC_OuterPHI = maxpool2d_B3_branch_out_k_034_LC_OuterPHI;

    // out_l_032_LC_InnerPHI(GPOUT,49)
    assign out_l_032_LC_InnerPHI = maxpool2d_B3_branch_out_l_032_LC_InnerPHI;

    // out_lm_maxpool2d_avm_address(GPOUT,50)
    assign out_lm_maxpool2d_avm_address = bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_address;

    // out_lm_maxpool2d_avm_burstcount(GPOUT,51)
    assign out_lm_maxpool2d_avm_burstcount = bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_burstcount;

    // out_lm_maxpool2d_avm_byteenable(GPOUT,52)
    assign out_lm_maxpool2d_avm_byteenable = bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_byteenable;

    // out_lm_maxpool2d_avm_enable(GPOUT,53)
    assign out_lm_maxpool2d_avm_enable = bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_enable;

    // out_lm_maxpool2d_avm_read(GPOUT,54)
    assign out_lm_maxpool2d_avm_read = bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_read;

    // out_lm_maxpool2d_avm_write(GPOUT,55)
    assign out_lm_maxpool2d_avm_write = bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_write;

    // out_lm_maxpool2d_avm_writedata(GPOUT,56)
    assign out_lm_maxpool2d_avm_writedata = bb_maxpool2d_B3_stall_region_out_lm_maxpool2d_avm_writedata;

    // out_mul2217(GPOUT,57)
    assign out_mul2217 = maxpool2d_B3_branch_out_mul2217;

    // out_mul2420(GPOUT,58)
    assign out_mul2420 = maxpool2d_B3_branch_out_mul2420;

    // out_stall_in_0(GPOUT,59)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,60)
    assign out_stall_out_0 = maxpool2d_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,61)
    assign out_stall_out_1 = maxpool2d_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,62)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,63)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,64)
    assign out_valid_out_0 = maxpool2d_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,65)
    assign out_valid_out_1 = maxpool2d_B3_branch_out_valid_out_1;

endmodule
