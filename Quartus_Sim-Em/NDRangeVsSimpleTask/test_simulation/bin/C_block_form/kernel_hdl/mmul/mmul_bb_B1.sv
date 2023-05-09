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

// SystemVerilog created from mmul_bb_B1
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B1 (
    input wire [63:0] in_A,
    input wire [31:0] in_Abase_065_0,
    input wire [31:0] in_Abase_065_1,
    input wire [63:0] in_B,
    input wire [31:0] in_Bbase_066_0,
    input wire [31:0] in_Bbase_066_1,
    input wire [63:0] in_C,
    input wire [31:0] in_Ctmp_063_0,
    input wire [31:0] in_Ctmp_063_1,
    input wire [31:0] in_Kblk_064_0,
    input wire [31:0] in_Kblk_064_1,
    input wire [31:0] in_N,
    input wire [63:0] in_acl_global_id_077_0,
    input wire [63:0] in_acl_global_id_077_1,
    input wire [63:0] in_acl_global_id_179_0,
    input wire [63:0] in_acl_global_id_179_1,
    input wire [31:0] in_acl_local_id_080_0,
    input wire [31:0] in_acl_local_id_080_1,
    input wire [31:0] in_barrier_unnamed_mmul3_wgs_workgroup_size,
    input wire [31:0] in_barrier_unnamed_mmul6_wgs_workgroup_size,
    input wire [31:0] in_c0_exe168_0,
    input wire [31:0] in_c0_exe168_1,
    input wire [31:0] in_c0_exe269_0,
    input wire [31:0] in_c0_exe269_1,
    input wire [0:0] in_c0_exe370_0,
    input wire [0:0] in_c0_exe370_1,
    input wire [31:0] in_c0_exe671_0,
    input wire [31:0] in_c0_exe671_1,
    input wire [63:0] in_c0_exe772_0,
    input wire [63:0] in_c0_exe772_1,
    input wire [63:0] in_c0_exe873_0,
    input wire [63:0] in_c0_exe873_1,
    input wire [63:0] in_c0_exe974_0,
    input wire [63:0] in_c0_exe974_1,
    input wire [31:0] in_encoder_mmul_B1_merge_priority_encoder_workgroup_size,
    input wire [0:0] in_flush,
    input wire [31:0] in_lm1007_mmul_avm_readdata,
    input wire [0:0] in_lm1007_mmul_avm_readdatavalid,
    input wire [0:0] in_lm1007_mmul_avm_waitrequest,
    input wire [0:0] in_lm1007_mmul_avm_writeack,
    input wire [31:0] in_lm1048_mmul_avm_readdata,
    input wire [0:0] in_lm1048_mmul_avm_readdatavalid,
    input wire [0:0] in_lm1048_mmul_avm_waitrequest,
    input wire [0:0] in_lm1048_mmul_avm_writeack,
    input wire [31:0] in_lm1089_mmul_avm_readdata,
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
    input wire [31:0] in_lm20433_mmul_avm_readdata,
    input wire [0:0] in_lm20433_mmul_avm_readdatavalid,
    input wire [0:0] in_lm20433_mmul_avm_waitrequest,
    input wire [0:0] in_lm20433_mmul_avm_writeack,
    input wire [511:0] in_lm76_mmul_avm_readdata,
    input wire [0:0] in_lm76_mmul_avm_readdatavalid,
    input wire [0:0] in_lm76_mmul_avm_waitrequest,
    input wire [0:0] in_lm76_mmul_avm_writeack,
    input wire [31:0] in_lm802_mmul_avm_readdata,
    input wire [0:0] in_lm802_mmul_avm_readdatavalid,
    input wire [0:0] in_lm802_mmul_avm_waitrequest,
    input wire [0:0] in_lm802_mmul_avm_writeack,
    input wire [31:0] in_lm843_mmul_avm_readdata,
    input wire [0:0] in_lm843_mmul_avm_readdatavalid,
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
    input wire [31:0] in_lm966_mmul_avm_readdata,
    input wire [0:0] in_lm966_mmul_avm_readdatavalid,
    input wire [0:0] in_lm966_mmul_avm_waitrequest,
    input wire [0:0] in_lm966_mmul_avm_writeack,
    input wire [511:0] in_lm_mmul_avm_readdata,
    input wire [0:0] in_lm_mmul_avm_readdatavalid,
    input wire [0:0] in_lm_mmul_avm_waitrequest,
    input wire [0:0] in_lm_mmul_avm_writeack,
    input wire [1023:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdata,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writeack,
    input wire [1023:0] in_memdep_95_mmul_avm_readdata,
    input wire [0:0] in_memdep_95_mmul_avm_readdatavalid,
    input wire [0:0] in_memdep_95_mmul_avm_waitrequest,
    input wire [0:0] in_memdep_95_mmul_avm_writeack,
    input wire [31:0] in_memdep_mmul_avm_readdata,
    input wire [0:0] in_memdep_mmul_avm_readdatavalid,
    input wire [0:0] in_memdep_mmul_avm_waitrequest,
    input wire [0:0] in_memdep_mmul_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [0:0] in_wgl_0_enter_exit_stall_in,
    input wire [0:0] in_wgl_0_enter_exit_valid_in,
    input wire [0:0] in_wgl_0_exit_exit_stall_out,
    input wire [0:0] in_wgl_0_exit_exit_valid_out,
    input wire [31:0] in_wgl_0_wgs_wg_size,
    input wire [0:0] in_wgl_1_enter_exit_stall_in,
    input wire [0:0] in_wgl_1_enter_exit_valid_in,
    input wire [0:0] in_wgl_1_exit_exit_stall_out,
    input wire [0:0] in_wgl_1_exit_exit_valid_out,
    input wire [31:0] in_wgl_1_wgs_wg_size,
    output wire [63:0] out_acl_global_id_077,
    output wire [63:0] out_acl_global_id_179,
    output wire [31:0] out_acl_local_id_080,
    output wire [31:0] out_add43,
    output wire [31:0] out_add44,
    output wire [31:0] out_c0_exe168,
    output wire [31:0] out_c0_exe2141,
    output wire [31:0] out_c0_exe269,
    output wire [0:0] out_c0_exe370,
    output wire [31:0] out_c0_exe671,
    output wire [63:0] out_c0_exe772,
    output wire [63:0] out_c0_exe873,
    output wire [63:0] out_c0_exe974,
    output wire [31:0] out_inc46,
    output wire [31:0] out_lm1007_mmul_avm_address,
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
    output wire [30:0] out_lm76_mmul_avm_address,
    output wire [4:0] out_lm76_mmul_avm_burstcount,
    output wire [63:0] out_lm76_mmul_avm_byteenable,
    output wire [0:0] out_lm76_mmul_avm_enable,
    output wire [0:0] out_lm76_mmul_avm_read,
    output wire [0:0] out_lm76_mmul_avm_write,
    output wire [511:0] out_lm76_mmul_avm_writedata,
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
    output wire [30:0] out_lm_mmul_avm_address,
    output wire [4:0] out_lm_mmul_avm_burstcount,
    output wire [63:0] out_lm_mmul_avm_byteenable,
    output wire [0:0] out_lm_mmul_avm_enable,
    output wire [0:0] out_lm_mmul_avm_read,
    output wire [0:0] out_lm_mmul_avm_write,
    output wire [511:0] out_lm_mmul_avm_writedata,
    output wire [31:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount,
    output wire [127:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write,
    output wire [1023:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata,
    output wire [31:0] out_memdep_95_mmul_avm_address,
    output wire [0:0] out_memdep_95_mmul_avm_burstcount,
    output wire [127:0] out_memdep_95_mmul_avm_byteenable,
    output wire [0:0] out_memdep_95_mmul_avm_enable,
    output wire [0:0] out_memdep_95_mmul_avm_read,
    output wire [0:0] out_memdep_95_mmul_avm_write,
    output wire [1023:0] out_memdep_95_mmul_avm_writedata,
    output wire [31:0] out_memdep_mmul_avm_address,
    output wire [0:0] out_memdep_mmul_avm_burstcount,
    output wire [3:0] out_memdep_mmul_avm_byteenable,
    output wire [0:0] out_memdep_mmul_avm_enable,
    output wire [0:0] out_memdep_mmul_avm_read,
    output wire [0:0] out_memdep_mmul_avm_write,
    output wire [31:0] out_memdep_mmul_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    output wire [0:0] out_wgl_0_enter_exit_stall_out,
    output wire [0:0] out_wgl_0_enter_exit_valid_out,
    output wire [0:0] out_wgl_0_exit_exit_stall_in,
    output wire [0:0] out_wgl_0_exit_exit_valid_in,
    output wire [0:0] out_wgl_1_enter_exit_stall_out,
    output wire [0:0] out_wgl_1_enter_exit_valid_out,
    output wire [0:0] out_wgl_1_exit_exit_stall_in,
    output wire [0:0] out_wgl_1_exit_exit_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [576:0] aggregateWireOut_join_q;
    wire [63:0] bb_mmul_B1_stall_region_out_acl_global_id_077;
    wire [63:0] bb_mmul_B1_stall_region_out_acl_global_id_179;
    wire [31:0] bb_mmul_B1_stall_region_out_acl_local_id_080;
    wire [31:0] bb_mmul_B1_stall_region_out_add43;
    wire [31:0] bb_mmul_B1_stall_region_out_add44;
    wire [31:0] bb_mmul_B1_stall_region_out_c0_exe168;
    wire [31:0] bb_mmul_B1_stall_region_out_c0_exe2141;
    wire [31:0] bb_mmul_B1_stall_region_out_c0_exe269;
    wire [0:0] bb_mmul_B1_stall_region_out_c0_exe370;
    wire [31:0] bb_mmul_B1_stall_region_out_c0_exe671;
    wire [63:0] bb_mmul_B1_stall_region_out_c0_exe772;
    wire [63:0] bb_mmul_B1_stall_region_out_c0_exe873;
    wire [63:0] bb_mmul_B1_stall_region_out_c0_exe974;
    wire [0:0] bb_mmul_B1_stall_region_out_cmp;
    wire [31:0] bb_mmul_B1_stall_region_out_inc46;
    wire [31:0] bb_mmul_B1_stall_region_out_lm1007_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1007_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm1007_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1007_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1007_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1007_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm1007_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm1048_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1048_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm1048_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1048_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1048_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1048_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm1048_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm1089_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1089_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm1089_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1089_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1089_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm1089_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm1089_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm11210_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm11210_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm11210_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm11210_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm11210_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm11210_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm11210_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm11611_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm11611_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm11611_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm11611_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm11611_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm11611_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm11611_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm12012_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12012_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm12012_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12012_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12012_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12012_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm12012_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm12413_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12413_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm12413_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12413_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12413_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12413_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm12413_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm12814_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12814_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm12814_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12814_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12814_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm12814_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm12814_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm13215_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm13215_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm13215_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm13215_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm13215_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm13215_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm13215_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm13616_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm13616_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm13616_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm13616_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm13616_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm13616_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm13616_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm14017_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14017_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm14017_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14017_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14017_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14017_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm14017_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm14418_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14418_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm14418_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14418_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14418_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14418_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm14418_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm14819_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14819_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm14819_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14819_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14819_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm14819_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm14819_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm15220_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm15220_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm15220_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm15220_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm15220_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm15220_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm15220_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm15621_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm15621_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm15621_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm15621_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm15621_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm15621_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm15621_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm16022_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16022_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm16022_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16022_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16022_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16022_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm16022_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm16423_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16423_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm16423_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16423_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16423_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16423_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm16423_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm16824_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16824_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm16824_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16824_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16824_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm16824_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm16824_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm17225_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm17225_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm17225_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm17225_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm17225_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm17225_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm17225_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm17626_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm17626_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm17626_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm17626_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm17626_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm17626_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm17626_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm18027_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18027_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm18027_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18027_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18027_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18027_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm18027_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm18428_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18428_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm18428_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18428_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18428_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18428_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm18428_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm18829_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18829_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm18829_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18829_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18829_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm18829_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm18829_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm19230_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm19230_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm19230_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm19230_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm19230_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm19230_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm19230_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm19631_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm19631_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm19631_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm19631_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm19631_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm19631_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm19631_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm20032_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm20032_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm20032_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm20032_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm20032_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm20032_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm20032_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm20433_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm20433_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm20433_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm20433_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm20433_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm20433_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm20433_mmul_avm_writedata;
    wire [30:0] bb_mmul_B1_stall_region_out_lm76_mmul_avm_address;
    wire [4:0] bb_mmul_B1_stall_region_out_lm76_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B1_stall_region_out_lm76_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm76_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm76_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm76_mmul_avm_write;
    wire [511:0] bb_mmul_B1_stall_region_out_lm76_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm802_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm802_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm802_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm802_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm802_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm802_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm802_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm843_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm843_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm843_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm843_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm843_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm843_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm843_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm884_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm884_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm884_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm884_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm884_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm884_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm884_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm925_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm925_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm925_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm925_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm925_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm925_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm925_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_lm966_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_lm966_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_lm966_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm966_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm966_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm966_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_lm966_mmul_avm_writedata;
    wire [30:0] bb_mmul_B1_stall_region_out_lm_mmul_avm_address;
    wire [4:0] bb_mmul_B1_stall_region_out_lm_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B1_stall_region_out_lm_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_lm_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_lm_mmul_avm_write;
    wire [511:0] bb_mmul_B1_stall_region_out_lm_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount;
    wire [127:0] bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write;
    wire [1023:0] bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_burstcount;
    wire [127:0] bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_write;
    wire [1023:0] bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_stall_region_out_memdep_mmul_avm_address;
    wire [0:0] bb_mmul_B1_stall_region_out_memdep_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_stall_region_out_memdep_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_stall_region_out_memdep_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_stall_region_out_memdep_mmul_avm_read;
    wire [0:0] bb_mmul_B1_stall_region_out_memdep_mmul_avm_write;
    wire [31:0] bb_mmul_B1_stall_region_out_memdep_mmul_avm_writedata;
    wire [0:0] bb_mmul_B1_stall_region_out_stall_out;
    wire [0:0] bb_mmul_B1_stall_region_out_valid_out;
    wire [0:0] bb_mmul_B1_stall_region_out_wgl_0_enter_exit_stall_out;
    wire [0:0] bb_mmul_B1_stall_region_out_wgl_0_enter_exit_valid_out;
    wire [0:0] bb_mmul_B1_stall_region_out_wgl_0_exit_exit_stall_in;
    wire [0:0] bb_mmul_B1_stall_region_out_wgl_0_exit_exit_valid_in;
    wire [0:0] bb_mmul_B1_stall_region_out_wgl_1_enter_exit_stall_out;
    wire [0:0] bb_mmul_B1_stall_region_out_wgl_1_enter_exit_valid_out;
    wire [0:0] bb_mmul_B1_stall_region_out_wgl_1_exit_exit_stall_in;
    wire [0:0] bb_mmul_B1_stall_region_out_wgl_1_exit_exit_valid_in;
    wire [31:0] data_out_select_b;
    wire [576:0] loop_capacity_FIFO_out_data_out;
    wire [0:0] loop_capacity_FIFO_out_stall_out;
    wire [0:0] loop_capacity_FIFO_out_valid_out;
    wire [63:0] mmul_B1_branch_out_acl_global_id_077;
    wire [63:0] mmul_B1_branch_out_acl_global_id_179;
    wire [31:0] mmul_B1_branch_out_acl_local_id_080;
    wire [31:0] mmul_B1_branch_out_add43;
    wire [31:0] mmul_B1_branch_out_add44;
    wire [31:0] mmul_B1_branch_out_c0_exe168;
    wire [31:0] mmul_B1_branch_out_c0_exe2141;
    wire [31:0] mmul_B1_branch_out_c0_exe269;
    wire [0:0] mmul_B1_branch_out_c0_exe370;
    wire [31:0] mmul_B1_branch_out_c0_exe671;
    wire [63:0] mmul_B1_branch_out_c0_exe772;
    wire [63:0] mmul_B1_branch_out_c0_exe873;
    wire [63:0] mmul_B1_branch_out_c0_exe974;
    wire [31:0] mmul_B1_branch_out_inc46;
    wire [0:0] mmul_B1_branch_out_stall_out;
    wire [0:0] mmul_B1_branch_out_valid_out_0;
    wire [0:0] mmul_B1_branch_out_valid_out_1;
    wire [31:0] mmul_B1_merge_out_Abase_065;
    wire [31:0] mmul_B1_merge_out_Bbase_066;
    wire [31:0] mmul_B1_merge_out_Ctmp_063;
    wire [31:0] mmul_B1_merge_out_Kblk_064;
    wire [63:0] mmul_B1_merge_out_acl_global_id_077;
    wire [63:0] mmul_B1_merge_out_acl_global_id_179;
    wire [31:0] mmul_B1_merge_out_acl_local_id_080;
    wire [31:0] mmul_B1_merge_out_c0_exe168;
    wire [31:0] mmul_B1_merge_out_c0_exe269;
    wire [0:0] mmul_B1_merge_out_c0_exe370;
    wire [31:0] mmul_B1_merge_out_c0_exe671;
    wire [63:0] mmul_B1_merge_out_c0_exe772;
    wire [63:0] mmul_B1_merge_out_c0_exe873;
    wire [63:0] mmul_B1_merge_out_c0_exe974;
    wire [0:0] mmul_B1_merge_out_stall_out_0;
    wire [0:0] mmul_B1_merge_out_stall_out_1;
    wire [0:0] mmul_B1_merge_out_valid_out;
    wire [31:0] dupName_0_data_out_select_x_b;
    wire [31:0] dupName_1_data_out_select_x_b;
    wire [31:0] dupName_2_data_out_select_x_b;
    wire [63:0] dupName_3_data_out_select_x_b;
    wire [63:0] dupName_4_data_out_select_x_b;
    wire [31:0] dupName_5_data_out_select_x_b;
    wire [31:0] dupName_6_data_out_select_x_b;
    wire [31:0] dupName_7_data_out_select_x_b;
    wire [0:0] dupName_8_data_out_select_x_b;
    wire [31:0] dupName_9_data_out_select_x_b;
    wire [63:0] dupName_10_data_out_select_x_b;
    wire [63:0] dupName_11_data_out_select_x_b;
    wire [63:0] dupName_12_data_out_select_x_b;


    // mmul_B1_merge(BLACKBOX,219)
    mmul_B1_merge themmul_B1_merge (
        .in_Abase_065_0(in_Abase_065_0),
        .in_Abase_065_1(in_Abase_065_1),
        .in_Bbase_066_0(in_Bbase_066_0),
        .in_Bbase_066_1(in_Bbase_066_1),
        .in_Ctmp_063_0(in_Ctmp_063_0),
        .in_Ctmp_063_1(in_Ctmp_063_1),
        .in_Kblk_064_0(in_Kblk_064_0),
        .in_Kblk_064_1(in_Kblk_064_1),
        .in_acl_global_id_077_0(in_acl_global_id_077_0),
        .in_acl_global_id_077_1(in_acl_global_id_077_1),
        .in_acl_global_id_179_0(in_acl_global_id_179_0),
        .in_acl_global_id_179_1(in_acl_global_id_179_1),
        .in_acl_local_id_080_0(in_acl_local_id_080_0),
        .in_acl_local_id_080_1(in_acl_local_id_080_1),
        .in_c0_exe168_0(in_c0_exe168_0),
        .in_c0_exe168_1(in_c0_exe168_1),
        .in_c0_exe269_0(in_c0_exe269_0),
        .in_c0_exe269_1(in_c0_exe269_1),
        .in_c0_exe370_0(in_c0_exe370_0),
        .in_c0_exe370_1(in_c0_exe370_1),
        .in_c0_exe671_0(in_c0_exe671_0),
        .in_c0_exe671_1(in_c0_exe671_1),
        .in_c0_exe772_0(in_c0_exe772_0),
        .in_c0_exe772_1(in_c0_exe772_1),
        .in_c0_exe873_0(in_c0_exe873_0),
        .in_c0_exe873_1(in_c0_exe873_1),
        .in_c0_exe974_0(in_c0_exe974_0),
        .in_c0_exe974_1(in_c0_exe974_1),
        .in_encoder_mmul_B1_merge_priority_encoder_workgroup_size(in_encoder_mmul_B1_merge_priority_encoder_workgroup_size),
        .in_stall_in(loop_capacity_FIFO_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_Abase_065(mmul_B1_merge_out_Abase_065),
        .out_Bbase_066(mmul_B1_merge_out_Bbase_066),
        .out_Ctmp_063(mmul_B1_merge_out_Ctmp_063),
        .out_Kblk_064(mmul_B1_merge_out_Kblk_064),
        .out_acl_global_id_077(mmul_B1_merge_out_acl_global_id_077),
        .out_acl_global_id_179(mmul_B1_merge_out_acl_global_id_179),
        .out_acl_local_id_080(mmul_B1_merge_out_acl_local_id_080),
        .out_c0_exe168(mmul_B1_merge_out_c0_exe168),
        .out_c0_exe269(mmul_B1_merge_out_c0_exe269),
        .out_c0_exe370(mmul_B1_merge_out_c0_exe370),
        .out_c0_exe671(mmul_B1_merge_out_c0_exe671),
        .out_c0_exe772(mmul_B1_merge_out_c0_exe772),
        .out_c0_exe873(mmul_B1_merge_out_c0_exe873),
        .out_c0_exe974(mmul_B1_merge_out_c0_exe974),
        .out_stall_out_0(mmul_B1_merge_out_stall_out_0),
        .out_stall_out_1(mmul_B1_merge_out_stall_out_1),
        .out_valid_out(mmul_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // aggregateWireOut_join(BITJOIN,16)
    assign aggregateWireOut_join_q = {mmul_B1_merge_out_c0_exe974, mmul_B1_merge_out_c0_exe873, mmul_B1_merge_out_c0_exe772, mmul_B1_merge_out_c0_exe671, mmul_B1_merge_out_c0_exe370, mmul_B1_merge_out_c0_exe269, mmul_B1_merge_out_c0_exe168, mmul_B1_merge_out_acl_local_id_080, mmul_B1_merge_out_acl_global_id_179, mmul_B1_merge_out_acl_global_id_077, mmul_B1_merge_out_Kblk_064, mmul_B1_merge_out_Ctmp_063, mmul_B1_merge_out_Bbase_066, mmul_B1_merge_out_Abase_065};

    // loop_capacity_FIFO(BLACKBOX,217)
    mmul_loop_capacity_FIFO theloop_capacity_FIFO (
        .in_data_in(aggregateWireOut_join_q),
        .in_stall_in(bb_mmul_B1_stall_region_out_stall_out),
        .in_valid_in(mmul_B1_merge_out_valid_out),
        .out_almost_full(),
        .out_data_out(loop_capacity_FIFO_out_data_out),
        .out_stall_out(loop_capacity_FIFO_out_stall_out),
        .out_valid_out(loop_capacity_FIFO_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_data_out_select_x(BITSELECT,521)
    assign dupName_12_data_out_select_x_b = loop_capacity_FIFO_out_data_out[576:513];

    // dupName_11_data_out_select_x(BITSELECT,520)
    assign dupName_11_data_out_select_x_b = loop_capacity_FIFO_out_data_out[512:449];

    // dupName_10_data_out_select_x(BITSELECT,519)
    assign dupName_10_data_out_select_x_b = loop_capacity_FIFO_out_data_out[448:385];

    // dupName_9_data_out_select_x(BITSELECT,518)
    assign dupName_9_data_out_select_x_b = loop_capacity_FIFO_out_data_out[384:353];

    // dupName_8_data_out_select_x(BITSELECT,517)
    assign dupName_8_data_out_select_x_b = loop_capacity_FIFO_out_data_out[352:352];

    // dupName_7_data_out_select_x(BITSELECT,516)
    assign dupName_7_data_out_select_x_b = loop_capacity_FIFO_out_data_out[351:320];

    // dupName_6_data_out_select_x(BITSELECT,515)
    assign dupName_6_data_out_select_x_b = loop_capacity_FIFO_out_data_out[319:288];

    // dupName_5_data_out_select_x(BITSELECT,514)
    assign dupName_5_data_out_select_x_b = loop_capacity_FIFO_out_data_out[287:256];

    // dupName_4_data_out_select_x(BITSELECT,513)
    assign dupName_4_data_out_select_x_b = loop_capacity_FIFO_out_data_out[255:192];

    // dupName_3_data_out_select_x(BITSELECT,512)
    assign dupName_3_data_out_select_x_b = loop_capacity_FIFO_out_data_out[191:128];

    // dupName_2_data_out_select_x(BITSELECT,511)
    assign dupName_2_data_out_select_x_b = loop_capacity_FIFO_out_data_out[127:96];

    // dupName_1_data_out_select_x(BITSELECT,510)
    assign dupName_1_data_out_select_x_b = loop_capacity_FIFO_out_data_out[95:64];

    // dupName_0_data_out_select_x(BITSELECT,509)
    assign dupName_0_data_out_select_x_b = loop_capacity_FIFO_out_data_out[63:32];

    // data_out_select(BITSELECT,18)
    assign data_out_select_b = loop_capacity_FIFO_out_data_out[31:0];

    // bb_mmul_B1_stall_region(BLACKBOX,17)
    mmul_bb_B1_stall_region thebb_mmul_B1_stall_region (
        .in_A(in_A),
        .in_Abase_065(data_out_select_b),
        .in_B(in_B),
        .in_Bbase_066(dupName_0_data_out_select_x_b),
        .in_Ctmp_063(dupName_1_data_out_select_x_b),
        .in_Kblk_064(dupName_2_data_out_select_x_b),
        .in_acl_global_id_077(dupName_3_data_out_select_x_b),
        .in_acl_global_id_179(dupName_4_data_out_select_x_b),
        .in_acl_local_id_080(dupName_5_data_out_select_x_b),
        .in_barrier_unnamed_mmul3_wgs_workgroup_size(in_barrier_unnamed_mmul3_wgs_workgroup_size),
        .in_barrier_unnamed_mmul6_wgs_workgroup_size(in_barrier_unnamed_mmul6_wgs_workgroup_size),
        .in_c0_exe168(dupName_6_data_out_select_x_b),
        .in_c0_exe269(dupName_7_data_out_select_x_b),
        .in_c0_exe370(dupName_8_data_out_select_x_b),
        .in_c0_exe671(dupName_9_data_out_select_x_b),
        .in_c0_exe772(dupName_10_data_out_select_x_b),
        .in_c0_exe873(dupName_11_data_out_select_x_b),
        .in_c0_exe974(dupName_12_data_out_select_x_b),
        .in_flush(in_flush),
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
        .in_lm76_mmul_avm_readdata(in_lm76_mmul_avm_readdata),
        .in_lm76_mmul_avm_readdatavalid(in_lm76_mmul_avm_readdatavalid),
        .in_lm76_mmul_avm_waitrequest(in_lm76_mmul_avm_waitrequest),
        .in_lm76_mmul_avm_writeack(in_lm76_mmul_avm_writeack),
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
        .in_lm_mmul_avm_readdata(in_lm_mmul_avm_readdata),
        .in_lm_mmul_avm_readdatavalid(in_lm_mmul_avm_readdatavalid),
        .in_lm_mmul_avm_waitrequest(in_lm_mmul_avm_waitrequest),
        .in_lm_mmul_avm_writeack(in_lm_mmul_avm_writeack),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdata(in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdata),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdatavalid(in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdatavalid),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_waitrequest(in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_waitrequest),
        .in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writeack(in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writeack),
        .in_memdep_95_mmul_avm_readdata(in_memdep_95_mmul_avm_readdata),
        .in_memdep_95_mmul_avm_readdatavalid(in_memdep_95_mmul_avm_readdatavalid),
        .in_memdep_95_mmul_avm_waitrequest(in_memdep_95_mmul_avm_waitrequest),
        .in_memdep_95_mmul_avm_writeack(in_memdep_95_mmul_avm_writeack),
        .in_memdep_mmul_avm_readdata(in_memdep_mmul_avm_readdata),
        .in_memdep_mmul_avm_readdatavalid(in_memdep_mmul_avm_readdatavalid),
        .in_memdep_mmul_avm_waitrequest(in_memdep_mmul_avm_waitrequest),
        .in_memdep_mmul_avm_writeack(in_memdep_mmul_avm_writeack),
        .in_stall_in(mmul_B1_branch_out_stall_out),
        .in_valid_in(loop_capacity_FIFO_out_valid_out),
        .in_wgl_0_enter_exit_stall_in(in_wgl_0_enter_exit_stall_in),
        .in_wgl_0_enter_exit_valid_in(in_wgl_0_enter_exit_valid_in),
        .in_wgl_0_exit_exit_stall_out(in_wgl_0_exit_exit_stall_out),
        .in_wgl_0_exit_exit_valid_out(in_wgl_0_exit_exit_valid_out),
        .in_wgl_0_wgs_wg_size(in_wgl_0_wgs_wg_size),
        .in_wgl_1_enter_exit_stall_in(in_wgl_1_enter_exit_stall_in),
        .in_wgl_1_enter_exit_valid_in(in_wgl_1_enter_exit_valid_in),
        .in_wgl_1_exit_exit_stall_out(in_wgl_1_exit_exit_stall_out),
        .in_wgl_1_exit_exit_valid_out(in_wgl_1_exit_exit_valid_out),
        .in_wgl_1_wgs_wg_size(in_wgl_1_wgs_wg_size),
        .out_acl_global_id_077(bb_mmul_B1_stall_region_out_acl_global_id_077),
        .out_acl_global_id_179(bb_mmul_B1_stall_region_out_acl_global_id_179),
        .out_acl_local_id_080(bb_mmul_B1_stall_region_out_acl_local_id_080),
        .out_add43(bb_mmul_B1_stall_region_out_add43),
        .out_add44(bb_mmul_B1_stall_region_out_add44),
        .out_c0_exe168(bb_mmul_B1_stall_region_out_c0_exe168),
        .out_c0_exe2141(bb_mmul_B1_stall_region_out_c0_exe2141),
        .out_c0_exe269(bb_mmul_B1_stall_region_out_c0_exe269),
        .out_c0_exe370(bb_mmul_B1_stall_region_out_c0_exe370),
        .out_c0_exe671(bb_mmul_B1_stall_region_out_c0_exe671),
        .out_c0_exe772(bb_mmul_B1_stall_region_out_c0_exe772),
        .out_c0_exe873(bb_mmul_B1_stall_region_out_c0_exe873),
        .out_c0_exe974(bb_mmul_B1_stall_region_out_c0_exe974),
        .out_cmp(bb_mmul_B1_stall_region_out_cmp),
        .out_inc46(bb_mmul_B1_stall_region_out_inc46),
        .out_lm1007_mmul_avm_address(bb_mmul_B1_stall_region_out_lm1007_mmul_avm_address),
        .out_lm1007_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm1007_mmul_avm_burstcount),
        .out_lm1007_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm1007_mmul_avm_byteenable),
        .out_lm1007_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm1007_mmul_avm_enable),
        .out_lm1007_mmul_avm_read(bb_mmul_B1_stall_region_out_lm1007_mmul_avm_read),
        .out_lm1007_mmul_avm_write(bb_mmul_B1_stall_region_out_lm1007_mmul_avm_write),
        .out_lm1007_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm1007_mmul_avm_writedata),
        .out_lm1048_mmul_avm_address(bb_mmul_B1_stall_region_out_lm1048_mmul_avm_address),
        .out_lm1048_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm1048_mmul_avm_burstcount),
        .out_lm1048_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm1048_mmul_avm_byteenable),
        .out_lm1048_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm1048_mmul_avm_enable),
        .out_lm1048_mmul_avm_read(bb_mmul_B1_stall_region_out_lm1048_mmul_avm_read),
        .out_lm1048_mmul_avm_write(bb_mmul_B1_stall_region_out_lm1048_mmul_avm_write),
        .out_lm1048_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm1048_mmul_avm_writedata),
        .out_lm1089_mmul_avm_address(bb_mmul_B1_stall_region_out_lm1089_mmul_avm_address),
        .out_lm1089_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm1089_mmul_avm_burstcount),
        .out_lm1089_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm1089_mmul_avm_byteenable),
        .out_lm1089_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm1089_mmul_avm_enable),
        .out_lm1089_mmul_avm_read(bb_mmul_B1_stall_region_out_lm1089_mmul_avm_read),
        .out_lm1089_mmul_avm_write(bb_mmul_B1_stall_region_out_lm1089_mmul_avm_write),
        .out_lm1089_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm1089_mmul_avm_writedata),
        .out_lm11210_mmul_avm_address(bb_mmul_B1_stall_region_out_lm11210_mmul_avm_address),
        .out_lm11210_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm11210_mmul_avm_burstcount),
        .out_lm11210_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm11210_mmul_avm_byteenable),
        .out_lm11210_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm11210_mmul_avm_enable),
        .out_lm11210_mmul_avm_read(bb_mmul_B1_stall_region_out_lm11210_mmul_avm_read),
        .out_lm11210_mmul_avm_write(bb_mmul_B1_stall_region_out_lm11210_mmul_avm_write),
        .out_lm11210_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm11210_mmul_avm_writedata),
        .out_lm11611_mmul_avm_address(bb_mmul_B1_stall_region_out_lm11611_mmul_avm_address),
        .out_lm11611_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm11611_mmul_avm_burstcount),
        .out_lm11611_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm11611_mmul_avm_byteenable),
        .out_lm11611_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm11611_mmul_avm_enable),
        .out_lm11611_mmul_avm_read(bb_mmul_B1_stall_region_out_lm11611_mmul_avm_read),
        .out_lm11611_mmul_avm_write(bb_mmul_B1_stall_region_out_lm11611_mmul_avm_write),
        .out_lm11611_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm11611_mmul_avm_writedata),
        .out_lm12012_mmul_avm_address(bb_mmul_B1_stall_region_out_lm12012_mmul_avm_address),
        .out_lm12012_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm12012_mmul_avm_burstcount),
        .out_lm12012_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm12012_mmul_avm_byteenable),
        .out_lm12012_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm12012_mmul_avm_enable),
        .out_lm12012_mmul_avm_read(bb_mmul_B1_stall_region_out_lm12012_mmul_avm_read),
        .out_lm12012_mmul_avm_write(bb_mmul_B1_stall_region_out_lm12012_mmul_avm_write),
        .out_lm12012_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm12012_mmul_avm_writedata),
        .out_lm12413_mmul_avm_address(bb_mmul_B1_stall_region_out_lm12413_mmul_avm_address),
        .out_lm12413_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm12413_mmul_avm_burstcount),
        .out_lm12413_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm12413_mmul_avm_byteenable),
        .out_lm12413_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm12413_mmul_avm_enable),
        .out_lm12413_mmul_avm_read(bb_mmul_B1_stall_region_out_lm12413_mmul_avm_read),
        .out_lm12413_mmul_avm_write(bb_mmul_B1_stall_region_out_lm12413_mmul_avm_write),
        .out_lm12413_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm12413_mmul_avm_writedata),
        .out_lm12814_mmul_avm_address(bb_mmul_B1_stall_region_out_lm12814_mmul_avm_address),
        .out_lm12814_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm12814_mmul_avm_burstcount),
        .out_lm12814_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm12814_mmul_avm_byteenable),
        .out_lm12814_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm12814_mmul_avm_enable),
        .out_lm12814_mmul_avm_read(bb_mmul_B1_stall_region_out_lm12814_mmul_avm_read),
        .out_lm12814_mmul_avm_write(bb_mmul_B1_stall_region_out_lm12814_mmul_avm_write),
        .out_lm12814_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm12814_mmul_avm_writedata),
        .out_lm13215_mmul_avm_address(bb_mmul_B1_stall_region_out_lm13215_mmul_avm_address),
        .out_lm13215_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm13215_mmul_avm_burstcount),
        .out_lm13215_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm13215_mmul_avm_byteenable),
        .out_lm13215_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm13215_mmul_avm_enable),
        .out_lm13215_mmul_avm_read(bb_mmul_B1_stall_region_out_lm13215_mmul_avm_read),
        .out_lm13215_mmul_avm_write(bb_mmul_B1_stall_region_out_lm13215_mmul_avm_write),
        .out_lm13215_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm13215_mmul_avm_writedata),
        .out_lm13616_mmul_avm_address(bb_mmul_B1_stall_region_out_lm13616_mmul_avm_address),
        .out_lm13616_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm13616_mmul_avm_burstcount),
        .out_lm13616_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm13616_mmul_avm_byteenable),
        .out_lm13616_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm13616_mmul_avm_enable),
        .out_lm13616_mmul_avm_read(bb_mmul_B1_stall_region_out_lm13616_mmul_avm_read),
        .out_lm13616_mmul_avm_write(bb_mmul_B1_stall_region_out_lm13616_mmul_avm_write),
        .out_lm13616_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm13616_mmul_avm_writedata),
        .out_lm14017_mmul_avm_address(bb_mmul_B1_stall_region_out_lm14017_mmul_avm_address),
        .out_lm14017_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm14017_mmul_avm_burstcount),
        .out_lm14017_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm14017_mmul_avm_byteenable),
        .out_lm14017_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm14017_mmul_avm_enable),
        .out_lm14017_mmul_avm_read(bb_mmul_B1_stall_region_out_lm14017_mmul_avm_read),
        .out_lm14017_mmul_avm_write(bb_mmul_B1_stall_region_out_lm14017_mmul_avm_write),
        .out_lm14017_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm14017_mmul_avm_writedata),
        .out_lm14418_mmul_avm_address(bb_mmul_B1_stall_region_out_lm14418_mmul_avm_address),
        .out_lm14418_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm14418_mmul_avm_burstcount),
        .out_lm14418_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm14418_mmul_avm_byteenable),
        .out_lm14418_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm14418_mmul_avm_enable),
        .out_lm14418_mmul_avm_read(bb_mmul_B1_stall_region_out_lm14418_mmul_avm_read),
        .out_lm14418_mmul_avm_write(bb_mmul_B1_stall_region_out_lm14418_mmul_avm_write),
        .out_lm14418_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm14418_mmul_avm_writedata),
        .out_lm14819_mmul_avm_address(bb_mmul_B1_stall_region_out_lm14819_mmul_avm_address),
        .out_lm14819_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm14819_mmul_avm_burstcount),
        .out_lm14819_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm14819_mmul_avm_byteenable),
        .out_lm14819_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm14819_mmul_avm_enable),
        .out_lm14819_mmul_avm_read(bb_mmul_B1_stall_region_out_lm14819_mmul_avm_read),
        .out_lm14819_mmul_avm_write(bb_mmul_B1_stall_region_out_lm14819_mmul_avm_write),
        .out_lm14819_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm14819_mmul_avm_writedata),
        .out_lm15220_mmul_avm_address(bb_mmul_B1_stall_region_out_lm15220_mmul_avm_address),
        .out_lm15220_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm15220_mmul_avm_burstcount),
        .out_lm15220_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm15220_mmul_avm_byteenable),
        .out_lm15220_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm15220_mmul_avm_enable),
        .out_lm15220_mmul_avm_read(bb_mmul_B1_stall_region_out_lm15220_mmul_avm_read),
        .out_lm15220_mmul_avm_write(bb_mmul_B1_stall_region_out_lm15220_mmul_avm_write),
        .out_lm15220_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm15220_mmul_avm_writedata),
        .out_lm15621_mmul_avm_address(bb_mmul_B1_stall_region_out_lm15621_mmul_avm_address),
        .out_lm15621_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm15621_mmul_avm_burstcount),
        .out_lm15621_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm15621_mmul_avm_byteenable),
        .out_lm15621_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm15621_mmul_avm_enable),
        .out_lm15621_mmul_avm_read(bb_mmul_B1_stall_region_out_lm15621_mmul_avm_read),
        .out_lm15621_mmul_avm_write(bb_mmul_B1_stall_region_out_lm15621_mmul_avm_write),
        .out_lm15621_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm15621_mmul_avm_writedata),
        .out_lm16022_mmul_avm_address(bb_mmul_B1_stall_region_out_lm16022_mmul_avm_address),
        .out_lm16022_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm16022_mmul_avm_burstcount),
        .out_lm16022_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm16022_mmul_avm_byteenable),
        .out_lm16022_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm16022_mmul_avm_enable),
        .out_lm16022_mmul_avm_read(bb_mmul_B1_stall_region_out_lm16022_mmul_avm_read),
        .out_lm16022_mmul_avm_write(bb_mmul_B1_stall_region_out_lm16022_mmul_avm_write),
        .out_lm16022_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm16022_mmul_avm_writedata),
        .out_lm16423_mmul_avm_address(bb_mmul_B1_stall_region_out_lm16423_mmul_avm_address),
        .out_lm16423_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm16423_mmul_avm_burstcount),
        .out_lm16423_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm16423_mmul_avm_byteenable),
        .out_lm16423_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm16423_mmul_avm_enable),
        .out_lm16423_mmul_avm_read(bb_mmul_B1_stall_region_out_lm16423_mmul_avm_read),
        .out_lm16423_mmul_avm_write(bb_mmul_B1_stall_region_out_lm16423_mmul_avm_write),
        .out_lm16423_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm16423_mmul_avm_writedata),
        .out_lm16824_mmul_avm_address(bb_mmul_B1_stall_region_out_lm16824_mmul_avm_address),
        .out_lm16824_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm16824_mmul_avm_burstcount),
        .out_lm16824_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm16824_mmul_avm_byteenable),
        .out_lm16824_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm16824_mmul_avm_enable),
        .out_lm16824_mmul_avm_read(bb_mmul_B1_stall_region_out_lm16824_mmul_avm_read),
        .out_lm16824_mmul_avm_write(bb_mmul_B1_stall_region_out_lm16824_mmul_avm_write),
        .out_lm16824_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm16824_mmul_avm_writedata),
        .out_lm17225_mmul_avm_address(bb_mmul_B1_stall_region_out_lm17225_mmul_avm_address),
        .out_lm17225_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm17225_mmul_avm_burstcount),
        .out_lm17225_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm17225_mmul_avm_byteenable),
        .out_lm17225_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm17225_mmul_avm_enable),
        .out_lm17225_mmul_avm_read(bb_mmul_B1_stall_region_out_lm17225_mmul_avm_read),
        .out_lm17225_mmul_avm_write(bb_mmul_B1_stall_region_out_lm17225_mmul_avm_write),
        .out_lm17225_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm17225_mmul_avm_writedata),
        .out_lm17626_mmul_avm_address(bb_mmul_B1_stall_region_out_lm17626_mmul_avm_address),
        .out_lm17626_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm17626_mmul_avm_burstcount),
        .out_lm17626_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm17626_mmul_avm_byteenable),
        .out_lm17626_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm17626_mmul_avm_enable),
        .out_lm17626_mmul_avm_read(bb_mmul_B1_stall_region_out_lm17626_mmul_avm_read),
        .out_lm17626_mmul_avm_write(bb_mmul_B1_stall_region_out_lm17626_mmul_avm_write),
        .out_lm17626_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm17626_mmul_avm_writedata),
        .out_lm18027_mmul_avm_address(bb_mmul_B1_stall_region_out_lm18027_mmul_avm_address),
        .out_lm18027_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm18027_mmul_avm_burstcount),
        .out_lm18027_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm18027_mmul_avm_byteenable),
        .out_lm18027_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm18027_mmul_avm_enable),
        .out_lm18027_mmul_avm_read(bb_mmul_B1_stall_region_out_lm18027_mmul_avm_read),
        .out_lm18027_mmul_avm_write(bb_mmul_B1_stall_region_out_lm18027_mmul_avm_write),
        .out_lm18027_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm18027_mmul_avm_writedata),
        .out_lm18428_mmul_avm_address(bb_mmul_B1_stall_region_out_lm18428_mmul_avm_address),
        .out_lm18428_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm18428_mmul_avm_burstcount),
        .out_lm18428_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm18428_mmul_avm_byteenable),
        .out_lm18428_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm18428_mmul_avm_enable),
        .out_lm18428_mmul_avm_read(bb_mmul_B1_stall_region_out_lm18428_mmul_avm_read),
        .out_lm18428_mmul_avm_write(bb_mmul_B1_stall_region_out_lm18428_mmul_avm_write),
        .out_lm18428_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm18428_mmul_avm_writedata),
        .out_lm18829_mmul_avm_address(bb_mmul_B1_stall_region_out_lm18829_mmul_avm_address),
        .out_lm18829_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm18829_mmul_avm_burstcount),
        .out_lm18829_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm18829_mmul_avm_byteenable),
        .out_lm18829_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm18829_mmul_avm_enable),
        .out_lm18829_mmul_avm_read(bb_mmul_B1_stall_region_out_lm18829_mmul_avm_read),
        .out_lm18829_mmul_avm_write(bb_mmul_B1_stall_region_out_lm18829_mmul_avm_write),
        .out_lm18829_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm18829_mmul_avm_writedata),
        .out_lm19230_mmul_avm_address(bb_mmul_B1_stall_region_out_lm19230_mmul_avm_address),
        .out_lm19230_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm19230_mmul_avm_burstcount),
        .out_lm19230_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm19230_mmul_avm_byteenable),
        .out_lm19230_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm19230_mmul_avm_enable),
        .out_lm19230_mmul_avm_read(bb_mmul_B1_stall_region_out_lm19230_mmul_avm_read),
        .out_lm19230_mmul_avm_write(bb_mmul_B1_stall_region_out_lm19230_mmul_avm_write),
        .out_lm19230_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm19230_mmul_avm_writedata),
        .out_lm19631_mmul_avm_address(bb_mmul_B1_stall_region_out_lm19631_mmul_avm_address),
        .out_lm19631_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm19631_mmul_avm_burstcount),
        .out_lm19631_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm19631_mmul_avm_byteenable),
        .out_lm19631_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm19631_mmul_avm_enable),
        .out_lm19631_mmul_avm_read(bb_mmul_B1_stall_region_out_lm19631_mmul_avm_read),
        .out_lm19631_mmul_avm_write(bb_mmul_B1_stall_region_out_lm19631_mmul_avm_write),
        .out_lm19631_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm19631_mmul_avm_writedata),
        .out_lm20032_mmul_avm_address(bb_mmul_B1_stall_region_out_lm20032_mmul_avm_address),
        .out_lm20032_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm20032_mmul_avm_burstcount),
        .out_lm20032_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm20032_mmul_avm_byteenable),
        .out_lm20032_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm20032_mmul_avm_enable),
        .out_lm20032_mmul_avm_read(bb_mmul_B1_stall_region_out_lm20032_mmul_avm_read),
        .out_lm20032_mmul_avm_write(bb_mmul_B1_stall_region_out_lm20032_mmul_avm_write),
        .out_lm20032_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm20032_mmul_avm_writedata),
        .out_lm20433_mmul_avm_address(bb_mmul_B1_stall_region_out_lm20433_mmul_avm_address),
        .out_lm20433_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm20433_mmul_avm_burstcount),
        .out_lm20433_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm20433_mmul_avm_byteenable),
        .out_lm20433_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm20433_mmul_avm_enable),
        .out_lm20433_mmul_avm_read(bb_mmul_B1_stall_region_out_lm20433_mmul_avm_read),
        .out_lm20433_mmul_avm_write(bb_mmul_B1_stall_region_out_lm20433_mmul_avm_write),
        .out_lm20433_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm20433_mmul_avm_writedata),
        .out_lm76_mmul_avm_address(bb_mmul_B1_stall_region_out_lm76_mmul_avm_address),
        .out_lm76_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm76_mmul_avm_burstcount),
        .out_lm76_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm76_mmul_avm_byteenable),
        .out_lm76_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm76_mmul_avm_enable),
        .out_lm76_mmul_avm_read(bb_mmul_B1_stall_region_out_lm76_mmul_avm_read),
        .out_lm76_mmul_avm_write(bb_mmul_B1_stall_region_out_lm76_mmul_avm_write),
        .out_lm76_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm76_mmul_avm_writedata),
        .out_lm802_mmul_avm_address(bb_mmul_B1_stall_region_out_lm802_mmul_avm_address),
        .out_lm802_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm802_mmul_avm_burstcount),
        .out_lm802_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm802_mmul_avm_byteenable),
        .out_lm802_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm802_mmul_avm_enable),
        .out_lm802_mmul_avm_read(bb_mmul_B1_stall_region_out_lm802_mmul_avm_read),
        .out_lm802_mmul_avm_write(bb_mmul_B1_stall_region_out_lm802_mmul_avm_write),
        .out_lm802_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm802_mmul_avm_writedata),
        .out_lm843_mmul_avm_address(bb_mmul_B1_stall_region_out_lm843_mmul_avm_address),
        .out_lm843_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm843_mmul_avm_burstcount),
        .out_lm843_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm843_mmul_avm_byteenable),
        .out_lm843_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm843_mmul_avm_enable),
        .out_lm843_mmul_avm_read(bb_mmul_B1_stall_region_out_lm843_mmul_avm_read),
        .out_lm843_mmul_avm_write(bb_mmul_B1_stall_region_out_lm843_mmul_avm_write),
        .out_lm843_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm843_mmul_avm_writedata),
        .out_lm884_mmul_avm_address(bb_mmul_B1_stall_region_out_lm884_mmul_avm_address),
        .out_lm884_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm884_mmul_avm_burstcount),
        .out_lm884_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm884_mmul_avm_byteenable),
        .out_lm884_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm884_mmul_avm_enable),
        .out_lm884_mmul_avm_read(bb_mmul_B1_stall_region_out_lm884_mmul_avm_read),
        .out_lm884_mmul_avm_write(bb_mmul_B1_stall_region_out_lm884_mmul_avm_write),
        .out_lm884_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm884_mmul_avm_writedata),
        .out_lm925_mmul_avm_address(bb_mmul_B1_stall_region_out_lm925_mmul_avm_address),
        .out_lm925_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm925_mmul_avm_burstcount),
        .out_lm925_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm925_mmul_avm_byteenable),
        .out_lm925_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm925_mmul_avm_enable),
        .out_lm925_mmul_avm_read(bb_mmul_B1_stall_region_out_lm925_mmul_avm_read),
        .out_lm925_mmul_avm_write(bb_mmul_B1_stall_region_out_lm925_mmul_avm_write),
        .out_lm925_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm925_mmul_avm_writedata),
        .out_lm966_mmul_avm_address(bb_mmul_B1_stall_region_out_lm966_mmul_avm_address),
        .out_lm966_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm966_mmul_avm_burstcount),
        .out_lm966_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm966_mmul_avm_byteenable),
        .out_lm966_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm966_mmul_avm_enable),
        .out_lm966_mmul_avm_read(bb_mmul_B1_stall_region_out_lm966_mmul_avm_read),
        .out_lm966_mmul_avm_write(bb_mmul_B1_stall_region_out_lm966_mmul_avm_write),
        .out_lm966_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm966_mmul_avm_writedata),
        .out_lm_mmul_avm_address(bb_mmul_B1_stall_region_out_lm_mmul_avm_address),
        .out_lm_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_lm_mmul_avm_burstcount),
        .out_lm_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_lm_mmul_avm_byteenable),
        .out_lm_mmul_avm_enable(bb_mmul_B1_stall_region_out_lm_mmul_avm_enable),
        .out_lm_mmul_avm_read(bb_mmul_B1_stall_region_out_lm_mmul_avm_read),
        .out_lm_mmul_avm_write(bb_mmul_B1_stall_region_out_lm_mmul_avm_write),
        .out_lm_mmul_avm_writedata(bb_mmul_B1_stall_region_out_lm_mmul_avm_writedata),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address(bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable(bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read(bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write(bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata(bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata),
        .out_memdep_95_mmul_avm_address(bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_address),
        .out_memdep_95_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_burstcount),
        .out_memdep_95_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_byteenable),
        .out_memdep_95_mmul_avm_enable(bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_enable),
        .out_memdep_95_mmul_avm_read(bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_read),
        .out_memdep_95_mmul_avm_write(bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_write),
        .out_memdep_95_mmul_avm_writedata(bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_writedata),
        .out_memdep_mmul_avm_address(bb_mmul_B1_stall_region_out_memdep_mmul_avm_address),
        .out_memdep_mmul_avm_burstcount(bb_mmul_B1_stall_region_out_memdep_mmul_avm_burstcount),
        .out_memdep_mmul_avm_byteenable(bb_mmul_B1_stall_region_out_memdep_mmul_avm_byteenable),
        .out_memdep_mmul_avm_enable(bb_mmul_B1_stall_region_out_memdep_mmul_avm_enable),
        .out_memdep_mmul_avm_read(bb_mmul_B1_stall_region_out_memdep_mmul_avm_read),
        .out_memdep_mmul_avm_write(bb_mmul_B1_stall_region_out_memdep_mmul_avm_write),
        .out_memdep_mmul_avm_writedata(bb_mmul_B1_stall_region_out_memdep_mmul_avm_writedata),
        .out_stall_out(bb_mmul_B1_stall_region_out_stall_out),
        .out_valid_out(bb_mmul_B1_stall_region_out_valid_out),
        .out_wgl_0_enter_exit_stall_out(bb_mmul_B1_stall_region_out_wgl_0_enter_exit_stall_out),
        .out_wgl_0_enter_exit_valid_out(bb_mmul_B1_stall_region_out_wgl_0_enter_exit_valid_out),
        .out_wgl_0_exit_exit_stall_in(bb_mmul_B1_stall_region_out_wgl_0_exit_exit_stall_in),
        .out_wgl_0_exit_exit_valid_in(bb_mmul_B1_stall_region_out_wgl_0_exit_exit_valid_in),
        .out_wgl_1_enter_exit_stall_out(bb_mmul_B1_stall_region_out_wgl_1_enter_exit_stall_out),
        .out_wgl_1_enter_exit_valid_out(bb_mmul_B1_stall_region_out_wgl_1_enter_exit_valid_out),
        .out_wgl_1_exit_exit_stall_in(bb_mmul_B1_stall_region_out_wgl_1_exit_exit_stall_in),
        .out_wgl_1_exit_exit_valid_in(bb_mmul_B1_stall_region_out_wgl_1_exit_exit_valid_in),
        .clock(clock),
        .resetn(resetn)
    );

    // mmul_B1_branch(BLACKBOX,218)
    mmul_B1_branch themmul_B1_branch (
        .in_acl_global_id_077(bb_mmul_B1_stall_region_out_acl_global_id_077),
        .in_acl_global_id_179(bb_mmul_B1_stall_region_out_acl_global_id_179),
        .in_acl_local_id_080(bb_mmul_B1_stall_region_out_acl_local_id_080),
        .in_add43(bb_mmul_B1_stall_region_out_add43),
        .in_add44(bb_mmul_B1_stall_region_out_add44),
        .in_c0_exe168(bb_mmul_B1_stall_region_out_c0_exe168),
        .in_c0_exe2141(bb_mmul_B1_stall_region_out_c0_exe2141),
        .in_c0_exe269(bb_mmul_B1_stall_region_out_c0_exe269),
        .in_c0_exe370(bb_mmul_B1_stall_region_out_c0_exe370),
        .in_c0_exe671(bb_mmul_B1_stall_region_out_c0_exe671),
        .in_c0_exe772(bb_mmul_B1_stall_region_out_c0_exe772),
        .in_c0_exe873(bb_mmul_B1_stall_region_out_c0_exe873),
        .in_c0_exe974(bb_mmul_B1_stall_region_out_c0_exe974),
        .in_cmp(bb_mmul_B1_stall_region_out_cmp),
        .in_inc46(bb_mmul_B1_stall_region_out_inc46),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_mmul_B1_stall_region_out_valid_out),
        .out_acl_global_id_077(mmul_B1_branch_out_acl_global_id_077),
        .out_acl_global_id_179(mmul_B1_branch_out_acl_global_id_179),
        .out_acl_local_id_080(mmul_B1_branch_out_acl_local_id_080),
        .out_add43(mmul_B1_branch_out_add43),
        .out_add44(mmul_B1_branch_out_add44),
        .out_c0_exe168(mmul_B1_branch_out_c0_exe168),
        .out_c0_exe2141(mmul_B1_branch_out_c0_exe2141),
        .out_c0_exe269(mmul_B1_branch_out_c0_exe269),
        .out_c0_exe370(mmul_B1_branch_out_c0_exe370),
        .out_c0_exe671(mmul_B1_branch_out_c0_exe671),
        .out_c0_exe772(mmul_B1_branch_out_c0_exe772),
        .out_c0_exe873(mmul_B1_branch_out_c0_exe873),
        .out_c0_exe974(mmul_B1_branch_out_c0_exe974),
        .out_inc46(mmul_B1_branch_out_inc46),
        .out_stall_out(mmul_B1_branch_out_stall_out),
        .out_valid_out_0(mmul_B1_branch_out_valid_out_0),
        .out_valid_out_1(mmul_B1_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_acl_global_id_077(GPOUT,220)
    assign out_acl_global_id_077 = mmul_B1_branch_out_acl_global_id_077;

    // out_acl_global_id_179(GPOUT,221)
    assign out_acl_global_id_179 = mmul_B1_branch_out_acl_global_id_179;

    // out_acl_local_id_080(GPOUT,222)
    assign out_acl_local_id_080 = mmul_B1_branch_out_acl_local_id_080;

    // out_add43(GPOUT,223)
    assign out_add43 = mmul_B1_branch_out_add43;

    // out_add44(GPOUT,224)
    assign out_add44 = mmul_B1_branch_out_add44;

    // out_c0_exe168(GPOUT,225)
    assign out_c0_exe168 = mmul_B1_branch_out_c0_exe168;

    // out_c0_exe2141(GPOUT,226)
    assign out_c0_exe2141 = mmul_B1_branch_out_c0_exe2141;

    // out_c0_exe269(GPOUT,227)
    assign out_c0_exe269 = mmul_B1_branch_out_c0_exe269;

    // out_c0_exe370(GPOUT,228)
    assign out_c0_exe370 = mmul_B1_branch_out_c0_exe370;

    // out_c0_exe671(GPOUT,229)
    assign out_c0_exe671 = mmul_B1_branch_out_c0_exe671;

    // out_c0_exe772(GPOUT,230)
    assign out_c0_exe772 = mmul_B1_branch_out_c0_exe772;

    // out_c0_exe873(GPOUT,231)
    assign out_c0_exe873 = mmul_B1_branch_out_c0_exe873;

    // out_c0_exe974(GPOUT,232)
    assign out_c0_exe974 = mmul_B1_branch_out_c0_exe974;

    // out_inc46(GPOUT,233)
    assign out_inc46 = mmul_B1_branch_out_inc46;

    // out_lm1007_mmul_avm_address(GPOUT,234)
    assign out_lm1007_mmul_avm_address = bb_mmul_B1_stall_region_out_lm1007_mmul_avm_address;

    // out_lm1007_mmul_avm_burstcount(GPOUT,235)
    assign out_lm1007_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm1007_mmul_avm_burstcount;

    // out_lm1007_mmul_avm_byteenable(GPOUT,236)
    assign out_lm1007_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm1007_mmul_avm_byteenable;

    // out_lm1007_mmul_avm_enable(GPOUT,237)
    assign out_lm1007_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm1007_mmul_avm_enable;

    // out_lm1007_mmul_avm_read(GPOUT,238)
    assign out_lm1007_mmul_avm_read = bb_mmul_B1_stall_region_out_lm1007_mmul_avm_read;

    // out_lm1007_mmul_avm_write(GPOUT,239)
    assign out_lm1007_mmul_avm_write = bb_mmul_B1_stall_region_out_lm1007_mmul_avm_write;

    // out_lm1007_mmul_avm_writedata(GPOUT,240)
    assign out_lm1007_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm1007_mmul_avm_writedata;

    // out_lm1048_mmul_avm_address(GPOUT,241)
    assign out_lm1048_mmul_avm_address = bb_mmul_B1_stall_region_out_lm1048_mmul_avm_address;

    // out_lm1048_mmul_avm_burstcount(GPOUT,242)
    assign out_lm1048_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm1048_mmul_avm_burstcount;

    // out_lm1048_mmul_avm_byteenable(GPOUT,243)
    assign out_lm1048_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm1048_mmul_avm_byteenable;

    // out_lm1048_mmul_avm_enable(GPOUT,244)
    assign out_lm1048_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm1048_mmul_avm_enable;

    // out_lm1048_mmul_avm_read(GPOUT,245)
    assign out_lm1048_mmul_avm_read = bb_mmul_B1_stall_region_out_lm1048_mmul_avm_read;

    // out_lm1048_mmul_avm_write(GPOUT,246)
    assign out_lm1048_mmul_avm_write = bb_mmul_B1_stall_region_out_lm1048_mmul_avm_write;

    // out_lm1048_mmul_avm_writedata(GPOUT,247)
    assign out_lm1048_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm1048_mmul_avm_writedata;

    // out_lm1089_mmul_avm_address(GPOUT,248)
    assign out_lm1089_mmul_avm_address = bb_mmul_B1_stall_region_out_lm1089_mmul_avm_address;

    // out_lm1089_mmul_avm_burstcount(GPOUT,249)
    assign out_lm1089_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm1089_mmul_avm_burstcount;

    // out_lm1089_mmul_avm_byteenable(GPOUT,250)
    assign out_lm1089_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm1089_mmul_avm_byteenable;

    // out_lm1089_mmul_avm_enable(GPOUT,251)
    assign out_lm1089_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm1089_mmul_avm_enable;

    // out_lm1089_mmul_avm_read(GPOUT,252)
    assign out_lm1089_mmul_avm_read = bb_mmul_B1_stall_region_out_lm1089_mmul_avm_read;

    // out_lm1089_mmul_avm_write(GPOUT,253)
    assign out_lm1089_mmul_avm_write = bb_mmul_B1_stall_region_out_lm1089_mmul_avm_write;

    // out_lm1089_mmul_avm_writedata(GPOUT,254)
    assign out_lm1089_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm1089_mmul_avm_writedata;

    // out_lm11210_mmul_avm_address(GPOUT,255)
    assign out_lm11210_mmul_avm_address = bb_mmul_B1_stall_region_out_lm11210_mmul_avm_address;

    // out_lm11210_mmul_avm_burstcount(GPOUT,256)
    assign out_lm11210_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm11210_mmul_avm_burstcount;

    // out_lm11210_mmul_avm_byteenable(GPOUT,257)
    assign out_lm11210_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm11210_mmul_avm_byteenable;

    // out_lm11210_mmul_avm_enable(GPOUT,258)
    assign out_lm11210_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm11210_mmul_avm_enable;

    // out_lm11210_mmul_avm_read(GPOUT,259)
    assign out_lm11210_mmul_avm_read = bb_mmul_B1_stall_region_out_lm11210_mmul_avm_read;

    // out_lm11210_mmul_avm_write(GPOUT,260)
    assign out_lm11210_mmul_avm_write = bb_mmul_B1_stall_region_out_lm11210_mmul_avm_write;

    // out_lm11210_mmul_avm_writedata(GPOUT,261)
    assign out_lm11210_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm11210_mmul_avm_writedata;

    // out_lm11611_mmul_avm_address(GPOUT,262)
    assign out_lm11611_mmul_avm_address = bb_mmul_B1_stall_region_out_lm11611_mmul_avm_address;

    // out_lm11611_mmul_avm_burstcount(GPOUT,263)
    assign out_lm11611_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm11611_mmul_avm_burstcount;

    // out_lm11611_mmul_avm_byteenable(GPOUT,264)
    assign out_lm11611_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm11611_mmul_avm_byteenable;

    // out_lm11611_mmul_avm_enable(GPOUT,265)
    assign out_lm11611_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm11611_mmul_avm_enable;

    // out_lm11611_mmul_avm_read(GPOUT,266)
    assign out_lm11611_mmul_avm_read = bb_mmul_B1_stall_region_out_lm11611_mmul_avm_read;

    // out_lm11611_mmul_avm_write(GPOUT,267)
    assign out_lm11611_mmul_avm_write = bb_mmul_B1_stall_region_out_lm11611_mmul_avm_write;

    // out_lm11611_mmul_avm_writedata(GPOUT,268)
    assign out_lm11611_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm11611_mmul_avm_writedata;

    // out_lm12012_mmul_avm_address(GPOUT,269)
    assign out_lm12012_mmul_avm_address = bb_mmul_B1_stall_region_out_lm12012_mmul_avm_address;

    // out_lm12012_mmul_avm_burstcount(GPOUT,270)
    assign out_lm12012_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm12012_mmul_avm_burstcount;

    // out_lm12012_mmul_avm_byteenable(GPOUT,271)
    assign out_lm12012_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm12012_mmul_avm_byteenable;

    // out_lm12012_mmul_avm_enable(GPOUT,272)
    assign out_lm12012_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm12012_mmul_avm_enable;

    // out_lm12012_mmul_avm_read(GPOUT,273)
    assign out_lm12012_mmul_avm_read = bb_mmul_B1_stall_region_out_lm12012_mmul_avm_read;

    // out_lm12012_mmul_avm_write(GPOUT,274)
    assign out_lm12012_mmul_avm_write = bb_mmul_B1_stall_region_out_lm12012_mmul_avm_write;

    // out_lm12012_mmul_avm_writedata(GPOUT,275)
    assign out_lm12012_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm12012_mmul_avm_writedata;

    // out_lm12413_mmul_avm_address(GPOUT,276)
    assign out_lm12413_mmul_avm_address = bb_mmul_B1_stall_region_out_lm12413_mmul_avm_address;

    // out_lm12413_mmul_avm_burstcount(GPOUT,277)
    assign out_lm12413_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm12413_mmul_avm_burstcount;

    // out_lm12413_mmul_avm_byteenable(GPOUT,278)
    assign out_lm12413_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm12413_mmul_avm_byteenable;

    // out_lm12413_mmul_avm_enable(GPOUT,279)
    assign out_lm12413_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm12413_mmul_avm_enable;

    // out_lm12413_mmul_avm_read(GPOUT,280)
    assign out_lm12413_mmul_avm_read = bb_mmul_B1_stall_region_out_lm12413_mmul_avm_read;

    // out_lm12413_mmul_avm_write(GPOUT,281)
    assign out_lm12413_mmul_avm_write = bb_mmul_B1_stall_region_out_lm12413_mmul_avm_write;

    // out_lm12413_mmul_avm_writedata(GPOUT,282)
    assign out_lm12413_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm12413_mmul_avm_writedata;

    // out_lm12814_mmul_avm_address(GPOUT,283)
    assign out_lm12814_mmul_avm_address = bb_mmul_B1_stall_region_out_lm12814_mmul_avm_address;

    // out_lm12814_mmul_avm_burstcount(GPOUT,284)
    assign out_lm12814_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm12814_mmul_avm_burstcount;

    // out_lm12814_mmul_avm_byteenable(GPOUT,285)
    assign out_lm12814_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm12814_mmul_avm_byteenable;

    // out_lm12814_mmul_avm_enable(GPOUT,286)
    assign out_lm12814_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm12814_mmul_avm_enable;

    // out_lm12814_mmul_avm_read(GPOUT,287)
    assign out_lm12814_mmul_avm_read = bb_mmul_B1_stall_region_out_lm12814_mmul_avm_read;

    // out_lm12814_mmul_avm_write(GPOUT,288)
    assign out_lm12814_mmul_avm_write = bb_mmul_B1_stall_region_out_lm12814_mmul_avm_write;

    // out_lm12814_mmul_avm_writedata(GPOUT,289)
    assign out_lm12814_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm12814_mmul_avm_writedata;

    // out_lm13215_mmul_avm_address(GPOUT,290)
    assign out_lm13215_mmul_avm_address = bb_mmul_B1_stall_region_out_lm13215_mmul_avm_address;

    // out_lm13215_mmul_avm_burstcount(GPOUT,291)
    assign out_lm13215_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm13215_mmul_avm_burstcount;

    // out_lm13215_mmul_avm_byteenable(GPOUT,292)
    assign out_lm13215_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm13215_mmul_avm_byteenable;

    // out_lm13215_mmul_avm_enable(GPOUT,293)
    assign out_lm13215_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm13215_mmul_avm_enable;

    // out_lm13215_mmul_avm_read(GPOUT,294)
    assign out_lm13215_mmul_avm_read = bb_mmul_B1_stall_region_out_lm13215_mmul_avm_read;

    // out_lm13215_mmul_avm_write(GPOUT,295)
    assign out_lm13215_mmul_avm_write = bb_mmul_B1_stall_region_out_lm13215_mmul_avm_write;

    // out_lm13215_mmul_avm_writedata(GPOUT,296)
    assign out_lm13215_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm13215_mmul_avm_writedata;

    // out_lm13616_mmul_avm_address(GPOUT,297)
    assign out_lm13616_mmul_avm_address = bb_mmul_B1_stall_region_out_lm13616_mmul_avm_address;

    // out_lm13616_mmul_avm_burstcount(GPOUT,298)
    assign out_lm13616_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm13616_mmul_avm_burstcount;

    // out_lm13616_mmul_avm_byteenable(GPOUT,299)
    assign out_lm13616_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm13616_mmul_avm_byteenable;

    // out_lm13616_mmul_avm_enable(GPOUT,300)
    assign out_lm13616_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm13616_mmul_avm_enable;

    // out_lm13616_mmul_avm_read(GPOUT,301)
    assign out_lm13616_mmul_avm_read = bb_mmul_B1_stall_region_out_lm13616_mmul_avm_read;

    // out_lm13616_mmul_avm_write(GPOUT,302)
    assign out_lm13616_mmul_avm_write = bb_mmul_B1_stall_region_out_lm13616_mmul_avm_write;

    // out_lm13616_mmul_avm_writedata(GPOUT,303)
    assign out_lm13616_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm13616_mmul_avm_writedata;

    // out_lm14017_mmul_avm_address(GPOUT,304)
    assign out_lm14017_mmul_avm_address = bb_mmul_B1_stall_region_out_lm14017_mmul_avm_address;

    // out_lm14017_mmul_avm_burstcount(GPOUT,305)
    assign out_lm14017_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm14017_mmul_avm_burstcount;

    // out_lm14017_mmul_avm_byteenable(GPOUT,306)
    assign out_lm14017_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm14017_mmul_avm_byteenable;

    // out_lm14017_mmul_avm_enable(GPOUT,307)
    assign out_lm14017_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm14017_mmul_avm_enable;

    // out_lm14017_mmul_avm_read(GPOUT,308)
    assign out_lm14017_mmul_avm_read = bb_mmul_B1_stall_region_out_lm14017_mmul_avm_read;

    // out_lm14017_mmul_avm_write(GPOUT,309)
    assign out_lm14017_mmul_avm_write = bb_mmul_B1_stall_region_out_lm14017_mmul_avm_write;

    // out_lm14017_mmul_avm_writedata(GPOUT,310)
    assign out_lm14017_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm14017_mmul_avm_writedata;

    // out_lm14418_mmul_avm_address(GPOUT,311)
    assign out_lm14418_mmul_avm_address = bb_mmul_B1_stall_region_out_lm14418_mmul_avm_address;

    // out_lm14418_mmul_avm_burstcount(GPOUT,312)
    assign out_lm14418_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm14418_mmul_avm_burstcount;

    // out_lm14418_mmul_avm_byteenable(GPOUT,313)
    assign out_lm14418_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm14418_mmul_avm_byteenable;

    // out_lm14418_mmul_avm_enable(GPOUT,314)
    assign out_lm14418_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm14418_mmul_avm_enable;

    // out_lm14418_mmul_avm_read(GPOUT,315)
    assign out_lm14418_mmul_avm_read = bb_mmul_B1_stall_region_out_lm14418_mmul_avm_read;

    // out_lm14418_mmul_avm_write(GPOUT,316)
    assign out_lm14418_mmul_avm_write = bb_mmul_B1_stall_region_out_lm14418_mmul_avm_write;

    // out_lm14418_mmul_avm_writedata(GPOUT,317)
    assign out_lm14418_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm14418_mmul_avm_writedata;

    // out_lm14819_mmul_avm_address(GPOUT,318)
    assign out_lm14819_mmul_avm_address = bb_mmul_B1_stall_region_out_lm14819_mmul_avm_address;

    // out_lm14819_mmul_avm_burstcount(GPOUT,319)
    assign out_lm14819_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm14819_mmul_avm_burstcount;

    // out_lm14819_mmul_avm_byteenable(GPOUT,320)
    assign out_lm14819_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm14819_mmul_avm_byteenable;

    // out_lm14819_mmul_avm_enable(GPOUT,321)
    assign out_lm14819_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm14819_mmul_avm_enable;

    // out_lm14819_mmul_avm_read(GPOUT,322)
    assign out_lm14819_mmul_avm_read = bb_mmul_B1_stall_region_out_lm14819_mmul_avm_read;

    // out_lm14819_mmul_avm_write(GPOUT,323)
    assign out_lm14819_mmul_avm_write = bb_mmul_B1_stall_region_out_lm14819_mmul_avm_write;

    // out_lm14819_mmul_avm_writedata(GPOUT,324)
    assign out_lm14819_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm14819_mmul_avm_writedata;

    // out_lm15220_mmul_avm_address(GPOUT,325)
    assign out_lm15220_mmul_avm_address = bb_mmul_B1_stall_region_out_lm15220_mmul_avm_address;

    // out_lm15220_mmul_avm_burstcount(GPOUT,326)
    assign out_lm15220_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm15220_mmul_avm_burstcount;

    // out_lm15220_mmul_avm_byteenable(GPOUT,327)
    assign out_lm15220_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm15220_mmul_avm_byteenable;

    // out_lm15220_mmul_avm_enable(GPOUT,328)
    assign out_lm15220_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm15220_mmul_avm_enable;

    // out_lm15220_mmul_avm_read(GPOUT,329)
    assign out_lm15220_mmul_avm_read = bb_mmul_B1_stall_region_out_lm15220_mmul_avm_read;

    // out_lm15220_mmul_avm_write(GPOUT,330)
    assign out_lm15220_mmul_avm_write = bb_mmul_B1_stall_region_out_lm15220_mmul_avm_write;

    // out_lm15220_mmul_avm_writedata(GPOUT,331)
    assign out_lm15220_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm15220_mmul_avm_writedata;

    // out_lm15621_mmul_avm_address(GPOUT,332)
    assign out_lm15621_mmul_avm_address = bb_mmul_B1_stall_region_out_lm15621_mmul_avm_address;

    // out_lm15621_mmul_avm_burstcount(GPOUT,333)
    assign out_lm15621_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm15621_mmul_avm_burstcount;

    // out_lm15621_mmul_avm_byteenable(GPOUT,334)
    assign out_lm15621_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm15621_mmul_avm_byteenable;

    // out_lm15621_mmul_avm_enable(GPOUT,335)
    assign out_lm15621_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm15621_mmul_avm_enable;

    // out_lm15621_mmul_avm_read(GPOUT,336)
    assign out_lm15621_mmul_avm_read = bb_mmul_B1_stall_region_out_lm15621_mmul_avm_read;

    // out_lm15621_mmul_avm_write(GPOUT,337)
    assign out_lm15621_mmul_avm_write = bb_mmul_B1_stall_region_out_lm15621_mmul_avm_write;

    // out_lm15621_mmul_avm_writedata(GPOUT,338)
    assign out_lm15621_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm15621_mmul_avm_writedata;

    // out_lm16022_mmul_avm_address(GPOUT,339)
    assign out_lm16022_mmul_avm_address = bb_mmul_B1_stall_region_out_lm16022_mmul_avm_address;

    // out_lm16022_mmul_avm_burstcount(GPOUT,340)
    assign out_lm16022_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm16022_mmul_avm_burstcount;

    // out_lm16022_mmul_avm_byteenable(GPOUT,341)
    assign out_lm16022_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm16022_mmul_avm_byteenable;

    // out_lm16022_mmul_avm_enable(GPOUT,342)
    assign out_lm16022_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm16022_mmul_avm_enable;

    // out_lm16022_mmul_avm_read(GPOUT,343)
    assign out_lm16022_mmul_avm_read = bb_mmul_B1_stall_region_out_lm16022_mmul_avm_read;

    // out_lm16022_mmul_avm_write(GPOUT,344)
    assign out_lm16022_mmul_avm_write = bb_mmul_B1_stall_region_out_lm16022_mmul_avm_write;

    // out_lm16022_mmul_avm_writedata(GPOUT,345)
    assign out_lm16022_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm16022_mmul_avm_writedata;

    // out_lm16423_mmul_avm_address(GPOUT,346)
    assign out_lm16423_mmul_avm_address = bb_mmul_B1_stall_region_out_lm16423_mmul_avm_address;

    // out_lm16423_mmul_avm_burstcount(GPOUT,347)
    assign out_lm16423_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm16423_mmul_avm_burstcount;

    // out_lm16423_mmul_avm_byteenable(GPOUT,348)
    assign out_lm16423_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm16423_mmul_avm_byteenable;

    // out_lm16423_mmul_avm_enable(GPOUT,349)
    assign out_lm16423_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm16423_mmul_avm_enable;

    // out_lm16423_mmul_avm_read(GPOUT,350)
    assign out_lm16423_mmul_avm_read = bb_mmul_B1_stall_region_out_lm16423_mmul_avm_read;

    // out_lm16423_mmul_avm_write(GPOUT,351)
    assign out_lm16423_mmul_avm_write = bb_mmul_B1_stall_region_out_lm16423_mmul_avm_write;

    // out_lm16423_mmul_avm_writedata(GPOUT,352)
    assign out_lm16423_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm16423_mmul_avm_writedata;

    // out_lm16824_mmul_avm_address(GPOUT,353)
    assign out_lm16824_mmul_avm_address = bb_mmul_B1_stall_region_out_lm16824_mmul_avm_address;

    // out_lm16824_mmul_avm_burstcount(GPOUT,354)
    assign out_lm16824_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm16824_mmul_avm_burstcount;

    // out_lm16824_mmul_avm_byteenable(GPOUT,355)
    assign out_lm16824_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm16824_mmul_avm_byteenable;

    // out_lm16824_mmul_avm_enable(GPOUT,356)
    assign out_lm16824_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm16824_mmul_avm_enable;

    // out_lm16824_mmul_avm_read(GPOUT,357)
    assign out_lm16824_mmul_avm_read = bb_mmul_B1_stall_region_out_lm16824_mmul_avm_read;

    // out_lm16824_mmul_avm_write(GPOUT,358)
    assign out_lm16824_mmul_avm_write = bb_mmul_B1_stall_region_out_lm16824_mmul_avm_write;

    // out_lm16824_mmul_avm_writedata(GPOUT,359)
    assign out_lm16824_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm16824_mmul_avm_writedata;

    // out_lm17225_mmul_avm_address(GPOUT,360)
    assign out_lm17225_mmul_avm_address = bb_mmul_B1_stall_region_out_lm17225_mmul_avm_address;

    // out_lm17225_mmul_avm_burstcount(GPOUT,361)
    assign out_lm17225_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm17225_mmul_avm_burstcount;

    // out_lm17225_mmul_avm_byteenable(GPOUT,362)
    assign out_lm17225_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm17225_mmul_avm_byteenable;

    // out_lm17225_mmul_avm_enable(GPOUT,363)
    assign out_lm17225_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm17225_mmul_avm_enable;

    // out_lm17225_mmul_avm_read(GPOUT,364)
    assign out_lm17225_mmul_avm_read = bb_mmul_B1_stall_region_out_lm17225_mmul_avm_read;

    // out_lm17225_mmul_avm_write(GPOUT,365)
    assign out_lm17225_mmul_avm_write = bb_mmul_B1_stall_region_out_lm17225_mmul_avm_write;

    // out_lm17225_mmul_avm_writedata(GPOUT,366)
    assign out_lm17225_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm17225_mmul_avm_writedata;

    // out_lm17626_mmul_avm_address(GPOUT,367)
    assign out_lm17626_mmul_avm_address = bb_mmul_B1_stall_region_out_lm17626_mmul_avm_address;

    // out_lm17626_mmul_avm_burstcount(GPOUT,368)
    assign out_lm17626_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm17626_mmul_avm_burstcount;

    // out_lm17626_mmul_avm_byteenable(GPOUT,369)
    assign out_lm17626_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm17626_mmul_avm_byteenable;

    // out_lm17626_mmul_avm_enable(GPOUT,370)
    assign out_lm17626_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm17626_mmul_avm_enable;

    // out_lm17626_mmul_avm_read(GPOUT,371)
    assign out_lm17626_mmul_avm_read = bb_mmul_B1_stall_region_out_lm17626_mmul_avm_read;

    // out_lm17626_mmul_avm_write(GPOUT,372)
    assign out_lm17626_mmul_avm_write = bb_mmul_B1_stall_region_out_lm17626_mmul_avm_write;

    // out_lm17626_mmul_avm_writedata(GPOUT,373)
    assign out_lm17626_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm17626_mmul_avm_writedata;

    // out_lm18027_mmul_avm_address(GPOUT,374)
    assign out_lm18027_mmul_avm_address = bb_mmul_B1_stall_region_out_lm18027_mmul_avm_address;

    // out_lm18027_mmul_avm_burstcount(GPOUT,375)
    assign out_lm18027_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm18027_mmul_avm_burstcount;

    // out_lm18027_mmul_avm_byteenable(GPOUT,376)
    assign out_lm18027_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm18027_mmul_avm_byteenable;

    // out_lm18027_mmul_avm_enable(GPOUT,377)
    assign out_lm18027_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm18027_mmul_avm_enable;

    // out_lm18027_mmul_avm_read(GPOUT,378)
    assign out_lm18027_mmul_avm_read = bb_mmul_B1_stall_region_out_lm18027_mmul_avm_read;

    // out_lm18027_mmul_avm_write(GPOUT,379)
    assign out_lm18027_mmul_avm_write = bb_mmul_B1_stall_region_out_lm18027_mmul_avm_write;

    // out_lm18027_mmul_avm_writedata(GPOUT,380)
    assign out_lm18027_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm18027_mmul_avm_writedata;

    // out_lm18428_mmul_avm_address(GPOUT,381)
    assign out_lm18428_mmul_avm_address = bb_mmul_B1_stall_region_out_lm18428_mmul_avm_address;

    // out_lm18428_mmul_avm_burstcount(GPOUT,382)
    assign out_lm18428_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm18428_mmul_avm_burstcount;

    // out_lm18428_mmul_avm_byteenable(GPOUT,383)
    assign out_lm18428_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm18428_mmul_avm_byteenable;

    // out_lm18428_mmul_avm_enable(GPOUT,384)
    assign out_lm18428_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm18428_mmul_avm_enable;

    // out_lm18428_mmul_avm_read(GPOUT,385)
    assign out_lm18428_mmul_avm_read = bb_mmul_B1_stall_region_out_lm18428_mmul_avm_read;

    // out_lm18428_mmul_avm_write(GPOUT,386)
    assign out_lm18428_mmul_avm_write = bb_mmul_B1_stall_region_out_lm18428_mmul_avm_write;

    // out_lm18428_mmul_avm_writedata(GPOUT,387)
    assign out_lm18428_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm18428_mmul_avm_writedata;

    // out_lm18829_mmul_avm_address(GPOUT,388)
    assign out_lm18829_mmul_avm_address = bb_mmul_B1_stall_region_out_lm18829_mmul_avm_address;

    // out_lm18829_mmul_avm_burstcount(GPOUT,389)
    assign out_lm18829_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm18829_mmul_avm_burstcount;

    // out_lm18829_mmul_avm_byteenable(GPOUT,390)
    assign out_lm18829_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm18829_mmul_avm_byteenable;

    // out_lm18829_mmul_avm_enable(GPOUT,391)
    assign out_lm18829_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm18829_mmul_avm_enable;

    // out_lm18829_mmul_avm_read(GPOUT,392)
    assign out_lm18829_mmul_avm_read = bb_mmul_B1_stall_region_out_lm18829_mmul_avm_read;

    // out_lm18829_mmul_avm_write(GPOUT,393)
    assign out_lm18829_mmul_avm_write = bb_mmul_B1_stall_region_out_lm18829_mmul_avm_write;

    // out_lm18829_mmul_avm_writedata(GPOUT,394)
    assign out_lm18829_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm18829_mmul_avm_writedata;

    // out_lm19230_mmul_avm_address(GPOUT,395)
    assign out_lm19230_mmul_avm_address = bb_mmul_B1_stall_region_out_lm19230_mmul_avm_address;

    // out_lm19230_mmul_avm_burstcount(GPOUT,396)
    assign out_lm19230_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm19230_mmul_avm_burstcount;

    // out_lm19230_mmul_avm_byteenable(GPOUT,397)
    assign out_lm19230_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm19230_mmul_avm_byteenable;

    // out_lm19230_mmul_avm_enable(GPOUT,398)
    assign out_lm19230_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm19230_mmul_avm_enable;

    // out_lm19230_mmul_avm_read(GPOUT,399)
    assign out_lm19230_mmul_avm_read = bb_mmul_B1_stall_region_out_lm19230_mmul_avm_read;

    // out_lm19230_mmul_avm_write(GPOUT,400)
    assign out_lm19230_mmul_avm_write = bb_mmul_B1_stall_region_out_lm19230_mmul_avm_write;

    // out_lm19230_mmul_avm_writedata(GPOUT,401)
    assign out_lm19230_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm19230_mmul_avm_writedata;

    // out_lm19631_mmul_avm_address(GPOUT,402)
    assign out_lm19631_mmul_avm_address = bb_mmul_B1_stall_region_out_lm19631_mmul_avm_address;

    // out_lm19631_mmul_avm_burstcount(GPOUT,403)
    assign out_lm19631_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm19631_mmul_avm_burstcount;

    // out_lm19631_mmul_avm_byteenable(GPOUT,404)
    assign out_lm19631_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm19631_mmul_avm_byteenable;

    // out_lm19631_mmul_avm_enable(GPOUT,405)
    assign out_lm19631_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm19631_mmul_avm_enable;

    // out_lm19631_mmul_avm_read(GPOUT,406)
    assign out_lm19631_mmul_avm_read = bb_mmul_B1_stall_region_out_lm19631_mmul_avm_read;

    // out_lm19631_mmul_avm_write(GPOUT,407)
    assign out_lm19631_mmul_avm_write = bb_mmul_B1_stall_region_out_lm19631_mmul_avm_write;

    // out_lm19631_mmul_avm_writedata(GPOUT,408)
    assign out_lm19631_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm19631_mmul_avm_writedata;

    // out_lm20032_mmul_avm_address(GPOUT,409)
    assign out_lm20032_mmul_avm_address = bb_mmul_B1_stall_region_out_lm20032_mmul_avm_address;

    // out_lm20032_mmul_avm_burstcount(GPOUT,410)
    assign out_lm20032_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm20032_mmul_avm_burstcount;

    // out_lm20032_mmul_avm_byteenable(GPOUT,411)
    assign out_lm20032_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm20032_mmul_avm_byteenable;

    // out_lm20032_mmul_avm_enable(GPOUT,412)
    assign out_lm20032_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm20032_mmul_avm_enable;

    // out_lm20032_mmul_avm_read(GPOUT,413)
    assign out_lm20032_mmul_avm_read = bb_mmul_B1_stall_region_out_lm20032_mmul_avm_read;

    // out_lm20032_mmul_avm_write(GPOUT,414)
    assign out_lm20032_mmul_avm_write = bb_mmul_B1_stall_region_out_lm20032_mmul_avm_write;

    // out_lm20032_mmul_avm_writedata(GPOUT,415)
    assign out_lm20032_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm20032_mmul_avm_writedata;

    // out_lm20433_mmul_avm_address(GPOUT,416)
    assign out_lm20433_mmul_avm_address = bb_mmul_B1_stall_region_out_lm20433_mmul_avm_address;

    // out_lm20433_mmul_avm_burstcount(GPOUT,417)
    assign out_lm20433_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm20433_mmul_avm_burstcount;

    // out_lm20433_mmul_avm_byteenable(GPOUT,418)
    assign out_lm20433_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm20433_mmul_avm_byteenable;

    // out_lm20433_mmul_avm_enable(GPOUT,419)
    assign out_lm20433_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm20433_mmul_avm_enable;

    // out_lm20433_mmul_avm_read(GPOUT,420)
    assign out_lm20433_mmul_avm_read = bb_mmul_B1_stall_region_out_lm20433_mmul_avm_read;

    // out_lm20433_mmul_avm_write(GPOUT,421)
    assign out_lm20433_mmul_avm_write = bb_mmul_B1_stall_region_out_lm20433_mmul_avm_write;

    // out_lm20433_mmul_avm_writedata(GPOUT,422)
    assign out_lm20433_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm20433_mmul_avm_writedata;

    // out_lm76_mmul_avm_address(GPOUT,423)
    assign out_lm76_mmul_avm_address = bb_mmul_B1_stall_region_out_lm76_mmul_avm_address;

    // out_lm76_mmul_avm_burstcount(GPOUT,424)
    assign out_lm76_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm76_mmul_avm_burstcount;

    // out_lm76_mmul_avm_byteenable(GPOUT,425)
    assign out_lm76_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm76_mmul_avm_byteenable;

    // out_lm76_mmul_avm_enable(GPOUT,426)
    assign out_lm76_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm76_mmul_avm_enable;

    // out_lm76_mmul_avm_read(GPOUT,427)
    assign out_lm76_mmul_avm_read = bb_mmul_B1_stall_region_out_lm76_mmul_avm_read;

    // out_lm76_mmul_avm_write(GPOUT,428)
    assign out_lm76_mmul_avm_write = bb_mmul_B1_stall_region_out_lm76_mmul_avm_write;

    // out_lm76_mmul_avm_writedata(GPOUT,429)
    assign out_lm76_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm76_mmul_avm_writedata;

    // out_lm802_mmul_avm_address(GPOUT,430)
    assign out_lm802_mmul_avm_address = bb_mmul_B1_stall_region_out_lm802_mmul_avm_address;

    // out_lm802_mmul_avm_burstcount(GPOUT,431)
    assign out_lm802_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm802_mmul_avm_burstcount;

    // out_lm802_mmul_avm_byteenable(GPOUT,432)
    assign out_lm802_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm802_mmul_avm_byteenable;

    // out_lm802_mmul_avm_enable(GPOUT,433)
    assign out_lm802_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm802_mmul_avm_enable;

    // out_lm802_mmul_avm_read(GPOUT,434)
    assign out_lm802_mmul_avm_read = bb_mmul_B1_stall_region_out_lm802_mmul_avm_read;

    // out_lm802_mmul_avm_write(GPOUT,435)
    assign out_lm802_mmul_avm_write = bb_mmul_B1_stall_region_out_lm802_mmul_avm_write;

    // out_lm802_mmul_avm_writedata(GPOUT,436)
    assign out_lm802_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm802_mmul_avm_writedata;

    // out_lm843_mmul_avm_address(GPOUT,437)
    assign out_lm843_mmul_avm_address = bb_mmul_B1_stall_region_out_lm843_mmul_avm_address;

    // out_lm843_mmul_avm_burstcount(GPOUT,438)
    assign out_lm843_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm843_mmul_avm_burstcount;

    // out_lm843_mmul_avm_byteenable(GPOUT,439)
    assign out_lm843_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm843_mmul_avm_byteenable;

    // out_lm843_mmul_avm_enable(GPOUT,440)
    assign out_lm843_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm843_mmul_avm_enable;

    // out_lm843_mmul_avm_read(GPOUT,441)
    assign out_lm843_mmul_avm_read = bb_mmul_B1_stall_region_out_lm843_mmul_avm_read;

    // out_lm843_mmul_avm_write(GPOUT,442)
    assign out_lm843_mmul_avm_write = bb_mmul_B1_stall_region_out_lm843_mmul_avm_write;

    // out_lm843_mmul_avm_writedata(GPOUT,443)
    assign out_lm843_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm843_mmul_avm_writedata;

    // out_lm884_mmul_avm_address(GPOUT,444)
    assign out_lm884_mmul_avm_address = bb_mmul_B1_stall_region_out_lm884_mmul_avm_address;

    // out_lm884_mmul_avm_burstcount(GPOUT,445)
    assign out_lm884_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm884_mmul_avm_burstcount;

    // out_lm884_mmul_avm_byteenable(GPOUT,446)
    assign out_lm884_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm884_mmul_avm_byteenable;

    // out_lm884_mmul_avm_enable(GPOUT,447)
    assign out_lm884_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm884_mmul_avm_enable;

    // out_lm884_mmul_avm_read(GPOUT,448)
    assign out_lm884_mmul_avm_read = bb_mmul_B1_stall_region_out_lm884_mmul_avm_read;

    // out_lm884_mmul_avm_write(GPOUT,449)
    assign out_lm884_mmul_avm_write = bb_mmul_B1_stall_region_out_lm884_mmul_avm_write;

    // out_lm884_mmul_avm_writedata(GPOUT,450)
    assign out_lm884_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm884_mmul_avm_writedata;

    // out_lm925_mmul_avm_address(GPOUT,451)
    assign out_lm925_mmul_avm_address = bb_mmul_B1_stall_region_out_lm925_mmul_avm_address;

    // out_lm925_mmul_avm_burstcount(GPOUT,452)
    assign out_lm925_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm925_mmul_avm_burstcount;

    // out_lm925_mmul_avm_byteenable(GPOUT,453)
    assign out_lm925_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm925_mmul_avm_byteenable;

    // out_lm925_mmul_avm_enable(GPOUT,454)
    assign out_lm925_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm925_mmul_avm_enable;

    // out_lm925_mmul_avm_read(GPOUT,455)
    assign out_lm925_mmul_avm_read = bb_mmul_B1_stall_region_out_lm925_mmul_avm_read;

    // out_lm925_mmul_avm_write(GPOUT,456)
    assign out_lm925_mmul_avm_write = bb_mmul_B1_stall_region_out_lm925_mmul_avm_write;

    // out_lm925_mmul_avm_writedata(GPOUT,457)
    assign out_lm925_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm925_mmul_avm_writedata;

    // out_lm966_mmul_avm_address(GPOUT,458)
    assign out_lm966_mmul_avm_address = bb_mmul_B1_stall_region_out_lm966_mmul_avm_address;

    // out_lm966_mmul_avm_burstcount(GPOUT,459)
    assign out_lm966_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm966_mmul_avm_burstcount;

    // out_lm966_mmul_avm_byteenable(GPOUT,460)
    assign out_lm966_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm966_mmul_avm_byteenable;

    // out_lm966_mmul_avm_enable(GPOUT,461)
    assign out_lm966_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm966_mmul_avm_enable;

    // out_lm966_mmul_avm_read(GPOUT,462)
    assign out_lm966_mmul_avm_read = bb_mmul_B1_stall_region_out_lm966_mmul_avm_read;

    // out_lm966_mmul_avm_write(GPOUT,463)
    assign out_lm966_mmul_avm_write = bb_mmul_B1_stall_region_out_lm966_mmul_avm_write;

    // out_lm966_mmul_avm_writedata(GPOUT,464)
    assign out_lm966_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm966_mmul_avm_writedata;

    // out_lm_mmul_avm_address(GPOUT,465)
    assign out_lm_mmul_avm_address = bb_mmul_B1_stall_region_out_lm_mmul_avm_address;

    // out_lm_mmul_avm_burstcount(GPOUT,466)
    assign out_lm_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_lm_mmul_avm_burstcount;

    // out_lm_mmul_avm_byteenable(GPOUT,467)
    assign out_lm_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_lm_mmul_avm_byteenable;

    // out_lm_mmul_avm_enable(GPOUT,468)
    assign out_lm_mmul_avm_enable = bb_mmul_B1_stall_region_out_lm_mmul_avm_enable;

    // out_lm_mmul_avm_read(GPOUT,469)
    assign out_lm_mmul_avm_read = bb_mmul_B1_stall_region_out_lm_mmul_avm_read;

    // out_lm_mmul_avm_write(GPOUT,470)
    assign out_lm_mmul_avm_write = bb_mmul_B1_stall_region_out_lm_mmul_avm_write;

    // out_lm_mmul_avm_writedata(GPOUT,471)
    assign out_lm_mmul_avm_writedata = bb_mmul_B1_stall_region_out_lm_mmul_avm_writedata;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address(GPOUT,472)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address = bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount(GPOUT,473)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable(GPOUT,474)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable(GPOUT,475)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable = bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read(GPOUT,476)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read = bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write(GPOUT,477)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write = bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata(GPOUT,478)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata = bb_mmul_B1_stall_region_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata;

    // out_memdep_95_mmul_avm_address(GPOUT,479)
    assign out_memdep_95_mmul_avm_address = bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_address;

    // out_memdep_95_mmul_avm_burstcount(GPOUT,480)
    assign out_memdep_95_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_burstcount;

    // out_memdep_95_mmul_avm_byteenable(GPOUT,481)
    assign out_memdep_95_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_byteenable;

    // out_memdep_95_mmul_avm_enable(GPOUT,482)
    assign out_memdep_95_mmul_avm_enable = bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_enable;

    // out_memdep_95_mmul_avm_read(GPOUT,483)
    assign out_memdep_95_mmul_avm_read = bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_read;

    // out_memdep_95_mmul_avm_write(GPOUT,484)
    assign out_memdep_95_mmul_avm_write = bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_write;

    // out_memdep_95_mmul_avm_writedata(GPOUT,485)
    assign out_memdep_95_mmul_avm_writedata = bb_mmul_B1_stall_region_out_memdep_95_mmul_avm_writedata;

    // out_memdep_mmul_avm_address(GPOUT,486)
    assign out_memdep_mmul_avm_address = bb_mmul_B1_stall_region_out_memdep_mmul_avm_address;

    // out_memdep_mmul_avm_burstcount(GPOUT,487)
    assign out_memdep_mmul_avm_burstcount = bb_mmul_B1_stall_region_out_memdep_mmul_avm_burstcount;

    // out_memdep_mmul_avm_byteenable(GPOUT,488)
    assign out_memdep_mmul_avm_byteenable = bb_mmul_B1_stall_region_out_memdep_mmul_avm_byteenable;

    // out_memdep_mmul_avm_enable(GPOUT,489)
    assign out_memdep_mmul_avm_enable = bb_mmul_B1_stall_region_out_memdep_mmul_avm_enable;

    // out_memdep_mmul_avm_read(GPOUT,490)
    assign out_memdep_mmul_avm_read = bb_mmul_B1_stall_region_out_memdep_mmul_avm_read;

    // out_memdep_mmul_avm_write(GPOUT,491)
    assign out_memdep_mmul_avm_write = bb_mmul_B1_stall_region_out_memdep_mmul_avm_write;

    // out_memdep_mmul_avm_writedata(GPOUT,492)
    assign out_memdep_mmul_avm_writedata = bb_mmul_B1_stall_region_out_memdep_mmul_avm_writedata;

    // out_stall_in_0(GPOUT,493)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,494)
    assign out_stall_out_0 = mmul_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,495)
    assign out_stall_out_1 = mmul_B1_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,496)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,497)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,498)
    assign out_valid_out_0 = mmul_B1_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,499)
    assign out_valid_out_1 = mmul_B1_branch_out_valid_out_1;

    // out_wgl_0_enter_exit_stall_out(GPOUT,500)
    assign out_wgl_0_enter_exit_stall_out = bb_mmul_B1_stall_region_out_wgl_0_enter_exit_stall_out;

    // out_wgl_0_enter_exit_valid_out(GPOUT,501)
    assign out_wgl_0_enter_exit_valid_out = bb_mmul_B1_stall_region_out_wgl_0_enter_exit_valid_out;

    // out_wgl_0_exit_exit_stall_in(GPOUT,502)
    assign out_wgl_0_exit_exit_stall_in = bb_mmul_B1_stall_region_out_wgl_0_exit_exit_stall_in;

    // out_wgl_0_exit_exit_valid_in(GPOUT,503)
    assign out_wgl_0_exit_exit_valid_in = bb_mmul_B1_stall_region_out_wgl_0_exit_exit_valid_in;

    // out_wgl_1_enter_exit_stall_out(GPOUT,504)
    assign out_wgl_1_enter_exit_stall_out = bb_mmul_B1_stall_region_out_wgl_1_enter_exit_stall_out;

    // out_wgl_1_enter_exit_valid_out(GPOUT,505)
    assign out_wgl_1_enter_exit_valid_out = bb_mmul_B1_stall_region_out_wgl_1_enter_exit_valid_out;

    // out_wgl_1_exit_exit_stall_in(GPOUT,506)
    assign out_wgl_1_exit_exit_stall_in = bb_mmul_B1_stall_region_out_wgl_1_exit_exit_stall_in;

    // out_wgl_1_exit_exit_valid_in(GPOUT,507)
    assign out_wgl_1_exit_exit_valid_in = bb_mmul_B1_stall_region_out_wgl_1_exit_exit_valid_in;

endmodule
