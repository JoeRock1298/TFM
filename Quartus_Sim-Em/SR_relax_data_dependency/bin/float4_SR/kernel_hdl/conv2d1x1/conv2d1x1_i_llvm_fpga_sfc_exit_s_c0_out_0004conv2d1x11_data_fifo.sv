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

// SystemVerilog created from conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0004conv2d1x11_data_fifo
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_0004conv2d1x11_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [63:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [31:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [63:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [31:0] in_i_data_18_tpl,
    input wire [0:0] in_i_data_19_tpl,
    input wire [31:0] in_i_data_20_tpl,
    input wire [31:0] in_i_data_21_tpl,
    input wire [31:0] in_i_data_22_tpl,
    input wire [0:0] in_i_data_23_tpl,
    input wire [0:0] in_i_data_24_tpl,
    input wire [0:0] in_i_data_25_tpl,
    input wire [0:0] in_i_data_26_tpl,
    input wire [31:0] in_i_data_27_tpl,
    input wire [31:0] in_i_data_28_tpl,
    input wire [31:0] in_i_data_29_tpl,
    input wire [31:0] in_i_data_30_tpl,
    input wire [31:0] in_i_data_31_tpl,
    input wire [31:0] in_i_data_32_tpl,
    input wire [31:0] in_i_data_33_tpl,
    input wire [31:0] in_i_data_34_tpl,
    input wire [31:0] in_i_data_35_tpl,
    input wire [31:0] in_i_data_36_tpl,
    input wire [31:0] in_i_data_37_tpl,
    input wire [31:0] in_i_data_38_tpl,
    input wire [31:0] in_i_data_39_tpl,
    input wire [31:0] in_i_data_40_tpl,
    input wire [31:0] in_i_data_41_tpl,
    input wire [31:0] in_i_data_42_tpl,
    input wire [0:0] in_i_data_43_tpl,
    input wire [31:0] in_i_data_44_tpl,
    input wire [0:0] in_i_data_45_tpl,
    input wire [0:0] in_i_data_46_tpl,
    input wire [0:0] in_i_data_47_tpl,
    input wire [32:0] in_i_data_48_tpl,
    input wire [31:0] in_i_data_49_tpl,
    input wire [31:0] in_i_data_50_tpl,
    input wire [31:0] in_i_data_51_tpl,
    input wire [0:0] in_i_data_52_tpl,
    input wire [0:0] in_i_data_53_tpl,
    input wire [31:0] in_i_data_54_tpl,
    input wire [31:0] in_i_data_55_tpl,
    input wire [31:0] in_i_data_56_tpl,
    input wire [31:0] in_i_data_57_tpl,
    input wire [31:0] in_i_data_58_tpl,
    input wire [31:0] in_i_data_59_tpl,
    input wire [31:0] in_i_data_60_tpl,
    input wire [31:0] in_i_data_61_tpl,
    input wire [31:0] in_i_data_62_tpl,
    input wire [31:0] in_i_data_63_tpl,
    input wire [31:0] in_i_data_64_tpl,
    input wire [31:0] in_i_data_65_tpl,
    input wire [31:0] in_i_data_66_tpl,
    input wire [31:0] in_i_data_67_tpl,
    input wire [31:0] in_i_data_68_tpl,
    input wire [31:0] in_i_data_69_tpl,
    input wire [31:0] in_i_data_70_tpl,
    input wire [31:0] in_i_data_71_tpl,
    input wire [31:0] in_i_data_72_tpl,
    input wire [31:0] in_i_data_73_tpl,
    input wire [31:0] in_i_data_74_tpl,
    input wire [31:0] in_i_data_75_tpl,
    input wire [31:0] in_i_data_76_tpl,
    input wire [31:0] in_i_data_77_tpl,
    input wire [31:0] in_i_data_78_tpl,
    input wire [31:0] in_i_data_79_tpl,
    input wire [31:0] in_i_data_80_tpl,
    input wire [31:0] in_i_data_81_tpl,
    input wire [31:0] in_i_data_82_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [63:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [31:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [63:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [31:0] out_o_data_18_tpl,
    output wire [0:0] out_o_data_19_tpl,
    output wire [31:0] out_o_data_20_tpl,
    output wire [31:0] out_o_data_21_tpl,
    output wire [31:0] out_o_data_22_tpl,
    output wire [0:0] out_o_data_23_tpl,
    output wire [0:0] out_o_data_24_tpl,
    output wire [0:0] out_o_data_25_tpl,
    output wire [0:0] out_o_data_26_tpl,
    output wire [31:0] out_o_data_27_tpl,
    output wire [31:0] out_o_data_28_tpl,
    output wire [31:0] out_o_data_29_tpl,
    output wire [31:0] out_o_data_30_tpl,
    output wire [31:0] out_o_data_31_tpl,
    output wire [31:0] out_o_data_32_tpl,
    output wire [31:0] out_o_data_33_tpl,
    output wire [31:0] out_o_data_34_tpl,
    output wire [31:0] out_o_data_35_tpl,
    output wire [31:0] out_o_data_36_tpl,
    output wire [31:0] out_o_data_37_tpl,
    output wire [31:0] out_o_data_38_tpl,
    output wire [31:0] out_o_data_39_tpl,
    output wire [31:0] out_o_data_40_tpl,
    output wire [31:0] out_o_data_41_tpl,
    output wire [31:0] out_o_data_42_tpl,
    output wire [0:0] out_o_data_43_tpl,
    output wire [31:0] out_o_data_44_tpl,
    output wire [0:0] out_o_data_45_tpl,
    output wire [0:0] out_o_data_46_tpl,
    output wire [0:0] out_o_data_47_tpl,
    output wire [32:0] out_o_data_48_tpl,
    output wire [31:0] out_o_data_49_tpl,
    output wire [31:0] out_o_data_50_tpl,
    output wire [31:0] out_o_data_51_tpl,
    output wire [0:0] out_o_data_52_tpl,
    output wire [0:0] out_o_data_53_tpl,
    output wire [31:0] out_o_data_54_tpl,
    output wire [31:0] out_o_data_55_tpl,
    output wire [31:0] out_o_data_56_tpl,
    output wire [31:0] out_o_data_57_tpl,
    output wire [31:0] out_o_data_58_tpl,
    output wire [31:0] out_o_data_59_tpl,
    output wire [31:0] out_o_data_60_tpl,
    output wire [31:0] out_o_data_61_tpl,
    output wire [31:0] out_o_data_62_tpl,
    output wire [31:0] out_o_data_63_tpl,
    output wire [31:0] out_o_data_64_tpl,
    output wire [31:0] out_o_data_65_tpl,
    output wire [31:0] out_o_data_66_tpl,
    output wire [31:0] out_o_data_67_tpl,
    output wire [31:0] out_o_data_68_tpl,
    output wire [31:0] out_o_data_69_tpl,
    output wire [31:0] out_o_data_70_tpl,
    output wire [31:0] out_o_data_71_tpl,
    output wire [31:0] out_o_data_72_tpl,
    output wire [31:0] out_o_data_73_tpl,
    output wire [31:0] out_o_data_74_tpl,
    output wire [31:0] out_o_data_75_tpl,
    output wire [31:0] out_o_data_76_tpl,
    output wire [31:0] out_o_data_77_tpl,
    output wire [31:0] out_o_data_78_tpl,
    output wire [31:0] out_o_data_79_tpl,
    output wire [31:0] out_o_data_80_tpl,
    output wire [31:0] out_o_data_81_tpl,
    output wire [31:0] out_o_data_82_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc162_in;
    wire [0:0] adapt_scalar_trunc162_q;
    wire [0:0] adapt_scalar_trunc164_in;
    wire [0:0] adapt_scalar_trunc164_q;
    wire [0:0] adapt_scalar_trunc166_in;
    wire [0:0] adapt_scalar_trunc166_q;
    wire [0:0] adapt_scalar_trunc168_in;
    wire [0:0] adapt_scalar_trunc168_q;
    wire [0:0] adapt_scalar_trunc170_in;
    wire [0:0] adapt_scalar_trunc170_q;
    wire [0:0] adapt_scalar_trunc172_in;
    wire [0:0] adapt_scalar_trunc172_q;
    wire [0:0] adapt_scalar_trunc174_in;
    wire [0:0] adapt_scalar_trunc174_q;
    wire [0:0] adapt_scalar_trunc176_in;
    wire [0:0] adapt_scalar_trunc176_q;
    wire [0:0] adapt_scalar_trunc178_in;
    wire [0:0] adapt_scalar_trunc178_q;
    wire [0:0] adapt_scalar_trunc184_in;
    wire [0:0] adapt_scalar_trunc184_q;
    wire [0:0] adapt_scalar_trunc192_in;
    wire [0:0] adapt_scalar_trunc192_q;
    wire [0:0] adapt_scalar_trunc194_in;
    wire [0:0] adapt_scalar_trunc194_q;
    wire [0:0] adapt_scalar_trunc200_in;
    wire [0:0] adapt_scalar_trunc200_q;
    wire [0:0] adapt_scalar_trunc208_in;
    wire [0:0] adapt_scalar_trunc208_q;
    wire [0:0] adapt_scalar_trunc210_in;
    wire [0:0] adapt_scalar_trunc210_q;
    wire [0:0] adapt_scalar_trunc212_in;
    wire [0:0] adapt_scalar_trunc212_q;
    wire [0:0] adapt_scalar_trunc214_in;
    wire [0:0] adapt_scalar_trunc214_q;
    wire [0:0] adapt_scalar_trunc248_in;
    wire [0:0] adapt_scalar_trunc248_q;
    wire [0:0] adapt_scalar_trunc252_in;
    wire [0:0] adapt_scalar_trunc252_q;
    wire [0:0] adapt_scalar_trunc254_in;
    wire [0:0] adapt_scalar_trunc254_q;
    wire [0:0] adapt_scalar_trunc256_in;
    wire [0:0] adapt_scalar_trunc256_q;
    wire [32:0] adapt_scalar_trunc258_in;
    wire [32:0] adapt_scalar_trunc258_q;
    wire [0:0] adapt_scalar_trunc266_in;
    wire [0:0] adapt_scalar_trunc266_q;
    wire [0:0] adapt_scalar_trunc268_in;
    wire [0:0] adapt_scalar_trunc268_q;
    wire [15:0] c_i16_0100_q;
    wire [23:0] c_i24_021_q;
    wire [30:0] c_i31_093_q;
    wire [31:0] c_i32_0159_q;
    wire [39:0] c_i40_091_q;
    wire [6:0] c_i7_010_q;
    wire [2431:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension28_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension33_q;
    wire [7:0] element_extension42_q;
    wire [7:0] element_extension44_q;
    wire [7:0] element_extension46_q;
    wire [7:0] element_extension48_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [7:0] element_extension82_q;
    wire [7:0] element_extension85_q;
    wire [7:0] element_extension87_q;
    wire [7:0] element_extension89_q;
    wire [7:0] element_extension9_q;
    wire [63:0] element_extension92_q;
    wire [7:0] element_extension96_q;
    wire [7:0] element_extension98_q;
    wire [2431:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_almost_full_bitsignaltemp;
    wire [2431:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect161_b;
    wire [0:0] ip_dsdk_adapt_bitselect163_b;
    wire [0:0] ip_dsdk_adapt_bitselect165_b;
    wire [0:0] ip_dsdk_adapt_bitselect167_b;
    wire [0:0] ip_dsdk_adapt_bitselect169_b;
    wire [0:0] ip_dsdk_adapt_bitselect171_b;
    wire [0:0] ip_dsdk_adapt_bitselect173_b;
    wire [0:0] ip_dsdk_adapt_bitselect175_b;
    wire [0:0] ip_dsdk_adapt_bitselect177_b;
    wire [31:0] ip_dsdk_adapt_bitselect179_b;
    wire [63:0] ip_dsdk_adapt_bitselect181_b;
    wire [0:0] ip_dsdk_adapt_bitselect183_b;
    wire [31:0] ip_dsdk_adapt_bitselect185_b;
    wire [31:0] ip_dsdk_adapt_bitselect187_b;
    wire [63:0] ip_dsdk_adapt_bitselect189_b;
    wire [0:0] ip_dsdk_adapt_bitselect191_b;
    wire [0:0] ip_dsdk_adapt_bitselect193_b;
    wire [31:0] ip_dsdk_adapt_bitselect195_b;
    wire [31:0] ip_dsdk_adapt_bitselect197_b;
    wire [0:0] ip_dsdk_adapt_bitselect199_b;
    wire [31:0] ip_dsdk_adapt_bitselect201_b;
    wire [31:0] ip_dsdk_adapt_bitselect203_b;
    wire [31:0] ip_dsdk_adapt_bitselect205_b;
    wire [0:0] ip_dsdk_adapt_bitselect207_b;
    wire [0:0] ip_dsdk_adapt_bitselect209_b;
    wire [0:0] ip_dsdk_adapt_bitselect211_b;
    wire [0:0] ip_dsdk_adapt_bitselect213_b;
    wire [31:0] ip_dsdk_adapt_bitselect215_b;
    wire [31:0] ip_dsdk_adapt_bitselect217_b;
    wire [31:0] ip_dsdk_adapt_bitselect219_b;
    wire [31:0] ip_dsdk_adapt_bitselect221_b;
    wire [31:0] ip_dsdk_adapt_bitselect223_b;
    wire [31:0] ip_dsdk_adapt_bitselect225_b;
    wire [31:0] ip_dsdk_adapt_bitselect227_b;
    wire [31:0] ip_dsdk_adapt_bitselect229_b;
    wire [31:0] ip_dsdk_adapt_bitselect231_b;
    wire [31:0] ip_dsdk_adapt_bitselect233_b;
    wire [31:0] ip_dsdk_adapt_bitselect235_b;
    wire [31:0] ip_dsdk_adapt_bitselect237_b;
    wire [31:0] ip_dsdk_adapt_bitselect239_b;
    wire [31:0] ip_dsdk_adapt_bitselect241_b;
    wire [31:0] ip_dsdk_adapt_bitselect243_b;
    wire [31:0] ip_dsdk_adapt_bitselect245_b;
    wire [0:0] ip_dsdk_adapt_bitselect247_b;
    wire [31:0] ip_dsdk_adapt_bitselect249_b;
    wire [0:0] ip_dsdk_adapt_bitselect251_b;
    wire [0:0] ip_dsdk_adapt_bitselect253_b;
    wire [0:0] ip_dsdk_adapt_bitselect255_b;
    wire [32:0] ip_dsdk_adapt_bitselect257_b;
    wire [31:0] ip_dsdk_adapt_bitselect259_b;
    wire [31:0] ip_dsdk_adapt_bitselect261_b;
    wire [31:0] ip_dsdk_adapt_bitselect263_b;
    wire [0:0] ip_dsdk_adapt_bitselect265_b;
    wire [0:0] ip_dsdk_adapt_bitselect267_b;
    wire [31:0] ip_dsdk_adapt_bitselect269_b;
    wire [31:0] ip_dsdk_adapt_bitselect271_b;
    wire [31:0] ip_dsdk_adapt_bitselect273_b;
    wire [31:0] ip_dsdk_adapt_bitselect275_b;
    wire [31:0] ip_dsdk_adapt_bitselect277_b;
    wire [31:0] ip_dsdk_adapt_bitselect279_b;
    wire [31:0] ip_dsdk_adapt_bitselect281_b;
    wire [31:0] ip_dsdk_adapt_bitselect283_b;
    wire [31:0] ip_dsdk_adapt_bitselect285_b;
    wire [31:0] ip_dsdk_adapt_bitselect287_b;
    wire [31:0] ip_dsdk_adapt_bitselect289_b;
    wire [31:0] ip_dsdk_adapt_bitselect291_b;
    wire [31:0] ip_dsdk_adapt_bitselect293_b;
    wire [31:0] ip_dsdk_adapt_bitselect295_b;
    wire [31:0] ip_dsdk_adapt_bitselect297_b;
    wire [31:0] ip_dsdk_adapt_bitselect299_b;
    wire [31:0] ip_dsdk_adapt_bitselect301_b;
    wire [31:0] ip_dsdk_adapt_bitselect303_b;
    wire [31:0] ip_dsdk_adapt_bitselect305_b;
    wire [31:0] ip_dsdk_adapt_bitselect307_b;
    wire [31:0] ip_dsdk_adapt_bitselect309_b;
    wire [31:0] ip_dsdk_adapt_bitselect311_b;
    wire [31:0] ip_dsdk_adapt_bitselect313_b;
    wire [31:0] ip_dsdk_adapt_bitselect315_b;
    wire [31:0] ip_dsdk_adapt_bitselect317_b;
    wire [31:0] ip_dsdk_adapt_bitselect319_b;
    wire [31:0] ip_dsdk_adapt_bitselect321_b;
    wire [31:0] ip_dsdk_adapt_bitselect323_b;
    wire [31:0] ip_dsdk_adapt_bitselect325_b;


    // c_i7_010(CONSTANT,136)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension98(BITJOIN,183)
    assign element_extension98_q = {c_i7_010_q, in_i_data_53_tpl};

    // element_extension96(BITJOIN,182)
    assign element_extension96_q = {c_i7_010_q, in_i_data_52_tpl};

    // c_i31_093(CONSTANT,132)
    assign c_i31_093_q = $unsigned(31'b0000000000000000000000000000000);

    // element_extension92(BITJOIN,181)
    assign element_extension92_q = {c_i31_093_q, in_i_data_48_tpl};

    // c_i40_091(CONSTANT,135)
    assign c_i40_091_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension89(BITJOIN,179)
    assign element_extension89_q = {c_i7_010_q, in_i_data_47_tpl};

    // element_extension87(BITJOIN,178)
    assign element_extension87_q = {c_i7_010_q, in_i_data_46_tpl};

    // element_extension85(BITJOIN,177)
    assign element_extension85_q = {c_i7_010_q, in_i_data_45_tpl};

    // element_extension82(BITJOIN,176)
    assign element_extension82_q = {c_i7_010_q, in_i_data_43_tpl};

    // element_extension48(BITJOIN,173)
    assign element_extension48_q = {c_i7_010_q, in_i_data_26_tpl};

    // element_extension46(BITJOIN,172)
    assign element_extension46_q = {c_i7_010_q, in_i_data_25_tpl};

    // element_extension44(BITJOIN,171)
    assign element_extension44_q = {c_i7_010_q, in_i_data_24_tpl};

    // element_extension42(BITJOIN,170)
    assign element_extension42_q = {c_i7_010_q, in_i_data_23_tpl};

    // element_extension33(BITJOIN,169)
    assign element_extension33_q = {c_i7_010_q, in_i_data_19_tpl};

    // c_i16_0100(CONSTANT,126)
    assign c_i16_0100_q = $unsigned(16'b0000000000000000);

    // element_extension28(BITJOIN,167)
    assign element_extension28_q = {c_i7_010_q, in_i_data_16_tpl};

    // element_extension26(BITJOIN,166)
    assign element_extension26_q = {c_i7_010_q, in_i_data_15_tpl};

    // c_i32_0159(CONSTANT,133)
    assign c_i32_0159_q = $unsigned(32'b00000000000000000000000000000000);

    // element_extension22(BITJOIN,165)
    assign element_extension22_q = {c_i7_010_q, in_i_data_11_tpl};

    // c_i24_021(CONSTANT,128)
    assign c_i24_021_q = $unsigned(24'b000000000000000000000000);

    // element_extension19(BITJOIN,164)
    assign element_extension19_q = {c_i7_010_q, in_i_data_8_tpl};

    // element_extension17(BITJOIN,163)
    assign element_extension17_q = {c_i7_010_q, in_i_data_7_tpl};

    // element_extension15(BITJOIN,162)
    assign element_extension15_q = {c_i7_010_q, in_i_data_6_tpl};

    // element_extension13(BITJOIN,161)
    assign element_extension13_q = {c_i7_010_q, in_i_data_5_tpl};

    // element_extension11(BITJOIN,160)
    assign element_extension11_q = {c_i7_010_q, in_i_data_4_tpl};

    // element_extension9(BITJOIN,180)
    assign element_extension9_q = {c_i7_010_q, in_i_data_3_tpl};

    // element_extension7(BITJOIN,175)
    assign element_extension7_q = {c_i7_010_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,174)
    assign element_extension5_q = {c_i7_010_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,168)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,159)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i32_0159_q, in_i_data_82_tpl, in_i_data_81_tpl, in_i_data_80_tpl, in_i_data_79_tpl, in_i_data_78_tpl, in_i_data_77_tpl, in_i_data_76_tpl, in_i_data_75_tpl, in_i_data_74_tpl, in_i_data_73_tpl, in_i_data_72_tpl, in_i_data_71_tpl, in_i_data_70_tpl, in_i_data_69_tpl, in_i_data_68_tpl, in_i_data_67_tpl, in_i_data_66_tpl, in_i_data_65_tpl, in_i_data_64_tpl, in_i_data_63_tpl, in_i_data_62_tpl, in_i_data_61_tpl, in_i_data_60_tpl, in_i_data_59_tpl, in_i_data_58_tpl, in_i_data_57_tpl, in_i_data_56_tpl, in_i_data_55_tpl, in_i_data_54_tpl, c_i16_0100_q, element_extension98_q, element_extension96_q, in_i_data_51_tpl, in_i_data_50_tpl, in_i_data_49_tpl, element_extension92_q, c_i40_091_q, element_extension89_q, element_extension87_q, element_extension85_q, in_i_data_44_tpl, c_i24_021_q, element_extension82_q, in_i_data_42_tpl, in_i_data_41_tpl, in_i_data_40_tpl, in_i_data_39_tpl, in_i_data_38_tpl, in_i_data_37_tpl, in_i_data_36_tpl, in_i_data_35_tpl, in_i_data_34_tpl, in_i_data_33_tpl, in_i_data_32_tpl, in_i_data_31_tpl, in_i_data_30_tpl, in_i_data_29_tpl, in_i_data_28_tpl, in_i_data_27_tpl, element_extension48_q, element_extension46_q, element_extension44_q, element_extension42_q, in_i_data_22_tpl, in_i_data_21_tpl, in_i_data_20_tpl, c_i24_021_q, element_extension33_q, in_i_data_18_tpl, in_i_data_17_tpl, c_i16_0100_q, element_extension28_q, element_extension26_q, in_i_data_14_tpl, c_i32_0159_q, in_i_data_13_tpl, in_i_data_12_tpl, c_i24_021_q, element_extension22_q, in_i_data_10_tpl, in_i_data_9_tpl, c_i24_021_q, element_extension19_q, element_extension17_q, element_extension15_q, element_extension13_q, element_extension11_q, element_extension9_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10(EXTIFACE,184)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(2432)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,328)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_stall;

    // ip_dsdk_adapt_bitselect325(BITSELECT,267)
    assign ip_dsdk_adapt_bitselect325_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2399:2368];

    // ip_dsdk_adapt_bitselect323(BITSELECT,266)
    assign ip_dsdk_adapt_bitselect323_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2367:2336];

    // ip_dsdk_adapt_bitselect321(BITSELECT,265)
    assign ip_dsdk_adapt_bitselect321_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2335:2304];

    // ip_dsdk_adapt_bitselect319(BITSELECT,264)
    assign ip_dsdk_adapt_bitselect319_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2303:2272];

    // ip_dsdk_adapt_bitselect317(BITSELECT,263)
    assign ip_dsdk_adapt_bitselect317_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2271:2240];

    // ip_dsdk_adapt_bitselect315(BITSELECT,262)
    assign ip_dsdk_adapt_bitselect315_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2239:2208];

    // ip_dsdk_adapt_bitselect313(BITSELECT,261)
    assign ip_dsdk_adapt_bitselect313_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2207:2176];

    // ip_dsdk_adapt_bitselect311(BITSELECT,260)
    assign ip_dsdk_adapt_bitselect311_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2175:2144];

    // ip_dsdk_adapt_bitselect309(BITSELECT,259)
    assign ip_dsdk_adapt_bitselect309_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2143:2112];

    // ip_dsdk_adapt_bitselect307(BITSELECT,258)
    assign ip_dsdk_adapt_bitselect307_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2111:2080];

    // ip_dsdk_adapt_bitselect305(BITSELECT,257)
    assign ip_dsdk_adapt_bitselect305_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2079:2048];

    // ip_dsdk_adapt_bitselect303(BITSELECT,256)
    assign ip_dsdk_adapt_bitselect303_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2047:2016];

    // ip_dsdk_adapt_bitselect301(BITSELECT,255)
    assign ip_dsdk_adapt_bitselect301_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[2015:1984];

    // ip_dsdk_adapt_bitselect299(BITSELECT,254)
    assign ip_dsdk_adapt_bitselect299_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1983:1952];

    // ip_dsdk_adapt_bitselect297(BITSELECT,253)
    assign ip_dsdk_adapt_bitselect297_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1951:1920];

    // ip_dsdk_adapt_bitselect295(BITSELECT,252)
    assign ip_dsdk_adapt_bitselect295_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1919:1888];

    // ip_dsdk_adapt_bitselect293(BITSELECT,251)
    assign ip_dsdk_adapt_bitselect293_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1887:1856];

    // ip_dsdk_adapt_bitselect291(BITSELECT,250)
    assign ip_dsdk_adapt_bitselect291_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1855:1824];

    // ip_dsdk_adapt_bitselect289(BITSELECT,249)
    assign ip_dsdk_adapt_bitselect289_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1823:1792];

    // ip_dsdk_adapt_bitselect287(BITSELECT,248)
    assign ip_dsdk_adapt_bitselect287_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1791:1760];

    // ip_dsdk_adapt_bitselect285(BITSELECT,247)
    assign ip_dsdk_adapt_bitselect285_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1759:1728];

    // ip_dsdk_adapt_bitselect283(BITSELECT,246)
    assign ip_dsdk_adapt_bitselect283_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1727:1696];

    // ip_dsdk_adapt_bitselect281(BITSELECT,245)
    assign ip_dsdk_adapt_bitselect281_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1695:1664];

    // ip_dsdk_adapt_bitselect279(BITSELECT,244)
    assign ip_dsdk_adapt_bitselect279_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1663:1632];

    // ip_dsdk_adapt_bitselect277(BITSELECT,243)
    assign ip_dsdk_adapt_bitselect277_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1631:1600];

    // ip_dsdk_adapt_bitselect275(BITSELECT,242)
    assign ip_dsdk_adapt_bitselect275_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1599:1568];

    // ip_dsdk_adapt_bitselect273(BITSELECT,241)
    assign ip_dsdk_adapt_bitselect273_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1567:1536];

    // ip_dsdk_adapt_bitselect271(BITSELECT,240)
    assign ip_dsdk_adapt_bitselect271_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1535:1504];

    // ip_dsdk_adapt_bitselect269(BITSELECT,239)
    assign ip_dsdk_adapt_bitselect269_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1503:1472];

    // ip_dsdk_adapt_bitselect267(BITSELECT,238)
    assign ip_dsdk_adapt_bitselect267_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1448:1448];

    // adapt_scalar_trunc268(ROUND,25)
    assign adapt_scalar_trunc268_in = ip_dsdk_adapt_bitselect267_b;
    assign adapt_scalar_trunc268_q = adapt_scalar_trunc268_in[0:0];

    // ip_dsdk_adapt_bitselect265(BITSELECT,237)
    assign ip_dsdk_adapt_bitselect265_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1440:1440];

    // adapt_scalar_trunc266(ROUND,24)
    assign adapt_scalar_trunc266_in = ip_dsdk_adapt_bitselect265_b;
    assign adapt_scalar_trunc266_q = adapt_scalar_trunc266_in[0:0];

    // ip_dsdk_adapt_bitselect263(BITSELECT,236)
    assign ip_dsdk_adapt_bitselect263_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1439:1408];

    // ip_dsdk_adapt_bitselect261(BITSELECT,235)
    assign ip_dsdk_adapt_bitselect261_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1407:1376];

    // ip_dsdk_adapt_bitselect259(BITSELECT,234)
    assign ip_dsdk_adapt_bitselect259_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1375:1344];

    // ip_dsdk_adapt_bitselect257(BITSELECT,233)
    assign ip_dsdk_adapt_bitselect257_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1312:1280];

    // adapt_scalar_trunc258(ROUND,23)
    assign adapt_scalar_trunc258_in = ip_dsdk_adapt_bitselect257_b;
    assign adapt_scalar_trunc258_q = adapt_scalar_trunc258_in[32:0];

    // ip_dsdk_adapt_bitselect255(BITSELECT,232)
    assign ip_dsdk_adapt_bitselect255_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1232:1232];

    // adapt_scalar_trunc256(ROUND,22)
    assign adapt_scalar_trunc256_in = ip_dsdk_adapt_bitselect255_b;
    assign adapt_scalar_trunc256_q = adapt_scalar_trunc256_in[0:0];

    // ip_dsdk_adapt_bitselect253(BITSELECT,231)
    assign ip_dsdk_adapt_bitselect253_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1224:1224];

    // adapt_scalar_trunc254(ROUND,21)
    assign adapt_scalar_trunc254_in = ip_dsdk_adapt_bitselect253_b;
    assign adapt_scalar_trunc254_q = adapt_scalar_trunc254_in[0:0];

    // ip_dsdk_adapt_bitselect251(BITSELECT,230)
    assign ip_dsdk_adapt_bitselect251_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1216:1216];

    // adapt_scalar_trunc252(ROUND,20)
    assign adapt_scalar_trunc252_in = ip_dsdk_adapt_bitselect251_b;
    assign adapt_scalar_trunc252_q = adapt_scalar_trunc252_in[0:0];

    // ip_dsdk_adapt_bitselect249(BITSELECT,229)
    assign ip_dsdk_adapt_bitselect249_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1215:1184];

    // ip_dsdk_adapt_bitselect247(BITSELECT,228)
    assign ip_dsdk_adapt_bitselect247_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1152:1152];

    // adapt_scalar_trunc248(ROUND,19)
    assign adapt_scalar_trunc248_in = ip_dsdk_adapt_bitselect247_b;
    assign adapt_scalar_trunc248_q = adapt_scalar_trunc248_in[0:0];

    // ip_dsdk_adapt_bitselect245(BITSELECT,227)
    assign ip_dsdk_adapt_bitselect245_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1151:1120];

    // ip_dsdk_adapt_bitselect243(BITSELECT,226)
    assign ip_dsdk_adapt_bitselect243_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1119:1088];

    // ip_dsdk_adapt_bitselect241(BITSELECT,225)
    assign ip_dsdk_adapt_bitselect241_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1087:1056];

    // ip_dsdk_adapt_bitselect239(BITSELECT,224)
    assign ip_dsdk_adapt_bitselect239_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1055:1024];

    // ip_dsdk_adapt_bitselect237(BITSELECT,223)
    assign ip_dsdk_adapt_bitselect237_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[1023:992];

    // ip_dsdk_adapt_bitselect235(BITSELECT,222)
    assign ip_dsdk_adapt_bitselect235_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[991:960];

    // ip_dsdk_adapt_bitselect233(BITSELECT,221)
    assign ip_dsdk_adapt_bitselect233_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[959:928];

    // ip_dsdk_adapt_bitselect231(BITSELECT,220)
    assign ip_dsdk_adapt_bitselect231_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[927:896];

    // ip_dsdk_adapt_bitselect229(BITSELECT,219)
    assign ip_dsdk_adapt_bitselect229_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[895:864];

    // ip_dsdk_adapt_bitselect227(BITSELECT,218)
    assign ip_dsdk_adapt_bitselect227_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[863:832];

    // ip_dsdk_adapt_bitselect225(BITSELECT,217)
    assign ip_dsdk_adapt_bitselect225_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[831:800];

    // ip_dsdk_adapt_bitselect223(BITSELECT,216)
    assign ip_dsdk_adapt_bitselect223_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[799:768];

    // ip_dsdk_adapt_bitselect221(BITSELECT,215)
    assign ip_dsdk_adapt_bitselect221_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[767:736];

    // ip_dsdk_adapt_bitselect219(BITSELECT,214)
    assign ip_dsdk_adapt_bitselect219_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[735:704];

    // ip_dsdk_adapt_bitselect217(BITSELECT,213)
    assign ip_dsdk_adapt_bitselect217_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[703:672];

    // ip_dsdk_adapt_bitselect215(BITSELECT,212)
    assign ip_dsdk_adapt_bitselect215_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[671:640];

    // ip_dsdk_adapt_bitselect213(BITSELECT,211)
    assign ip_dsdk_adapt_bitselect213_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[632:632];

    // adapt_scalar_trunc214(ROUND,18)
    assign adapt_scalar_trunc214_in = ip_dsdk_adapt_bitselect213_b;
    assign adapt_scalar_trunc214_q = adapt_scalar_trunc214_in[0:0];

    // ip_dsdk_adapt_bitselect211(BITSELECT,210)
    assign ip_dsdk_adapt_bitselect211_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[624:624];

    // adapt_scalar_trunc212(ROUND,17)
    assign adapt_scalar_trunc212_in = ip_dsdk_adapt_bitselect211_b;
    assign adapt_scalar_trunc212_q = adapt_scalar_trunc212_in[0:0];

    // ip_dsdk_adapt_bitselect209(BITSELECT,209)
    assign ip_dsdk_adapt_bitselect209_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[616:616];

    // adapt_scalar_trunc210(ROUND,16)
    assign adapt_scalar_trunc210_in = ip_dsdk_adapt_bitselect209_b;
    assign adapt_scalar_trunc210_q = adapt_scalar_trunc210_in[0:0];

    // ip_dsdk_adapt_bitselect207(BITSELECT,208)
    assign ip_dsdk_adapt_bitselect207_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[608:608];

    // adapt_scalar_trunc208(ROUND,15)
    assign adapt_scalar_trunc208_in = ip_dsdk_adapt_bitselect207_b;
    assign adapt_scalar_trunc208_q = adapt_scalar_trunc208_in[0:0];

    // ip_dsdk_adapt_bitselect205(BITSELECT,207)
    assign ip_dsdk_adapt_bitselect205_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[607:576];

    // ip_dsdk_adapt_bitselect203(BITSELECT,206)
    assign ip_dsdk_adapt_bitselect203_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[575:544];

    // ip_dsdk_adapt_bitselect201(BITSELECT,205)
    assign ip_dsdk_adapt_bitselect201_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[543:512];

    // ip_dsdk_adapt_bitselect199(BITSELECT,204)
    assign ip_dsdk_adapt_bitselect199_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[480:480];

    // adapt_scalar_trunc200(ROUND,14)
    assign adapt_scalar_trunc200_in = ip_dsdk_adapt_bitselect199_b;
    assign adapt_scalar_trunc200_q = adapt_scalar_trunc200_in[0:0];

    // ip_dsdk_adapt_bitselect197(BITSELECT,203)
    assign ip_dsdk_adapt_bitselect197_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[479:448];

    // ip_dsdk_adapt_bitselect195(BITSELECT,202)
    assign ip_dsdk_adapt_bitselect195_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[447:416];

    // ip_dsdk_adapt_bitselect193(BITSELECT,201)
    assign ip_dsdk_adapt_bitselect193_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[392:392];

    // adapt_scalar_trunc194(ROUND,13)
    assign adapt_scalar_trunc194_in = ip_dsdk_adapt_bitselect193_b;
    assign adapt_scalar_trunc194_q = adapt_scalar_trunc194_in[0:0];

    // ip_dsdk_adapt_bitselect191(BITSELECT,200)
    assign ip_dsdk_adapt_bitselect191_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[384:384];

    // adapt_scalar_trunc192(ROUND,12)
    assign adapt_scalar_trunc192_in = ip_dsdk_adapt_bitselect191_b;
    assign adapt_scalar_trunc192_q = adapt_scalar_trunc192_in[0:0];

    // ip_dsdk_adapt_bitselect189(BITSELECT,199)
    assign ip_dsdk_adapt_bitselect189_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[383:320];

    // ip_dsdk_adapt_bitselect187(BITSELECT,198)
    assign ip_dsdk_adapt_bitselect187_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[287:256];

    // ip_dsdk_adapt_bitselect185(BITSELECT,197)
    assign ip_dsdk_adapt_bitselect185_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[255:224];

    // ip_dsdk_adapt_bitselect183(BITSELECT,196)
    assign ip_dsdk_adapt_bitselect183_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[192:192];

    // adapt_scalar_trunc184(ROUND,11)
    assign adapt_scalar_trunc184_in = ip_dsdk_adapt_bitselect183_b;
    assign adapt_scalar_trunc184_q = adapt_scalar_trunc184_in[0:0];

    // ip_dsdk_adapt_bitselect181(BITSELECT,195)
    assign ip_dsdk_adapt_bitselect181_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[191:128];

    // ip_dsdk_adapt_bitselect179(BITSELECT,194)
    assign ip_dsdk_adapt_bitselect179_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[127:96];

    // ip_dsdk_adapt_bitselect177(BITSELECT,193)
    assign ip_dsdk_adapt_bitselect177_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[64:64];

    // adapt_scalar_trunc178(ROUND,10)
    assign adapt_scalar_trunc178_in = ip_dsdk_adapt_bitselect177_b;
    assign adapt_scalar_trunc178_q = adapt_scalar_trunc178_in[0:0];

    // ip_dsdk_adapt_bitselect175(BITSELECT,192)
    assign ip_dsdk_adapt_bitselect175_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[56:56];

    // adapt_scalar_trunc176(ROUND,9)
    assign adapt_scalar_trunc176_in = ip_dsdk_adapt_bitselect175_b;
    assign adapt_scalar_trunc176_q = adapt_scalar_trunc176_in[0:0];

    // ip_dsdk_adapt_bitselect173(BITSELECT,191)
    assign ip_dsdk_adapt_bitselect173_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[48:48];

    // adapt_scalar_trunc174(ROUND,8)
    assign adapt_scalar_trunc174_in = ip_dsdk_adapt_bitselect173_b;
    assign adapt_scalar_trunc174_q = adapt_scalar_trunc174_in[0:0];

    // ip_dsdk_adapt_bitselect171(BITSELECT,190)
    assign ip_dsdk_adapt_bitselect171_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[40:40];

    // adapt_scalar_trunc172(ROUND,7)
    assign adapt_scalar_trunc172_in = ip_dsdk_adapt_bitselect171_b;
    assign adapt_scalar_trunc172_q = adapt_scalar_trunc172_in[0:0];

    // ip_dsdk_adapt_bitselect169(BITSELECT,189)
    assign ip_dsdk_adapt_bitselect169_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[32:32];

    // adapt_scalar_trunc170(ROUND,6)
    assign adapt_scalar_trunc170_in = ip_dsdk_adapt_bitselect169_b;
    assign adapt_scalar_trunc170_q = adapt_scalar_trunc170_in[0:0];

    // ip_dsdk_adapt_bitselect167(BITSELECT,188)
    assign ip_dsdk_adapt_bitselect167_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[24:24];

    // adapt_scalar_trunc168(ROUND,5)
    assign adapt_scalar_trunc168_in = ip_dsdk_adapt_bitselect167_b;
    assign adapt_scalar_trunc168_q = adapt_scalar_trunc168_in[0:0];

    // ip_dsdk_adapt_bitselect165(BITSELECT,187)
    assign ip_dsdk_adapt_bitselect165_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[16:16];

    // adapt_scalar_trunc166(ROUND,4)
    assign adapt_scalar_trunc166_in = ip_dsdk_adapt_bitselect165_b;
    assign adapt_scalar_trunc166_q = adapt_scalar_trunc166_in[0:0];

    // ip_dsdk_adapt_bitselect163(BITSELECT,186)
    assign ip_dsdk_adapt_bitselect163_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[8:8];

    // adapt_scalar_trunc164(ROUND,3)
    assign adapt_scalar_trunc164_in = ip_dsdk_adapt_bitselect163_b;
    assign adapt_scalar_trunc164_q = adapt_scalar_trunc164_in[0:0];

    // ip_dsdk_adapt_bitselect161(BITSELECT,185)
    assign ip_dsdk_adapt_bitselect161_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_data[0:0];

    // adapt_scalar_trunc162(ROUND,2)
    assign adapt_scalar_trunc162_in = ip_dsdk_adapt_bitselect161_b;
    assign adapt_scalar_trunc162_q = adapt_scalar_trunc162_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,330)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc162_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc164_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc166_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc168_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc170_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc172_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc174_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc176_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc178_q;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect179_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect181_b;
    assign out_o_data_11_tpl = adapt_scalar_trunc184_q;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect185_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect187_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect189_b;
    assign out_o_data_15_tpl = adapt_scalar_trunc192_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc194_q;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect195_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect197_b;
    assign out_o_data_19_tpl = adapt_scalar_trunc200_q;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect201_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect203_b;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect205_b;
    assign out_o_data_23_tpl = adapt_scalar_trunc208_q;
    assign out_o_data_24_tpl = adapt_scalar_trunc210_q;
    assign out_o_data_25_tpl = adapt_scalar_trunc212_q;
    assign out_o_data_26_tpl = adapt_scalar_trunc214_q;
    assign out_o_data_27_tpl = ip_dsdk_adapt_bitselect215_b;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect217_b;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect219_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect221_b;
    assign out_o_data_31_tpl = ip_dsdk_adapt_bitselect223_b;
    assign out_o_data_32_tpl = ip_dsdk_adapt_bitselect225_b;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect227_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect229_b;
    assign out_o_data_35_tpl = ip_dsdk_adapt_bitselect231_b;
    assign out_o_data_36_tpl = ip_dsdk_adapt_bitselect233_b;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect235_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect237_b;
    assign out_o_data_39_tpl = ip_dsdk_adapt_bitselect239_b;
    assign out_o_data_40_tpl = ip_dsdk_adapt_bitselect241_b;
    assign out_o_data_41_tpl = ip_dsdk_adapt_bitselect243_b;
    assign out_o_data_42_tpl = ip_dsdk_adapt_bitselect245_b;
    assign out_o_data_43_tpl = adapt_scalar_trunc248_q;
    assign out_o_data_44_tpl = ip_dsdk_adapt_bitselect249_b;
    assign out_o_data_45_tpl = adapt_scalar_trunc252_q;
    assign out_o_data_46_tpl = adapt_scalar_trunc254_q;
    assign out_o_data_47_tpl = adapt_scalar_trunc256_q;
    assign out_o_data_48_tpl = adapt_scalar_trunc258_q;
    assign out_o_data_49_tpl = ip_dsdk_adapt_bitselect259_b;
    assign out_o_data_50_tpl = ip_dsdk_adapt_bitselect261_b;
    assign out_o_data_51_tpl = ip_dsdk_adapt_bitselect263_b;
    assign out_o_data_52_tpl = adapt_scalar_trunc266_q;
    assign out_o_data_53_tpl = adapt_scalar_trunc268_q;
    assign out_o_data_54_tpl = ip_dsdk_adapt_bitselect269_b;
    assign out_o_data_55_tpl = ip_dsdk_adapt_bitselect271_b;
    assign out_o_data_56_tpl = ip_dsdk_adapt_bitselect273_b;
    assign out_o_data_57_tpl = ip_dsdk_adapt_bitselect275_b;
    assign out_o_data_58_tpl = ip_dsdk_adapt_bitselect277_b;
    assign out_o_data_59_tpl = ip_dsdk_adapt_bitselect279_b;
    assign out_o_data_60_tpl = ip_dsdk_adapt_bitselect281_b;
    assign out_o_data_61_tpl = ip_dsdk_adapt_bitselect283_b;
    assign out_o_data_62_tpl = ip_dsdk_adapt_bitselect285_b;
    assign out_o_data_63_tpl = ip_dsdk_adapt_bitselect287_b;
    assign out_o_data_64_tpl = ip_dsdk_adapt_bitselect289_b;
    assign out_o_data_65_tpl = ip_dsdk_adapt_bitselect291_b;
    assign out_o_data_66_tpl = ip_dsdk_adapt_bitselect293_b;
    assign out_o_data_67_tpl = ip_dsdk_adapt_bitselect295_b;
    assign out_o_data_68_tpl = ip_dsdk_adapt_bitselect297_b;
    assign out_o_data_69_tpl = ip_dsdk_adapt_bitselect299_b;
    assign out_o_data_70_tpl = ip_dsdk_adapt_bitselect301_b;
    assign out_o_data_71_tpl = ip_dsdk_adapt_bitselect303_b;
    assign out_o_data_72_tpl = ip_dsdk_adapt_bitselect305_b;
    assign out_o_data_73_tpl = ip_dsdk_adapt_bitselect307_b;
    assign out_o_data_74_tpl = ip_dsdk_adapt_bitselect309_b;
    assign out_o_data_75_tpl = ip_dsdk_adapt_bitselect311_b;
    assign out_o_data_76_tpl = ip_dsdk_adapt_bitselect313_b;
    assign out_o_data_77_tpl = ip_dsdk_adapt_bitselect315_b;
    assign out_o_data_78_tpl = ip_dsdk_adapt_bitselect317_b;
    assign out_o_data_79_tpl = ip_dsdk_adapt_bitselect319_b;
    assign out_o_data_80_tpl = ip_dsdk_adapt_bitselect321_b;
    assign out_o_data_81_tpl = ip_dsdk_adapt_bitselect323_b;
    assign out_o_data_82_tpl = ip_dsdk_adapt_bitselect325_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body14_conv2d1x1s_c0_exit722_conv2d1x10_o_valid;

endmodule
