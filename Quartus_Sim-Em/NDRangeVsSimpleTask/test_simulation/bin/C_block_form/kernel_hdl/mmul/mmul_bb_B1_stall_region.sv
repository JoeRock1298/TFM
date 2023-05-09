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

// SystemVerilog created from mmul_bb_B1_stall_region
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B1_stall_region (
    input wire [0:0] in_wgl_0_enter_exit_valid_in,
    input wire [0:0] in_wgl_0_enter_exit_stall_in,
    output wire [0:0] out_wgl_0_enter_exit_valid_out,
    output wire [0:0] out_wgl_0_enter_exit_stall_out,
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_Abase_065,
    input wire [31:0] in_Bbase_066,
    input wire [31:0] in_Ctmp_063,
    input wire [31:0] in_Kblk_064,
    input wire [63:0] in_acl_global_id_077,
    input wire [63:0] in_acl_global_id_179,
    input wire [31:0] in_acl_local_id_080,
    input wire [31:0] in_c0_exe168,
    input wire [31:0] in_c0_exe269,
    input wire [0:0] in_c0_exe370,
    input wire [31:0] in_c0_exe671,
    input wire [63:0] in_c0_exe772,
    input wire [63:0] in_c0_exe873,
    input wire [63:0] in_c0_exe974,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_wgl_0_wgs_wg_size,
    output wire [0:0] out_wgl_1_enter_exit_valid_out,
    output wire [0:0] out_wgl_1_enter_exit_stall_out,
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
    output wire [0:0] out_cmp,
    output wire [31:0] out_inc46,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_wgl_1_enter_exit_valid_in,
    input wire [0:0] in_wgl_1_enter_exit_stall_in,
    output wire [30:0] out_lm_mmul_avm_address,
    output wire [0:0] out_lm_mmul_avm_enable,
    output wire [0:0] out_lm_mmul_avm_read,
    output wire [0:0] out_lm_mmul_avm_write,
    output wire [511:0] out_lm_mmul_avm_writedata,
    output wire [63:0] out_lm_mmul_avm_byteenable,
    output wire [4:0] out_lm_mmul_avm_burstcount,
    input wire [31:0] in_wgl_1_wgs_wg_size,
    output wire [30:0] out_lm76_mmul_avm_address,
    output wire [0:0] out_lm76_mmul_avm_enable,
    output wire [0:0] out_lm76_mmul_avm_read,
    output wire [0:0] out_lm76_mmul_avm_write,
    output wire [511:0] out_lm76_mmul_avm_writedata,
    output wire [63:0] out_lm76_mmul_avm_byteenable,
    output wire [4:0] out_lm76_mmul_avm_burstcount,
    input wire [511:0] in_lm_mmul_avm_readdata,
    input wire [0:0] in_lm_mmul_avm_writeack,
    input wire [0:0] in_lm_mmul_avm_waitrequest,
    input wire [0:0] in_lm_mmul_avm_readdatavalid,
    output wire [31:0] out_memdep_95_mmul_avm_address,
    output wire [0:0] out_memdep_95_mmul_avm_enable,
    output wire [0:0] out_memdep_95_mmul_avm_read,
    output wire [0:0] out_memdep_95_mmul_avm_write,
    output wire [1023:0] out_memdep_95_mmul_avm_writedata,
    output wire [127:0] out_memdep_95_mmul_avm_byteenable,
    output wire [0:0] out_memdep_95_mmul_avm_burstcount,
    input wire [511:0] in_lm76_mmul_avm_readdata,
    input wire [0:0] in_lm76_mmul_avm_writeack,
    input wire [0:0] in_lm76_mmul_avm_waitrequest,
    input wire [0:0] in_lm76_mmul_avm_readdatavalid,
    output wire [31:0] out_memdep_mmul_avm_address,
    output wire [0:0] out_memdep_mmul_avm_enable,
    output wire [0:0] out_memdep_mmul_avm_read,
    output wire [0:0] out_memdep_mmul_avm_write,
    output wire [31:0] out_memdep_mmul_avm_writedata,
    output wire [3:0] out_memdep_mmul_avm_byteenable,
    output wire [0:0] out_memdep_mmul_avm_burstcount,
    input wire [1023:0] in_memdep_95_mmul_avm_readdata,
    input wire [0:0] in_memdep_95_mmul_avm_writeack,
    input wire [0:0] in_memdep_95_mmul_avm_waitrequest,
    input wire [0:0] in_memdep_95_mmul_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write,
    output wire [1023:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata,
    output wire [127:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount,
    input wire [31:0] in_memdep_mmul_avm_readdata,
    input wire [0:0] in_memdep_mmul_avm_writeack,
    input wire [0:0] in_memdep_mmul_avm_waitrequest,
    input wire [0:0] in_memdep_mmul_avm_readdatavalid,
    output wire [0:0] out_wgl_0_exit_exit_valid_in,
    output wire [0:0] out_wgl_0_exit_exit_stall_in,
    input wire [31:0] in_barrier_unnamed_mmul3_wgs_workgroup_size,
    output wire [31:0] out_lm802_mmul_avm_address,
    output wire [0:0] out_lm802_mmul_avm_enable,
    output wire [0:0] out_lm802_mmul_avm_read,
    output wire [0:0] out_lm802_mmul_avm_write,
    output wire [31:0] out_lm802_mmul_avm_writedata,
    output wire [3:0] out_lm802_mmul_avm_byteenable,
    output wire [0:0] out_lm802_mmul_avm_burstcount,
    input wire [1023:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdata,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writeack,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_readdatavalid,
    output wire [31:0] out_lm843_mmul_avm_address,
    output wire [0:0] out_lm843_mmul_avm_enable,
    output wire [0:0] out_lm843_mmul_avm_read,
    output wire [0:0] out_lm843_mmul_avm_write,
    output wire [31:0] out_lm843_mmul_avm_writedata,
    output wire [3:0] out_lm843_mmul_avm_byteenable,
    output wire [0:0] out_lm843_mmul_avm_burstcount,
    input wire [0:0] in_wgl_0_exit_exit_valid_out,
    input wire [0:0] in_wgl_0_exit_exit_stall_out,
    output wire [31:0] out_lm884_mmul_avm_address,
    output wire [0:0] out_lm884_mmul_avm_enable,
    output wire [0:0] out_lm884_mmul_avm_read,
    output wire [0:0] out_lm884_mmul_avm_write,
    output wire [31:0] out_lm884_mmul_avm_writedata,
    output wire [3:0] out_lm884_mmul_avm_byteenable,
    output wire [0:0] out_lm884_mmul_avm_burstcount,
    input wire [31:0] in_lm802_mmul_avm_readdata,
    input wire [0:0] in_lm802_mmul_avm_writeack,
    input wire [0:0] in_lm802_mmul_avm_waitrequest,
    input wire [0:0] in_lm802_mmul_avm_readdatavalid,
    output wire [31:0] out_lm925_mmul_avm_address,
    output wire [0:0] out_lm925_mmul_avm_enable,
    output wire [0:0] out_lm925_mmul_avm_read,
    output wire [0:0] out_lm925_mmul_avm_write,
    output wire [31:0] out_lm925_mmul_avm_writedata,
    output wire [3:0] out_lm925_mmul_avm_byteenable,
    output wire [0:0] out_lm925_mmul_avm_burstcount,
    input wire [31:0] in_lm843_mmul_avm_readdata,
    input wire [0:0] in_lm843_mmul_avm_writeack,
    input wire [0:0] in_lm843_mmul_avm_waitrequest,
    input wire [0:0] in_lm843_mmul_avm_readdatavalid,
    output wire [31:0] out_lm966_mmul_avm_address,
    output wire [0:0] out_lm966_mmul_avm_enable,
    output wire [0:0] out_lm966_mmul_avm_read,
    output wire [0:0] out_lm966_mmul_avm_write,
    output wire [31:0] out_lm966_mmul_avm_writedata,
    output wire [3:0] out_lm966_mmul_avm_byteenable,
    output wire [0:0] out_lm966_mmul_avm_burstcount,
    input wire [31:0] in_lm884_mmul_avm_readdata,
    input wire [0:0] in_lm884_mmul_avm_writeack,
    input wire [0:0] in_lm884_mmul_avm_waitrequest,
    input wire [0:0] in_lm884_mmul_avm_readdatavalid,
    output wire [31:0] out_lm1007_mmul_avm_address,
    output wire [0:0] out_lm1007_mmul_avm_enable,
    output wire [0:0] out_lm1007_mmul_avm_read,
    output wire [0:0] out_lm1007_mmul_avm_write,
    output wire [31:0] out_lm1007_mmul_avm_writedata,
    output wire [3:0] out_lm1007_mmul_avm_byteenable,
    output wire [0:0] out_lm1007_mmul_avm_burstcount,
    input wire [31:0] in_lm925_mmul_avm_readdata,
    input wire [0:0] in_lm925_mmul_avm_writeack,
    input wire [0:0] in_lm925_mmul_avm_waitrequest,
    input wire [0:0] in_lm925_mmul_avm_readdatavalid,
    output wire [31:0] out_lm1048_mmul_avm_address,
    output wire [0:0] out_lm1048_mmul_avm_enable,
    output wire [0:0] out_lm1048_mmul_avm_read,
    output wire [0:0] out_lm1048_mmul_avm_write,
    output wire [31:0] out_lm1048_mmul_avm_writedata,
    output wire [3:0] out_lm1048_mmul_avm_byteenable,
    output wire [0:0] out_lm1048_mmul_avm_burstcount,
    input wire [31:0] in_lm966_mmul_avm_readdata,
    input wire [0:0] in_lm966_mmul_avm_writeack,
    input wire [0:0] in_lm966_mmul_avm_waitrequest,
    input wire [0:0] in_lm966_mmul_avm_readdatavalid,
    output wire [31:0] out_lm1089_mmul_avm_address,
    output wire [0:0] out_lm1089_mmul_avm_enable,
    output wire [0:0] out_lm1089_mmul_avm_read,
    output wire [0:0] out_lm1089_mmul_avm_write,
    output wire [31:0] out_lm1089_mmul_avm_writedata,
    output wire [3:0] out_lm1089_mmul_avm_byteenable,
    output wire [0:0] out_lm1089_mmul_avm_burstcount,
    input wire [31:0] in_lm1007_mmul_avm_readdata,
    input wire [0:0] in_lm1007_mmul_avm_writeack,
    input wire [0:0] in_lm1007_mmul_avm_waitrequest,
    input wire [0:0] in_lm1007_mmul_avm_readdatavalid,
    output wire [31:0] out_lm11210_mmul_avm_address,
    output wire [0:0] out_lm11210_mmul_avm_enable,
    output wire [0:0] out_lm11210_mmul_avm_read,
    output wire [0:0] out_lm11210_mmul_avm_write,
    output wire [31:0] out_lm11210_mmul_avm_writedata,
    output wire [3:0] out_lm11210_mmul_avm_byteenable,
    output wire [0:0] out_lm11210_mmul_avm_burstcount,
    input wire [31:0] in_lm1048_mmul_avm_readdata,
    input wire [0:0] in_lm1048_mmul_avm_writeack,
    input wire [0:0] in_lm1048_mmul_avm_waitrequest,
    input wire [0:0] in_lm1048_mmul_avm_readdatavalid,
    output wire [31:0] out_lm11611_mmul_avm_address,
    output wire [0:0] out_lm11611_mmul_avm_enable,
    output wire [0:0] out_lm11611_mmul_avm_read,
    output wire [0:0] out_lm11611_mmul_avm_write,
    output wire [31:0] out_lm11611_mmul_avm_writedata,
    output wire [3:0] out_lm11611_mmul_avm_byteenable,
    output wire [0:0] out_lm11611_mmul_avm_burstcount,
    input wire [31:0] in_lm1089_mmul_avm_readdata,
    input wire [0:0] in_lm1089_mmul_avm_writeack,
    input wire [0:0] in_lm1089_mmul_avm_waitrequest,
    input wire [0:0] in_lm1089_mmul_avm_readdatavalid,
    output wire [31:0] out_lm12012_mmul_avm_address,
    output wire [0:0] out_lm12012_mmul_avm_enable,
    output wire [0:0] out_lm12012_mmul_avm_read,
    output wire [0:0] out_lm12012_mmul_avm_write,
    output wire [31:0] out_lm12012_mmul_avm_writedata,
    output wire [3:0] out_lm12012_mmul_avm_byteenable,
    output wire [0:0] out_lm12012_mmul_avm_burstcount,
    input wire [31:0] in_lm11210_mmul_avm_readdata,
    input wire [0:0] in_lm11210_mmul_avm_writeack,
    input wire [0:0] in_lm11210_mmul_avm_waitrequest,
    input wire [0:0] in_lm11210_mmul_avm_readdatavalid,
    output wire [31:0] out_lm12413_mmul_avm_address,
    output wire [0:0] out_lm12413_mmul_avm_enable,
    output wire [0:0] out_lm12413_mmul_avm_read,
    output wire [0:0] out_lm12413_mmul_avm_write,
    output wire [31:0] out_lm12413_mmul_avm_writedata,
    output wire [3:0] out_lm12413_mmul_avm_byteenable,
    output wire [0:0] out_lm12413_mmul_avm_burstcount,
    input wire [31:0] in_lm11611_mmul_avm_readdata,
    input wire [0:0] in_lm11611_mmul_avm_writeack,
    input wire [0:0] in_lm11611_mmul_avm_waitrequest,
    input wire [0:0] in_lm11611_mmul_avm_readdatavalid,
    output wire [31:0] out_lm12814_mmul_avm_address,
    output wire [0:0] out_lm12814_mmul_avm_enable,
    output wire [0:0] out_lm12814_mmul_avm_read,
    output wire [0:0] out_lm12814_mmul_avm_write,
    output wire [31:0] out_lm12814_mmul_avm_writedata,
    output wire [3:0] out_lm12814_mmul_avm_byteenable,
    output wire [0:0] out_lm12814_mmul_avm_burstcount,
    input wire [31:0] in_lm12012_mmul_avm_readdata,
    input wire [0:0] in_lm12012_mmul_avm_writeack,
    input wire [0:0] in_lm12012_mmul_avm_waitrequest,
    input wire [0:0] in_lm12012_mmul_avm_readdatavalid,
    output wire [31:0] out_lm13215_mmul_avm_address,
    output wire [0:0] out_lm13215_mmul_avm_enable,
    output wire [0:0] out_lm13215_mmul_avm_read,
    output wire [0:0] out_lm13215_mmul_avm_write,
    output wire [31:0] out_lm13215_mmul_avm_writedata,
    output wire [3:0] out_lm13215_mmul_avm_byteenable,
    output wire [0:0] out_lm13215_mmul_avm_burstcount,
    input wire [31:0] in_lm12413_mmul_avm_readdata,
    input wire [0:0] in_lm12413_mmul_avm_writeack,
    input wire [0:0] in_lm12413_mmul_avm_waitrequest,
    input wire [0:0] in_lm12413_mmul_avm_readdatavalid,
    output wire [31:0] out_lm13616_mmul_avm_address,
    output wire [0:0] out_lm13616_mmul_avm_enable,
    output wire [0:0] out_lm13616_mmul_avm_read,
    output wire [0:0] out_lm13616_mmul_avm_write,
    output wire [31:0] out_lm13616_mmul_avm_writedata,
    output wire [3:0] out_lm13616_mmul_avm_byteenable,
    output wire [0:0] out_lm13616_mmul_avm_burstcount,
    input wire [31:0] in_lm12814_mmul_avm_readdata,
    input wire [0:0] in_lm12814_mmul_avm_writeack,
    input wire [0:0] in_lm12814_mmul_avm_waitrequest,
    input wire [0:0] in_lm12814_mmul_avm_readdatavalid,
    output wire [31:0] out_lm14017_mmul_avm_address,
    output wire [0:0] out_lm14017_mmul_avm_enable,
    output wire [0:0] out_lm14017_mmul_avm_read,
    output wire [0:0] out_lm14017_mmul_avm_write,
    output wire [31:0] out_lm14017_mmul_avm_writedata,
    output wire [3:0] out_lm14017_mmul_avm_byteenable,
    output wire [0:0] out_lm14017_mmul_avm_burstcount,
    input wire [31:0] in_lm13215_mmul_avm_readdata,
    input wire [0:0] in_lm13215_mmul_avm_writeack,
    input wire [0:0] in_lm13215_mmul_avm_waitrequest,
    input wire [0:0] in_lm13215_mmul_avm_readdatavalid,
    output wire [31:0] out_lm14418_mmul_avm_address,
    output wire [0:0] out_lm14418_mmul_avm_enable,
    output wire [0:0] out_lm14418_mmul_avm_read,
    output wire [0:0] out_lm14418_mmul_avm_write,
    output wire [31:0] out_lm14418_mmul_avm_writedata,
    output wire [3:0] out_lm14418_mmul_avm_byteenable,
    output wire [0:0] out_lm14418_mmul_avm_burstcount,
    input wire [31:0] in_lm13616_mmul_avm_readdata,
    input wire [0:0] in_lm13616_mmul_avm_writeack,
    input wire [0:0] in_lm13616_mmul_avm_waitrequest,
    input wire [0:0] in_lm13616_mmul_avm_readdatavalid,
    output wire [31:0] out_lm14819_mmul_avm_address,
    output wire [0:0] out_lm14819_mmul_avm_enable,
    output wire [0:0] out_lm14819_mmul_avm_read,
    output wire [0:0] out_lm14819_mmul_avm_write,
    output wire [31:0] out_lm14819_mmul_avm_writedata,
    output wire [3:0] out_lm14819_mmul_avm_byteenable,
    output wire [0:0] out_lm14819_mmul_avm_burstcount,
    input wire [31:0] in_lm14017_mmul_avm_readdata,
    input wire [0:0] in_lm14017_mmul_avm_writeack,
    input wire [0:0] in_lm14017_mmul_avm_waitrequest,
    input wire [0:0] in_lm14017_mmul_avm_readdatavalid,
    output wire [31:0] out_lm15220_mmul_avm_address,
    output wire [0:0] out_lm15220_mmul_avm_enable,
    output wire [0:0] out_lm15220_mmul_avm_read,
    output wire [0:0] out_lm15220_mmul_avm_write,
    output wire [31:0] out_lm15220_mmul_avm_writedata,
    output wire [3:0] out_lm15220_mmul_avm_byteenable,
    output wire [0:0] out_lm15220_mmul_avm_burstcount,
    input wire [31:0] in_lm14418_mmul_avm_readdata,
    input wire [0:0] in_lm14418_mmul_avm_writeack,
    input wire [0:0] in_lm14418_mmul_avm_waitrequest,
    input wire [0:0] in_lm14418_mmul_avm_readdatavalid,
    output wire [31:0] out_lm15621_mmul_avm_address,
    output wire [0:0] out_lm15621_mmul_avm_enable,
    output wire [0:0] out_lm15621_mmul_avm_read,
    output wire [0:0] out_lm15621_mmul_avm_write,
    output wire [31:0] out_lm15621_mmul_avm_writedata,
    output wire [3:0] out_lm15621_mmul_avm_byteenable,
    output wire [0:0] out_lm15621_mmul_avm_burstcount,
    input wire [31:0] in_lm14819_mmul_avm_readdata,
    input wire [0:0] in_lm14819_mmul_avm_writeack,
    input wire [0:0] in_lm14819_mmul_avm_waitrequest,
    input wire [0:0] in_lm14819_mmul_avm_readdatavalid,
    output wire [31:0] out_lm16022_mmul_avm_address,
    output wire [0:0] out_lm16022_mmul_avm_enable,
    output wire [0:0] out_lm16022_mmul_avm_read,
    output wire [0:0] out_lm16022_mmul_avm_write,
    output wire [31:0] out_lm16022_mmul_avm_writedata,
    output wire [3:0] out_lm16022_mmul_avm_byteenable,
    output wire [0:0] out_lm16022_mmul_avm_burstcount,
    input wire [31:0] in_lm15220_mmul_avm_readdata,
    input wire [0:0] in_lm15220_mmul_avm_writeack,
    input wire [0:0] in_lm15220_mmul_avm_waitrequest,
    input wire [0:0] in_lm15220_mmul_avm_readdatavalid,
    output wire [31:0] out_lm16423_mmul_avm_address,
    output wire [0:0] out_lm16423_mmul_avm_enable,
    output wire [0:0] out_lm16423_mmul_avm_read,
    output wire [0:0] out_lm16423_mmul_avm_write,
    output wire [31:0] out_lm16423_mmul_avm_writedata,
    output wire [3:0] out_lm16423_mmul_avm_byteenable,
    output wire [0:0] out_lm16423_mmul_avm_burstcount,
    input wire [31:0] in_lm15621_mmul_avm_readdata,
    input wire [0:0] in_lm15621_mmul_avm_writeack,
    input wire [0:0] in_lm15621_mmul_avm_waitrequest,
    input wire [0:0] in_lm15621_mmul_avm_readdatavalid,
    output wire [31:0] out_lm16824_mmul_avm_address,
    output wire [0:0] out_lm16824_mmul_avm_enable,
    output wire [0:0] out_lm16824_mmul_avm_read,
    output wire [0:0] out_lm16824_mmul_avm_write,
    output wire [31:0] out_lm16824_mmul_avm_writedata,
    output wire [3:0] out_lm16824_mmul_avm_byteenable,
    output wire [0:0] out_lm16824_mmul_avm_burstcount,
    input wire [31:0] in_lm16022_mmul_avm_readdata,
    input wire [0:0] in_lm16022_mmul_avm_writeack,
    input wire [0:0] in_lm16022_mmul_avm_waitrequest,
    input wire [0:0] in_lm16022_mmul_avm_readdatavalid,
    output wire [31:0] out_lm17225_mmul_avm_address,
    output wire [0:0] out_lm17225_mmul_avm_enable,
    output wire [0:0] out_lm17225_mmul_avm_read,
    output wire [0:0] out_lm17225_mmul_avm_write,
    output wire [31:0] out_lm17225_mmul_avm_writedata,
    output wire [3:0] out_lm17225_mmul_avm_byteenable,
    output wire [0:0] out_lm17225_mmul_avm_burstcount,
    input wire [31:0] in_lm16423_mmul_avm_readdata,
    input wire [0:0] in_lm16423_mmul_avm_writeack,
    input wire [0:0] in_lm16423_mmul_avm_waitrequest,
    input wire [0:0] in_lm16423_mmul_avm_readdatavalid,
    output wire [31:0] out_lm17626_mmul_avm_address,
    output wire [0:0] out_lm17626_mmul_avm_enable,
    output wire [0:0] out_lm17626_mmul_avm_read,
    output wire [0:0] out_lm17626_mmul_avm_write,
    output wire [31:0] out_lm17626_mmul_avm_writedata,
    output wire [3:0] out_lm17626_mmul_avm_byteenable,
    output wire [0:0] out_lm17626_mmul_avm_burstcount,
    input wire [31:0] in_lm16824_mmul_avm_readdata,
    input wire [0:0] in_lm16824_mmul_avm_writeack,
    input wire [0:0] in_lm16824_mmul_avm_waitrequest,
    input wire [0:0] in_lm16824_mmul_avm_readdatavalid,
    output wire [31:0] out_lm18027_mmul_avm_address,
    output wire [0:0] out_lm18027_mmul_avm_enable,
    output wire [0:0] out_lm18027_mmul_avm_read,
    output wire [0:0] out_lm18027_mmul_avm_write,
    output wire [31:0] out_lm18027_mmul_avm_writedata,
    output wire [3:0] out_lm18027_mmul_avm_byteenable,
    output wire [0:0] out_lm18027_mmul_avm_burstcount,
    input wire [31:0] in_lm17225_mmul_avm_readdata,
    input wire [0:0] in_lm17225_mmul_avm_writeack,
    input wire [0:0] in_lm17225_mmul_avm_waitrequest,
    input wire [0:0] in_lm17225_mmul_avm_readdatavalid,
    output wire [31:0] out_lm18428_mmul_avm_address,
    output wire [0:0] out_lm18428_mmul_avm_enable,
    output wire [0:0] out_lm18428_mmul_avm_read,
    output wire [0:0] out_lm18428_mmul_avm_write,
    output wire [31:0] out_lm18428_mmul_avm_writedata,
    output wire [3:0] out_lm18428_mmul_avm_byteenable,
    output wire [0:0] out_lm18428_mmul_avm_burstcount,
    input wire [31:0] in_lm17626_mmul_avm_readdata,
    input wire [0:0] in_lm17626_mmul_avm_writeack,
    input wire [0:0] in_lm17626_mmul_avm_waitrequest,
    input wire [0:0] in_lm17626_mmul_avm_readdatavalid,
    output wire [31:0] out_lm18829_mmul_avm_address,
    output wire [0:0] out_lm18829_mmul_avm_enable,
    output wire [0:0] out_lm18829_mmul_avm_read,
    output wire [0:0] out_lm18829_mmul_avm_write,
    output wire [31:0] out_lm18829_mmul_avm_writedata,
    output wire [3:0] out_lm18829_mmul_avm_byteenable,
    output wire [0:0] out_lm18829_mmul_avm_burstcount,
    input wire [31:0] in_lm18027_mmul_avm_readdata,
    input wire [0:0] in_lm18027_mmul_avm_writeack,
    input wire [0:0] in_lm18027_mmul_avm_waitrequest,
    input wire [0:0] in_lm18027_mmul_avm_readdatavalid,
    output wire [31:0] out_lm19230_mmul_avm_address,
    output wire [0:0] out_lm19230_mmul_avm_enable,
    output wire [0:0] out_lm19230_mmul_avm_read,
    output wire [0:0] out_lm19230_mmul_avm_write,
    output wire [31:0] out_lm19230_mmul_avm_writedata,
    output wire [3:0] out_lm19230_mmul_avm_byteenable,
    output wire [0:0] out_lm19230_mmul_avm_burstcount,
    input wire [31:0] in_lm18428_mmul_avm_readdata,
    input wire [0:0] in_lm18428_mmul_avm_writeack,
    input wire [0:0] in_lm18428_mmul_avm_waitrequest,
    input wire [0:0] in_lm18428_mmul_avm_readdatavalid,
    output wire [31:0] out_lm19631_mmul_avm_address,
    output wire [0:0] out_lm19631_mmul_avm_enable,
    output wire [0:0] out_lm19631_mmul_avm_read,
    output wire [0:0] out_lm19631_mmul_avm_write,
    output wire [31:0] out_lm19631_mmul_avm_writedata,
    output wire [3:0] out_lm19631_mmul_avm_byteenable,
    output wire [0:0] out_lm19631_mmul_avm_burstcount,
    input wire [31:0] in_lm18829_mmul_avm_readdata,
    input wire [0:0] in_lm18829_mmul_avm_writeack,
    input wire [0:0] in_lm18829_mmul_avm_waitrequest,
    input wire [0:0] in_lm18829_mmul_avm_readdatavalid,
    output wire [31:0] out_lm20032_mmul_avm_address,
    output wire [0:0] out_lm20032_mmul_avm_enable,
    output wire [0:0] out_lm20032_mmul_avm_read,
    output wire [0:0] out_lm20032_mmul_avm_write,
    output wire [31:0] out_lm20032_mmul_avm_writedata,
    output wire [3:0] out_lm20032_mmul_avm_byteenable,
    output wire [0:0] out_lm20032_mmul_avm_burstcount,
    input wire [31:0] in_lm19230_mmul_avm_readdata,
    input wire [0:0] in_lm19230_mmul_avm_writeack,
    input wire [0:0] in_lm19230_mmul_avm_waitrequest,
    input wire [0:0] in_lm19230_mmul_avm_readdatavalid,
    output wire [31:0] out_lm20433_mmul_avm_address,
    output wire [0:0] out_lm20433_mmul_avm_enable,
    output wire [0:0] out_lm20433_mmul_avm_read,
    output wire [0:0] out_lm20433_mmul_avm_write,
    output wire [31:0] out_lm20433_mmul_avm_writedata,
    output wire [3:0] out_lm20433_mmul_avm_byteenable,
    output wire [0:0] out_lm20433_mmul_avm_burstcount,
    input wire [31:0] in_lm19631_mmul_avm_readdata,
    input wire [0:0] in_lm19631_mmul_avm_writeack,
    input wire [0:0] in_lm19631_mmul_avm_waitrequest,
    input wire [0:0] in_lm19631_mmul_avm_readdatavalid,
    output wire [0:0] out_wgl_1_exit_exit_valid_in,
    output wire [0:0] out_wgl_1_exit_exit_stall_in,
    input wire [31:0] in_lm20032_mmul_avm_readdata,
    input wire [0:0] in_lm20032_mmul_avm_writeack,
    input wire [0:0] in_lm20032_mmul_avm_waitrequest,
    input wire [0:0] in_lm20032_mmul_avm_readdatavalid,
    input wire [31:0] in_lm20433_mmul_avm_readdata,
    input wire [0:0] in_lm20433_mmul_avm_writeack,
    input wire [0:0] in_lm20433_mmul_avm_waitrequest,
    input wire [0:0] in_lm20433_mmul_avm_readdatavalid,
    input wire [0:0] in_wgl_1_exit_exit_valid_out,
    input wire [0:0] in_wgl_1_exit_exit_stall_out,
    input wire [31:0] in_barrier_unnamed_mmul6_wgs_workgroup_size,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_135_q;
    wire [31:0] c_i32_3234_q;
    wire [31:0] c_i32_undef33_q;
    wire [32:0] i_add16_mmul7_a;
    wire [32:0] i_add16_mmul7_b;
    logic [32:0] i_add16_mmul7_o;
    wire [32:0] i_add16_mmul7_q;
    wire [32:0] i_add23_mmul8_a;
    wire [32:0] i_add23_mmul8_b;
    logic [32:0] i_add23_mmul8_o;
    wire [32:0] i_add23_mmul8_q;
    wire [32:0] i_add43_mmul4_a;
    wire [32:0] i_add43_mmul4_b;
    logic [32:0] i_add43_mmul4_o;
    wire [32:0] i_add43_mmul4_q;
    wire [32:0] i_add44_mmul6_a;
    wire [32:0] i_add44_mmul6_b;
    logic [32:0] i_add44_mmul6_o;
    wire [32:0] i_add44_mmul6_q;
    wire [1:0] i_arrayidx2573_mmul17_vt_const_1_q;
    wire [63:0] i_arrayidx2573_mmul17_vt_join_q;
    wire [61:0] i_arrayidx2573_mmul17_vt_select_63_b;
    wire [63:0] i_arrayidx72_mmul16_vt_join_q;
    wire [61:0] i_arrayidx72_mmul16_vt_select_63_b;
    wire [0:0] i_barrier_dep_mmul26_q;
    wire [33:0] i_cmp_mmul11_a;
    wire [33:0] i_cmp_mmul11_b;
    logic [33:0] i_cmp_mmul11_o;
    wire [0:0] i_cmp_mmul11_c;
    wire [63:0] i_idxprom24_mmul13_vt_join_q;
    wire [31:0] i_idxprom24_mmul13_vt_select_31_b;
    wire [63:0] i_idxprom_mmul12_vt_join_q;
    wire [31:0] i_idxprom_mmul12_vt_select_31_b;
    wire [32:0] i_inc46_mmul5_a;
    wire [32:0] i_inc46_mmul5_b;
    logic [32:0] i_inc46_mmul5_o;
    wire [32:0] i_inc46_mmul5_q;
    wire [31:0] i_inc46_mmul5_vt_join_q;
    wire [30:0] i_inc46_mmul5_vt_select_30_b;
    wire [63:0] i_l_grpid_0_ext_mmul9_vt_join_q;
    wire [31:0] i_l_grpid_0_ext_mmul9_vt_select_31_b;
    wire [6:0] i_l_grpid_0_ext_offset_mmul14_vt_const_6_q;
    wire [24:0] i_l_grpid_0_ext_offset_mmul14_vt_const_63_q;
    wire [63:0] i_l_grpid_0_ext_offset_mmul14_vt_join_q;
    wire [31:0] i_l_grpid_0_ext_offset_mmul14_vt_select_38_b;
    wire [63:0] i_l_grpid_1_ext_mmul10_vt_join_q;
    wire [31:0] i_l_grpid_1_ext_mmul10_vt_select_31_b;
    wire [11:0] i_l_grpid_1_ext_offset_mmul15_vt_const_11_q;
    wire [19:0] i_l_grpid_1_ext_offset_mmul15_vt_const_63_q;
    wire [63:0] i_l_grpid_1_ext_offset_mmul15_vt_join_q;
    wire [31:0] i_l_grpid_1_ext_offset_mmul15_vt_select_43_b;
    wire [30:0] i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm76_mmul19_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm76_mmul19_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm76_mmul19_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm_mmul18_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_mmul18_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_mmul18_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_burstcount;
    wire [127:0] i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_write;
    wire [1023:0] i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_95_mmul24_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_95_mmul24_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_95_mmul24_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul25_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul25_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_mmul25_out_o_writeack;
    wire [0:0] i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_out_data_exit;
    wire [0:0] i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_out_stall_entry;
    wire [0:0] i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_out_valid_exit;
    wire [0:0] i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul31_out_stall_entry;
    wire [0:0] i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul31_out_valid_exit;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_vt_select_63_b;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_o_data;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_o_stall;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_o_valid;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_wgl_0_enter_exit_stall_out;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_wgl_0_enter_exit_valid_out;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_o_data;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_o_stall;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_o_valid;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_wgl_1_enter_exit_stall_out;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_wgl_1_enter_exit_valid_out;
    wire [31:0] bgTrunc_i_add16_mmul7_sel_x_b;
    wire [31:0] bgTrunc_i_add23_mmul8_sel_x_b;
    wire [31:0] bgTrunc_i_add43_mmul4_sel_x_b;
    wire [31:0] bgTrunc_i_add44_mmul6_sel_x_b;
    wire [31:0] bgTrunc_i_inc46_mmul5_sel_x_b;
    wire [64:0] i_arrayidx2573_mmul0_add_x_a;
    wire [64:0] i_arrayidx2573_mmul0_add_x_b;
    logic [64:0] i_arrayidx2573_mmul0_add_x_o;
    wire [64:0] i_arrayidx2573_mmul0_add_x_q;
    wire [61:0] i_arrayidx2573_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx2573_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx2573_mmul0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx72_mmul0_add_x_a;
    wire [64:0] i_arrayidx72_mmul0_add_x_b;
    logic [64:0] i_arrayidx72_mmul0_add_x_o;
    wire [64:0] i_arrayidx72_mmul0_add_x_q;
    wire [61:0] i_arrayidx72_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx72_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx72_mmul0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom24_mmul13_sel_x_b;
    wire [63:0] i_idxprom_mmul12_sel_x_b;
    wire [63:0] i_l_grpid_0_ext_mmul9_sel_x_b;
    wire [63:0] i_l_grpid_1_ext_mmul10_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount;
    wire [127:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write;
    wire [1023:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_0_exit_exit_stall_in;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_0_exit_exit_valid_in;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_1_exit_exit_stall_in;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_1_exit_exit_valid_in;
    wire [0:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl;
    wire [0:0] mmul_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] mmul_B1_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] mmul_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] mmul_B1_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] mmul_B1_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] mmul_B1_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] mmul_B1_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] mmul_B1_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] mmul_B1_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [63:0] mmul_B1_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [63:0] mmul_B1_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [63:0] mmul_B1_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [63:0] mmul_B1_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [63:0] mmul_B1_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] mmul_B1_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [62:0] leftShiftStage0Idx1Rng1_uid242_i_l_grpid_0_ext_offset_mmul0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid242_i_l_grpid_0_ext_offset_mmul0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid243_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
    wire [0:0] leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x_s;
    reg [63:0] leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
    wire [61:0] leftShiftStage1Idx1Rng2_uid247_i_l_grpid_0_ext_offset_mmul0_shift_x_in;
    wire [61:0] leftShiftStage1Idx1Rng2_uid247_i_l_grpid_0_ext_offset_mmul0_shift_x_b;
    wire [63:0] leftShiftStage1Idx1_uid248_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
    wire [0:0] leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x_s;
    reg [63:0] leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
    wire [3:0] leftShiftStage2Idx1Pad4_uid251_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
    wire [59:0] leftShiftStage2Idx1Rng4_uid252_i_l_grpid_0_ext_offset_mmul0_shift_x_in;
    wire [59:0] leftShiftStage2Idx1Rng4_uid252_i_l_grpid_0_ext_offset_mmul0_shift_x_b;
    wire [63:0] leftShiftStage2Idx1_uid253_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
    wire [0:0] leftShiftStage2_uid255_i_l_grpid_0_ext_offset_mmul0_shift_x_s;
    reg [63:0] leftShiftStage2_uid255_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
    wire [59:0] leftShiftStage0Idx1Rng4_uid260_i_l_grpid_1_ext_offset_mmul0_shift_x_in;
    wire [59:0] leftShiftStage0Idx1Rng4_uid260_i_l_grpid_1_ext_offset_mmul0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid261_i_l_grpid_1_ext_offset_mmul0_shift_x_q;
    wire [0:0] leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x_s;
    reg [63:0] leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x_q;
    wire [7:0] leftShiftStage1Idx1Pad8_uid264_i_l_grpid_1_ext_offset_mmul0_shift_x_q;
    wire [55:0] leftShiftStage1Idx1Rng8_uid265_i_l_grpid_1_ext_offset_mmul0_shift_x_in;
    wire [55:0] leftShiftStage1Idx1Rng8_uid265_i_l_grpid_1_ext_offset_mmul0_shift_x_b;
    wire [63:0] leftShiftStage1Idx1_uid266_i_l_grpid_1_ext_offset_mmul0_shift_x_q;
    wire [0:0] leftShiftStage1_uid268_i_l_grpid_1_ext_offset_mmul0_shift_x_s;
    reg [63:0] leftShiftStage1_uid268_i_l_grpid_1_ext_offset_mmul0_shift_x_q;
    wire [128:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [127:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [287:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [63:0] sel_for_coalesced_delay_2_c;
    wire [31:0] sel_for_coalesced_delay_2_d;
    wire [31:0] sel_for_coalesced_delay_2_e;
    wire [31:0] sel_for_coalesced_delay_2_f;
    wire [31:0] sel_for_coalesced_delay_2_g;
    wire [31:0] sel_for_coalesced_delay_2_h;
    wire [96:0] join_for_coalesced_delay_3_q;
    wire [63:0] sel_for_coalesced_delay_3_b;
    wire [31:0] sel_for_coalesced_delay_3_c;
    wire [0:0] sel_for_coalesced_delay_3_d;
    wire [127:0] join_for_coalesced_delay_4_q;
    wire [63:0] sel_for_coalesced_delay_4_b;
    wire [63:0] sel_for_coalesced_delay_4_c;
    wire [191:0] join_for_coalesced_delay_5_q;
    wire [63:0] sel_for_coalesced_delay_5_b;
    wire [63:0] sel_for_coalesced_delay_5_c;
    wire [31:0] sel_for_coalesced_delay_5_d;
    wire [31:0] sel_for_coalesced_delay_5_e;
    wire [0:0] redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_in;
    wire redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_in;
    wire redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_data_in;
    wire [0:0] redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_out;
    wire redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_out;
    wire redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_data_out;
    wire [0:0] redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_in;
    wire redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_in;
    wire redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_data_in;
    wire [0:0] redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_out;
    wire redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_out;
    wire redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_data_out;
    wire [0:0] redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_in;
    wire redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_in;
    wire redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_in_bitsignaltemp;
    wire [30:0] redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_data_in;
    wire [0:0] redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_out;
    wire redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_out;
    wire redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_out_bitsignaltemp;
    wire [30:0] redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [128:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [128:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [127:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [127:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [287:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [287:0] coalesced_delay_2_fifo_data_out;
    wire [0:0] coalesced_delay_3_fifo_valid_in;
    wire coalesced_delay_3_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_3_fifo_stall_in;
    wire coalesced_delay_3_fifo_stall_in_bitsignaltemp;
    wire [96:0] coalesced_delay_3_fifo_data_in;
    wire [0:0] coalesced_delay_3_fifo_valid_out;
    wire coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_3_fifo_stall_out;
    wire coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    wire [96:0] coalesced_delay_3_fifo_data_out;
    wire [0:0] coalesced_delay_4_fifo_valid_in;
    wire coalesced_delay_4_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_4_fifo_stall_in;
    wire coalesced_delay_4_fifo_stall_in_bitsignaltemp;
    wire [127:0] coalesced_delay_4_fifo_data_in;
    wire [0:0] coalesced_delay_4_fifo_valid_out;
    wire coalesced_delay_4_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_4_fifo_stall_out;
    wire coalesced_delay_4_fifo_stall_out_bitsignaltemp;
    wire [127:0] coalesced_delay_4_fifo_data_out;
    wire [0:0] coalesced_delay_5_fifo_valid_in;
    wire coalesced_delay_5_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_5_fifo_stall_in;
    wire coalesced_delay_5_fifo_stall_in_bitsignaltemp;
    wire [191:0] coalesced_delay_5_fifo_data_in;
    wire [0:0] coalesced_delay_5_fifo_valid_out;
    wire coalesced_delay_5_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_5_fifo_stall_out;
    wire coalesced_delay_5_fifo_stall_out_bitsignaltemp;
    wire [191:0] coalesced_delay_5_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm76_mmul19_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm76_mmul19_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm_mmul18_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm_mmul18_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_95_mmul24_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_95_mmul24_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_mmul25_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_mmul25_b;
    wire [0:0] bubble_join_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_q;
    wire [0:0] bubble_select_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_b;
    wire [31:0] bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_q;
    wire [31:0] bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_b;
    wire [31:0] bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_q;
    wire [31:0] bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_b;
    wire [576:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [63:0] bubble_select_stall_entry_m;
    wire [63:0] bubble_select_stall_entry_n;
    wire [63:0] bubble_select_stall_entry_o;
    wire [32:0] bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_c;
    wire [576:0] bubble_join_mmul_B1_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_mmul_B1_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_mmul_B1_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_mmul_B1_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_mmul_B1_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_mmul_B1_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_mmul_B1_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_mmul_B1_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_mmul_B1_merge_reg_aunroll_x_i;
    wire [63:0] bubble_select_mmul_B1_merge_reg_aunroll_x_j;
    wire [63:0] bubble_select_mmul_B1_merge_reg_aunroll_x_k;
    wire [63:0] bubble_select_mmul_B1_merge_reg_aunroll_x_l;
    wire [63:0] bubble_select_mmul_B1_merge_reg_aunroll_x_m;
    wire [63:0] bubble_select_mmul_B1_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_mmul_B1_merge_reg_aunroll_x_o;
    wire [0:0] bubble_join_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_q;
    wire [0:0] bubble_select_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_b;
    wire [31:0] bubble_join_redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_q;
    wire [31:0] bubble_select_redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_b;
    wire [30:0] bubble_join_redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_q;
    wire [30:0] bubble_select_redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_b;
    wire [128:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [128:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [127:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [127:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [287:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [287:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [96:0] bubble_join_coalesced_delay_3_fifo_q;
    wire [96:0] bubble_select_coalesced_delay_3_fifo_b;
    wire [127:0] bubble_join_coalesced_delay_4_fifo_q;
    wire [127:0] bubble_select_coalesced_delay_4_fifo_b;
    wire [191:0] bubble_join_coalesced_delay_5_fifo_q;
    wire [191:0] bubble_select_coalesced_delay_5_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm76_mmul19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm76_mmul19_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm76_mmul19_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm76_mmul19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm76_mmul19_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_mmul18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_mmul18_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_mmul18_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_mmul18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_mmul18_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul25_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_mmul25_V0;
    wire [0:0] SE_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_V0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_or0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_V0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_V1;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_or0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_V0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_V1;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_V9;
    wire [0:0] SE_join_for_coalesced_delay_3_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_3_and0;
    wire [0:0] SE_join_for_coalesced_delay_3_backStall;
    wire [0:0] SE_join_for_coalesced_delay_3_V0;
    wire [0:0] SE_join_for_coalesced_delay_5_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_5_and0;
    wire [0:0] SE_join_for_coalesced_delay_5_backStall;
    wire [0:0] SE_join_for_coalesced_delay_5_V0;
    wire [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_wireValid;
    wire [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_wireStall;
    wire [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_StallValid;
    wire [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_toReg0;
    reg [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_fromReg0;
    wire [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_consumed0;
    wire [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_toReg1;
    reg [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_fromReg1;
    wire [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_consumed1;
    wire [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_or0;
    wire [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_backStall;
    wire [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_V0;
    wire [0:0] SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg2;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg3;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V3;
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
    wire [0:0] SE_out_coalesced_delay_4_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_4_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_4_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_4_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_4_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_4_fifo_and4;
    wire [0:0] SE_out_coalesced_delay_4_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_4_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_5_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_5_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_5_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_5_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_5_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_5_fifo_V0;
    wire [0:0] SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_4_V0;
    wire [0:0] bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_in;
    wire bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_in;
    wire bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_data_in;
    wire [0:0] bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_out;
    wire bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_out;
    wire bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_data_out;
    wire [0:0] bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;


    // bubble_join_i_llvm_fpga_mem_lm_mmul18(BITJOIN,325)
    assign bubble_join_i_llvm_fpga_mem_lm_mmul18_q = i_llvm_fpga_mem_lm_mmul18_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm_mmul18(BITSELECT,326)
    assign bubble_select_i_llvm_fpga_mem_lm_mmul18_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm_mmul18_q[31:0]);

    // bubble_join_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27(BITJOIN,334)
    assign bubble_join_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_q = i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_out_data_exit;

    // bubble_join_coalesced_delay_5_fifo(BITJOIN,388)
    assign bubble_join_coalesced_delay_5_fifo_q = coalesced_delay_5_fifo_data_out;

    // bubble_select_coalesced_delay_5_fifo(BITSELECT,389)
    assign bubble_select_coalesced_delay_5_fifo_b = $unsigned(bubble_join_coalesced_delay_5_fifo_q[191:0]);

    // sel_for_coalesced_delay_5(BITSELECT,311)
    assign sel_for_coalesced_delay_5_b = $unsigned(bubble_select_coalesced_delay_5_fifo_b[63:0]);
    assign sel_for_coalesced_delay_5_c = $unsigned(bubble_select_coalesced_delay_5_fifo_b[127:64]);
    assign sel_for_coalesced_delay_5_d = $unsigned(bubble_select_coalesced_delay_5_fifo_b[159:128]);
    assign sel_for_coalesced_delay_5_e = $unsigned(bubble_select_coalesced_delay_5_fifo_b[191:160]);

    // bubble_select_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27(BITSELECT,335)
    assign bubble_select_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_b = $unsigned(bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_data_out[0:0]);

    // redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo(STALLFIFO,312)
    assign redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_in = SE_out_coalesced_delay_0_fifo_V2;
    assign redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_in = SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_backStall;
    assign redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_data_in = sel_for_coalesced_delay_0_d;
    assign redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_in_bitsignaltemp = redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_in[0];
    assign redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_in_bitsignaltemp = redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_in[0];
    assign redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_out[0] = redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_out_bitsignaltemp;
    assign redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_out[0] = redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(132),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo (
        .valid_in(redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_in_bitsignaltemp),
        .data_in(sel_for_coalesced_delay_0_d),
        .valid_out(redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo(BITJOIN,364)
    assign bubble_join_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_q = redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_data_out;

    // bubble_select_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo(BITSELECT,365)
    assign bubble_select_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_b = $unsigned(bubble_join_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_q[0:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,376)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,377)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[127:0]);

    // sel_for_coalesced_delay_1(BITSELECT,299)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:96]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x(BITJOIN,354)
    assign bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_q = {i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl, i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x(BITSELECT,355)
    assign bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_q[32:1]);

    // join_for_coalesced_delay_3(BITJOIN,304)
    assign join_for_coalesced_delay_3_q = {bubble_select_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_b, sel_for_coalesced_delay_1_d, sel_for_coalesced_delay_1_b};

    // SE_join_for_coalesced_delay_3(STALLENABLE,483)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_3_V0 = SE_join_for_coalesced_delay_3_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_3_backStall = coalesced_delay_3_fifo_stall_out | ~ (SE_join_for_coalesced_delay_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_3_and0 = SE_out_coalesced_delay_1_fifo_V1;
    assign SE_join_for_coalesced_delay_3_wireValid = SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_V1 & SE_join_for_coalesced_delay_3_and0;

    // coalesced_delay_3_fifo(STALLFIFO,318)
    assign coalesced_delay_3_fifo_valid_in = SE_join_for_coalesced_delay_3_V0;
    assign coalesced_delay_3_fifo_stall_in = SE_out_coalesced_delay_4_fifo_backStall;
    assign coalesced_delay_3_fifo_data_in = join_for_coalesced_delay_3_q;
    assign coalesced_delay_3_fifo_valid_in_bitsignaltemp = coalesced_delay_3_fifo_valid_in[0];
    assign coalesced_delay_3_fifo_stall_in_bitsignaltemp = coalesced_delay_3_fifo_stall_in[0];
    assign coalesced_delay_3_fifo_valid_out[0] = coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_3_fifo_stall_out[0] = coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(237),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(97),
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

    // join_for_coalesced_delay_4(BITJOIN,307)
    assign join_for_coalesced_delay_4_q = {sel_for_coalesced_delay_0_c, sel_for_coalesced_delay_0_b};

    // coalesced_delay_4_fifo(STALLFIFO,319)
    assign coalesced_delay_4_fifo_valid_in = SE_out_coalesced_delay_0_fifo_V3;
    assign coalesced_delay_4_fifo_stall_in = SE_out_coalesced_delay_4_fifo_backStall;
    assign coalesced_delay_4_fifo_data_in = join_for_coalesced_delay_4_q;
    assign coalesced_delay_4_fifo_valid_in_bitsignaltemp = coalesced_delay_4_fifo_valid_in[0];
    assign coalesced_delay_4_fifo_stall_in_bitsignaltemp = coalesced_delay_4_fifo_stall_in[0];
    assign coalesced_delay_4_fifo_valid_out[0] = coalesced_delay_4_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_4_fifo_stall_out[0] = coalesced_delay_4_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(368),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(128),
        .IMPL("ram")
    ) thecoalesced_delay_4_fifo (
        .valid_in(coalesced_delay_4_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_4_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_4_q),
        .valid_out(coalesced_delay_4_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_4_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_4_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_4_fifo(STALLENABLE,504)
    // Valid signal propagation
    assign SE_out_coalesced_delay_4_fifo_V0 = SE_out_coalesced_delay_4_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_4_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_4_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_4_fifo_and0 = coalesced_delay_4_fifo_valid_out;
    assign SE_out_coalesced_delay_4_fifo_and1 = coalesced_delay_3_fifo_valid_out & SE_out_coalesced_delay_4_fifo_and0;
    assign SE_out_coalesced_delay_4_fifo_and2 = coalesced_delay_2_fifo_valid_out & SE_out_coalesced_delay_4_fifo_and1;
    assign SE_out_coalesced_delay_4_fifo_and3 = redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_out & SE_out_coalesced_delay_4_fifo_and2;
    assign SE_out_coalesced_delay_4_fifo_and4 = redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_out & SE_out_coalesced_delay_4_fifo_and3;
    assign SE_out_coalesced_delay_4_fifo_wireValid = i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul31_out_valid_exit & SE_out_coalesced_delay_4_fifo_and4;

    // redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo(STALLFIFO,313)
    assign redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_V1;
    assign redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_in = SE_out_coalesced_delay_4_fifo_backStall;
    assign redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_c;
    assign redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_in_bitsignaltemp = redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_in[0];
    assign redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_in_bitsignaltemp = redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_in[0];
    assign redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_out[0] = redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_out_bitsignaltemp;
    assign redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_out[0] = redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(131),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo (
        .valid_in(redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_c),
        .valid_out(redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul31(BLACKBOX,62)@398
    // in in_stall_exit@20000000
    // out out_data_exit@528
    // out out_stall_entry@20000000
    // out out_valid_exit@528
    mmul_i_llvm_fpga_simple_barrier_unnamed_6_mmul0 thei_llvm_fpga_simple_barrier_unnamed_mmul6_mmul31 (
        .in_data_entry(bubble_select_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_b),
        .in_stall_exit(SE_out_coalesced_delay_4_fifo_backStall),
        .in_valid_entry(SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_V0),
        .in_workgroup_size(in_barrier_unnamed_mmul6_wgs_workgroup_size),
        .out_data_exit(),
        .out_stall_entry(i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul31_out_stall_entry),
        .out_valid_exit(i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul31_out_valid_exit),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x(STALLENABLE,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_consumed0 = (~ (i_llvm_fpga_simple_barrier_unnamed_mmul6_mmul31_out_stall_entry) & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_consumed1 = (~ (redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x(BLACKBOX,219)@292
    // in in_i_stall@20000000
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
    // out out_o_stall@20000000
    // out out_o_valid@398
    // out out_wgl_0_exit_exit_stall_in@20000000
    // out out_wgl_0_exit_exit_valid_in@20000000
    // out out_wgl_1_exit_exit_stall_in@20000000
    // out out_wgl_1_exit_exit_valid_in@20000000
    // out out_c0_exit139_0_tpl@398
    // out out_c0_exit139_1_tpl@398
    // out out_c0_exit139_2_tpl@398
    mmul_i_sfc_s_c0_in_for_body_s_c0_enter13281_mmul29 thei_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_backStall),
        .in_i_valid(SE_out_coalesced_delay_5_fifo_V0),
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
        .in_c0_eni9_0_tpl(GND_q),
        .in_c0_eni9_1_tpl(sel_for_coalesced_delay_1_b),
        .in_c0_eni9_2_tpl(bubble_select_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_b),
        .in_c0_eni9_3_tpl(bubble_select_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_b),
        .in_c0_eni9_4_tpl(sel_for_coalesced_delay_5_c),
        .in_c0_eni9_5_tpl(sel_for_coalesced_delay_5_e),
        .in_c0_eni9_6_tpl(sel_for_coalesced_delay_1_d),
        .in_c0_eni9_7_tpl(sel_for_coalesced_delay_5_b),
        .in_c0_eni9_8_tpl(sel_for_coalesced_delay_5_d),
        .in_c0_eni9_9_tpl(sel_for_coalesced_delay_1_c),
        .out_lm1007_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_address),
        .out_lm1007_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_burstcount),
        .out_lm1007_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_byteenable),
        .out_lm1007_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_enable),
        .out_lm1007_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_read),
        .out_lm1007_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_write),
        .out_lm1007_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_writedata),
        .out_lm1048_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_address),
        .out_lm1048_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_burstcount),
        .out_lm1048_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_byteenable),
        .out_lm1048_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_enable),
        .out_lm1048_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_read),
        .out_lm1048_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_write),
        .out_lm1048_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_writedata),
        .out_lm1089_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_address),
        .out_lm1089_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_burstcount),
        .out_lm1089_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_byteenable),
        .out_lm1089_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_enable),
        .out_lm1089_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_read),
        .out_lm1089_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_write),
        .out_lm1089_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_writedata),
        .out_lm11210_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_address),
        .out_lm11210_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_burstcount),
        .out_lm11210_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_byteenable),
        .out_lm11210_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_enable),
        .out_lm11210_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_read),
        .out_lm11210_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_write),
        .out_lm11210_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_writedata),
        .out_lm11611_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_address),
        .out_lm11611_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_burstcount),
        .out_lm11611_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_byteenable),
        .out_lm11611_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_enable),
        .out_lm11611_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_read),
        .out_lm11611_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_write),
        .out_lm11611_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_writedata),
        .out_lm12012_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_address),
        .out_lm12012_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_burstcount),
        .out_lm12012_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_byteenable),
        .out_lm12012_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_enable),
        .out_lm12012_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_read),
        .out_lm12012_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_write),
        .out_lm12012_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_writedata),
        .out_lm12413_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_address),
        .out_lm12413_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_burstcount),
        .out_lm12413_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_byteenable),
        .out_lm12413_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_enable),
        .out_lm12413_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_read),
        .out_lm12413_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_write),
        .out_lm12413_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_writedata),
        .out_lm12814_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_address),
        .out_lm12814_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_burstcount),
        .out_lm12814_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_byteenable),
        .out_lm12814_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_enable),
        .out_lm12814_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_read),
        .out_lm12814_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_write),
        .out_lm12814_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_writedata),
        .out_lm13215_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_address),
        .out_lm13215_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_burstcount),
        .out_lm13215_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_byteenable),
        .out_lm13215_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_enable),
        .out_lm13215_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_read),
        .out_lm13215_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_write),
        .out_lm13215_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_writedata),
        .out_lm13616_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_address),
        .out_lm13616_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_burstcount),
        .out_lm13616_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_byteenable),
        .out_lm13616_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_enable),
        .out_lm13616_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_read),
        .out_lm13616_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_write),
        .out_lm13616_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_writedata),
        .out_lm14017_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_address),
        .out_lm14017_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_burstcount),
        .out_lm14017_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_byteenable),
        .out_lm14017_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_enable),
        .out_lm14017_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_read),
        .out_lm14017_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_write),
        .out_lm14017_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_writedata),
        .out_lm14418_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_address),
        .out_lm14418_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_burstcount),
        .out_lm14418_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_byteenable),
        .out_lm14418_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_enable),
        .out_lm14418_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_read),
        .out_lm14418_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_write),
        .out_lm14418_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_writedata),
        .out_lm14819_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_address),
        .out_lm14819_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_burstcount),
        .out_lm14819_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_byteenable),
        .out_lm14819_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_enable),
        .out_lm14819_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_read),
        .out_lm14819_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_write),
        .out_lm14819_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_writedata),
        .out_lm15220_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_address),
        .out_lm15220_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_burstcount),
        .out_lm15220_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_byteenable),
        .out_lm15220_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_enable),
        .out_lm15220_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_read),
        .out_lm15220_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_write),
        .out_lm15220_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_writedata),
        .out_lm15621_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_address),
        .out_lm15621_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_burstcount),
        .out_lm15621_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_byteenable),
        .out_lm15621_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_enable),
        .out_lm15621_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_read),
        .out_lm15621_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_write),
        .out_lm15621_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_writedata),
        .out_lm16022_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_address),
        .out_lm16022_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_burstcount),
        .out_lm16022_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_byteenable),
        .out_lm16022_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_enable),
        .out_lm16022_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_read),
        .out_lm16022_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_write),
        .out_lm16022_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_writedata),
        .out_lm16423_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_address),
        .out_lm16423_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_burstcount),
        .out_lm16423_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_byteenable),
        .out_lm16423_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_enable),
        .out_lm16423_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_read),
        .out_lm16423_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_write),
        .out_lm16423_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_writedata),
        .out_lm16824_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_address),
        .out_lm16824_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_burstcount),
        .out_lm16824_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_byteenable),
        .out_lm16824_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_enable),
        .out_lm16824_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_read),
        .out_lm16824_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_write),
        .out_lm16824_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_writedata),
        .out_lm17225_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_address),
        .out_lm17225_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_burstcount),
        .out_lm17225_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_byteenable),
        .out_lm17225_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_enable),
        .out_lm17225_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_read),
        .out_lm17225_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_write),
        .out_lm17225_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_writedata),
        .out_lm17626_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_address),
        .out_lm17626_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_burstcount),
        .out_lm17626_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_byteenable),
        .out_lm17626_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_enable),
        .out_lm17626_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_read),
        .out_lm17626_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_write),
        .out_lm17626_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_writedata),
        .out_lm18027_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_address),
        .out_lm18027_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_burstcount),
        .out_lm18027_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_byteenable),
        .out_lm18027_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_enable),
        .out_lm18027_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_read),
        .out_lm18027_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_write),
        .out_lm18027_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_writedata),
        .out_lm18428_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_address),
        .out_lm18428_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_burstcount),
        .out_lm18428_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_byteenable),
        .out_lm18428_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_enable),
        .out_lm18428_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_read),
        .out_lm18428_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_write),
        .out_lm18428_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_writedata),
        .out_lm18829_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_address),
        .out_lm18829_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_burstcount),
        .out_lm18829_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_byteenable),
        .out_lm18829_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_enable),
        .out_lm18829_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_read),
        .out_lm18829_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_write),
        .out_lm18829_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_writedata),
        .out_lm19230_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_address),
        .out_lm19230_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_burstcount),
        .out_lm19230_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_byteenable),
        .out_lm19230_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_enable),
        .out_lm19230_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_read),
        .out_lm19230_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_write),
        .out_lm19230_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_writedata),
        .out_lm19631_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_address),
        .out_lm19631_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_burstcount),
        .out_lm19631_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_byteenable),
        .out_lm19631_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_enable),
        .out_lm19631_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_read),
        .out_lm19631_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_write),
        .out_lm19631_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_writedata),
        .out_lm20032_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_address),
        .out_lm20032_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_burstcount),
        .out_lm20032_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_byteenable),
        .out_lm20032_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_enable),
        .out_lm20032_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_read),
        .out_lm20032_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_write),
        .out_lm20032_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_writedata),
        .out_lm20433_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_address),
        .out_lm20433_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_burstcount),
        .out_lm20433_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_byteenable),
        .out_lm20433_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_enable),
        .out_lm20433_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_read),
        .out_lm20433_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_write),
        .out_lm20433_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_writedata),
        .out_lm802_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_address),
        .out_lm802_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_burstcount),
        .out_lm802_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_byteenable),
        .out_lm802_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_enable),
        .out_lm802_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_read),
        .out_lm802_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_write),
        .out_lm802_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_writedata),
        .out_lm843_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_address),
        .out_lm843_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_burstcount),
        .out_lm843_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_byteenable),
        .out_lm843_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_enable),
        .out_lm843_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_read),
        .out_lm843_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_write),
        .out_lm843_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_writedata),
        .out_lm884_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_address),
        .out_lm884_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_burstcount),
        .out_lm884_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_byteenable),
        .out_lm884_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_enable),
        .out_lm884_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_read),
        .out_lm884_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_write),
        .out_lm884_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_writedata),
        .out_lm925_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_address),
        .out_lm925_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_burstcount),
        .out_lm925_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_byteenable),
        .out_lm925_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_enable),
        .out_lm925_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_read),
        .out_lm925_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_write),
        .out_lm925_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_writedata),
        .out_lm966_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_address),
        .out_lm966_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_burstcount),
        .out_lm966_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_byteenable),
        .out_lm966_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_enable),
        .out_lm966_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_read),
        .out_lm966_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_write),
        .out_lm966_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_writedata),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_o_valid),
        .out_wgl_0_exit_exit_stall_in(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_0_exit_exit_stall_in),
        .out_wgl_0_exit_exit_valid_in(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_0_exit_exit_valid_in),
        .out_wgl_1_exit_exit_stall_in(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_1_exit_exit_stall_in),
        .out_wgl_1_exit_exit_valid_in(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_1_exit_exit_valid_in),
        .out_c0_exit139_0_tpl(),
        .out_c0_exit139_1_tpl(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_1_tpl),
        .out_c0_exit139_2_tpl(i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo(STALLENABLE,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_fromReg0 <= '0;
            SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_fromReg0 <= SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_toReg0;
            // Successor 1
            SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_fromReg1 <= SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_consumed0 = (~ (SE_out_coalesced_delay_5_fifo_backStall) & SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_wireValid) | SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_fromReg0;
    assign SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_consumed1 = (~ (SE_join_for_coalesced_delay_3_backStall) & SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_wireValid) | SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_fromReg1;
    // Consuming
    assign SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_StallValid = SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_backStall & SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_wireValid;
    assign SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_toReg0 = SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_StallValid & SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_consumed0;
    assign SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_toReg1 = SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_StallValid & SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_or0 = SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_consumed0;
    assign SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_wireStall = ~ (SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_consumed1 & SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_or0);
    assign SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_backStall = SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_V0 = SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_wireValid & ~ (SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_fromReg0);
    assign SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_V1 = SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_wireValid & ~ (SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_wireValid = redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_valid_out;

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,498)
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
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (SE_out_coalesced_delay_5_fifo_backStall) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (SE_join_for_coalesced_delay_3_backStall) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
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

    // bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1(BITJOIN,344)
    assign bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_q = i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_o_data;

    // bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1(BITSELECT,345)
    assign bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_b = $unsigned(bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_q[31:0]);

    // SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_4(STALLENABLE,566)
    // Valid signal propagation
    assign SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_o_stall | ~ (SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_4_wireValid = bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_out;

    // i_add23_mmul8(ADD,18)@1
    assign i_add23_mmul8_a = {1'b0, bubble_select_mmul_B1_merge_reg_aunroll_x_i};
    assign i_add23_mmul8_b = {1'b0, bubble_select_mmul_B1_merge_reg_aunroll_x_b};
    assign i_add23_mmul8_o = $unsigned(i_add23_mmul8_a) + $unsigned(i_add23_mmul8_b);
    assign i_add23_mmul8_q = i_add23_mmul8_o[32:0];

    // bgTrunc_i_add23_mmul8_sel_x(BITSELECT,106)@1
    assign bgTrunc_i_add23_mmul8_sel_x_b = i_add23_mmul8_q[31:0];

    // i_idxprom24_mmul13_sel_x(BITSELECT,207)@1
    assign i_idxprom24_mmul13_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add23_mmul8_sel_x_b[31:0]};

    // i_idxprom24_mmul13_vt_select_31(BITSELECT,32)@1
    assign i_idxprom24_mmul13_vt_select_31_b = i_idxprom24_mmul13_sel_x_b[31:0];

    // i_idxprom24_mmul13_vt_join(BITJOIN,31)@1
    assign i_idxprom24_mmul13_vt_join_q = {c_i32_undef33_q, i_idxprom24_mmul13_vt_select_31_b};

    // i_arrayidx2573_mmul0_narrow_x(BITSELECT,197)@1
    assign i_arrayidx2573_mmul0_narrow_x_b = i_idxprom24_mmul13_vt_join_q[61:0];

    // i_arrayidx2573_mmul0_shift_join_x(BITJOIN,198)@1
    assign i_arrayidx2573_mmul0_shift_join_x_q = {i_arrayidx2573_mmul0_narrow_x_b, i_arrayidx2573_mmul17_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2(BITJOIN,341)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_q = i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2(BITSELECT,342)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_vt_select_63(BITSELECT,70)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_const_9(CONSTANT,64)
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_vt_join(BITJOIN,69)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_const_9_q};

    // i_arrayidx2573_mmul0_add_x(ADD,195)@1
    assign i_arrayidx2573_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_vt_join_q};
    assign i_arrayidx2573_mmul0_add_x_b = {1'b0, i_arrayidx2573_mmul0_shift_join_x_q};
    assign i_arrayidx2573_mmul0_add_x_o = $unsigned(i_arrayidx2573_mmul0_add_x_a) + $unsigned(i_arrayidx2573_mmul0_add_x_b);
    assign i_arrayidx2573_mmul0_add_x_q = i_arrayidx2573_mmul0_add_x_o[64:0];

    // i_arrayidx2573_mmul0_dupName_0_trunc_sel_x(BITSELECT,200)@1
    assign i_arrayidx2573_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx2573_mmul0_add_x_q[63:0];

    // i_arrayidx2573_mmul17_vt_select_63(BITSELECT,23)@1
    assign i_arrayidx2573_mmul17_vt_select_63_b = i_arrayidx2573_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx2573_mmul17_vt_const_1(CONSTANT,21)
    assign i_arrayidx2573_mmul17_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx2573_mmul17_vt_join(BITJOIN,22)@1
    assign i_arrayidx2573_mmul17_vt_join_q = {i_arrayidx2573_mmul17_vt_select_63_b, i_arrayidx2573_mmul17_vt_const_1_q};

    // i_llvm_fpga_mem_lm76_mmul19(BLACKBOX,57)@1
    // in in_i_stall@20000000
    // out out_lm76_mmul_avm_address@20000000
    // out out_lm76_mmul_avm_burstcount@20000000
    // out out_lm76_mmul_avm_byteenable@20000000
    // out out_lm76_mmul_avm_enable@20000000
    // out out_lm76_mmul_avm_read@20000000
    // out out_lm76_mmul_avm_write@20000000
    // out out_lm76_mmul_avm_writedata@20000000
    // out out_o_readdata@161
    // out out_o_stall@20000000
    // out out_o_valid@161
    mmul_i_llvm_fpga_mem_lm76_0 thei_llvm_fpga_mem_lm76_mmul19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx2573_mmul17_vt_join_q),
        .in_i_predicate(bubble_select_mmul_B1_merge_reg_aunroll_x_h),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm76_mmul19_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_V0),
        .in_lm76_mmul_avm_readdata(in_lm76_mmul_avm_readdata),
        .in_lm76_mmul_avm_readdatavalid(in_lm76_mmul_avm_readdatavalid),
        .in_lm76_mmul_avm_waitrequest(in_lm76_mmul_avm_waitrequest),
        .in_lm76_mmul_avm_writeack(in_lm76_mmul_avm_writeack),
        .out_lm76_mmul_avm_address(i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_address),
        .out_lm76_mmul_avm_burstcount(i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_burstcount),
        .out_lm76_mmul_avm_byteenable(i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_byteenable),
        .out_lm76_mmul_avm_enable(i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_enable),
        .out_lm76_mmul_avm_read(i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_read),
        .out_lm76_mmul_avm_write(i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_write),
        .out_lm76_mmul_avm_writedata(i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm76_mmul19_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm76_mmul19_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm76_mmul19_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm76_mmul19(STALLENABLE,416)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm76_mmul19_V0 = SE_out_i_llvm_fpga_mem_lm76_mmul19_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm76_mmul19_backStall = i_llvm_fpga_mem_memdep_mmul25_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_lm76_mmul19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm76_mmul19_and0 = i_llvm_fpga_mem_lm76_mmul19_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm76_mmul19_and1 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_V0 & SE_out_i_llvm_fpga_mem_lm76_mmul19_and0;
    assign SE_out_i_llvm_fpga_mem_lm76_mmul19_wireValid = SE_out_coalesced_delay_0_fifo_V1 & SE_out_i_llvm_fpga_mem_lm76_mmul19_and1;

    // SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3(STALLENABLE,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_fromReg0 <= SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_fromReg1 <= SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_consumed0 = (~ (SE_out_i_llvm_fpga_mem_lm76_mmul19_backStall) & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_wireValid) | SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_fromReg0;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_consumed1 = (~ (SE_join_for_coalesced_delay_5_backStall) & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_wireValid) | SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_StallValid = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_backStall & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_wireValid;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_toReg0 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_StallValid & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_consumed0;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_toReg1 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_StallValid & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_or0 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_consumed0;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_wireStall = ~ (SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_consumed1 & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_or0);
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_backStall = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_V0 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_wireValid & ~ (SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_fromReg0);
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_V1 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_wireValid & ~ (SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_wireValid = i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_o_valid;

    // i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3(BLACKBOX,72)@160
    // in in_i_stall@20000000
    // out out_o_data@161
    // out out_o_stall@20000000
    // out out_o_valid@161
    // out out_wgl_1_enter_exit_stall_out@20000000
    // out out_wgl_1_enter_exit_valid_out@20000000
    mmul_i_llvm_fpga_wg_limiter_enter_l_grpid_1_0 thei_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3 (
        .in_i_data(c_i32_undef33_q),
        .in_i_stall(SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_backStall),
        .in_i_valid(SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_4_V0),
        .in_wgl_1_enter_exit_stall_in(in_wgl_1_enter_exit_stall_in),
        .in_wgl_1_enter_exit_valid_in(in_wgl_1_enter_exit_valid_in),
        .in_wgl_1_wgs_wg_size(in_wgl_1_wgs_wg_size),
        .out_o_data(i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_o_data),
        .out_o_stall(i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_o_stall),
        .out_o_valid(i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_o_valid),
        .out_wgl_1_enter_exit_stall_out(i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_wgl_1_enter_exit_stall_out),
        .out_wgl_1_enter_exit_valid_out(i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_wgl_1_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3(BITJOIN,347)
    assign bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_q = i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_o_data;

    // bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3(BITSELECT,348)
    assign bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_b = $unsigned(bubble_join_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_q[31:0]);

    // i_l_grpid_1_ext_offset_mmul15_vt_const_63(CONSTANT,54)
    assign i_l_grpid_1_ext_offset_mmul15_vt_const_63_q = $unsigned(20'b00000000000000000000);

    // leftShiftStage1Idx1Rng8_uid265_i_l_grpid_1_ext_offset_mmul0_shift_x(BITSELECT,264)@161
    assign leftShiftStage1Idx1Rng8_uid265_i_l_grpid_1_ext_offset_mmul0_shift_x_in = leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x_q[55:0];
    assign leftShiftStage1Idx1Rng8_uid265_i_l_grpid_1_ext_offset_mmul0_shift_x_b = leftShiftStage1Idx1Rng8_uid265_i_l_grpid_1_ext_offset_mmul0_shift_x_in[55:0];

    // leftShiftStage1Idx1Pad8_uid264_i_l_grpid_1_ext_offset_mmul0_shift_x(CONSTANT,263)
    assign leftShiftStage1Idx1Pad8_uid264_i_l_grpid_1_ext_offset_mmul0_shift_x_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx1_uid266_i_l_grpid_1_ext_offset_mmul0_shift_x(BITJOIN,265)@161
    assign leftShiftStage1Idx1_uid266_i_l_grpid_1_ext_offset_mmul0_shift_x_q = {leftShiftStage1Idx1Rng8_uid265_i_l_grpid_1_ext_offset_mmul0_shift_x_b, leftShiftStage1Idx1Pad8_uid264_i_l_grpid_1_ext_offset_mmul0_shift_x_q};

    // leftShiftStage0Idx1Rng4_uid260_i_l_grpid_1_ext_offset_mmul0_shift_x(BITSELECT,259)@161
    assign leftShiftStage0Idx1Rng4_uid260_i_l_grpid_1_ext_offset_mmul0_shift_x_in = i_l_grpid_1_ext_mmul10_vt_join_q[59:0];
    assign leftShiftStage0Idx1Rng4_uid260_i_l_grpid_1_ext_offset_mmul0_shift_x_b = leftShiftStage0Idx1Rng4_uid260_i_l_grpid_1_ext_offset_mmul0_shift_x_in[59:0];

    // leftShiftStage2Idx1Pad4_uid251_i_l_grpid_0_ext_offset_mmul0_shift_x(CONSTANT,250)
    assign leftShiftStage2Idx1Pad4_uid251_i_l_grpid_0_ext_offset_mmul0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage0Idx1_uid261_i_l_grpid_1_ext_offset_mmul0_shift_x(BITJOIN,260)@161
    assign leftShiftStage0Idx1_uid261_i_l_grpid_1_ext_offset_mmul0_shift_x_q = {leftShiftStage0Idx1Rng4_uid260_i_l_grpid_1_ext_offset_mmul0_shift_x_b, leftShiftStage2Idx1Pad4_uid251_i_l_grpid_0_ext_offset_mmul0_shift_x_q};

    // i_l_grpid_1_ext_mmul10_sel_x(BITSELECT,214)@161
    assign i_l_grpid_1_ext_mmul10_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_b[31:0]};

    // i_l_grpid_1_ext_mmul10_vt_select_31(BITSELECT,52)@161
    assign i_l_grpid_1_ext_mmul10_vt_select_31_b = i_l_grpid_1_ext_mmul10_sel_x_b[31:0];

    // i_l_grpid_1_ext_mmul10_vt_join(BITJOIN,51)@161
    assign i_l_grpid_1_ext_mmul10_vt_join_q = {c_i32_undef33_q, i_l_grpid_1_ext_mmul10_vt_select_31_b};

    // leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x(MUX,262)@161
    assign leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x_s or i_l_grpid_1_ext_mmul10_vt_join_q or leftShiftStage0Idx1_uid261_i_l_grpid_1_ext_offset_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x_s)
            1'b0 : leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x_q = i_l_grpid_1_ext_mmul10_vt_join_q;
            1'b1 : leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x_q = leftShiftStage0Idx1_uid261_i_l_grpid_1_ext_offset_mmul0_shift_x_q;
            default : leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x_q = 64'b0;
        endcase
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage1_uid268_i_l_grpid_1_ext_offset_mmul0_shift_x(MUX,267)@161
    assign leftShiftStage1_uid268_i_l_grpid_1_ext_offset_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid268_i_l_grpid_1_ext_offset_mmul0_shift_x_s or leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x_q or leftShiftStage1Idx1_uid266_i_l_grpid_1_ext_offset_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid268_i_l_grpid_1_ext_offset_mmul0_shift_x_s)
            1'b0 : leftShiftStage1_uid268_i_l_grpid_1_ext_offset_mmul0_shift_x_q = leftShiftStage0_uid263_i_l_grpid_1_ext_offset_mmul0_shift_x_q;
            1'b1 : leftShiftStage1_uid268_i_l_grpid_1_ext_offset_mmul0_shift_x_q = leftShiftStage1Idx1_uid266_i_l_grpid_1_ext_offset_mmul0_shift_x_q;
            default : leftShiftStage1_uid268_i_l_grpid_1_ext_offset_mmul0_shift_x_q = 64'b0;
        endcase
    end

    // i_l_grpid_1_ext_offset_mmul15_vt_select_43(BITSELECT,56)@161
    assign i_l_grpid_1_ext_offset_mmul15_vt_select_43_b = leftShiftStage1_uid268_i_l_grpid_1_ext_offset_mmul0_shift_x_q[43:12];

    // i_l_grpid_1_ext_offset_mmul15_vt_const_11(CONSTANT,53)
    assign i_l_grpid_1_ext_offset_mmul15_vt_const_11_q = $unsigned(12'b000000000000);

    // i_l_grpid_1_ext_offset_mmul15_vt_join(BITJOIN,55)@161
    assign i_l_grpid_1_ext_offset_mmul15_vt_join_q = {i_l_grpid_1_ext_offset_mmul15_vt_const_63_q, i_l_grpid_1_ext_offset_mmul15_vt_select_43_b, i_l_grpid_1_ext_offset_mmul15_vt_const_11_q};

    // join_for_coalesced_delay_5(BITJOIN,310)
    assign join_for_coalesced_delay_5_q = {bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_b, bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_b, i_l_grpid_0_ext_offset_mmul14_vt_join_q, i_l_grpid_1_ext_offset_mmul15_vt_join_q};

    // SE_join_for_coalesced_delay_5(STALLENABLE,487)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_5_V0 = SE_join_for_coalesced_delay_5_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_5_backStall = coalesced_delay_5_fifo_stall_out | ~ (SE_join_for_coalesced_delay_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_5_and0 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_V1;
    assign SE_join_for_coalesced_delay_5_wireValid = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_V0 & SE_join_for_coalesced_delay_5_and0;

    // coalesced_delay_5_fifo(STALLFIFO,320)
    assign coalesced_delay_5_fifo_valid_in = SE_join_for_coalesced_delay_5_V0;
    assign coalesced_delay_5_fifo_stall_in = SE_out_coalesced_delay_5_fifo_backStall;
    assign coalesced_delay_5_fifo_data_in = join_for_coalesced_delay_5_q;
    assign coalesced_delay_5_fifo_valid_in_bitsignaltemp = coalesced_delay_5_fifo_valid_in[0];
    assign coalesced_delay_5_fifo_stall_in_bitsignaltemp = coalesced_delay_5_fifo_stall_in[0];
    assign coalesced_delay_5_fifo_valid_out[0] = coalesced_delay_5_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_5_fifo_stall_out[0] = coalesced_delay_5_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(132),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(192),
        .IMPL("ram")
    ) thecoalesced_delay_5_fifo (
        .valid_in(coalesced_delay_5_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_5_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_5_q),
        .valid_out(coalesced_delay_5_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_5_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_5_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_5_fifo(STALLENABLE,506)
    // Valid signal propagation
    assign SE_out_coalesced_delay_5_fifo_V0 = SE_out_coalesced_delay_5_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_5_fifo_backStall = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_5_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_5_fifo_and0 = coalesced_delay_5_fifo_valid_out;
    assign SE_out_coalesced_delay_5_fifo_and1 = bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_out & SE_out_coalesced_delay_5_fifo_and0;
    assign SE_out_coalesced_delay_5_fifo_and2 = SE_out_coalesced_delay_1_fifo_V0 & SE_out_coalesced_delay_5_fifo_and1;
    assign SE_out_coalesced_delay_5_fifo_wireValid = SE_out_redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_V0 & SE_out_coalesced_delay_5_fifo_and2;

    // bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg(STALLFIFO,603)
    assign bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_in = SE_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_V0;
    assign bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_in = SE_out_coalesced_delay_5_fifo_backStall;
    assign bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_data_in = bubble_join_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_q;
    assign bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_out[0] = bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_out[0] = bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("zl_reg")
    ) thebubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg (
        .valid_in(bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_q),
        .valid_out(bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27(STALLENABLE,424)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_V0 = SE_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_backStall = bubble_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_data_reg_stall_out | ~ (SE_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_wireValid = i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_out_valid_exit;

    // bubble_join_i_llvm_fpga_mem_memdep_95_mmul24(BITJOIN,328)
    assign bubble_join_i_llvm_fpga_mem_memdep_95_mmul24_q = i_llvm_fpga_mem_memdep_95_mmul24_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_95_mmul24(BITSELECT,329)
    assign bubble_select_i_llvm_fpga_mem_memdep_95_mmul24_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_95_mmul24_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_mmul25(BITJOIN,331)
    assign bubble_join_i_llvm_fpga_mem_memdep_mmul25_q = i_llvm_fpga_mem_memdep_mmul25_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_mmul25(BITSELECT,332)
    assign bubble_select_i_llvm_fpga_mem_memdep_mmul25_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_mmul25_q[0:0]);

    // i_barrier_dep_mmul26(LOGICAL,27)@162
    assign i_barrier_dep_mmul26_q = bubble_select_i_llvm_fpga_mem_memdep_mmul25_b | bubble_select_i_llvm_fpga_mem_memdep_95_mmul24_b;

    // i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27(BLACKBOX,61)@162
    // in in_stall_exit@20000000
    // out out_data_exit@292
    // out out_stall_entry@20000000
    // out out_valid_exit@292
    mmul_i_llvm_fpga_simple_barrier_unnamed_3_mmul0 thei_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27 (
        .in_data_entry(i_barrier_dep_mmul26_q),
        .in_stall_exit(SE_out_i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_backStall),
        .in_valid_entry(SE_out_i_llvm_fpga_mem_memdep_mmul25_V0),
        .in_workgroup_size(in_barrier_unnamed_mmul3_wgs_workgroup_size),
        .out_data_exit(i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_out_data_exit),
        .out_stall_entry(i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_out_stall_entry),
        .out_valid_exit(i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_out_valid_exit),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm76_mmul19(BITJOIN,322)
    assign bubble_join_i_llvm_fpga_mem_lm76_mmul19_q = i_llvm_fpga_mem_lm76_mmul19_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm76_mmul19(BITSELECT,323)
    assign bubble_select_i_llvm_fpga_mem_lm76_mmul19_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm76_mmul19_q[31:0]);

    // i_llvm_fpga_mem_memdep_mmul25(BLACKBOX,60)@161
    // in in_i_stall@20000000
    // out out_memdep_mmul_avm_address@20000000
    // out out_memdep_mmul_avm_burstcount@20000000
    // out out_memdep_mmul_avm_byteenable@20000000
    // out out_memdep_mmul_avm_enable@20000000
    // out out_memdep_mmul_avm_read@20000000
    // out out_memdep_mmul_avm_write@20000000
    // out out_memdep_mmul_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@162
    // out out_o_writeack@162
    mmul_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_mmul25 (
        .in_AddrOffset(i_l_grpid_1_ext_offset_mmul15_vt_join_q),
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_c),
        .in_i_predicate(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_mmul25_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_lm76_mmul19_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_lm76_mmul19_b),
        .in_memdep_mmul_avm_readdata(in_memdep_mmul_avm_readdata),
        .in_memdep_mmul_avm_readdatavalid(in_memdep_mmul_avm_readdatavalid),
        .in_memdep_mmul_avm_waitrequest(in_memdep_mmul_avm_waitrequest),
        .in_memdep_mmul_avm_writeack(in_memdep_mmul_avm_writeack),
        .out_memdep_mmul_avm_address(i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_address),
        .out_memdep_mmul_avm_burstcount(i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_burstcount),
        .out_memdep_mmul_avm_byteenable(i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_byteenable),
        .out_memdep_mmul_avm_enable(i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_enable),
        .out_memdep_mmul_avm_read(i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_read),
        .out_memdep_mmul_avm_write(i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_write),
        .out_memdep_mmul_avm_writedata(i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_mmul25_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_mmul25_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_mmul25_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_mmul25(STALLENABLE,422)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_mmul25_V0 = SE_out_i_llvm_fpga_mem_memdep_mmul25_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_mmul25_backStall = i_llvm_fpga_simple_barrier_unnamed_mmul3_mmul27_out_stall_entry | ~ (SE_out_i_llvm_fpga_mem_memdep_mmul25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_mmul25_and0 = i_llvm_fpga_mem_memdep_mmul25_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_memdep_mmul25_wireValid = i_llvm_fpga_mem_memdep_95_mmul24_out_o_valid & SE_out_i_llvm_fpga_mem_memdep_mmul25_and0;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,373)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,374)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[128:0]);

    // sel_for_coalesced_delay_0(BITSELECT,296)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[128:128]);

    // i_l_grpid_0_ext_offset_mmul14_vt_const_63(CONSTANT,46)
    assign i_l_grpid_0_ext_offset_mmul14_vt_const_63_q = $unsigned(25'b0000000000000000000000000);

    // leftShiftStage2Idx1Rng4_uid252_i_l_grpid_0_ext_offset_mmul0_shift_x(BITSELECT,251)@161
    assign leftShiftStage2Idx1Rng4_uid252_i_l_grpid_0_ext_offset_mmul0_shift_x_in = leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x_q[59:0];
    assign leftShiftStage2Idx1Rng4_uid252_i_l_grpid_0_ext_offset_mmul0_shift_x_b = leftShiftStage2Idx1Rng4_uid252_i_l_grpid_0_ext_offset_mmul0_shift_x_in[59:0];

    // leftShiftStage2Idx1_uid253_i_l_grpid_0_ext_offset_mmul0_shift_x(BITJOIN,252)@161
    assign leftShiftStage2Idx1_uid253_i_l_grpid_0_ext_offset_mmul0_shift_x_q = {leftShiftStage2Idx1Rng4_uid252_i_l_grpid_0_ext_offset_mmul0_shift_x_b, leftShiftStage2Idx1Pad4_uid251_i_l_grpid_0_ext_offset_mmul0_shift_x_q};

    // leftShiftStage1Idx1Rng2_uid247_i_l_grpid_0_ext_offset_mmul0_shift_x(BITSELECT,246)@161
    assign leftShiftStage1Idx1Rng2_uid247_i_l_grpid_0_ext_offset_mmul0_shift_x_in = leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x_q[61:0];
    assign leftShiftStage1Idx1Rng2_uid247_i_l_grpid_0_ext_offset_mmul0_shift_x_b = leftShiftStage1Idx1Rng2_uid247_i_l_grpid_0_ext_offset_mmul0_shift_x_in[61:0];

    // leftShiftStage1Idx1_uid248_i_l_grpid_0_ext_offset_mmul0_shift_x(BITJOIN,247)@161
    assign leftShiftStage1Idx1_uid248_i_l_grpid_0_ext_offset_mmul0_shift_x_q = {leftShiftStage1Idx1Rng2_uid247_i_l_grpid_0_ext_offset_mmul0_shift_x_b, i_arrayidx2573_mmul17_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid242_i_l_grpid_0_ext_offset_mmul0_shift_x(BITSELECT,241)@161
    assign leftShiftStage0Idx1Rng1_uid242_i_l_grpid_0_ext_offset_mmul0_shift_x_in = i_l_grpid_0_ext_mmul9_vt_join_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid242_i_l_grpid_0_ext_offset_mmul0_shift_x_b = leftShiftStage0Idx1Rng1_uid242_i_l_grpid_0_ext_offset_mmul0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid243_i_l_grpid_0_ext_offset_mmul0_shift_x(BITJOIN,242)@161
    assign leftShiftStage0Idx1_uid243_i_l_grpid_0_ext_offset_mmul0_shift_x_q = {leftShiftStage0Idx1Rng1_uid242_i_l_grpid_0_ext_offset_mmul0_shift_x_b, GND_q};

    // i_l_grpid_0_ext_mmul9_sel_x(BITSELECT,209)@161
    assign i_l_grpid_0_ext_mmul9_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_b[31:0]};

    // i_l_grpid_0_ext_mmul9_vt_select_31(BITSELECT,44)@161
    assign i_l_grpid_0_ext_mmul9_vt_select_31_b = i_l_grpid_0_ext_mmul9_sel_x_b[31:0];

    // i_l_grpid_0_ext_mmul9_vt_join(BITJOIN,43)@161
    assign i_l_grpid_0_ext_mmul9_vt_join_q = {c_i32_undef33_q, i_l_grpid_0_ext_mmul9_vt_select_31_b};

    // leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x(MUX,244)@161
    assign leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x_s or i_l_grpid_0_ext_mmul9_vt_join_q or leftShiftStage0Idx1_uid243_i_l_grpid_0_ext_offset_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x_s)
            1'b0 : leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x_q = i_l_grpid_0_ext_mmul9_vt_join_q;
            1'b1 : leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x_q = leftShiftStage0Idx1_uid243_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
            default : leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x(MUX,249)@161
    assign leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x_s or leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x_q or leftShiftStage1Idx1_uid248_i_l_grpid_0_ext_offset_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x_s)
            1'b0 : leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x_q = leftShiftStage0_uid245_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
            1'b1 : leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x_q = leftShiftStage1Idx1_uid248_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
            default : leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage2_uid255_i_l_grpid_0_ext_offset_mmul0_shift_x(MUX,254)@161
    assign leftShiftStage2_uid255_i_l_grpid_0_ext_offset_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage2_uid255_i_l_grpid_0_ext_offset_mmul0_shift_x_s or leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x_q or leftShiftStage2Idx1_uid253_i_l_grpid_0_ext_offset_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage2_uid255_i_l_grpid_0_ext_offset_mmul0_shift_x_s)
            1'b0 : leftShiftStage2_uid255_i_l_grpid_0_ext_offset_mmul0_shift_x_q = leftShiftStage1_uid250_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
            1'b1 : leftShiftStage2_uid255_i_l_grpid_0_ext_offset_mmul0_shift_x_q = leftShiftStage2Idx1_uid253_i_l_grpid_0_ext_offset_mmul0_shift_x_q;
            default : leftShiftStage2_uid255_i_l_grpid_0_ext_offset_mmul0_shift_x_q = 64'b0;
        endcase
    end

    // i_l_grpid_0_ext_offset_mmul14_vt_select_38(BITSELECT,48)@161
    assign i_l_grpid_0_ext_offset_mmul14_vt_select_38_b = leftShiftStage2_uid255_i_l_grpid_0_ext_offset_mmul0_shift_x_q[38:7];

    // i_l_grpid_0_ext_offset_mmul14_vt_const_6(CONSTANT,45)
    assign i_l_grpid_0_ext_offset_mmul14_vt_const_6_q = $unsigned(7'b0000000);

    // i_l_grpid_0_ext_offset_mmul14_vt_join(BITJOIN,47)@161
    assign i_l_grpid_0_ext_offset_mmul14_vt_join_q = {i_l_grpid_0_ext_offset_mmul14_vt_const_63_q, i_l_grpid_0_ext_offset_mmul14_vt_select_38_b, i_l_grpid_0_ext_offset_mmul14_vt_const_6_q};

    // i_llvm_fpga_mem_memdep_95_mmul24(BLACKBOX,59)@161
    // in in_i_stall@20000000
    // out out_memdep_95_mmul_avm_address@20000000
    // out out_memdep_95_mmul_avm_burstcount@20000000
    // out out_memdep_95_mmul_avm_byteenable@20000000
    // out out_memdep_95_mmul_avm_enable@20000000
    // out out_memdep_95_mmul_avm_read@20000000
    // out out_memdep_95_mmul_avm_write@20000000
    // out out_memdep_95_mmul_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@162
    // out out_o_writeack@162
    mmul_i_llvm_fpga_mem_memdep_95_0 thei_llvm_fpga_mem_memdep_95_mmul24 (
        .in_AddrOffset(i_l_grpid_0_ext_offset_mmul14_vt_join_q),
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_mmul25_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_lm_mmul18_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_lm_mmul18_b),
        .in_memdep_95_mmul_avm_readdata(in_memdep_95_mmul_avm_readdata),
        .in_memdep_95_mmul_avm_readdatavalid(in_memdep_95_mmul_avm_readdatavalid),
        .in_memdep_95_mmul_avm_waitrequest(in_memdep_95_mmul_avm_waitrequest),
        .in_memdep_95_mmul_avm_writeack(in_memdep_95_mmul_avm_writeack),
        .out_memdep_95_mmul_avm_address(i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_address),
        .out_memdep_95_mmul_avm_burstcount(i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_burstcount),
        .out_memdep_95_mmul_avm_byteenable(i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_byteenable),
        .out_memdep_95_mmul_avm_enable(i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_enable),
        .out_memdep_95_mmul_avm_read(i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_read),
        .out_memdep_95_mmul_avm_write(i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_write),
        .out_memdep_95_mmul_avm_writedata(i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_95_mmul24_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_95_mmul24_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_95_mmul24_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg2 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
            // Successor 2
            SE_out_coalesced_delay_0_fifo_fromReg2 <= SE_out_coalesced_delay_0_fifo_toReg2;
            // Successor 3
            SE_out_coalesced_delay_0_fifo_fromReg3 <= SE_out_coalesced_delay_0_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_lm_mmul18_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_mem_lm76_mmul19_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    assign SE_out_coalesced_delay_0_fifo_consumed2 = (~ (redist6_mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl_291_fifo_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg2;
    assign SE_out_coalesced_delay_0_fifo_consumed3 = (~ (coalesced_delay_4_fifo_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg3;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    assign SE_out_coalesced_delay_0_fifo_toReg2 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed2;
    assign SE_out_coalesced_delay_0_fifo_toReg3 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_or1 = SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0;
    assign SE_out_coalesced_delay_0_fifo_or2 = SE_out_coalesced_delay_0_fifo_consumed2 & SE_out_coalesced_delay_0_fifo_or1;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed3 & SE_out_coalesced_delay_0_fifo_or2);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    assign SE_out_coalesced_delay_0_fifo_V2 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg2);
    assign SE_out_coalesced_delay_0_fifo_V3 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // SE_out_i_llvm_fpga_mem_lm_mmul18(STALLENABLE,418)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm_mmul18_V0 = SE_out_i_llvm_fpga_mem_lm_mmul18_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm_mmul18_backStall = i_llvm_fpga_mem_memdep_95_mmul24_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_lm_mmul18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm_mmul18_and0 = i_llvm_fpga_mem_lm_mmul18_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm_mmul18_and1 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_V1 & SE_out_i_llvm_fpga_mem_lm_mmul18_and0;
    assign SE_out_i_llvm_fpga_mem_lm_mmul18_wireValid = SE_out_coalesced_delay_0_fifo_V0 & SE_out_i_llvm_fpga_mem_lm_mmul18_and1;

    // bubble_join_mmul_B1_merge_reg_aunroll_x(BITJOIN,357)
    assign bubble_join_mmul_B1_merge_reg_aunroll_x_q = {mmul_B1_merge_reg_aunroll_x_out_data_out_13_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_12_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_11_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_10_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_9_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_8_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_7_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_5_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_4_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_3_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_2_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_1_tpl, mmul_B1_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_mmul_B1_merge_reg_aunroll_x(BITSELECT,358)
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_c = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_d = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[95:64]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_e = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[127:96]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_f = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[159:128]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_g = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[191:160]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_h = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[192:192]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_i = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[224:193]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_j = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[288:225]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_k = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[352:289]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_l = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[416:353]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_m = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[480:417]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_n = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[544:481]);
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_o = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[576:545]);

    // i_add16_mmul7(ADD,17)@1
    assign i_add16_mmul7_a = {1'b0, bubble_select_mmul_B1_merge_reg_aunroll_x_i};
    assign i_add16_mmul7_b = {1'b0, bubble_select_mmul_B1_merge_reg_aunroll_x_c};
    assign i_add16_mmul7_o = $unsigned(i_add16_mmul7_a) + $unsigned(i_add16_mmul7_b);
    assign i_add16_mmul7_q = i_add16_mmul7_o[32:0];

    // bgTrunc_i_add16_mmul7_sel_x(BITSELECT,105)@1
    assign bgTrunc_i_add16_mmul7_sel_x_b = i_add16_mmul7_q[31:0];

    // i_idxprom_mmul12_sel_x(BITSELECT,208)@1
    assign i_idxprom_mmul12_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add16_mmul7_sel_x_b[31:0]};

    // i_idxprom_mmul12_vt_select_31(BITSELECT,36)@1
    assign i_idxprom_mmul12_vt_select_31_b = i_idxprom_mmul12_sel_x_b[31:0];

    // i_idxprom_mmul12_vt_join(BITJOIN,35)@1
    assign i_idxprom_mmul12_vt_join_q = {c_i32_undef33_q, i_idxprom_mmul12_vt_select_31_b};

    // i_arrayidx72_mmul0_narrow_x(BITSELECT,203)@1
    assign i_arrayidx72_mmul0_narrow_x_b = i_idxprom_mmul12_vt_join_q[61:0];

    // i_arrayidx72_mmul0_shift_join_x(BITJOIN,204)@1
    assign i_arrayidx72_mmul0_shift_join_x_q = {i_arrayidx72_mmul0_narrow_x_b, i_arrayidx2573_mmul17_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0(BITJOIN,338)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_q = i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0(BITSELECT,339)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_select_63(BITSELECT,66)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_join(BITJOIN,65)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_const_9_q};

    // i_arrayidx72_mmul0_add_x(ADD,201)@1
    assign i_arrayidx72_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_vt_join_q};
    assign i_arrayidx72_mmul0_add_x_b = {1'b0, i_arrayidx72_mmul0_shift_join_x_q};
    assign i_arrayidx72_mmul0_add_x_o = $unsigned(i_arrayidx72_mmul0_add_x_a) + $unsigned(i_arrayidx72_mmul0_add_x_b);
    assign i_arrayidx72_mmul0_add_x_q = i_arrayidx72_mmul0_add_x_o[64:0];

    // i_arrayidx72_mmul0_dupName_0_trunc_sel_x(BITSELECT,206)@1
    assign i_arrayidx72_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx72_mmul0_add_x_q[63:0];

    // i_arrayidx72_mmul16_vt_select_63(BITSELECT,26)@1
    assign i_arrayidx72_mmul16_vt_select_63_b = i_arrayidx72_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx72_mmul16_vt_join(BITJOIN,25)@1
    assign i_arrayidx72_mmul16_vt_join_q = {i_arrayidx72_mmul16_vt_select_63_b, i_arrayidx2573_mmul17_vt_const_1_q};

    // i_llvm_fpga_mem_lm_mmul18(BLACKBOX,58)@1
    // in in_i_stall@20000000
    // out out_lm_mmul_avm_address@20000000
    // out out_lm_mmul_avm_burstcount@20000000
    // out out_lm_mmul_avm_byteenable@20000000
    // out out_lm_mmul_avm_enable@20000000
    // out out_lm_mmul_avm_read@20000000
    // out out_lm_mmul_avm_write@20000000
    // out out_lm_mmul_avm_writedata@20000000
    // out out_o_readdata@161
    // out out_o_stall@20000000
    // out out_o_valid@161
    mmul_i_llvm_fpga_mem_lm_0 thei_llvm_fpga_mem_lm_mmul18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx72_mmul16_vt_join_q),
        .in_i_predicate(bubble_select_mmul_B1_merge_reg_aunroll_x_h),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm_mmul18_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_V0),
        .in_lm_mmul_avm_readdata(in_lm_mmul_avm_readdata),
        .in_lm_mmul_avm_readdatavalid(in_lm_mmul_avm_readdatavalid),
        .in_lm_mmul_avm_waitrequest(in_lm_mmul_avm_waitrequest),
        .in_lm_mmul_avm_writeack(in_lm_mmul_avm_writeack),
        .out_lm_mmul_avm_address(i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_address),
        .out_lm_mmul_avm_burstcount(i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_burstcount),
        .out_lm_mmul_avm_byteenable(i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_byteenable),
        .out_lm_mmul_avm_enable(i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_enable),
        .out_lm_mmul_avm_read(i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_read),
        .out_lm_mmul_avm_write(i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_write),
        .out_lm_mmul_avm_writedata(i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm_mmul18_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_mmul18_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_mmul18_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0(STALLENABLE,428)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_backStall = i_llvm_fpga_mem_lm_mmul18_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_and0 = i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_wireValid = SE_out_mmul_B1_merge_reg_aunroll_x_V9 & SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_and0;

    // SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2(STALLENABLE,432)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_backStall = i_llvm_fpga_mem_lm76_mmul19_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_and0 = i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_wireValid = SE_out_mmul_B1_merge_reg_aunroll_x_V8 & SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_and0;

    // c_i32_135(CONSTANT,8)
    assign c_i32_135_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc46_mmul5(ADD,37)@1
    assign i_inc46_mmul5_a = {1'b0, bubble_select_mmul_B1_merge_reg_aunroll_x_d};
    assign i_inc46_mmul5_b = {1'b0, c_i32_135_q};
    assign i_inc46_mmul5_o = $unsigned(i_inc46_mmul5_a) + $unsigned(i_inc46_mmul5_b);
    assign i_inc46_mmul5_q = i_inc46_mmul5_o[32:0];

    // bgTrunc_i_inc46_mmul5_sel_x(BITSELECT,109)@1
    assign bgTrunc_i_inc46_mmul5_sel_x_b = i_inc46_mmul5_q[31:0];

    // i_inc46_mmul5_vt_select_30(BITSELECT,40)@1
    assign i_inc46_mmul5_vt_select_30_b = bgTrunc_i_inc46_mmul5_sel_x_b[30:0];

    // redist24_i_inc46_mmul5_vt_select_30_b_527_fifo(STALLFIFO,314)
    assign redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_in = SE_out_mmul_B1_merge_reg_aunroll_x_V7;
    assign redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_in = SE_out_coalesced_delay_4_fifo_backStall;
    assign redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_data_in = i_inc46_mmul5_vt_select_30_b;
    assign redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_in_bitsignaltemp = redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_in[0];
    assign redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_in_bitsignaltemp = redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_in[0];
    assign redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_out[0] = redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_out_bitsignaltemp;
    assign redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_out[0] = redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(528),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(31),
        .IMPL("ram")
    ) theredist24_i_inc46_mmul5_vt_select_30_b_527_fifo (
        .valid_in(redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_in_bitsignaltemp),
        .data_in(i_inc46_mmul5_vt_select_30_b),
        .valid_out(redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_2(BITJOIN,301)
    assign join_for_coalesced_delay_2_q = {bubble_select_mmul_B1_merge_reg_aunroll_x_i, bubble_select_mmul_B1_merge_reg_aunroll_x_g, bubble_select_mmul_B1_merge_reg_aunroll_x_f, bubble_select_mmul_B1_merge_reg_aunroll_x_c, bubble_select_mmul_B1_merge_reg_aunroll_x_b, bubble_select_mmul_B1_merge_reg_aunroll_x_n, bubble_select_mmul_B1_merge_reg_aunroll_x_m};

    // coalesced_delay_2_fifo(STALLFIFO,317)
    assign coalesced_delay_2_fifo_valid_in = SE_out_mmul_B1_merge_reg_aunroll_x_V6;
    assign coalesced_delay_2_fifo_stall_in = SE_out_coalesced_delay_4_fifo_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(528),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(288),
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

    // join_for_coalesced_delay_1(BITJOIN,298)
    assign join_for_coalesced_delay_1_q = {bubble_select_mmul_B1_merge_reg_aunroll_x_o, bubble_select_mmul_B1_merge_reg_aunroll_x_e, bubble_select_mmul_B1_merge_reg_aunroll_x_l};

    // coalesced_delay_1_fifo(STALLFIFO,316)
    assign coalesced_delay_1_fifo_valid_in = SE_out_mmul_B1_merge_reg_aunroll_x_V5;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(292),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(128),
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

    // join_for_coalesced_delay_0(BITJOIN,295)
    assign join_for_coalesced_delay_0_q = {bubble_select_mmul_B1_merge_reg_aunroll_x_h, bubble_select_mmul_B1_merge_reg_aunroll_x_k, bubble_select_mmul_B1_merge_reg_aunroll_x_j};

    // coalesced_delay_0_fifo(STALLFIFO,315)
    assign coalesced_delay_0_fifo_valid_in = SE_out_mmul_B1_merge_reg_aunroll_x_V4;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(161),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(129),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg(STALLFIFO,605)
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_in = SE_out_mmul_B1_merge_reg_aunroll_x_V3;
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(160),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_mmul_B1_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2(BLACKBOX,67)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2 (
        .in_buffer_in(in_B),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_backStall),
        .in_valid_in(SE_out_mmul_B1_merge_reg_aunroll_x_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0(BLACKBOX,63)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmul_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0 (
        .in_buffer_in(in_A),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_backStall),
        .in_valid_in(SE_out_mmul_B1_merge_reg_aunroll_x_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,350)
    assign bubble_join_stall_entry_q = {in_c0_exe974, in_c0_exe873, in_c0_exe772, in_c0_exe671, in_c0_exe370, in_c0_exe269, in_c0_exe168, in_acl_local_id_080, in_acl_global_id_179, in_acl_global_id_077, in_Kblk_064, in_Ctmp_063, in_Bbase_066, in_Abase_065};

    // bubble_select_stall_entry(BITSELECT,351)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[127:96]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[191:128]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[255:192]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[287:256]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[319:288]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[351:320]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[352:352]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[384:353]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[448:385]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[512:449]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[576:513]);

    // SE_stall_entry(STALLENABLE,439)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = mmul_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // mmul_B1_merge_reg_aunroll_x(BLACKBOX,223)@0
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
    mmul_B1_merge_reg themmul_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_mmul_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_e),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_i),
        .in_data_in_5_tpl(bubble_select_stall_entry_j),
        .in_data_in_6_tpl(bubble_select_stall_entry_k),
        .in_data_in_7_tpl(bubble_select_stall_entry_l),
        .in_data_in_8_tpl(bubble_select_stall_entry_m),
        .in_data_in_9_tpl(bubble_select_stall_entry_n),
        .in_data_in_10_tpl(bubble_select_stall_entry_o),
        .in_data_in_11_tpl(bubble_select_stall_entry_f),
        .in_data_in_12_tpl(bubble_select_stall_entry_g),
        .in_data_in_13_tpl(bubble_select_stall_entry_h),
        .out_stall_out(mmul_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(mmul_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_13_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_mmul_B1_merge_reg_aunroll_x(STALLENABLE,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg9 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg0 <= SE_out_mmul_B1_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg1 <= SE_out_mmul_B1_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg2 <= SE_out_mmul_B1_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg3 <= SE_out_mmul_B1_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg4 <= SE_out_mmul_B1_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg5 <= SE_out_mmul_B1_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg6 <= SE_out_mmul_B1_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg7 <= SE_out_mmul_B1_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg8 <= SE_out_mmul_B1_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_mmul_B1_merge_reg_aunroll_x_fromReg9 <= SE_out_mmul_B1_merge_reg_aunroll_x_toReg9;
        end
    end
    // Input Stall processing
    assign SE_out_mmul_B1_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_out_stall_out) & SE_out_mmul_B1_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B1_merge_reg_aunroll_x_fromReg0;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_out_stall_out) & SE_out_mmul_B1_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B1_merge_reg_aunroll_x_fromReg1;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_mmul_B1_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B1_merge_reg_aunroll_x_fromReg2;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_mmul_B1_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_mmul_B1_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B1_merge_reg_aunroll_x_fromReg3;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_consumed4 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_mmul_B1_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B1_merge_reg_aunroll_x_fromReg4;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_consumed5 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_mmul_B1_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B1_merge_reg_aunroll_x_fromReg5;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_consumed6 = (~ (coalesced_delay_2_fifo_stall_out) & SE_out_mmul_B1_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B1_merge_reg_aunroll_x_fromReg6;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_consumed7 = (~ (redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_stall_out) & SE_out_mmul_B1_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B1_merge_reg_aunroll_x_fromReg7;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_consumed8 = (~ (SE_out_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul2_backStall) & SE_out_mmul_B1_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B1_merge_reg_aunroll_x_fromReg8;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_consumed9 = (~ (SE_out_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul0_backStall) & SE_out_mmul_B1_merge_reg_aunroll_x_wireValid) | SE_out_mmul_B1_merge_reg_aunroll_x_fromReg9;
    // Consuming
    assign SE_out_mmul_B1_merge_reg_aunroll_x_StallValid = SE_out_mmul_B1_merge_reg_aunroll_x_backStall & SE_out_mmul_B1_merge_reg_aunroll_x_wireValid;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_toReg0 = SE_out_mmul_B1_merge_reg_aunroll_x_StallValid & SE_out_mmul_B1_merge_reg_aunroll_x_consumed0;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_toReg1 = SE_out_mmul_B1_merge_reg_aunroll_x_StallValid & SE_out_mmul_B1_merge_reg_aunroll_x_consumed1;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_toReg2 = SE_out_mmul_B1_merge_reg_aunroll_x_StallValid & SE_out_mmul_B1_merge_reg_aunroll_x_consumed2;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_toReg3 = SE_out_mmul_B1_merge_reg_aunroll_x_StallValid & SE_out_mmul_B1_merge_reg_aunroll_x_consumed3;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_toReg4 = SE_out_mmul_B1_merge_reg_aunroll_x_StallValid & SE_out_mmul_B1_merge_reg_aunroll_x_consumed4;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_toReg5 = SE_out_mmul_B1_merge_reg_aunroll_x_StallValid & SE_out_mmul_B1_merge_reg_aunroll_x_consumed5;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_toReg6 = SE_out_mmul_B1_merge_reg_aunroll_x_StallValid & SE_out_mmul_B1_merge_reg_aunroll_x_consumed6;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_toReg7 = SE_out_mmul_B1_merge_reg_aunroll_x_StallValid & SE_out_mmul_B1_merge_reg_aunroll_x_consumed7;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_toReg8 = SE_out_mmul_B1_merge_reg_aunroll_x_StallValid & SE_out_mmul_B1_merge_reg_aunroll_x_consumed8;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_toReg9 = SE_out_mmul_B1_merge_reg_aunroll_x_StallValid & SE_out_mmul_B1_merge_reg_aunroll_x_consumed9;
    // Backward Stall generation
    assign SE_out_mmul_B1_merge_reg_aunroll_x_or0 = SE_out_mmul_B1_merge_reg_aunroll_x_consumed0;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_or1 = SE_out_mmul_B1_merge_reg_aunroll_x_consumed1 & SE_out_mmul_B1_merge_reg_aunroll_x_or0;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_or2 = SE_out_mmul_B1_merge_reg_aunroll_x_consumed2 & SE_out_mmul_B1_merge_reg_aunroll_x_or1;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_or3 = SE_out_mmul_B1_merge_reg_aunroll_x_consumed3 & SE_out_mmul_B1_merge_reg_aunroll_x_or2;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_or4 = SE_out_mmul_B1_merge_reg_aunroll_x_consumed4 & SE_out_mmul_B1_merge_reg_aunroll_x_or3;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_or5 = SE_out_mmul_B1_merge_reg_aunroll_x_consumed5 & SE_out_mmul_B1_merge_reg_aunroll_x_or4;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_or6 = SE_out_mmul_B1_merge_reg_aunroll_x_consumed6 & SE_out_mmul_B1_merge_reg_aunroll_x_or5;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_or7 = SE_out_mmul_B1_merge_reg_aunroll_x_consumed7 & SE_out_mmul_B1_merge_reg_aunroll_x_or6;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_or8 = SE_out_mmul_B1_merge_reg_aunroll_x_consumed8 & SE_out_mmul_B1_merge_reg_aunroll_x_or7;
    assign SE_out_mmul_B1_merge_reg_aunroll_x_wireStall = ~ (SE_out_mmul_B1_merge_reg_aunroll_x_consumed9 & SE_out_mmul_B1_merge_reg_aunroll_x_or8);
    assign SE_out_mmul_B1_merge_reg_aunroll_x_backStall = SE_out_mmul_B1_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_mmul_B1_merge_reg_aunroll_x_V0 = SE_out_mmul_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B1_merge_reg_aunroll_x_fromReg0);
    assign SE_out_mmul_B1_merge_reg_aunroll_x_V1 = SE_out_mmul_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B1_merge_reg_aunroll_x_fromReg1);
    assign SE_out_mmul_B1_merge_reg_aunroll_x_V2 = SE_out_mmul_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B1_merge_reg_aunroll_x_fromReg2);
    assign SE_out_mmul_B1_merge_reg_aunroll_x_V3 = SE_out_mmul_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B1_merge_reg_aunroll_x_fromReg3);
    assign SE_out_mmul_B1_merge_reg_aunroll_x_V4 = SE_out_mmul_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B1_merge_reg_aunroll_x_fromReg4);
    assign SE_out_mmul_B1_merge_reg_aunroll_x_V5 = SE_out_mmul_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B1_merge_reg_aunroll_x_fromReg5);
    assign SE_out_mmul_B1_merge_reg_aunroll_x_V6 = SE_out_mmul_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B1_merge_reg_aunroll_x_fromReg6);
    assign SE_out_mmul_B1_merge_reg_aunroll_x_V7 = SE_out_mmul_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B1_merge_reg_aunroll_x_fromReg7);
    assign SE_out_mmul_B1_merge_reg_aunroll_x_V8 = SE_out_mmul_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B1_merge_reg_aunroll_x_fromReg8);
    assign SE_out_mmul_B1_merge_reg_aunroll_x_V9 = SE_out_mmul_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_mmul_B1_merge_reg_aunroll_x_fromReg9);
    // Computing multiple Valid(s)
    assign SE_out_mmul_B1_merge_reg_aunroll_x_wireValid = mmul_B1_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg(STALLFIFO,604)
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_in = SE_out_mmul_B1_merge_reg_aunroll_x_V2;
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(160),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_mmul_B1_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_3(STALLENABLE,564)
    // Valid signal propagation
    assign SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_o_stall | ~ (SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_3_wireValid = bubble_out_mmul_B1_merge_reg_aunroll_x_3_reg_valid_out;

    // SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1(STALLENABLE,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_fromReg0 <= SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_fromReg1 <= SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_consumed0 = (~ (SE_join_for_coalesced_delay_5_backStall) & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_wireValid) | SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_fromReg0;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_consumed1 = (~ (SE_out_i_llvm_fpga_mem_lm_mmul18_backStall) & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_wireValid) | SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_StallValid = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_backStall & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_wireValid;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_toReg0 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_StallValid & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_consumed0;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_toReg1 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_StallValid & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_or0 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_consumed0;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_wireStall = ~ (SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_consumed1 & SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_or0);
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_backStall = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_V0 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_wireValid & ~ (SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_fromReg0);
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_V1 = SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_wireValid & ~ (SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_wireValid = i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_o_valid;

    // c_i32_undef33(CONSTANT,10)
    assign c_i32_undef33_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1(BLACKBOX,71)@160
    // in in_i_stall@20000000
    // out out_o_data@161
    // out out_o_stall@20000000
    // out out_o_valid@161
    // out out_wgl_0_enter_exit_stall_out@20000000
    // out out_wgl_0_enter_exit_valid_out@20000000
    mmul_i_llvm_fpga_wg_limiter_enter_l_grpid_0_0 thei_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1 (
        .in_i_data(c_i32_undef33_q),
        .in_i_stall(SE_out_i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_backStall),
        .in_i_valid(SE_out_bubble_out_mmul_B1_merge_reg_aunroll_x_3_V0),
        .in_wgl_0_enter_exit_stall_in(in_wgl_0_enter_exit_stall_in),
        .in_wgl_0_enter_exit_valid_in(in_wgl_0_enter_exit_valid_in),
        .in_wgl_0_wgs_wg_size(in_wgl_0_wgs_wg_size),
        .out_o_data(i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_o_data),
        .out_o_stall(i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_o_stall),
        .out_o_valid(i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_o_valid),
        .out_wgl_0_enter_exit_stall_out(i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_wgl_0_enter_exit_stall_out),
        .out_wgl_0_enter_exit_valid_out(i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_wgl_0_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,16)
    assign out_wgl_0_enter_exit_valid_out = i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_wgl_0_enter_exit_valid_out;
    assign out_wgl_0_enter_exit_stall_out = i_llvm_fpga_wg_limiter_enter_l_grpid_0_mmul1_out_wgl_0_enter_exit_stall_out;

    // sync_out(GPOUT,103)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,111)
    assign out_wgl_1_enter_exit_valid_out = i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_wgl_1_enter_exit_valid_out;
    assign out_wgl_1_enter_exit_stall_out = i_llvm_fpga_wg_limiter_enter_l_grpid_1_mmul3_out_wgl_1_enter_exit_stall_out;

    // bubble_join_redist24_i_inc46_mmul5_vt_select_30_b_527_fifo(BITJOIN,370)
    assign bubble_join_redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_q = redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_data_out;

    // bubble_select_redist24_i_inc46_mmul5_vt_select_30_b_527_fifo(BITSELECT,371)
    assign bubble_select_redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_b = $unsigned(bubble_join_redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_q[30:0]);

    // i_inc46_mmul5_vt_join(BITJOIN,39)@528
    assign i_inc46_mmul5_vt_join_q = {GND_q, bubble_select_redist24_i_inc46_mmul5_vt_select_30_b_527_fifo_b};

    // i_cmp_mmul11(COMPARE,28)@528
    assign i_cmp_mmul11_a = {2'b00, i_inc46_mmul5_vt_join_q};
    assign i_cmp_mmul11_b = {2'b00, sel_for_coalesced_delay_2_f};
    assign i_cmp_mmul11_o = $unsigned(i_cmp_mmul11_a) - $unsigned(i_cmp_mmul11_b);
    assign i_cmp_mmul11_c[0] = i_cmp_mmul11_o[33];

    // bubble_join_coalesced_delay_4_fifo(BITJOIN,385)
    assign bubble_join_coalesced_delay_4_fifo_q = coalesced_delay_4_fifo_data_out;

    // bubble_select_coalesced_delay_4_fifo(BITSELECT,386)
    assign bubble_select_coalesced_delay_4_fifo_b = $unsigned(bubble_join_coalesced_delay_4_fifo_q[127:0]);

    // sel_for_coalesced_delay_4(BITSELECT,308)
    assign sel_for_coalesced_delay_4_b = $unsigned(bubble_select_coalesced_delay_4_fifo_b[63:0]);
    assign sel_for_coalesced_delay_4_c = $unsigned(bubble_select_coalesced_delay_4_fifo_b[127:64]);

    // bubble_join_redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo(BITJOIN,367)
    assign bubble_join_redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_q = redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_data_out;

    // bubble_select_redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo(BITSELECT,368)
    assign bubble_select_redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_b = $unsigned(bubble_join_redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_q[31:0]);

    // i_add44_mmul6(ADD,20)@528
    assign i_add44_mmul6_a = {1'b0, sel_for_coalesced_delay_2_d};
    assign i_add44_mmul6_b = {1'b0, sel_for_coalesced_delay_2_g};
    assign i_add44_mmul6_o = $unsigned(i_add44_mmul6_a) + $unsigned(i_add44_mmul6_b);
    assign i_add44_mmul6_q = i_add44_mmul6_o[32:0];

    // bgTrunc_i_add44_mmul6_sel_x(BITSELECT,108)@528
    assign bgTrunc_i_add44_mmul6_sel_x_b = i_add44_mmul6_q[31:0];

    // c_i32_3234(CONSTANT,9)
    assign c_i32_3234_q = $unsigned(32'b00000000000000000000000000100000);

    // i_add43_mmul4(ADD,19)@528
    assign i_add43_mmul4_a = {1'b0, sel_for_coalesced_delay_2_e};
    assign i_add43_mmul4_b = {1'b0, c_i32_3234_q};
    assign i_add43_mmul4_o = $unsigned(i_add43_mmul4_a) + $unsigned(i_add43_mmul4_b);
    assign i_add43_mmul4_q = i_add43_mmul4_o[32:0];

    // bgTrunc_i_add43_mmul4_sel_x(BITSELECT,107)@528
    assign bgTrunc_i_add43_mmul4_sel_x_b = i_add43_mmul4_q[31:0];

    // bubble_join_coalesced_delay_3_fifo(BITJOIN,382)
    assign bubble_join_coalesced_delay_3_fifo_q = coalesced_delay_3_fifo_data_out;

    // bubble_select_coalesced_delay_3_fifo(BITSELECT,383)
    assign bubble_select_coalesced_delay_3_fifo_b = $unsigned(bubble_join_coalesced_delay_3_fifo_q[96:0]);

    // sel_for_coalesced_delay_3(BITSELECT,305)
    assign sel_for_coalesced_delay_3_b = $unsigned(bubble_select_coalesced_delay_3_fifo_b[63:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(bubble_select_coalesced_delay_3_fifo_b[95:64]);
    assign sel_for_coalesced_delay_3_d = $unsigned(bubble_select_coalesced_delay_3_fifo_b[96:96]);

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,379)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,380)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[287:0]);

    // sel_for_coalesced_delay_2(BITSELECT,302)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[127:64]);
    assign sel_for_coalesced_delay_2_d = $unsigned(bubble_select_coalesced_delay_2_fifo_b[159:128]);
    assign sel_for_coalesced_delay_2_e = $unsigned(bubble_select_coalesced_delay_2_fifo_b[191:160]);
    assign sel_for_coalesced_delay_2_f = $unsigned(bubble_select_coalesced_delay_2_fifo_b[223:192]);
    assign sel_for_coalesced_delay_2_g = $unsigned(bubble_select_coalesced_delay_2_fifo_b[255:224]);
    assign sel_for_coalesced_delay_2_h = $unsigned(bubble_select_coalesced_delay_2_fifo_b[287:256]);

    // dupName_0_sync_out_x(GPOUT,112)@528
    assign out_acl_global_id_077 = sel_for_coalesced_delay_2_b;
    assign out_acl_global_id_179 = sel_for_coalesced_delay_2_c;
    assign out_acl_local_id_080 = sel_for_coalesced_delay_3_c;
    assign out_add43 = bgTrunc_i_add43_mmul4_sel_x_b;
    assign out_add44 = bgTrunc_i_add44_mmul6_sel_x_b;
    assign out_c0_exe168 = sel_for_coalesced_delay_2_f;
    assign out_c0_exe2141 = bubble_select_redist19_i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_c0_exit139_2_tpl_130_fifo_b;
    assign out_c0_exe269 = sel_for_coalesced_delay_2_g;
    assign out_c0_exe370 = sel_for_coalesced_delay_3_d;
    assign out_c0_exe671 = sel_for_coalesced_delay_2_h;
    assign out_c0_exe772 = sel_for_coalesced_delay_4_b;
    assign out_c0_exe873 = sel_for_coalesced_delay_4_c;
    assign out_c0_exe974 = sel_for_coalesced_delay_3_b;
    assign out_cmp = i_cmp_mmul11_c;
    assign out_inc46 = i_inc46_mmul5_vt_join_q;
    assign out_valid_out = SE_out_coalesced_delay_4_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,114)
    assign out_lm_mmul_avm_address = i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_address;
    assign out_lm_mmul_avm_enable = i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_enable;
    assign out_lm_mmul_avm_read = i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_read;
    assign out_lm_mmul_avm_write = i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_write;
    assign out_lm_mmul_avm_writedata = i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_writedata;
    assign out_lm_mmul_avm_byteenable = i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_byteenable;
    assign out_lm_mmul_avm_burstcount = i_llvm_fpga_mem_lm_mmul18_out_lm_mmul_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,116)
    assign out_lm76_mmul_avm_address = i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_address;
    assign out_lm76_mmul_avm_enable = i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_enable;
    assign out_lm76_mmul_avm_read = i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_read;
    assign out_lm76_mmul_avm_write = i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_write;
    assign out_lm76_mmul_avm_writedata = i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_writedata;
    assign out_lm76_mmul_avm_byteenable = i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_byteenable;
    assign out_lm76_mmul_avm_burstcount = i_llvm_fpga_mem_lm76_mmul19_out_lm76_mmul_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,118)
    assign out_memdep_95_mmul_avm_address = i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_address;
    assign out_memdep_95_mmul_avm_enable = i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_enable;
    assign out_memdep_95_mmul_avm_read = i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_read;
    assign out_memdep_95_mmul_avm_write = i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_write;
    assign out_memdep_95_mmul_avm_writedata = i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_writedata;
    assign out_memdep_95_mmul_avm_byteenable = i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_byteenable;
    assign out_memdep_95_mmul_avm_burstcount = i_llvm_fpga_mem_memdep_95_mmul24_out_memdep_95_mmul_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,120)
    assign out_memdep_mmul_avm_address = i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_address;
    assign out_memdep_mmul_avm_enable = i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_enable;
    assign out_memdep_mmul_avm_read = i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_read;
    assign out_memdep_mmul_avm_write = i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_write;
    assign out_memdep_mmul_avm_writedata = i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_writedata;
    assign out_memdep_mmul_avm_byteenable = i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_byteenable;
    assign out_memdep_mmul_avm_burstcount = i_llvm_fpga_mem_memdep_mmul25_out_memdep_mmul_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,122)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable;
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,124)
    assign out_wgl_0_exit_exit_valid_in = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_0_exit_exit_valid_in;
    assign out_wgl_0_exit_exit_stall_in = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_0_exit_exit_stall_in;

    // dupName_7_ext_sig_sync_out_x(GPOUT,126)
    assign out_lm802_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_address;
    assign out_lm802_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_enable;
    assign out_lm802_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_read;
    assign out_lm802_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_write;
    assign out_lm802_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_writedata;
    assign out_lm802_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_byteenable;
    assign out_lm802_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm802_mmul_avm_burstcount;

    // dupName_8_ext_sig_sync_out_x(GPOUT,128)
    assign out_lm843_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_address;
    assign out_lm843_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_enable;
    assign out_lm843_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_read;
    assign out_lm843_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_write;
    assign out_lm843_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_writedata;
    assign out_lm843_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_byteenable;
    assign out_lm843_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm843_mmul_avm_burstcount;

    // dupName_9_ext_sig_sync_out_x(GPOUT,130)
    assign out_lm884_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_address;
    assign out_lm884_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_enable;
    assign out_lm884_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_read;
    assign out_lm884_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_write;
    assign out_lm884_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_writedata;
    assign out_lm884_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_byteenable;
    assign out_lm884_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm884_mmul_avm_burstcount;

    // dupName_10_ext_sig_sync_out_x(GPOUT,132)
    assign out_lm925_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_address;
    assign out_lm925_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_enable;
    assign out_lm925_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_read;
    assign out_lm925_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_write;
    assign out_lm925_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_writedata;
    assign out_lm925_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_byteenable;
    assign out_lm925_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm925_mmul_avm_burstcount;

    // dupName_11_ext_sig_sync_out_x(GPOUT,134)
    assign out_lm966_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_address;
    assign out_lm966_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_enable;
    assign out_lm966_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_read;
    assign out_lm966_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_write;
    assign out_lm966_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_writedata;
    assign out_lm966_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_byteenable;
    assign out_lm966_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm966_mmul_avm_burstcount;

    // dupName_12_ext_sig_sync_out_x(GPOUT,136)
    assign out_lm1007_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_address;
    assign out_lm1007_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_enable;
    assign out_lm1007_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_read;
    assign out_lm1007_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_write;
    assign out_lm1007_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_writedata;
    assign out_lm1007_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_byteenable;
    assign out_lm1007_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1007_mmul_avm_burstcount;

    // dupName_13_ext_sig_sync_out_x(GPOUT,138)
    assign out_lm1048_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_address;
    assign out_lm1048_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_enable;
    assign out_lm1048_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_read;
    assign out_lm1048_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_write;
    assign out_lm1048_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_writedata;
    assign out_lm1048_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_byteenable;
    assign out_lm1048_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1048_mmul_avm_burstcount;

    // dupName_14_ext_sig_sync_out_x(GPOUT,140)
    assign out_lm1089_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_address;
    assign out_lm1089_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_enable;
    assign out_lm1089_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_read;
    assign out_lm1089_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_write;
    assign out_lm1089_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_writedata;
    assign out_lm1089_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_byteenable;
    assign out_lm1089_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm1089_mmul_avm_burstcount;

    // dupName_15_ext_sig_sync_out_x(GPOUT,142)
    assign out_lm11210_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_address;
    assign out_lm11210_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_enable;
    assign out_lm11210_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_read;
    assign out_lm11210_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_write;
    assign out_lm11210_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_writedata;
    assign out_lm11210_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_byteenable;
    assign out_lm11210_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11210_mmul_avm_burstcount;

    // dupName_16_ext_sig_sync_out_x(GPOUT,144)
    assign out_lm11611_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_address;
    assign out_lm11611_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_enable;
    assign out_lm11611_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_read;
    assign out_lm11611_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_write;
    assign out_lm11611_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_writedata;
    assign out_lm11611_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_byteenable;
    assign out_lm11611_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm11611_mmul_avm_burstcount;

    // dupName_17_ext_sig_sync_out_x(GPOUT,146)
    assign out_lm12012_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_address;
    assign out_lm12012_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_enable;
    assign out_lm12012_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_read;
    assign out_lm12012_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_write;
    assign out_lm12012_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_writedata;
    assign out_lm12012_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_byteenable;
    assign out_lm12012_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12012_mmul_avm_burstcount;

    // dupName_18_ext_sig_sync_out_x(GPOUT,148)
    assign out_lm12413_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_address;
    assign out_lm12413_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_enable;
    assign out_lm12413_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_read;
    assign out_lm12413_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_write;
    assign out_lm12413_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_writedata;
    assign out_lm12413_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_byteenable;
    assign out_lm12413_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12413_mmul_avm_burstcount;

    // dupName_19_ext_sig_sync_out_x(GPOUT,150)
    assign out_lm12814_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_address;
    assign out_lm12814_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_enable;
    assign out_lm12814_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_read;
    assign out_lm12814_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_write;
    assign out_lm12814_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_writedata;
    assign out_lm12814_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_byteenable;
    assign out_lm12814_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm12814_mmul_avm_burstcount;

    // dupName_20_ext_sig_sync_out_x(GPOUT,152)
    assign out_lm13215_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_address;
    assign out_lm13215_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_enable;
    assign out_lm13215_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_read;
    assign out_lm13215_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_write;
    assign out_lm13215_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_writedata;
    assign out_lm13215_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_byteenable;
    assign out_lm13215_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13215_mmul_avm_burstcount;

    // dupName_21_ext_sig_sync_out_x(GPOUT,154)
    assign out_lm13616_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_address;
    assign out_lm13616_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_enable;
    assign out_lm13616_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_read;
    assign out_lm13616_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_write;
    assign out_lm13616_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_writedata;
    assign out_lm13616_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_byteenable;
    assign out_lm13616_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm13616_mmul_avm_burstcount;

    // dupName_22_ext_sig_sync_out_x(GPOUT,156)
    assign out_lm14017_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_address;
    assign out_lm14017_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_enable;
    assign out_lm14017_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_read;
    assign out_lm14017_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_write;
    assign out_lm14017_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_writedata;
    assign out_lm14017_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_byteenable;
    assign out_lm14017_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14017_mmul_avm_burstcount;

    // dupName_23_ext_sig_sync_out_x(GPOUT,158)
    assign out_lm14418_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_address;
    assign out_lm14418_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_enable;
    assign out_lm14418_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_read;
    assign out_lm14418_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_write;
    assign out_lm14418_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_writedata;
    assign out_lm14418_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_byteenable;
    assign out_lm14418_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14418_mmul_avm_burstcount;

    // dupName_24_ext_sig_sync_out_x(GPOUT,160)
    assign out_lm14819_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_address;
    assign out_lm14819_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_enable;
    assign out_lm14819_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_read;
    assign out_lm14819_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_write;
    assign out_lm14819_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_writedata;
    assign out_lm14819_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_byteenable;
    assign out_lm14819_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm14819_mmul_avm_burstcount;

    // dupName_25_ext_sig_sync_out_x(GPOUT,162)
    assign out_lm15220_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_address;
    assign out_lm15220_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_enable;
    assign out_lm15220_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_read;
    assign out_lm15220_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_write;
    assign out_lm15220_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_writedata;
    assign out_lm15220_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_byteenable;
    assign out_lm15220_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15220_mmul_avm_burstcount;

    // dupName_26_ext_sig_sync_out_x(GPOUT,164)
    assign out_lm15621_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_address;
    assign out_lm15621_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_enable;
    assign out_lm15621_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_read;
    assign out_lm15621_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_write;
    assign out_lm15621_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_writedata;
    assign out_lm15621_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_byteenable;
    assign out_lm15621_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm15621_mmul_avm_burstcount;

    // dupName_27_ext_sig_sync_out_x(GPOUT,166)
    assign out_lm16022_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_address;
    assign out_lm16022_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_enable;
    assign out_lm16022_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_read;
    assign out_lm16022_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_write;
    assign out_lm16022_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_writedata;
    assign out_lm16022_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_byteenable;
    assign out_lm16022_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16022_mmul_avm_burstcount;

    // dupName_28_ext_sig_sync_out_x(GPOUT,168)
    assign out_lm16423_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_address;
    assign out_lm16423_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_enable;
    assign out_lm16423_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_read;
    assign out_lm16423_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_write;
    assign out_lm16423_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_writedata;
    assign out_lm16423_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_byteenable;
    assign out_lm16423_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16423_mmul_avm_burstcount;

    // dupName_29_ext_sig_sync_out_x(GPOUT,170)
    assign out_lm16824_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_address;
    assign out_lm16824_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_enable;
    assign out_lm16824_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_read;
    assign out_lm16824_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_write;
    assign out_lm16824_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_writedata;
    assign out_lm16824_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_byteenable;
    assign out_lm16824_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm16824_mmul_avm_burstcount;

    // dupName_30_ext_sig_sync_out_x(GPOUT,172)
    assign out_lm17225_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_address;
    assign out_lm17225_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_enable;
    assign out_lm17225_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_read;
    assign out_lm17225_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_write;
    assign out_lm17225_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_writedata;
    assign out_lm17225_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_byteenable;
    assign out_lm17225_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17225_mmul_avm_burstcount;

    // dupName_31_ext_sig_sync_out_x(GPOUT,174)
    assign out_lm17626_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_address;
    assign out_lm17626_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_enable;
    assign out_lm17626_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_read;
    assign out_lm17626_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_write;
    assign out_lm17626_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_writedata;
    assign out_lm17626_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_byteenable;
    assign out_lm17626_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm17626_mmul_avm_burstcount;

    // dupName_32_ext_sig_sync_out_x(GPOUT,176)
    assign out_lm18027_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_address;
    assign out_lm18027_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_enable;
    assign out_lm18027_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_read;
    assign out_lm18027_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_write;
    assign out_lm18027_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_writedata;
    assign out_lm18027_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_byteenable;
    assign out_lm18027_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18027_mmul_avm_burstcount;

    // dupName_33_ext_sig_sync_out_x(GPOUT,178)
    assign out_lm18428_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_address;
    assign out_lm18428_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_enable;
    assign out_lm18428_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_read;
    assign out_lm18428_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_write;
    assign out_lm18428_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_writedata;
    assign out_lm18428_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_byteenable;
    assign out_lm18428_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18428_mmul_avm_burstcount;

    // dupName_34_ext_sig_sync_out_x(GPOUT,180)
    assign out_lm18829_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_address;
    assign out_lm18829_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_enable;
    assign out_lm18829_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_read;
    assign out_lm18829_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_write;
    assign out_lm18829_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_writedata;
    assign out_lm18829_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_byteenable;
    assign out_lm18829_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm18829_mmul_avm_burstcount;

    // dupName_35_ext_sig_sync_out_x(GPOUT,182)
    assign out_lm19230_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_address;
    assign out_lm19230_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_enable;
    assign out_lm19230_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_read;
    assign out_lm19230_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_write;
    assign out_lm19230_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_writedata;
    assign out_lm19230_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_byteenable;
    assign out_lm19230_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19230_mmul_avm_burstcount;

    // dupName_36_ext_sig_sync_out_x(GPOUT,184)
    assign out_lm19631_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_address;
    assign out_lm19631_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_enable;
    assign out_lm19631_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_read;
    assign out_lm19631_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_write;
    assign out_lm19631_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_writedata;
    assign out_lm19631_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_byteenable;
    assign out_lm19631_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm19631_mmul_avm_burstcount;

    // dupName_37_ext_sig_sync_out_x(GPOUT,186)
    assign out_lm20032_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_address;
    assign out_lm20032_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_enable;
    assign out_lm20032_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_read;
    assign out_lm20032_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_write;
    assign out_lm20032_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_writedata;
    assign out_lm20032_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_byteenable;
    assign out_lm20032_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20032_mmul_avm_burstcount;

    // dupName_38_ext_sig_sync_out_x(GPOUT,188)
    assign out_lm20433_mmul_avm_address = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_address;
    assign out_lm20433_mmul_avm_enable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_enable;
    assign out_lm20433_mmul_avm_read = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_read;
    assign out_lm20433_mmul_avm_write = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_write;
    assign out_lm20433_mmul_avm_writedata = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_writedata;
    assign out_lm20433_mmul_avm_byteenable = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_byteenable;
    assign out_lm20433_mmul_avm_burstcount = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_lm20433_mmul_avm_burstcount;

    // dupName_39_ext_sig_sync_out_x(GPOUT,190)
    assign out_wgl_1_exit_exit_valid_in = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_1_exit_exit_valid_in;
    assign out_wgl_1_exit_exit_stall_in = i_sfc_s_c0_in_for_body_mmuls_c0_enter13281_mmul29_aunroll_x_out_wgl_1_exit_exit_stall_in;

endmodule
