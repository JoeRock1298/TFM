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

// SystemVerilog created from conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0000conv2d1x11_data_fifo
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0000conv2d1x11_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [31:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
    input wire [31:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [31:0] in_i_data_15_tpl,
    input wire [31:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [31:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
    output wire [31:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [31:0] out_o_data_15_tpl,
    output wire [31:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc45_in;
    wire [0:0] adapt_scalar_trunc45_q;
    wire [0:0] adapt_scalar_trunc47_in;
    wire [0:0] adapt_scalar_trunc47_q;
    wire [0:0] adapt_scalar_trunc81_in;
    wire [0:0] adapt_scalar_trunc81_q;
    wire [15:0] c_i16_07_q;
    wire [23:0] c_i24_042_q;
    wire [6:0] c_i7_04_q;
    wire [575:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension40_q;
    wire [7:0] element_extension5_q;
    wire [575:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full_bitsignaltemp;
    wire [575:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect44_b;
    wire [0:0] ip_dsdk_adapt_bitselect46_b;
    wire [31:0] ip_dsdk_adapt_bitselect48_b;
    wire [31:0] ip_dsdk_adapt_bitselect50_b;
    wire [31:0] ip_dsdk_adapt_bitselect52_b;
    wire [31:0] ip_dsdk_adapt_bitselect54_b;
    wire [31:0] ip_dsdk_adapt_bitselect56_b;
    wire [31:0] ip_dsdk_adapt_bitselect58_b;
    wire [31:0] ip_dsdk_adapt_bitselect60_b;
    wire [31:0] ip_dsdk_adapt_bitselect62_b;
    wire [31:0] ip_dsdk_adapt_bitselect64_b;
    wire [31:0] ip_dsdk_adapt_bitselect66_b;
    wire [31:0] ip_dsdk_adapt_bitselect68_b;
    wire [31:0] ip_dsdk_adapt_bitselect70_b;
    wire [31:0] ip_dsdk_adapt_bitselect72_b;
    wire [31:0] ip_dsdk_adapt_bitselect74_b;
    wire [31:0] ip_dsdk_adapt_bitselect76_b;
    wire [31:0] ip_dsdk_adapt_bitselect78_b;
    wire [0:0] ip_dsdk_adapt_bitselect80_b;


    // c_i24_042(CONSTANT,38)
    assign c_i24_042_q = $unsigned(24'b000000000000000000000000);

    // c_i7_04(CONSTANT,39)
    assign c_i7_04_q = $unsigned(7'b0000000);

    // element_extension40(BITJOIN,44)
    assign element_extension40_q = {c_i7_04_q, in_i_data_18_tpl};

    // c_i16_07(CONSTANT,37)
    assign c_i16_07_q = $unsigned(16'b0000000000000000);

    // element_extension5(BITJOIN,45)
    assign element_extension5_q = {c_i7_04_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,43)
    assign element_extension3_q = {c_i7_04_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,42)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_042_q, element_extension40_q, in_i_data_17_tpl, in_i_data_16_tpl, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl, in_i_data_10_tpl, in_i_data_9_tpl, in_i_data_8_tpl, in_i_data_7_tpl, in_i_data_6_tpl, in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, c_i16_07_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10(EXTIFACE,46)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(576)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,83)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_stall;

    // ip_dsdk_adapt_bitselect80(BITSELECT,65)
    assign ip_dsdk_adapt_bitselect80_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[544:544];

    // adapt_scalar_trunc81(ROUND,4)
    assign adapt_scalar_trunc81_in = ip_dsdk_adapt_bitselect80_b;
    assign adapt_scalar_trunc81_q = adapt_scalar_trunc81_in[0:0];

    // ip_dsdk_adapt_bitselect78(BITSELECT,64)
    assign ip_dsdk_adapt_bitselect78_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[543:512];

    // ip_dsdk_adapt_bitselect76(BITSELECT,63)
    assign ip_dsdk_adapt_bitselect76_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[511:480];

    // ip_dsdk_adapt_bitselect74(BITSELECT,62)
    assign ip_dsdk_adapt_bitselect74_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[479:448];

    // ip_dsdk_adapt_bitselect72(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect72_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[447:416];

    // ip_dsdk_adapt_bitselect70(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect70_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[415:384];

    // ip_dsdk_adapt_bitselect68(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect68_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[383:352];

    // ip_dsdk_adapt_bitselect66(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect66_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[351:320];

    // ip_dsdk_adapt_bitselect64(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect64_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[319:288];

    // ip_dsdk_adapt_bitselect62(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect62_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[287:256];

    // ip_dsdk_adapt_bitselect60(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect60_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[255:224];

    // ip_dsdk_adapt_bitselect58(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[223:192];

    // ip_dsdk_adapt_bitselect56(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[191:160];

    // ip_dsdk_adapt_bitselect54(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[159:128];

    // ip_dsdk_adapt_bitselect52(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[127:96];

    // ip_dsdk_adapt_bitselect50(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[95:64];

    // ip_dsdk_adapt_bitselect48(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[63:32];

    // ip_dsdk_adapt_bitselect46(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[8:8];

    // adapt_scalar_trunc47(ROUND,3)
    assign adapt_scalar_trunc47_in = ip_dsdk_adapt_bitselect46_b;
    assign adapt_scalar_trunc47_q = adapt_scalar_trunc47_in[0:0];

    // ip_dsdk_adapt_bitselect44(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_data[0:0];

    // adapt_scalar_trunc45(ROUND,2)
    assign adapt_scalar_trunc45_in = ip_dsdk_adapt_bitselect44_b;
    assign adapt_scalar_trunc45_q = adapt_scalar_trunc45_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,85)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc45_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc47_q;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect50_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect56_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect58_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect60_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect62_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect64_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect66_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect68_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect70_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect72_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect74_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect76_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect78_b;
    assign out_o_data_18_tpl = adapt_scalar_trunc81_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body_conv2d1x1s_c0_exit_conv2d1x10_o_valid;

endmodule
