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

// SystemVerilog created from mmul_i_sfc_s_c0_in_for_body_s_c0_enter13281_mmul29
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_s_c0_in_for_body_s_c0_enter13281_mmul29 (
    input wire [31:0] in_lm1048_mmul_avm_readdata,
    input wire [0:0] in_lm19230_mmul_avm_waitrequest,
    input wire [0:0] in_lm19230_mmul_avm_writeack,
    input wire [31:0] in_lm19631_mmul_avm_readdata,
    input wire [0:0] in_lm19631_mmul_avm_readdatavalid,
    input wire [0:0] in_lm19631_mmul_avm_waitrequest,
    input wire [0:0] in_lm19631_mmul_avm_writeack,
    input wire [31:0] in_lm20032_mmul_avm_readdata,
    input wire [0:0] in_lm20032_mmul_avm_readdatavalid,
    input wire [0:0] in_lm20032_mmul_avm_waitrequest,
    input wire [0:0] in_lm20032_mmul_avm_writeack,
    input wire [0:0] in_lm1048_mmul_avm_readdatavalid,
    input wire [31:0] in_lm20433_mmul_avm_readdata,
    input wire [0:0] in_lm20433_mmul_avm_readdatavalid,
    input wire [0:0] in_lm20433_mmul_avm_waitrequest,
    input wire [0:0] in_lm20433_mmul_avm_writeack,
    input wire [31:0] in_lm802_mmul_avm_readdata,
    input wire [0:0] in_lm802_mmul_avm_readdatavalid,
    input wire [0:0] in_lm802_mmul_avm_waitrequest,
    input wire [0:0] in_lm802_mmul_avm_writeack,
    input wire [31:0] in_lm843_mmul_avm_readdata,
    input wire [0:0] in_lm843_mmul_avm_readdatavalid,
    input wire [0:0] in_lm1048_mmul_avm_waitrequest,
    input wire [0:0] in_lm843_mmul_avm_waitrequest,
    input wire [0:0] in_lm843_mmul_avm_writeack,
    input wire [31:0] in_lm884_mmul_avm_readdata,
    input wire [0:0] in_lm884_mmul_avm_readdatavalid,
    input wire [0:0] in_lm884_mmul_avm_waitrequest,
    input wire [0:0] in_lm884_mmul_avm_writeack,
    input wire [31:0] in_lm925_mmul_avm_readdata,
    input wire [0:0] in_lm925_mmul_avm_readdatavalid,
    input wire [0:0] in_lm925_mmul_avm_waitrequest,
    input wire [0:0] in_lm925_mmul_avm_writeack,
    input wire [0:0] in_lm1048_mmul_avm_writeack,
    input wire [31:0] in_lm966_mmul_avm_readdata,
    input wire [0:0] in_lm966_mmul_avm_readdatavalid,
    input wire [0:0] in_lm966_mmul_avm_waitrequest,
    input wire [0:0] in_lm966_mmul_avm_writeack,
    input wire [1023:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdata,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writeack,
    input wire [0:0] in_wgl_0_exit_exit_stall_out,
    input wire [0:0] in_wgl_0_exit_exit_valid_out,
    input wire [31:0] in_lm1089_mmul_avm_readdata,
    input wire [0:0] in_wgl_1_exit_exit_stall_out,
    input wire [0:0] in_wgl_1_exit_exit_valid_out,
    input wire [0:0] in_lm1089_mmul_avm_readdatavalid,
    input wire [0:0] in_lm1089_mmul_avm_waitrequest,
    input wire [0:0] in_lm1089_mmul_avm_writeack,
    input wire [31:0] in_lm11210_mmul_avm_readdata,
    input wire [0:0] in_lm11210_mmul_avm_readdatavalid,
    input wire [0:0] in_lm11210_mmul_avm_waitrequest,
    input wire [0:0] in_lm11210_mmul_avm_writeack,
    input wire [31:0] in_lm11611_mmul_avm_readdata,
    input wire [0:0] in_lm11611_mmul_avm_readdatavalid,
    input wire [0:0] in_lm11611_mmul_avm_waitrequest,
    input wire [0:0] in_lm11611_mmul_avm_writeack,
    input wire [31:0] in_lm12012_mmul_avm_readdata,
    input wire [0:0] in_lm12012_mmul_avm_readdatavalid,
    input wire [0:0] in_lm12012_mmul_avm_waitrequest,
    input wire [0:0] in_lm12012_mmul_avm_writeack,
    input wire [31:0] in_lm12413_mmul_avm_readdata,
    input wire [0:0] in_lm12413_mmul_avm_readdatavalid,
    input wire [0:0] in_lm12413_mmul_avm_waitrequest,
    input wire [0:0] in_lm12413_mmul_avm_writeack,
    input wire [31:0] in_lm12814_mmul_avm_readdata,
    input wire [0:0] in_lm12814_mmul_avm_readdatavalid,
    input wire [0:0] in_lm12814_mmul_avm_waitrequest,
    input wire [0:0] in_lm12814_mmul_avm_writeack,
    input wire [31:0] in_lm13215_mmul_avm_readdata,
    input wire [0:0] in_lm13215_mmul_avm_readdatavalid,
    input wire [0:0] in_lm13215_mmul_avm_waitrequest,
    input wire [0:0] in_lm13215_mmul_avm_writeack,
    input wire [31:0] in_lm13616_mmul_avm_readdata,
    input wire [0:0] in_lm13616_mmul_avm_readdatavalid,
    input wire [0:0] in_lm13616_mmul_avm_waitrequest,
    input wire [0:0] in_lm13616_mmul_avm_writeack,
    input wire [31:0] in_lm14017_mmul_avm_readdata,
    input wire [0:0] in_lm14017_mmul_avm_readdatavalid,
    input wire [0:0] in_lm14017_mmul_avm_waitrequest,
    input wire [0:0] in_lm14017_mmul_avm_writeack,
    input wire [0:0] in_flush,
    input wire [31:0] in_lm14418_mmul_avm_readdata,
    input wire [0:0] in_lm14418_mmul_avm_readdatavalid,
    input wire [0:0] in_lm14418_mmul_avm_waitrequest,
    input wire [0:0] in_lm14418_mmul_avm_writeack,
    input wire [31:0] in_lm14819_mmul_avm_readdata,
    input wire [0:0] in_lm14819_mmul_avm_readdatavalid,
    input wire [0:0] in_lm14819_mmul_avm_waitrequest,
    input wire [0:0] in_lm14819_mmul_avm_writeack,
    input wire [31:0] in_lm15220_mmul_avm_readdata,
    input wire [0:0] in_lm15220_mmul_avm_readdatavalid,
    input wire [31:0] in_lm1007_mmul_avm_readdata,
    input wire [0:0] in_lm15220_mmul_avm_waitrequest,
    input wire [0:0] in_lm15220_mmul_avm_writeack,
    input wire [31:0] in_lm15621_mmul_avm_readdata,
    input wire [0:0] in_lm15621_mmul_avm_readdatavalid,
    input wire [0:0] in_lm15621_mmul_avm_waitrequest,
    input wire [0:0] in_lm15621_mmul_avm_writeack,
    input wire [31:0] in_lm16022_mmul_avm_readdata,
    input wire [0:0] in_lm16022_mmul_avm_readdatavalid,
    input wire [0:0] in_lm16022_mmul_avm_waitrequest,
    input wire [0:0] in_lm16022_mmul_avm_writeack,
    input wire [0:0] in_lm1007_mmul_avm_readdatavalid,
    input wire [31:0] in_lm16423_mmul_avm_readdata,
    input wire [0:0] in_lm16423_mmul_avm_readdatavalid,
    input wire [0:0] in_lm16423_mmul_avm_waitrequest,
    input wire [0:0] in_lm16423_mmul_avm_writeack,
    input wire [31:0] in_lm16824_mmul_avm_readdata,
    input wire [0:0] in_lm16824_mmul_avm_readdatavalid,
    input wire [0:0] in_lm16824_mmul_avm_waitrequest,
    input wire [0:0] in_lm16824_mmul_avm_writeack,
    input wire [31:0] in_lm17225_mmul_avm_readdata,
    input wire [0:0] in_lm17225_mmul_avm_readdatavalid,
    input wire [0:0] in_lm1007_mmul_avm_waitrequest,
    input wire [0:0] in_lm17225_mmul_avm_waitrequest,
    input wire [0:0] in_lm17225_mmul_avm_writeack,
    input wire [31:0] in_lm17626_mmul_avm_readdata,
    input wire [0:0] in_lm17626_mmul_avm_readdatavalid,
    input wire [0:0] in_lm17626_mmul_avm_waitrequest,
    input wire [0:0] in_lm17626_mmul_avm_writeack,
    input wire [31:0] in_lm18027_mmul_avm_readdata,
    input wire [0:0] in_lm18027_mmul_avm_readdatavalid,
    input wire [0:0] in_lm18027_mmul_avm_waitrequest,
    input wire [0:0] in_lm18027_mmul_avm_writeack,
    input wire [0:0] in_lm1007_mmul_avm_writeack,
    input wire [31:0] in_lm18428_mmul_avm_readdata,
    input wire [0:0] in_lm18428_mmul_avm_readdatavalid,
    input wire [0:0] in_lm18428_mmul_avm_waitrequest,
    input wire [0:0] in_lm18428_mmul_avm_writeack,
    input wire [31:0] in_lm18829_mmul_avm_readdata,
    input wire [0:0] in_lm18829_mmul_avm_readdatavalid,
    input wire [0:0] in_lm18829_mmul_avm_waitrequest,
    input wire [0:0] in_lm18829_mmul_avm_writeack,
    input wire [31:0] in_lm19230_mmul_avm_readdata,
    input wire [0:0] in_lm19230_mmul_avm_readdatavalid,
    output wire [31:0] out_lm1007_mmul_avm_address,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_lm1007_mmul_avm_burstcount,
    output wire [3:0] out_lm1007_mmul_avm_byteenable,
    output wire [0:0] out_lm1007_mmul_avm_enable,
    output wire [0:0] out_lm1007_mmul_avm_read,
    output wire [0:0] out_lm1007_mmul_avm_write,
    output wire [31:0] out_lm1007_mmul_avm_writedata,
    output wire [31:0] out_lm1048_mmul_avm_address,
    output wire [0:0] out_lm1048_mmul_avm_burstcount,
    output wire [3:0] out_lm1048_mmul_avm_byteenable,
    output wire [0:0] out_lm1048_mmul_avm_enable,
    output wire [0:0] out_lm1048_mmul_avm_read,
    output wire [0:0] out_lm1048_mmul_avm_write,
    output wire [31:0] out_lm1048_mmul_avm_writedata,
    output wire [31:0] out_lm1089_mmul_avm_address,
    output wire [0:0] out_lm1089_mmul_avm_burstcount,
    output wire [3:0] out_lm1089_mmul_avm_byteenable,
    output wire [0:0] out_lm1089_mmul_avm_enable,
    output wire [0:0] out_lm1089_mmul_avm_read,
    output wire [0:0] out_lm1089_mmul_avm_write,
    output wire [31:0] out_lm1089_mmul_avm_writedata,
    output wire [31:0] out_lm11210_mmul_avm_address,
    output wire [0:0] out_lm11210_mmul_avm_burstcount,
    output wire [3:0] out_lm11210_mmul_avm_byteenable,
    output wire [0:0] out_lm11210_mmul_avm_enable,
    output wire [0:0] out_lm11210_mmul_avm_read,
    output wire [0:0] out_lm11210_mmul_avm_write,
    output wire [31:0] out_lm11210_mmul_avm_writedata,
    output wire [31:0] out_lm11611_mmul_avm_address,
    output wire [0:0] out_lm11611_mmul_avm_burstcount,
    output wire [3:0] out_lm11611_mmul_avm_byteenable,
    output wire [0:0] out_lm11611_mmul_avm_enable,
    output wire [0:0] out_lm11611_mmul_avm_read,
    output wire [0:0] out_lm11611_mmul_avm_write,
    output wire [31:0] out_lm11611_mmul_avm_writedata,
    output wire [31:0] out_lm12012_mmul_avm_address,
    output wire [0:0] out_lm12012_mmul_avm_burstcount,
    output wire [3:0] out_lm12012_mmul_avm_byteenable,
    output wire [0:0] out_lm12012_mmul_avm_enable,
    output wire [0:0] out_lm12012_mmul_avm_read,
    output wire [0:0] out_lm12012_mmul_avm_write,
    output wire [31:0] out_lm12012_mmul_avm_writedata,
    output wire [31:0] out_lm12413_mmul_avm_address,
    output wire [0:0] out_lm12413_mmul_avm_burstcount,
    output wire [3:0] out_lm12413_mmul_avm_byteenable,
    output wire [0:0] out_lm12413_mmul_avm_enable,
    output wire [0:0] out_lm12413_mmul_avm_read,
    output wire [0:0] out_lm12413_mmul_avm_write,
    output wire [31:0] out_lm12413_mmul_avm_writedata,
    output wire [31:0] out_lm12814_mmul_avm_address,
    output wire [0:0] out_lm12814_mmul_avm_burstcount,
    output wire [3:0] out_lm12814_mmul_avm_byteenable,
    output wire [0:0] out_lm12814_mmul_avm_enable,
    output wire [0:0] out_lm12814_mmul_avm_read,
    output wire [0:0] out_lm12814_mmul_avm_write,
    output wire [31:0] out_lm12814_mmul_avm_writedata,
    output wire [31:0] out_lm13215_mmul_avm_address,
    output wire [0:0] out_lm13215_mmul_avm_burstcount,
    output wire [3:0] out_lm13215_mmul_avm_byteenable,
    output wire [0:0] out_lm13215_mmul_avm_enable,
    output wire [0:0] out_lm13215_mmul_avm_read,
    output wire [0:0] out_lm13215_mmul_avm_write,
    output wire [31:0] out_lm13215_mmul_avm_writedata,
    output wire [31:0] out_lm13616_mmul_avm_address,
    output wire [0:0] out_lm13616_mmul_avm_burstcount,
    output wire [3:0] out_lm13616_mmul_avm_byteenable,
    output wire [0:0] out_lm13616_mmul_avm_enable,
    output wire [0:0] out_lm13616_mmul_avm_read,
    output wire [0:0] out_lm13616_mmul_avm_write,
    output wire [31:0] out_lm13616_mmul_avm_writedata,
    output wire [31:0] out_lm14017_mmul_avm_address,
    output wire [0:0] out_lm14017_mmul_avm_burstcount,
    output wire [3:0] out_lm14017_mmul_avm_byteenable,
    output wire [0:0] out_lm14017_mmul_avm_enable,
    output wire [0:0] out_lm14017_mmul_avm_read,
    output wire [0:0] out_lm14017_mmul_avm_write,
    output wire [31:0] out_lm14017_mmul_avm_writedata,
    output wire [31:0] out_lm14418_mmul_avm_address,
    output wire [0:0] out_lm14418_mmul_avm_burstcount,
    output wire [3:0] out_lm14418_mmul_avm_byteenable,
    output wire [0:0] out_lm14418_mmul_avm_enable,
    output wire [0:0] out_lm14418_mmul_avm_read,
    output wire [0:0] out_lm14418_mmul_avm_write,
    output wire [31:0] out_lm14418_mmul_avm_writedata,
    output wire [31:0] out_lm14819_mmul_avm_address,
    output wire [0:0] out_lm14819_mmul_avm_burstcount,
    output wire [3:0] out_lm14819_mmul_avm_byteenable,
    output wire [0:0] out_lm14819_mmul_avm_enable,
    output wire [0:0] out_lm14819_mmul_avm_read,
    output wire [0:0] out_lm14819_mmul_avm_write,
    output wire [31:0] out_lm14819_mmul_avm_writedata,
    output wire [31:0] out_lm15220_mmul_avm_address,
    output wire [0:0] out_lm15220_mmul_avm_burstcount,
    output wire [3:0] out_lm15220_mmul_avm_byteenable,
    output wire [0:0] out_lm15220_mmul_avm_enable,
    output wire [0:0] out_lm15220_mmul_avm_read,
    output wire [0:0] out_lm15220_mmul_avm_write,
    output wire [31:0] out_lm15220_mmul_avm_writedata,
    output wire [31:0] out_lm15621_mmul_avm_address,
    output wire [0:0] out_lm15621_mmul_avm_burstcount,
    output wire [3:0] out_lm15621_mmul_avm_byteenable,
    output wire [0:0] out_lm15621_mmul_avm_enable,
    output wire [0:0] out_lm15621_mmul_avm_read,
    output wire [0:0] out_lm15621_mmul_avm_write,
    output wire [31:0] out_lm15621_mmul_avm_writedata,
    output wire [31:0] out_lm16022_mmul_avm_address,
    output wire [0:0] out_lm16022_mmul_avm_burstcount,
    output wire [3:0] out_lm16022_mmul_avm_byteenable,
    output wire [0:0] out_lm16022_mmul_avm_enable,
    output wire [0:0] out_lm16022_mmul_avm_read,
    output wire [0:0] out_lm16022_mmul_avm_write,
    output wire [31:0] out_lm16022_mmul_avm_writedata,
    output wire [31:0] out_lm16423_mmul_avm_address,
    output wire [0:0] out_lm16423_mmul_avm_burstcount,
    output wire [3:0] out_lm16423_mmul_avm_byteenable,
    output wire [0:0] out_lm16423_mmul_avm_enable,
    output wire [0:0] out_lm16423_mmul_avm_read,
    output wire [0:0] out_lm16423_mmul_avm_write,
    output wire [31:0] out_lm16423_mmul_avm_writedata,
    output wire [31:0] out_lm16824_mmul_avm_address,
    output wire [0:0] out_lm16824_mmul_avm_burstcount,
    output wire [3:0] out_lm16824_mmul_avm_byteenable,
    output wire [0:0] out_lm16824_mmul_avm_enable,
    output wire [0:0] out_lm16824_mmul_avm_read,
    output wire [0:0] out_lm16824_mmul_avm_write,
    output wire [31:0] out_lm16824_mmul_avm_writedata,
    output wire [31:0] out_lm17225_mmul_avm_address,
    output wire [0:0] out_lm17225_mmul_avm_burstcount,
    output wire [3:0] out_lm17225_mmul_avm_byteenable,
    output wire [0:0] out_lm17225_mmul_avm_enable,
    output wire [0:0] out_lm17225_mmul_avm_read,
    output wire [0:0] out_lm17225_mmul_avm_write,
    output wire [31:0] out_lm17225_mmul_avm_writedata,
    output wire [31:0] out_lm17626_mmul_avm_address,
    output wire [0:0] out_lm17626_mmul_avm_burstcount,
    output wire [3:0] out_lm17626_mmul_avm_byteenable,
    output wire [0:0] out_lm17626_mmul_avm_enable,
    output wire [0:0] out_lm17626_mmul_avm_read,
    output wire [0:0] out_lm17626_mmul_avm_write,
    output wire [31:0] out_lm17626_mmul_avm_writedata,
    output wire [31:0] out_lm18027_mmul_avm_address,
    output wire [0:0] out_lm18027_mmul_avm_burstcount,
    output wire [3:0] out_lm18027_mmul_avm_byteenable,
    output wire [0:0] out_lm18027_mmul_avm_enable,
    output wire [0:0] out_lm18027_mmul_avm_read,
    output wire [0:0] out_lm18027_mmul_avm_write,
    output wire [31:0] out_lm18027_mmul_avm_writedata,
    output wire [31:0] out_lm18428_mmul_avm_address,
    output wire [0:0] out_lm18428_mmul_avm_burstcount,
    output wire [3:0] out_lm18428_mmul_avm_byteenable,
    output wire [0:0] out_lm18428_mmul_avm_enable,
    output wire [0:0] out_lm18428_mmul_avm_read,
    output wire [0:0] out_lm18428_mmul_avm_write,
    output wire [31:0] out_lm18428_mmul_avm_writedata,
    output wire [31:0] out_lm18829_mmul_avm_address,
    output wire [0:0] out_lm18829_mmul_avm_burstcount,
    output wire [3:0] out_lm18829_mmul_avm_byteenable,
    output wire [0:0] out_lm18829_mmul_avm_enable,
    output wire [0:0] out_lm18829_mmul_avm_read,
    output wire [0:0] out_lm18829_mmul_avm_write,
    output wire [31:0] out_lm18829_mmul_avm_writedata,
    output wire [31:0] out_lm19230_mmul_avm_address,
    output wire [0:0] out_lm19230_mmul_avm_burstcount,
    output wire [3:0] out_lm19230_mmul_avm_byteenable,
    output wire [0:0] out_lm19230_mmul_avm_enable,
    output wire [0:0] out_lm19230_mmul_avm_read,
    output wire [0:0] out_lm19230_mmul_avm_write,
    output wire [31:0] out_lm19230_mmul_avm_writedata,
    output wire [31:0] out_lm19631_mmul_avm_address,
    output wire [0:0] out_lm19631_mmul_avm_burstcount,
    output wire [3:0] out_lm19631_mmul_avm_byteenable,
    output wire [0:0] out_lm19631_mmul_avm_enable,
    output wire [0:0] out_lm19631_mmul_avm_read,
    output wire [0:0] out_lm19631_mmul_avm_write,
    output wire [31:0] out_lm19631_mmul_avm_writedata,
    output wire [31:0] out_lm20032_mmul_avm_address,
    output wire [0:0] out_lm20032_mmul_avm_burstcount,
    output wire [3:0] out_lm20032_mmul_avm_byteenable,
    output wire [0:0] out_lm20032_mmul_avm_enable,
    output wire [0:0] out_lm20032_mmul_avm_read,
    output wire [0:0] out_lm20032_mmul_avm_write,
    output wire [31:0] out_lm20032_mmul_avm_writedata,
    output wire [31:0] out_lm20433_mmul_avm_address,
    output wire [0:0] out_lm20433_mmul_avm_burstcount,
    output wire [3:0] out_lm20433_mmul_avm_byteenable,
    output wire [0:0] out_lm20433_mmul_avm_enable,
    output wire [0:0] out_lm20433_mmul_avm_read,
    output wire [0:0] out_lm20433_mmul_avm_write,
    output wire [31:0] out_lm20433_mmul_avm_writedata,
    output wire [31:0] out_lm802_mmul_avm_address,
    output wire [0:0] out_lm802_mmul_avm_burstcount,
    output wire [3:0] out_lm802_mmul_avm_byteenable,
    output wire [0:0] out_lm802_mmul_avm_enable,
    output wire [0:0] out_lm802_mmul_avm_read,
    output wire [0:0] out_lm802_mmul_avm_write,
    output wire [31:0] out_lm802_mmul_avm_writedata,
    output wire [31:0] out_lm843_mmul_avm_address,
    output wire [0:0] out_lm843_mmul_avm_burstcount,
    output wire [3:0] out_lm843_mmul_avm_byteenable,
    output wire [0:0] out_lm843_mmul_avm_enable,
    output wire [0:0] out_lm843_mmul_avm_read,
    output wire [0:0] out_lm843_mmul_avm_write,
    output wire [31:0] out_lm843_mmul_avm_writedata,
    output wire [31:0] out_lm884_mmul_avm_address,
    output wire [0:0] out_lm884_mmul_avm_burstcount,
    output wire [3:0] out_lm884_mmul_avm_byteenable,
    output wire [0:0] out_lm884_mmul_avm_enable,
    output wire [0:0] out_lm884_mmul_avm_read,
    output wire [0:0] out_lm884_mmul_avm_write,
    output wire [31:0] out_lm884_mmul_avm_writedata,
    output wire [31:0] out_lm925_mmul_avm_address,
    output wire [0:0] out_lm925_mmul_avm_burstcount,
    output wire [3:0] out_lm925_mmul_avm_byteenable,
    output wire [0:0] out_lm925_mmul_avm_enable,
    output wire [0:0] out_lm925_mmul_avm_read,
    output wire [0:0] out_lm925_mmul_avm_write,
    output wire [31:0] out_lm925_mmul_avm_writedata,
    output wire [31:0] out_lm966_mmul_avm_address,
    output wire [0:0] out_lm966_mmul_avm_burstcount,
    output wire [3:0] out_lm966_mmul_avm_byteenable,
    output wire [0:0] out_lm966_mmul_avm_enable,
    output wire [0:0] out_lm966_mmul_avm_read,
    output wire [0:0] out_lm966_mmul_avm_write,
    output wire [31:0] out_lm966_mmul_avm_writedata,
    output wire [31:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount,
    output wire [127:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write,
    output wire [1023:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata,
    output wire [0:0] out_wgl_0_exit_exit_stall_in,
    output wire [0:0] out_wgl_0_exit_exit_valid_in,
    output wire [0:0] out_wgl_1_exit_exit_stall_in,
    output wire [0:0] out_wgl_1_exit_exit_valid_in,
    input wire [0:0] in_c0_eni9_0_tpl,
    input wire [63:0] in_c0_eni9_1_tpl,
    input wire [0:0] in_c0_eni9_2_tpl,
    input wire [0:0] in_c0_eni9_3_tpl,
    input wire [63:0] in_c0_eni9_4_tpl,
    input wire [31:0] in_c0_eni9_5_tpl,
    input wire [31:0] in_c0_eni9_6_tpl,
    input wire [63:0] in_c0_eni9_7_tpl,
    input wire [31:0] in_c0_eni9_8_tpl,
    input wire [31:0] in_c0_eni9_9_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit139_0_tpl,
    output wire [0:0] out_c0_exit139_1_tpl,
    output wire [31:0] out_c0_exit139_2_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount;
    wire [127:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write;
    wire [1023:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_0_exit_exit_stall_in;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_0_exit_exit_valid_in;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_1_exit_exit_stall_in;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_1_exit_exit_valid_in;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_c0_exi2138_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_c0_exi2138_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_c0_exi2138_2_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x(BLACKBOX,379)@395
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@398
    // out out_data_out_0_tpl@398
    // out out_data_out_1_tpl@398
    // out out_data_out_2_tpl@398
    mmul_i_llvm_fpga_sfc_exit_s_c0_out_for_body_s_c0_exit139_mmul0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_c0_exi2138_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_c0_exi2138_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_c0_exi2138_2_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x(BLACKBOX,380)@292
    // out out_lm1007_mmul_avm_address@20000000
    // out out_lm1007_mmul_avm_burstcount@20000000
    // out out_lm1007_mmul_avm_byteenable@20000000
    // out out_lm1007_mmul_avm_enable@20000000
    // out out_lm1007_mmul_avm_read@20000000
    // out out_lm1007_mmul_avm_write@20000000
    // out out_lm1007_mmul_avm_writedata@20000000
    // out out_lm1048_mmul_avm_address@20000000
    // out out_lm1048_mmul_avm_burstcount@20000000
    // out out_lm1048_mmul_avm_byteenable@20000000
    // out out_lm1048_mmul_avm_enable@20000000
    // out out_lm1048_mmul_avm_read@20000000
    // out out_lm1048_mmul_avm_write@20000000
    // out out_lm1048_mmul_avm_writedata@20000000
    // out out_lm1089_mmul_avm_address@20000000
    // out out_lm1089_mmul_avm_burstcount@20000000
    // out out_lm1089_mmul_avm_byteenable@20000000
    // out out_lm1089_mmul_avm_enable@20000000
    // out out_lm1089_mmul_avm_read@20000000
    // out out_lm1089_mmul_avm_write@20000000
    // out out_lm1089_mmul_avm_writedata@20000000
    // out out_lm11210_mmul_avm_address@20000000
    // out out_lm11210_mmul_avm_burstcount@20000000
    // out out_lm11210_mmul_avm_byteenable@20000000
    // out out_lm11210_mmul_avm_enable@20000000
    // out out_lm11210_mmul_avm_read@20000000
    // out out_lm11210_mmul_avm_write@20000000
    // out out_lm11210_mmul_avm_writedata@20000000
    // out out_lm11611_mmul_avm_address@20000000
    // out out_lm11611_mmul_avm_burstcount@20000000
    // out out_lm11611_mmul_avm_byteenable@20000000
    // out out_lm11611_mmul_avm_enable@20000000
    // out out_lm11611_mmul_avm_read@20000000
    // out out_lm11611_mmul_avm_write@20000000
    // out out_lm11611_mmul_avm_writedata@20000000
    // out out_lm12012_mmul_avm_address@20000000
    // out out_lm12012_mmul_avm_burstcount@20000000
    // out out_lm12012_mmul_avm_byteenable@20000000
    // out out_lm12012_mmul_avm_enable@20000000
    // out out_lm12012_mmul_avm_read@20000000
    // out out_lm12012_mmul_avm_write@20000000
    // out out_lm12012_mmul_avm_writedata@20000000
    // out out_lm12413_mmul_avm_address@20000000
    // out out_lm12413_mmul_avm_burstcount@20000000
    // out out_lm12413_mmul_avm_byteenable@20000000
    // out out_lm12413_mmul_avm_enable@20000000
    // out out_lm12413_mmul_avm_read@20000000
    // out out_lm12413_mmul_avm_write@20000000
    // out out_lm12413_mmul_avm_writedata@20000000
    // out out_lm12814_mmul_avm_address@20000000
    // out out_lm12814_mmul_avm_burstcount@20000000
    // out out_lm12814_mmul_avm_byteenable@20000000
    // out out_lm12814_mmul_avm_enable@20000000
    // out out_lm12814_mmul_avm_read@20000000
    // out out_lm12814_mmul_avm_write@20000000
    // out out_lm12814_mmul_avm_writedata@20000000
    // out out_lm13215_mmul_avm_address@20000000
    // out out_lm13215_mmul_avm_burstcount@20000000
    // out out_lm13215_mmul_avm_byteenable@20000000
    // out out_lm13215_mmul_avm_enable@20000000
    // out out_lm13215_mmul_avm_read@20000000
    // out out_lm13215_mmul_avm_write@20000000
    // out out_lm13215_mmul_avm_writedata@20000000
    // out out_lm13616_mmul_avm_address@20000000
    // out out_lm13616_mmul_avm_burstcount@20000000
    // out out_lm13616_mmul_avm_byteenable@20000000
    // out out_lm13616_mmul_avm_enable@20000000
    // out out_lm13616_mmul_avm_read@20000000
    // out out_lm13616_mmul_avm_write@20000000
    // out out_lm13616_mmul_avm_writedata@20000000
    // out out_lm14017_mmul_avm_address@20000000
    // out out_lm14017_mmul_avm_burstcount@20000000
    // out out_lm14017_mmul_avm_byteenable@20000000
    // out out_lm14017_mmul_avm_enable@20000000
    // out out_lm14017_mmul_avm_read@20000000
    // out out_lm14017_mmul_avm_write@20000000
    // out out_lm14017_mmul_avm_writedata@20000000
    // out out_lm14418_mmul_avm_address@20000000
    // out out_lm14418_mmul_avm_burstcount@20000000
    // out out_lm14418_mmul_avm_byteenable@20000000
    // out out_lm14418_mmul_avm_enable@20000000
    // out out_lm14418_mmul_avm_read@20000000
    // out out_lm14418_mmul_avm_write@20000000
    // out out_lm14418_mmul_avm_writedata@20000000
    // out out_lm14819_mmul_avm_address@20000000
    // out out_lm14819_mmul_avm_burstcount@20000000
    // out out_lm14819_mmul_avm_byteenable@20000000
    // out out_lm14819_mmul_avm_enable@20000000
    // out out_lm14819_mmul_avm_read@20000000
    // out out_lm14819_mmul_avm_write@20000000
    // out out_lm14819_mmul_avm_writedata@20000000
    // out out_lm15220_mmul_avm_address@20000000
    // out out_lm15220_mmul_avm_burstcount@20000000
    // out out_lm15220_mmul_avm_byteenable@20000000
    // out out_lm15220_mmul_avm_enable@20000000
    // out out_lm15220_mmul_avm_read@20000000
    // out out_lm15220_mmul_avm_write@20000000
    // out out_lm15220_mmul_avm_writedata@20000000
    // out out_lm15621_mmul_avm_address@20000000
    // out out_lm15621_mmul_avm_burstcount@20000000
    // out out_lm15621_mmul_avm_byteenable@20000000
    // out out_lm15621_mmul_avm_enable@20000000
    // out out_lm15621_mmul_avm_read@20000000
    // out out_lm15621_mmul_avm_write@20000000
    // out out_lm15621_mmul_avm_writedata@20000000
    // out out_lm16022_mmul_avm_address@20000000
    // out out_lm16022_mmul_avm_burstcount@20000000
    // out out_lm16022_mmul_avm_byteenable@20000000
    // out out_lm16022_mmul_avm_enable@20000000
    // out out_lm16022_mmul_avm_read@20000000
    // out out_lm16022_mmul_avm_write@20000000
    // out out_lm16022_mmul_avm_writedata@20000000
    // out out_lm16423_mmul_avm_address@20000000
    // out out_lm16423_mmul_avm_burstcount@20000000
    // out out_lm16423_mmul_avm_byteenable@20000000
    // out out_lm16423_mmul_avm_enable@20000000
    // out out_lm16423_mmul_avm_read@20000000
    // out out_lm16423_mmul_avm_write@20000000
    // out out_lm16423_mmul_avm_writedata@20000000
    // out out_lm16824_mmul_avm_address@20000000
    // out out_lm16824_mmul_avm_burstcount@20000000
    // out out_lm16824_mmul_avm_byteenable@20000000
    // out out_lm16824_mmul_avm_enable@20000000
    // out out_lm16824_mmul_avm_read@20000000
    // out out_lm16824_mmul_avm_write@20000000
    // out out_lm16824_mmul_avm_writedata@20000000
    // out out_lm17225_mmul_avm_address@20000000
    // out out_lm17225_mmul_avm_burstcount@20000000
    // out out_lm17225_mmul_avm_byteenable@20000000
    // out out_lm17225_mmul_avm_enable@20000000
    // out out_lm17225_mmul_avm_read@20000000
    // out out_lm17225_mmul_avm_write@20000000
    // out out_lm17225_mmul_avm_writedata@20000000
    // out out_lm17626_mmul_avm_address@20000000
    // out out_lm17626_mmul_avm_burstcount@20000000
    // out out_lm17626_mmul_avm_byteenable@20000000
    // out out_lm17626_mmul_avm_enable@20000000
    // out out_lm17626_mmul_avm_read@20000000
    // out out_lm17626_mmul_avm_write@20000000
    // out out_lm17626_mmul_avm_writedata@20000000
    // out out_lm18027_mmul_avm_address@20000000
    // out out_lm18027_mmul_avm_burstcount@20000000
    // out out_lm18027_mmul_avm_byteenable@20000000
    // out out_lm18027_mmul_avm_enable@20000000
    // out out_lm18027_mmul_avm_read@20000000
    // out out_lm18027_mmul_avm_write@20000000
    // out out_lm18027_mmul_avm_writedata@20000000
    // out out_lm18428_mmul_avm_address@20000000
    // out out_lm18428_mmul_avm_burstcount@20000000
    // out out_lm18428_mmul_avm_byteenable@20000000
    // out out_lm18428_mmul_avm_enable@20000000
    // out out_lm18428_mmul_avm_read@20000000
    // out out_lm18428_mmul_avm_write@20000000
    // out out_lm18428_mmul_avm_writedata@20000000
    // out out_lm18829_mmul_avm_address@20000000
    // out out_lm18829_mmul_avm_burstcount@20000000
    // out out_lm18829_mmul_avm_byteenable@20000000
    // out out_lm18829_mmul_avm_enable@20000000
    // out out_lm18829_mmul_avm_read@20000000
    // out out_lm18829_mmul_avm_write@20000000
    // out out_lm18829_mmul_avm_writedata@20000000
    // out out_lm19230_mmul_avm_address@20000000
    // out out_lm19230_mmul_avm_burstcount@20000000
    // out out_lm19230_mmul_avm_byteenable@20000000
    // out out_lm19230_mmul_avm_enable@20000000
    // out out_lm19230_mmul_avm_read@20000000
    // out out_lm19230_mmul_avm_write@20000000
    // out out_lm19230_mmul_avm_writedata@20000000
    // out out_lm19631_mmul_avm_address@20000000
    // out out_lm19631_mmul_avm_burstcount@20000000
    // out out_lm19631_mmul_avm_byteenable@20000000
    // out out_lm19631_mmul_avm_enable@20000000
    // out out_lm19631_mmul_avm_read@20000000
    // out out_lm19631_mmul_avm_write@20000000
    // out out_lm19631_mmul_avm_writedata@20000000
    // out out_lm20032_mmul_avm_address@20000000
    // out out_lm20032_mmul_avm_burstcount@20000000
    // out out_lm20032_mmul_avm_byteenable@20000000
    // out out_lm20032_mmul_avm_enable@20000000
    // out out_lm20032_mmul_avm_read@20000000
    // out out_lm20032_mmul_avm_write@20000000
    // out out_lm20032_mmul_avm_writedata@20000000
    // out out_lm20433_mmul_avm_address@20000000
    // out out_lm20433_mmul_avm_burstcount@20000000
    // out out_lm20433_mmul_avm_byteenable@20000000
    // out out_lm20433_mmul_avm_enable@20000000
    // out out_lm20433_mmul_avm_read@20000000
    // out out_lm20433_mmul_avm_write@20000000
    // out out_lm20433_mmul_avm_writedata@20000000
    // out out_lm802_mmul_avm_address@20000000
    // out out_lm802_mmul_avm_burstcount@20000000
    // out out_lm802_mmul_avm_byteenable@20000000
    // out out_lm802_mmul_avm_enable@20000000
    // out out_lm802_mmul_avm_read@20000000
    // out out_lm802_mmul_avm_write@20000000
    // out out_lm802_mmul_avm_writedata@20000000
    // out out_lm843_mmul_avm_address@20000000
    // out out_lm843_mmul_avm_burstcount@20000000
    // out out_lm843_mmul_avm_byteenable@20000000
    // out out_lm843_mmul_avm_enable@20000000
    // out out_lm843_mmul_avm_read@20000000
    // out out_lm843_mmul_avm_write@20000000
    // out out_lm843_mmul_avm_writedata@20000000
    // out out_lm884_mmul_avm_address@20000000
    // out out_lm884_mmul_avm_burstcount@20000000
    // out out_lm884_mmul_avm_byteenable@20000000
    // out out_lm884_mmul_avm_enable@20000000
    // out out_lm884_mmul_avm_read@20000000
    // out out_lm884_mmul_avm_write@20000000
    // out out_lm884_mmul_avm_writedata@20000000
    // out out_lm925_mmul_avm_address@20000000
    // out out_lm925_mmul_avm_burstcount@20000000
    // out out_lm925_mmul_avm_byteenable@20000000
    // out out_lm925_mmul_avm_enable@20000000
    // out out_lm925_mmul_avm_read@20000000
    // out out_lm925_mmul_avm_write@20000000
    // out out_lm925_mmul_avm_writedata@20000000
    // out out_lm966_mmul_avm_address@20000000
    // out out_lm966_mmul_avm_burstcount@20000000
    // out out_lm966_mmul_avm_byteenable@20000000
    // out out_lm966_mmul_avm_enable@20000000
    // out out_lm966_mmul_avm_read@20000000
    // out out_lm966_mmul_avm_write@20000000
    // out out_lm966_mmul_avm_writedata@20000000
    // out out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address@20000000
    // out out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount@20000000
    // out out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable@20000000
    // out out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable@20000000
    // out out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read@20000000
    // out out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write@20000000
    // out out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata@20000000
    // out out_o_valid@395
    // out out_unnamed_mmul0@395
    // out out_wgl_0_exit_exit_stall_in@20000000
    // out out_wgl_0_exit_exit_valid_in@20000000
    // out out_wgl_1_exit_exit_stall_in@20000000
    // out out_wgl_1_exit_exit_valid_in@20000000
    // out out_c0_exi2138_0_tpl@395
    // out out_c0_exi2138_1_tpl@395
    // out out_c0_exi2138_2_tpl@395
    mmul_i_sfc_logic_s_c0_in_for_body_s_c0_enter13281_mmul0 thei_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_lm1007_mmul_avm_readdata(in_lm1007_mmul_avm_readdata),
        .in_lm1007_mmul_avm_readdatavalid(in_lm1007_mmul_avm_readdatavalid),
        .in_lm1007_mmul_avm_waitrequest(in_lm1007_mmul_avm_waitrequest),
        .in_lm1007_mmul_avm_writeack(in_lm1007_mmul_avm_writeack),
        .in_lm1048_mmul_avm_readdata(in_lm1048_mmul_avm_readdata),
        .in_lm1048_mmul_avm_readdatavalid(in_lm1048_mmul_avm_readdatavalid),
        .in_lm1048_mmul_avm_waitrequest(in_lm1048_mmul_avm_waitrequest),
        .in_lm1048_mmul_avm_writeack(in_lm1048_mmul_avm_writeack),
        .in_lm1089_mmul_avm_readdata(in_lm1089_mmul_avm_readdata),
        .in_lm1089_mmul_avm_readdatavalid(in_lm1089_mmul_avm_readdatavalid),
        .in_lm1089_mmul_avm_waitrequest(in_lm1089_mmul_avm_waitrequest),
        .in_lm1089_mmul_avm_writeack(in_lm1089_mmul_avm_writeack),
        .in_lm11210_mmul_avm_readdata(in_lm11210_mmul_avm_readdata),
        .in_lm11210_mmul_avm_readdatavalid(in_lm11210_mmul_avm_readdatavalid),
        .in_lm11210_mmul_avm_waitrequest(in_lm11210_mmul_avm_waitrequest),
        .in_lm11210_mmul_avm_writeack(in_lm11210_mmul_avm_writeack),
        .in_lm11611_mmul_avm_readdata(in_lm11611_mmul_avm_readdata),
        .in_lm11611_mmul_avm_readdatavalid(in_lm11611_mmul_avm_readdatavalid),
        .in_lm11611_mmul_avm_waitrequest(in_lm11611_mmul_avm_waitrequest),
        .in_lm11611_mmul_avm_writeack(in_lm11611_mmul_avm_writeack),
        .in_lm12012_mmul_avm_readdata(in_lm12012_mmul_avm_readdata),
        .in_lm12012_mmul_avm_readdatavalid(in_lm12012_mmul_avm_readdatavalid),
        .in_lm12012_mmul_avm_waitrequest(in_lm12012_mmul_avm_waitrequest),
        .in_lm12012_mmul_avm_writeack(in_lm12012_mmul_avm_writeack),
        .in_lm12413_mmul_avm_readdata(in_lm12413_mmul_avm_readdata),
        .in_lm12413_mmul_avm_readdatavalid(in_lm12413_mmul_avm_readdatavalid),
        .in_lm12413_mmul_avm_waitrequest(in_lm12413_mmul_avm_waitrequest),
        .in_lm12413_mmul_avm_writeack(in_lm12413_mmul_avm_writeack),
        .in_lm12814_mmul_avm_readdata(in_lm12814_mmul_avm_readdata),
        .in_lm12814_mmul_avm_readdatavalid(in_lm12814_mmul_avm_readdatavalid),
        .in_lm12814_mmul_avm_waitrequest(in_lm12814_mmul_avm_waitrequest),
        .in_lm12814_mmul_avm_writeack(in_lm12814_mmul_avm_writeack),
        .in_lm13215_mmul_avm_readdata(in_lm13215_mmul_avm_readdata),
        .in_lm13215_mmul_avm_readdatavalid(in_lm13215_mmul_avm_readdatavalid),
        .in_lm13215_mmul_avm_waitrequest(in_lm13215_mmul_avm_waitrequest),
        .in_lm13215_mmul_avm_writeack(in_lm13215_mmul_avm_writeack),
        .in_lm13616_mmul_avm_readdata(in_lm13616_mmul_avm_readdata),
        .in_lm13616_mmul_avm_readdatavalid(in_lm13616_mmul_avm_readdatavalid),
        .in_lm13616_mmul_avm_waitrequest(in_lm13616_mmul_avm_waitrequest),
        .in_lm13616_mmul_avm_writeack(in_lm13616_mmul_avm_writeack),
        .in_lm14017_mmul_avm_readdata(in_lm14017_mmul_avm_readdata),
        .in_lm14017_mmul_avm_readdatavalid(in_lm14017_mmul_avm_readdatavalid),
        .in_lm14017_mmul_avm_waitrequest(in_lm14017_mmul_avm_waitrequest),
        .in_lm14017_mmul_avm_writeack(in_lm14017_mmul_avm_writeack),
        .in_lm14418_mmul_avm_readdata(in_lm14418_mmul_avm_readdata),
        .in_lm14418_mmul_avm_readdatavalid(in_lm14418_mmul_avm_readdatavalid),
        .in_lm14418_mmul_avm_waitrequest(in_lm14418_mmul_avm_waitrequest),
        .in_lm14418_mmul_avm_writeack(in_lm14418_mmul_avm_writeack),
        .in_lm14819_mmul_avm_readdata(in_lm14819_mmul_avm_readdata),
        .in_lm14819_mmul_avm_readdatavalid(in_lm14819_mmul_avm_readdatavalid),
        .in_lm14819_mmul_avm_waitrequest(in_lm14819_mmul_avm_waitrequest),
        .in_lm14819_mmul_avm_writeack(in_lm14819_mmul_avm_writeack),
        .in_lm15220_mmul_avm_readdata(in_lm15220_mmul_avm_readdata),
        .in_lm15220_mmul_avm_readdatavalid(in_lm15220_mmul_avm_readdatavalid),
        .in_lm15220_mmul_avm_waitrequest(in_lm15220_mmul_avm_waitrequest),
        .in_lm15220_mmul_avm_writeack(in_lm15220_mmul_avm_writeack),
        .in_lm15621_mmul_avm_readdata(in_lm15621_mmul_avm_readdata),
        .in_lm15621_mmul_avm_readdatavalid(in_lm15621_mmul_avm_readdatavalid),
        .in_lm15621_mmul_avm_waitrequest(in_lm15621_mmul_avm_waitrequest),
        .in_lm15621_mmul_avm_writeack(in_lm15621_mmul_avm_writeack),
        .in_lm16022_mmul_avm_readdata(in_lm16022_mmul_avm_readdata),
        .in_lm16022_mmul_avm_readdatavalid(in_lm16022_mmul_avm_readdatavalid),
        .in_lm16022_mmul_avm_waitrequest(in_lm16022_mmul_avm_waitrequest),
        .in_lm16022_mmul_avm_writeack(in_lm16022_mmul_avm_writeack),
        .in_lm16423_mmul_avm_readdata(in_lm16423_mmul_avm_readdata),
        .in_lm16423_mmul_avm_readdatavalid(in_lm16423_mmul_avm_readdatavalid),
        .in_lm16423_mmul_avm_waitrequest(in_lm16423_mmul_avm_waitrequest),
        .in_lm16423_mmul_avm_writeack(in_lm16423_mmul_avm_writeack),
        .in_lm16824_mmul_avm_readdata(in_lm16824_mmul_avm_readdata),
        .in_lm16824_mmul_avm_readdatavalid(in_lm16824_mmul_avm_readdatavalid),
        .in_lm16824_mmul_avm_waitrequest(in_lm16824_mmul_avm_waitrequest),
        .in_lm16824_mmul_avm_writeack(in_lm16824_mmul_avm_writeack),
        .in_lm17225_mmul_avm_readdata(in_lm17225_mmul_avm_readdata),
        .in_lm17225_mmul_avm_readdatavalid(in_lm17225_mmul_avm_readdatavalid),
        .in_lm17225_mmul_avm_waitrequest(in_lm17225_mmul_avm_waitrequest),
        .in_lm17225_mmul_avm_writeack(in_lm17225_mmul_avm_writeack),
        .in_lm17626_mmul_avm_readdata(in_lm17626_mmul_avm_readdata),
        .in_lm17626_mmul_avm_readdatavalid(in_lm17626_mmul_avm_readdatavalid),
        .in_lm17626_mmul_avm_waitrequest(in_lm17626_mmul_avm_waitrequest),
        .in_lm17626_mmul_avm_writeack(in_lm17626_mmul_avm_writeack),
        .in_lm18027_mmul_avm_readdata(in_lm18027_mmul_avm_readdata),
        .in_lm18027_mmul_avm_readdatavalid(in_lm18027_mmul_avm_readdatavalid),
        .in_lm18027_mmul_avm_waitrequest(in_lm18027_mmul_avm_waitrequest),
        .in_lm18027_mmul_avm_writeack(in_lm18027_mmul_avm_writeack),
        .in_lm18428_mmul_avm_readdata(in_lm18428_mmul_avm_readdata),
        .in_lm18428_mmul_avm_readdatavalid(in_lm18428_mmul_avm_readdatavalid),
        .in_lm18428_mmul_avm_waitrequest(in_lm18428_mmul_avm_waitrequest),
        .in_lm18428_mmul_avm_writeack(in_lm18428_mmul_avm_writeack),
        .in_lm18829_mmul_avm_readdata(in_lm18829_mmul_avm_readdata),
        .in_lm18829_mmul_avm_readdatavalid(in_lm18829_mmul_avm_readdatavalid),
        .in_lm18829_mmul_avm_waitrequest(in_lm18829_mmul_avm_waitrequest),
        .in_lm18829_mmul_avm_writeack(in_lm18829_mmul_avm_writeack),
        .in_lm19230_mmul_avm_readdata(in_lm19230_mmul_avm_readdata),
        .in_lm19230_mmul_avm_readdatavalid(in_lm19230_mmul_avm_readdatavalid),
        .in_lm19230_mmul_avm_waitrequest(in_lm19230_mmul_avm_waitrequest),
        .in_lm19230_mmul_avm_writeack(in_lm19230_mmul_avm_writeack),
        .in_lm19631_mmul_avm_readdata(in_lm19631_mmul_avm_readdata),
        .in_lm19631_mmul_avm_readdatavalid(in_lm19631_mmul_avm_readdatavalid),
        .in_lm19631_mmul_avm_waitrequest(in_lm19631_mmul_avm_waitrequest),
        .in_lm19631_mmul_avm_writeack(in_lm19631_mmul_avm_writeack),
        .in_lm20032_mmul_avm_readdata(in_lm20032_mmul_avm_readdata),
        .in_lm20032_mmul_avm_readdatavalid(in_lm20032_mmul_avm_readdatavalid),
        .in_lm20032_mmul_avm_waitrequest(in_lm20032_mmul_avm_waitrequest),
        .in_lm20032_mmul_avm_writeack(in_lm20032_mmul_avm_writeack),
        .in_lm20433_mmul_avm_readdata(in_lm20433_mmul_avm_readdata),
        .in_lm20433_mmul_avm_readdatavalid(in_lm20433_mmul_avm_readdatavalid),
        .in_lm20433_mmul_avm_waitrequest(in_lm20433_mmul_avm_waitrequest),
        .in_lm20433_mmul_avm_writeack(in_lm20433_mmul_avm_writeack),
        .in_lm802_mmul_avm_readdata(in_lm802_mmul_avm_readdata),
        .in_lm802_mmul_avm_readdatavalid(in_lm802_mmul_avm_readdatavalid),
        .in_lm802_mmul_avm_waitrequest(in_lm802_mmul_avm_waitrequest),
        .in_lm802_mmul_avm_writeack(in_lm802_mmul_avm_writeack),
        .in_lm843_mmul_avm_readdata(in_lm843_mmul_avm_readdata),
        .in_lm843_mmul_avm_readdatavalid(in_lm843_mmul_avm_readdatavalid),
        .in_lm843_mmul_avm_waitrequest(in_lm843_mmul_avm_waitrequest),
        .in_lm843_mmul_avm_writeack(in_lm843_mmul_avm_writeack),
        .in_lm884_mmul_avm_readdata(in_lm884_mmul_avm_readdata),
        .in_lm884_mmul_avm_readdatavalid(in_lm884_mmul_avm_readdatavalid),
        .in_lm884_mmul_avm_waitrequest(in_lm884_mmul_avm_waitrequest),
        .in_lm884_mmul_avm_writeack(in_lm884_mmul_avm_writeack),
        .in_lm925_mmul_avm_readdata(in_lm925_mmul_avm_readdata),
        .in_lm925_mmul_avm_readdatavalid(in_lm925_mmul_avm_readdatavalid),
        .in_lm925_mmul_avm_waitrequest(in_lm925_mmul_avm_waitrequest),
        .in_lm925_mmul_avm_writeack(in_lm925_mmul_avm_writeack),
        .in_lm966_mmul_avm_readdata(in_lm966_mmul_avm_readdata),
        .in_lm966_mmul_avm_readdatavalid(in_lm966_mmul_avm_readdatavalid),
        .in_lm966_mmul_avm_waitrequest(in_lm966_mmul_avm_waitrequest),
        .in_lm966_mmul_avm_writeack(in_lm966_mmul_avm_writeack),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdata(in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdata),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdatavalid(in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdatavalid),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_waitrequest(in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_waitrequest),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writeack(in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writeack),
        .in_wgl_0_exit_exit_stall_out(in_wgl_0_exit_exit_stall_out),
        .in_wgl_0_exit_exit_valid_out(in_wgl_0_exit_exit_valid_out),
        .in_wgl_1_exit_exit_stall_out(in_wgl_1_exit_exit_stall_out),
        .in_wgl_1_exit_exit_valid_out(in_wgl_1_exit_exit_valid_out),
        .in_c0_eni9_0_tpl(in_c0_eni9_0_tpl),
        .in_c0_eni9_1_tpl(in_c0_eni9_1_tpl),
        .in_c0_eni9_2_tpl(in_c0_eni9_2_tpl),
        .in_c0_eni9_3_tpl(in_c0_eni9_3_tpl),
        .in_c0_eni9_4_tpl(in_c0_eni9_4_tpl),
        .in_c0_eni9_5_tpl(in_c0_eni9_5_tpl),
        .in_c0_eni9_6_tpl(in_c0_eni9_6_tpl),
        .in_c0_eni9_7_tpl(in_c0_eni9_7_tpl),
        .in_c0_eni9_8_tpl(in_c0_eni9_8_tpl),
        .in_c0_eni9_9_tpl(in_c0_eni9_9_tpl),
        .out_lm1007_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_address),
        .out_lm1007_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_burstcount),
        .out_lm1007_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_byteenable),
        .out_lm1007_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_enable),
        .out_lm1007_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_read),
        .out_lm1007_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_write),
        .out_lm1007_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_writedata),
        .out_lm1048_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_address),
        .out_lm1048_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_burstcount),
        .out_lm1048_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_byteenable),
        .out_lm1048_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_enable),
        .out_lm1048_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_read),
        .out_lm1048_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_write),
        .out_lm1048_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_writedata),
        .out_lm1089_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_address),
        .out_lm1089_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_burstcount),
        .out_lm1089_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_byteenable),
        .out_lm1089_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_enable),
        .out_lm1089_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_read),
        .out_lm1089_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_write),
        .out_lm1089_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_writedata),
        .out_lm11210_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_address),
        .out_lm11210_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_burstcount),
        .out_lm11210_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_byteenable),
        .out_lm11210_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_enable),
        .out_lm11210_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_read),
        .out_lm11210_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_write),
        .out_lm11210_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_writedata),
        .out_lm11611_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_address),
        .out_lm11611_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_burstcount),
        .out_lm11611_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_byteenable),
        .out_lm11611_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_enable),
        .out_lm11611_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_read),
        .out_lm11611_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_write),
        .out_lm11611_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_writedata),
        .out_lm12012_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_address),
        .out_lm12012_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_burstcount),
        .out_lm12012_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_byteenable),
        .out_lm12012_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_enable),
        .out_lm12012_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_read),
        .out_lm12012_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_write),
        .out_lm12012_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_writedata),
        .out_lm12413_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_address),
        .out_lm12413_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_burstcount),
        .out_lm12413_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_byteenable),
        .out_lm12413_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_enable),
        .out_lm12413_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_read),
        .out_lm12413_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_write),
        .out_lm12413_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_writedata),
        .out_lm12814_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_address),
        .out_lm12814_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_burstcount),
        .out_lm12814_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_byteenable),
        .out_lm12814_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_enable),
        .out_lm12814_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_read),
        .out_lm12814_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_write),
        .out_lm12814_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_writedata),
        .out_lm13215_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_address),
        .out_lm13215_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_burstcount),
        .out_lm13215_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_byteenable),
        .out_lm13215_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_enable),
        .out_lm13215_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_read),
        .out_lm13215_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_write),
        .out_lm13215_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_writedata),
        .out_lm13616_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_address),
        .out_lm13616_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_burstcount),
        .out_lm13616_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_byteenable),
        .out_lm13616_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_enable),
        .out_lm13616_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_read),
        .out_lm13616_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_write),
        .out_lm13616_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_writedata),
        .out_lm14017_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_address),
        .out_lm14017_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_burstcount),
        .out_lm14017_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_byteenable),
        .out_lm14017_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_enable),
        .out_lm14017_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_read),
        .out_lm14017_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_write),
        .out_lm14017_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_writedata),
        .out_lm14418_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_address),
        .out_lm14418_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_burstcount),
        .out_lm14418_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_byteenable),
        .out_lm14418_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_enable),
        .out_lm14418_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_read),
        .out_lm14418_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_write),
        .out_lm14418_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_writedata),
        .out_lm14819_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_address),
        .out_lm14819_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_burstcount),
        .out_lm14819_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_byteenable),
        .out_lm14819_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_enable),
        .out_lm14819_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_read),
        .out_lm14819_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_write),
        .out_lm14819_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_writedata),
        .out_lm15220_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_address),
        .out_lm15220_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_burstcount),
        .out_lm15220_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_byteenable),
        .out_lm15220_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_enable),
        .out_lm15220_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_read),
        .out_lm15220_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_write),
        .out_lm15220_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_writedata),
        .out_lm15621_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_address),
        .out_lm15621_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_burstcount),
        .out_lm15621_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_byteenable),
        .out_lm15621_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_enable),
        .out_lm15621_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_read),
        .out_lm15621_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_write),
        .out_lm15621_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_writedata),
        .out_lm16022_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_address),
        .out_lm16022_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_burstcount),
        .out_lm16022_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_byteenable),
        .out_lm16022_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_enable),
        .out_lm16022_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_read),
        .out_lm16022_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_write),
        .out_lm16022_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_writedata),
        .out_lm16423_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_address),
        .out_lm16423_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_burstcount),
        .out_lm16423_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_byteenable),
        .out_lm16423_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_enable),
        .out_lm16423_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_read),
        .out_lm16423_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_write),
        .out_lm16423_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_writedata),
        .out_lm16824_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_address),
        .out_lm16824_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_burstcount),
        .out_lm16824_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_byteenable),
        .out_lm16824_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_enable),
        .out_lm16824_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_read),
        .out_lm16824_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_write),
        .out_lm16824_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_writedata),
        .out_lm17225_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_address),
        .out_lm17225_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_burstcount),
        .out_lm17225_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_byteenable),
        .out_lm17225_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_enable),
        .out_lm17225_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_read),
        .out_lm17225_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_write),
        .out_lm17225_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_writedata),
        .out_lm17626_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_address),
        .out_lm17626_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_burstcount),
        .out_lm17626_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_byteenable),
        .out_lm17626_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_enable),
        .out_lm17626_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_read),
        .out_lm17626_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_write),
        .out_lm17626_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_writedata),
        .out_lm18027_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_address),
        .out_lm18027_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_burstcount),
        .out_lm18027_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_byteenable),
        .out_lm18027_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_enable),
        .out_lm18027_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_read),
        .out_lm18027_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_write),
        .out_lm18027_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_writedata),
        .out_lm18428_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_address),
        .out_lm18428_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_burstcount),
        .out_lm18428_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_byteenable),
        .out_lm18428_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_enable),
        .out_lm18428_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_read),
        .out_lm18428_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_write),
        .out_lm18428_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_writedata),
        .out_lm18829_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_address),
        .out_lm18829_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_burstcount),
        .out_lm18829_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_byteenable),
        .out_lm18829_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_enable),
        .out_lm18829_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_read),
        .out_lm18829_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_write),
        .out_lm18829_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_writedata),
        .out_lm19230_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_address),
        .out_lm19230_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_burstcount),
        .out_lm19230_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_byteenable),
        .out_lm19230_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_enable),
        .out_lm19230_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_read),
        .out_lm19230_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_write),
        .out_lm19230_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_writedata),
        .out_lm19631_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_address),
        .out_lm19631_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_burstcount),
        .out_lm19631_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_byteenable),
        .out_lm19631_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_enable),
        .out_lm19631_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_read),
        .out_lm19631_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_write),
        .out_lm19631_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_writedata),
        .out_lm20032_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_address),
        .out_lm20032_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_burstcount),
        .out_lm20032_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_byteenable),
        .out_lm20032_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_enable),
        .out_lm20032_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_read),
        .out_lm20032_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_write),
        .out_lm20032_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_writedata),
        .out_lm20433_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_address),
        .out_lm20433_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_burstcount),
        .out_lm20433_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_byteenable),
        .out_lm20433_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_enable),
        .out_lm20433_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_read),
        .out_lm20433_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_write),
        .out_lm20433_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_writedata),
        .out_lm802_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_address),
        .out_lm802_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_burstcount),
        .out_lm802_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_byteenable),
        .out_lm802_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_enable),
        .out_lm802_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_read),
        .out_lm802_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_write),
        .out_lm802_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_writedata),
        .out_lm843_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_address),
        .out_lm843_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_burstcount),
        .out_lm843_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_byteenable),
        .out_lm843_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_enable),
        .out_lm843_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_read),
        .out_lm843_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_write),
        .out_lm843_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_writedata),
        .out_lm884_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_address),
        .out_lm884_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_burstcount),
        .out_lm884_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_byteenable),
        .out_lm884_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_enable),
        .out_lm884_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_read),
        .out_lm884_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_write),
        .out_lm884_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_writedata),
        .out_lm925_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_address),
        .out_lm925_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_burstcount),
        .out_lm925_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_byteenable),
        .out_lm925_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_enable),
        .out_lm925_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_read),
        .out_lm925_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_write),
        .out_lm925_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_writedata),
        .out_lm966_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_address),
        .out_lm966_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_burstcount),
        .out_lm966_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_byteenable),
        .out_lm966_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_enable),
        .out_lm966_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_read),
        .out_lm966_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_write),
        .out_lm966_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_writedata),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_o_valid),
        .out_unnamed_mmul0(),
        .out_wgl_0_exit_exit_stall_in(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_0_exit_exit_stall_in),
        .out_wgl_0_exit_exit_valid_in(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_0_exit_exit_valid_in),
        .out_wgl_1_exit_exit_stall_in(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_1_exit_exit_stall_in),
        .out_wgl_1_exit_exit_valid_in(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_1_exit_exit_valid_in),
        .out_c0_exi2138_0_tpl(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_c0_exi2138_0_tpl),
        .out_c0_exi2138_1_tpl(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_c0_exi2138_1_tpl),
        .out_c0_exi2138_2_tpl(i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_c0_exi2138_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,142)
    assign out_lm1007_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_address;

    // sync_out(GPOUT,144)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,145)
    assign out_lm1007_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,146)
    assign out_lm1007_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_byteenable;

    // dupName_2_regfree_osync_x(GPOUT,147)
    assign out_lm1007_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_enable;

    // dupName_3_regfree_osync_x(GPOUT,148)
    assign out_lm1007_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_read;

    // dupName_4_regfree_osync_x(GPOUT,149)
    assign out_lm1007_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_write;

    // dupName_5_regfree_osync_x(GPOUT,150)
    assign out_lm1007_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1007_mmul_avm_writedata;

    // dupName_6_regfree_osync_x(GPOUT,151)
    assign out_lm1048_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_address;

    // dupName_7_regfree_osync_x(GPOUT,152)
    assign out_lm1048_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_burstcount;

    // dupName_8_regfree_osync_x(GPOUT,153)
    assign out_lm1048_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_byteenable;

    // dupName_9_regfree_osync_x(GPOUT,154)
    assign out_lm1048_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_enable;

    // dupName_10_regfree_osync_x(GPOUT,155)
    assign out_lm1048_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_read;

    // dupName_11_regfree_osync_x(GPOUT,156)
    assign out_lm1048_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_write;

    // dupName_12_regfree_osync_x(GPOUT,157)
    assign out_lm1048_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1048_mmul_avm_writedata;

    // dupName_13_regfree_osync_x(GPOUT,158)
    assign out_lm1089_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_address;

    // dupName_14_regfree_osync_x(GPOUT,159)
    assign out_lm1089_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_burstcount;

    // dupName_15_regfree_osync_x(GPOUT,160)
    assign out_lm1089_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_byteenable;

    // dupName_16_regfree_osync_x(GPOUT,161)
    assign out_lm1089_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_enable;

    // dupName_17_regfree_osync_x(GPOUT,162)
    assign out_lm1089_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_read;

    // dupName_18_regfree_osync_x(GPOUT,163)
    assign out_lm1089_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_write;

    // dupName_19_regfree_osync_x(GPOUT,164)
    assign out_lm1089_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm1089_mmul_avm_writedata;

    // dupName_20_regfree_osync_x(GPOUT,165)
    assign out_lm11210_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_address;

    // dupName_21_regfree_osync_x(GPOUT,166)
    assign out_lm11210_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_burstcount;

    // dupName_22_regfree_osync_x(GPOUT,167)
    assign out_lm11210_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_byteenable;

    // dupName_23_regfree_osync_x(GPOUT,168)
    assign out_lm11210_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_enable;

    // dupName_24_regfree_osync_x(GPOUT,169)
    assign out_lm11210_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_read;

    // dupName_25_regfree_osync_x(GPOUT,170)
    assign out_lm11210_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_write;

    // dupName_26_regfree_osync_x(GPOUT,171)
    assign out_lm11210_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11210_mmul_avm_writedata;

    // dupName_27_regfree_osync_x(GPOUT,172)
    assign out_lm11611_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_address;

    // dupName_28_regfree_osync_x(GPOUT,173)
    assign out_lm11611_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_burstcount;

    // dupName_29_regfree_osync_x(GPOUT,174)
    assign out_lm11611_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_byteenable;

    // dupName_30_regfree_osync_x(GPOUT,175)
    assign out_lm11611_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_enable;

    // dupName_31_regfree_osync_x(GPOUT,176)
    assign out_lm11611_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_read;

    // dupName_32_regfree_osync_x(GPOUT,177)
    assign out_lm11611_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_write;

    // dupName_33_regfree_osync_x(GPOUT,178)
    assign out_lm11611_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm11611_mmul_avm_writedata;

    // dupName_34_regfree_osync_x(GPOUT,179)
    assign out_lm12012_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_address;

    // dupName_35_regfree_osync_x(GPOUT,180)
    assign out_lm12012_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_burstcount;

    // dupName_36_regfree_osync_x(GPOUT,181)
    assign out_lm12012_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_byteenable;

    // dupName_37_regfree_osync_x(GPOUT,182)
    assign out_lm12012_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_enable;

    // dupName_38_regfree_osync_x(GPOUT,183)
    assign out_lm12012_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_read;

    // dupName_39_regfree_osync_x(GPOUT,184)
    assign out_lm12012_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_write;

    // dupName_40_regfree_osync_x(GPOUT,185)
    assign out_lm12012_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12012_mmul_avm_writedata;

    // dupName_41_regfree_osync_x(GPOUT,186)
    assign out_lm12413_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_address;

    // dupName_42_regfree_osync_x(GPOUT,187)
    assign out_lm12413_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_burstcount;

    // dupName_43_regfree_osync_x(GPOUT,188)
    assign out_lm12413_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_byteenable;

    // dupName_44_regfree_osync_x(GPOUT,189)
    assign out_lm12413_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_enable;

    // dupName_45_regfree_osync_x(GPOUT,190)
    assign out_lm12413_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_read;

    // dupName_46_regfree_osync_x(GPOUT,191)
    assign out_lm12413_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_write;

    // dupName_47_regfree_osync_x(GPOUT,192)
    assign out_lm12413_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12413_mmul_avm_writedata;

    // dupName_48_regfree_osync_x(GPOUT,193)
    assign out_lm12814_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_address;

    // dupName_49_regfree_osync_x(GPOUT,194)
    assign out_lm12814_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_burstcount;

    // dupName_50_regfree_osync_x(GPOUT,195)
    assign out_lm12814_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_byteenable;

    // dupName_51_regfree_osync_x(GPOUT,196)
    assign out_lm12814_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_enable;

    // dupName_52_regfree_osync_x(GPOUT,197)
    assign out_lm12814_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_read;

    // dupName_53_regfree_osync_x(GPOUT,198)
    assign out_lm12814_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_write;

    // dupName_54_regfree_osync_x(GPOUT,199)
    assign out_lm12814_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm12814_mmul_avm_writedata;

    // dupName_55_regfree_osync_x(GPOUT,200)
    assign out_lm13215_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_address;

    // dupName_56_regfree_osync_x(GPOUT,201)
    assign out_lm13215_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_burstcount;

    // dupName_57_regfree_osync_x(GPOUT,202)
    assign out_lm13215_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_byteenable;

    // dupName_58_regfree_osync_x(GPOUT,203)
    assign out_lm13215_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_enable;

    // dupName_59_regfree_osync_x(GPOUT,204)
    assign out_lm13215_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_read;

    // dupName_60_regfree_osync_x(GPOUT,205)
    assign out_lm13215_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_write;

    // dupName_61_regfree_osync_x(GPOUT,206)
    assign out_lm13215_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13215_mmul_avm_writedata;

    // dupName_62_regfree_osync_x(GPOUT,207)
    assign out_lm13616_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_address;

    // dupName_63_regfree_osync_x(GPOUT,208)
    assign out_lm13616_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_burstcount;

    // dupName_64_regfree_osync_x(GPOUT,209)
    assign out_lm13616_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_byteenable;

    // dupName_65_regfree_osync_x(GPOUT,210)
    assign out_lm13616_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_enable;

    // dupName_66_regfree_osync_x(GPOUT,211)
    assign out_lm13616_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_read;

    // dupName_67_regfree_osync_x(GPOUT,212)
    assign out_lm13616_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_write;

    // dupName_68_regfree_osync_x(GPOUT,213)
    assign out_lm13616_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm13616_mmul_avm_writedata;

    // dupName_69_regfree_osync_x(GPOUT,214)
    assign out_lm14017_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_address;

    // dupName_70_regfree_osync_x(GPOUT,215)
    assign out_lm14017_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_burstcount;

    // dupName_71_regfree_osync_x(GPOUT,216)
    assign out_lm14017_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_byteenable;

    // dupName_72_regfree_osync_x(GPOUT,217)
    assign out_lm14017_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_enable;

    // dupName_73_regfree_osync_x(GPOUT,218)
    assign out_lm14017_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_read;

    // dupName_74_regfree_osync_x(GPOUT,219)
    assign out_lm14017_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_write;

    // dupName_75_regfree_osync_x(GPOUT,220)
    assign out_lm14017_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14017_mmul_avm_writedata;

    // dupName_76_regfree_osync_x(GPOUT,221)
    assign out_lm14418_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_address;

    // dupName_77_regfree_osync_x(GPOUT,222)
    assign out_lm14418_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_burstcount;

    // dupName_78_regfree_osync_x(GPOUT,223)
    assign out_lm14418_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_byteenable;

    // dupName_79_regfree_osync_x(GPOUT,224)
    assign out_lm14418_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_enable;

    // dupName_80_regfree_osync_x(GPOUT,225)
    assign out_lm14418_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_read;

    // dupName_81_regfree_osync_x(GPOUT,226)
    assign out_lm14418_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_write;

    // dupName_82_regfree_osync_x(GPOUT,227)
    assign out_lm14418_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14418_mmul_avm_writedata;

    // dupName_83_regfree_osync_x(GPOUT,228)
    assign out_lm14819_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_address;

    // dupName_84_regfree_osync_x(GPOUT,229)
    assign out_lm14819_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_burstcount;

    // dupName_85_regfree_osync_x(GPOUT,230)
    assign out_lm14819_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_byteenable;

    // dupName_86_regfree_osync_x(GPOUT,231)
    assign out_lm14819_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_enable;

    // dupName_87_regfree_osync_x(GPOUT,232)
    assign out_lm14819_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_read;

    // dupName_88_regfree_osync_x(GPOUT,233)
    assign out_lm14819_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_write;

    // dupName_89_regfree_osync_x(GPOUT,234)
    assign out_lm14819_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm14819_mmul_avm_writedata;

    // dupName_90_regfree_osync_x(GPOUT,235)
    assign out_lm15220_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_address;

    // dupName_91_regfree_osync_x(GPOUT,236)
    assign out_lm15220_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_burstcount;

    // dupName_92_regfree_osync_x(GPOUT,237)
    assign out_lm15220_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_byteenable;

    // dupName_93_regfree_osync_x(GPOUT,238)
    assign out_lm15220_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_enable;

    // dupName_94_regfree_osync_x(GPOUT,239)
    assign out_lm15220_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_read;

    // dupName_95_regfree_osync_x(GPOUT,240)
    assign out_lm15220_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_write;

    // dupName_96_regfree_osync_x(GPOUT,241)
    assign out_lm15220_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15220_mmul_avm_writedata;

    // dupName_97_regfree_osync_x(GPOUT,242)
    assign out_lm15621_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_address;

    // dupName_98_regfree_osync_x(GPOUT,243)
    assign out_lm15621_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_burstcount;

    // dupName_99_regfree_osync_x(GPOUT,244)
    assign out_lm15621_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_byteenable;

    // dupName_100_regfree_osync_x(GPOUT,245)
    assign out_lm15621_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_enable;

    // dupName_101_regfree_osync_x(GPOUT,246)
    assign out_lm15621_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_read;

    // dupName_102_regfree_osync_x(GPOUT,247)
    assign out_lm15621_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_write;

    // dupName_103_regfree_osync_x(GPOUT,248)
    assign out_lm15621_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm15621_mmul_avm_writedata;

    // dupName_104_regfree_osync_x(GPOUT,249)
    assign out_lm16022_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_address;

    // dupName_105_regfree_osync_x(GPOUT,250)
    assign out_lm16022_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_burstcount;

    // dupName_106_regfree_osync_x(GPOUT,251)
    assign out_lm16022_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_byteenable;

    // dupName_107_regfree_osync_x(GPOUT,252)
    assign out_lm16022_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_enable;

    // dupName_108_regfree_osync_x(GPOUT,253)
    assign out_lm16022_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_read;

    // dupName_109_regfree_osync_x(GPOUT,254)
    assign out_lm16022_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_write;

    // dupName_110_regfree_osync_x(GPOUT,255)
    assign out_lm16022_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16022_mmul_avm_writedata;

    // dupName_111_regfree_osync_x(GPOUT,256)
    assign out_lm16423_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_address;

    // dupName_112_regfree_osync_x(GPOUT,257)
    assign out_lm16423_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_burstcount;

    // dupName_113_regfree_osync_x(GPOUT,258)
    assign out_lm16423_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_byteenable;

    // dupName_114_regfree_osync_x(GPOUT,259)
    assign out_lm16423_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_enable;

    // dupName_115_regfree_osync_x(GPOUT,260)
    assign out_lm16423_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_read;

    // dupName_116_regfree_osync_x(GPOUT,261)
    assign out_lm16423_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_write;

    // dupName_117_regfree_osync_x(GPOUT,262)
    assign out_lm16423_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16423_mmul_avm_writedata;

    // dupName_118_regfree_osync_x(GPOUT,263)
    assign out_lm16824_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_address;

    // dupName_119_regfree_osync_x(GPOUT,264)
    assign out_lm16824_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_burstcount;

    // dupName_120_regfree_osync_x(GPOUT,265)
    assign out_lm16824_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_byteenable;

    // dupName_121_regfree_osync_x(GPOUT,266)
    assign out_lm16824_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_enable;

    // dupName_122_regfree_osync_x(GPOUT,267)
    assign out_lm16824_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_read;

    // dupName_123_regfree_osync_x(GPOUT,268)
    assign out_lm16824_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_write;

    // dupName_124_regfree_osync_x(GPOUT,269)
    assign out_lm16824_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm16824_mmul_avm_writedata;

    // dupName_125_regfree_osync_x(GPOUT,270)
    assign out_lm17225_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_address;

    // dupName_126_regfree_osync_x(GPOUT,271)
    assign out_lm17225_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_burstcount;

    // dupName_127_regfree_osync_x(GPOUT,272)
    assign out_lm17225_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_byteenable;

    // dupName_128_regfree_osync_x(GPOUT,273)
    assign out_lm17225_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_enable;

    // dupName_129_regfree_osync_x(GPOUT,274)
    assign out_lm17225_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_read;

    // dupName_130_regfree_osync_x(GPOUT,275)
    assign out_lm17225_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_write;

    // dupName_131_regfree_osync_x(GPOUT,276)
    assign out_lm17225_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17225_mmul_avm_writedata;

    // dupName_132_regfree_osync_x(GPOUT,277)
    assign out_lm17626_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_address;

    // dupName_133_regfree_osync_x(GPOUT,278)
    assign out_lm17626_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_burstcount;

    // dupName_134_regfree_osync_x(GPOUT,279)
    assign out_lm17626_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_byteenable;

    // dupName_135_regfree_osync_x(GPOUT,280)
    assign out_lm17626_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_enable;

    // dupName_136_regfree_osync_x(GPOUT,281)
    assign out_lm17626_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_read;

    // dupName_137_regfree_osync_x(GPOUT,282)
    assign out_lm17626_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_write;

    // dupName_138_regfree_osync_x(GPOUT,283)
    assign out_lm17626_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm17626_mmul_avm_writedata;

    // dupName_139_regfree_osync_x(GPOUT,284)
    assign out_lm18027_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_address;

    // dupName_140_regfree_osync_x(GPOUT,285)
    assign out_lm18027_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_burstcount;

    // dupName_141_regfree_osync_x(GPOUT,286)
    assign out_lm18027_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_byteenable;

    // dupName_142_regfree_osync_x(GPOUT,287)
    assign out_lm18027_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_enable;

    // dupName_143_regfree_osync_x(GPOUT,288)
    assign out_lm18027_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_read;

    // dupName_144_regfree_osync_x(GPOUT,289)
    assign out_lm18027_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_write;

    // dupName_145_regfree_osync_x(GPOUT,290)
    assign out_lm18027_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18027_mmul_avm_writedata;

    // dupName_146_regfree_osync_x(GPOUT,291)
    assign out_lm18428_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_address;

    // dupName_147_regfree_osync_x(GPOUT,292)
    assign out_lm18428_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_burstcount;

    // dupName_148_regfree_osync_x(GPOUT,293)
    assign out_lm18428_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_byteenable;

    // dupName_149_regfree_osync_x(GPOUT,294)
    assign out_lm18428_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_enable;

    // dupName_150_regfree_osync_x(GPOUT,295)
    assign out_lm18428_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_read;

    // dupName_151_regfree_osync_x(GPOUT,296)
    assign out_lm18428_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_write;

    // dupName_152_regfree_osync_x(GPOUT,297)
    assign out_lm18428_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18428_mmul_avm_writedata;

    // dupName_153_regfree_osync_x(GPOUT,298)
    assign out_lm18829_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_address;

    // dupName_154_regfree_osync_x(GPOUT,299)
    assign out_lm18829_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_burstcount;

    // dupName_155_regfree_osync_x(GPOUT,300)
    assign out_lm18829_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_byteenable;

    // dupName_156_regfree_osync_x(GPOUT,301)
    assign out_lm18829_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_enable;

    // dupName_157_regfree_osync_x(GPOUT,302)
    assign out_lm18829_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_read;

    // dupName_158_regfree_osync_x(GPOUT,303)
    assign out_lm18829_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_write;

    // dupName_159_regfree_osync_x(GPOUT,304)
    assign out_lm18829_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm18829_mmul_avm_writedata;

    // dupName_160_regfree_osync_x(GPOUT,305)
    assign out_lm19230_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_address;

    // dupName_161_regfree_osync_x(GPOUT,306)
    assign out_lm19230_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_burstcount;

    // dupName_162_regfree_osync_x(GPOUT,307)
    assign out_lm19230_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_byteenable;

    // dupName_163_regfree_osync_x(GPOUT,308)
    assign out_lm19230_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_enable;

    // dupName_164_regfree_osync_x(GPOUT,309)
    assign out_lm19230_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_read;

    // dupName_165_regfree_osync_x(GPOUT,310)
    assign out_lm19230_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_write;

    // dupName_166_regfree_osync_x(GPOUT,311)
    assign out_lm19230_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19230_mmul_avm_writedata;

    // dupName_167_regfree_osync_x(GPOUT,312)
    assign out_lm19631_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_address;

    // dupName_168_regfree_osync_x(GPOUT,313)
    assign out_lm19631_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_burstcount;

    // dupName_169_regfree_osync_x(GPOUT,314)
    assign out_lm19631_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_byteenable;

    // dupName_170_regfree_osync_x(GPOUT,315)
    assign out_lm19631_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_enable;

    // dupName_171_regfree_osync_x(GPOUT,316)
    assign out_lm19631_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_read;

    // dupName_172_regfree_osync_x(GPOUT,317)
    assign out_lm19631_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_write;

    // dupName_173_regfree_osync_x(GPOUT,318)
    assign out_lm19631_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm19631_mmul_avm_writedata;

    // dupName_174_regfree_osync_x(GPOUT,319)
    assign out_lm20032_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_address;

    // dupName_175_regfree_osync_x(GPOUT,320)
    assign out_lm20032_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_burstcount;

    // dupName_176_regfree_osync_x(GPOUT,321)
    assign out_lm20032_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_byteenable;

    // dupName_177_regfree_osync_x(GPOUT,322)
    assign out_lm20032_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_enable;

    // dupName_178_regfree_osync_x(GPOUT,323)
    assign out_lm20032_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_read;

    // dupName_179_regfree_osync_x(GPOUT,324)
    assign out_lm20032_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_write;

    // dupName_180_regfree_osync_x(GPOUT,325)
    assign out_lm20032_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20032_mmul_avm_writedata;

    // dupName_181_regfree_osync_x(GPOUT,326)
    assign out_lm20433_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_address;

    // dupName_182_regfree_osync_x(GPOUT,327)
    assign out_lm20433_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_burstcount;

    // dupName_183_regfree_osync_x(GPOUT,328)
    assign out_lm20433_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_byteenable;

    // dupName_184_regfree_osync_x(GPOUT,329)
    assign out_lm20433_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_enable;

    // dupName_185_regfree_osync_x(GPOUT,330)
    assign out_lm20433_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_read;

    // dupName_186_regfree_osync_x(GPOUT,331)
    assign out_lm20433_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_write;

    // dupName_187_regfree_osync_x(GPOUT,332)
    assign out_lm20433_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm20433_mmul_avm_writedata;

    // dupName_188_regfree_osync_x(GPOUT,333)
    assign out_lm802_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_address;

    // dupName_189_regfree_osync_x(GPOUT,334)
    assign out_lm802_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_burstcount;

    // dupName_190_regfree_osync_x(GPOUT,335)
    assign out_lm802_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_byteenable;

    // dupName_191_regfree_osync_x(GPOUT,336)
    assign out_lm802_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_enable;

    // dupName_192_regfree_osync_x(GPOUT,337)
    assign out_lm802_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_read;

    // dupName_193_regfree_osync_x(GPOUT,338)
    assign out_lm802_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_write;

    // dupName_194_regfree_osync_x(GPOUT,339)
    assign out_lm802_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm802_mmul_avm_writedata;

    // dupName_195_regfree_osync_x(GPOUT,340)
    assign out_lm843_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_address;

    // dupName_196_regfree_osync_x(GPOUT,341)
    assign out_lm843_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_burstcount;

    // dupName_197_regfree_osync_x(GPOUT,342)
    assign out_lm843_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_byteenable;

    // dupName_198_regfree_osync_x(GPOUT,343)
    assign out_lm843_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_enable;

    // dupName_199_regfree_osync_x(GPOUT,344)
    assign out_lm843_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_read;

    // dupName_200_regfree_osync_x(GPOUT,345)
    assign out_lm843_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_write;

    // dupName_201_regfree_osync_x(GPOUT,346)
    assign out_lm843_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm843_mmul_avm_writedata;

    // dupName_202_regfree_osync_x(GPOUT,347)
    assign out_lm884_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_address;

    // dupName_203_regfree_osync_x(GPOUT,348)
    assign out_lm884_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_burstcount;

    // dupName_204_regfree_osync_x(GPOUT,349)
    assign out_lm884_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_byteenable;

    // dupName_205_regfree_osync_x(GPOUT,350)
    assign out_lm884_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_enable;

    // dupName_206_regfree_osync_x(GPOUT,351)
    assign out_lm884_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_read;

    // dupName_207_regfree_osync_x(GPOUT,352)
    assign out_lm884_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_write;

    // dupName_208_regfree_osync_x(GPOUT,353)
    assign out_lm884_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm884_mmul_avm_writedata;

    // dupName_209_regfree_osync_x(GPOUT,354)
    assign out_lm925_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_address;

    // dupName_210_regfree_osync_x(GPOUT,355)
    assign out_lm925_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_burstcount;

    // dupName_211_regfree_osync_x(GPOUT,356)
    assign out_lm925_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_byteenable;

    // dupName_212_regfree_osync_x(GPOUT,357)
    assign out_lm925_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_enable;

    // dupName_213_regfree_osync_x(GPOUT,358)
    assign out_lm925_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_read;

    // dupName_214_regfree_osync_x(GPOUT,359)
    assign out_lm925_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_write;

    // dupName_215_regfree_osync_x(GPOUT,360)
    assign out_lm925_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm925_mmul_avm_writedata;

    // dupName_216_regfree_osync_x(GPOUT,361)
    assign out_lm966_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_address;

    // dupName_217_regfree_osync_x(GPOUT,362)
    assign out_lm966_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_burstcount;

    // dupName_218_regfree_osync_x(GPOUT,363)
    assign out_lm966_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_byteenable;

    // dupName_219_regfree_osync_x(GPOUT,364)
    assign out_lm966_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_enable;

    // dupName_220_regfree_osync_x(GPOUT,365)
    assign out_lm966_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_read;

    // dupName_221_regfree_osync_x(GPOUT,366)
    assign out_lm966_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_write;

    // dupName_222_regfree_osync_x(GPOUT,367)
    assign out_lm966_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_lm966_mmul_avm_writedata;

    // dupName_223_regfree_osync_x(GPOUT,368)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address;

    // dupName_224_regfree_osync_x(GPOUT,369)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount;

    // dupName_225_regfree_osync_x(GPOUT,370)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable;

    // dupName_226_regfree_osync_x(GPOUT,371)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable;

    // dupName_227_regfree_osync_x(GPOUT,372)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read;

    // dupName_228_regfree_osync_x(GPOUT,373)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write;

    // dupName_229_regfree_osync_x(GPOUT,374)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata;

    // dupName_230_regfree_osync_x(GPOUT,375)
    assign out_wgl_0_exit_exit_stall_in = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_0_exit_exit_stall_in;

    // dupName_231_regfree_osync_x(GPOUT,376)
    assign out_wgl_0_exit_exit_valid_in = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_0_exit_exit_valid_in;

    // dupName_232_regfree_osync_x(GPOUT,377)
    assign out_wgl_1_exit_exit_stall_in = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_1_exit_exit_stall_in;

    // dupName_233_regfree_osync_x(GPOUT,378)
    assign out_wgl_1_exit_exit_valid_in = i_sfc_logic_s_c0_in_for_body_mmuls_c0_enter13281_mmul0_aunroll_x_out_wgl_1_exit_exit_valid_in;

    // dupName_0_sync_out_aunroll_x(GPOUT,382)@398
    assign out_c0_exit139_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit139_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit139_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_data_out_2_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body_mmuls_c0_exit139_mmul1_aunroll_x_out_valid_out;

endmodule
