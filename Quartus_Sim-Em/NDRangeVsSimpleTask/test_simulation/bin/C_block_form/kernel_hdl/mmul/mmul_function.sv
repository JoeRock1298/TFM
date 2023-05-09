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

// SystemVerilog created from mmul_function
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_Awrk,
    input wire [63:0] in_arg_B,
    input wire [63:0] in_arg_Bwrk,
    input wire [63:0] in_arg_C,
    input wire [31:0] in_arg_N,
    input wire [63:0] in_arg_acl_global_id_0,
    input wire [63:0] in_arg_acl_global_id_1,
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_group_id_0,
    input wire [31:0] in_arg_acl_group_id_1,
    input wire [31:0] in_arg_acl_local_id_0,
    input wire [31:0] in_arg_acl_local_id_1,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
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
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_mmul7_mmul_avm_readdata,
    input wire [0:0] in_unnamed_mmul7_mmul_avm_readdatavalid,
    input wire [0:0] in_unnamed_mmul7_mmul_avm_waitrequest,
    input wire [0:0] in_unnamed_mmul7_mmul_avm_writeack,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_workgroup_size,
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
    output wire [0:0] out_o_active_unnamed_mmul7,
    output wire [63:0] out_primWireOut,
    output wire [0:0] out_stall_out,
    output wire [30:0] out_unnamed_mmul7_mmul_avm_address,
    output wire [4:0] out_unnamed_mmul7_mmul_avm_burstcount,
    output wire [63:0] out_unnamed_mmul7_mmul_avm_byteenable,
    output wire [0:0] out_unnamed_mmul7_mmul_avm_enable,
    output wire [0:0] out_unnamed_mmul7_mmul_avm_read,
    output wire [0:0] out_unnamed_mmul7_mmul_avm_write,
    output wire [511:0] out_unnamed_mmul7_mmul_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] bb_mmul_B0_out_acl_global_id_0;
    wire [63:0] bb_mmul_B0_out_acl_global_id_1;
    wire [31:0] bb_mmul_B0_out_acl_local_id_0;
    wire [31:0] bb_mmul_B0_out_c0_exe1;
    wire [31:0] bb_mmul_B0_out_c0_exe2;
    wire [0:0] bb_mmul_B0_out_c0_exe3;
    wire [31:0] bb_mmul_B0_out_c0_exe4;
    wire [31:0] bb_mmul_B0_out_c0_exe5;
    wire [31:0] bb_mmul_B0_out_c0_exe6;
    wire [63:0] bb_mmul_B0_out_c0_exe7;
    wire [63:0] bb_mmul_B0_out_c0_exe8;
    wire [63:0] bb_mmul_B0_out_c0_exe9;
    wire [0:0] bb_mmul_B0_out_stall_out_0;
    wire [0:0] bb_mmul_B0_out_valid_out_0;
    wire [63:0] bb_mmul_B1_out_acl_global_id_077;
    wire [63:0] bb_mmul_B1_out_acl_global_id_179;
    wire [31:0] bb_mmul_B1_out_acl_local_id_080;
    wire [31:0] bb_mmul_B1_out_add43;
    wire [31:0] bb_mmul_B1_out_add44;
    wire [31:0] bb_mmul_B1_out_c0_exe168;
    wire [31:0] bb_mmul_B1_out_c0_exe2141;
    wire [31:0] bb_mmul_B1_out_c0_exe269;
    wire [0:0] bb_mmul_B1_out_c0_exe370;
    wire [31:0] bb_mmul_B1_out_c0_exe671;
    wire [63:0] bb_mmul_B1_out_c0_exe772;
    wire [63:0] bb_mmul_B1_out_c0_exe873;
    wire [63:0] bb_mmul_B1_out_c0_exe974;
    wire [31:0] bb_mmul_B1_out_inc46;
    wire [31:0] bb_mmul_B1_out_lm1007_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm1007_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm1007_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm1007_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm1007_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm1007_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm1007_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm1048_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm1048_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm1048_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm1048_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm1048_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm1048_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm1048_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm1089_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm1089_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm1089_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm1089_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm1089_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm1089_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm1089_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm11210_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm11210_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm11210_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm11210_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm11210_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm11210_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm11210_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm11611_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm11611_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm11611_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm11611_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm11611_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm11611_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm11611_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm12012_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm12012_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm12012_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm12012_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm12012_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm12012_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm12012_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm12413_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm12413_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm12413_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm12413_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm12413_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm12413_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm12413_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm12814_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm12814_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm12814_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm12814_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm12814_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm12814_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm12814_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm13215_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm13215_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm13215_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm13215_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm13215_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm13215_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm13215_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm13616_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm13616_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm13616_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm13616_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm13616_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm13616_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm13616_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm14017_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm14017_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm14017_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm14017_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm14017_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm14017_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm14017_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm14418_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm14418_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm14418_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm14418_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm14418_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm14418_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm14418_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm14819_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm14819_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm14819_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm14819_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm14819_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm14819_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm14819_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm15220_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm15220_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm15220_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm15220_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm15220_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm15220_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm15220_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm15621_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm15621_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm15621_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm15621_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm15621_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm15621_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm15621_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm16022_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm16022_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm16022_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm16022_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm16022_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm16022_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm16022_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm16423_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm16423_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm16423_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm16423_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm16423_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm16423_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm16423_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm16824_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm16824_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm16824_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm16824_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm16824_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm16824_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm16824_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm17225_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm17225_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm17225_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm17225_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm17225_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm17225_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm17225_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm17626_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm17626_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm17626_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm17626_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm17626_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm17626_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm17626_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm18027_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm18027_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm18027_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm18027_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm18027_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm18027_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm18027_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm18428_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm18428_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm18428_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm18428_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm18428_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm18428_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm18428_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm18829_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm18829_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm18829_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm18829_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm18829_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm18829_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm18829_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm19230_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm19230_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm19230_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm19230_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm19230_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm19230_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm19230_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm19631_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm19631_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm19631_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm19631_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm19631_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm19631_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm19631_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm20032_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm20032_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm20032_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm20032_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm20032_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm20032_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm20032_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm20433_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm20433_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm20433_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm20433_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm20433_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm20433_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm20433_mmul_avm_writedata;
    wire [30:0] bb_mmul_B1_out_lm76_mmul_avm_address;
    wire [4:0] bb_mmul_B1_out_lm76_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B1_out_lm76_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm76_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm76_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm76_mmul_avm_write;
    wire [511:0] bb_mmul_B1_out_lm76_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm802_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm802_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm802_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm802_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm802_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm802_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm802_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm843_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm843_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm843_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm843_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm843_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm843_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm843_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm884_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm884_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm884_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm884_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm884_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm884_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm884_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm925_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm925_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm925_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm925_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm925_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm925_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm925_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_lm966_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_lm966_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_lm966_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm966_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm966_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm966_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_lm966_mmul_avm_writedata;
    wire [30:0] bb_mmul_B1_out_lm_mmul_avm_address;
    wire [4:0] bb_mmul_B1_out_lm_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B1_out_lm_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_lm_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_lm_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_lm_mmul_avm_write;
    wire [511:0] bb_mmul_B1_out_lm_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount;
    wire [127:0] bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write;
    wire [1023:0] bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_memdep_95_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_memdep_95_mmul_avm_burstcount;
    wire [127:0] bb_mmul_B1_out_memdep_95_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_memdep_95_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_memdep_95_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_memdep_95_mmul_avm_write;
    wire [1023:0] bb_mmul_B1_out_memdep_95_mmul_avm_writedata;
    wire [31:0] bb_mmul_B1_out_memdep_mmul_avm_address;
    wire [0:0] bb_mmul_B1_out_memdep_mmul_avm_burstcount;
    wire [3:0] bb_mmul_B1_out_memdep_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B1_out_memdep_mmul_avm_enable;
    wire [0:0] bb_mmul_B1_out_memdep_mmul_avm_read;
    wire [0:0] bb_mmul_B1_out_memdep_mmul_avm_write;
    wire [31:0] bb_mmul_B1_out_memdep_mmul_avm_writedata;
    wire [0:0] bb_mmul_B1_out_stall_in_0;
    wire [0:0] bb_mmul_B1_out_stall_out_0;
    wire [0:0] bb_mmul_B1_out_stall_out_1;
    wire [0:0] bb_mmul_B1_out_valid_in_0;
    wire [0:0] bb_mmul_B1_out_valid_in_1;
    wire [0:0] bb_mmul_B1_out_valid_out_0;
    wire [0:0] bb_mmul_B1_out_valid_out_1;
    wire [0:0] bb_mmul_B1_out_wgl_0_enter_exit_stall_out;
    wire [0:0] bb_mmul_B1_out_wgl_0_enter_exit_valid_out;
    wire [0:0] bb_mmul_B1_out_wgl_0_exit_exit_stall_in;
    wire [0:0] bb_mmul_B1_out_wgl_0_exit_exit_valid_in;
    wire [0:0] bb_mmul_B1_out_wgl_1_enter_exit_stall_out;
    wire [0:0] bb_mmul_B1_out_wgl_1_enter_exit_valid_out;
    wire [0:0] bb_mmul_B1_out_wgl_1_exit_exit_stall_in;
    wire [0:0] bb_mmul_B1_out_wgl_1_exit_exit_valid_in;
    wire [0:0] bb_mmul_B2_out_lsu_unnamed_mmul7_o_active;
    wire [0:0] bb_mmul_B2_out_stall_out_0;
    wire [30:0] bb_mmul_B2_out_unnamed_mmul7_mmul_avm_address;
    wire [4:0] bb_mmul_B2_out_unnamed_mmul7_mmul_avm_burstcount;
    wire [63:0] bb_mmul_B2_out_unnamed_mmul7_mmul_avm_byteenable;
    wire [0:0] bb_mmul_B2_out_unnamed_mmul7_mmul_avm_enable;
    wire [0:0] bb_mmul_B2_out_unnamed_mmul7_mmul_avm_read;
    wire [0:0] bb_mmul_B2_out_unnamed_mmul7_mmul_avm_write;
    wire [511:0] bb_mmul_B2_out_unnamed_mmul7_mmul_avm_writedata;
    wire [0:0] bb_mmul_B2_out_valid_out_0;
    wire [31:0] c_float_0_000000e_0026_q;
    wire [31:0] c_i32_023_q;
    wire [0:0] loop_limiter_mmul0_out_o_stall;
    wire [0:0] loop_limiter_mmul0_out_o_valid;
    wire [0:0] mmul_B1_x_i_capture;
    wire mmul_B1_x_i_capture_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_clear;
    wire mmul_B1_x_i_clear_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_enable;
    wire mmul_B1_x_i_enable_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_shift;
    wire mmul_B1_x_i_shift_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_stall_pred;
    wire mmul_B1_x_i_stall_pred_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_stall_succ;
    wire mmul_B1_x_i_stall_succ_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_valid_loop;
    wire mmul_B1_x_i_valid_loop_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_valid_pred;
    wire mmul_B1_x_i_valid_pred_bitsignaltemp;
    wire [0:0] mmul_B1_x_i_valid_succ;
    wire mmul_B1_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_mmul_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B1_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [63:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [63:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [63:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [63:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_mmul_B1_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_mmul_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B1_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [63:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [63:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [63:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [63:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_mmul_B1_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_mmul_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_mmul_B2_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_mmul_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_mmul_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_mmul_B2_sr_0_aunroll_x_out_o_data_2_tpl;


    // bb_mmul_B2(BLACKBOX,4)
    mmul_bb_B2 thebb_mmul_B2 (
        .in_C(in_arg_C),
        .in_N(in_arg_N),
        .in_acl_global_id_076_0(bb_mmul_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_acl_global_id_178_0(bb_mmul_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe214175_0(bb_mmul_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_flush(in_start),
        .in_stall_in_0(in_stall_in),
        .in_unnamed_mmul7_mmul_avm_readdata(in_unnamed_mmul7_mmul_avm_readdata),
        .in_unnamed_mmul7_mmul_avm_readdatavalid(in_unnamed_mmul7_mmul_avm_readdatavalid),
        .in_unnamed_mmul7_mmul_avm_waitrequest(in_unnamed_mmul7_mmul_avm_waitrequest),
        .in_unnamed_mmul7_mmul_avm_writeack(in_unnamed_mmul7_mmul_avm_writeack),
        .in_valid_in_0(bb_mmul_B2_sr_0_aunroll_x_out_o_valid),
        .out_lsu_unnamed_mmul7_o_active(bb_mmul_B2_out_lsu_unnamed_mmul7_o_active),
        .out_stall_out_0(bb_mmul_B2_out_stall_out_0),
        .out_unnamed_mmul7_mmul_avm_address(bb_mmul_B2_out_unnamed_mmul7_mmul_avm_address),
        .out_unnamed_mmul7_mmul_avm_burstcount(bb_mmul_B2_out_unnamed_mmul7_mmul_avm_burstcount),
        .out_unnamed_mmul7_mmul_avm_byteenable(bb_mmul_B2_out_unnamed_mmul7_mmul_avm_byteenable),
        .out_unnamed_mmul7_mmul_avm_enable(bb_mmul_B2_out_unnamed_mmul7_mmul_avm_enable),
        .out_unnamed_mmul7_mmul_avm_read(bb_mmul_B2_out_unnamed_mmul7_mmul_avm_read),
        .out_unnamed_mmul7_mmul_avm_write(bb_mmul_B2_out_unnamed_mmul7_mmul_avm_write),
        .out_unnamed_mmul7_mmul_avm_writedata(bb_mmul_B2_out_unnamed_mmul7_mmul_avm_writedata),
        .out_valid_out_0(bb_mmul_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B2_sr_0_aunroll_x(BLACKBOX,458)
    mmul_bb_B2_sr_0 thebb_mmul_B2_sr_0_aunroll_x (
        .in_i_stall(bb_mmul_B2_out_stall_out_0),
        .in_i_valid(bb_mmul_B1_out_valid_out_1),
        .in_i_data_0_tpl(bb_mmul_B1_out_c0_exe2141),
        .in_i_data_1_tpl(bb_mmul_B1_out_acl_global_id_077),
        .in_i_data_2_tpl(bb_mmul_B1_out_acl_global_id_179),
        .out_o_stall(bb_mmul_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_mmul_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_mmul_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_0_000000e_0026(FLOATCONSTANT,5)
    assign c_float_0_000000e_0026_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_023(CONSTANT,8)
    assign c_i32_023_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_mmul_B0(BLACKBOX,2)
    mmul_bb_B0 thebb_mmul_B0 (
        .in_A(in_arg_A),
        .in_B(in_arg_B),
        .in_C(in_arg_C),
        .in_N(in_arg_N),
        .in_acl_global_id_0_0(in_arg_acl_global_id_0),
        .in_acl_global_id_1_0(in_arg_acl_global_id_1),
        .in_acl_group_id_0_0(in_arg_acl_group_id_0),
        .in_acl_group_id_1_0(in_arg_acl_group_id_1),
        .in_acl_local_id_0_0(in_arg_acl_local_id_0),
        .in_acl_local_id_1_0(in_arg_acl_local_id_1),
        .in_stall_in_0(loop_limiter_mmul0_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_acl_global_id_0(bb_mmul_B0_out_acl_global_id_0),
        .out_acl_global_id_1(bb_mmul_B0_out_acl_global_id_1),
        .out_acl_local_id_0(bb_mmul_B0_out_acl_local_id_0),
        .out_c0_exe1(bb_mmul_B0_out_c0_exe1),
        .out_c0_exe2(bb_mmul_B0_out_c0_exe2),
        .out_c0_exe3(bb_mmul_B0_out_c0_exe3),
        .out_c0_exe4(bb_mmul_B0_out_c0_exe4),
        .out_c0_exe5(bb_mmul_B0_out_c0_exe5),
        .out_c0_exe6(bb_mmul_B0_out_c0_exe6),
        .out_c0_exe7(bb_mmul_B0_out_c0_exe7),
        .out_c0_exe8(bb_mmul_B0_out_c0_exe8),
        .out_c0_exe9(bb_mmul_B0_out_c0_exe9),
        .out_stall_out_0(bb_mmul_B0_out_stall_out_0),
        .out_valid_out_0(bb_mmul_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B1_sr_1_aunroll_x(BLACKBOX,457)
    mmul_bb_B1_sr_1 thebb_mmul_B1_sr_1_aunroll_x (
        .in_i_stall(bb_mmul_B1_out_stall_out_1),
        .in_i_valid(loop_limiter_mmul0_out_o_valid),
        .in_i_data_0_tpl(bb_mmul_B0_out_c0_exe4),
        .in_i_data_1_tpl(bb_mmul_B0_out_c0_exe5),
        .in_i_data_2_tpl(c_i32_023_q),
        .in_i_data_3_tpl(c_float_0_000000e_0026_q),
        .in_i_data_4_tpl(bb_mmul_B0_out_c0_exe1),
        .in_i_data_5_tpl(bb_mmul_B0_out_c0_exe2),
        .in_i_data_6_tpl(bb_mmul_B0_out_c0_exe3),
        .in_i_data_7_tpl(bb_mmul_B0_out_c0_exe6),
        .in_i_data_8_tpl(bb_mmul_B0_out_c0_exe7),
        .in_i_data_9_tpl(bb_mmul_B0_out_c0_exe8),
        .in_i_data_10_tpl(bb_mmul_B0_out_c0_exe9),
        .in_i_data_11_tpl(bb_mmul_B0_out_acl_global_id_0),
        .in_i_data_12_tpl(bb_mmul_B0_out_acl_global_id_1),
        .in_i_data_13_tpl(bb_mmul_B0_out_acl_local_id_0),
        .out_o_stall(bb_mmul_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_mmul_B1_sr_1_aunroll_x_out_o_data_13_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B1_sr_0_aunroll_x(BLACKBOX,456)
    mmul_bb_B1_sr_0 thebb_mmul_B1_sr_0_aunroll_x (
        .in_i_stall(bb_mmul_B1_out_stall_out_0),
        .in_i_valid(bb_mmul_B1_out_valid_out_0),
        .in_i_data_0_tpl(bb_mmul_B1_out_add44),
        .in_i_data_1_tpl(bb_mmul_B1_out_add43),
        .in_i_data_2_tpl(bb_mmul_B1_out_inc46),
        .in_i_data_3_tpl(bb_mmul_B1_out_c0_exe2141),
        .in_i_data_4_tpl(bb_mmul_B1_out_c0_exe168),
        .in_i_data_5_tpl(bb_mmul_B1_out_c0_exe269),
        .in_i_data_6_tpl(bb_mmul_B1_out_c0_exe370),
        .in_i_data_7_tpl(bb_mmul_B1_out_c0_exe671),
        .in_i_data_8_tpl(bb_mmul_B1_out_c0_exe772),
        .in_i_data_9_tpl(bb_mmul_B1_out_c0_exe873),
        .in_i_data_10_tpl(bb_mmul_B1_out_c0_exe974),
        .in_i_data_11_tpl(bb_mmul_B1_out_acl_global_id_077),
        .in_i_data_12_tpl(bb_mmul_B1_out_acl_global_id_179),
        .in_i_data_13_tpl(bb_mmul_B1_out_acl_local_id_080),
        .out_o_stall(bb_mmul_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_mmul_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_mmul_B1_sr_0_aunroll_x_out_o_data_13_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmul_B1(BLACKBOX,3)
    mmul_bb_B1 thebb_mmul_B1 (
        .in_A(in_arg_A),
        .in_Abase_065_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_Abase_065_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_B(in_arg_B),
        .in_Bbase_066_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_Bbase_066_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_C(in_arg_C),
        .in_Ctmp_063_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_Ctmp_063_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_Kblk_064_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_Kblk_064_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_N(in_arg_N),
        .in_acl_global_id_077_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_acl_global_id_077_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_acl_global_id_179_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_acl_global_id_179_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_acl_local_id_080_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_acl_local_id_080_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_barrier_unnamed_mmul3_wgs_workgroup_size(in_workgroup_size),
        .in_barrier_unnamed_mmul6_wgs_workgroup_size(in_workgroup_size),
        .in_c0_exe168_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe168_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe269_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe269_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe370_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe370_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe671_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe671_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe772_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe772_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe873_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe873_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe974_0(bb_mmul_B1_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe974_1(bb_mmul_B1_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_encoder_mmul_B1_merge_priority_encoder_workgroup_size(in_workgroup_size),
        .in_flush(in_start),
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
        .in_stall_in_0(bb_mmul_B1_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_mmul_B2_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_mmul_B1_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_mmul_B1_sr_1_aunroll_x_out_o_valid),
        .in_wgl_0_enter_exit_stall_in(bb_mmul_B1_out_wgl_0_exit_exit_stall_in),
        .in_wgl_0_enter_exit_valid_in(bb_mmul_B1_out_wgl_0_exit_exit_valid_in),
        .in_wgl_0_exit_exit_stall_out(bb_mmul_B1_out_wgl_0_enter_exit_stall_out),
        .in_wgl_0_exit_exit_valid_out(bb_mmul_B1_out_wgl_0_enter_exit_valid_out),
        .in_wgl_0_wgs_wg_size(in_workgroup_size),
        .in_wgl_1_enter_exit_stall_in(bb_mmul_B1_out_wgl_1_exit_exit_stall_in),
        .in_wgl_1_enter_exit_valid_in(bb_mmul_B1_out_wgl_1_exit_exit_valid_in),
        .in_wgl_1_exit_exit_stall_out(bb_mmul_B1_out_wgl_1_enter_exit_stall_out),
        .in_wgl_1_exit_exit_valid_out(bb_mmul_B1_out_wgl_1_enter_exit_valid_out),
        .in_wgl_1_wgs_wg_size(in_workgroup_size),
        .out_acl_global_id_077(bb_mmul_B1_out_acl_global_id_077),
        .out_acl_global_id_179(bb_mmul_B1_out_acl_global_id_179),
        .out_acl_local_id_080(bb_mmul_B1_out_acl_local_id_080),
        .out_add43(bb_mmul_B1_out_add43),
        .out_add44(bb_mmul_B1_out_add44),
        .out_c0_exe168(bb_mmul_B1_out_c0_exe168),
        .out_c0_exe2141(bb_mmul_B1_out_c0_exe2141),
        .out_c0_exe269(bb_mmul_B1_out_c0_exe269),
        .out_c0_exe370(bb_mmul_B1_out_c0_exe370),
        .out_c0_exe671(bb_mmul_B1_out_c0_exe671),
        .out_c0_exe772(bb_mmul_B1_out_c0_exe772),
        .out_c0_exe873(bb_mmul_B1_out_c0_exe873),
        .out_c0_exe974(bb_mmul_B1_out_c0_exe974),
        .out_inc46(bb_mmul_B1_out_inc46),
        .out_lm1007_mmul_avm_address(bb_mmul_B1_out_lm1007_mmul_avm_address),
        .out_lm1007_mmul_avm_burstcount(bb_mmul_B1_out_lm1007_mmul_avm_burstcount),
        .out_lm1007_mmul_avm_byteenable(bb_mmul_B1_out_lm1007_mmul_avm_byteenable),
        .out_lm1007_mmul_avm_enable(bb_mmul_B1_out_lm1007_mmul_avm_enable),
        .out_lm1007_mmul_avm_read(bb_mmul_B1_out_lm1007_mmul_avm_read),
        .out_lm1007_mmul_avm_write(bb_mmul_B1_out_lm1007_mmul_avm_write),
        .out_lm1007_mmul_avm_writedata(bb_mmul_B1_out_lm1007_mmul_avm_writedata),
        .out_lm1048_mmul_avm_address(bb_mmul_B1_out_lm1048_mmul_avm_address),
        .out_lm1048_mmul_avm_burstcount(bb_mmul_B1_out_lm1048_mmul_avm_burstcount),
        .out_lm1048_mmul_avm_byteenable(bb_mmul_B1_out_lm1048_mmul_avm_byteenable),
        .out_lm1048_mmul_avm_enable(bb_mmul_B1_out_lm1048_mmul_avm_enable),
        .out_lm1048_mmul_avm_read(bb_mmul_B1_out_lm1048_mmul_avm_read),
        .out_lm1048_mmul_avm_write(bb_mmul_B1_out_lm1048_mmul_avm_write),
        .out_lm1048_mmul_avm_writedata(bb_mmul_B1_out_lm1048_mmul_avm_writedata),
        .out_lm1089_mmul_avm_address(bb_mmul_B1_out_lm1089_mmul_avm_address),
        .out_lm1089_mmul_avm_burstcount(bb_mmul_B1_out_lm1089_mmul_avm_burstcount),
        .out_lm1089_mmul_avm_byteenable(bb_mmul_B1_out_lm1089_mmul_avm_byteenable),
        .out_lm1089_mmul_avm_enable(bb_mmul_B1_out_lm1089_mmul_avm_enable),
        .out_lm1089_mmul_avm_read(bb_mmul_B1_out_lm1089_mmul_avm_read),
        .out_lm1089_mmul_avm_write(bb_mmul_B1_out_lm1089_mmul_avm_write),
        .out_lm1089_mmul_avm_writedata(bb_mmul_B1_out_lm1089_mmul_avm_writedata),
        .out_lm11210_mmul_avm_address(bb_mmul_B1_out_lm11210_mmul_avm_address),
        .out_lm11210_mmul_avm_burstcount(bb_mmul_B1_out_lm11210_mmul_avm_burstcount),
        .out_lm11210_mmul_avm_byteenable(bb_mmul_B1_out_lm11210_mmul_avm_byteenable),
        .out_lm11210_mmul_avm_enable(bb_mmul_B1_out_lm11210_mmul_avm_enable),
        .out_lm11210_mmul_avm_read(bb_mmul_B1_out_lm11210_mmul_avm_read),
        .out_lm11210_mmul_avm_write(bb_mmul_B1_out_lm11210_mmul_avm_write),
        .out_lm11210_mmul_avm_writedata(bb_mmul_B1_out_lm11210_mmul_avm_writedata),
        .out_lm11611_mmul_avm_address(bb_mmul_B1_out_lm11611_mmul_avm_address),
        .out_lm11611_mmul_avm_burstcount(bb_mmul_B1_out_lm11611_mmul_avm_burstcount),
        .out_lm11611_mmul_avm_byteenable(bb_mmul_B1_out_lm11611_mmul_avm_byteenable),
        .out_lm11611_mmul_avm_enable(bb_mmul_B1_out_lm11611_mmul_avm_enable),
        .out_lm11611_mmul_avm_read(bb_mmul_B1_out_lm11611_mmul_avm_read),
        .out_lm11611_mmul_avm_write(bb_mmul_B1_out_lm11611_mmul_avm_write),
        .out_lm11611_mmul_avm_writedata(bb_mmul_B1_out_lm11611_mmul_avm_writedata),
        .out_lm12012_mmul_avm_address(bb_mmul_B1_out_lm12012_mmul_avm_address),
        .out_lm12012_mmul_avm_burstcount(bb_mmul_B1_out_lm12012_mmul_avm_burstcount),
        .out_lm12012_mmul_avm_byteenable(bb_mmul_B1_out_lm12012_mmul_avm_byteenable),
        .out_lm12012_mmul_avm_enable(bb_mmul_B1_out_lm12012_mmul_avm_enable),
        .out_lm12012_mmul_avm_read(bb_mmul_B1_out_lm12012_mmul_avm_read),
        .out_lm12012_mmul_avm_write(bb_mmul_B1_out_lm12012_mmul_avm_write),
        .out_lm12012_mmul_avm_writedata(bb_mmul_B1_out_lm12012_mmul_avm_writedata),
        .out_lm12413_mmul_avm_address(bb_mmul_B1_out_lm12413_mmul_avm_address),
        .out_lm12413_mmul_avm_burstcount(bb_mmul_B1_out_lm12413_mmul_avm_burstcount),
        .out_lm12413_mmul_avm_byteenable(bb_mmul_B1_out_lm12413_mmul_avm_byteenable),
        .out_lm12413_mmul_avm_enable(bb_mmul_B1_out_lm12413_mmul_avm_enable),
        .out_lm12413_mmul_avm_read(bb_mmul_B1_out_lm12413_mmul_avm_read),
        .out_lm12413_mmul_avm_write(bb_mmul_B1_out_lm12413_mmul_avm_write),
        .out_lm12413_mmul_avm_writedata(bb_mmul_B1_out_lm12413_mmul_avm_writedata),
        .out_lm12814_mmul_avm_address(bb_mmul_B1_out_lm12814_mmul_avm_address),
        .out_lm12814_mmul_avm_burstcount(bb_mmul_B1_out_lm12814_mmul_avm_burstcount),
        .out_lm12814_mmul_avm_byteenable(bb_mmul_B1_out_lm12814_mmul_avm_byteenable),
        .out_lm12814_mmul_avm_enable(bb_mmul_B1_out_lm12814_mmul_avm_enable),
        .out_lm12814_mmul_avm_read(bb_mmul_B1_out_lm12814_mmul_avm_read),
        .out_lm12814_mmul_avm_write(bb_mmul_B1_out_lm12814_mmul_avm_write),
        .out_lm12814_mmul_avm_writedata(bb_mmul_B1_out_lm12814_mmul_avm_writedata),
        .out_lm13215_mmul_avm_address(bb_mmul_B1_out_lm13215_mmul_avm_address),
        .out_lm13215_mmul_avm_burstcount(bb_mmul_B1_out_lm13215_mmul_avm_burstcount),
        .out_lm13215_mmul_avm_byteenable(bb_mmul_B1_out_lm13215_mmul_avm_byteenable),
        .out_lm13215_mmul_avm_enable(bb_mmul_B1_out_lm13215_mmul_avm_enable),
        .out_lm13215_mmul_avm_read(bb_mmul_B1_out_lm13215_mmul_avm_read),
        .out_lm13215_mmul_avm_write(bb_mmul_B1_out_lm13215_mmul_avm_write),
        .out_lm13215_mmul_avm_writedata(bb_mmul_B1_out_lm13215_mmul_avm_writedata),
        .out_lm13616_mmul_avm_address(bb_mmul_B1_out_lm13616_mmul_avm_address),
        .out_lm13616_mmul_avm_burstcount(bb_mmul_B1_out_lm13616_mmul_avm_burstcount),
        .out_lm13616_mmul_avm_byteenable(bb_mmul_B1_out_lm13616_mmul_avm_byteenable),
        .out_lm13616_mmul_avm_enable(bb_mmul_B1_out_lm13616_mmul_avm_enable),
        .out_lm13616_mmul_avm_read(bb_mmul_B1_out_lm13616_mmul_avm_read),
        .out_lm13616_mmul_avm_write(bb_mmul_B1_out_lm13616_mmul_avm_write),
        .out_lm13616_mmul_avm_writedata(bb_mmul_B1_out_lm13616_mmul_avm_writedata),
        .out_lm14017_mmul_avm_address(bb_mmul_B1_out_lm14017_mmul_avm_address),
        .out_lm14017_mmul_avm_burstcount(bb_mmul_B1_out_lm14017_mmul_avm_burstcount),
        .out_lm14017_mmul_avm_byteenable(bb_mmul_B1_out_lm14017_mmul_avm_byteenable),
        .out_lm14017_mmul_avm_enable(bb_mmul_B1_out_lm14017_mmul_avm_enable),
        .out_lm14017_mmul_avm_read(bb_mmul_B1_out_lm14017_mmul_avm_read),
        .out_lm14017_mmul_avm_write(bb_mmul_B1_out_lm14017_mmul_avm_write),
        .out_lm14017_mmul_avm_writedata(bb_mmul_B1_out_lm14017_mmul_avm_writedata),
        .out_lm14418_mmul_avm_address(bb_mmul_B1_out_lm14418_mmul_avm_address),
        .out_lm14418_mmul_avm_burstcount(bb_mmul_B1_out_lm14418_mmul_avm_burstcount),
        .out_lm14418_mmul_avm_byteenable(bb_mmul_B1_out_lm14418_mmul_avm_byteenable),
        .out_lm14418_mmul_avm_enable(bb_mmul_B1_out_lm14418_mmul_avm_enable),
        .out_lm14418_mmul_avm_read(bb_mmul_B1_out_lm14418_mmul_avm_read),
        .out_lm14418_mmul_avm_write(bb_mmul_B1_out_lm14418_mmul_avm_write),
        .out_lm14418_mmul_avm_writedata(bb_mmul_B1_out_lm14418_mmul_avm_writedata),
        .out_lm14819_mmul_avm_address(bb_mmul_B1_out_lm14819_mmul_avm_address),
        .out_lm14819_mmul_avm_burstcount(bb_mmul_B1_out_lm14819_mmul_avm_burstcount),
        .out_lm14819_mmul_avm_byteenable(bb_mmul_B1_out_lm14819_mmul_avm_byteenable),
        .out_lm14819_mmul_avm_enable(bb_mmul_B1_out_lm14819_mmul_avm_enable),
        .out_lm14819_mmul_avm_read(bb_mmul_B1_out_lm14819_mmul_avm_read),
        .out_lm14819_mmul_avm_write(bb_mmul_B1_out_lm14819_mmul_avm_write),
        .out_lm14819_mmul_avm_writedata(bb_mmul_B1_out_lm14819_mmul_avm_writedata),
        .out_lm15220_mmul_avm_address(bb_mmul_B1_out_lm15220_mmul_avm_address),
        .out_lm15220_mmul_avm_burstcount(bb_mmul_B1_out_lm15220_mmul_avm_burstcount),
        .out_lm15220_mmul_avm_byteenable(bb_mmul_B1_out_lm15220_mmul_avm_byteenable),
        .out_lm15220_mmul_avm_enable(bb_mmul_B1_out_lm15220_mmul_avm_enable),
        .out_lm15220_mmul_avm_read(bb_mmul_B1_out_lm15220_mmul_avm_read),
        .out_lm15220_mmul_avm_write(bb_mmul_B1_out_lm15220_mmul_avm_write),
        .out_lm15220_mmul_avm_writedata(bb_mmul_B1_out_lm15220_mmul_avm_writedata),
        .out_lm15621_mmul_avm_address(bb_mmul_B1_out_lm15621_mmul_avm_address),
        .out_lm15621_mmul_avm_burstcount(bb_mmul_B1_out_lm15621_mmul_avm_burstcount),
        .out_lm15621_mmul_avm_byteenable(bb_mmul_B1_out_lm15621_mmul_avm_byteenable),
        .out_lm15621_mmul_avm_enable(bb_mmul_B1_out_lm15621_mmul_avm_enable),
        .out_lm15621_mmul_avm_read(bb_mmul_B1_out_lm15621_mmul_avm_read),
        .out_lm15621_mmul_avm_write(bb_mmul_B1_out_lm15621_mmul_avm_write),
        .out_lm15621_mmul_avm_writedata(bb_mmul_B1_out_lm15621_mmul_avm_writedata),
        .out_lm16022_mmul_avm_address(bb_mmul_B1_out_lm16022_mmul_avm_address),
        .out_lm16022_mmul_avm_burstcount(bb_mmul_B1_out_lm16022_mmul_avm_burstcount),
        .out_lm16022_mmul_avm_byteenable(bb_mmul_B1_out_lm16022_mmul_avm_byteenable),
        .out_lm16022_mmul_avm_enable(bb_mmul_B1_out_lm16022_mmul_avm_enable),
        .out_lm16022_mmul_avm_read(bb_mmul_B1_out_lm16022_mmul_avm_read),
        .out_lm16022_mmul_avm_write(bb_mmul_B1_out_lm16022_mmul_avm_write),
        .out_lm16022_mmul_avm_writedata(bb_mmul_B1_out_lm16022_mmul_avm_writedata),
        .out_lm16423_mmul_avm_address(bb_mmul_B1_out_lm16423_mmul_avm_address),
        .out_lm16423_mmul_avm_burstcount(bb_mmul_B1_out_lm16423_mmul_avm_burstcount),
        .out_lm16423_mmul_avm_byteenable(bb_mmul_B1_out_lm16423_mmul_avm_byteenable),
        .out_lm16423_mmul_avm_enable(bb_mmul_B1_out_lm16423_mmul_avm_enable),
        .out_lm16423_mmul_avm_read(bb_mmul_B1_out_lm16423_mmul_avm_read),
        .out_lm16423_mmul_avm_write(bb_mmul_B1_out_lm16423_mmul_avm_write),
        .out_lm16423_mmul_avm_writedata(bb_mmul_B1_out_lm16423_mmul_avm_writedata),
        .out_lm16824_mmul_avm_address(bb_mmul_B1_out_lm16824_mmul_avm_address),
        .out_lm16824_mmul_avm_burstcount(bb_mmul_B1_out_lm16824_mmul_avm_burstcount),
        .out_lm16824_mmul_avm_byteenable(bb_mmul_B1_out_lm16824_mmul_avm_byteenable),
        .out_lm16824_mmul_avm_enable(bb_mmul_B1_out_lm16824_mmul_avm_enable),
        .out_lm16824_mmul_avm_read(bb_mmul_B1_out_lm16824_mmul_avm_read),
        .out_lm16824_mmul_avm_write(bb_mmul_B1_out_lm16824_mmul_avm_write),
        .out_lm16824_mmul_avm_writedata(bb_mmul_B1_out_lm16824_mmul_avm_writedata),
        .out_lm17225_mmul_avm_address(bb_mmul_B1_out_lm17225_mmul_avm_address),
        .out_lm17225_mmul_avm_burstcount(bb_mmul_B1_out_lm17225_mmul_avm_burstcount),
        .out_lm17225_mmul_avm_byteenable(bb_mmul_B1_out_lm17225_mmul_avm_byteenable),
        .out_lm17225_mmul_avm_enable(bb_mmul_B1_out_lm17225_mmul_avm_enable),
        .out_lm17225_mmul_avm_read(bb_mmul_B1_out_lm17225_mmul_avm_read),
        .out_lm17225_mmul_avm_write(bb_mmul_B1_out_lm17225_mmul_avm_write),
        .out_lm17225_mmul_avm_writedata(bb_mmul_B1_out_lm17225_mmul_avm_writedata),
        .out_lm17626_mmul_avm_address(bb_mmul_B1_out_lm17626_mmul_avm_address),
        .out_lm17626_mmul_avm_burstcount(bb_mmul_B1_out_lm17626_mmul_avm_burstcount),
        .out_lm17626_mmul_avm_byteenable(bb_mmul_B1_out_lm17626_mmul_avm_byteenable),
        .out_lm17626_mmul_avm_enable(bb_mmul_B1_out_lm17626_mmul_avm_enable),
        .out_lm17626_mmul_avm_read(bb_mmul_B1_out_lm17626_mmul_avm_read),
        .out_lm17626_mmul_avm_write(bb_mmul_B1_out_lm17626_mmul_avm_write),
        .out_lm17626_mmul_avm_writedata(bb_mmul_B1_out_lm17626_mmul_avm_writedata),
        .out_lm18027_mmul_avm_address(bb_mmul_B1_out_lm18027_mmul_avm_address),
        .out_lm18027_mmul_avm_burstcount(bb_mmul_B1_out_lm18027_mmul_avm_burstcount),
        .out_lm18027_mmul_avm_byteenable(bb_mmul_B1_out_lm18027_mmul_avm_byteenable),
        .out_lm18027_mmul_avm_enable(bb_mmul_B1_out_lm18027_mmul_avm_enable),
        .out_lm18027_mmul_avm_read(bb_mmul_B1_out_lm18027_mmul_avm_read),
        .out_lm18027_mmul_avm_write(bb_mmul_B1_out_lm18027_mmul_avm_write),
        .out_lm18027_mmul_avm_writedata(bb_mmul_B1_out_lm18027_mmul_avm_writedata),
        .out_lm18428_mmul_avm_address(bb_mmul_B1_out_lm18428_mmul_avm_address),
        .out_lm18428_mmul_avm_burstcount(bb_mmul_B1_out_lm18428_mmul_avm_burstcount),
        .out_lm18428_mmul_avm_byteenable(bb_mmul_B1_out_lm18428_mmul_avm_byteenable),
        .out_lm18428_mmul_avm_enable(bb_mmul_B1_out_lm18428_mmul_avm_enable),
        .out_lm18428_mmul_avm_read(bb_mmul_B1_out_lm18428_mmul_avm_read),
        .out_lm18428_mmul_avm_write(bb_mmul_B1_out_lm18428_mmul_avm_write),
        .out_lm18428_mmul_avm_writedata(bb_mmul_B1_out_lm18428_mmul_avm_writedata),
        .out_lm18829_mmul_avm_address(bb_mmul_B1_out_lm18829_mmul_avm_address),
        .out_lm18829_mmul_avm_burstcount(bb_mmul_B1_out_lm18829_mmul_avm_burstcount),
        .out_lm18829_mmul_avm_byteenable(bb_mmul_B1_out_lm18829_mmul_avm_byteenable),
        .out_lm18829_mmul_avm_enable(bb_mmul_B1_out_lm18829_mmul_avm_enable),
        .out_lm18829_mmul_avm_read(bb_mmul_B1_out_lm18829_mmul_avm_read),
        .out_lm18829_mmul_avm_write(bb_mmul_B1_out_lm18829_mmul_avm_write),
        .out_lm18829_mmul_avm_writedata(bb_mmul_B1_out_lm18829_mmul_avm_writedata),
        .out_lm19230_mmul_avm_address(bb_mmul_B1_out_lm19230_mmul_avm_address),
        .out_lm19230_mmul_avm_burstcount(bb_mmul_B1_out_lm19230_mmul_avm_burstcount),
        .out_lm19230_mmul_avm_byteenable(bb_mmul_B1_out_lm19230_mmul_avm_byteenable),
        .out_lm19230_mmul_avm_enable(bb_mmul_B1_out_lm19230_mmul_avm_enable),
        .out_lm19230_mmul_avm_read(bb_mmul_B1_out_lm19230_mmul_avm_read),
        .out_lm19230_mmul_avm_write(bb_mmul_B1_out_lm19230_mmul_avm_write),
        .out_lm19230_mmul_avm_writedata(bb_mmul_B1_out_lm19230_mmul_avm_writedata),
        .out_lm19631_mmul_avm_address(bb_mmul_B1_out_lm19631_mmul_avm_address),
        .out_lm19631_mmul_avm_burstcount(bb_mmul_B1_out_lm19631_mmul_avm_burstcount),
        .out_lm19631_mmul_avm_byteenable(bb_mmul_B1_out_lm19631_mmul_avm_byteenable),
        .out_lm19631_mmul_avm_enable(bb_mmul_B1_out_lm19631_mmul_avm_enable),
        .out_lm19631_mmul_avm_read(bb_mmul_B1_out_lm19631_mmul_avm_read),
        .out_lm19631_mmul_avm_write(bb_mmul_B1_out_lm19631_mmul_avm_write),
        .out_lm19631_mmul_avm_writedata(bb_mmul_B1_out_lm19631_mmul_avm_writedata),
        .out_lm20032_mmul_avm_address(bb_mmul_B1_out_lm20032_mmul_avm_address),
        .out_lm20032_mmul_avm_burstcount(bb_mmul_B1_out_lm20032_mmul_avm_burstcount),
        .out_lm20032_mmul_avm_byteenable(bb_mmul_B1_out_lm20032_mmul_avm_byteenable),
        .out_lm20032_mmul_avm_enable(bb_mmul_B1_out_lm20032_mmul_avm_enable),
        .out_lm20032_mmul_avm_read(bb_mmul_B1_out_lm20032_mmul_avm_read),
        .out_lm20032_mmul_avm_write(bb_mmul_B1_out_lm20032_mmul_avm_write),
        .out_lm20032_mmul_avm_writedata(bb_mmul_B1_out_lm20032_mmul_avm_writedata),
        .out_lm20433_mmul_avm_address(bb_mmul_B1_out_lm20433_mmul_avm_address),
        .out_lm20433_mmul_avm_burstcount(bb_mmul_B1_out_lm20433_mmul_avm_burstcount),
        .out_lm20433_mmul_avm_byteenable(bb_mmul_B1_out_lm20433_mmul_avm_byteenable),
        .out_lm20433_mmul_avm_enable(bb_mmul_B1_out_lm20433_mmul_avm_enable),
        .out_lm20433_mmul_avm_read(bb_mmul_B1_out_lm20433_mmul_avm_read),
        .out_lm20433_mmul_avm_write(bb_mmul_B1_out_lm20433_mmul_avm_write),
        .out_lm20433_mmul_avm_writedata(bb_mmul_B1_out_lm20433_mmul_avm_writedata),
        .out_lm76_mmul_avm_address(bb_mmul_B1_out_lm76_mmul_avm_address),
        .out_lm76_mmul_avm_burstcount(bb_mmul_B1_out_lm76_mmul_avm_burstcount),
        .out_lm76_mmul_avm_byteenable(bb_mmul_B1_out_lm76_mmul_avm_byteenable),
        .out_lm76_mmul_avm_enable(bb_mmul_B1_out_lm76_mmul_avm_enable),
        .out_lm76_mmul_avm_read(bb_mmul_B1_out_lm76_mmul_avm_read),
        .out_lm76_mmul_avm_write(bb_mmul_B1_out_lm76_mmul_avm_write),
        .out_lm76_mmul_avm_writedata(bb_mmul_B1_out_lm76_mmul_avm_writedata),
        .out_lm802_mmul_avm_address(bb_mmul_B1_out_lm802_mmul_avm_address),
        .out_lm802_mmul_avm_burstcount(bb_mmul_B1_out_lm802_mmul_avm_burstcount),
        .out_lm802_mmul_avm_byteenable(bb_mmul_B1_out_lm802_mmul_avm_byteenable),
        .out_lm802_mmul_avm_enable(bb_mmul_B1_out_lm802_mmul_avm_enable),
        .out_lm802_mmul_avm_read(bb_mmul_B1_out_lm802_mmul_avm_read),
        .out_lm802_mmul_avm_write(bb_mmul_B1_out_lm802_mmul_avm_write),
        .out_lm802_mmul_avm_writedata(bb_mmul_B1_out_lm802_mmul_avm_writedata),
        .out_lm843_mmul_avm_address(bb_mmul_B1_out_lm843_mmul_avm_address),
        .out_lm843_mmul_avm_burstcount(bb_mmul_B1_out_lm843_mmul_avm_burstcount),
        .out_lm843_mmul_avm_byteenable(bb_mmul_B1_out_lm843_mmul_avm_byteenable),
        .out_lm843_mmul_avm_enable(bb_mmul_B1_out_lm843_mmul_avm_enable),
        .out_lm843_mmul_avm_read(bb_mmul_B1_out_lm843_mmul_avm_read),
        .out_lm843_mmul_avm_write(bb_mmul_B1_out_lm843_mmul_avm_write),
        .out_lm843_mmul_avm_writedata(bb_mmul_B1_out_lm843_mmul_avm_writedata),
        .out_lm884_mmul_avm_address(bb_mmul_B1_out_lm884_mmul_avm_address),
        .out_lm884_mmul_avm_burstcount(bb_mmul_B1_out_lm884_mmul_avm_burstcount),
        .out_lm884_mmul_avm_byteenable(bb_mmul_B1_out_lm884_mmul_avm_byteenable),
        .out_lm884_mmul_avm_enable(bb_mmul_B1_out_lm884_mmul_avm_enable),
        .out_lm884_mmul_avm_read(bb_mmul_B1_out_lm884_mmul_avm_read),
        .out_lm884_mmul_avm_write(bb_mmul_B1_out_lm884_mmul_avm_write),
        .out_lm884_mmul_avm_writedata(bb_mmul_B1_out_lm884_mmul_avm_writedata),
        .out_lm925_mmul_avm_address(bb_mmul_B1_out_lm925_mmul_avm_address),
        .out_lm925_mmul_avm_burstcount(bb_mmul_B1_out_lm925_mmul_avm_burstcount),
        .out_lm925_mmul_avm_byteenable(bb_mmul_B1_out_lm925_mmul_avm_byteenable),
        .out_lm925_mmul_avm_enable(bb_mmul_B1_out_lm925_mmul_avm_enable),
        .out_lm925_mmul_avm_read(bb_mmul_B1_out_lm925_mmul_avm_read),
        .out_lm925_mmul_avm_write(bb_mmul_B1_out_lm925_mmul_avm_write),
        .out_lm925_mmul_avm_writedata(bb_mmul_B1_out_lm925_mmul_avm_writedata),
        .out_lm966_mmul_avm_address(bb_mmul_B1_out_lm966_mmul_avm_address),
        .out_lm966_mmul_avm_burstcount(bb_mmul_B1_out_lm966_mmul_avm_burstcount),
        .out_lm966_mmul_avm_byteenable(bb_mmul_B1_out_lm966_mmul_avm_byteenable),
        .out_lm966_mmul_avm_enable(bb_mmul_B1_out_lm966_mmul_avm_enable),
        .out_lm966_mmul_avm_read(bb_mmul_B1_out_lm966_mmul_avm_read),
        .out_lm966_mmul_avm_write(bb_mmul_B1_out_lm966_mmul_avm_write),
        .out_lm966_mmul_avm_writedata(bb_mmul_B1_out_lm966_mmul_avm_writedata),
        .out_lm_mmul_avm_address(bb_mmul_B1_out_lm_mmul_avm_address),
        .out_lm_mmul_avm_burstcount(bb_mmul_B1_out_lm_mmul_avm_burstcount),
        .out_lm_mmul_avm_byteenable(bb_mmul_B1_out_lm_mmul_avm_byteenable),
        .out_lm_mmul_avm_enable(bb_mmul_B1_out_lm_mmul_avm_enable),
        .out_lm_mmul_avm_read(bb_mmul_B1_out_lm_mmul_avm_read),
        .out_lm_mmul_avm_write(bb_mmul_B1_out_lm_mmul_avm_write),
        .out_lm_mmul_avm_writedata(bb_mmul_B1_out_lm_mmul_avm_writedata),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address(bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount(bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable(bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable(bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read(bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write(bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write),
        .out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata(bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata),
        .out_memdep_95_mmul_avm_address(bb_mmul_B1_out_memdep_95_mmul_avm_address),
        .out_memdep_95_mmul_avm_burstcount(bb_mmul_B1_out_memdep_95_mmul_avm_burstcount),
        .out_memdep_95_mmul_avm_byteenable(bb_mmul_B1_out_memdep_95_mmul_avm_byteenable),
        .out_memdep_95_mmul_avm_enable(bb_mmul_B1_out_memdep_95_mmul_avm_enable),
        .out_memdep_95_mmul_avm_read(bb_mmul_B1_out_memdep_95_mmul_avm_read),
        .out_memdep_95_mmul_avm_write(bb_mmul_B1_out_memdep_95_mmul_avm_write),
        .out_memdep_95_mmul_avm_writedata(bb_mmul_B1_out_memdep_95_mmul_avm_writedata),
        .out_memdep_mmul_avm_address(bb_mmul_B1_out_memdep_mmul_avm_address),
        .out_memdep_mmul_avm_burstcount(bb_mmul_B1_out_memdep_mmul_avm_burstcount),
        .out_memdep_mmul_avm_byteenable(bb_mmul_B1_out_memdep_mmul_avm_byteenable),
        .out_memdep_mmul_avm_enable(bb_mmul_B1_out_memdep_mmul_avm_enable),
        .out_memdep_mmul_avm_read(bb_mmul_B1_out_memdep_mmul_avm_read),
        .out_memdep_mmul_avm_write(bb_mmul_B1_out_memdep_mmul_avm_write),
        .out_memdep_mmul_avm_writedata(bb_mmul_B1_out_memdep_mmul_avm_writedata),
        .out_stall_in_0(bb_mmul_B1_out_stall_in_0),
        .out_stall_out_0(bb_mmul_B1_out_stall_out_0),
        .out_stall_out_1(bb_mmul_B1_out_stall_out_1),
        .out_valid_in_0(bb_mmul_B1_out_valid_in_0),
        .out_valid_in_1(bb_mmul_B1_out_valid_in_1),
        .out_valid_out_0(bb_mmul_B1_out_valid_out_0),
        .out_valid_out_1(bb_mmul_B1_out_valid_out_1),
        .out_wgl_0_enter_exit_stall_out(bb_mmul_B1_out_wgl_0_enter_exit_stall_out),
        .out_wgl_0_enter_exit_valid_out(bb_mmul_B1_out_wgl_0_enter_exit_valid_out),
        .out_wgl_0_exit_exit_stall_in(bb_mmul_B1_out_wgl_0_exit_exit_stall_in),
        .out_wgl_0_exit_exit_valid_in(bb_mmul_B1_out_wgl_0_exit_exit_valid_in),
        .out_wgl_1_enter_exit_stall_out(bb_mmul_B1_out_wgl_1_enter_exit_stall_out),
        .out_wgl_1_enter_exit_valid_out(bb_mmul_B1_out_wgl_1_enter_exit_valid_out),
        .out_wgl_1_exit_exit_stall_in(bb_mmul_B1_out_wgl_1_exit_exit_stall_in),
        .out_wgl_1_exit_exit_valid_in(bb_mmul_B1_out_wgl_1_exit_exit_valid_in),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_mmul0(BLACKBOX,184)
    mmul_loop_limiter_0 theloop_limiter_mmul0 (
        .in_i_stall(bb_mmul_B1_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_mmul_B2_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_mmul_B0_out_valid_out_0),
        .in_i_valid_exit(bb_mmul_B1_out_valid_out_1),
        .out_o_stall(loop_limiter_mmul0_out_o_stall),
        .out_o_valid(loop_limiter_mmul0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // mmul_B1_x(EXTIFACE,185)
    assign mmul_B1_x_i_capture = GND_q;
    assign mmul_B1_x_i_clear = GND_q;
    assign mmul_B1_x_i_enable = VCC_q;
    assign mmul_B1_x_i_shift = GND_q;
    assign mmul_B1_x_i_stall_pred = loop_limiter_mmul0_out_o_stall;
    assign mmul_B1_x_i_stall_succ = bb_mmul_B1_out_stall_in_0;
    assign mmul_B1_x_i_valid_loop = bb_mmul_B1_out_valid_in_0;
    assign mmul_B1_x_i_valid_pred = bb_mmul_B1_out_valid_in_1;
    assign mmul_B1_x_i_valid_succ = bb_mmul_B1_out_valid_out_0;
    assign mmul_B1_x_i_capture_bitsignaltemp = mmul_B1_x_i_capture[0];
    assign mmul_B1_x_i_clear_bitsignaltemp = mmul_B1_x_i_clear[0];
    assign mmul_B1_x_i_enable_bitsignaltemp = mmul_B1_x_i_enable[0];
    assign mmul_B1_x_i_shift_bitsignaltemp = mmul_B1_x_i_shift[0];
    assign mmul_B1_x_i_stall_pred_bitsignaltemp = mmul_B1_x_i_stall_pred[0];
    assign mmul_B1_x_i_stall_succ_bitsignaltemp = mmul_B1_x_i_stall_succ[0];
    assign mmul_B1_x_i_valid_loop_bitsignaltemp = mmul_B1_x_i_valid_loop[0];
    assign mmul_B1_x_i_valid_pred_bitsignaltemp = mmul_B1_x_i_valid_pred[0];
    assign mmul_B1_x_i_valid_succ_bitsignaltemp = mmul_B1_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("mmul.B1")
    ) themmul_B1_x (
        .i_capture(mmul_B1_x_i_capture_bitsignaltemp),
        .i_clear(mmul_B1_x_i_clear_bitsignaltemp),
        .i_enable(mmul_B1_x_i_enable_bitsignaltemp),
        .i_shift(mmul_B1_x_i_shift_bitsignaltemp),
        .i_stall_pred(mmul_B1_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(mmul_B1_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(mmul_B1_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(mmul_B1_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(mmul_B1_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm1007_mmul_avm_address(GPOUT,186)
    assign out_lm1007_mmul_avm_address = bb_mmul_B1_out_lm1007_mmul_avm_address;

    // out_lm1007_mmul_avm_burstcount(GPOUT,187)
    assign out_lm1007_mmul_avm_burstcount = bb_mmul_B1_out_lm1007_mmul_avm_burstcount;

    // out_lm1007_mmul_avm_byteenable(GPOUT,188)
    assign out_lm1007_mmul_avm_byteenable = bb_mmul_B1_out_lm1007_mmul_avm_byteenable;

    // out_lm1007_mmul_avm_enable(GPOUT,189)
    assign out_lm1007_mmul_avm_enable = bb_mmul_B1_out_lm1007_mmul_avm_enable;

    // out_lm1007_mmul_avm_read(GPOUT,190)
    assign out_lm1007_mmul_avm_read = bb_mmul_B1_out_lm1007_mmul_avm_read;

    // out_lm1007_mmul_avm_write(GPOUT,191)
    assign out_lm1007_mmul_avm_write = bb_mmul_B1_out_lm1007_mmul_avm_write;

    // out_lm1007_mmul_avm_writedata(GPOUT,192)
    assign out_lm1007_mmul_avm_writedata = bb_mmul_B1_out_lm1007_mmul_avm_writedata;

    // out_lm1048_mmul_avm_address(GPOUT,193)
    assign out_lm1048_mmul_avm_address = bb_mmul_B1_out_lm1048_mmul_avm_address;

    // out_lm1048_mmul_avm_burstcount(GPOUT,194)
    assign out_lm1048_mmul_avm_burstcount = bb_mmul_B1_out_lm1048_mmul_avm_burstcount;

    // out_lm1048_mmul_avm_byteenable(GPOUT,195)
    assign out_lm1048_mmul_avm_byteenable = bb_mmul_B1_out_lm1048_mmul_avm_byteenable;

    // out_lm1048_mmul_avm_enable(GPOUT,196)
    assign out_lm1048_mmul_avm_enable = bb_mmul_B1_out_lm1048_mmul_avm_enable;

    // out_lm1048_mmul_avm_read(GPOUT,197)
    assign out_lm1048_mmul_avm_read = bb_mmul_B1_out_lm1048_mmul_avm_read;

    // out_lm1048_mmul_avm_write(GPOUT,198)
    assign out_lm1048_mmul_avm_write = bb_mmul_B1_out_lm1048_mmul_avm_write;

    // out_lm1048_mmul_avm_writedata(GPOUT,199)
    assign out_lm1048_mmul_avm_writedata = bb_mmul_B1_out_lm1048_mmul_avm_writedata;

    // out_lm1089_mmul_avm_address(GPOUT,200)
    assign out_lm1089_mmul_avm_address = bb_mmul_B1_out_lm1089_mmul_avm_address;

    // out_lm1089_mmul_avm_burstcount(GPOUT,201)
    assign out_lm1089_mmul_avm_burstcount = bb_mmul_B1_out_lm1089_mmul_avm_burstcount;

    // out_lm1089_mmul_avm_byteenable(GPOUT,202)
    assign out_lm1089_mmul_avm_byteenable = bb_mmul_B1_out_lm1089_mmul_avm_byteenable;

    // out_lm1089_mmul_avm_enable(GPOUT,203)
    assign out_lm1089_mmul_avm_enable = bb_mmul_B1_out_lm1089_mmul_avm_enable;

    // out_lm1089_mmul_avm_read(GPOUT,204)
    assign out_lm1089_mmul_avm_read = bb_mmul_B1_out_lm1089_mmul_avm_read;

    // out_lm1089_mmul_avm_write(GPOUT,205)
    assign out_lm1089_mmul_avm_write = bb_mmul_B1_out_lm1089_mmul_avm_write;

    // out_lm1089_mmul_avm_writedata(GPOUT,206)
    assign out_lm1089_mmul_avm_writedata = bb_mmul_B1_out_lm1089_mmul_avm_writedata;

    // out_lm11210_mmul_avm_address(GPOUT,207)
    assign out_lm11210_mmul_avm_address = bb_mmul_B1_out_lm11210_mmul_avm_address;

    // out_lm11210_mmul_avm_burstcount(GPOUT,208)
    assign out_lm11210_mmul_avm_burstcount = bb_mmul_B1_out_lm11210_mmul_avm_burstcount;

    // out_lm11210_mmul_avm_byteenable(GPOUT,209)
    assign out_lm11210_mmul_avm_byteenable = bb_mmul_B1_out_lm11210_mmul_avm_byteenable;

    // out_lm11210_mmul_avm_enable(GPOUT,210)
    assign out_lm11210_mmul_avm_enable = bb_mmul_B1_out_lm11210_mmul_avm_enable;

    // out_lm11210_mmul_avm_read(GPOUT,211)
    assign out_lm11210_mmul_avm_read = bb_mmul_B1_out_lm11210_mmul_avm_read;

    // out_lm11210_mmul_avm_write(GPOUT,212)
    assign out_lm11210_mmul_avm_write = bb_mmul_B1_out_lm11210_mmul_avm_write;

    // out_lm11210_mmul_avm_writedata(GPOUT,213)
    assign out_lm11210_mmul_avm_writedata = bb_mmul_B1_out_lm11210_mmul_avm_writedata;

    // out_lm11611_mmul_avm_address(GPOUT,214)
    assign out_lm11611_mmul_avm_address = bb_mmul_B1_out_lm11611_mmul_avm_address;

    // out_lm11611_mmul_avm_burstcount(GPOUT,215)
    assign out_lm11611_mmul_avm_burstcount = bb_mmul_B1_out_lm11611_mmul_avm_burstcount;

    // out_lm11611_mmul_avm_byteenable(GPOUT,216)
    assign out_lm11611_mmul_avm_byteenable = bb_mmul_B1_out_lm11611_mmul_avm_byteenable;

    // out_lm11611_mmul_avm_enable(GPOUT,217)
    assign out_lm11611_mmul_avm_enable = bb_mmul_B1_out_lm11611_mmul_avm_enable;

    // out_lm11611_mmul_avm_read(GPOUT,218)
    assign out_lm11611_mmul_avm_read = bb_mmul_B1_out_lm11611_mmul_avm_read;

    // out_lm11611_mmul_avm_write(GPOUT,219)
    assign out_lm11611_mmul_avm_write = bb_mmul_B1_out_lm11611_mmul_avm_write;

    // out_lm11611_mmul_avm_writedata(GPOUT,220)
    assign out_lm11611_mmul_avm_writedata = bb_mmul_B1_out_lm11611_mmul_avm_writedata;

    // out_lm12012_mmul_avm_address(GPOUT,221)
    assign out_lm12012_mmul_avm_address = bb_mmul_B1_out_lm12012_mmul_avm_address;

    // out_lm12012_mmul_avm_burstcount(GPOUT,222)
    assign out_lm12012_mmul_avm_burstcount = bb_mmul_B1_out_lm12012_mmul_avm_burstcount;

    // out_lm12012_mmul_avm_byteenable(GPOUT,223)
    assign out_lm12012_mmul_avm_byteenable = bb_mmul_B1_out_lm12012_mmul_avm_byteenable;

    // out_lm12012_mmul_avm_enable(GPOUT,224)
    assign out_lm12012_mmul_avm_enable = bb_mmul_B1_out_lm12012_mmul_avm_enable;

    // out_lm12012_mmul_avm_read(GPOUT,225)
    assign out_lm12012_mmul_avm_read = bb_mmul_B1_out_lm12012_mmul_avm_read;

    // out_lm12012_mmul_avm_write(GPOUT,226)
    assign out_lm12012_mmul_avm_write = bb_mmul_B1_out_lm12012_mmul_avm_write;

    // out_lm12012_mmul_avm_writedata(GPOUT,227)
    assign out_lm12012_mmul_avm_writedata = bb_mmul_B1_out_lm12012_mmul_avm_writedata;

    // out_lm12413_mmul_avm_address(GPOUT,228)
    assign out_lm12413_mmul_avm_address = bb_mmul_B1_out_lm12413_mmul_avm_address;

    // out_lm12413_mmul_avm_burstcount(GPOUT,229)
    assign out_lm12413_mmul_avm_burstcount = bb_mmul_B1_out_lm12413_mmul_avm_burstcount;

    // out_lm12413_mmul_avm_byteenable(GPOUT,230)
    assign out_lm12413_mmul_avm_byteenable = bb_mmul_B1_out_lm12413_mmul_avm_byteenable;

    // out_lm12413_mmul_avm_enable(GPOUT,231)
    assign out_lm12413_mmul_avm_enable = bb_mmul_B1_out_lm12413_mmul_avm_enable;

    // out_lm12413_mmul_avm_read(GPOUT,232)
    assign out_lm12413_mmul_avm_read = bb_mmul_B1_out_lm12413_mmul_avm_read;

    // out_lm12413_mmul_avm_write(GPOUT,233)
    assign out_lm12413_mmul_avm_write = bb_mmul_B1_out_lm12413_mmul_avm_write;

    // out_lm12413_mmul_avm_writedata(GPOUT,234)
    assign out_lm12413_mmul_avm_writedata = bb_mmul_B1_out_lm12413_mmul_avm_writedata;

    // out_lm12814_mmul_avm_address(GPOUT,235)
    assign out_lm12814_mmul_avm_address = bb_mmul_B1_out_lm12814_mmul_avm_address;

    // out_lm12814_mmul_avm_burstcount(GPOUT,236)
    assign out_lm12814_mmul_avm_burstcount = bb_mmul_B1_out_lm12814_mmul_avm_burstcount;

    // out_lm12814_mmul_avm_byteenable(GPOUT,237)
    assign out_lm12814_mmul_avm_byteenable = bb_mmul_B1_out_lm12814_mmul_avm_byteenable;

    // out_lm12814_mmul_avm_enable(GPOUT,238)
    assign out_lm12814_mmul_avm_enable = bb_mmul_B1_out_lm12814_mmul_avm_enable;

    // out_lm12814_mmul_avm_read(GPOUT,239)
    assign out_lm12814_mmul_avm_read = bb_mmul_B1_out_lm12814_mmul_avm_read;

    // out_lm12814_mmul_avm_write(GPOUT,240)
    assign out_lm12814_mmul_avm_write = bb_mmul_B1_out_lm12814_mmul_avm_write;

    // out_lm12814_mmul_avm_writedata(GPOUT,241)
    assign out_lm12814_mmul_avm_writedata = bb_mmul_B1_out_lm12814_mmul_avm_writedata;

    // out_lm13215_mmul_avm_address(GPOUT,242)
    assign out_lm13215_mmul_avm_address = bb_mmul_B1_out_lm13215_mmul_avm_address;

    // out_lm13215_mmul_avm_burstcount(GPOUT,243)
    assign out_lm13215_mmul_avm_burstcount = bb_mmul_B1_out_lm13215_mmul_avm_burstcount;

    // out_lm13215_mmul_avm_byteenable(GPOUT,244)
    assign out_lm13215_mmul_avm_byteenable = bb_mmul_B1_out_lm13215_mmul_avm_byteenable;

    // out_lm13215_mmul_avm_enable(GPOUT,245)
    assign out_lm13215_mmul_avm_enable = bb_mmul_B1_out_lm13215_mmul_avm_enable;

    // out_lm13215_mmul_avm_read(GPOUT,246)
    assign out_lm13215_mmul_avm_read = bb_mmul_B1_out_lm13215_mmul_avm_read;

    // out_lm13215_mmul_avm_write(GPOUT,247)
    assign out_lm13215_mmul_avm_write = bb_mmul_B1_out_lm13215_mmul_avm_write;

    // out_lm13215_mmul_avm_writedata(GPOUT,248)
    assign out_lm13215_mmul_avm_writedata = bb_mmul_B1_out_lm13215_mmul_avm_writedata;

    // out_lm13616_mmul_avm_address(GPOUT,249)
    assign out_lm13616_mmul_avm_address = bb_mmul_B1_out_lm13616_mmul_avm_address;

    // out_lm13616_mmul_avm_burstcount(GPOUT,250)
    assign out_lm13616_mmul_avm_burstcount = bb_mmul_B1_out_lm13616_mmul_avm_burstcount;

    // out_lm13616_mmul_avm_byteenable(GPOUT,251)
    assign out_lm13616_mmul_avm_byteenable = bb_mmul_B1_out_lm13616_mmul_avm_byteenable;

    // out_lm13616_mmul_avm_enable(GPOUT,252)
    assign out_lm13616_mmul_avm_enable = bb_mmul_B1_out_lm13616_mmul_avm_enable;

    // out_lm13616_mmul_avm_read(GPOUT,253)
    assign out_lm13616_mmul_avm_read = bb_mmul_B1_out_lm13616_mmul_avm_read;

    // out_lm13616_mmul_avm_write(GPOUT,254)
    assign out_lm13616_mmul_avm_write = bb_mmul_B1_out_lm13616_mmul_avm_write;

    // out_lm13616_mmul_avm_writedata(GPOUT,255)
    assign out_lm13616_mmul_avm_writedata = bb_mmul_B1_out_lm13616_mmul_avm_writedata;

    // out_lm14017_mmul_avm_address(GPOUT,256)
    assign out_lm14017_mmul_avm_address = bb_mmul_B1_out_lm14017_mmul_avm_address;

    // out_lm14017_mmul_avm_burstcount(GPOUT,257)
    assign out_lm14017_mmul_avm_burstcount = bb_mmul_B1_out_lm14017_mmul_avm_burstcount;

    // out_lm14017_mmul_avm_byteenable(GPOUT,258)
    assign out_lm14017_mmul_avm_byteenable = bb_mmul_B1_out_lm14017_mmul_avm_byteenable;

    // out_lm14017_mmul_avm_enable(GPOUT,259)
    assign out_lm14017_mmul_avm_enable = bb_mmul_B1_out_lm14017_mmul_avm_enable;

    // out_lm14017_mmul_avm_read(GPOUT,260)
    assign out_lm14017_mmul_avm_read = bb_mmul_B1_out_lm14017_mmul_avm_read;

    // out_lm14017_mmul_avm_write(GPOUT,261)
    assign out_lm14017_mmul_avm_write = bb_mmul_B1_out_lm14017_mmul_avm_write;

    // out_lm14017_mmul_avm_writedata(GPOUT,262)
    assign out_lm14017_mmul_avm_writedata = bb_mmul_B1_out_lm14017_mmul_avm_writedata;

    // out_lm14418_mmul_avm_address(GPOUT,263)
    assign out_lm14418_mmul_avm_address = bb_mmul_B1_out_lm14418_mmul_avm_address;

    // out_lm14418_mmul_avm_burstcount(GPOUT,264)
    assign out_lm14418_mmul_avm_burstcount = bb_mmul_B1_out_lm14418_mmul_avm_burstcount;

    // out_lm14418_mmul_avm_byteenable(GPOUT,265)
    assign out_lm14418_mmul_avm_byteenable = bb_mmul_B1_out_lm14418_mmul_avm_byteenable;

    // out_lm14418_mmul_avm_enable(GPOUT,266)
    assign out_lm14418_mmul_avm_enable = bb_mmul_B1_out_lm14418_mmul_avm_enable;

    // out_lm14418_mmul_avm_read(GPOUT,267)
    assign out_lm14418_mmul_avm_read = bb_mmul_B1_out_lm14418_mmul_avm_read;

    // out_lm14418_mmul_avm_write(GPOUT,268)
    assign out_lm14418_mmul_avm_write = bb_mmul_B1_out_lm14418_mmul_avm_write;

    // out_lm14418_mmul_avm_writedata(GPOUT,269)
    assign out_lm14418_mmul_avm_writedata = bb_mmul_B1_out_lm14418_mmul_avm_writedata;

    // out_lm14819_mmul_avm_address(GPOUT,270)
    assign out_lm14819_mmul_avm_address = bb_mmul_B1_out_lm14819_mmul_avm_address;

    // out_lm14819_mmul_avm_burstcount(GPOUT,271)
    assign out_lm14819_mmul_avm_burstcount = bb_mmul_B1_out_lm14819_mmul_avm_burstcount;

    // out_lm14819_mmul_avm_byteenable(GPOUT,272)
    assign out_lm14819_mmul_avm_byteenable = bb_mmul_B1_out_lm14819_mmul_avm_byteenable;

    // out_lm14819_mmul_avm_enable(GPOUT,273)
    assign out_lm14819_mmul_avm_enable = bb_mmul_B1_out_lm14819_mmul_avm_enable;

    // out_lm14819_mmul_avm_read(GPOUT,274)
    assign out_lm14819_mmul_avm_read = bb_mmul_B1_out_lm14819_mmul_avm_read;

    // out_lm14819_mmul_avm_write(GPOUT,275)
    assign out_lm14819_mmul_avm_write = bb_mmul_B1_out_lm14819_mmul_avm_write;

    // out_lm14819_mmul_avm_writedata(GPOUT,276)
    assign out_lm14819_mmul_avm_writedata = bb_mmul_B1_out_lm14819_mmul_avm_writedata;

    // out_lm15220_mmul_avm_address(GPOUT,277)
    assign out_lm15220_mmul_avm_address = bb_mmul_B1_out_lm15220_mmul_avm_address;

    // out_lm15220_mmul_avm_burstcount(GPOUT,278)
    assign out_lm15220_mmul_avm_burstcount = bb_mmul_B1_out_lm15220_mmul_avm_burstcount;

    // out_lm15220_mmul_avm_byteenable(GPOUT,279)
    assign out_lm15220_mmul_avm_byteenable = bb_mmul_B1_out_lm15220_mmul_avm_byteenable;

    // out_lm15220_mmul_avm_enable(GPOUT,280)
    assign out_lm15220_mmul_avm_enable = bb_mmul_B1_out_lm15220_mmul_avm_enable;

    // out_lm15220_mmul_avm_read(GPOUT,281)
    assign out_lm15220_mmul_avm_read = bb_mmul_B1_out_lm15220_mmul_avm_read;

    // out_lm15220_mmul_avm_write(GPOUT,282)
    assign out_lm15220_mmul_avm_write = bb_mmul_B1_out_lm15220_mmul_avm_write;

    // out_lm15220_mmul_avm_writedata(GPOUT,283)
    assign out_lm15220_mmul_avm_writedata = bb_mmul_B1_out_lm15220_mmul_avm_writedata;

    // out_lm15621_mmul_avm_address(GPOUT,284)
    assign out_lm15621_mmul_avm_address = bb_mmul_B1_out_lm15621_mmul_avm_address;

    // out_lm15621_mmul_avm_burstcount(GPOUT,285)
    assign out_lm15621_mmul_avm_burstcount = bb_mmul_B1_out_lm15621_mmul_avm_burstcount;

    // out_lm15621_mmul_avm_byteenable(GPOUT,286)
    assign out_lm15621_mmul_avm_byteenable = bb_mmul_B1_out_lm15621_mmul_avm_byteenable;

    // out_lm15621_mmul_avm_enable(GPOUT,287)
    assign out_lm15621_mmul_avm_enable = bb_mmul_B1_out_lm15621_mmul_avm_enable;

    // out_lm15621_mmul_avm_read(GPOUT,288)
    assign out_lm15621_mmul_avm_read = bb_mmul_B1_out_lm15621_mmul_avm_read;

    // out_lm15621_mmul_avm_write(GPOUT,289)
    assign out_lm15621_mmul_avm_write = bb_mmul_B1_out_lm15621_mmul_avm_write;

    // out_lm15621_mmul_avm_writedata(GPOUT,290)
    assign out_lm15621_mmul_avm_writedata = bb_mmul_B1_out_lm15621_mmul_avm_writedata;

    // out_lm16022_mmul_avm_address(GPOUT,291)
    assign out_lm16022_mmul_avm_address = bb_mmul_B1_out_lm16022_mmul_avm_address;

    // out_lm16022_mmul_avm_burstcount(GPOUT,292)
    assign out_lm16022_mmul_avm_burstcount = bb_mmul_B1_out_lm16022_mmul_avm_burstcount;

    // out_lm16022_mmul_avm_byteenable(GPOUT,293)
    assign out_lm16022_mmul_avm_byteenable = bb_mmul_B1_out_lm16022_mmul_avm_byteenable;

    // out_lm16022_mmul_avm_enable(GPOUT,294)
    assign out_lm16022_mmul_avm_enable = bb_mmul_B1_out_lm16022_mmul_avm_enable;

    // out_lm16022_mmul_avm_read(GPOUT,295)
    assign out_lm16022_mmul_avm_read = bb_mmul_B1_out_lm16022_mmul_avm_read;

    // out_lm16022_mmul_avm_write(GPOUT,296)
    assign out_lm16022_mmul_avm_write = bb_mmul_B1_out_lm16022_mmul_avm_write;

    // out_lm16022_mmul_avm_writedata(GPOUT,297)
    assign out_lm16022_mmul_avm_writedata = bb_mmul_B1_out_lm16022_mmul_avm_writedata;

    // out_lm16423_mmul_avm_address(GPOUT,298)
    assign out_lm16423_mmul_avm_address = bb_mmul_B1_out_lm16423_mmul_avm_address;

    // out_lm16423_mmul_avm_burstcount(GPOUT,299)
    assign out_lm16423_mmul_avm_burstcount = bb_mmul_B1_out_lm16423_mmul_avm_burstcount;

    // out_lm16423_mmul_avm_byteenable(GPOUT,300)
    assign out_lm16423_mmul_avm_byteenable = bb_mmul_B1_out_lm16423_mmul_avm_byteenable;

    // out_lm16423_mmul_avm_enable(GPOUT,301)
    assign out_lm16423_mmul_avm_enable = bb_mmul_B1_out_lm16423_mmul_avm_enable;

    // out_lm16423_mmul_avm_read(GPOUT,302)
    assign out_lm16423_mmul_avm_read = bb_mmul_B1_out_lm16423_mmul_avm_read;

    // out_lm16423_mmul_avm_write(GPOUT,303)
    assign out_lm16423_mmul_avm_write = bb_mmul_B1_out_lm16423_mmul_avm_write;

    // out_lm16423_mmul_avm_writedata(GPOUT,304)
    assign out_lm16423_mmul_avm_writedata = bb_mmul_B1_out_lm16423_mmul_avm_writedata;

    // out_lm16824_mmul_avm_address(GPOUT,305)
    assign out_lm16824_mmul_avm_address = bb_mmul_B1_out_lm16824_mmul_avm_address;

    // out_lm16824_mmul_avm_burstcount(GPOUT,306)
    assign out_lm16824_mmul_avm_burstcount = bb_mmul_B1_out_lm16824_mmul_avm_burstcount;

    // out_lm16824_mmul_avm_byteenable(GPOUT,307)
    assign out_lm16824_mmul_avm_byteenable = bb_mmul_B1_out_lm16824_mmul_avm_byteenable;

    // out_lm16824_mmul_avm_enable(GPOUT,308)
    assign out_lm16824_mmul_avm_enable = bb_mmul_B1_out_lm16824_mmul_avm_enable;

    // out_lm16824_mmul_avm_read(GPOUT,309)
    assign out_lm16824_mmul_avm_read = bb_mmul_B1_out_lm16824_mmul_avm_read;

    // out_lm16824_mmul_avm_write(GPOUT,310)
    assign out_lm16824_mmul_avm_write = bb_mmul_B1_out_lm16824_mmul_avm_write;

    // out_lm16824_mmul_avm_writedata(GPOUT,311)
    assign out_lm16824_mmul_avm_writedata = bb_mmul_B1_out_lm16824_mmul_avm_writedata;

    // out_lm17225_mmul_avm_address(GPOUT,312)
    assign out_lm17225_mmul_avm_address = bb_mmul_B1_out_lm17225_mmul_avm_address;

    // out_lm17225_mmul_avm_burstcount(GPOUT,313)
    assign out_lm17225_mmul_avm_burstcount = bb_mmul_B1_out_lm17225_mmul_avm_burstcount;

    // out_lm17225_mmul_avm_byteenable(GPOUT,314)
    assign out_lm17225_mmul_avm_byteenable = bb_mmul_B1_out_lm17225_mmul_avm_byteenable;

    // out_lm17225_mmul_avm_enable(GPOUT,315)
    assign out_lm17225_mmul_avm_enable = bb_mmul_B1_out_lm17225_mmul_avm_enable;

    // out_lm17225_mmul_avm_read(GPOUT,316)
    assign out_lm17225_mmul_avm_read = bb_mmul_B1_out_lm17225_mmul_avm_read;

    // out_lm17225_mmul_avm_write(GPOUT,317)
    assign out_lm17225_mmul_avm_write = bb_mmul_B1_out_lm17225_mmul_avm_write;

    // out_lm17225_mmul_avm_writedata(GPOUT,318)
    assign out_lm17225_mmul_avm_writedata = bb_mmul_B1_out_lm17225_mmul_avm_writedata;

    // out_lm17626_mmul_avm_address(GPOUT,319)
    assign out_lm17626_mmul_avm_address = bb_mmul_B1_out_lm17626_mmul_avm_address;

    // out_lm17626_mmul_avm_burstcount(GPOUT,320)
    assign out_lm17626_mmul_avm_burstcount = bb_mmul_B1_out_lm17626_mmul_avm_burstcount;

    // out_lm17626_mmul_avm_byteenable(GPOUT,321)
    assign out_lm17626_mmul_avm_byteenable = bb_mmul_B1_out_lm17626_mmul_avm_byteenable;

    // out_lm17626_mmul_avm_enable(GPOUT,322)
    assign out_lm17626_mmul_avm_enable = bb_mmul_B1_out_lm17626_mmul_avm_enable;

    // out_lm17626_mmul_avm_read(GPOUT,323)
    assign out_lm17626_mmul_avm_read = bb_mmul_B1_out_lm17626_mmul_avm_read;

    // out_lm17626_mmul_avm_write(GPOUT,324)
    assign out_lm17626_mmul_avm_write = bb_mmul_B1_out_lm17626_mmul_avm_write;

    // out_lm17626_mmul_avm_writedata(GPOUT,325)
    assign out_lm17626_mmul_avm_writedata = bb_mmul_B1_out_lm17626_mmul_avm_writedata;

    // out_lm18027_mmul_avm_address(GPOUT,326)
    assign out_lm18027_mmul_avm_address = bb_mmul_B1_out_lm18027_mmul_avm_address;

    // out_lm18027_mmul_avm_burstcount(GPOUT,327)
    assign out_lm18027_mmul_avm_burstcount = bb_mmul_B1_out_lm18027_mmul_avm_burstcount;

    // out_lm18027_mmul_avm_byteenable(GPOUT,328)
    assign out_lm18027_mmul_avm_byteenable = bb_mmul_B1_out_lm18027_mmul_avm_byteenable;

    // out_lm18027_mmul_avm_enable(GPOUT,329)
    assign out_lm18027_mmul_avm_enable = bb_mmul_B1_out_lm18027_mmul_avm_enable;

    // out_lm18027_mmul_avm_read(GPOUT,330)
    assign out_lm18027_mmul_avm_read = bb_mmul_B1_out_lm18027_mmul_avm_read;

    // out_lm18027_mmul_avm_write(GPOUT,331)
    assign out_lm18027_mmul_avm_write = bb_mmul_B1_out_lm18027_mmul_avm_write;

    // out_lm18027_mmul_avm_writedata(GPOUT,332)
    assign out_lm18027_mmul_avm_writedata = bb_mmul_B1_out_lm18027_mmul_avm_writedata;

    // out_lm18428_mmul_avm_address(GPOUT,333)
    assign out_lm18428_mmul_avm_address = bb_mmul_B1_out_lm18428_mmul_avm_address;

    // out_lm18428_mmul_avm_burstcount(GPOUT,334)
    assign out_lm18428_mmul_avm_burstcount = bb_mmul_B1_out_lm18428_mmul_avm_burstcount;

    // out_lm18428_mmul_avm_byteenable(GPOUT,335)
    assign out_lm18428_mmul_avm_byteenable = bb_mmul_B1_out_lm18428_mmul_avm_byteenable;

    // out_lm18428_mmul_avm_enable(GPOUT,336)
    assign out_lm18428_mmul_avm_enable = bb_mmul_B1_out_lm18428_mmul_avm_enable;

    // out_lm18428_mmul_avm_read(GPOUT,337)
    assign out_lm18428_mmul_avm_read = bb_mmul_B1_out_lm18428_mmul_avm_read;

    // out_lm18428_mmul_avm_write(GPOUT,338)
    assign out_lm18428_mmul_avm_write = bb_mmul_B1_out_lm18428_mmul_avm_write;

    // out_lm18428_mmul_avm_writedata(GPOUT,339)
    assign out_lm18428_mmul_avm_writedata = bb_mmul_B1_out_lm18428_mmul_avm_writedata;

    // out_lm18829_mmul_avm_address(GPOUT,340)
    assign out_lm18829_mmul_avm_address = bb_mmul_B1_out_lm18829_mmul_avm_address;

    // out_lm18829_mmul_avm_burstcount(GPOUT,341)
    assign out_lm18829_mmul_avm_burstcount = bb_mmul_B1_out_lm18829_mmul_avm_burstcount;

    // out_lm18829_mmul_avm_byteenable(GPOUT,342)
    assign out_lm18829_mmul_avm_byteenable = bb_mmul_B1_out_lm18829_mmul_avm_byteenable;

    // out_lm18829_mmul_avm_enable(GPOUT,343)
    assign out_lm18829_mmul_avm_enable = bb_mmul_B1_out_lm18829_mmul_avm_enable;

    // out_lm18829_mmul_avm_read(GPOUT,344)
    assign out_lm18829_mmul_avm_read = bb_mmul_B1_out_lm18829_mmul_avm_read;

    // out_lm18829_mmul_avm_write(GPOUT,345)
    assign out_lm18829_mmul_avm_write = bb_mmul_B1_out_lm18829_mmul_avm_write;

    // out_lm18829_mmul_avm_writedata(GPOUT,346)
    assign out_lm18829_mmul_avm_writedata = bb_mmul_B1_out_lm18829_mmul_avm_writedata;

    // out_lm19230_mmul_avm_address(GPOUT,347)
    assign out_lm19230_mmul_avm_address = bb_mmul_B1_out_lm19230_mmul_avm_address;

    // out_lm19230_mmul_avm_burstcount(GPOUT,348)
    assign out_lm19230_mmul_avm_burstcount = bb_mmul_B1_out_lm19230_mmul_avm_burstcount;

    // out_lm19230_mmul_avm_byteenable(GPOUT,349)
    assign out_lm19230_mmul_avm_byteenable = bb_mmul_B1_out_lm19230_mmul_avm_byteenable;

    // out_lm19230_mmul_avm_enable(GPOUT,350)
    assign out_lm19230_mmul_avm_enable = bb_mmul_B1_out_lm19230_mmul_avm_enable;

    // out_lm19230_mmul_avm_read(GPOUT,351)
    assign out_lm19230_mmul_avm_read = bb_mmul_B1_out_lm19230_mmul_avm_read;

    // out_lm19230_mmul_avm_write(GPOUT,352)
    assign out_lm19230_mmul_avm_write = bb_mmul_B1_out_lm19230_mmul_avm_write;

    // out_lm19230_mmul_avm_writedata(GPOUT,353)
    assign out_lm19230_mmul_avm_writedata = bb_mmul_B1_out_lm19230_mmul_avm_writedata;

    // out_lm19631_mmul_avm_address(GPOUT,354)
    assign out_lm19631_mmul_avm_address = bb_mmul_B1_out_lm19631_mmul_avm_address;

    // out_lm19631_mmul_avm_burstcount(GPOUT,355)
    assign out_lm19631_mmul_avm_burstcount = bb_mmul_B1_out_lm19631_mmul_avm_burstcount;

    // out_lm19631_mmul_avm_byteenable(GPOUT,356)
    assign out_lm19631_mmul_avm_byteenable = bb_mmul_B1_out_lm19631_mmul_avm_byteenable;

    // out_lm19631_mmul_avm_enable(GPOUT,357)
    assign out_lm19631_mmul_avm_enable = bb_mmul_B1_out_lm19631_mmul_avm_enable;

    // out_lm19631_mmul_avm_read(GPOUT,358)
    assign out_lm19631_mmul_avm_read = bb_mmul_B1_out_lm19631_mmul_avm_read;

    // out_lm19631_mmul_avm_write(GPOUT,359)
    assign out_lm19631_mmul_avm_write = bb_mmul_B1_out_lm19631_mmul_avm_write;

    // out_lm19631_mmul_avm_writedata(GPOUT,360)
    assign out_lm19631_mmul_avm_writedata = bb_mmul_B1_out_lm19631_mmul_avm_writedata;

    // out_lm20032_mmul_avm_address(GPOUT,361)
    assign out_lm20032_mmul_avm_address = bb_mmul_B1_out_lm20032_mmul_avm_address;

    // out_lm20032_mmul_avm_burstcount(GPOUT,362)
    assign out_lm20032_mmul_avm_burstcount = bb_mmul_B1_out_lm20032_mmul_avm_burstcount;

    // out_lm20032_mmul_avm_byteenable(GPOUT,363)
    assign out_lm20032_mmul_avm_byteenable = bb_mmul_B1_out_lm20032_mmul_avm_byteenable;

    // out_lm20032_mmul_avm_enable(GPOUT,364)
    assign out_lm20032_mmul_avm_enable = bb_mmul_B1_out_lm20032_mmul_avm_enable;

    // out_lm20032_mmul_avm_read(GPOUT,365)
    assign out_lm20032_mmul_avm_read = bb_mmul_B1_out_lm20032_mmul_avm_read;

    // out_lm20032_mmul_avm_write(GPOUT,366)
    assign out_lm20032_mmul_avm_write = bb_mmul_B1_out_lm20032_mmul_avm_write;

    // out_lm20032_mmul_avm_writedata(GPOUT,367)
    assign out_lm20032_mmul_avm_writedata = bb_mmul_B1_out_lm20032_mmul_avm_writedata;

    // out_lm20433_mmul_avm_address(GPOUT,368)
    assign out_lm20433_mmul_avm_address = bb_mmul_B1_out_lm20433_mmul_avm_address;

    // out_lm20433_mmul_avm_burstcount(GPOUT,369)
    assign out_lm20433_mmul_avm_burstcount = bb_mmul_B1_out_lm20433_mmul_avm_burstcount;

    // out_lm20433_mmul_avm_byteenable(GPOUT,370)
    assign out_lm20433_mmul_avm_byteenable = bb_mmul_B1_out_lm20433_mmul_avm_byteenable;

    // out_lm20433_mmul_avm_enable(GPOUT,371)
    assign out_lm20433_mmul_avm_enable = bb_mmul_B1_out_lm20433_mmul_avm_enable;

    // out_lm20433_mmul_avm_read(GPOUT,372)
    assign out_lm20433_mmul_avm_read = bb_mmul_B1_out_lm20433_mmul_avm_read;

    // out_lm20433_mmul_avm_write(GPOUT,373)
    assign out_lm20433_mmul_avm_write = bb_mmul_B1_out_lm20433_mmul_avm_write;

    // out_lm20433_mmul_avm_writedata(GPOUT,374)
    assign out_lm20433_mmul_avm_writedata = bb_mmul_B1_out_lm20433_mmul_avm_writedata;

    // out_lm76_mmul_avm_address(GPOUT,375)
    assign out_lm76_mmul_avm_address = bb_mmul_B1_out_lm76_mmul_avm_address;

    // out_lm76_mmul_avm_burstcount(GPOUT,376)
    assign out_lm76_mmul_avm_burstcount = bb_mmul_B1_out_lm76_mmul_avm_burstcount;

    // out_lm76_mmul_avm_byteenable(GPOUT,377)
    assign out_lm76_mmul_avm_byteenable = bb_mmul_B1_out_lm76_mmul_avm_byteenable;

    // out_lm76_mmul_avm_enable(GPOUT,378)
    assign out_lm76_mmul_avm_enable = bb_mmul_B1_out_lm76_mmul_avm_enable;

    // out_lm76_mmul_avm_read(GPOUT,379)
    assign out_lm76_mmul_avm_read = bb_mmul_B1_out_lm76_mmul_avm_read;

    // out_lm76_mmul_avm_write(GPOUT,380)
    assign out_lm76_mmul_avm_write = bb_mmul_B1_out_lm76_mmul_avm_write;

    // out_lm76_mmul_avm_writedata(GPOUT,381)
    assign out_lm76_mmul_avm_writedata = bb_mmul_B1_out_lm76_mmul_avm_writedata;

    // out_lm802_mmul_avm_address(GPOUT,382)
    assign out_lm802_mmul_avm_address = bb_mmul_B1_out_lm802_mmul_avm_address;

    // out_lm802_mmul_avm_burstcount(GPOUT,383)
    assign out_lm802_mmul_avm_burstcount = bb_mmul_B1_out_lm802_mmul_avm_burstcount;

    // out_lm802_mmul_avm_byteenable(GPOUT,384)
    assign out_lm802_mmul_avm_byteenable = bb_mmul_B1_out_lm802_mmul_avm_byteenable;

    // out_lm802_mmul_avm_enable(GPOUT,385)
    assign out_lm802_mmul_avm_enable = bb_mmul_B1_out_lm802_mmul_avm_enable;

    // out_lm802_mmul_avm_read(GPOUT,386)
    assign out_lm802_mmul_avm_read = bb_mmul_B1_out_lm802_mmul_avm_read;

    // out_lm802_mmul_avm_write(GPOUT,387)
    assign out_lm802_mmul_avm_write = bb_mmul_B1_out_lm802_mmul_avm_write;

    // out_lm802_mmul_avm_writedata(GPOUT,388)
    assign out_lm802_mmul_avm_writedata = bb_mmul_B1_out_lm802_mmul_avm_writedata;

    // out_lm843_mmul_avm_address(GPOUT,389)
    assign out_lm843_mmul_avm_address = bb_mmul_B1_out_lm843_mmul_avm_address;

    // out_lm843_mmul_avm_burstcount(GPOUT,390)
    assign out_lm843_mmul_avm_burstcount = bb_mmul_B1_out_lm843_mmul_avm_burstcount;

    // out_lm843_mmul_avm_byteenable(GPOUT,391)
    assign out_lm843_mmul_avm_byteenable = bb_mmul_B1_out_lm843_mmul_avm_byteenable;

    // out_lm843_mmul_avm_enable(GPOUT,392)
    assign out_lm843_mmul_avm_enable = bb_mmul_B1_out_lm843_mmul_avm_enable;

    // out_lm843_mmul_avm_read(GPOUT,393)
    assign out_lm843_mmul_avm_read = bb_mmul_B1_out_lm843_mmul_avm_read;

    // out_lm843_mmul_avm_write(GPOUT,394)
    assign out_lm843_mmul_avm_write = bb_mmul_B1_out_lm843_mmul_avm_write;

    // out_lm843_mmul_avm_writedata(GPOUT,395)
    assign out_lm843_mmul_avm_writedata = bb_mmul_B1_out_lm843_mmul_avm_writedata;

    // out_lm884_mmul_avm_address(GPOUT,396)
    assign out_lm884_mmul_avm_address = bb_mmul_B1_out_lm884_mmul_avm_address;

    // out_lm884_mmul_avm_burstcount(GPOUT,397)
    assign out_lm884_mmul_avm_burstcount = bb_mmul_B1_out_lm884_mmul_avm_burstcount;

    // out_lm884_mmul_avm_byteenable(GPOUT,398)
    assign out_lm884_mmul_avm_byteenable = bb_mmul_B1_out_lm884_mmul_avm_byteenable;

    // out_lm884_mmul_avm_enable(GPOUT,399)
    assign out_lm884_mmul_avm_enable = bb_mmul_B1_out_lm884_mmul_avm_enable;

    // out_lm884_mmul_avm_read(GPOUT,400)
    assign out_lm884_mmul_avm_read = bb_mmul_B1_out_lm884_mmul_avm_read;

    // out_lm884_mmul_avm_write(GPOUT,401)
    assign out_lm884_mmul_avm_write = bb_mmul_B1_out_lm884_mmul_avm_write;

    // out_lm884_mmul_avm_writedata(GPOUT,402)
    assign out_lm884_mmul_avm_writedata = bb_mmul_B1_out_lm884_mmul_avm_writedata;

    // out_lm925_mmul_avm_address(GPOUT,403)
    assign out_lm925_mmul_avm_address = bb_mmul_B1_out_lm925_mmul_avm_address;

    // out_lm925_mmul_avm_burstcount(GPOUT,404)
    assign out_lm925_mmul_avm_burstcount = bb_mmul_B1_out_lm925_mmul_avm_burstcount;

    // out_lm925_mmul_avm_byteenable(GPOUT,405)
    assign out_lm925_mmul_avm_byteenable = bb_mmul_B1_out_lm925_mmul_avm_byteenable;

    // out_lm925_mmul_avm_enable(GPOUT,406)
    assign out_lm925_mmul_avm_enable = bb_mmul_B1_out_lm925_mmul_avm_enable;

    // out_lm925_mmul_avm_read(GPOUT,407)
    assign out_lm925_mmul_avm_read = bb_mmul_B1_out_lm925_mmul_avm_read;

    // out_lm925_mmul_avm_write(GPOUT,408)
    assign out_lm925_mmul_avm_write = bb_mmul_B1_out_lm925_mmul_avm_write;

    // out_lm925_mmul_avm_writedata(GPOUT,409)
    assign out_lm925_mmul_avm_writedata = bb_mmul_B1_out_lm925_mmul_avm_writedata;

    // out_lm966_mmul_avm_address(GPOUT,410)
    assign out_lm966_mmul_avm_address = bb_mmul_B1_out_lm966_mmul_avm_address;

    // out_lm966_mmul_avm_burstcount(GPOUT,411)
    assign out_lm966_mmul_avm_burstcount = bb_mmul_B1_out_lm966_mmul_avm_burstcount;

    // out_lm966_mmul_avm_byteenable(GPOUT,412)
    assign out_lm966_mmul_avm_byteenable = bb_mmul_B1_out_lm966_mmul_avm_byteenable;

    // out_lm966_mmul_avm_enable(GPOUT,413)
    assign out_lm966_mmul_avm_enable = bb_mmul_B1_out_lm966_mmul_avm_enable;

    // out_lm966_mmul_avm_read(GPOUT,414)
    assign out_lm966_mmul_avm_read = bb_mmul_B1_out_lm966_mmul_avm_read;

    // out_lm966_mmul_avm_write(GPOUT,415)
    assign out_lm966_mmul_avm_write = bb_mmul_B1_out_lm966_mmul_avm_write;

    // out_lm966_mmul_avm_writedata(GPOUT,416)
    assign out_lm966_mmul_avm_writedata = bb_mmul_B1_out_lm966_mmul_avm_writedata;

    // out_lm_mmul_avm_address(GPOUT,417)
    assign out_lm_mmul_avm_address = bb_mmul_B1_out_lm_mmul_avm_address;

    // out_lm_mmul_avm_burstcount(GPOUT,418)
    assign out_lm_mmul_avm_burstcount = bb_mmul_B1_out_lm_mmul_avm_burstcount;

    // out_lm_mmul_avm_byteenable(GPOUT,419)
    assign out_lm_mmul_avm_byteenable = bb_mmul_B1_out_lm_mmul_avm_byteenable;

    // out_lm_mmul_avm_enable(GPOUT,420)
    assign out_lm_mmul_avm_enable = bb_mmul_B1_out_lm_mmul_avm_enable;

    // out_lm_mmul_avm_read(GPOUT,421)
    assign out_lm_mmul_avm_read = bb_mmul_B1_out_lm_mmul_avm_read;

    // out_lm_mmul_avm_write(GPOUT,422)
    assign out_lm_mmul_avm_write = bb_mmul_B1_out_lm_mmul_avm_write;

    // out_lm_mmul_avm_writedata(GPOUT,423)
    assign out_lm_mmul_avm_writedata = bb_mmul_B1_out_lm_mmul_avm_writedata;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address(GPOUT,424)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address = bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_address;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount(GPOUT,425)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount = bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_burstcount;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable(GPOUT,426)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable = bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_byteenable;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable(GPOUT,427)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable = bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_enable;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read(GPOUT,428)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read = bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_read;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write(GPOUT,429)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write = bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_write;

    // out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata(GPOUT,430)
    assign out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata = bb_mmul_B1_out_memcoalesce_load_mmul_fpgaunique_321_mmul_avm_writedata;

    // out_memdep_95_mmul_avm_address(GPOUT,431)
    assign out_memdep_95_mmul_avm_address = bb_mmul_B1_out_memdep_95_mmul_avm_address;

    // out_memdep_95_mmul_avm_burstcount(GPOUT,432)
    assign out_memdep_95_mmul_avm_burstcount = bb_mmul_B1_out_memdep_95_mmul_avm_burstcount;

    // out_memdep_95_mmul_avm_byteenable(GPOUT,433)
    assign out_memdep_95_mmul_avm_byteenable = bb_mmul_B1_out_memdep_95_mmul_avm_byteenable;

    // out_memdep_95_mmul_avm_enable(GPOUT,434)
    assign out_memdep_95_mmul_avm_enable = bb_mmul_B1_out_memdep_95_mmul_avm_enable;

    // out_memdep_95_mmul_avm_read(GPOUT,435)
    assign out_memdep_95_mmul_avm_read = bb_mmul_B1_out_memdep_95_mmul_avm_read;

    // out_memdep_95_mmul_avm_write(GPOUT,436)
    assign out_memdep_95_mmul_avm_write = bb_mmul_B1_out_memdep_95_mmul_avm_write;

    // out_memdep_95_mmul_avm_writedata(GPOUT,437)
    assign out_memdep_95_mmul_avm_writedata = bb_mmul_B1_out_memdep_95_mmul_avm_writedata;

    // out_memdep_mmul_avm_address(GPOUT,438)
    assign out_memdep_mmul_avm_address = bb_mmul_B1_out_memdep_mmul_avm_address;

    // out_memdep_mmul_avm_burstcount(GPOUT,439)
    assign out_memdep_mmul_avm_burstcount = bb_mmul_B1_out_memdep_mmul_avm_burstcount;

    // out_memdep_mmul_avm_byteenable(GPOUT,440)
    assign out_memdep_mmul_avm_byteenable = bb_mmul_B1_out_memdep_mmul_avm_byteenable;

    // out_memdep_mmul_avm_enable(GPOUT,441)
    assign out_memdep_mmul_avm_enable = bb_mmul_B1_out_memdep_mmul_avm_enable;

    // out_memdep_mmul_avm_read(GPOUT,442)
    assign out_memdep_mmul_avm_read = bb_mmul_B1_out_memdep_mmul_avm_read;

    // out_memdep_mmul_avm_write(GPOUT,443)
    assign out_memdep_mmul_avm_write = bb_mmul_B1_out_memdep_mmul_avm_write;

    // out_memdep_mmul_avm_writedata(GPOUT,444)
    assign out_memdep_mmul_avm_writedata = bb_mmul_B1_out_memdep_mmul_avm_writedata;

    // out_o_active_unnamed_mmul7(GPOUT,445)
    assign out_o_active_unnamed_mmul7 = bb_mmul_B2_out_lsu_unnamed_mmul7_o_active;

    // out_primWireOut(GPOUT,446)
    assign out_primWireOut = {32'b00000000000000000000000000000000, c_i32_023_q};

    // out_stall_out(GPOUT,447)
    assign out_stall_out = bb_mmul_B0_out_stall_out_0;

    // out_unnamed_mmul7_mmul_avm_address(GPOUT,448)
    assign out_unnamed_mmul7_mmul_avm_address = bb_mmul_B2_out_unnamed_mmul7_mmul_avm_address;

    // out_unnamed_mmul7_mmul_avm_burstcount(GPOUT,449)
    assign out_unnamed_mmul7_mmul_avm_burstcount = bb_mmul_B2_out_unnamed_mmul7_mmul_avm_burstcount;

    // out_unnamed_mmul7_mmul_avm_byteenable(GPOUT,450)
    assign out_unnamed_mmul7_mmul_avm_byteenable = bb_mmul_B2_out_unnamed_mmul7_mmul_avm_byteenable;

    // out_unnamed_mmul7_mmul_avm_enable(GPOUT,451)
    assign out_unnamed_mmul7_mmul_avm_enable = bb_mmul_B2_out_unnamed_mmul7_mmul_avm_enable;

    // out_unnamed_mmul7_mmul_avm_read(GPOUT,452)
    assign out_unnamed_mmul7_mmul_avm_read = bb_mmul_B2_out_unnamed_mmul7_mmul_avm_read;

    // out_unnamed_mmul7_mmul_avm_write(GPOUT,453)
    assign out_unnamed_mmul7_mmul_avm_write = bb_mmul_B2_out_unnamed_mmul7_mmul_avm_write;

    // out_unnamed_mmul7_mmul_avm_writedata(GPOUT,454)
    assign out_unnamed_mmul7_mmul_avm_writedata = bb_mmul_B2_out_unnamed_mmul7_mmul_avm_writedata;

    // out_valid_out(GPOUT,455)
    assign out_valid_out = bb_mmul_B2_out_valid_out_0;

endmodule
